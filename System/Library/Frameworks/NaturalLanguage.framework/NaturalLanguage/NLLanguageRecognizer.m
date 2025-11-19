@interface NLLanguageRecognizer
+ (BOOL)_candidate:(id)a3 matchesDominantLanguage:(id)a4;
+ (BOOL)_isString:(id)a3 words:(id)a4 plausiblyInLanguage:(id)a5 increasedThreshold:(BOOL)a6;
+ (BOOL)_isWord:(id)a3 acceptableInLexicon:(id)a4;
+ (NLLanguage)dominantLanguageForString:(NSString *)string;
+ (id)_filteredLexiconForLanguage:(id)a3 waitUntilLoaded:(BOOL)a4;
+ (id)_lexiconForLanguage:(id)a3 waitUntilLoaded:(BOOL)a4;
+ (id)_loadLexiconForLanguage:(id)a3;
+ (id)_orderedCandidateLanguagesForCandidateLanguages:(id)a3 preferredLanguages:(id)a4;
+ (id)arabicCharacterContent:(id)a3;
+ (id)chineseCharacterContent:(id)a3;
+ (id)greekCharacterContent:(id)a3;
+ (id)hebrewCharacterContent:(id)a3;
+ (id)japaneseCharacterContent:(id)a3;
+ (id)koreanCharacterContent:(id)a3;
+ (id)mostAppropriateLanguageForString:(id)a3 candidateLanguages:(id)a4 preferredLanguages:(id)a5;
+ (id)specialCharacterContent:(id)a3;
+ (id)thaiCharacterContent:(id)a3;
+ (void)releaseDictionaries;
+ (void)releaseDictionariesExceptForLanguages:(id)a3;
+ (void)releaseDictionariesWithPreferredLanguages:(id)a3;
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
  v5 = [MEMORY[0x1E695DF90] dictionary];
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
        [v5 setObject:v14 forKey:v13];
      }

      v12 += 2;
      --v11;
    }

    while (v11);
  }

  free(v8);
LABEL_15:

  return v5;
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
  v21 = [(NSDictionary *)v4 allKeys];
  v5 = [v21 count];
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
      v9 = [v21 objectAtIndex:v8];
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

+ (void)releaseDictionariesExceptForLanguages:(id)a3
{
  v3 = a3;
  v4 = v3;
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
    v8 = v3;
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

+ (void)releaseDictionariesWithPreferredLanguages:(id)a3
{
  v54 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = [MEMORY[0x1E695DF70] array];
  v35 = v3;
  v6 = [MEMORY[0x1E695DF70] arrayWithArray:v3];
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
    v51 = v5;
    dispatch_sync(v7, block);
  }

  if ([v4 count] <= 2)
  {
    v37 = v6;
    v38 = v5;
    v36 = v4;
    do
    {
      if (![v6 count] || !objc_msgSend(v5, "count"))
      {
        break;
      }

      v9 = [MEMORY[0x1E695DF58] mostPreferredLanguageOf:v5 withPreferredLanguages:v6 forUsage:2 options:0];
      v40 = v9;
      if (v9)
      {
        v10 = v9;
        if (([v4 containsObject:v9] & 1) == 0)
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
                v18 = [v11 languageCode];
                v19 = [v17 languageCode];
                v20 = [v18 isEqualToString:v19];

                if (v20)
                {
                  [v4 addObject:v40];

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
          v5 = v38;
        }
      }

      v39 = [v6 firstObject];
      v21 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:?];
      v41 = [MEMORY[0x1E695DF70] array];
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v22 = v5;
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
            v29 = [v28 languageCode];
            v30 = [v21 languageCode];
            v31 = [v29 isEqualToString:v30];

            if (v31)
            {
              [v41 addObject:v27];
            }
          }

          v24 = [v22 countByEnumeratingWithState:&v42 objects:v52 count:16];
        }

        while (v24);
      }

      [v22 removeObjectsInArray:v41];
      v6 = v37;
      [v37 removeObjectAtIndex:0];

      v4 = v36;
      v5 = v38;
    }

    while ([v36 count] < 3);
  }

  [v34 releaseDictionariesExceptForLanguages:v4];

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
  v3 = [MEMORY[0x1E695DF58] preferredLanguages];
  [a1 releaseDictionariesWithPreferredLanguages:v3];
}

