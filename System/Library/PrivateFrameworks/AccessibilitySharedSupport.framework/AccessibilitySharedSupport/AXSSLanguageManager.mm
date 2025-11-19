@interface AXSSLanguageManager
+ (id)commonPunctuationCharacters;
+ (id)shared;
+ (id)stringByReplacingFatWidthCharactersWithBasicCharacters:(id)a3;
- (AXSSDialectMap)dialectForCurrentLocale;
- (AXSSDialectMap)dialectForCurrentRegion;
- (AXSSDialectMap)dialectForSystemLanguage;
- (AXSSLanguageManager)init;
- (BOOL)isStringComposedByCommonCharacters:(id)a3;
- (NSArray)languageMaps;
- (NSString)systemLanguageID;
- (id)_preferredLanguage;
- (id)description;
- (id)dialectForLanguageID:(id)a3;
- (id)dialectForSpeechSynthesisVoiceID:(id)a3;
- (id)dialectsThatCanSpeakString:(id)a3;
- (void)_handleUserLocaleDidChange:(id)a3;
- (void)setDialectForCurrentLocale:(id)a3;
- (void)setDialectForCurrentRegion:(id)a3;
- (void)setDialectForSystemLanguage:(id)a3;
- (void)updateCachedDialects;
@end

@implementation AXSSLanguageManager

+ (id)shared
{
  if (shared_onceToken != -1)
  {
    +[AXSSLanguageManager shared];
  }

  v3 = shared__shared;

  return v3;
}

uint64_t __29__AXSSLanguageManager_shared__block_invoke()
{
  shared__shared = objc_alloc_init(AXSSLanguageManager);

  return MEMORY[0x1EEE66BB8]();
}

+ (id)commonPunctuationCharacters
{
  if (commonPunctuationCharacters_onceToken != -1)
  {
    +[AXSSLanguageManager commonPunctuationCharacters];
  }

  v3 = commonPunctuationCharacters_charSet;

  return v3;
}

uint64_t __50__AXSSLanguageManager_commonPunctuationCharacters__block_invoke()
{
  commonPunctuationCharacters_charSet = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:{@"~!@#*$%&+|=(){}[]<>, ./?:'_-\"\\""}];;

  return MEMORY[0x1EEE66BB8]();
}

+ (id)stringByReplacingFatWidthCharactersWithBasicCharacters:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E696AB08] characterSetWithRange:{65296, 75}];
  v5 = [v3 rangeOfCharacterFromSet:v4];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v3;
  }

  else
  {
    v7 = v5;
    v8 = [v3 length];
    v9 = MEMORY[0x1E696AD60];
    v10 = [v3 substringToIndex:v7];
    v6 = [v9 stringWithString:v10];

    if (v7 >= v8)
    {
      v11 = v7;
    }

    else
    {
      v11 = v7;
      do
      {
        v12 = [v3 characterAtIndex:v7];
        if ([v4 characterIsMember:v12])
        {
          v13 = v7 - v11;
          if (v7 > v11)
          {
            v14 = [v3 substringWithRange:{v11, v13}];
            [v6 appendString:v14];
          }

          [v6 appendFormat:@"%C ", v13, (v12 + 288)];
          v11 = ++v7;
        }

        else
        {
          ++v7;
        }
      }

      while (v7 != v8);
    }

    if (v8 - 1 > v11)
    {
      v15 = [v3 substringWithRange:{v11, v8 - 1 - v11}];
      [v6 appendString:v15];
    }
  }

  return v6;
}

