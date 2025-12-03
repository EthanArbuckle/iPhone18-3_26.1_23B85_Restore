@interface AXDialectMap
+ (id)_hanjaCharacterSet;
+ (id)_hanjaToHangulMap;
- (AXDialectMap)initWithLocale:(id)locale specificLanguageID:(id)d speakableCharacters:(id)characters secondaryLanguageRange:(id)range;
- (AXLangMap)langMap;
- (BOOL)_languageIsKorean;
- (BOOL)canSpeakCharacter:(unsigned __int16)character allowTransliteration:(BOOL)transliteration;
- (BOOL)canSpeakLongCharacter:(unsigned int)character;
- (BOOL)canSpeakString:(id)string allowsTransliteration:(BOOL)transliteration;
- (BOOL)hasSpeakableCharacters;
- (BOOL)isDialectSecondaryForCharacter:(unsigned __int16)character;
- (NSString)languageNameAndLocaleInCurrentLocale;
- (NSString)languageNameAndLocaleInNativeLocale;
- (NSString)languageNameInCurrentLocale;
- (NSString)languageNameInNativeLocale;
- (NSString)localeNameInCurrentLocale;
- (NSString)regionID;
- (id)_stringByTransliterationHanjaToHangul:(id)hangul;
- (id)_transliteratedSpeechCharacters;
- (id)basicDescription;
- (id)transliteratedStringForString:(id)string;
@end

@implementation AXDialectMap

- (AXDialectMap)initWithLocale:(id)locale specificLanguageID:(id)d speakableCharacters:(id)characters secondaryLanguageRange:(id)range
{
  localeCopy = locale;
  dCopy = d;
  charactersCopy = characters;
  rangeCopy = range;
  v28.receiver = self;
  v28.super_class = AXDialectMap;
  v14 = [(AXDialectMap *)&v28 init];
  v15 = v14;
  if (v14)
  {
    [(AXDialectMap *)v14 setLocale:localeCopy];
    [(AXDialectMap *)v15 setSpeakableCharacters:charactersCopy];
    [(AXDialectMap *)v15 setSecondaryLanguageRange:rangeCopy];
    if (dCopy)
    {
      locale = [dCopy stringByReplacingOccurrencesOfString:@"_" withString:@"-"];
      localeIdentifier = AXCLanguageConvertToCanonicalForm();
      [(AXDialectMap *)v15 setSpecificLanguageID:localeIdentifier];
    }

    else
    {
      locale = [(AXDialectMap *)v15 locale];
      localeIdentifier = [locale localeIdentifier];
      v18 = [localeIdentifier stringByReplacingOccurrencesOfString:@"_" withString:@"-"];
      v19 = AXCLanguageConvertToCanonicalForm();
      [(AXDialectMap *)v15 setSpecificLanguageID:v19];
    }

    specificLanguageID = [(AXDialectMap *)v15 specificLanguageID];
    v21 = [specificLanguageID hasPrefix:@"zh"];

    if (v21)
    {
      specificLanguageID2 = [(AXDialectMap *)v15 specificLanguageID];
      v23 = [specificLanguageID2 stringByReplacingOccurrencesOfString:@"Hant-" withString:&stru_1EFE6D570];
      [(AXDialectMap *)v15 setSpecificLanguageID:v23];

      specificLanguageID3 = [(AXDialectMap *)v15 specificLanguageID];
      v25 = [specificLanguageID3 stringByReplacingOccurrencesOfString:@"Hans-" withString:&stru_1EFE6D570];
      [(AXDialectMap *)v15 setSpecificLanguageID:v25];
    }

    v26 = v15;
  }

  return v15;
}

- (id)basicDescription
{
  v3 = MEMORY[0x1E696AEC0];
  langMap = [(AXDialectMap *)self langMap];
  userPreferredDialect = [langMap userPreferredDialect];
  if ([userPreferredDialect isEqual:self])
  {
    v6 = @"* ";
  }

  else
  {
    v6 = &stru_1EFE6D570;
  }

  voiceName = [(AXDialectMap *)self voiceName];
  locale = [(AXDialectMap *)self locale];
  localeIdentifier = [locale localeIdentifier];
  specificLanguageID = [(AXDialectMap *)self specificLanguageID];
  v11 = [v3 stringWithFormat:@"%@AXDialect <%p>. Voice:%@. LocaleID:%@ LangID:%@", v6, self, voiceName, localeIdentifier, specificLanguageID];

  return v11;
}