+ (id)_loadLexiconForLanguage:(id)a3
{
  v3 = a3;
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
  v5 = v3;
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

+ (id)_lexiconForLanguage:(id)a3 waitUntilLoaded:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
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
  v8 = v6;
  v21 = v8;
  dispatch_sync(v7, block);
  v9 = v24[5];
  if (v9 || !v4)
  {
    if (v9)
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      v13 = [v9 isEqual:v12];

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
      v19 = a1;
      v18 = v8;
      dispatch_async(v14, v17);
      v11 = v18;
    }
  }

  else
  {
    v10 = [a1 _loadLexiconForLanguage:v8];
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

+ (id)_filteredLexiconForLanguage:(id)a3 waitUntilLoaded:(BOOL)a4
{
  v23 = a4;
  v4 = a3;
  v5 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v4];
  v6 = [v5 languageCode];
  v7 = [v6 isEqualToString:@"zh"];

  v8 = [v5 languageCode];
  v9 = [v8 isEqualToString:@"ja"];

  v10 = [v5 languageCode];
  v11 = [v10 isEqualToString:@"ko"];

  v12 = [v5 languageCode];
  v13 = [v12 isEqualToString:@"ar"];

  v14 = [v5 languageCode];
  v15 = [v14 isEqualToString:@"el"];

  v16 = [v5 languageCode];
  v17 = [v16 isEqualToString:@"he"];

  v18 = [v5 languageCode];
  v19 = [v18 isEqualToString:@"th"];

  v20 = 0;
  if ((v7 & 1) == 0 && (v9 & 1) == 0 && (v11 & 1) == 0 && (v13 & 1) == 0 && (v15 & 1) == 0 && (v17 & 1) == 0 && (v19 & 1) == 0)
  {
    v20 = [a1 _lexiconForLanguage:v4 waitUntilLoaded:v23];
  }

  return v20;
}

+ (id)specialCharacterContent:(id)a3
{
  v3 = specialCharacterContent__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    +[NLLanguageRecognizer(Preferences) specialCharacterContent:];
  }

  v5 = [v4 componentsSeparatedByCharactersInSet:specialCharacterContent__unexpectedCharacterSet];

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

+ (id)chineseCharacterContent:(id)a3
{
  v3 = chineseCharacterContent__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    +[NLLanguageRecognizer(Preferences) chineseCharacterContent:];
  }

  v5 = [v4 componentsSeparatedByCharactersInSet:chineseCharacterContent__unexpectedCharacterSet];

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

+ (id)japaneseCharacterContent:(id)a3
{
  v3 = japaneseCharacterContent__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    +[NLLanguageRecognizer(Preferences) japaneseCharacterContent:];
  }

  v5 = [v4 componentsSeparatedByCharactersInSet:japaneseCharacterContent__unexpectedCharacterSet];

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

+ (id)koreanCharacterContent:(id)a3
{
  v3 = koreanCharacterContent__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    +[NLLanguageRecognizer(Preferences) koreanCharacterContent:];
  }

  v5 = [v4 componentsSeparatedByCharactersInSet:koreanCharacterContent__unexpectedCharacterSet];

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

+ (id)arabicCharacterContent:(id)a3
{
  v3 = arabicCharacterContent__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    +[NLLanguageRecognizer(Preferences) arabicCharacterContent:];
  }

  v5 = [v4 componentsSeparatedByCharactersInSet:arabicCharacterContent__unexpectedCharacterSet];

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

+ (id)greekCharacterContent:(id)a3
{
  v3 = greekCharacterContent__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    +[NLLanguageRecognizer(Preferences) greekCharacterContent:];
  }

  v5 = [v4 componentsSeparatedByCharactersInSet:greekCharacterContent__unexpectedCharacterSet];

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

