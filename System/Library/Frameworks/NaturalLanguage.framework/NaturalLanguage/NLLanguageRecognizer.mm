@interface NLLanguageRecognizer
+ (BOOL)_candidate:(id)_candidate matchesDominantLanguage:(id)language;
+ (BOOL)_isString:(id)string words:(id)words plausiblyInLanguage:(id)language increasedThreshold:(BOOL)threshold;
+ (BOOL)_isWord:(id)word acceptableInLexicon:(id)lexicon;
+ (NLLanguage)dominantLanguageForString:(NSString *)string;
+ (id)_filteredLexiconForLanguage:(id)language waitUntilLoaded:(BOOL)loaded;
+ (id)_lexiconForLanguage:(id)language waitUntilLoaded:(BOOL)loaded;
+ (id)_loadLexiconForLanguage:(id)language;
+ (id)_orderedCandidateLanguagesForCandidateLanguages:(id)languages preferredLanguages:(id)preferredLanguages;
+ (id)arabicCharacterContent:(id)content;
+ (id)chineseCharacterContent:(id)content;
+ (id)greekCharacterContent:(id)content;
+ (id)hebrewCharacterContent:(id)content;
+ (id)japaneseCharacterContent:(id)content;
+ (id)koreanCharacterContent:(id)content;
+ (id)mostAppropriateLanguageForString:(id)string candidateLanguages:(id)languages preferredLanguages:(id)preferredLanguages;
+ (id)specialCharacterContent:(id)content;
+ (id)thaiCharacterContent:(id)content;
+ (void)releaseDictionaries;
+ (void)releaseDictionariesExceptForLanguages:(id)languages;
+ (void)releaseDictionariesWithPreferredLanguages:(id)languages;
- (NLLanguage)dominantLanguage;
- (NLLanguageRecognizer)init;
- (NSArray)languageConstraints;
- (NSDictionary)languageHints;
- (NSDictionary)languageHypothesesWithMaximum:(NSUInteger)maxHypotheses;
- (void)dealloc;
- (void)processString:(NSString *)string;
- (void)setLanguageConstraints:(NSArray *)languageConstraints;
- (void)setLanguageHints:(NSDictionary *)languageHints;
@end

@implementation NLLanguageRecognizer

- (void)dealloc
{
  if (self->_identifier)
  {
    NLLanguageIdentifierRelease();
  }

  v3.receiver = self;
  v3.super_class = NLLanguageRecognizer;
  [(NLLanguageRecognizer *)&v3 dealloc];
}

- (NLLanguageRecognizer)init
{
  v3 = NLLanguageIdentifierCreate();
  if (v3)
  {
    v4 = v3;
    v7.receiver = self;
    v7.super_class = NLLanguageRecognizer;
    v5 = [(NLLanguageRecognizer *)&v7 init];
    self = v5;
    if (v5)
    {
      v5->_identifier = v4;
    }
  }

  return self;
}

+ (NLLanguage)dominantLanguageForString:(NSString *)string
{
  v3 = string;
  [(NSString *)v3 length];
  TopLanguage = NLLanguageIdentifierGetTopLanguage();

  return _getLanguageTag(TopLanguage);
}

- (NLLanguage)dominantLanguage
{
  identifier = self->_identifier;
  TopHypothesis = NLLanguageIdentifierGetTopHypothesis();

  return _getLanguageTag(TopHypothesis);
}

- (NSDictionary)languageHypothesesWithMaximum:(NSUInteger)maxHypotheses
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (maxHypotheses >= 0x45)
  {
    v6 = 69;
  }

  else
  {
    v6 = maxHypotheses;
  }

  if (maxHypotheses)
  {
    v7 = v6;
  }

  else
  {
    v7 = 69;
  }

  v8 = malloc_type_malloc(8 * v7, 0x100004000313F17uLL);
  identifier = self->_identifier;
  TopHypotheses = NLLanguageIdentifierGetTopHypotheses();
  if (TopHypotheses < 1)
  {
    if (!v8)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v11 = TopHypotheses;
    v12 = v8 + 1;
    do
    {
      v13 = _getLanguageTag(*(v12 - 1));
      if (v13)
      {
        v14 = [MEMORY[0x1E696AD98] numberWithDouble:*v12];
        [dictionary setObject:v14 forKey:v13];
      }

      v12 += 2;
      --v11;
    }

    while (v11);
  }

  free(v8);
LABEL_15:

  return dictionary;
}

- (void)processString:(NSString *)string
{
  v4 = string;
  [(NLLanguageRecognizer *)self processString:v4 range:0, [(NSString *)v4 length]];
}

- (NSDictionary)languageHints
{
  if (self->_languageHints)
  {
    return self->_languageHints;
  }

  else
  {
    return MEMORY[0x1E695E0F8];
  }
}

- (void)setLanguageHints:(NSDictionary *)languageHints
{
  v4 = languageHints;
  allKeys = [(NSDictionary *)v4 allKeys];
  v5 = [allKeys count];
  if (v5 >= 0x45)
  {
    v6 = 69;
  }

  else
  {
    v6 = v5;
  }

  if (v5)
  {
    v7 = malloc_type_malloc(8 * v6, 0x100004000313F17uLL);
    v8 = 0;
    do
    {
      v9 = [allKeys objectAtIndex:v8];
      v10 = [(NSDictionary *)v4 objectForKey:v9];
      [v10 doubleValue];
      v12 = v11;

      v13 = 0;
      do
      {
        v14 = v13;
        v15 = [v9 isEqualToString:_languageTags[v13]];
        v13 = v14 + 1;
      }

      while (v14 <= 0x43 && !v15);
      if (!v15)
      {
        LODWORD(v13) = 0;
      }

      v16 = &v7[8 * v8];
      *v16 = v13;
      v17 = v12;
      v16[1] = v17;

      ++v8;
    }

    while (v8 != v6);
    identifier = self->_identifier;
    NLLanguageIdentifierSetLanguageHints();
    free(v7);
  }

  else
  {
    v19 = self->_identifier;
    NLLanguageIdentifierSetLanguageHints();
  }

  v20 = self->_languageHints;
  self->_languageHints = v4;
}

