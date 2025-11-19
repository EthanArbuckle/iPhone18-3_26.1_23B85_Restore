@interface AXSSLanguageTagger
+ ($1230CF39250A084FEEB876D19862D23B)_createLanguageHintsEvenlyDistributedWithProbability:(float)a3 excludingHints:(id)a4;
+ ($1230CF39250A084FEEB876D19862D23B)_createLanguageHintsForContent:(id)a3;
+ ($1230CF39250A084FEEB876D19862D23B)_createLanguageHintsForContent:(id)a3 probInSystemLanguage:(float)a4;
+ (BOOL)_isNewline:(id)a3;
+ (BOOL)isSupportedLanguage:(id)a3;
+ (_NSRange)_extendRange:(_NSRange)a3 forContent:(id)a4 withRange:(_NSRange)a5;
+ (_NSRange)_manuallyProcessContent:(id)a3 tokenRange:(_NSRange)a4 currentRange:(_NSRange)a5;
+ (float)_systemLanguageProbabilityForContent:(id)a3;
+ (id)_dialectWithHighestProbability:(id *)a3;
+ (id)_languageTagForDateIfNecessary:(id)a3;
+ (id)_overrideLanguageDetection:(id)a3;
+ (id)_secondaryDialects:(id *)a3;
+ (id)langCodeForlangId:(int)a3;
+ (id)languageTagsForContent:(id)a3;
+ (id)markupLanguageTagForAttributedString:(id)a3;
+ (id)primaryLanguageForContent:(id)a3;
+ (id)primaryLanguageForContent:(id)a3 hints:(id *)a4;
+ (id)primaryLanguageWithHigherProbInDefaultLanguage:(id)a3;
+ (id)systemLocale;
+ (int)langIDforLangCode:(id)a3;
+ (void)_hypothesesForContent:(id)a3 withHints:(id *)a4 guesses:(id *)a5;
+ (void)_taggerForContent:(id)a3 tagScheme:(id)a4;
+ (void)initialize;
@end

@implementation AXSSLanguageTagger