+ (id)hebrewCharacterContent:(id)a3
{
  v3 = hebrewCharacterContent__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    +[NLLanguageRecognizer(Preferences) hebrewCharacterContent:];
  }

  v5 = [v4 componentsSeparatedByCharactersInSet:hebrewCharacterContent__unexpectedCharacterSet];

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

+ (id)thaiCharacterContent:(id)a3
{
  v3 = thaiCharacterContent__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    +[NLLanguageRecognizer(Preferences) thaiCharacterContent:];
  }

  v5 = [v4 componentsSeparatedByCharactersInSet:thaiCharacterContent__unexpectedCharacterSet];

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

+ (BOOL)_isWord:(id)a3 acceptableInLexicon:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v17 = a3;
  v5 = a4;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  if (_isWord_acceptableInLexicon__onceToken != -1)
  {
    +[NLLanguageRecognizer(Preferences) _isWord:acceptableInLexicon:];
  }

  v6 = *(v31 + 24);
  if (v5 && (v31[3] & 1) == 0)
  {
    v7 = [[NLLexiconCursor alloc] initWithLexicon:v5 string:v17];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __65__NLLanguageRecognizer_Preferences___isWord_acceptableInLexicon___block_invoke_2;
    v27[3] = &unk_1E7629B98;
    v28 = v17;
    v29 = &v30;
    [(NLLexiconCursor *)v7 enumerateEntriesUsingBlock:v27];

    v6 = *(v31 + 24);
  }

  if (v5 && (v6 & 1) == 0)
  {
    v8 = [v17 componentsSeparatedByCharactersInSet:_isWord_acceptableInLexicon__separatorCharacterSet];
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
            v14 = [[NLLexiconCursor alloc] initWithLexicon:v5 string:v13];
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

+ (BOOL)_isString:(id)a3 words:(id)a4 plausiblyInLanguage:(id)a5 increasedThreshold:(BOOL)a6
{
  v50 = a6;
  v75 = *MEMORY[0x1E69E9840];
  v52 = a3;
  v9 = a4;
  v51 = a5;
  v53 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:?];
  v10 = [v53 languageCode];
  v11 = [v10 isEqualToString:@"zh"];

  v12 = [v53 languageCode];
  v13 = [v12 isEqualToString:@"ja"];

  v14 = [v53 languageCode];
  v15 = [v14 isEqualToString:@"ko"];

  v16 = [v53 languageCode];
  v55 = [v16 isEqualToString:@"ar"];

  v17 = [v53 languageCode];
  v18 = [v17 isEqualToString:@"el"];

  v19 = [v53 languageCode];
  v20 = [v19 isEqualToString:@"he"];

  v21 = [v53 languageCode];
  v22 = [v21 isEqualToString:@"th"];

  v23 = [a1 _filteredLexiconForLanguage:v51];
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  obj = v9;
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
        v30 = [a1 specialCharacterContent:v29];
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
            v65 = a1;
            block[4] = v29;
            v63 = v23;
            v64 = &v66;
            dispatch_sync(v32, block);

            v31 = *(v67 + 24);
          }
        }

        if (((v31 | v58) & 1) == 0)
        {
          v33 = [a1 chineseCharacterContent:v29];
          if (v33 && [v29 isEqualToString:v33])
          {
            *(v67 + 24) = 1;
          }

          v31 = *(v67 + 24);
        }

        if (((v31 | v13 ^ 1) & 1) == 0)
        {
          v34 = [a1 japaneseCharacterContent:v29];
          if (v34 && [v29 isEqualToString:v34])
          {
            *(v67 + 24) = 1;
          }

          v31 = *(v67 + 24);
        }

        if (((v31 | v57) & 1) == 0)
        {
          v35 = [a1 koreanCharacterContent:v29];
          if (v35 && [v29 isEqualToString:v35])
          {
            *(v67 + 24) = 1;
          }

          v31 = *(v67 + 24);
        }

        if (((v31 | v56) & 1) == 0)
        {
          v36 = [a1 arabicCharacterContent:v29];
          if (v36 && [v29 isEqualToString:v36])
          {
            *(v67 + 24) = 1;
          }

          v31 = *(v67 + 24);
        }

        if (((v31 | v25) & 1) == 0)
        {
          v37 = [a1 greekCharacterContent:v29];
          if (v37 && [v29 isEqualToString:v37])
          {
            *(v67 + 24) = 1;
          }

          v31 = *(v67 + 24);
        }

        if (((v31 | v26) & 1) == 0)
        {
          v38 = [a1 hebrewCharacterContent:v29];
          if (v38 && [v29 isEqualToString:v38])
          {
            *(v67 + 24) = 1;
          }

          v31 = *(v67 + 24);
        }

        if (((v31 | v27) & 1) == 0)
        {
          v39 = [a1 thaiCharacterContent:v29];
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
  v41 = 2 * [v52 length] / 3uLL;
  v42 = 2 * v61;
  if (v50)
  {
    v42 = 3 * v61;
  }

  v44 = v60 > v42 && v40 > v41;
  v45 = [v52 length] >> 1;
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

+ (id)_orderedCandidateLanguagesForCandidateLanguages:(id)a3 preferredLanguages:(id)a4
{
  v85 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v62 = [MEMORY[0x1E695DF70] array];
  v57 = v5;
  v7 = [MEMORY[0x1E695DF70] arrayWithArray:v5];
  v56 = v6;
  v8 = [MEMORY[0x1E695DF70] arrayWithArray:v6];
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
      if (v10 && ([v62 containsObject:v10] & 1) == 0)
      {
        [v62 addObject:v10];
      }

      v60 = v10;
      [v8 firstObject];
      v59 = v11 = 0x1E695D000uLL;
      v12 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:?];
      v63 = [MEMORY[0x1E695DF70] array];
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

      [obj removeObjectsInArray:v63];
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
      v17 = [v16 languageCode];
      v73 = [v17 isEqualToString:v9];

      v18 = [v16 languageCode];
      v19 = [v12 languageCode];
      v20 = [v18 isEqualToString:v19];

      if (!v20)
      {
        goto LABEL_24;
      }

      v21 = [v16 scriptCode];
      v22 = [v12 scriptCode];
      if (v21 == v22)
      {
        v25 = 1;
      }

      else
      {
        v23 = [v16 scriptCode];
        v24 = [v12 scriptCode];
        v25 = [v23 isEqualToString:v24];
      }

      v26 = [v16 countryCode];
      v27 = [v12 countryCode];
      if (v26 == v27)
      {
        v31 = 1;
      }

      else
      {
        v28 = [v16 countryCode];
        [v12 countryCode];
        v30 = v29 = v9;
        v31 = [v28 isEqualToString:v30];

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
    [v63 addObject:v15];
    goto LABEL_24;
  }

LABEL_27:
  v32 = 0x1E695D000uLL;
  if ([v7 count])
  {
    while (1)
    {
      v33 = [v7 firstObject];
      if (([v62 containsObject:v33] & 1) == 0)
      {
        [v62 addObject:v33];
      }

      v34 = [*(v32 + 3928) localeWithLocaleIdentifier:v33];
      v64 = v33;
      v66 = [MEMORY[0x1E695DF70] arrayWithObject:v33];
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
      v38 = [v37 languageCode];
      v39 = [v38 isEqualToString:@"zh"];

      v40 = [v37 languageCode];
      v41 = [v34 languageCode];
      v42 = [v40 isEqualToString:v41];

      if (!v42)
      {
        goto LABEL_47;
      }

      v43 = [v37 scriptCode];
      [v34 scriptCode];
      v45 = v44 = v34;
      if (v43 == v45)
      {
        v48 = 1;
      }

      else
      {
        v46 = [v37 scriptCode];
        v47 = [v44 scriptCode];
        v48 = [v46 isEqualToString:v47];
      }

      v49 = [v37 countryCode];
      v50 = [v44 countryCode];
      if (v49 == v50)
      {
        v53 = 1;
        v32 = 0x1E695D000;
      }

      else
      {
        v51 = [v37 countryCode];
        v52 = [v44 countryCode];
        v53 = [v51 isEqualToString:v52];

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

  return v62;
}

+ (BOOL)_candidate:(id)a3 matchesDominantLanguage:(id)a4
{
  v16[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v5];
  v8 = [v7 languageCode];
  v9 = [v7 languageIdentifier];
  v10 = [v5 isEqualToString:v6];
  if (!v10 && v8)
  {
    v10 = [v8 isEqualToString:v6];
  }

  if ((v10 & 1) == 0 && v9)
  {
    v10 = [v9 isEqualToString:v6];
  }

  if (!v10 && v8 && [v8 isEqualToString:@"zh"])
  {
    v11 = MEMORY[0x1E695DF58];
    v16[0] = v5;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    v13 = [v11 mostPreferredLanguageOf:&unk_1F10D1400 withPreferredLanguages:v12 forUsage:2 options:0];

    if (v13)
    {
      LOBYTE(v10) = [v13 isEqualToString:v6];
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (id)mostAppropriateLanguageForString:(id)a3 candidateLanguages:(id)a4 preferredLanguages:(id)a5
{
  v70[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v35 = a4;
  v36 = a5;
  v9 = [a1 _orderedCandidateLanguagesForCandidateLanguages:v35 preferredLanguages:?];
  v39 = objc_alloc_init(NLLanguageRecognizer);
  v38 = objc_alloc_init(NLCFROLanguageRecognizer);
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = [NLTagger alloc];
  v70[0] = @"TokenType";
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:1];
  v37 = [(NLTagger *)v11 initWithTagSchemes:v12];

  v66[0] = 0;
  v66[1] = v66;
  v66[2] = 0x3010000000;
  v66[3] = "";
  v67 = xmmword_19D4E9310;
  [(NLTagger *)v37 setString:v8];
  v13 = [v8 length];
  v62[0] = MEMORY[0x1E69E9820];
  v62[1] = 3221225472;
  v62[2] = __108__NLLanguageRecognizer_Preferences__mostAppropriateLanguageForString_candidateLanguages_preferredLanguages___block_invoke;
  v62[3] = &unk_1E7629BE8;
  v46 = v10;
  v63 = v46;
  v65 = v66;
  v43 = v8;
  v64 = v43;
  [(NLTagger *)v37 enumerateTagsInRange:0 unit:v13 scheme:0 options:@"TokenType" usingBlock:38, v62];
  [(NLTagger *)v37 setString:&stru_1F10C6540];
  [(NLLanguageRecognizer *)v39 processString:v43];
  [(NLCFROLanguageRecognizer *)v38 processString:v43];
  v14 = [(NLLanguageRecognizer *)v39 dominantLanguage];
  v40 = [(NLLanguageRecognizer *)v39 languageHypothesesWithMaximum:3];
  v41 = [(NLCFROLanguageRecognizer *)v38 dominantLanguage];
  if (v14)
  {
    v48 = [&unk_1F10D1418 containsObject:v14];
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
  v47 = v14;
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
        v51 = [v17 languageCode];
        v53 = v17;
        v18 = [v17 languageCode];
        v50 = [v18 isEqualToString:@"zh"];

        v19 = [v17 languageCode];
        v49 = [v19 isEqualToString:@"ja"];

        v20 = [a1 _candidate:v16 matchesDominantLanguage:v47];
        if (((v20 | v48) & 1) == 0)
        {
          LOBYTE(v20) = [a1 _candidate:v16 matchesDominantLanguage:v41];
        }

        if ((v20 & 1) == 0 && v51)
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
                v27 = [a1 _candidate:v16 matchesDominantLanguage:v25];
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

          LOBYTE(v20) = [a1 _isString:v43 words:v46 plausiblyInLanguage:v16 increasedThreshold:v48];
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