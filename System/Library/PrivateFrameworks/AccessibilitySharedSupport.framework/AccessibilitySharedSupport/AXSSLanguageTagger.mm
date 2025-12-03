@interface AXSSLanguageTagger
+ ($1230CF39250A084FEEB876D19862D23B)_createLanguageHintsEvenlyDistributedWithProbability:(float)probability excludingHints:(id)hints;
+ ($1230CF39250A084FEEB876D19862D23B)_createLanguageHintsForContent:(id)content;
+ ($1230CF39250A084FEEB876D19862D23B)_createLanguageHintsForContent:(id)content probInSystemLanguage:(float)language;
+ (BOOL)_isNewline:(id)newline;
+ (BOOL)isSupportedLanguage:(id)language;
+ (_NSRange)_extendRange:(_NSRange)range forContent:(id)content withRange:(_NSRange)withRange;
+ (_NSRange)_manuallyProcessContent:(id)content tokenRange:(_NSRange)range currentRange:(_NSRange)currentRange;
+ (float)_systemLanguageProbabilityForContent:(id)content;
+ (id)_dialectWithHighestProbability:(id *)probability;
+ (id)_languageTagForDateIfNecessary:(id)necessary;
+ (id)_overrideLanguageDetection:(id)detection;
+ (id)_secondaryDialects:(id *)dialects;
+ (id)langCodeForlangId:(int)id;
+ (id)languageTagsForContent:(id)content;
+ (id)markupLanguageTagForAttributedString:(id)string;
+ (id)primaryLanguageForContent:(id)content;
+ (id)primaryLanguageForContent:(id)content hints:(id *)hints;
+ (id)primaryLanguageWithHigherProbInDefaultLanguage:(id)language;
+ (id)systemLocale;
+ (int)langIDforLangCode:(id)code;
+ (void)_hypothesesForContent:(id)content withHints:(id *)hints guesses:(id *)guesses;
+ (void)_taggerForContent:(id)content tagScheme:(id)scheme;
+ (void)initialize;
@end

@implementation AXSSLanguageTagger

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    _nlLanguageIdentifier = NLLanguageIdentifierCreate();
    _nlLanguageIdentifierLock = objc_alloc_init(MEMORY[0x1E696AD10]);

    MEMORY[0x1EEE66BB8]();
  }
}

+ (id)systemLocale
{
  v2 = _systemLocale;
  if (!_systemLocale)
  {
    v3 = objc_alloc_init(AXSSSystemLocale);
    v4 = _systemLocale;
    _systemLocale = v3;

    v2 = _systemLocale;
  }

  return v2;
}

+ (id)languageTagsForContent:(id)content
{
  contentCopy = content;
  v5 = objc_opt_new();
  v6 = [self _scriptTaggerForContent:contentCopy];
  v7 = 0;
  if ([contentCopy length] && v6)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3010000000;
    v22 = 0;
    v23 = 0;
    v21 = &unk_1C0F7E67E;
    v16[0] = 0;
    v16[1] = v16;
    v16[2] = 0x3032000000;
    v16[3] = __Block_byref_object_copy__6;
    v16[4] = __Block_byref_object_dispose__6;
    v17 = 0;
    v14[0] = 0;
    v14[1] = v14;
    v14[2] = 0x2020000000;
    v15 = 0;
    [contentCopy length];
    v8 = contentCopy;
    v13 = v8;
    v9 = v5;
    NLTaggerEnumerateTokens();
    v10 = v19[4];
    v11 = v19[5];
    if (v11 + v10 == [v8 length])
    {
      [self _tagRange:v19[4] document:v19[5] tags:v8 createdFromNewline:{v9, 1}];
    }

    v7 = v9;

    _Block_object_dispose(v14, 8);
    _Block_object_dispose(v16, 8);

    _Block_object_dispose(&v18, 8);
  }

  return v7;
}