- (NSArray)languageConstraints
{
  if (self->_languageConstraints)
  {
    return self->_languageConstraints;
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

- (void)setLanguageConstraints:(NSArray *)languageConstraints
{
  v4 = languageConstraints;
  v5 = [(NSArray *)v4 count];
  if (v5 >= 0x45)
  {
    v6 = 69;
  }

  else
  {
    v6 = v5;
  }

  if (v5)
  {
    v7 = malloc_type_malloc(4 * v6, 0x100004052888210uLL);
    v8 = 0;
    do
    {
      v9 = [(NSArray *)v4 objectAtIndex:v8];
      v10 = 0;
      do
      {
        v11 = v10;
        v12 = [v9 isEqualToString:_languageTags[v10]];
        v10 = v11 + 1;
      }

      while (v11 <= 0x43 && !v12);
      if (!v12)
      {
        LODWORD(v10) = 0;
      }

      v7[v8] = v10;

      ++v8;
    }

    while (v8 != v6);
    identifier = self->_identifier;
    NLLanguageIdentifierSetLanguageConstraints();
    free(v7);
  }

  else
  {
    v14 = self->_identifier;
    NLLanguageIdentifierSetLanguageConstraints();
  }

  v15 = self->_languageConstraints;
  self->_languageConstraints = v4;
}

+ (void)releaseDictionariesExceptForLanguages:(id)languages
{
  languagesCopy = languages;
  v4 = languagesCopy;
  v5 = _lexiconDictionaryQueue;
  if (_lexiconDictionary)
  {
    v6 = _lexiconDictionaryQueue == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __75__NLLanguageRecognizer_Preferences__releaseDictionariesExceptForLanguages___block_invoke;
    block[3] = &unk_1E7628FC8;
    v8 = languagesCopy;
    dispatch_sync(v5, block);
  }
}

void __75__NLLanguageRecognizer_Preferences__releaseDictionariesExceptForLanguages___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = [_lexiconDictionary objectForKey:{v8, v11}];
        if (v9)
        {
          [v2 setObject:v9 forKey:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  [_lexiconDictionary removeAllObjects];
  [_lexiconDictionary addEntriesFromDictionary:v2];

  v10 = *MEMORY[0x1E69E9840];
}

+ (void)releaseDictionariesWithPreferredLanguages:(id)languages
{
  v54 = *MEMORY[0x1E69E9840];
  languagesCopy = languages;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  v35 = languagesCopy;
  v6 = [MEMORY[0x1E695DF70] arrayWithArray:languagesCopy];
  v7 = _lexiconDictionaryQueue;
  if (_lexiconDictionary)
  {
    v8 = _lexiconDictionaryQueue == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __79__NLLanguageRecognizer_Preferences__releaseDictionariesWithPreferredLanguages___block_invoke;
    block[3] = &unk_1E7628FC8;
    v51 = array2;
    dispatch_sync(v7, block);
  }

  if ([array count] <= 2)
  {
    v37 = v6;
    v38 = array2;
    v36 = array;
    do
    {
      if (![v6 count] || !objc_msgSend(array2, "count"))
      {
        break;
      }

      v9 = [MEMORY[0x1E695DF58] mostPreferredLanguageOf:array2 withPreferredLanguages:v6 forUsage:2 options:0];
      v40 = v9;
      if (v9)
      {
        v10 = v9;
        if (([array containsObject:v9] & 1) == 0)
        {
          v11 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v10];
          v46 = 0u;
          v47 = 0u;
          v48 = 0u;
          v49 = 0u;
          v12 = v35;
          v13 = [v12 countByEnumeratingWithState:&v46 objects:v53 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v47;
            while (2)
            {
              for (i = 0; i != v14; ++i)
              {
                if (*v47 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                v17 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:*(*(&v46 + 1) + 8 * i)];
                languageCode = [v11 languageCode];
                languageCode2 = [v17 languageCode];
                v20 = [languageCode isEqualToString:languageCode2];

                if (v20)
                {
                  [array addObject:v40];

                  goto LABEL_22;
                }
              }

              v14 = [v12 countByEnumeratingWithState:&v46 objects:v53 count:16];
              if (v14)
              {
                continue;
              }

              break;
            }
          }

LABEL_22:

          v6 = v37;
          array2 = v38;
        }
      }

      firstObject = [v6 firstObject];
      v21 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:?];
      array3 = [MEMORY[0x1E695DF70] array];
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v22 = array2;
      v23 = [v22 countByEnumeratingWithState:&v42 objects:v52 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v43;
        do
        {
          for (j = 0; j != v24; ++j)
          {
            if (*v43 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v42 + 1) + 8 * j);
            v28 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v27];
            languageCode3 = [v28 languageCode];
            languageCode4 = [v21 languageCode];
            v31 = [languageCode3 isEqualToString:languageCode4];

            if (v31)
            {
              [array3 addObject:v27];
            }
          }

          v24 = [v22 countByEnumeratingWithState:&v42 objects:v52 count:16];
        }

        while (v24);
      }

      [v22 removeObjectsInArray:array3];
      v6 = v37;
      [v37 removeObjectAtIndex:0];

      array = v36;
      array2 = v38;
    }

    while ([v36 count] < 3);
  }

  [v34 releaseDictionariesExceptForLanguages:array];

  v32 = *MEMORY[0x1E69E9840];
}

void __79__NLLanguageRecognizer_Preferences__releaseDictionariesWithPreferredLanguages___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [_lexiconDictionary allKeys];
  [v1 addObjectsFromArray:v2];
}

+ (void)releaseDictionaries
{
  preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
  [self releaseDictionariesWithPreferredLanguages:preferredLanguages];
}