- (NSString)regionID
{
  locale = [(AXDialectMap *)self locale];
  localeIdentifier = [locale localeIdentifier];

  return localeIdentifier;
}

- (NSString)languageNameInCurrentLocale
{
  langManager = [(AXDialectMap *)self langManager];
  userLocale = [langManager userLocale];

  locale = [(AXDialectMap *)self locale];
  localeIdentifier = [locale localeIdentifier];
  if ([localeIdentifier isEqualToString:@"wuu_CN"])
  {
    v7 = @"Shanghainese";
LABEL_5:
    v8 = AXLocalizedStringWithLocale(v7, 0);
    goto LABEL_7;
  }

  if ([localeIdentifier isEqualToString:@"ar_001"])
  {
    v7 = @"Arabic";
    goto LABEL_5;
  }

  v8 = 0;
LABEL_7:

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v10 = *MEMORY[0x1E695D9B0];
    locale2 = [(AXDialectMap *)self locale];
    languageCode = [locale2 languageCode];
    v13 = [userLocale displayNameForKey:v10 value:languageCode];

    v9 = [v13 capitalizedStringWithLocale:userLocale];
  }

  return v9;
}

- (NSString)languageNameInNativeLocale
{
  locale = [(AXDialectMap *)self locale];
  localeIdentifier = [locale localeIdentifier];
  locale2 = [(AXDialectMap *)self locale];
  localeIdentifier2 = [locale2 localeIdentifier];
  v7 = _languageAndRegionNameForNonConformingCodes(localeIdentifier, localeIdentifier2);

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    locale3 = [(AXDialectMap *)self locale];
    v10 = *MEMORY[0x1E695D9B0];
    locale4 = [(AXDialectMap *)self locale];
    languageCode = [locale4 languageCode];
    v13 = [locale3 displayNameForKey:v10 value:languageCode];

    locale5 = [(AXDialectMap *)self locale];
    v8 = [v13 capitalizedStringWithLocale:locale5];
  }

  return v8;
}

- (NSString)languageNameAndLocaleInCurrentLocale
{
  langManager = [(AXDialectMap *)self langManager];
  userLocale = [langManager userLocale];

  locale = [(AXDialectMap *)self locale];
  localeIdentifier = [locale localeIdentifier];
  v7 = _languageAndRegionNameForNonConformingCodes(localeIdentifier, 0);

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v9 = *MEMORY[0x1E695D9A8];
    locale2 = [(AXDialectMap *)self locale];
    localeIdentifier2 = [locale2 localeIdentifier];
    v8 = _icuDisplayNameForLocale(userLocale, v9, localeIdentifier2);
  }

  return v8;
}

- (NSString)localeNameInCurrentLocale
{
  langManager = [(AXDialectMap *)self langManager];
  userLocale = [langManager userLocale];

  v5 = *MEMORY[0x1E695D978];
  v6 = MEMORY[0x1E695DF58];
  locale = [(AXDialectMap *)self locale];
  localeIdentifier = [locale localeIdentifier];
  v9 = [v6 componentsFromLocaleIdentifier:localeIdentifier];
  v10 = [v9 objectForKey:v5];
  v11 = _icuDisplayNameForLocale(userLocale, v5, v10);

  v12 = [v11 capitalizedStringWithLocale:userLocale];

  return v12;
}