+ (void)initialize
{
  if (objc_opt_class() == a1)
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

+ (id)languageTagsForContent:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [a1 _scriptTaggerForContent:v4];
  v7 = 0;
  if ([v4 length] && v6)
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
    [v4 length];
    v8 = v4;
    v13 = v8;
    v9 = v5;
    NLTaggerEnumerateTokens();
    v10 = v19[4];
    v11 = v19[5];
    if (v11 + v10 == [v8 length])
    {
      [a1 _tagRange:v19[4] document:v19[5] tags:v8 createdFromNewline:{v9, 1}];
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

+ (id)primaryLanguageForContent:(id)a3 hints:(id *)a4
{
  v16[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ([v6 length])
  {
    memset(v16, 0, 24);
    [a1 _hypothesesForContent:v6 withHints:a4 guesses:v16];
    v7 = +[AXSSLanguageManager shared];
    v8 = [v7 dialectForSystemLanguage];

    LODWORD(v9) = HIDWORD(v16[0]);
    if (*(v16 + 1) <= 0.8)
    {
      v10 = [a1 combineLanguageProbability:v16 primaryLanguageID:4 secondaryLanguageID:5 dialectMap:{v8, v9}];

      v12 = [a1 combineLanguageProbability:v16 primaryLanguageID:2 secondaryLanguageID:34 dialectMap:v10];
    }

    else
    {
      v10 = +[AXSSLanguageManager shared];
      v11 = [a1 langCodeForlangId:LODWORD(v16[0])];
      v12 = [v10 dialectForLanguageID:v11];
    }

    v13 = [v12 specificLanguageID];
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (id)primaryLanguageForContent:(id)a3
{
  v4 = a3;
  v5 = [a1 _createLanguageHintsForContent:v4];
  v6 = [a1 primaryLanguageForContent:v4 hints:v5];

  if (v5)
  {
    free(v5);
  }

  return v6;
}

+ (id)primaryLanguageWithHigherProbInDefaultLanguage:(id)a3
{
  v4 = a3;
  v5 = [a1 _createLanguageHintWithHighProbInDefault:v4];
  v6 = [a1 primaryLanguageForContent:v4 hints:v5];

  if (v5)
  {
    free(v5);
  }

  return v6;
}

+ (id)markupLanguageTagForAttributedString:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E696AD40]) initWithAttributedString:v4];
  v6 = [v4 string];
  v7 = [a1 languageTagsForContent:v6];

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
        v14 = [v13 dialect];
        v15 = [v14 specificLanguageID];

        if (v15)
        {
          v16 = [v13 taggedRange];
          [v5 addAttribute:@"AXLanguage" value:v15 range:{v16, v17}];
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

+ (void)_taggerForContent:(id)a3 tagScheme:(id)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  v11[0] = a4;
  v5 = MEMORY[0x1E695DEC8];
  v6 = a4;
  v7 = a3;
  [v5 arrayWithObjects:v11 count:1];

  v8 = NLTaggerCreate();
  NLTaggerSetString();

  result = CFAutorelease(v8);
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)_languageTagForDateIfNecessary:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E696AB60] dataDetectorWithTypes:8 error:0];
  v5 = [v3 length];
  v7 = 0;
  if ([v4 rangeOfFirstMatchInString:v3 options:0 range:{0, v5}])
  {
    v8 = 0;
  }

  else
  {
    v8 = v6 == v5;
  }

  if (v8)
  {
    v9 = [MEMORY[0x1E695DF70] array];
    v10 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v11 = +[AXSSLanguageManager shared];
    v12 = [v11 dialectForSystemLanguage];

    v13 = MEMORY[0x1E695DF58];
    v14 = [v12 specificLanguageID];
    v15 = [v13 localeWithLocaleIdentifier:v14];
    [v10 setLocale:v15];

    v16 = [v10 shortMonthSymbols];
    [v9 addObjectsFromArray:v16];

    v17 = [v10 shortWeekdaySymbols];
    [v9 addObjectsFromArray:v17];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v18 = v9;
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

          if ([v3 containsString:{*(*(&v23 + 1) + 8 * i), v23}])
          {
            v7 = v12;
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

+ ($1230CF39250A084FEEB876D19862D23B)_createLanguageHintsForContent:(id)a3
{
  v4 = a3;
  [a1 _systemLanguageProbabilityForContent:v4];
  v5 = [a1 _createLanguageHintsForContent:v4 probInSystemLanguage:?];

  return v5;
}

+ ($1230CF39250A084FEEB876D19862D23B)_createLanguageHintsForContent:(id)a3 probInSystemLanguage:(float)a4
{
  v6 = [a1 systemLocale];
  v7 = [v6 preferredLanguages];

  v8 = [v7 count];
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
      *&v12 = (v10 * a4) / v14;
      v15 = [MEMORY[0x1E696AD98] numberWithFloat:v12];
      v16 = MEMORY[0x1E696AD98];
      v17 = [v7 objectAtIndexedSubscript:v13];
      v18 = [v16 numberWithUnsignedInt:{objc_msgSend(a1, "langIDforLangCode:", v17)}];
      [v11 setObject:v15 forKeyedSubscript:v18];

      ++v13;
      --v10;
    }

    while (v10);
  }

  *&v12 = 1.0 - a4;
  v19 = [a1 _createLanguageHintsEvenlyDistributedWithProbability:v11 excludingHints:v12];

  return v19;
}