+ (id)_loadLexiconForLanguage:(id)language
{
  languageCopy = language;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__2;
  v25 = __Block_byref_object_dispose__2;
  v26 = 0;
  v4 = _lexiconDictionaryQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__NLLanguageRecognizer_Preferences___loadLexiconForLanguage___block_invoke;
  block[3] = &unk_1E7629B48;
  v20 = &v21;
  v5 = languageCopy;
  v19 = v5;
  dispatch_sync(v4, block);
  v6 = v22[5];
  if (!v6 || ([MEMORY[0x1E695DFB0] null], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "isEqual:", v7), v7, v8))
  {
    v9 = [[NLLexicon alloc] initWithLocalization:v5];
    v10 = v22[5];
    v22[5] = v9;
  }

  v11 = _lexiconDictionaryQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __61__NLLanguageRecognizer_Preferences___loadLexiconForLanguage___block_invoke_2;
  v15[3] = &unk_1E7629B48;
  v16 = v5;
  v17 = &v21;
  v12 = v5;
  dispatch_sync(v11, v15);
  v13 = v22[5];

  _Block_object_dispose(&v21, 8);

  return v13;
}

uint64_t __61__NLLanguageRecognizer_Preferences___loadLexiconForLanguage___block_invoke(uint64_t a1)
{
  v2 = [_lexiconDictionary objectForKey:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

void __61__NLLanguageRecognizer_Preferences___loadLexiconForLanguage___block_invoke_2(uint64_t a1)
{
  v2 = _lexiconDictionary;
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v3 = *(a1 + 32);
    v4 = _lexiconDictionary;

    [v4 setObject:? forKey:?];
  }

  else
  {
    v5 = [MEMORY[0x1E695DFB0] null];
    [v2 setObject:v5 forKey:*(a1 + 32)];
  }
}

+ (id)_lexiconForLanguage:(id)language waitUntilLoaded:(BOOL)loaded
{
  loadedCopy = loaded;
  languageCopy = language;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__2;
  v27 = __Block_byref_object_dispose__2;
  v28 = 0;
  if (_lexiconForLanguage_waitUntilLoaded__onceToken != -1)
  {
    +[NLLanguageRecognizer(Preferences) _lexiconForLanguage:waitUntilLoaded:];
  }

  v7 = _lexiconDictionaryQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__NLLanguageRecognizer_Preferences___lexiconForLanguage_waitUntilLoaded___block_invoke_2;
  block[3] = &unk_1E7629B48;
  v22 = &v23;
  v8 = languageCopy;
  v21 = v8;
  dispatch_sync(v7, block);
  v9 = v24[5];
  if (v9 || !loadedCopy)
  {
    if (v9)
    {
      null = [MEMORY[0x1E695DFB0] null];
      v13 = [v9 isEqual:null];

      if (!v13)
      {
        goto LABEL_11;
      }

      v11 = v24[5];
      v24[5] = 0;
    }

    else
    {
      v14 = _lexiconBackgroundLoadingQueue;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __73__NLLanguageRecognizer_Preferences___lexiconForLanguage_waitUntilLoaded___block_invoke_3;
      v17[3] = &unk_1E7629B70;
      selfCopy = self;
      v18 = v8;
      dispatch_async(v14, v17);
      v11 = v18;
    }
  }

  else
  {
    v10 = [self _loadLexiconForLanguage:v8];
    v11 = v24[5];
    v24[5] = v10;
  }

LABEL_11:
  v15 = v24[5];

  _Block_object_dispose(&v23, 8);

  return v15;
}

uint64_t __73__NLLanguageRecognizer_Preferences___lexiconForLanguage_waitUntilLoaded___block_invoke()
{
  v0 = dispatch_queue_create("com.apple.NaturalLanguage.LexiconDictionary", 0);
  v1 = _lexiconDictionaryQueue;
  _lexiconDictionaryQueue = v0;

  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v3 = dispatch_queue_create("com.apple.NaturalLanguage.LexiconBackgroundLoading", v2);
  v4 = _lexiconBackgroundLoadingQueue;
  _lexiconBackgroundLoadingQueue = v3;

  v5 = dispatch_queue_create("com.apple.NaturalLanguage.LexiconCheck", 0);
  v6 = _lexiconCheckQueue;
  _lexiconCheckQueue = v5;

  _lexiconDictionary = objc_alloc_init(MEMORY[0x1E695DF90]);

  return MEMORY[0x1EEE66BB8]();
}

void __73__NLLanguageRecognizer_Preferences___lexiconForLanguage_waitUntilLoaded___block_invoke_2(uint64_t a1)
{
  v2 = [_lexiconDictionary objectForKey:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v5 = _lexiconDictionary;
    v6 = [MEMORY[0x1E695DFB0] null];
    [v5 setObject:v6 forKey:*(a1 + 32)];
  }
}

void __73__NLLanguageRecognizer_Preferences___lexiconForLanguage_waitUntilLoaded___block_invoke_3(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 40) _loadLexiconForLanguage:*(a1 + 32)];

  objc_autoreleasePoolPop(v2);
}

+ (id)_filteredLexiconForLanguage:(id)language waitUntilLoaded:(BOOL)loaded
{
  loadedCopy = loaded;
  languageCopy = language;
  v5 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:languageCopy];
  languageCode = [v5 languageCode];
  v7 = [languageCode isEqualToString:@"zh"];

  languageCode2 = [v5 languageCode];
  v9 = [languageCode2 isEqualToString:@"ja"];

  languageCode3 = [v5 languageCode];
  v11 = [languageCode3 isEqualToString:@"ko"];

  languageCode4 = [v5 languageCode];
  v13 = [languageCode4 isEqualToString:@"ar"];

  languageCode5 = [v5 languageCode];
  v15 = [languageCode5 isEqualToString:@"el"];

  languageCode6 = [v5 languageCode];
  v17 = [languageCode6 isEqualToString:@"he"];

  languageCode7 = [v5 languageCode];
  v19 = [languageCode7 isEqualToString:@"th"];

  v20 = 0;
  if ((v7 & 1) == 0 && (v9 & 1) == 0 && (v11 & 1) == 0 && (v13 & 1) == 0 && (v15 & 1) == 0 && (v17 & 1) == 0 && (v19 & 1) == 0)
  {
    v20 = [self _lexiconForLanguage:languageCopy waitUntilLoaded:loadedCopy];
  }

  return v20;
}

