@interface AXDialectMap
+ (id)_hanjaCharacterSet;
+ (id)_hanjaToHangulMap;
- (AXDialectMap)initWithLocale:(id)a3 specificLanguageID:(id)a4 speakableCharacters:(id)a5 secondaryLanguageRange:(id)a6;
- (AXLangMap)langMap;
- (BOOL)_languageIsKorean;
- (BOOL)canSpeakCharacter:(unsigned __int16)a3 allowTransliteration:(BOOL)a4;
- (BOOL)canSpeakLongCharacter:(unsigned int)a3;
- (BOOL)canSpeakString:(id)a3 allowsTransliteration:(BOOL)a4;
- (BOOL)hasSpeakableCharacters;
- (BOOL)isDialectSecondaryForCharacter:(unsigned __int16)a3;
- (NSString)languageNameAndLocaleInCurrentLocale;
- (NSString)languageNameAndLocaleInNativeLocale;
- (NSString)languageNameInCurrentLocale;
- (NSString)languageNameInNativeLocale;
- (NSString)localeNameInCurrentLocale;
- (NSString)regionID;
- (id)_stringByTransliterationHanjaToHangul:(id)a3;
- (id)_transliteratedSpeechCharacters;
- (id)basicDescription;
- (id)transliteratedStringForString:(id)a3;
@end

@implementation AXDialectMap

- (AXDialectMap)initWithLocale:(id)a3 specificLanguageID:(id)a4 speakableCharacters:(id)a5 secondaryLanguageRange:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v28.receiver = self;
  v28.super_class = AXDialectMap;
  v14 = [(AXDialectMap *)&v28 init];
  v15 = v14;
  if (v14)
  {
    [(AXDialectMap *)v14 setLocale:v10];
    [(AXDialectMap *)v15 setSpeakableCharacters:v12];
    [(AXDialectMap *)v15 setSecondaryLanguageRange:v13];
    if (v11)
    {
      v16 = [v11 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];
      v17 = AXCLanguageConvertToCanonicalForm();
      [(AXDialectMap *)v15 setSpecificLanguageID:v17];
    }

    else
    {
      v16 = [(AXDialectMap *)v15 locale];
      v17 = [v16 localeIdentifier];
      v18 = [v17 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];
      v19 = AXCLanguageConvertToCanonicalForm();
      [(AXDialectMap *)v15 setSpecificLanguageID:v19];
    }

    v20 = [(AXDialectMap *)v15 specificLanguageID];
    v21 = [v20 hasPrefix:@"zh"];

    if (v21)
    {
      v22 = [(AXDialectMap *)v15 specificLanguageID];
      v23 = [v22 stringByReplacingOccurrencesOfString:@"Hant-" withString:&stru_1EFE6D570];
      [(AXDialectMap *)v15 setSpecificLanguageID:v23];

      v24 = [(AXDialectMap *)v15 specificLanguageID];
      v25 = [v24 stringByReplacingOccurrencesOfString:@"Hans-" withString:&stru_1EFE6D570];
      [(AXDialectMap *)v15 setSpecificLanguageID:v25];
    }

    v26 = v15;
  }

  return v15;
}

- (id)basicDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(AXDialectMap *)self langMap];
  v5 = [v4 userPreferredDialect];
  if ([v5 isEqual:self])
  {
    v6 = @"* ";
  }

  else
  {
    v6 = &stru_1EFE6D570;
  }

  v7 = [(AXDialectMap *)self voiceName];
  v8 = [(AXDialectMap *)self locale];
  v9 = [v8 localeIdentifier];
  v10 = [(AXDialectMap *)self specificLanguageID];
  v11 = [v3 stringWithFormat:@"%@AXDialect <%p>. Voice:%@. LocaleID:%@ LangID:%@", v6, self, v7, v9, v10];

  return v11;
}

- (NSString)regionID
{
  v2 = [(AXDialectMap *)self locale];
  v3 = [v2 localeIdentifier];

  return v3;
}

- (NSString)languageNameInCurrentLocale
{
  v3 = [(AXDialectMap *)self langManager];
  v4 = [v3 userLocale];

  v5 = [(AXDialectMap *)self locale];
  v6 = [v5 localeIdentifier];
  if ([v6 isEqualToString:@"wuu_CN"])
  {
    v7 = @"Shanghainese";
LABEL_5:
    v8 = AXLocalizedStringWithLocale(v7, 0);
    goto LABEL_7;
  }

  if ([v6 isEqualToString:@"ar_001"])
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
    v11 = [(AXDialectMap *)self locale];
    v12 = [v11 languageCode];
    v13 = [v4 displayNameForKey:v10 value:v12];

    v9 = [v13 capitalizedStringWithLocale:v4];
  }

  return v9;
}

- (NSString)languageNameInNativeLocale
{
  v3 = [(AXDialectMap *)self locale];
  v4 = [v3 localeIdentifier];
  v5 = [(AXDialectMap *)self locale];
  v6 = [v5 localeIdentifier];
  v7 = _languageAndRegionNameForNonConformingCodes(v4, v6);

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v9 = [(AXDialectMap *)self locale];
    v10 = *MEMORY[0x1E695D9B0];
    v11 = [(AXDialectMap *)self locale];
    v12 = [v11 languageCode];
    v13 = [v9 displayNameForKey:v10 value:v12];

    v14 = [(AXDialectMap *)self locale];
    v8 = [v13 capitalizedStringWithLocale:v14];
  }

  return v8;
}

