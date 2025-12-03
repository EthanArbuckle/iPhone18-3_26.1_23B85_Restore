@interface AXSSLanguageManager
+ (id)commonPunctuationCharacters;
+ (id)shared;
+ (id)stringByReplacingFatWidthCharactersWithBasicCharacters:(id)characters;
- (AXSSDialectMap)dialectForCurrentLocale;
- (AXSSDialectMap)dialectForCurrentRegion;
- (AXSSDialectMap)dialectForSystemLanguage;
- (AXSSLanguageManager)init;
- (BOOL)isStringComposedByCommonCharacters:(id)characters;
- (NSArray)languageMaps;
- (NSString)systemLanguageID;
- (id)_preferredLanguage;
- (id)description;
- (id)dialectForLanguageID:(id)d;
- (id)dialectForSpeechSynthesisVoiceID:(id)d;
- (id)dialectsThatCanSpeakString:(id)string;
- (void)_handleUserLocaleDidChange:(id)change;
- (void)setDialectForCurrentLocale:(id)locale;
- (void)setDialectForCurrentRegion:(id)region;
- (void)setDialectForSystemLanguage:(id)language;
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

+ (id)stringByReplacingFatWidthCharactersWithBasicCharacters:(id)characters
{
  charactersCopy = characters;
  v4 = [MEMORY[0x1E696AB08] characterSetWithRange:{65296, 75}];
  v5 = [charactersCopy rangeOfCharacterFromSet:v4];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = charactersCopy;
  }

  else
  {
    v7 = v5;
    v8 = [charactersCopy length];
    v9 = MEMORY[0x1E696AD60];
    v10 = [charactersCopy substringToIndex:v7];
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
        v12 = [charactersCopy characterAtIndex:v7];
        if ([v4 characterIsMember:v12])
        {
          v13 = v7 - v11;
          if (v7 > v11)
          {
            v14 = [charactersCopy substringWithRange:{v11, v13}];
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
      v15 = [charactersCopy substringWithRange:{v11, v8 - 1 - v11}];
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
    autoupdatingCurrentLocale = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
    [(AXSSLanguageManager *)v2 setUserLocale:autoupdatingCurrentLocale];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__handleUserLocaleDidChange_ name:*MEMORY[0x1E695D8F0] object:0];

    v5 = objc_alloc_init(MEMORY[0x1E696AD48]);
    whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    [v5 formUnionWithCharacterSet:whitespaceAndNewlineCharacterSet];

    punctuationCharacterSet = [MEMORY[0x1E696AB08] punctuationCharacterSet];
    [v5 formUnionWithCharacterSet:punctuationCharacterSet];

    v8 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"0123456789•■"];
    [v5 formUnionWithCharacterSet:v8];

    controlCharacterSet = [MEMORY[0x1E696AB08] controlCharacterSet];
    [v5 formUnionWithCharacterSet:controlCharacterSet];

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
  languageMaps = [(AXSSLanguageManager *)self languageMaps];
  v5 = [v3 stringWithFormat:@"AXSSLanguageManager:<%p>. %lu lang maps", self, objc_msgSend(languageMaps, "count")];

  return v5;
}