+ (id)specialCharacterContent:(id)content
{
  v3 = specialCharacterContent__onceToken;
  contentCopy = content;
  if (v3 != -1)
  {
    +[NLLanguageRecognizer(Preferences) specialCharacterContent:];
  }

  v5 = [contentCopy componentsSeparatedByCharactersInSet:specialCharacterContent__unexpectedCharacterSet];

  v6 = [v5 componentsJoinedByString:&stru_1F10C6540];

  return v6;
}

void __61__NLLanguageRecognizer_Preferences__specialCharacterContent___block_invoke()
{
  v0 = [MEMORY[0x1E696AD48] characterSetWithRange:{0, 591}];
  [v0 addCharactersInRange:{768, 95}];
  [v0 addCharactersInRange:{0x2000, 105}];
  [v0 addCharactersInRange:{8352, 47}];
  [v0 invert];
  v1 = [MEMORY[0x1E696AB08] lowercaseLetterCharacterSet];
  [v0 formUnionWithCharacterSet:v1];

  v2 = specialCharacterContent__unexpectedCharacterSet;
  specialCharacterContent__unexpectedCharacterSet = v0;
}

+ (id)chineseCharacterContent:(id)content
{
  v3 = chineseCharacterContent__onceToken;
  contentCopy = content;
  if (v3 != -1)
  {
    +[NLLanguageRecognizer(Preferences) chineseCharacterContent:];
  }

  v5 = [contentCopy componentsSeparatedByCharactersInSet:chineseCharacterContent__unexpectedCharacterSet];

  v6 = [v5 componentsJoinedByString:&stru_1F10C6540];

  return v6;
}

void __61__NLLanguageRecognizer_Preferences__chineseCharacterContent___block_invoke()
{
  v2 = [MEMORY[0x1E696AD48] characterSetWithRange:{19968, 20992}];
  [v2 addCharactersInRange:{13312, 6592}];
  v0 = [v2 invertedSet];
  v1 = chineseCharacterContent__unexpectedCharacterSet;
  chineseCharacterContent__unexpectedCharacterSet = v0;
}

+ (id)japaneseCharacterContent:(id)content
{
  v3 = japaneseCharacterContent__onceToken;
  contentCopy = content;
  if (v3 != -1)
  {
    +[NLLanguageRecognizer(Preferences) japaneseCharacterContent:];
  }

  v5 = [contentCopy componentsSeparatedByCharactersInSet:japaneseCharacterContent__unexpectedCharacterSet];

  v6 = [v5 componentsJoinedByString:&stru_1F10C6540];

  return v6;
}

void __62__NLLanguageRecognizer_Preferences__japaneseCharacterContent___block_invoke()
{
  v2 = [MEMORY[0x1E696AD48] characterSetWithRange:{19968, 20992}];
  [v2 addCharactersInRange:{13312, 6592}];
  [v2 addCharactersInRange:{12352, 96}];
  [v2 addCharactersInRange:{12448, 96}];
  v0 = [v2 invertedSet];
  v1 = japaneseCharacterContent__unexpectedCharacterSet;
  japaneseCharacterContent__unexpectedCharacterSet = v0;
}

+ (id)koreanCharacterContent:(id)content
{
  v3 = koreanCharacterContent__onceToken;
  contentCopy = content;
  if (v3 != -1)
  {
    +[NLLanguageRecognizer(Preferences) koreanCharacterContent:];
  }

  v5 = [contentCopy componentsSeparatedByCharactersInSet:koreanCharacterContent__unexpectedCharacterSet];

  v6 = [v5 componentsJoinedByString:&stru_1F10C6540];

  return v6;
}

void __60__NLLanguageRecognizer_Preferences__koreanCharacterContent___block_invoke()
{
  v2 = [MEMORY[0x1E696AD48] characterSetWithRange:{4352, 256}];
  [v2 addCharactersInRange:{12592, 96}];
  [v2 addCharactersInRange:{43360, 32}];
  [v2 addCharactersInRange:{44032, 11264}];
  v0 = [v2 invertedSet];
  v1 = koreanCharacterContent__unexpectedCharacterSet;
  koreanCharacterContent__unexpectedCharacterSet = v0;
}

+ (id)arabicCharacterContent:(id)content
{
  v3 = arabicCharacterContent__onceToken;
  contentCopy = content;
  if (v3 != -1)
  {
    +[NLLanguageRecognizer(Preferences) arabicCharacterContent:];
  }

  v5 = [contentCopy componentsSeparatedByCharactersInSet:arabicCharacterContent__unexpectedCharacterSet];

  v6 = [v5 componentsJoinedByString:&stru_1F10C6540];

  return v6;
}

void __60__NLLanguageRecognizer_Preferences__arabicCharacterContent___block_invoke()
{
  v2 = [MEMORY[0x1E696AD48] characterSetWithRange:{1536, 256}];
  [v2 addCharactersInRange:{64336, 688}];
  [v2 addCharactersInRange:{65136, 144}];
  v0 = [v2 invertedSet];
  v1 = arabicCharacterContent__unexpectedCharacterSet;
  arabicCharacterContent__unexpectedCharacterSet = v0;
}

+ (id)greekCharacterContent:(id)content
{
  v3 = greekCharacterContent__onceToken;
  contentCopy = content;
  if (v3 != -1)
  {
    +[NLLanguageRecognizer(Preferences) greekCharacterContent:];
  }

  v5 = [contentCopy componentsSeparatedByCharactersInSet:greekCharacterContent__unexpectedCharacterSet];

  v6 = [v5 componentsJoinedByString:&stru_1F10C6540];

  return v6;
}

void __59__NLLanguageRecognizer_Preferences__greekCharacterContent___block_invoke()
{
  v2 = [MEMORY[0x1E696AD48] characterSetWithRange:{880, 144}];
  [v2 addCharactersInRange:{7936, 256}];
  v0 = [v2 invertedSet];
  v1 = greekCharacterContent__unexpectedCharacterSet;
  greekCharacterContent__unexpectedCharacterSet = v0;
}