- (NSString)languageNameAndLocaleInNativeLocale
{
  locale = [(AXDialectMap *)self locale];
  localeIdentifier = [locale localeIdentifier];
  locale2 = [(AXDialectMap *)self locale];
  localeIdentifier2 = [locale2 localeIdentifier];
  v7 = _languageAndRegionNameForNonConformingCodes(localeIdentifier, localeIdentifier2);

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    specificLanguageID = [(AXDialectMap *)self specificLanguageID];
    v10 = [AXLanguageManager nonlocalizedNameForLanguage:specificLanguageID];

    if (!v10)
    {
      locale3 = [(AXDialectMap *)self locale];
      v12 = *MEMORY[0x1E695D9A8];
      locale4 = [(AXDialectMap *)self locale];
      localeIdentifier3 = [locale4 localeIdentifier];
      v10 = [locale3 displayNameForKey:v12 value:localeIdentifier3];
    }

    locale5 = [(AXDialectMap *)self locale];
    v8 = [v10 capitalizedStringWithLocale:locale5];
  }

  return v8;
}

- (BOOL)isDialectSecondaryForCharacter:(unsigned __int16)character
{
  characterCopy = character;
  secondaryLanguageRange = [(AXDialectMap *)self secondaryLanguageRange];
  LOBYTE(characterCopy) = [secondaryLanguageRange characterIsMember:characterCopy];

  return characterCopy;
}

- (BOOL)hasSpeakableCharacters
{
  speakableCharacters = [(AXDialectMap *)self speakableCharacters];
  v3 = speakableCharacters != 0;

  return v3;
}