void __45__AXSSLanguageTagger_languageTagsForContent___block_invoke(uint64_t a1, NSUInteger *a2)
{
  v4 = *a2;
  v3 = a2[1];
  v18 = [*(a1 + 32) substringWithRange:{*a2, v3}];
  v5 = *(a1 + 72);
  v6 = *MEMORY[0x1E6998268];
  v7 = NLTaggerCopyTagForCurrentToken();
  v8 = *(*(a1 + 48) + 8);
  v10 = *(v8 + 40);
  v9 = (v8 + 40);
  if (!v10)
  {
    objc_storeStrong(v9, v7);
  }

  v11 = [*(a1 + 80) _isNewline:v18];
  if (v7)
  {
    v12 = v11;
    if ([*(*(*(a1 + 48) + 8) + 40) isEqualToString:v7])
    {
      v20.location = v4;
      v20.length = v3;
      *(*(*(a1 + 56) + 8) + 32) = NSUnionRange(*(*(*(a1 + 56) + 8) + 32), v20);
      if (v12)
      {
        [*(a1 + 80) _tagRange:*(*(*(a1 + 56) + 8) + 32) document:*(*(*(a1 + 56) + 8) + 40) tags:*(a1 + 32) createdFromNewline:{*(a1 + 40), 1}];
        *(*(*(a1 + 64) + 8) + 24) = 1;
      }
    }

    else
    {
      if (v12)
      {
        v21.location = v4;
        v21.length = v3;
        *(*(*(a1 + 56) + 8) + 32) = NSUnionRange(*(*(*(a1 + 56) + 8) + 32), v21);
      }

      v16 = *(*(a1 + 56) + 8);
      v17 = *(v16 + 40);
      if (v17)
      {
        [*(a1 + 80) _tagRange:*(v16 + 32) document:v17 tags:*(a1 + 32) createdFromNewline:{*(a1 + 40), v12}];
        v16 = *(*(a1 + 56) + 8);
      }

      *(v16 + 32) = v4;
      *(v16 + 40) = v3;
    }

    if ([v7 length])
    {
      objc_storeStrong((*(*(a1 + 48) + 8) + 40), v7);
    }
  }

  else
  {
    v13 = [*(a1 + 80) _manuallyProcessContent:*(a1 + 32) tokenRange:v4 currentRange:{v3, *(*(*(a1 + 56) + 8) + 32), *(*(*(a1 + 56) + 8) + 40)}];
    v14 = *(*(a1 + 56) + 8);
    *(v14 + 32) = v13;
    *(v14 + 40) = v15;
  }
}