+ (id)hebrewCharacterContent:(id)content
{
  v3 = hebrewCharacterContent__onceToken;
  contentCopy = content;
  if (v3 != -1)
  {
    +[NLLanguageRecognizer(Preferences) hebrewCharacterContent:];
  }

  v5 = [contentCopy componentsSeparatedByCharactersInSet:hebrewCharacterContent__unexpectedCharacterSet];

  v6 = [v5 componentsJoinedByString:&stru_1F10C6540];

  return v6;
}

void __60__NLLanguageRecognizer_Preferences__hebrewCharacterContent___block_invoke()
{
  v2 = [MEMORY[0x1E696AD48] characterSetWithRange:{1424, 112}];
  [v2 addCharactersInRange:{64256, 80}];
  v0 = [v2 invertedSet];
  v1 = hebrewCharacterContent__unexpectedCharacterSet;
  hebrewCharacterContent__unexpectedCharacterSet = v0;
}

+ (id)thaiCharacterContent:(id)content
{
  v3 = thaiCharacterContent__onceToken;
  contentCopy = content;
  if (v3 != -1)
  {
    +[NLLanguageRecognizer(Preferences) thaiCharacterContent:];
  }

  v5 = [contentCopy componentsSeparatedByCharactersInSet:thaiCharacterContent__unexpectedCharacterSet];

  v6 = [v5 componentsJoinedByString:&stru_1F10C6540];

  return v6;
}

void __58__NLLanguageRecognizer_Preferences__thaiCharacterContent___block_invoke()
{
  v2 = [MEMORY[0x1E696AB08] characterSetWithRange:{3584, 128}];
  v0 = [v2 invertedSet];
  v1 = thaiCharacterContent__unexpectedCharacterSet;
  thaiCharacterContent__unexpectedCharacterSet = v0;
}

+ (BOOL)_isWord:(id)word acceptableInLexicon:(id)lexicon
{
  v35 = *MEMORY[0x1E69E9840];
  wordCopy = word;
  lexiconCopy = lexicon;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  if (_isWord_acceptableInLexicon__onceToken != -1)
  {
    +[NLLanguageRecognizer(Preferences) _isWord:acceptableInLexicon:];
  }

  v6 = *(v31 + 24);
  if (lexiconCopy && (v31[3] & 1) == 0)
  {
    v7 = [[NLLexiconCursor alloc] initWithLexicon:lexiconCopy string:wordCopy];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __65__NLLanguageRecognizer_Preferences___isWord_acceptableInLexicon___block_invoke_2;
    v27[3] = &unk_1E7629B98;
    v28 = wordCopy;
    v29 = &v30;
    [(NLLexiconCursor *)v7 enumerateEntriesUsingBlock:v27];

    v6 = *(v31 + 24);
  }

  if (lexiconCopy && (v6 & 1) == 0)
  {
    v8 = [wordCopy componentsSeparatedByCharactersInSet:_isWord_acceptableInLexicon__separatorCharacterSet];
    if ([v8 count] >= 2)
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v23 objects:v34 count:16];
      if (v10)
      {
        v11 = *v24;
        while (2)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v24 != v11)
            {
              objc_enumerationMutation(v9);
            }

            v13 = *(*(&v23 + 1) + 8 * i);
            v19 = 0;
            v20 = &v19;
            v21 = 0x2020000000;
            v22 = 0;
            v14 = [[NLLexiconCursor alloc] initWithLexicon:lexiconCopy string:v13];
            v18[0] = MEMORY[0x1E69E9820];
            v18[1] = 3221225472;
            v18[2] = __65__NLLanguageRecognizer_Preferences___isWord_acceptableInLexicon___block_invoke_3;
            v18[3] = &unk_1E7629B98;
            v18[4] = v13;
            v18[5] = &v19;
            [(NLLexiconCursor *)v14 enumerateEntriesUsingBlock:v18];
            LOBYTE(v13) = *(v20 + 24);

            _Block_object_dispose(&v19, 8);
            if ((v13 & 1) == 0)
            {

              goto LABEL_19;
            }
          }

          v10 = [v9 countByEnumeratingWithState:&v23 objects:v34 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

      *(v31 + 24) = 1;
    }

LABEL_19:

    v6 = *(v31 + 24);
  }

  _Block_object_dispose(&v30, 8);

  v15 = *MEMORY[0x1E69E9840];
  return v6 & 1;
}

uint64_t __65__NLLanguageRecognizer_Preferences___isWord_acceptableInLexicon___block_invoke()
{
  _isWord_acceptableInLexicon__separatorCharacterSet = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"-._"];

  return MEMORY[0x1EEE66BB8]();
}

void __65__NLLanguageRecognizer_Preferences___isWord_acceptableInLexicon___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = *(a1 + 32);
  v6 = [a2 string];
  v7 = [v5 compare:v6 options:129];

  if (!v7)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }
}

void __65__NLLanguageRecognizer_Preferences___isWord_acceptableInLexicon___block_invoke_3(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = *(a1 + 32);
  v6 = [a2 string];
  v7 = [v5 compare:v6 options:129];

  if (!v7)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }
}

