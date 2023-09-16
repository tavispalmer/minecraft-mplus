ZIP = zip

FILES = \
	mplus-j10/pack.mcmeta \
	mplus-j10/assets/minecraft/font/default.json \
	mplus-j10/assets/minecraft/textures/font/kanji_l1.png \
	mplus-j10/assets/minecraft/textures/font/kanji_l2.png \
	mplus-j10/assets/minecraft/textures/font/nonkanji.png

.PHONY: clean

mplus-j10.zip: $(FILES)
	cd mplus-j10 && $(ZIP) ../$@ \
	$$(for FILE in $(FILES); do \
		echo $$(expr substr $$FILE $$(expr $$(expr length mplus-j10/) + 1) $$(expr length $$FILE)); \
	done)

clean:
	rm -f mplus-j10.zip