+ (id)primaryLanguageForContent:(id)content hints:(id *)hints
{
  v16[3] = *MEMORY[0x1E69E9840];
  contentCopy = content;
  if ([contentCopy length])
  {
    memset(v16, 0, 24);
    [self _hypothesesForContent:contentCopy withHints:hints guesses:v16];
    v7 = +[AXSSLanguageManager shared];
    dialectForSystemLanguage = [v7 dialectForSystemLanguage];

    LODWORD(v9) = HIDWORD(v16[0]);
    if (*(v16 + 1) <= 0.8)
    {
      v10 = [self combineLanguageProbability:v16 primaryLanguageID:4 secondaryLanguageID:5 dialectMap:{dialectForSystemLanguage, v9}];

      v12 = [self combineLanguageProbability:v16 primaryLanguageID:2 secondaryLanguageID:34 dialectMap:v10];
    }

    else
    {
      v10 = +[AXSSLanguageManager shared];
      v11 = [self langCodeForlangId:LODWORD(v16[0])];
      v12 = [v10 dialectForLanguageID:v11];
    }

    specificLanguageID = [v12 specificLanguageID];
  }

  else
  {
    specificLanguageID = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return specificLanguageID;
}

+ (id)primaryLanguageForContent:(id)content
{
  contentCopy = content;
  v5 = [self _createLanguageHintsForContent:contentCopy];
  v6 = [self primaryLanguageForContent:contentCopy hints:v5];

  if (v5)
  {
    free(v5);
  }

  return v6;
}

+ (id)primaryLanguageWithHigherProbInDefaultLanguage:(id)language
{
  languageCopy = language;
  v5 = [self _createLanguageHintWithHighProbInDefault:languageCopy];
  v6 = [self primaryLanguageForContent:languageCopy hints:v5];

  if (v5)
  {
    free(v5);
  }

  return v6;
}

+ (id)markupLanguageTagForAttributedString:(id)string
{
  v26 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v5 = [objc_alloc(MEMORY[0x1E696AD40]) initWithAttributedString:stringCopy];
  string = [stringCopy string];
  v7 = [self languageTagsForContent:string];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        dialect = [v13 dialect];
        specificLanguageID = [dialect specificLanguageID];

        if (specificLanguageID)
        {
          taggedRange = [v13 taggedRange];
          [v5 addAttribute:@"AXLanguage" value:specificLanguageID range:{taggedRange, v17}];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  v18 = [v5 copy];
  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

+ (void)_taggerForContent:(id)content tagScheme:(id)scheme
{
  v11[1] = *MEMORY[0x1E69E9840];
  v11[0] = scheme;
  v5 = MEMORY[0x1E695DEC8];
  schemeCopy = scheme;
  contentCopy = content;
  [v5 arrayWithObjects:v11 count:1];

  v8 = NLTaggerCreate();
  NLTaggerSetString();

  result = CFAutorelease(v8);
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)_languageTagForDateIfNecessary:(id)necessary
{
  v28 = *MEMORY[0x1E69E9840];
  necessaryCopy = necessary;
  v4 = [MEMORY[0x1E696AB60] dataDetectorWithTypes:8 error:0];
  v5 = [necessaryCopy length];
  v7 = 0;
  if ([v4 rangeOfFirstMatchInString:necessaryCopy options:0 range:{0, v5}])
  {
    v8 = 0;
  }

  else
  {
    v8 = v6 == v5;
  }

  if (v8)
  {
    array = [MEMORY[0x1E695DF70] array];
    v10 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v11 = +[AXSSLanguageManager shared];
    dialectForSystemLanguage = [v11 dialectForSystemLanguage];

    v13 = MEMORY[0x1E695DF58];
    specificLanguageID = [dialectForSystemLanguage specificLanguageID];
    v15 = [v13 localeWithLocaleIdentifier:specificLanguageID];
    [v10 setLocale:v15];

    shortMonthSymbols = [v10 shortMonthSymbols];
    [array addObjectsFromArray:shortMonthSymbols];

    shortWeekdaySymbols = [v10 shortWeekdaySymbols];
    [array addObjectsFromArray:shortWeekdaySymbols];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v18 = array;
    v7 = [v18 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v7)
    {
      v19 = *v24;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v24 != v19)
          {
            objc_enumerationMutation(v18);
          }

          if ([necessaryCopy containsString:{*(*(&v23 + 1) + 8 * i), v23}])
          {
            v7 = dialectForSystemLanguage;
            goto LABEL_16;
          }
        }

        v7 = [v18 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:
  }

  v21 = *MEMORY[0x1E69E9840];

  return v7;
}

+ ($1230CF39250A084FEEB876D19862D23B)_createLanguageHintsForContent:(id)content
{
  contentCopy = content;
  [self _systemLanguageProbabilityForContent:contentCopy];
  v5 = [self _createLanguageHintsForContent:contentCopy probInSystemLanguage:?];

  return v5;
}

+ ($1230CF39250A084FEEB876D19862D23B)_createLanguageHintsForContent:(id)content probInSystemLanguage:(float)language
{
  systemLocale = [self systemLocale];
  preferredLanguages = [systemLocale preferredLanguages];

  v8 = [preferredLanguages count];
  v9 = v8;
  if (v8 >= 3)
  {
    v10 = 3;
  }

  else
  {
    v10 = v8;
  }

  v11 = objc_opt_new();
  if (v9)
  {
    v13 = 0;
    v14 = ((v10 + v10 * v10) >> 1);
    do
    {
      *&v12 = (v10 * language) / v14;
      v15 = [MEMORY[0x1E696AD98] numberWithFloat:v12];
      v16 = MEMORY[0x1E696AD98];
      v17 = [preferredLanguages objectAtIndexedSubscript:v13];
      v18 = [v16 numberWithUnsignedInt:{objc_msgSend(self, "langIDforLangCode:", v17)}];
      [v11 setObject:v15 forKeyedSubscript:v18];

      ++v13;
      --v10;
    }

    while (v10);
  }

  *&v12 = 1.0 - language;
  v19 = [self _createLanguageHintsEvenlyDistributedWithProbability:v11 excludingHints:v12];

  return v19;
}

+ (float)_systemLanguageProbabilityForContent:(id)content
{
  contentCopy = content;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  [self _tokenTaggerForContent:contentCopy];
  [contentCopy length];
  NLTaggerEnumerateTokens();
  v5 = v10[3];
  if (v5 > 39)
  {
    v6 = 0.600000024;
  }

  else
  {
    v6 = ((v5 / -100.0) + 1.0);
  }

  if (v6 > 0.95)
  {
    v6 = 0.95;
  }

  v7 = v6;
  _Block_object_dispose(&v9, 8);

  return v7;
}

uint64_t __59__AXSSLanguageTagger__systemLanguageProbabilityForContent___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = *(a1 + 40);
  v6 = *MEMORY[0x1E6998270];
  result = NLTaggerCopyTagForCurrentToken();
  if (result == *MEMORY[0x1E69980B0] && ++*(*(*(a1 + 32) + 8) + 24) >= 41)
  {
    *a3 = 1;
  }

  return result;
}

+ (void)_hypothesesForContent:(id)content withHints:(id *)hints guesses:(id *)guesses
{
  v6 = _nlLanguageIdentifierLock;
  contentCopy = content;
  [v6 lock];
  NLLanguageIdentifierReset();
  [contentCopy length];
  NLLanguageIdentifierConsumeString();

  _allLangIDs = [self _allLangIDs];
  [_allLangIDs count];
  NLLanguageIdentifierSetLanguageHints();

  NLLanguageIdentifierGetTopHypotheses();
  v9 = _nlLanguageIdentifierLock;

  [v9 unlock];
}

+ (id)_dialectWithHighestProbability:(id *)probability
{
  v3 = [self langCodeForlangId:probability->var0];
  if (v3)
  {
    v4 = +[AXSSLanguageManager shared];
    v5 = [v4 dialectForLanguageID:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)_secondaryDialects:(id *)dialects
{
  v24 = *MEMORY[0x1E69E9840];
  orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
  for (i = 1; i != 3; ++i)
  {
    v7 = &dialects[i];
    if (v7->var0 < 2u)
    {
      break;
    }

    if (v7->var1 > 0.2)
    {
      v8 = [self langCodeForlangId:?];
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      systemLocale = [self systemLocale];
      preferredLanguages = [systemLocale preferredLanguages];

      v11 = [preferredLanguages countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v20;
        while (2)
        {
          for (j = 0; j != v12; ++j)
          {
            if (*v20 != v13)
            {
              objc_enumerationMutation(preferredLanguages);
            }

            if ([*(*(&v19 + 1) + 8 * j) hasPrefix:v8])
            {
              v15 = +[AXSSLanguageManager shared];
              v16 = [v15 dialectForLanguageID:v8];

              if (v16)
              {
                [orderedSet addObject:v16];
              }

              goto LABEL_16;
            }
          }

          v12 = [preferredLanguages countByEnumeratingWithState:&v19 objects:v23 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

LABEL_16:
    }
  }

  v17 = *MEMORY[0x1E69E9840];

  return orderedSet;
}

+ (id)_overrideLanguageDetection:(id)detection
{
  detectionCopy = detection;
  v4 = +[AXSSLanguageManager shared];
  dialectForSystemLanguage = [v4 dialectForSystemLanguage];
  specificLanguageID = [dialectForSystemLanguage specificLanguageID];

  if ([detectionCopy hasPrefix:@"zh"] && (objc_msgSend(specificLanguageID, "hasPrefix:", @"ja") & 1) != 0 || objc_msgSend(detectionCopy, "hasPrefix:", @"ja") && objc_msgSend(specificLanguageID, "hasPrefix:", @"zh"))
  {
    v7 = +[AXSSLanguageManager shared];
    dialectForSystemLanguage2 = [v7 dialectForSystemLanguage];
    specificLanguageID2 = [dialectForSystemLanguage2 specificLanguageID];
  }

  else
  {
    if (([specificLanguageID hasPrefix:@"zh"] & 1) == 0 && (objc_msgSend(specificLanguageID, "hasPrefix:", @"ja") & 1) == 0 && !objc_msgSend(specificLanguageID, "hasPrefix:", @"ko"))
    {
      goto LABEL_12;
    }

    v10 = +[AXSSLanguageManager shared];
    dialectForSystemLanguage3 = [v10 dialectForSystemLanguage];
    languageMap = [dialectForSystemLanguage3 languageMap];
    generalLanguageID = [languageMap generalLanguageID];
    v14 = [detectionCopy hasPrefix:generalLanguageID];

    if (v14)
    {
      goto LABEL_12;
    }

    v15 = +[AXSSLanguageManager shared];
    v16 = [v15 dialectForLanguageID:detectionCopy];
    languageMap2 = [v16 languageMap];
    isWestern = [languageMap2 isWestern];

    if (isWestern)
    {
      v19 = specificLanguageID;
    }

    else
    {
LABEL_12:
      v19 = detectionCopy;
    }

    specificLanguageID2 = v19;
  }

  return specificLanguageID2;
}

+ (_NSRange)_manuallyProcessContent:(id)content tokenRange:(_NSRange)range currentRange:(_NSRange)currentRange
{
  v5 = [self _extendRange:currentRange.location forContent:currentRange.length withRange:{content, range.location, range.length}];
  result.length = v6;
  result.location = v5;
  return result;
}

+ (_NSRange)_extendRange:(_NSRange)range forContent:(id)content withRange:(_NSRange)withRange
{
  length = withRange.length;
  location = withRange.location;
  v7 = range.length;
  v8 = range.location;
  contentCopy = content;
  v10 = +[AXSSLanguageManager shared];
  if (length)
  {
    v11 = length;
    do
    {
      v12 = [contentCopy rangeOfComposedCharacterSequenceAtIndex:location];
      v14 = [contentCopy substringWithRange:{v12, v13}];
      v15 = [v14 characterAtIndex:0];
      if ([v14 length] == 1)
      {
        [v10 isCharacterCommon:v15];
      }

      ++location;
      --v11;
    }

    while (v11);
    v7 += length;
  }

  v16 = v8;
  v17 = v7;
  result.length = v17;
  result.location = v16;
  return result;
}

+ (BOOL)_isNewline:(id)newline
{
  newlineCopy = newline;
  if ([newlineCopy length] == 1)
  {
    newlineCharacterSet = [MEMORY[0x1E696AB08] newlineCharacterSet];
    v5 = [newlineCharacterSet characterIsMember:{objc_msgSend(newlineCopy, "characterAtIndex:", 0)}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ ($1230CF39250A084FEEB876D19862D23B)_createLanguageHintsEvenlyDistributedWithProbability:(float)probability excludingHints:(id)hints
{
  hintsCopy = hints;
  _allLangIDs = [self _allLangIDs];
  v8 = malloc_type_malloc(8 * [_allLangIDs count], 0x100004000313F17uLL);
  v9 = [_allLangIDs count];
  v10 = [hintsCopy count];
  v11 = 0.0;
  if (v9 != v10)
  {
    v11 = probability / (v9 - v10);
  }

  if ([_allLangIDs count])
  {
    v12 = 0;
    p_var1 = &v8->var1;
    do
    {
      v14 = [_allLangIDs objectAtIndexedSubscript:v12];
      *(p_var1 - 1) = [v14 intValue];

      v15 = [_allLangIDs objectAtIndexedSubscript:v12];
      v16 = [hintsCopy objectForKey:v15];

      if (v16)
      {
        v17 = [_allLangIDs objectAtIndexedSubscript:v12];
        v18 = [hintsCopy objectForKey:v17];
        [v18 floatValue];
        *p_var1 = v19;
      }

      else
      {
        *p_var1 = v11;
      }

      ++v12;
      p_var1 += 2;
    }

    while (v12 < [_allLangIDs count]);
  }

  return v8;
}

+ (id)langCodeForlangId:(int)id
{
  if ((id - 2) > 0x38)
  {
    return @"und";
  }

  else
  {
    return off_1E81358C8[id - 2];
  }
}

+ (int)langIDforLangCode:(id)code
{
  codeCopy = code;
  if ([codeCopy hasPrefix:@"ar"])
  {
    v4 = 2;
  }

  else if ([codeCopy hasPrefix:@"bg"])
  {
    v4 = 3;
  }

  else if ([codeCopy hasPrefix:@"zh-Hans"])
  {
    v4 = 4;
  }

  else if ([codeCopy hasPrefix:@"zh-Hant"])
  {
    v4 = 5;
  }

  else if ([codeCopy hasPrefix:@"zh-Hant-HK"])
  {
    v4 = 54;
  }

  else if ([codeCopy hasPrefix:@"hr"])
  {
    v4 = 6;
  }

  else if ([codeCopy hasPrefix:@"cs"])
  {
    v4 = 7;
  }

  else if ([codeCopy hasPrefix:@"da"])
  {
    v4 = 8;
  }

  else if ([codeCopy hasPrefix:@"nl"])
  {
    v4 = 9;
  }

  else if ([codeCopy hasPrefix:@"en"])
  {
    v4 = 10;
  }

  else if ([codeCopy hasPrefix:@"fi"])
  {
    v4 = 11;
  }

  else if ([codeCopy hasPrefix:@"fr"])
  {
    v4 = 12;
  }

  else if ([codeCopy hasPrefix:@"de"])
  {
    v4 = 13;
  }

  else if ([codeCopy hasPrefix:@"el"])
  {
    v4 = 14;
  }

  else if ([codeCopy hasPrefix:@"he"])
  {
    v4 = 15;
  }

  else if ([codeCopy hasPrefix:@"hi"])
  {
    v4 = 16;
  }

  else if ([codeCopy hasPrefix:@"hu"])
  {
    v4 = 17;
  }

  else if ([codeCopy hasPrefix:@"is"])
  {
    v4 = 18;
  }

  else if ([codeCopy hasPrefix:@"it"])
  {
    v4 = 19;
  }

  else if ([codeCopy hasPrefix:@"ja"])
  {
    v4 = 20;
  }

  else if ([codeCopy hasPrefix:@"ko"])
  {
    v4 = 21;
  }

  else if ([codeCopy hasPrefix:@"mr"])
  {
    v4 = 22;
  }

  else if ([codeCopy hasPrefix:@"nb"])
  {
    v4 = 23;
  }

  else if ([codeCopy hasPrefix:@"pl"])
  {
    v4 = 24;
  }

  else if ([codeCopy hasPrefix:@"pt"])
  {
    v4 = 25;
  }

  else if ([codeCopy hasPrefix:@"ro"])
  {
    v4 = 26;
  }

  else if ([codeCopy hasPrefix:@"ru"])
  {
    v4 = 27;
  }

  else if ([codeCopy hasPrefix:@"sk"])
  {
    v4 = 28;
  }

  else if ([codeCopy hasPrefix:@"es"])
  {
    v4 = 29;
  }

  else if ([codeCopy hasPrefix:@"sv"])
  {
    v4 = 30;
  }

  else if ([codeCopy hasPrefix:@"th"])
  {
    v4 = 31;
  }

  else if ([codeCopy hasPrefix:@"tr"])
  {
    v4 = 32;
  }

  else if ([codeCopy hasPrefix:@"uk"])
  {
    v4 = 33;
  }

  else if ([codeCopy hasPrefix:@"ur"])
  {
    v4 = 34;
  }

  else if ([codeCopy hasPrefix:@"hy"])
  {
    v4 = 35;
  }

  else if ([codeCopy hasPrefix:@"bn"])
  {
    v4 = 36;
  }

  else if ([codeCopy hasPrefix:@"pa"])
  {
    v4 = 37;
  }

  else if ([codeCopy hasPrefix:@"gu"])
  {
    v4 = 38;
  }

  else if ([codeCopy hasPrefix:@"or"])
  {
    v4 = 39;
  }

  else if ([codeCopy hasPrefix:@"ta"])
  {
    v4 = 40;
  }

  else if ([codeCopy hasPrefix:@"te"])
  {
    v4 = 41;
  }

  else if ([codeCopy hasPrefix:@"kn"])
  {
    v4 = 42;
  }

  else if ([codeCopy hasPrefix:@"ml"])
  {
    v4 = 43;
  }

  else if ([codeCopy hasPrefix:@"si"])
  {
    v4 = 44;
  }

  else if ([codeCopy hasPrefix:@"lo"])
  {
    v4 = 45;
  }

  else if ([codeCopy hasPrefix:@"bo"])
  {
    v4 = 46;
  }

  else if ([codeCopy hasPrefix:@"my"])
  {
    v4 = 47;
  }

  else if ([codeCopy hasPrefix:@"ka"])
  {
    v4 = 48;
  }

  else if ([codeCopy hasPrefix:@"am"])
  {
    v4 = 49;
  }

  else if ([codeCopy hasPrefix:@"chr"])
  {
    v4 = 50;
  }

  else if ([codeCopy hasPrefix:@"iu"])
  {
    v4 = 51;
  }

  else if ([codeCopy hasPrefix:@"km"])
  {
    v4 = 52;
  }

  else if ([codeCopy hasPrefix:@"mn"])
  {
    v4 = 53;
  }

  else if ([codeCopy hasPrefix:@"vi"])
  {
    v4 = 55;
  }

  else if ([codeCopy hasPrefix:@"fa"])
  {
    v4 = 56;
  }

  else if ([codeCopy hasPrefix:@"id"])
  {
    v4 = 57;
  }

  else if ([codeCopy hasPrefix:@"kk"])
  {
    v4 = 58;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

+ (BOOL)isSupportedLanguage:(id)language
{
  languageCopy = language;
  v5 = [AXSSLanguageTagger langIDforLangCode:languageCopy];
  _allLangIDs = [self _allLangIDs];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v5];
  v8 = [_allLangIDs containsObject:v7];

  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = [languageCopy hasPrefix:@"zh"];
  }

  return v9;
}

@end