+ (float)_systemLanguageProbabilityForContent:(id)a3
{
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  [a1 _tokenTaggerForContent:v4];
  [v4 length];
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

+ (void)_hypothesesForContent:(id)a3 withHints:(id *)a4 guesses:(id *)a5
{
  v6 = _nlLanguageIdentifierLock;
  v7 = a3;
  [v6 lock];
  NLLanguageIdentifierReset();
  [v7 length];
  NLLanguageIdentifierConsumeString();

  v8 = [a1 _allLangIDs];
  [v8 count];
  NLLanguageIdentifierSetLanguageHints();

  NLLanguageIdentifierGetTopHypotheses();
  v9 = _nlLanguageIdentifierLock;

  [v9 unlock];
}

+ (id)_dialectWithHighestProbability:(id *)a3
{
  v3 = [a1 langCodeForlangId:a3->var0];
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

+ (id)_secondaryDialects:(id *)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DFA0] orderedSet];
  for (i = 1; i != 3; ++i)
  {
    v7 = &a3[i];
    if (v7->var0 < 2u)
    {
      break;
    }

    if (v7->var1 > 0.2)
    {
      v8 = [a1 langCodeForlangId:?];
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v9 = [a1 systemLocale];
      v10 = [v9 preferredLanguages];

      v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
              objc_enumerationMutation(v10);
            }

            if ([*(*(&v19 + 1) + 8 * j) hasPrefix:v8])
            {
              v15 = +[AXSSLanguageManager shared];
              v16 = [v15 dialectForLanguageID:v8];

              if (v16)
              {
                [v5 addObject:v16];
              }

              goto LABEL_16;
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
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

  return v5;
}

+ (id)_overrideLanguageDetection:(id)a3
{
  v3 = a3;
  v4 = +[AXSSLanguageManager shared];
  v5 = [v4 dialectForSystemLanguage];
  v6 = [v5 specificLanguageID];

  if ([v3 hasPrefix:@"zh"] && (objc_msgSend(v6, "hasPrefix:", @"ja") & 1) != 0 || objc_msgSend(v3, "hasPrefix:", @"ja") && objc_msgSend(v6, "hasPrefix:", @"zh"))
  {
    v7 = +[AXSSLanguageManager shared];
    v8 = [v7 dialectForSystemLanguage];
    v9 = [v8 specificLanguageID];
  }

  else
  {
    if (([v6 hasPrefix:@"zh"] & 1) == 0 && (objc_msgSend(v6, "hasPrefix:", @"ja") & 1) == 0 && !objc_msgSend(v6, "hasPrefix:", @"ko"))
    {
      goto LABEL_12;
    }

    v10 = +[AXSSLanguageManager shared];
    v11 = [v10 dialectForSystemLanguage];
    v12 = [v11 languageMap];
    v13 = [v12 generalLanguageID];
    v14 = [v3 hasPrefix:v13];

    if (v14)
    {
      goto LABEL_12;
    }

    v15 = +[AXSSLanguageManager shared];
    v16 = [v15 dialectForLanguageID:v3];
    v17 = [v16 languageMap];
    v18 = [v17 isWestern];

    if (v18)
    {
      v19 = v6;
    }

    else
    {
LABEL_12:
      v19 = v3;
    }

    v9 = v19;
  }

  return v9;
}

+ (_NSRange)_manuallyProcessContent:(id)a3 tokenRange:(_NSRange)a4 currentRange:(_NSRange)a5
{
  v5 = [a1 _extendRange:a5.location forContent:a5.length withRange:{a3, a4.location, a4.length}];
  result.length = v6;
  result.location = v5;
  return result;
}

+ (_NSRange)_extendRange:(_NSRange)a3 forContent:(id)a4 withRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v7 = a3.length;
  v8 = a3.location;
  v9 = a4;
  v10 = +[AXSSLanguageManager shared];
  if (length)
  {
    v11 = length;
    do
    {
      v12 = [v9 rangeOfComposedCharacterSequenceAtIndex:location];
      v14 = [v9 substringWithRange:{v12, v13}];
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

+ (BOOL)_isNewline:(id)a3
{
  v3 = a3;
  if ([v3 length] == 1)
  {
    v4 = [MEMORY[0x1E696AB08] newlineCharacterSet];
    v5 = [v4 characterIsMember:{objc_msgSend(v3, "characterAtIndex:", 0)}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ ($1230CF39250A084FEEB876D19862D23B)_createLanguageHintsEvenlyDistributedWithProbability:(float)a3 excludingHints:(id)a4
{
  v6 = a4;
  v7 = [a1 _allLangIDs];
  v8 = malloc_type_malloc(8 * [v7 count], 0x100004000313F17uLL);
  v9 = [v7 count];
  v10 = [v6 count];
  v11 = 0.0;
  if (v9 != v10)
  {
    v11 = a3 / (v9 - v10);
  }

  if ([v7 count])
  {
    v12 = 0;
    p_var1 = &v8->var1;
    do
    {
      v14 = [v7 objectAtIndexedSubscript:v12];
      *(p_var1 - 1) = [v14 intValue];

      v15 = [v7 objectAtIndexedSubscript:v12];
      v16 = [v6 objectForKey:v15];

      if (v16)
      {
        v17 = [v7 objectAtIndexedSubscript:v12];
        v18 = [v6 objectForKey:v17];
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

    while (v12 < [v7 count]);
  }

  return v8;
}

+ (id)langCodeForlangId:(int)a3
{
  if ((a3 - 2) > 0x38)
  {
    return @"und";
  }

  else
  {
    return off_1E81358C8[a3 - 2];
  }
}

+ (int)langIDforLangCode:(id)a3
{
  v3 = a3;
  if ([v3 hasPrefix:@"ar"])
  {
    v4 = 2;
  }

  else if ([v3 hasPrefix:@"bg"])
  {
    v4 = 3;
  }

  else if ([v3 hasPrefix:@"zh-Hans"])
  {
    v4 = 4;
  }

  else if ([v3 hasPrefix:@"zh-Hant"])
  {
    v4 = 5;
  }

  else if ([v3 hasPrefix:@"zh-Hant-HK"])
  {
    v4 = 54;
  }

  else if ([v3 hasPrefix:@"hr"])
  {
    v4 = 6;
  }

  else if ([v3 hasPrefix:@"cs"])
  {
    v4 = 7;
  }

  else if ([v3 hasPrefix:@"da"])
  {
    v4 = 8;
  }

  else if ([v3 hasPrefix:@"nl"])
  {
    v4 = 9;
  }

  else if ([v3 hasPrefix:@"en"])
  {
    v4 = 10;
  }

  else if ([v3 hasPrefix:@"fi"])
  {
    v4 = 11;
  }

  else if ([v3 hasPrefix:@"fr"])
  {
    v4 = 12;
  }

  else if ([v3 hasPrefix:@"de"])
  {
    v4 = 13;
  }

  else if ([v3 hasPrefix:@"el"])
  {
    v4 = 14;
  }

  else if ([v3 hasPrefix:@"he"])
  {
    v4 = 15;
  }

  else if ([v3 hasPrefix:@"hi"])
  {
    v4 = 16;
  }

  else if ([v3 hasPrefix:@"hu"])
  {
    v4 = 17;
  }

  else if ([v3 hasPrefix:@"is"])
  {
    v4 = 18;
  }

  else if ([v3 hasPrefix:@"it"])
  {
    v4 = 19;
  }

  else if ([v3 hasPrefix:@"ja"])
  {
    v4 = 20;
  }

  else if ([v3 hasPrefix:@"ko"])
  {
    v4 = 21;
  }

  else if ([v3 hasPrefix:@"mr"])
  {
    v4 = 22;
  }

  else if ([v3 hasPrefix:@"nb"])
  {
    v4 = 23;
  }

  else if ([v3 hasPrefix:@"pl"])
  {
    v4 = 24;
  }

  else if ([v3 hasPrefix:@"pt"])
  {
    v4 = 25;
  }

  else if ([v3 hasPrefix:@"ro"])
  {
    v4 = 26;
  }

  else if ([v3 hasPrefix:@"ru"])
  {
    v4 = 27;
  }

  else if ([v3 hasPrefix:@"sk"])
  {
    v4 = 28;
  }

  else if ([v3 hasPrefix:@"es"])
  {
    v4 = 29;
  }

  else if ([v3 hasPrefix:@"sv"])
  {
    v4 = 30;
  }

  else if ([v3 hasPrefix:@"th"])
  {
    v4 = 31;
  }

  else if ([v3 hasPrefix:@"tr"])
  {
    v4 = 32;
  }

  else if ([v3 hasPrefix:@"uk"])
  {
    v4 = 33;
  }

  else if ([v3 hasPrefix:@"ur"])
  {
    v4 = 34;
  }

  else if ([v3 hasPrefix:@"hy"])
  {
    v4 = 35;
  }

  else if ([v3 hasPrefix:@"bn"])
  {
    v4 = 36;
  }

  else if ([v3 hasPrefix:@"pa"])
  {
    v4 = 37;
  }

  else if ([v3 hasPrefix:@"gu"])
  {
    v4 = 38;
  }

  else if ([v3 hasPrefix:@"or"])
  {
    v4 = 39;
  }

  else if ([v3 hasPrefix:@"ta"])
  {
    v4 = 40;
  }

  else if ([v3 hasPrefix:@"te"])
  {
    v4 = 41;
  }

  else if ([v3 hasPrefix:@"kn"])
  {
    v4 = 42;
  }

  else if ([v3 hasPrefix:@"ml"])
  {
    v4 = 43;
  }

  else if ([v3 hasPrefix:@"si"])
  {
    v4 = 44;
  }

  else if ([v3 hasPrefix:@"lo"])
  {
    v4 = 45;
  }

  else if ([v3 hasPrefix:@"bo"])
  {
    v4 = 46;
  }

  else if ([v3 hasPrefix:@"my"])
  {
    v4 = 47;
  }

  else if ([v3 hasPrefix:@"ka"])
  {
    v4 = 48;
  }

  else if ([v3 hasPrefix:@"am"])
  {
    v4 = 49;
  }

  else if ([v3 hasPrefix:@"chr"])
  {
    v4 = 50;
  }

  else if ([v3 hasPrefix:@"iu"])
  {
    v4 = 51;
  }

  else if ([v3 hasPrefix:@"km"])
  {
    v4 = 52;
  }

  else if ([v3 hasPrefix:@"mn"])
  {
    v4 = 53;
  }

  else if ([v3 hasPrefix:@"vi"])
  {
    v4 = 55;
  }

  else if ([v3 hasPrefix:@"fa"])
  {
    v4 = 56;
  }

  else if ([v3 hasPrefix:@"id"])
  {
    v4 = 57;
  }

  else if ([v3 hasPrefix:@"kk"])
  {
    v4 = 58;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

+ (BOOL)isSupportedLanguage:(id)a3
{
  v4 = a3;
  v5 = [AXSSLanguageTagger langIDforLangCode:v4];
  v6 = [a1 _allLangIDs];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v5];
  v8 = [v6 containsObject:v7];

  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = [v4 hasPrefix:@"zh"];
  }

  return v9;
}

@end