- (AXSSLanguageManager)init
{
  v14.receiver = self;
  v14.super_class = AXSSLanguageManager;
  v2 = [(AXSSLanguageManager *)&v14 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
    [(AXSSLanguageManager *)v2 setUserLocale:v3];

    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 addObserver:v2 selector:sel__handleUserLocaleDidChange_ name:*MEMORY[0x1E695D8F0] object:0];

    v5 = objc_alloc_init(MEMORY[0x1E696AD48]);
    v6 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    [v5 formUnionWithCharacterSet:v6];

    v7 = [MEMORY[0x1E696AB08] punctuationCharacterSet];
    [v5 formUnionWithCharacterSet:v7];

    v8 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"0123456789•■"];
    [v5 formUnionWithCharacterSet:v8];

    v9 = [MEMORY[0x1E696AB08] controlCharacterSet];
    [v5 formUnionWithCharacterSet:v9];

    [(AXSSLanguageManager *)v2 setCommonCharacters:v5];
    v10 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"αβγδεζηθικλμνξοπρσςτυφχψωΑΒΓΔΕΖΗΘΙΚΛΜΝΞΟΠΡΣΤΥΦΧΨΩ"];
    [(AXSSLanguageManager *)v2 setCommonGreekCharacters:v10];

    v11 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"\uFFFC"];
    [(AXSSLanguageManager *)v2 setIgnoredCharacters:v11];

    v12 = v2;
  }

  return v2;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(AXSSLanguageManager *)self languageMaps];
  v5 = [v3 stringWithFormat:@"AXSSLanguageManager:<%p>. %lu lang maps", self, objc_msgSend(v4, "count")];

  return v5;
}