+ (BOOL)_isString:(id)string words:(id)words plausiblyInLanguage:(id)language increasedThreshold:(BOOL)threshold
{
  thresholdCopy = threshold;
  v75 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  wordsCopy = words;
  languageCopy = language;
  v53 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:?];
  languageCode = [v53 languageCode];
  v11 = [languageCode isEqualToString:@"zh"];

  languageCode2 = [v53 languageCode];
  v13 = [languageCode2 isEqualToString:@"ja"];

  languageCode3 = [v53 languageCode];
  v15 = [languageCode3 isEqualToString:@"ko"];

  languageCode4 = [v53 languageCode];
  v55 = [languageCode4 isEqualToString:@"ar"];

  languageCode5 = [v53 languageCode];
  v18 = [languageCode5 isEqualToString:@"el"];

  languageCode6 = [v53 languageCode];
  v20 = [languageCode6 isEqualToString:@"he"];

  languageCode7 = [v53 languageCode];
  v22 = [languageCode7 isEqualToString:@"th"];

  v23 = [self _filteredLexiconForLanguage:languageCopy];
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  obj = wordsCopy;
  v24 = [obj countByEnumeratingWithState:&v70 objects:v74 count:16];
  if (v24)
  {
    v60 = 0;
    v61 = 0;
    v59 = *v71;
    v58 = v11 ^ 1;
    v56 = v55 ^ 1;
    v57 = v15 ^ 1;
    v25 = v18 ^ 1;
    v26 = v20 ^ 1;
    v27 = v22 ^ 1;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v71 != v59)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v70 + 1) + 8 * i);
        v66 = 0;
        v67 = &v66;
        v68 = 0x2020000000;
        v69 = 0;
        v30 = [self specialCharacterContent:v29];
        if (v30 && [v29 isEqualToString:v30])
        {
          *(v67 + 24) = 1;
        }

        v31 = *(v67 + 24);
        if (((v23 != 0) & ~v31) != 0)
        {
          v32 = _lexiconCheckQueue;
          if (_lexiconCheckQueue)
          {
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __92__NLLanguageRecognizer_Preferences___isString_words_plausiblyInLanguage_increasedThreshold___block_invoke;
            block[3] = &unk_1E7629BC0;
            selfCopy = self;
            block[4] = v29;
            v63 = v23;
            v64 = &v66;
            dispatch_sync(v32, block);

            v31 = *(v67 + 24);
          }
        }

        if (((v31 | v58) & 1) == 0)
        {
          v33 = [self chineseCharacterContent:v29];
          if (v33 && [v29 isEqualToString:v33])
          {
            *(v67 + 24) = 1;
          }

          v31 = *(v67 + 24);
        }

        if (((v31 | v13 ^ 1) & 1) == 0)
        {
          v34 = [self japaneseCharacterContent:v29];
          if (v34 && [v29 isEqualToString:v34])
          {
            *(v67 + 24) = 1;
          }

          v31 = *(v67 + 24);
        }

        if (((v31 | v57) & 1) == 0)
        {
          v35 = [self koreanCharacterContent:v29];
          if (v35 && [v29 isEqualToString:v35])
          {
            *(v67 + 24) = 1;
          }

          v31 = *(v67 + 24);
        }

        if (((v31 | v56) & 1) == 0)
        {
          v36 = [self arabicCharacterContent:v29];
          if (v36 && [v29 isEqualToString:v36])
          {
            *(v67 + 24) = 1;
          }

          v31 = *(v67 + 24);
        }

        if (((v31 | v25) & 1) == 0)
        {
          v37 = [self greekCharacterContent:v29];
          if (v37 && [v29 isEqualToString:v37])
          {
            *(v67 + 24) = 1;
          }

          v31 = *(v67 + 24);
        }

        if (((v31 | v26) & 1) == 0)
        {
          v38 = [self hebrewCharacterContent:v29];
          if (v38 && [v29 isEqualToString:v38])
          {
            *(v67 + 24) = 1;
          }

          v31 = *(v67 + 24);
        }

        if (((v31 | v27) & 1) == 0)
        {
          v39 = [self thaiCharacterContent:v29];
          if (v39 && [v29 isEqualToString:v39])
          {
            *(v67 + 24) = 1;
          }

          LOBYTE(v31) = *(v67 + 24);
        }

        if (v31)
        {
          v60 += [v29 length];
        }

        else
        {
          v61 += [v29 length];
        }

        _Block_object_dispose(&v66, 8);
      }

      v24 = [obj countByEnumeratingWithState:&v70 objects:v74 count:16];
    }

    while (v24);
  }

  else
  {
    v60 = 0;
    v61 = 0;
  }

  v40 = v60 + v61;
  v41 = 2 * [stringCopy length] / 3uLL;
  v42 = 2 * v61;
  if (thresholdCopy)
  {
    v42 = 3 * v61;
  }

  v44 = v60 > v42 && v40 > v41;
  v45 = [stringCopy length] >> 1;
  v47 = v60 > 8 * v61 && v40 > v45;

  v48 = *MEMORY[0x1E69E9840];
  return v47 || v44;
}

uint64_t __92__NLLanguageRecognizer_Preferences___isString_words_plausiblyInLanguage_increasedThreshold___block_invoke(uint64_t a1)
{
  result = [*(a1 + 56) _isWord:*(a1 + 32) acceptableInLexicon:*(a1 + 40)];
  if (result)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  return result;
}

+ (id)_orderedCandidateLanguagesForCandidateLanguages:(id)languages preferredLanguages:(id)preferredLanguages
{
  v85 = *MEMORY[0x1E69E9840];
  languagesCopy = languages;
  preferredLanguagesCopy = preferredLanguages;
  array = [MEMORY[0x1E695DF70] array];
  v57 = languagesCopy;
  v7 = [MEMORY[0x1E695DF70] arrayWithArray:languagesCopy];
  v56 = preferredLanguagesCopy;
  v8 = [MEMORY[0x1E695DF70] arrayWithArray:preferredLanguagesCopy];
  v61 = v7;
  v58 = v8;
  if ([v8 count])
  {
    v9 = @"zh";
    while (1)
    {
      if (![v7 count])
      {
        goto LABEL_27;
      }

      v10 = [MEMORY[0x1E695DF58] mostPreferredLanguageOf:v7 withPreferredLanguages:v8 forUsage:2 options:0];
      if (v10 && ([array containsObject:v10] & 1) == 0)
      {
        [array addObject:v10];
      }

      v60 = v10;
      [v8 firstObject];
      v59 = v11 = 0x1E695D000uLL;
      v12 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:?];
      array2 = [MEMORY[0x1E695DF70] array];
      v79 = 0u;
      v80 = 0u;
      v81 = 0u;
      v82 = 0u;
      obj = v7;
      v71 = [obj countByEnumeratingWithState:&v79 objects:v84 count:16];
      if (v71)
      {
        break;
      }

LABEL_26:

      [obj removeObjectsInArray:array2];
      v8 = v58;
      [v58 removeObjectAtIndex:0];

      v7 = v61;
      if (![v58 count])
      {
        goto LABEL_27;
      }
    }

    v13 = *v80;
    v65 = *v80;
    v67 = v12;
LABEL_9:
    v14 = 0;
    while (1)
    {
      if (*v80 != v13)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v79 + 1) + 8 * v14);
      v16 = [*(v11 + 3928) localeWithLocaleIdentifier:v15];
      languageCode = [v16 languageCode];
      v73 = [languageCode isEqualToString:v9];

      languageCode2 = [v16 languageCode];
      languageCode3 = [v12 languageCode];
      v20 = [languageCode2 isEqualToString:languageCode3];

      if (!v20)
      {
        goto LABEL_24;
      }

      scriptCode = [v16 scriptCode];
      scriptCode2 = [v12 scriptCode];
      if (scriptCode == scriptCode2)
      {
        v25 = 1;
      }

      else
      {
        scriptCode3 = [v16 scriptCode];
        scriptCode4 = [v12 scriptCode];
        v25 = [scriptCode3 isEqualToString:scriptCode4];
      }

      countryCode = [v16 countryCode];
      countryCode2 = [v12 countryCode];
      if (countryCode == countryCode2)
      {
        v31 = 1;
      }

      else
      {
        countryCode3 = [v16 countryCode];
        [v12 countryCode];
        v30 = v29 = v9;
        v31 = [countryCode3 isEqualToString:v30];

        v9 = v29;
      }

      v11 = 0x1E695D000;

      if (v73)
      {
        break;
      }

      v13 = v65;
      v12 = v67;
      if (v25)
      {
        goto LABEL_23;
      }