- (id)_preferredLanguage
{
  preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
  if ([preferredLanguages count])
  {
    v3 = [preferredLanguages objectAtIndex:0];
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
  preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
  if ([preferredLanguages count])
  {
    userLocale = [preferredLanguages objectAtIndex:0];
    v5 = AXSSLanguageCanonicalFormToGeneralLanguage(userLocale);
  }

  else
  {
    userLocale = [(AXSSLanguageManager *)self userLocale];
    v6 = [userLocale objectForKey:*MEMORY[0x1E695D9B0]];
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

- (void)setDialectForSystemLanguage:(id)language
{
  languageCopy = language;
  dialectForSystemLanguage = self->_dialectForSystemLanguage;
  p_dialectForSystemLanguage = &self->_dialectForSystemLanguage;
  v8 = languageCopy;
  if (![(AXSSDialectMap *)dialectForSystemLanguage isEqual:?])
  {
    objc_storeStrong(p_dialectForSystemLanguage, language);
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

- (void)setDialectForCurrentLocale:(id)locale
{
  localeCopy = locale;
  dialectForCurrentLocale = self->_dialectForCurrentLocale;
  p_dialectForCurrentLocale = &self->_dialectForCurrentLocale;
  v8 = localeCopy;
  if (![(AXSSDialectMap *)dialectForCurrentLocale isEqual:?])
  {
    objc_storeStrong(p_dialectForCurrentLocale, locale);
  }
}

- (void)setDialectForCurrentRegion:(id)region
{
  regionCopy = region;
  dialectForCurrentRegion = self->_dialectForCurrentRegion;
  p_dialectForCurrentRegion = &self->_dialectForCurrentRegion;
  v8 = regionCopy;
  if (![(AXSSDialectMap *)dialectForCurrentRegion isEqual:?])
  {
    objc_storeStrong(p_dialectForCurrentRegion, region);
  }
}

- (id)dialectForLanguageID:(id)d
{
  v48 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (dCopy)
  {
    v5 = dCopy;
    if ([dCopy hasPrefix:@"zh"])
    {
      v6 = [v5 stringByReplacingOccurrencesOfString:@"Hant-" withString:&stru_1F405A428];

      v5 = [v6 stringByReplacingOccurrencesOfString:@"Hans-" withString:&stru_1F405A428];
    }

    dialectForSystemLanguage = [(AXSSLanguageManager *)self dialectForSystemLanguage];
    specificLanguageID = [dialectForSystemLanguage specificLanguageID];
    v9 = [specificLanguageID hasPrefix:v5];

    if (v9)
    {
      defaultDialect = dialectForSystemLanguage;
    }

    else
    {
      dialectForCurrentLocale = [(AXSSLanguageManager *)self dialectForCurrentLocale];
      specificLanguageID2 = [dialectForCurrentLocale specificLanguageID];
      v13 = [specificLanguageID2 hasPrefix:v5];

      if (v13)
      {
        defaultDialect = dialectForCurrentLocale;
      }

      else
      {
        dialectForCurrentRegion = [(AXSSLanguageManager *)self dialectForCurrentRegion];
        specificLanguageID3 = [dialectForCurrentRegion specificLanguageID];
        v16 = [specificLanguageID3 hasPrefix:v5];

        if (v16)
        {
          defaultDialect = dialectForCurrentRegion;
        }

        else
        {
          v34 = dialectForCurrentRegion;
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
                generalLanguageID = [v21 generalLanguageID];
                if ([v5 hasPrefix:generalLanguageID])
                {

LABEL_22:
                  if (v35 != 0x7FFFFFFFFFFFFFFFLL)
                  {
                    v40 = 0u;
                    v41 = 0u;
                    v38 = 0u;
                    v39 = 0u;
                    dialects = [v21 dialects];
                    v25 = [dialects countByEnumeratingWithState:&v38 objects:v46 count:16];
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
                            objc_enumerationMutation(dialects);
                          }

                          v29 = *(*(&v38 + 1) + 8 * j);
                          specificLanguageID4 = [v29 specificLanguageID];
                          v31 = [specificLanguageID4 isEqualToString:v5];

                          if (v31)
                          {
                            defaultDialect = v29;

                            goto LABEL_34;
                          }
                        }

                        v26 = [dialects countByEnumeratingWithState:&v38 objects:v46 count:16];
                        if (v26)
                        {
                          continue;
                        }

                        break;
                      }
                    }
                  }

                  defaultDialect = [v21 defaultDialect];
LABEL_34:

                  goto LABEL_35;
                }

                alternateLanguageIDs = [v21 alternateLanguageIDs];
                v24 = [alternateLanguageIDs containsObject:v5];

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

          defaultDialect = 0;
LABEL_35:
          dialectForCurrentRegion = v34;
        }
      }
    }
  }

  else
  {
    defaultDialect = 0;
  }

  v32 = *MEMORY[0x1E69E9840];

  return defaultDialect;
}

- (id)dialectForSpeechSynthesisVoiceID:(id)d
{
  v36 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (dCopy)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    languageMaps = [(AXSSLanguageManager *)self languageMaps];
    v23 = [languageMaps countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v23)
    {
      v6 = *v31;
      v25 = languageMaps;
      v22 = *v31;
      do
      {
        v7 = 0;
        do
        {
          if (*v31 != v6)
          {
            objc_enumerationMutation(languageMaps);
          }

          v24 = v7;
          v8 = *(*(&v30 + 1) + 8 * v7);
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          dialects = [v8 dialects];
          v10 = [dialects countByEnumeratingWithState:&v26 objects:v34 count:16];
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
                  objc_enumerationMutation(dialects);
                }

                v14 = *(*(&v26 + 1) + 8 * i);
                voiceIdentifier = [v14 voiceIdentifier];
                if ([voiceIdentifier hasPrefix:dCopy])
                {
                  whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
                  speakableCharacters = [v14 speakableCharacters];
                  v18 = [whitespaceCharacterSet isSupersetOfSet:speakableCharacters];

                  if (!v18)
                  {
                    dialectForSystemLanguage = v14;

                    goto LABEL_22;
                  }
                }

                else
                {
                }
              }

              v11 = [dialects countByEnumeratingWithState:&v26 objects:v34 count:16];
            }

            while (v11);
          }

          v7 = v24 + 1;
          languageMaps = v25;
          v6 = v22;
        }

        while (v24 + 1 != v23);
        v23 = [v25 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v23);
    }

    dialectForSystemLanguage = 0;
  }

  else
  {
    dialectForSystemLanguage = [(AXSSLanguageManager *)self dialectForSystemLanguage];
  }