- (id)_preferredLanguage
{
  v2 = [MEMORY[0x1E695DF58] preferredLanguages];
  if ([v2 count])
  {
    v3 = [v2 objectAtIndex:0];
    v4 = AXSSLanguageConvertToCanonicalForm(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)systemLanguageID
{
  v3 = [MEMORY[0x1E695DF58] preferredLanguages];
  if ([v3 count])
  {
    v4 = [v3 objectAtIndex:0];
    v5 = AXSSLanguageCanonicalFormToGeneralLanguage(v4);
  }

  else
  {
    v4 = [(AXSSLanguageManager *)self userLocale];
    v6 = [v4 objectForKey:*MEMORY[0x1E695D9B0]];
    v5 = AXSSLanguageCanonicalFormToGeneralLanguage(v6);
  }

  return v5;
}

- (NSArray)languageMaps
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__AXSSLanguageManager_languageMaps__block_invoke;
  block[3] = &unk_1E8134870;
  block[4] = self;
  if (languageMaps_onceToken != -1)
  {
    dispatch_once(&languageMaps_onceToken, block);
  }

  return self->_languageMaps;
}

uint64_t __35__AXSSLanguageManager_languageMaps__block_invoke(uint64_t a1)
{
  v2 = +[AXSSLanguageLoader loadLanguages];
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (AXSSDialectMap)dialectForSystemLanguage
{
  dialectForSystemLanguage = self->_dialectForSystemLanguage;
  if (!dialectForSystemLanguage)
  {
    [(AXSSLanguageManager *)self updateCachedDialects];
    dialectForSystemLanguage = self->_dialectForSystemLanguage;
  }

  return dialectForSystemLanguage;
}

- (void)setDialectForSystemLanguage:(id)a3
{
  v5 = a3;
  dialectForSystemLanguage = self->_dialectForSystemLanguage;
  p_dialectForSystemLanguage = &self->_dialectForSystemLanguage;
  v8 = v5;
  if (![(AXSSDialectMap *)dialectForSystemLanguage isEqual:?])
  {
    objc_storeStrong(p_dialectForSystemLanguage, a3);
  }
}

- (AXSSDialectMap)dialectForCurrentLocale
{
  dialectForCurrentLocale = self->_dialectForCurrentLocale;
  if (!dialectForCurrentLocale)
  {
    [(AXSSLanguageManager *)self updateCachedDialects];
    dialectForCurrentLocale = self->_dialectForCurrentLocale;
  }

  return dialectForCurrentLocale;
}

- (AXSSDialectMap)dialectForCurrentRegion
{
  dialectForCurrentRegion = self->_dialectForCurrentRegion;
  if (!dialectForCurrentRegion)
  {
    [(AXSSLanguageManager *)self updateCachedDialects];
    dialectForCurrentRegion = self->_dialectForCurrentRegion;
  }

  return dialectForCurrentRegion;
}

- (void)setDialectForCurrentLocale:(id)a3
{
  v5 = a3;
  dialectForCurrentLocale = self->_dialectForCurrentLocale;
  p_dialectForCurrentLocale = &self->_dialectForCurrentLocale;
  v8 = v5;
  if (![(AXSSDialectMap *)dialectForCurrentLocale isEqual:?])
  {
    objc_storeStrong(p_dialectForCurrentLocale, a3);
  }
}

- (void)setDialectForCurrentRegion:(id)a3
{
  v5 = a3;
  dialectForCurrentRegion = self->_dialectForCurrentRegion;
  p_dialectForCurrentRegion = &self->_dialectForCurrentRegion;
  v8 = v5;
  if (![(AXSSDialectMap *)dialectForCurrentRegion isEqual:?])
  {
    objc_storeStrong(p_dialectForCurrentRegion, a3);
  }
}

- (id)dialectForLanguageID:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    if ([v4 hasPrefix:@"zh"])
    {
      v6 = [v5 stringByReplacingOccurrencesOfString:@"Hant-" withString:&stru_1F405A428];

      v5 = [v6 stringByReplacingOccurrencesOfString:@"Hans-" withString:&stru_1F405A428];
    }

    v7 = [(AXSSLanguageManager *)self dialectForSystemLanguage];
    v8 = [v7 specificLanguageID];
    v9 = [v8 hasPrefix:v5];

    if (v9)
    {
      v10 = v7;
    }

    else
    {
      v11 = [(AXSSLanguageManager *)self dialectForCurrentLocale];
      v12 = [v11 specificLanguageID];
      v13 = [v12 hasPrefix:v5];

      if (v13)
      {
        v10 = v11;
      }

      else
      {
        v14 = [(AXSSLanguageManager *)self dialectForCurrentRegion];
        v15 = [v14 specificLanguageID];
        v16 = [v15 hasPrefix:v5];

        if (v16)
        {
          v10 = v14;
        }

        else
        {
          v34 = v14;
          v35 = [v5 rangeOfString:@"-"];
          v42 = 0u;
          v43 = 0u;
          v44 = 0u;
          v45 = 0u;
          obj = [(AXSSLanguageManager *)self languageMaps];
          v17 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v43;
            while (2)
            {
              for (i = 0; i != v18; ++i)
              {
                if (*v43 != v19)
                {
                  objc_enumerationMutation(obj);
                }

                v21 = *(*(&v42 + 1) + 8 * i);
                v22 = [v21 generalLanguageID];
                if ([v5 hasPrefix:v22])
                {

LABEL_22:
                  if (v35 != 0x7FFFFFFFFFFFFFFFLL)
                  {
                    v40 = 0u;
                    v41 = 0u;
                    v38 = 0u;
                    v39 = 0u;
                    v36 = [v21 dialects];
                    v25 = [v36 countByEnumeratingWithState:&v38 objects:v46 count:16];
                    if (v25)
                    {
                      v26 = v25;
                      v27 = *v39;
                      while (2)
                      {
                        for (j = 0; j != v26; ++j)
                        {
                          if (*v39 != v27)
                          {
                            objc_enumerationMutation(v36);
                          }

                          v29 = *(*(&v38 + 1) + 8 * j);
                          v30 = [v29 specificLanguageID];
                          v31 = [v30 isEqualToString:v5];

                          if (v31)
                          {
                            v10 = v29;

                            goto LABEL_34;
                          }
                        }

                        v26 = [v36 countByEnumeratingWithState:&v38 objects:v46 count:16];
                        if (v26)
                        {
                          continue;
                        }

                        break;
                      }
                    }
                  }

                  v10 = [v21 defaultDialect];
LABEL_34:

                  goto LABEL_35;
                }

                v23 = [v21 alternateLanguageIDs];
                v24 = [v23 containsObject:v5];

                if (v24)
                {
                  goto LABEL_22;
                }
              }

              v18 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
              if (v18)
              {
                continue;
              }

              break;
            }
          }

          v10 = 0;
LABEL_35:
          v14 = v34;
        }
      }
    }
  }

  else
  {
    v10 = 0;
  }

  v32 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)dialectForSpeechSynthesisVoiceID:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v5 = [(AXSSLanguageManager *)self languageMaps];
    v23 = [v5 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v23)
    {
      v6 = *v31;
      v25 = v5;
      v22 = *v31;
      do
      {
        v7 = 0;
        do
        {
          if (*v31 != v6)
          {
            objc_enumerationMutation(v5);
          }

          v24 = v7;
          v8 = *(*(&v30 + 1) + 8 * v7);
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          v9 = [v8 dialects];
          v10 = [v9 countByEnumeratingWithState:&v26 objects:v34 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v27;
            do
            {
              for (i = 0; i != v11; ++i)
              {
                if (*v27 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                v14 = *(*(&v26 + 1) + 8 * i);
                v15 = [v14 voiceIdentifier];
                if ([v15 hasPrefix:v4])
                {
                  v16 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
                  v17 = [v14 speakableCharacters];
                  v18 = [v16 isSupersetOfSet:v17];

                  if (!v18)
                  {
                    v19 = v14;

                    goto LABEL_22;
                  }
                }

                else
                {
                }
              }

              v11 = [v9 countByEnumeratingWithState:&v26 objects:v34 count:16];
            }

            while (v11);
          }

          v7 = v24 + 1;
          v5 = v25;
          v6 = v22;
        }

        while (v24 + 1 != v23);
        v23 = [v25 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v23);
    }

    v19 = 0;
  }

  else
  {
    v19 = [(AXSSLanguageManager *)self dialectForSystemLanguage];
  }

LABEL_22:

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

- (id)dialectsThatCanSpeakString:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v6 = [(AXSSLanguageManager *)self languageMaps];
  v7 = [v6 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v33;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v33 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v32 + 1) + 8 * i);
        v12 = [v11 defaultDialect];
        v13 = [v12 canSpeakString:v4];

        if (v13)
        {
          v14 = [v11 defaultDialect];
          [v5 addObject:v14];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v8);
  }

  v15 = [MEMORY[0x1E695DF58] preferredLanguages];
  v16 = [MEMORY[0x1E695DF70] array];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v17 = v15;
  v18 = [v17 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v29;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v29 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = AXSSLanguageConvertToCanonicalForm(*(*(&v28 + 1) + 8 * j));
        [v16 addObject:v22];
      }

      v19 = [v17 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v19);
  }

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __50__AXSSLanguageManager_dialectsThatCanSpeakString___block_invoke;
  v26[3] = &unk_1E8134FA0;
  v27 = v16;
  v23 = v16;
  [v5 sortUsingComparator:v26];

  v24 = *MEMORY[0x1E69E9840];

  return v5;
}