- (NSString)languageNameAndLocaleInCurrentLocale
{
  v3 = [(AXDialectMap *)self langManager];
  v4 = [v3 userLocale];

  v5 = [(AXDialectMap *)self locale];
  v6 = [v5 localeIdentifier];
  v7 = _languageAndRegionNameForNonConformingCodes(v6, 0);

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v9 = *MEMORY[0x1E695D9A8];
    v10 = [(AXDialectMap *)self locale];
    v11 = [v10 localeIdentifier];
    v8 = _icuDisplayNameForLocale(v4, v9, v11);
  }

  return v8;
}

- (NSString)localeNameInCurrentLocale
{
  v3 = [(AXDialectMap *)self langManager];
  v4 = [v3 userLocale];

  v5 = *MEMORY[0x1E695D978];
  v6 = MEMORY[0x1E695DF58];
  v7 = [(AXDialectMap *)self locale];
  v8 = [v7 localeIdentifier];
  v9 = [v6 componentsFromLocaleIdentifier:v8];
  v10 = [v9 objectForKey:v5];
  v11 = _icuDisplayNameForLocale(v4, v5, v10);

  v12 = [v11 capitalizedStringWithLocale:v4];

  return v12;
}

- (NSString)languageNameAndLocaleInNativeLocale
{
  v3 = [(AXDialectMap *)self locale];
  v4 = [v3 localeIdentifier];
  v5 = [(AXDialectMap *)self locale];
  v6 = [v5 localeIdentifier];
  v7 = _languageAndRegionNameForNonConformingCodes(v4, v6);

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v9 = [(AXDialectMap *)self specificLanguageID];
    v10 = [AXLanguageManager nonlocalizedNameForLanguage:v9];

    if (!v10)
    {
      v11 = [(AXDialectMap *)self locale];
      v12 = *MEMORY[0x1E695D9A8];
      v13 = [(AXDialectMap *)self locale];
      v14 = [v13 localeIdentifier];
      v10 = [v11 displayNameForKey:v12 value:v14];
    }

    v15 = [(AXDialectMap *)self locale];
    v8 = [v10 capitalizedStringWithLocale:v15];
  }

  return v8;
}

- (BOOL)isDialectSecondaryForCharacter:(unsigned __int16)a3
{
  v3 = a3;
  v4 = [(AXDialectMap *)self secondaryLanguageRange];
  LOBYTE(v3) = [v4 characterIsMember:v3];

  return v3;
}

- (BOOL)hasSpeakableCharacters
{
  v2 = [(AXDialectMap *)self speakableCharacters];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)canSpeakCharacter:(unsigned __int16)a3 allowTransliteration:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(AXDialectMap *)self speakableCharacters];

  if (!v7)
  {
    return 0;
  }

  v8 = [(AXDialectMap *)self speakableCharacters];
  v9 = [v8 characterIsMember:v5];
  if ((v9 & 1) == 0 && v4)
  {
    if ([(AXDialectMap *)self speakingRequiresTransliteration])
    {
      v10 = [(AXDialectMap *)self _transliteratedSpeechCharacters];
      v9 = [v10 characterIsMember:v5];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (BOOL)canSpeakLongCharacter:(unsigned int)a3
{
  v3 = *&a3;
  v5 = [(AXDialectMap *)self speakableCharacters];

  if (!v5)
  {
    return 0;
  }

  v6 = [(AXDialectMap *)self speakableCharacters];
  v7 = [v6 longCharacterIsMember:v3];

  return v7;
}

- (BOOL)canSpeakString:(id)a3 allowsTransliteration:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v6 && ([(AXDialectMap *)self speakableCharacters], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v8 = +[AXLanguageManager sharedInstance];
    v9 = [v6 length];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      for (i = 0; i != v10; v11 = i >= v10)
      {
        v13 = [v6 characterAtIndex:i];
        if (([v8 isCharacterCommon:v13] & 1) == 0 && !-[AXDialectMap canSpeakCharacter:allowTransliteration:](self, "canSpeakCharacter:allowTransliteration:", v13, v4))
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
  v2 = [(AXDialectMap *)self locale];
  v3 = [v2 languageIdentifier];
  v4 = [v3 hasPrefix:@"ko"];

  return v4;
}

- (id)transliteratedStringForString:(id)a3
{
  v4 = a3;
  if ([(AXDialectMap *)self _languageIsKorean])
  {
    v5 = [(AXDialectMap *)self _stringByTransliterationHanjaToHangul:v4];
  }

  else
  {
    v5 = v4;
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
  block[4] = a1;
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

- (id)_stringByTransliterationHanjaToHangul:(id)a3
{
  v5 = a3;
  v6 = +[AXDialectMap _hanjaCharacterSet];
  if ([v5 rangeOfCharacterFromSet:v6] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = v5;
  }

  else
  {
    v33 = v6;
    v8 = +[AXDialectMap _hanjaToHangulMap];
    v34 = v5;
    v9 = v5;
    v10 = v8;
    v35 = v10;
    if ([v9 length])
    {
      v31 = self;
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
              [(AXDialectMap *)v32 _stringByTransliterationHanjaToHangul:v31];
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
    v5 = v34;
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