LABEL_22:

  v20 = *MEMORY[0x1E69E9840];

  return dialectForSystemLanguage;
}

- (id)dialectsThatCanSpeakString:(id)string
{
  v38 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  array = [MEMORY[0x1E695DF70] array];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  languageMaps = [(AXSSLanguageManager *)self languageMaps];
  v7 = [languageMaps countByEnumeratingWithState:&v32 objects:v37 count:16];
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
          objc_enumerationMutation(languageMaps);
        }

        v11 = *(*(&v32 + 1) + 8 * i);
        defaultDialect = [v11 defaultDialect];
        v13 = [defaultDialect canSpeakString:stringCopy];

        if (v13)
        {
          defaultDialect2 = [v11 defaultDialect];
          [array addObject:defaultDialect2];
        }
      }

      v8 = [languageMaps countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v8);
  }

  preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
  array2 = [MEMORY[0x1E695DF70] array];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v17 = preferredLanguages;
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
        [array2 addObject:v22];
      }

      v19 = [v17 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v19);
  }

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __50__AXSSLanguageManager_dialectsThatCanSpeakString___block_invoke;
  v26[3] = &unk_1E8134FA0;
  v27 = array2;
  v23 = array2;
  [array sortUsingComparator:v26];

  v24 = *MEMORY[0x1E69E9840];

  return array;
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

- (BOOL)isStringComposedByCommonCharacters:(id)characters
{
  charactersCopy = characters;
  if ([charactersCopy length])
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (v5 == v8 + v7)
    {
      v8 = v5;
      v7 = v6;
      commonCharacters = [(AXSSLanguageManager *)self commonCharacters];
      v5 = [charactersCopy rangeOfCharacterFromSet:commonCharacters options:1 range:{v6 + v5, objc_msgSend(charactersCopy, "length") - (v6 + v5)}];
      v6 = v10;

      if (v5 + v6 >= [charactersCopy length])
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
  selfCopy = self;
  v93 = *MEMORY[0x1E69E9840];
  systemLanguageID = [(AXSSLanguageManager *)self systemLanguageID];
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  languageMaps = [(AXSSLanguageManager *)selfCopy languageMaps];
  v5 = [languageMaps countByEnumeratingWithState:&v83 objects:v92 count:16];
  v59 = selfCopy;
  v57 = systemLanguageID;
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
          objc_enumerationMutation(languageMaps);
        }

        v9 = *(*(&v83 + 1) + 8 * i);
        generalLanguageID = [v9 generalLanguageID];
        v11 = [systemLanguageID hasPrefix:generalLanguageID];

        if (v11)
        {
          _preferredLanguage = [(AXSSLanguageManager *)selfCopy _preferredLanguage];
          v79 = 0u;
          v80 = 0u;
          v81 = 0u;
          v82 = 0u;
          dialects = [v9 dialects];
          v20 = [dialects countByEnumeratingWithState:&v79 objects:v91 count:16];
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
                  objc_enumerationMutation(dialects);
                }

                v24 = *(*(&v79 + 1) + 8 * j);
                specificLanguageID = [v24 specificLanguageID];
                v26 = [specificLanguageID isEqual:_preferredLanguage];

                if (v26)
                {
                  selfCopy = v59;
                  [(AXSSLanguageManager *)v59 setDialectForSystemLanguage:v24];
                  goto LABEL_30;
                }

                selfCopy = v59;
              }

              v21 = [dialects countByEnumeratingWithState:&v79 objects:v91 count:16];
              if (v21)
              {
                continue;
              }

              break;
            }
          }