uint64_t __50__AXSSLanguageManager_dialectsThatCanSpeakString___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x1E696AD98];
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = [v5 numberWithUnsignedInteger:{objc_msgSend(v6, "indexOfObject:", a2)}];
  v9 = MEMORY[0x1E696AD98];
  v10 = [*(a1 + 32) indexOfObject:v7];

  v11 = [v9 numberWithUnsignedInteger:v10];
  v12 = [v8 compare:v11];

  return v12;
}

void __53__AXSSLanguageManager_dialectsThatCanSpeakCharacter___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 defaultDialect];
  v4 = [v3 canSpeakCharacter:*(a1 + 40)];

  if (v4)
  {
    v5 = [v9 defaultDialect];
    v6 = [v5 isDialectSecondaryForCharacter:*(a1 + 40)];

    if ((v6 & 1) == 0)
    {
      v7 = *(*(*(a1 + 32) + 8) + 40);
      v8 = [v9 defaultDialect];
      [v7 addObject:v8];
    }
  }
}

void __53__AXSSLanguageManager_dialectsThatCanSpeakCharacter___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = AXSSLanguageConvertToCanonicalForm(a2);
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __53__AXSSLanguageManager_dialectsThatCanSpeakCharacter___block_invoke_3;
  v9[3] = &unk_1E8134FF0;
  v5 = v3;
  v10 = v5;
  v6 = [v4 indexOfObjectPassingTest:v9];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = v6;
    v8 = [*(*(*(a1 + 32) + 8) + 40) objectAtIndexedSubscript:v6];
    [*(*(*(a1 + 32) + 8) + 40) removeObjectAtIndex:v7];
    [*(*(*(a1 + 32) + 8) + 40) insertObject:v8 atIndex:0];
  }
}