- (BOOL)canSpeakCharacter:(unsigned __int16)character allowTransliteration:(BOOL)transliteration
{
  transliterationCopy = transliteration;
  characterCopy = character;
  speakableCharacters = [(AXDialectMap *)self speakableCharacters];

  if (!speakableCharacters)
  {
    return 0;
  }

  speakableCharacters2 = [(AXDialectMap *)self speakableCharacters];
  v9 = [speakableCharacters2 characterIsMember:characterCopy];
  if ((v9 & 1) == 0 && transliterationCopy)
  {
    if ([(AXDialectMap *)self speakingRequiresTransliteration])
    {
      _transliteratedSpeechCharacters = [(AXDialectMap *)self _transliteratedSpeechCharacters];
      v9 = [_transliteratedSpeechCharacters characterIsMember:characterCopy];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (BOOL)canSpeakLongCharacter:(unsigned int)character
{
  v3 = *&character;
  speakableCharacters = [(AXDialectMap *)self speakableCharacters];

  if (!speakableCharacters)
  {
    return 0;
  }

  speakableCharacters2 = [(AXDialectMap *)self speakableCharacters];
  v7 = [speakableCharacters2 longCharacterIsMember:v3];

  return v7;
}

- (BOOL)canSpeakString:(id)string allowsTransliteration:(BOOL)transliteration
{
  transliterationCopy = transliteration;
  stringCopy = string;
  if (stringCopy && ([(AXDialectMap *)self speakableCharacters], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v8 = +[AXLanguageManager sharedInstance];
    v9 = [stringCopy length];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      for (i = 0; i != v10; v11 = i >= v10)
      {
        v13 = [stringCopy characterAtIndex:i];
        if (([v8 isCharacterCommon:v13] & 1) == 0 && !-[AXDialectMap canSpeakCharacter:allowTransliteration:](self, "canSpeakCharacter:allowTransliteration:", v13, transliterationCopy))
        {
          break;
        }

        ++i;
      }
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)_languageIsKorean
{
  locale = [(AXDialectMap *)self locale];
  languageIdentifier = [locale languageIdentifier];
  v4 = [languageIdentifier hasPrefix:@"ko"];

  return v4;
}

- (id)transliteratedStringForString:(id)string
{
  stringCopy = string;
  if ([(AXDialectMap *)self _languageIsKorean])
  {
    v5 = [(AXDialectMap *)self _stringByTransliterationHanjaToHangul:stringCopy];
  }

  else
  {
    v5 = stringCopy;
  }

  v6 = v5;

  return v6;
}

- (id)_transliteratedSpeechCharacters
{
  if ([(AXDialectMap *)self _languageIsKorean])
  {
    v2 = +[AXDialectMap _hanjaCharacterSet];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

+ (id)_hanjaToHangulMap
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__AXDialectMap__hanjaToHangulMap__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_hanjaToHangulMap_onceToken != -1)
  {
    dispatch_once(&_hanjaToHangulMap_onceToken, block);
  }

  v2 = _hanjaToHangulMap_hanjaToHangulMap;

  return v2;
}

void __33__AXDialectMap__hanjaToHangulMap__block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v3 = [v0 pathForResource:@"hanjaToHangul" ofType:@"plist"];

  v1 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v3];
  v2 = _hanjaToHangulMap_hanjaToHangulMap;
  _hanjaToHangulMap_hanjaToHangulMap = v1;
}

+ (id)_hanjaCharacterSet
{
  if (_hanjaCharacterSet_onceToken != -1)
  {
    +[AXDialectMap _hanjaCharacterSet];
  }

  v3 = _hanjaCharacterSet_hanjaCharacterSet;

  return v3;
}

void __34__AXDialectMap__hanjaCharacterSet__block_invoke()
{
  v14 = *MEMORY[0x1E69E9840];
  v0 = +[AXDialectMap _hanjaToHangulMap];
  v1 = [MEMORY[0x1E696AD60] string];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [v0 allKeys];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [v1 appendString:*(*(&v9 + 1) + 8 * v6++)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v7 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:v1];
  v8 = _hanjaCharacterSet_hanjaCharacterSet;
  _hanjaCharacterSet_hanjaCharacterSet = v7;
}

- (id)_stringByTransliterationHanjaToHangul:(id)hangul
{
  hangulCopy = hangul;
  v6 = +[AXDialectMap _hanjaCharacterSet];
  if ([hangulCopy rangeOfCharacterFromSet:v6] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = hangulCopy;
  }

  else
  {
    v33 = v6;
    v8 = +[AXDialectMap _hanjaToHangulMap];
    v34 = hangulCopy;
    v9 = hangulCopy;
    v10 = v8;
    v35 = v10;
    if ([v9 length])
    {
      selfCopy = self;
      v32 = a2;
      v11 = 0;
      v12 = 0;
      v7 = v9;
      v13 = 0x7FFFFFFFFFFFFFFFLL;
      v14 = v10;
      do
      {
        v15 = [v9 rangeOfComposedCharacterSequenceAtIndex:v12];
        if (v15 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v17 = v15;
          v18 = [v9 substringWithRange:{v15, v16}];
          v19 = [v14 objectForKey:v18];
          v20 = v19;
          if (v19)
          {
            v21 = v7;
            v22 = v19;

            if (v13 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v17 = v13;
            }

            v11 += [v18 length];
            v14 = v22;
            v7 = v21;
          }

          else
          {
            v17 = 0x7FFFFFFFFFFFFFFFLL;
            if (v13 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v23 = [v14 objectForKey:@"T"];
              v24 = v23;
              if (v23)
              {
                if (v11 != [v23 length])
                {
                  _AXAssert();
                }

                if (v11 == [v24 length])
                {
                  v25 = [v7 stringByReplacingCharactersInRange:v13 withString:{v11, v24}];

                  v7 = v25;
                }
              }

              v26 = v35;

              --v12;
              v11 = 0;
              v17 = 0x7FFFFFFFFFFFFFFFLL;
              v14 = v26;
            }
          }

          v13 = v17;
        }

        if (v13 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v27 = [v14 objectForKey:@"T"];
          v28 = v27;
          if (v27)
          {
            if (v11 != [v27 length])
            {
              [(AXDialectMap *)v32 _stringByTransliterationHanjaToHangul:selfCopy];
            }

            v29 = [v7 stringByReplacingCharactersInRange:v13 withString:{v11, v28}];

            v7 = v29;
          }
        }

        ++v12;
      }

      while (v12 < [v9 length]);
    }

    else
    {
      v14 = v10;
      v7 = v9;
    }

    v6 = v33;
    hangulCopy = v34;
  }

  return v7;
}

- (AXLangMap)langMap
{
  WeakRetained = objc_loadWeakRetained(&self->_langMap);

  return WeakRetained;
}

- (void)_stringByTransliterationHanjaToHangul:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"AXDialectMap.m" lineNumber:378 description:@"Hanja to hangul transliteration tabler should only contain equal length mappings"];
}

@end