LABEL_24:

      if (v71 == ++v14)
      {
        v71 = [obj countByEnumeratingWithState:&v79 objects:v84 count:16];
        if (!v71)
        {
          goto LABEL_26;
        }

        goto LABEL_9;
      }
    }

    v13 = v65;
    v12 = v67;
    if ((v25 & v31 & 1) == 0)
    {
      goto LABEL_24;
    }

LABEL_23:
    [array2 addObject:v15];
    goto LABEL_24;
  }

LABEL_27:
  v32 = 0x1E695D000uLL;
  if ([v7 count])
  {
    while (1)
    {
      firstObject = [v7 firstObject];
      if (([array containsObject:firstObject] & 1) == 0)
      {
        [array addObject:firstObject];
      }

      v34 = [*(v32 + 3928) localeWithLocaleIdentifier:firstObject];
      v64 = firstObject;
      v66 = [MEMORY[0x1E695DF70] arrayWithObject:firstObject];
      v75 = 0u;
      v76 = 0u;
      v77 = 0u;
      v78 = 0u;
      obja = v7;
      v74 = [obja countByEnumeratingWithState:&v75 objects:v83 count:16];
      if (v74)
      {
        break;
      }

LABEL_49:

      [obja removeObjectsInArray:v66];
      v7 = v61;
      if (![obja count])
      {
        goto LABEL_50;
      }
    }

    v72 = *v76;
    v68 = v34;
LABEL_32:
    v35 = 0;
    while (1)
    {
      if (*v76 != v72)
      {
        objc_enumerationMutation(obja);
      }

      v36 = *(*(&v75 + 1) + 8 * v35);
      v37 = [*(v32 + 3928) localeWithLocaleIdentifier:v36];
      languageCode4 = [v37 languageCode];
      v39 = [languageCode4 isEqualToString:@"zh"];

      languageCode5 = [v37 languageCode];
      languageCode6 = [v34 languageCode];
      v42 = [languageCode5 isEqualToString:languageCode6];

      if (!v42)
      {
        goto LABEL_47;
      }

      scriptCode5 = [v37 scriptCode];
      [v34 scriptCode];
      v45 = v44 = v34;
      if (scriptCode5 == v45)
      {
        v48 = 1;
      }

      else
      {
        scriptCode6 = [v37 scriptCode];
        scriptCode7 = [v44 scriptCode];
        v48 = [scriptCode6 isEqualToString:scriptCode7];
      }

      countryCode4 = [v37 countryCode];
      countryCode5 = [v44 countryCode];
      if (countryCode4 == countryCode5)
      {
        v53 = 1;
        v32 = 0x1E695D000;
      }

      else
      {
        countryCode6 = [v37 countryCode];
        countryCode7 = [v44 countryCode];
        v53 = [countryCode6 isEqualToString:countryCode7];

        v32 = 0x1E695D000;
      }

      if (v39)
      {
        break;
      }

      v34 = v68;
      if (v48)
      {
        goto LABEL_46;
      }

LABEL_47:

      if (v74 == ++v35)
      {
        v74 = [obja countByEnumeratingWithState:&v75 objects:v83 count:16];
        if (!v74)
        {
          goto LABEL_49;
        }

        goto LABEL_32;
      }
    }

    v34 = v68;
    if ((v48 & v53 & 1) == 0)
    {
      goto LABEL_47;
    }

LABEL_46:
    [v66 addObject:v36];
    goto LABEL_47;
  }

LABEL_50:

  v54 = *MEMORY[0x1E69E9840];

  return array;
}