uint64_t __53__AXSSLanguageManager_dialectsThatCanSpeakCharacter___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 languageMap];
  v4 = [v3 generalLanguageID];
  v5 = [v2 hasPrefix:v4];

  return v5;
}

- (BOOL)isStringComposedByCommonCharacters:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (v5 == v8 + v7)
    {
      v8 = v5;
      v7 = v6;
      v9 = [(AXSSLanguageManager *)self commonCharacters];
      v5 = [v4 rangeOfCharacterFromSet:v9 options:1 range:{v6 + v5, objc_msgSend(v4, "length") - (v6 + v5)}];
      v6 = v10;

      if (v5 + v6 >= [v4 length])
      {
        v11 = v5 != 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_8;
      }
    }

    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

LABEL_8:

  return v11;
}

- (void)updateCachedDialects
{
  v2 = self;
  v93 = *MEMORY[0x1E69E9840];
  v3 = [(AXSSLanguageManager *)self systemLanguageID];
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v4 = [(AXSSLanguageManager *)v2 languageMaps];
  v5 = [v4 countByEnumeratingWithState:&v83 objects:v92 count:16];
  v59 = v2;
  v57 = v3;
  if (v5)
  {
    v6 = v5;
    v7 = *v84;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v84 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v83 + 1) + 8 * i);
        v10 = [v9 generalLanguageID];
        v11 = [v3 hasPrefix:v10];

        if (v11)
        {
          v18 = [(AXSSLanguageManager *)v2 _preferredLanguage];
          v79 = 0u;
          v80 = 0u;
          v81 = 0u;
          v82 = 0u;
          v19 = [v9 dialects];
          v20 = [v19 countByEnumeratingWithState:&v79 objects:v91 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v80;
            while (2)
            {
              for (j = 0; j != v21; ++j)
              {
                if (*v80 != v22)
                {
                  objc_enumerationMutation(v19);
                }

                v24 = *(*(&v79 + 1) + 8 * j);
                v25 = [v24 specificLanguageID];
                v26 = [v25 isEqual:v18];

                if (v26)
                {
                  v2 = v59;
                  [(AXSSLanguageManager *)v59 setDialectForSystemLanguage:v24];
                  goto LABEL_30;
                }

                v2 = v59;
              }

              v21 = [v19 countByEnumeratingWithState:&v79 objects:v91 count:16];
              if (v21)
              {
                continue;
              }

              break;
            }
          }

LABEL_30:

          if (!v2->_dialectForSystemLanguage)
          {
            v27 = [v9 defaultDialect];
            [(AXSSLanguageManager *)v2 setDialectForSystemLanguage:v27];
          }

          v3 = v57;
          goto LABEL_33;
        }

        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        v12 = [v9 alternateLanguageIDs];
        v13 = [v12 countByEnumeratingWithState:&v75 objects:v90 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v76;
          while (2)
          {
            for (k = 0; k != v14; ++k)
            {
              if (*v76 != v15)
              {
                objc_enumerationMutation(v12);
              }

              if ([v3 hasPrefix:*(*(&v75 + 1) + 8 * k)])
              {
                v17 = [v9 defaultDialect];
                v2 = v59;
                [(AXSSLanguageManager *)v59 setDialectForSystemLanguage:v17];

                goto LABEL_17;
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v75 objects:v90 count:16];
            v2 = v59;
            if (v14)
            {
              continue;
            }

            break;
          }
        }

LABEL_17:
      }

      v6 = [v4 countByEnumeratingWithState:&v83 objects:v92 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_33:

  v28 = [(AXSSLanguageManager *)v2 userLocale];
  v29 = [v28 objectForKey:*MEMORY[0x1E695D9B0]];

  if (v29)
  {
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v30 = [(AXSSLanguageManager *)v2 languageMaps];
    v31 = [v30 countByEnumeratingWithState:&v71 objects:v89 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v72;
      do
      {
        for (m = 0; m != v32; ++m)
        {
          if (*v72 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = *(*(&v71 + 1) + 8 * m);
          v36 = [v35 generalLanguageID];
          v37 = [v29 hasPrefix:v36];

          if (v37)
          {
            v38 = [v35 defaultDialect];
            [(AXSSLanguageManager *)v2 setDialectForCurrentLocale:v38];
          }
        }

        v32 = [v30 countByEnumeratingWithState:&v71 objects:v89 count:16];
      }

      while (v32);
    }
  }

  v39 = [(AXSSLanguageManager *)v2 userLocale];
  v40 = *MEMORY[0x1E695D978];
  v41 = [v39 objectForKey:*MEMORY[0x1E695D978]];

  if (v41)
  {
    v56 = v29;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    obj = [(AXSSLanguageManager *)v2 languageMaps];
    v61 = [obj countByEnumeratingWithState:&v67 objects:v88 count:16];
    if (v61)
    {
      v60 = *v68;
      do
      {
        v42 = 0;
        do
        {
          if (*v68 != v60)
          {
            objc_enumerationMutation(obj);
          }

          v62 = v42;
          v43 = *(*(&v67 + 1) + 8 * v42);
          v63 = 0u;
          v64 = 0u;
          v65 = 0u;
          v66 = 0u;
          v44 = [v43 dialects];
          v45 = [v44 countByEnumeratingWithState:&v63 objects:v87 count:16];
          if (v45)
          {
            v46 = v45;
            v47 = *v64;
            while (2)
            {
              for (n = 0; n != v46; ++n)
              {
                if (*v64 != v47)
                {
                  objc_enumerationMutation(v44);
                }

                v49 = *(*(&v63 + 1) + 8 * n);
                v50 = [v49 locale];
                v51 = [v50 objectForKey:v40];
                v52 = [v51 hasSuffix:v41];

                if (v52)
                {
                  [(AXSSLanguageManager *)v59 setDialectForCurrentRegion:v49];
                  goto LABEL_60;
                }
              }

              v46 = [v44 countByEnumeratingWithState:&v63 objects:v87 count:16];
              if (v46)
              {
                continue;
              }

              break;
            }
          }

LABEL_60:

          v42 = v62 + 1;
        }

        while (v62 + 1 != v61);
        v61 = [obj countByEnumeratingWithState:&v67 objects:v88 count:16];
      }

      while (v61);
    }

    v29 = v56;
    v3 = v57;
    v2 = v59;
  }

  if (!v2->_dialectForSystemLanguage)
  {
    if (v2->_dialectForCurrentLocale)
    {
      v53 = [(AXSSLanguageManager *)v2 dialectForCurrentLocale];
LABEL_68:
      v54 = v53;
      [(AXSSLanguageManager *)v2 setDialectForSystemLanguage:v53];

      goto LABEL_69;
    }

    if (v2->_dialectForCurrentRegion)
    {
      v53 = [(AXSSLanguageManager *)v2 dialectForCurrentRegion];
      goto LABEL_68;
    }
  }

LABEL_69:

  v55 = *MEMORY[0x1E69E9840];
}

- (void)_handleUserLocaleDidChange:(id)a3
{
  v4 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  [(AXSSLanguageManager *)self setUserLocale:v4];

  [(AXSSLanguageManager *)self updateCachedDialects];
}

@end