LABEL_30:

          if (!selfCopy->_dialectForSystemLanguage)
          {
            defaultDialect = [v9 defaultDialect];
            [(AXSSLanguageManager *)selfCopy setDialectForSystemLanguage:defaultDialect];
          }

          systemLanguageID = v57;
          goto LABEL_33;
        }

        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        alternateLanguageIDs = [v9 alternateLanguageIDs];
        v13 = [alternateLanguageIDs countByEnumeratingWithState:&v75 objects:v90 count:16];
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
                objc_enumerationMutation(alternateLanguageIDs);
              }

              if ([systemLanguageID hasPrefix:*(*(&v75 + 1) + 8 * k)])
              {
                defaultDialect2 = [v9 defaultDialect];
                selfCopy = v59;
                [(AXSSLanguageManager *)v59 setDialectForSystemLanguage:defaultDialect2];

                goto LABEL_17;
              }
            }

            v14 = [alternateLanguageIDs countByEnumeratingWithState:&v75 objects:v90 count:16];
            selfCopy = v59;
            if (v14)
            {
              continue;
            }

            break;
          }
        }

LABEL_17:
      }

      v6 = [languageMaps countByEnumeratingWithState:&v83 objects:v92 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_33:

  userLocale = [(AXSSLanguageManager *)selfCopy userLocale];
  v29 = [userLocale objectForKey:*MEMORY[0x1E695D9B0]];

  if (v29)
  {
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    languageMaps2 = [(AXSSLanguageManager *)selfCopy languageMaps];
    v31 = [languageMaps2 countByEnumeratingWithState:&v71 objects:v89 count:16];
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
            objc_enumerationMutation(languageMaps2);
          }

          v35 = *(*(&v71 + 1) + 8 * m);
          generalLanguageID2 = [v35 generalLanguageID];
          v37 = [v29 hasPrefix:generalLanguageID2];

          if (v37)
          {
            defaultDialect3 = [v35 defaultDialect];
            [(AXSSLanguageManager *)selfCopy setDialectForCurrentLocale:defaultDialect3];
          }
        }

        v32 = [languageMaps2 countByEnumeratingWithState:&v71 objects:v89 count:16];
      }

      while (v32);
    }
  }

  userLocale2 = [(AXSSLanguageManager *)selfCopy userLocale];
  v40 = *MEMORY[0x1E695D978];
  v41 = [userLocale2 objectForKey:*MEMORY[0x1E695D978]];

  if (v41)
  {
    v56 = v29;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    obj = [(AXSSLanguageManager *)selfCopy languageMaps];
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
          dialects2 = [v43 dialects];
          v45 = [dialects2 countByEnumeratingWithState:&v63 objects:v87 count:16];
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
                  objc_enumerationMutation(dialects2);
                }

                v49 = *(*(&v63 + 1) + 8 * n);
                locale = [v49 locale];
                v51 = [locale objectForKey:v40];
                v52 = [v51 hasSuffix:v41];

                if (v52)
                {
                  [(AXSSLanguageManager *)v59 setDialectForCurrentRegion:v49];
                  goto LABEL_60;
                }
              }

              v46 = [dialects2 countByEnumeratingWithState:&v63 objects:v87 count:16];
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
    systemLanguageID = v57;
    selfCopy = v59;
  }

  if (!selfCopy->_dialectForSystemLanguage)
  {
    if (selfCopy->_dialectForCurrentLocale)
    {
      dialectForCurrentLocale = [(AXSSLanguageManager *)selfCopy dialectForCurrentLocale];
LABEL_68:
      v54 = dialectForCurrentLocale;
      [(AXSSLanguageManager *)selfCopy setDialectForSystemLanguage:dialectForCurrentLocale];

      goto LABEL_69;
    }

    if (selfCopy->_dialectForCurrentRegion)
    {
      dialectForCurrentLocale = [(AXSSLanguageManager *)selfCopy dialectForCurrentRegion];
      goto LABEL_68;
    }
  }

LABEL_69:

  v55 = *MEMORY[0x1E69E9840];
}

- (void)_handleUserLocaleDidChange:(id)change
{
  autoupdatingCurrentLocale = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  [(AXSSLanguageManager *)self setUserLocale:autoupdatingCurrentLocale];

  [(AXSSLanguageManager *)self updateCachedDialects];
}

@end