+ (BOOL)_candidate:(id)_candidate matchesDominantLanguage:(id)language
{
  v16[1] = *MEMORY[0x1E69E9840];
  _candidateCopy = _candidate;
  languageCopy = language;
  v7 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:_candidateCopy];
  languageCode = [v7 languageCode];
  languageIdentifier = [v7 languageIdentifier];
  v10 = [_candidateCopy isEqualToString:languageCopy];
  if (!v10 && languageCode)
  {
    v10 = [languageCode isEqualToString:languageCopy];
  }

  if ((v10 & 1) == 0 && languageIdentifier)
  {
    v10 = [languageIdentifier isEqualToString:languageCopy];
  }

  if (!v10 && languageCode && [languageCode isEqualToString:@"zh"])
  {
    v11 = MEMORY[0x1E695DF58];
    v16[0] = _candidateCopy;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    v13 = [v11 mostPreferredLanguageOf:&unk_1F10D1400 withPreferredLanguages:v12 forUsage:2 options:0];

    if (v13)
    {
      LOBYTE(v10) = [v13 isEqualToString:languageCopy];
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (id)mostAppropriateLanguageForString:(id)string candidateLanguages:(id)languages preferredLanguages:(id)preferredLanguages
{
  v70[1] = *MEMORY[0x1E69E9840];
  stringCopy = string;
  languagesCopy = languages;
  preferredLanguagesCopy = preferredLanguages;
  v9 = [self _orderedCandidateLanguagesForCandidateLanguages:languagesCopy preferredLanguages:?];
  v39 = objc_alloc_init(NLLanguageRecognizer);
  v38 = objc_alloc_init(NLCFROLanguageRecognizer);
  array = [MEMORY[0x1E695DF70] array];
  v11 = [NLTagger alloc];
  v70[0] = @"TokenType";
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:1];
  v37 = [(NLTagger *)v11 initWithTagSchemes:v12];

  v66[0] = 0;
  v66[1] = v66;
  v66[2] = 0x3010000000;
  v66[3] = "";
  v67 = xmmword_19D4E9310;
  [(NLTagger *)v37 setString:stringCopy];
  v13 = [stringCopy length];
  v62[0] = MEMORY[0x1E69E9820];
  v62[1] = 3221225472;
  v62[2] = __108__NLLanguageRecognizer_Preferences__mostAppropriateLanguageForString_candidateLanguages_preferredLanguages___block_invoke;
  v62[3] = &unk_1E7629BE8;
  v46 = array;
  v63 = v46;
  v65 = v66;
  v43 = stringCopy;
  v64 = v43;
  [(NLTagger *)v37 enumerateTagsInRange:0 unit:v13 scheme:0 options:@"TokenType" usingBlock:38, v62];
  [(NLTagger *)v37 setString:&stru_1F10C6540];
  [(NLLanguageRecognizer *)v39 processString:v43];
  [(NLCFROLanguageRecognizer *)v38 processString:v43];
  dominantLanguage = [(NLLanguageRecognizer *)v39 dominantLanguage];
  v40 = [(NLLanguageRecognizer *)v39 languageHypothesesWithMaximum:3];
  dominantLanguage2 = [(NLCFROLanguageRecognizer *)v38 dominantLanguage];
  if (dominantLanguage)
  {
    v48 = [&unk_1F10D1418 containsObject:dominantLanguage];
  }

  else
  {
    v48 = 0;
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = v9;
  v15 = [obj countByEnumeratingWithState:&v58 objects:v69 count:16];
  v47 = dominantLanguage;
  if (v15)
  {
    v44 = v15;
    v45 = *v59;
    while (2)
    {
      for (i = 0; i != v44; ++i)
      {
        if (*v59 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v58 + 1) + 8 * i);
        v17 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v16];
        languageCode = [v17 languageCode];
        v53 = v17;
        languageCode2 = [v17 languageCode];
        v50 = [languageCode2 isEqualToString:@"zh"];

        languageCode3 = [v17 languageCode];
        v49 = [languageCode3 isEqualToString:@"ja"];

        v20 = [self _candidate:v16 matchesDominantLanguage:v47];
        if (((v20 | v48) & 1) == 0)
        {
          LOBYTE(v20) = [self _candidate:v16 matchesDominantLanguage:dominantLanguage2];
        }

        if ((v20 & 1) == 0 && languageCode)
        {
          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          v21 = v40;
          LOBYTE(v20) = 0;
          v22 = [v21 countByEnumeratingWithState:&v54 objects:v68 count:16];
          if (v22)
          {
            v23 = *v55;
            do
            {
              for (j = 0; j != v22; ++j)
              {
                if (*v55 != v23)
                {
                  objc_enumerationMutation(v21);
                }

                v25 = *(*(&v54 + 1) + 8 * j);
                v26 = [v21 objectForKey:v25];
                v27 = [self _candidate:v16 matchesDominantLanguage:v25];
                if (v26)
                {
                  v28 = v27;
                }

                else
                {
                  v28 = 0;
                }

                if (v28 == 1)
                {
                  [v26 floatValue];
                  if (v29 > 0.1)
                  {
                    LOBYTE(v20) = 1;
                  }
                }
              }

              v22 = [v21 countByEnumeratingWithState:&v54 objects:v68 count:16];
            }

            while (v22);
          }
        }

        if (((v50 | v49) & 1) == 0)
        {
          if ((([v46 count] > 3) & v20) != 0)
          {
            goto LABEL_34;
          }

          LOBYTE(v20) = [self _isString:v43 words:v46 plausiblyInLanguage:v16 increasedThreshold:v48];
        }

        if (v20)
        {
LABEL_34:
          v30 = v16;

          goto LABEL_35;
        }
      }

      v44 = [obj countByEnumeratingWithState:&v58 objects:v69 count:16];
      if (v44)
      {
        continue;
      }

      break;
    }
  }

  v30 = 0;
LABEL_35:

  v31 = v64;
  v32 = v30;

  _Block_object_dispose(v66, 8);
  v33 = *MEMORY[0x1E69E9840];

  return v32;
}

void __108__NLLanguageRecognizer_Preferences__mostAppropriateLanguageForString_candidateLanguages_preferredLanguages___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ([*(a1 + 32) count] && *(*(*(a1 + 48) + 8) + 40) + *(*(*(a1 + 48) + 8) + 32) + 1 == a3 && objc_msgSend(*(a1 + 40), "characterAtIndex:") == 45)
  {
    *(*(*(a1 + 48) + 8) + 40) = a3 + a4 - *(*(*(a1 + 48) + 8) + 32);
    [*(a1 + 32) removeObjectAtIndex:{objc_msgSend(*(a1 + 32), "count") - 1}];
    v7 = *(a1 + 32);
    v11 = [*(a1 + 40) substringWithRange:{*(*(*(a1 + 48) + 8) + 32), *(*(*(a1 + 48) + 8) + 40)}];
    [v7 addObject:v11];
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) substringWithRange:{a3, a4}];
    [v8 addObject:v9];

    v10 = *(*(a1 + 48) + 8);
    *(v10 + 32) = a3;
    *(v10 + 40) = a4;
  }
}

@end