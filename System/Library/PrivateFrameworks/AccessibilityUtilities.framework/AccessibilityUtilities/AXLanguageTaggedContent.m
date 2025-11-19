@interface AXLanguageTaggedContent
- ($1230CF39250A084FEEB876D19862D23B)_languageHintsEvenlyDistributedWithProbability:(float)a3 excludingHints:(id)a4;
- (AXLanguageTaggedContent)initWithContent:(id)a3;
- (BOOL)_addLanguageTagForCurrentChunk;
- (BOOL)_addLanguageTagForDateIfNecessary;
- (BOOL)_isNamedEntity:(id)a3;
- (BOOL)_isStringCombinationOfCommonAndEmoji:(id)a3;
- (BOOL)hasOnlyNonWesternLangMaps;
- (BOOL)hasOnlyWesternLangMaps;
- (id)_overrideLanguageDetection:(id)a3;
- (id)_preferredLanguagesForTagging;
- (id)ambiguousLangMaps;
- (id)description;
- (id)langCodeForlangId:(int)a3;
- (id)primaryAmbiguousDialect;
- (id)primaryUnambiguousDialect;
- (id)significantAmbiguousLangMapsForUserKeyboards;
- (id)unambiguousLangMaps;
- (int)langIDforLangCode:(id)a3;
- (void)_addTag;
- (void)_debugLog:(id)a3 token:(id)a4 range:(_NSRange)a5 script:(id)a6 dialects:(id)a7;
- (void)_manuallyProcessContentWithRange:(_NSRange)a3;
- (void)_searchForShorthandDates;
- (void)appendLanguageTaggedContent:(id)a3;
- (void)dealloc;
- (void)enumeratePredictedTags:(id)a3;
- (void)enumerateUnpredictedTags:(id)a3;
- (void)tagContent;
- (void)updateTagsForLocalePrefChange;
@end

@implementation AXLanguageTaggedContent

- (AXLanguageTaggedContent)initWithContent:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4 && (v8.receiver = self, v8.super_class = AXLanguageTaggedContent, (self = [(AXLanguageTaggedContent *)&v8 init]) != 0))
  {
    v5 = [v4 mutableCopy];
    [(AXLanguageTaggedContent *)self setContentString:v5];

    v10[0] = *MEMORY[0x1E6998268];
    [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    self->_nlTagger = NLTaggerCreate();
    v9 = *MEMORY[0x1E6998258];
    [MEMORY[0x1E695DEC8] arrayWithObjects:&v9 count:1];
    self->_namedEntityTagger = NLTaggerCreate();
    self = self;
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)dealloc
{
  CFRelease(self->_nlTagger);
  CFRelease(self->_namedEntityTagger);
  v3.receiver = self;
  v3.super_class = AXLanguageTaggedContent;
  [(AXLanguageTaggedContent *)&v3 dealloc];
}

- (id)description
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"AXTaggedContent:<%p>. tags:\n", self];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(AXLanguageTaggedContent *)self tags];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 appendFormat:@"  %@\n", *(*(&v10 + 1) + 8 * i)];
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)appendLanguageTaggedContent:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = AXLogSpokenContentTextProcessing();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_18B15E000, v5, OS_LOG_TYPE_INFO, "Will append new tagged content to current tagged content", buf, 2u);
  }

  v6 = [(AXLanguageTaggedContent *)self contentString];
  v7 = [v4 contentString];
  [v6 appendString:v7];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v8 = [v4 tags];
  v9 = [v8 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v35;
    do
    {
      v12 = 0;
      do
      {
        if (*v35 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v34 + 1) + 8 * v12);
        v14 = [(AXLanguageTaggedContent *)self content];
        [v13 setContent:v14];

        v15 = [v13 range];
        v16 = [(AXLanguageTaggedContent *)self contentString];
        v17 = [v16 length] + v15;
        v18 = [v4 contentString];
        v19 = v17 - [v18 length];
        [v13 range];
        [v13 setRange:{v19, v20}];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v10);
  }

  v21 = [(AXLanguageTaggedContent *)self tags];
  v22 = [v4 tags];
  [v21 addObjectsFromArray:v22];

  v23 = [(AXLanguageTaggedContent *)self unpredictedAmbiguousLangMaps];
  v24 = [v4 unpredictedAmbiguousLangMaps];
  [v23 unionOrderedSet:v24];

  v25 = [(AXLanguageTaggedContent *)self predictedSecondaryLangMaps];
  v26 = [v4 predictedSecondaryLangMaps];
  [v25 unionOrderedSet:v26];

  v27 = AXLogSpokenContentTextProcessing();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    v28 = [(AXLanguageTaggedContent *)self currentDialects];
    v29 = [v4 currentDialects];
    *buf = 138412546;
    v39 = v28;
    v40 = 2112;
    v41 = v29;
    _os_log_impl(&dword_18B15E000, v27, OS_LOG_TYPE_INFO, "Combining currentDialects. old: %@. new: %@", buf, 0x16u);
  }

  v30 = [(AXLanguageTaggedContent *)self currentDialects];
  v31 = [v4 currentDialects];
  v32 = [v30 arrayByAddingObjectsFromArray:v31];
  [(AXLanguageTaggedContent *)self setCurrentDialects:v32];

  if ([(AXLanguageTaggedContent *)self isTagged])
  {
    v33 = [v4 isTagged];
  }

  else
  {
    v33 = 0;
  }

  [(AXLanguageTaggedContent *)self setTagged:v33];
}

- (void)enumerateUnpredictedTags:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15 = 0;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(AXLanguageTaggedContent *)self tags];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v12 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v11 + 1) + 8 * v9);
      if (([v10 wasPredicted] & 1) == 0)
      {
        v4[2](v4, v10, &v15);
        if (v15)
        {
          break;
        }
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)enumeratePredictedTags:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15 = 0;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(AXLanguageTaggedContent *)self tags];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v12 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v11 + 1) + 8 * v9);
      if ([v10 wasPredicted])
      {
        v4[2](v4, v10, &v15);
        if (v15)
        {
          break;
        }
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (id)langCodeForlangId:(int)a3
{
  if ((a3 - 2) > 0x38)
  {
    return @"und";
  }

  else
  {
    return off_1E71EBE38[a3 - 2];
  }
}

- (int)langIDforLangCode:(id)a3
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

  else
  {
    v4 = 1;
  }

  return v4;
}

- ($1230CF39250A084FEEB876D19862D23B)_languageHintsEvenlyDistributedWithProbability:(float)a3 excludingHints:(id)a4
{
  v6 = a4;
  v7 = [(AXLanguageTaggedContent *)self _allLangIDs];
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

    while ([v7 count] > v12);
  }

  return v8;
}

- (id)_overrideLanguageDetection:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = +[AXLanguageManager sharedInstance];
  v5 = [v4 dialectForSystemLanguage];
  v6 = [v5 specificLanguageID];

  if ([v3 hasPrefix:@"zh"] && (objc_msgSend(v6, "hasPrefix:", @"ja") & 1) != 0 || objc_msgSend(v3, "hasPrefix:", @"ja") && objc_msgSend(v6, "hasPrefix:", @"zh"))
  {
    v7 = AXLogSpokenContentTextProcessing();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v12 = 138412290;
      v13 = v3;
      _os_log_impl(&dword_18B15E000, v7, OS_LOG_TYPE_INFO, "Override language {%@} detection to be ja-JP", &v12, 0xCu);
    }

    v8 = +[AXLanguageManager sharedInstance];
    v9 = [v8 dialectForSystemLanguage];
    v10 = [v9 specificLanguageID];
  }

  else
  {
    v10 = v3;
  }

  return v10;
}

- (void)_searchForShorthandDates
{
  v3 = [MEMORY[0x1E696AB60] dataDetectorWithTypes:8 error:0];
  v4 = [(AXLanguageTaggedContent *)self contentString];
  v5 = [v4 length];

  v6 = [MEMORY[0x1E695DF70] array];
  v7 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v8 = +[AXLanguageManager sharedInstance];
  v9 = [v8 dialectForSystemLanguage];

  v10 = MEMORY[0x1E695DF58];
  v11 = [v9 specificLanguageID];
  v12 = [v10 localeWithLocaleIdentifier:v11];
  [v7 setLocale:v12];

  v13 = [v7 shortMonthSymbols];
  [v6 addObjectsFromArray:v13];

  v14 = [v7 shortWeekdaySymbols];
  [v6 addObjectsFromArray:v14];

  v15 = [(AXLanguageTaggedContent *)self contentString];
  v16 = [v3 matchesInString:v15 options:0 range:{0, v5}];
  [(AXLanguageTaggedContent *)self setShorthandDateMatches:v16];

  v17 = [(AXLanguageTaggedContent *)self shorthandDateMatches];
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __51__AXLanguageTaggedContent__searchForShorthandDates__block_invoke;
  v23 = &unk_1E71EBD78;
  v24 = self;
  v25 = v6;
  v18 = v6;
  v19 = [v17 ax_filteredArrayUsingBlock:&v20];
  [(AXLanguageTaggedContent *)self setShorthandDateMatches:v19, v20, v21, v22, v23, v24];
}

uint64_t __51__AXLanguageTaggedContent__searchForShorthandDates__block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 resultType] == 8)
  {
    v4 = [*(a1 + 32) contentString];
    v5 = [v3 range];
    v7 = [v4 substringWithRange:{v5, v6}];

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = *(a1 + 40);
    v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = *v14;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v8);
          }

          if ([v7 containsString:{*(*(&v13 + 1) + 8 * i), v13}])
          {
            v9 = 1;
            goto LABEL_13;
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_isNamedEntity:(id)a3
{
  v3 = a3;
  NLTaggerSetString();
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x2020000000;
  v6[3] = 0;
  [v3 length];
  NLTaggerEnumerateTokens();
  v4 = *(v8 + 24);
  _Block_object_dispose(v6, 8);
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __42__AXLanguageTaggedContent__isNamedEntity___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = NLTaggerCopyTagForCurrentToken();
  v6 = v5;
  if (++*(*(*(a1 + 40) + 8) + 24) < 2uLL)
  {
    v8 = v5;
    v5 = [v5 isEqualToString:*MEMORY[0x1E69980A0]];
    v6 = v8;
    if (v5 & 1) != 0 || (v5 = [v8 isEqualToString:*MEMORY[0x1E69980A8]], v6 = v8, (v5) || (v5 = objc_msgSend(v8, "isEqualToString:", *MEMORY[0x1E6998098]), v6 = v8, v5))
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    *a3 = 1;
  }

  return MEMORY[0x1EEE66BB8](v5, v6);
}

- (BOOL)_addLanguageTagForDateIfNecessary
{
  v23[1] = *MEMORY[0x1E69E9840];
  v3 = [(AXLanguageTaggedContent *)self shorthandDateMatches];
  if (![v3 count])
  {
LABEL_10:

    return 0;
  }

  v4 = [(AXLanguageTaggedContent *)self nextShorthandDateIndex];
  v5 = [(AXLanguageTaggedContent *)self shorthandDateMatches];
  v6 = [v5 count];

  if (v4 >= v6)
  {
    return 0;
  }

  v7 = [(AXLanguageTaggedContent *)self shorthandDateMatches];
  v3 = [v7 objectAtIndexedSubscript:{-[AXLanguageTaggedContent nextShorthandDateIndex](self, "nextShorthandDateIndex")}];

  v8 = [v3 range];
  location = self->_currentChunk.location;
  length = self->_currentChunk.length;
  if (location != v8 || length != v9)
  {
    v18 = length + location;
    v19 = [v3 range];
    if (v18 > v19 + v20)
    {
      [(AXLanguageTaggedContent *)self setNextShorthandDateIndex:[(AXLanguageTaggedContent *)self nextShorthandDateIndex]+ 1];
    }

    goto LABEL_10;
  }

  [(AXLanguageTaggedContent *)self setNextShorthandDateIndex:[(AXLanguageTaggedContent *)self nextShorthandDateIndex]+ 1];
  v12 = +[AXLanguageManager sharedInstance];
  v13 = [v12 dialectForSystemLanguage];
  v23[0] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  [(AXLanguageTaggedContent *)self setCurrentDialects:v14];

  v15 = AXLogSpokenContentTextProcessing();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = [(AXLanguageTaggedContent *)self currentDialects];
    v21 = 138412290;
    v22 = v16;
    _os_log_impl(&dword_18B15E000, v15, OS_LOG_TYPE_INFO, "Setting currentDialetcs to dialectForSystemLanguage: %@", &v21, 0xCu);
  }

  [(AXLanguageTaggedContent *)self _addTag];
  return 1;
}

- (BOOL)_addLanguageTagForCurrentChunk
{
  v80[3] = *MEMORY[0x1E69E9840];
  v3 = +[AXLanguageManager sharedInstance];
  v4 = self->_currentChunk.length + self->_currentChunk.location;
  v5 = [(AXLanguageTaggedContent *)self contentString];
  v6 = [v5 length];

  if (v4 > v6)
  {
    v7 = AXLogSpokenContentTextProcessing();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [(AXLanguageTaggedContent *)v7 _addLanguageTagForCurrentChunk];
    }

    v8 = [(AXLanguageTaggedContent *)self contentString];
    self->_currentChunk.length = [v8 length] - self->_currentChunk.location;
  }

  v9 = +[AXSettings sharedInstance];
  v10 = [v9 spokenContentShouldUseLanguageDetection];

  if (v10)
  {
    v11 = [(AXLanguageTaggedContent *)self contentString];
    v12 = [v11 substringWithRange:{self->_currentChunk.location, self->_currentChunk.length}];

    if ([(AXLanguageTaggedContent *)self _addLanguageTagForDateIfNecessary])
    {
      v13 = 0;
    }

    else
    {
      v67 = v3;
      NLLanguageIdentifierCreate();
      [v12 length];
      NLLanguageIdentifierConsumeString();
      v14 = AXLogSpokenContentTextProcessing();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = [v12 stringByReplacingOccurrencesOfString:@"\n" withString:@"<newline>"];
        *buf = 138412290;
        v74 = v15;
        _os_log_impl(&dword_18B15E000, v14, OS_LOG_TYPE_INFO, "Running language detection on chunk: '%@'", buf, 0xCu);
      }

      v61 = v12;

      v16 = [MEMORY[0x1E695DF58] preferredLanguages];
      v17 = [v16 count];
      v18 = v17;
      if (v17 >= 3)
      {
        v19 = 3;
      }

      else
      {
        v19 = v17;
      }

      v20 = objc_opt_new();
      if (v18)
      {
        v22 = 0;
        v23 = ((v19 + v19 * v19) >> 1);
        do
        {
          v24 = [MEMORY[0x1E696AD98] numberWithDouble:v19 * 0.6 / v23];
          v25 = MEMORY[0x1E696AD98];
          v26 = [v16 objectAtIndexedSubscript:v22];
          v27 = [v25 numberWithUnsignedInt:{-[AXLanguageTaggedContent langIDforLangCode:](self, "langIDforLangCode:", v26)}];
          [v20 setObject:v24 forKeyedSubscript:v27];

          ++v22;
          --v19;
        }

        while (v19);
      }

      LODWORD(v21) = 1053609165;
      v28 = [(AXLanguageTaggedContent *)self _languageHintsEvenlyDistributedWithProbability:v20 excludingHints:v21];
      v29 = [(AXLanguageTaggedContent *)self _allLangIDs];
      [v29 count];
      NLLanguageIdentifierSetLanguageHints();

      memset(v80, 0, 24);
      NLLanguageIdentifierGetTopHypotheses();
      v30 = [MEMORY[0x1E695DFA0] orderedSet];
      v31 = v30;
      v60 = v28;
      if (LODWORD(v80[0]) <= 1 || *(v80 + 1) <= 0.9)
      {
        v63 = 0;
        v12 = v61;
      }

      else
      {
        v65 = v30;
        v63 = [(AXLanguageTaggedContent *)self langCodeForlangId:*(v80 + 1)];
        v32 = 1;
        *&v33 = 138412802;
        v59 = v33;
        do
        {
          v34 = &v80[v32];
          if (*v34 < 2u)
          {
            break;
          }

          if (v34[1] > 0.2)
          {
            v35 = [(AXLanguageTaggedContent *)self langCodeForlangId:?];
            v68 = 0u;
            v69 = 0u;
            v70 = 0u;
            v71 = 0u;
            v36 = [MEMORY[0x1E695DF58] preferredLanguages];
            v37 = [v36 countByEnumeratingWithState:&v68 objects:v79 count:16];
            if (v37)
            {
              v38 = v37;
              v39 = *v69;
              while (2)
              {
                for (i = 0; i != v38; ++i)
                {
                  if (*v69 != v39)
                  {
                    objc_enumerationMutation(v36);
                  }

                  if ([*(*(&v68 + 1) + 8 * i) hasPrefix:{v35, v59, v60}])
                  {
                    v41 = [v67 dialectForLanguageID:v35];
                    if (v41)
                    {
                      [v65 addObject:v41];
                      v42 = AXLogSpokenContentTextProcessing();
                      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
                      {
                        v43 = v34[1];
                        *buf = v59;
                        v74 = v63;
                        v75 = 2048;
                        v76 = v43;
                        v77 = 2112;
                        v78 = v61;
                        _os_log_impl(&dword_18B15E000, v42, OS_LOG_TYPE_INFO, "Adding secondary tag %@ with probability %f for chunk: %@", buf, 0x20u);
                      }
                    }

                    goto LABEL_38;
                  }
                }

                v38 = [v36 countByEnumeratingWithState:&v68 objects:v79 count:16];
                if (v38)
                {
                  continue;
                }

                break;
              }
            }

LABEL_38:
          }

          ++v32;
        }

        while (v32 != 3);
        v12 = v61;
        v31 = v65;
      }

      v44 = AXLogSpokenContentTextProcessing();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        v74 = v63;
        v75 = 2048;
        v76 = *(v80 + 1);
        v77 = 2112;
        v78 = v12;
        _os_log_impl(&dword_18B15E000, v44, OS_LOG_TYPE_INFO, "Tagger chose tag '%@' with probability %f for chunk: %@", buf, 0x20u);
      }

      if (v63)
      {
        v66 = v31;
        v45 = [v67 dialectForLanguageID:v63];
        v46 = [(AXLanguageTaggedContent *)self _overrideLanguageDetection:v63];

        [v67 dialectForLanguageID:v46];
        v47 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        if (v47 != 0.0 && [v31 containsObject:*&v47])
        {
          [v31 removeObject:*&v47];
        }

        if (v45 && ([v45 isEqual:*&v47] & 1) == 0)
        {
          [v31 addObject:v45];
        }

        v64 = v45;
        v48 = +[AXLanguageManager sharedInstance];
        v49 = [v48 dialectForSystemLanguage];
        v50 = [v49 specificLanguageID];

        v51 = [*&v47 specificLanguageID];
        v62 = v50;
        v52 = ([v50 isEqualToString:v51] & 1) == 0 && -[AXLanguageTaggedContent _isNamedEntity:](self, "_isNamedEntity:", v12);

        v13 = *&v47 == 0 || v52;
        if (*&v47 == 0 || v52)
        {
          v53 = AXLogSpokenContentTextProcessing();
          v31 = v66;
          if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v74 = v46;
            _os_log_impl(&dword_18B15E000, v53, OS_LOG_TYPE_INFO, "Couldn't find dialect for tag %@, manually tagging", buf, 0xCu);
          }
        }

        else
        {
          self->_predictedByTagger = 1;
          v72 = v47;
          v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v72 count:1];
          [(AXLanguageTaggedContent *)self setCurrentDialects:v54];

          v55 = AXLogSpokenContentTextProcessing();
          v31 = v66;
          if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v74 = v46;
            v75 = 2112;
            v76 = v47;
            _os_log_impl(&dword_18B15E000, v55, OS_LOG_TYPE_INFO, "Setting currentDialects to dialectForLanguageID: %@. %@", buf, 0x16u);
          }

          [(AXLanguageTaggedContent *)self _addTag];
          v56 = [(AXLanguageTaggedContent *)self tags];
          v57 = [(AXLanguageTaggedContent *)self tags];
          v53 = [v56 objectAtIndex:{objc_msgSend(v57, "count") - 1}];

          if ([v66 count])
          {
            [v53 addPredictedSecondaryDialects:v66];
          }
        }
      }

      else
      {
        v46 = AXLogSpokenContentTextProcessing();
        v13 = 1;
        if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_18B15E000, v46, OS_LOG_TYPE_INFO, "Tagger couldn't find a language for current chunk. Manually tagging.", buf, 2u);
        }
      }

      NLLanguageIdentifierRelease();
      free(v60);

      v3 = v67;
    }
  }

  else
  {
    v12 = AXLogSpokenContentTextProcessing();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18B15E000, v12, OS_LOG_TYPE_DEFAULT, "Language detection is disabled. will manually tag", buf, 2u);
    }

    v13 = 1;
  }

  return v13 & 1;
}

- (void)_debugLog:(id)a3 token:(id)a4 range:(_NSRange)a5 script:(id)a6 dialects:(id)a7
{
  length = a5.length;
  location = a5.location;
  v32 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = AXLogSpokenContentTextProcessing();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17 = [v13 stringByReplacingOccurrencesOfString:@"\n" withString:@"<newline>"];
    v33.location = location;
    v33.length = length;
    v18 = NSStringFromRange(v33);
    v19 = &stru_1EFE6D570;
    if ([(__CFString *)v14 length])
    {
      v20 = v14;
    }

    else
    {
      v20 = &stru_1EFE6D570;
    }

    v21 = [v15 count];
    if (v21)
    {
      v19 = [v15 description];
    }

    v22 = 138413315;
    v23 = v12;
    v24 = 2113;
    v25 = v17;
    v26 = 2112;
    v27 = v18;
    v28 = 2112;
    v29 = v20;
    v30 = 2112;
    v31 = v19;
    _os_log_debug_impl(&dword_18B15E000, v16, OS_LOG_TYPE_DEBUG, "%@ '%{private}@' %@ %@ %@", &v22, 0x34u);
    if (v21)
    {
    }
  }
}

- (void)tagContent
{
  v133 = *MEMORY[0x1E69E9840];
  if (![(AXLanguageTaggedContent *)self isTagged])
  {
    v72 = self;
    [(AXLanguageTaggedContent *)self setTagged:1];
    v71 = +[AXLanguageManager sharedInstance];
    v70 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(AXLanguageTaggedContent *)self setTags:?];
    self->_currentChunk.location = 0;
    self->_currentChunk.length = 0;
    self->_predictedByTagger = 0;
    v3 = AXLogSpokenContentTextProcessing();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_18B15E000, v3, OS_LOG_TYPE_INFO, "Setting currentDialects to nil", buf, 2u);
    }

    [(AXLanguageTaggedContent *)v72 setCurrentDialects:0];
    v117 = 0;
    v118 = &v117;
    v119 = 0x2020000000;
    v120 = 0;
    v4 = [(AXLanguageTaggedContent *)v72 contentString];
    [(AXLanguageTaggedContent *)v72 setNextShorthandDateIndex:0];
    [(AXLanguageTaggedContent *)v72 _searchForShorthandDates];
    NLTaggerSetString();
    *buf = 0;
    v112 = buf;
    v113 = 0x3010000000;
    v116 = 0;
    v114 = &unk_18B3155F1;
    v115 = 0;
    v109[0] = 0;
    v109[1] = v109;
    v109[2] = 0x3032000000;
    v109[3] = __Block_byref_object_copy__10;
    v109[4] = __Block_byref_object_dispose__10;
    v110 = 0;
    v107[0] = 0;
    v107[1] = v107;
    v107[2] = 0x2020000000;
    v108 = 0;
    v5 = AXLogSpokenContentTextProcessing();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(AXLanguageTaggedContent *)v5 tagContent];
    }

    p_isa = &v72->super.isa;
    [v4 length];
    v97 = MEMORY[0x1E69E9820];
    v98 = 3221225472;
    v99 = __37__AXLanguageTaggedContent_tagContent__block_invoke;
    v100 = &unk_1E71EBDC8;
    v68 = v4;
    v101 = v68;
    v102 = v72;
    v103 = buf;
    v104 = v109;
    v105 = v107;
    v106 = &v117;
    NLTaggerEnumerateTokens();
    if ([(AXLanguageTaggedContent *)v72 _addLanguageTagForCurrentChunk])
    {
      location = v72->_currentChunk.location;
      length = v72->_currentChunk.length;
      v72->_currentChunk.length = 0;
      [(AXLanguageTaggedContent *)v72 _manuallyProcessContentWithRange:location, length, v68];
      *(v118 + 24) = 1;
    }

    v9 = v72->_currentChunk.length;
    if (v9)
    {
      v10 = v72->_currentChunk.location;
      v11 = [(AXLanguageTaggedContent *)v72 contentString];
      v12 = v10 + v9 > [v11 length];

      p_isa = &v72->super.isa;
      if (!v12)
      {
        if (![(NSArray *)v72->_currentDialects count])
        {
          v13 = [v71 dialectForSystemLanguage];
          if (v118[3])
          {
            v14 = [(AXLanguageTaggedContent *)v72 contentString];
            v15 = [(AXLanguageTaggedContent *)v72 _isStringCombinationOfCommonAndEmoji:v14];
            if (v13)
            {
              v16 = v15;
            }

            else
            {
              v16 = 0;
            }

            if (v16)
            {
              v131 = v13;
              v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v131 count:1];
              [(AXLanguageTaggedContent *)v72 setCurrentDialects:v17];

              v18 = AXLogSpokenContentTextProcessing();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
              {
                v19 = [(AXLanguageTaggedContent *)v72 currentDialects];
                *v121 = 138412290;
                v122 = v19;
                _os_log_impl(&dword_18B15E000, v18, OS_LOG_TYPE_INFO, "Setting currentDialects to dialectForSystemLanguage: %@", v121, 0xCu);
              }
            }
          }

          else
          {
            v20 = [MEMORY[0x1E695DF70] array];
            v14 = v20;
            if (v13)
            {
              [(AXLanguageTaggedContent *)v20 addObject:v13];
            }

            v95 = 0u;
            v96 = 0u;
            v93 = 0u;
            v94 = 0u;
            v21 = [(AXLanguageTaggedContent *)v72 significantAmbiguousLangMapsForUserKeyboards];
            v22 = [v21 countByEnumeratingWithState:&v93 objects:v132 count:16];
            if (v22)
            {
              v23 = *v94;
              do
              {
                for (i = 0; i != v22; ++i)
                {
                  if (*v94 != v23)
                  {
                    objc_enumerationMutation(v21);
                  }

                  v25 = *(*(&v93 + 1) + 8 * i);
                  v26 = [v25 defaultDialect];
                  v27 = [v26 isEqual:v13];

                  if ((v27 & 1) == 0)
                  {
                    v28 = [v25 defaultDialect];
                    [(AXLanguageTaggedContent *)v14 addObject:v28];
                  }
                }

                v22 = [v21 countByEnumeratingWithState:&v93 objects:v132 count:16];
              }

              while (v22);
            }

            v29 = AXLogSpokenContentTextProcessing();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
            {
              *v121 = 138412290;
              v122 = v14;
              _os_log_impl(&dword_18B15E000, v29, OS_LOG_TYPE_INFO, "Setting currentDialects to defaultMaps: %@", v121, 0xCu);
            }

            [(AXLanguageTaggedContent *)v72 setCurrentDialects:v14];
          }

          p_isa = &v72->super.isa;
        }

        if ([p_isa[1] count])
        {
          v30 = AXLogSpokenContentTextProcessing();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            currentDialects = v72->_currentDialects;
            v32 = NSStringFromRange(v72->_currentChunk);
            *v121 = 138412546;
            v122 = currentDialects;
            v123 = 2112;
            v124 = v32;
            _os_log_impl(&dword_18B15E000, v30, OS_LOG_TYPE_INFO, "Add last chunk: %@ %@", v121, 0x16u);
          }

          p_isa = &v72->super.isa;
          [(AXLanguageTaggedContent *)v72 _addTag];
        }
      }
    }

    v75 = [MEMORY[0x1E695DF70] array];
    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    v33 = [p_isa tags];
    v34 = [v33 countByEnumeratingWithState:&v89 objects:v130 count:16];
    if (v34)
    {
      v35 = 0;
      v36 = 0;
      v37 = *v90;
      do
      {
        for (j = 0; j != v34; ++j)
        {
          if (*v90 != v37)
          {
            objc_enumerationMutation(v33);
          }

          v39 = *(*(&v89 + 1) + 8 * j);
          if (v35 | v36)
          {
            v40 = [*(*(&v89 + 1) + 8 * j) dialect];
            v41 = v36 == v40;

            if (v41)
            {
              v44 = [v35 range];
              [v35 range];
              v46 = v45;
              [v39 range];
              [v35 setRange:{v44, v47 + v46}];
              if ([v39 wasPredicted])
              {
                [v35 setWasPredicted:1];
              }

              [v35 setCreatedFromNewline:{objc_msgSend(v39, "createdFromNewline")}];
            }

            else
            {
              [(NSArray *)v75 addObject:v35];
              v42 = v39;

              v43 = [v42 dialect];

              v35 = v42;
              v36 = v43;
            }
          }

          else
          {
            v35 = v39;
            v36 = [v35 dialect];
          }
        }

        v34 = [v33 countByEnumeratingWithState:&v89 objects:v130 count:16];
      }

      while (v34);

      if (v35)
      {
        [(NSArray *)v75 addObject:v35];
      }
    }

    else
    {

      v36 = 0;
      v35 = 0;
    }

    v48 = AXLogSpokenContentTextProcessing();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
    {
      v49 = [(AXLanguageTaggedContent *)v72 tags];
      *v121 = 138478083;
      v122 = v49;
      v123 = 2113;
      v124 = v75;
      _os_log_impl(&dword_18B15E000, v48, OS_LOG_TYPE_INFO, "Combining tags. Old tags were: %{private}@. New tags are: %{private}@", v121, 0x16u);
    }

    [(AXLanguageTaggedContent *)v72 setTags:v75];
    v50 = [MEMORY[0x1E695DFA0] orderedSet];
    v51 = [MEMORY[0x1E695DFA0] orderedSet];
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v52 = [(AXLanguageTaggedContent *)v72 tags];
    v53 = [v52 countByEnumeratingWithState:&v85 objects:v129 count:16];
    if (v53)
    {
      obj = v52;
      v74 = *v86;
      do
      {
        v76 = v53;
        for (k = 0; k != v76; ++k)
        {
          if (*v86 != v74)
          {
            objc_enumerationMutation(obj);
          }

          v55 = *(*(&v85 + 1) + 8 * k);
          if ([v55 wasPredicted])
          {
            v79 = 0uLL;
            v80 = 0uLL;
            v77 = 0uLL;
            v78 = 0uLL;
            v56 = [v55 predictedSecondaryDialects];
            v57 = [v56 countByEnumeratingWithState:&v77 objects:v127 count:16];
            if (v57)
            {
              v58 = *v78;
              do
              {
                for (m = 0; m != v57; ++m)
                {
                  if (*v78 != v58)
                  {
                    objc_enumerationMutation(v56);
                  }

                  v60 = [*(*(&v77 + 1) + 8 * m) langMap];
                  [v51 addObject:v60];
                }

                v57 = [v56 countByEnumeratingWithState:&v77 objects:v127 count:16];
              }

              while (v57);
            }
          }

          else
          {
            v83 = 0uLL;
            v84 = 0uLL;
            v81 = 0uLL;
            v82 = 0uLL;
            v56 = [v55 ambiguousDialects];
            v61 = [v56 countByEnumeratingWithState:&v81 objects:v128 count:16];
            if (v61)
            {
              v62 = *v82;
              do
              {
                for (n = 0; n != v61; ++n)
                {
                  if (*v82 != v62)
                  {
                    objc_enumerationMutation(v56);
                  }

                  v64 = [*(*(&v81 + 1) + 8 * n) langMap];
                  [v50 addObject:v64];
                }

                v61 = [v56 countByEnumeratingWithState:&v81 objects:v128 count:16];
              }

              while (v61);
            }
          }
        }

        v52 = obj;
        v53 = [obj countByEnumeratingWithState:&v85 objects:v129 count:16];
      }

      while (v53);
    }

    [(AXLanguageTaggedContent *)v72 setUnpredictedAmbiguousLangMaps:v50];
    [(AXLanguageTaggedContent *)v72 setPredictedSecondaryLangMaps:v51];
    v65 = AXLogSpokenContentTextProcessing();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
    {
      v66 = v72->_currentDialects;
      v67 = NSStringFromRange(v72->_currentChunk);
      *v121 = 138412802;
      v122 = v72;
      v123 = 2112;
      v124 = v66;
      v125 = 2112;
      v126 = v67;
      _os_log_impl(&dword_18B15E000, v65, OS_LOG_TYPE_INFO, "Finished Tagging. %@ %@ %@", v121, 0x20u);
    }

    _Block_object_dispose(v107, 8);
    _Block_object_dispose(v109, 8);

    _Block_object_dispose(buf, 8);
    _Block_object_dispose(&v117, 8);
  }
}

void __37__AXLanguageTaggedContent_tagContent__block_invoke(uint64_t a1, unint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v33 = [*(a1 + 32) substringWithRange:{*a2, v4}];
  v5 = NLTaggerCopyTagForCurrentToken();
  v6 = *(*(*(a1 + 48) + 8) + 40) + *(*(*(a1 + 48) + 8) + 32);
  v7 = v3 >= v6;
  v8 = v3 - v6;
  if (!v7)
  {
    v9 = *(a1 + 40);
    v10 = *(v9 + 24);
    if (v10)
    {
      *(v9 + 24) = v8 + v10;
    }
  }

  v11 = AXLogSpokenContentTextProcessing();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);

  if (v12)
  {
    [*(a1 + 40) _debugLog:@"Enumerate token:" token:v33 range:*(*(a1 + 40) + 16) script:*(*(a1 + 40) + 24) dialects:{v5, *(*(a1 + 40) + 8)}];
  }

  v13 = *(a1 + 40);
  if (v3 > v13[3] + v13[2])
  {
    [v13 _manuallyProcessContentWithRange:?];
  }

  v14 = *(*(a1 + 56) + 8);
  v16 = *(v14 + 40);
  v15 = (v14 + 40);
  if (!v16)
  {
    objc_storeStrong(v15, v5);
  }

  if (v4 == 1 && (*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    v17 = [MEMORY[0x1E696AB08] newlineCharacterSet];
    *(*(*(a1 + 64) + 8) + 24) = [v17 characterIsMember:{objc_msgSend(v33, "characterAtIndex:", 0)}];
  }

  if (!v5)
  {
    [*(a1 + 40) _manuallyProcessContentWithRange:{v3, v4}];
    *(*(*(a1 + 72) + 8) + 24) = 1;
    goto LABEL_26;
  }

  if (v5 != *(*(*(a1 + 56) + 8) + 40))
  {
    if ([*(a1 + 40) _addLanguageTagForCurrentChunk])
    {
      v18 = *(a1 + 40);
      v19 = *(v18 + 16);
      v20 = *(v18 + 24);
      *(v18 + 24) = 0;
      [*(a1 + 40) _manuallyProcessContentWithRange:{v19, v20}];
      *(*(*(a1 + 72) + 8) + 24) = 1;
    }

    objc_storeStrong((*(*(a1 + 56) + 8) + 40), v5);
    v21 = *(a1 + 40);
    v22 = *(v21 + 24);
    if (!v22)
    {
      *(v21 + 24) = v4;
      v23 = *(*(*(a1 + 64) + 8) + 24);
      v24 = [*(a1 + 40) tags];
      v25 = [v24 lastObject];
      [v25 setCreatedFromNewline:v23];

LABEL_25:
      *(*(*(a1 + 64) + 8) + 24) = 0;
      goto LABEL_26;
    }

LABEL_24:
    *(v21 + 24) = v22 + v4;
    goto LABEL_25;
  }

  v26 = *(a1 + 40);
  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    if ([v26 _addLanguageTagForCurrentChunk])
    {
      v27 = *(a1 + 40);
      v28 = *(v27 + 16);
      v29 = *(v27 + 24);
      *(v27 + 24) = 0;
      [*(a1 + 40) _manuallyProcessContentWithRange:{v28, v29}];
      *(*(*(a1 + 72) + 8) + 24) = 1;
    }

    v21 = *(a1 + 40);
    v22 = *(v21 + 24);
    if (!v22)
    {
      *(v21 + 24) = v4;
      v31 = [*(a1 + 40) tags];
      v32 = [v31 lastObject];
      [v32 setCreatedFromNewline:1];

      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v26[3] += v4;
LABEL_26:
  v30 = *(*(a1 + 48) + 8);
  *(v30 + 32) = v3;
  *(v30 + 40) = v4;
}

- (BOOL)_isStringCombinationOfCommonAndEmoji:(id)a3
{
  v3 = a3;
  v4 = +[AXLanguageManager sharedInstance];
  v5 = 0;
  while (v5 < [v3 length])
  {
    v6 = [v3 length] - v5;
    v13 = 0;
    v14 = &v13;
    v15 = 0x3010000000;
    v16 = &unk_18B3155F1;
    v17 = 0;
    v18 = 0;
    v7 = [v4 commonCharacters];
    v17 = [v3 rangeOfCharacterFromSet:v7 options:0 range:{v5, v6}];
    v18 = v8;

    v9 = v14;
    v10 = v14[4];
    if (v10 <= v5)
    {
      if (v10 != v5)
      {
LABEL_8:
        _Block_object_dispose(&v13, 8);
        v11 = 0;
        goto LABEL_9;
      }
    }

    else
    {
      [v3 length];
      CEMEnumerateEmojiTokensInStringWithBlock();
      v9 = v14;
      if (v14[4] > v5)
      {
        goto LABEL_8;
      }
    }

    v5 += v9[5];
    _Block_object_dispose(&v13, 8);
  }

  v11 = v5 == [v3 length];
LABEL_9:

  return v11;
}

uint64_t __64__AXLanguageTaggedContent__isStringCombinationOfCommonAndEmoji___block_invoke(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (a3 >= *(result + 40))
  {
    v5 = *(*(result + 32) + 8);
    *(v5 + 32) = a3;
    *(v5 + 40) = a4;
    *a5 = 1;
  }

  return result;
}

- (id)significantAmbiguousLangMapsForUserKeyboards
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = +[AXLanguageManager sharedInstance];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v2 ambiguousDialectsFromUserKeyboardPreferences];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) langMap];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)unambiguousLangMaps
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = [(AXLanguageTaggedContent *)self tags];
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v10 = [v9 unambiguousDialects];
        v11 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v18;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v18 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = [*(*(&v17 + 1) + 8 * j) langMap];
              [v3 addObject:v15];
            }

            v12 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
          }

          while (v12);
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)ambiguousLangMaps
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = [(AXLanguageTaggedContent *)self tags];
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v10 = [v9 ambiguousDialects];
        v11 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v18;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v18 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = [*(*(&v17 + 1) + 8 * j) langMap];
              [v3 addObject:v15];
            }

            v12 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
          }

          while (v12);
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BOOL)hasOnlyWesternLangMaps
{
  v39 = *MEMORY[0x1E69E9840];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v2 = [(AXLanguageTaggedContent *)self tags];
  v3 = [v2 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (!v3)
  {
    v21 = 1;
    goto LABEL_27;
  }

  v4 = v3;
  v5 = *v33;
  v23 = *v33;
  while (2)
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v33 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v32 + 1) + 8 * i);
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v8 = [v7 unambiguousDialects];
      v9 = [v8 countByEnumeratingWithState:&v28 objects:v37 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v29;
LABEL_8:
        v12 = 0;
        while (1)
        {
          if (*v29 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v28 + 1) + 8 * v12) langMap];
          v14 = [v13 isWestern];

          if (!v14)
          {
            goto LABEL_25;
          }

          if (v10 == ++v12)
          {
            v10 = [v8 countByEnumeratingWithState:&v28 objects:v37 count:16];
            if (v10)
            {
              goto LABEL_8;
            }

            break;
          }
        }
      }

      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v8 = [v7 ambiguousDialects];
      v15 = [v8 countByEnumeratingWithState:&v24 objects:v36 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v25;
LABEL_16:
        v18 = 0;
        while (1)
        {
          if (*v25 != v17)
          {
            objc_enumerationMutation(v8);
          }

          v19 = [*(*(&v24 + 1) + 8 * v18) langMap];
          v20 = [v19 isWestern];

          if (!v20)
          {
            break;
          }

          if (v16 == ++v18)
          {
            v16 = [v8 countByEnumeratingWithState:&v24 objects:v36 count:16];
            if (v16)
            {
              goto LABEL_16;
            }

            goto LABEL_22;
          }
        }

LABEL_25:

        v21 = 0;
        goto LABEL_27;
      }

LABEL_22:

      v5 = v23;
    }

    v4 = [v2 countByEnumeratingWithState:&v32 objects:v38 count:16];
    v21 = 1;
    if (v4)
    {
      continue;
    }

    break;
  }

LABEL_27:

  return v21;
}

- (BOOL)hasOnlyNonWesternLangMaps
{
  v39 = *MEMORY[0x1E69E9840];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v2 = [(AXLanguageTaggedContent *)self tags];
  v3 = [v2 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (!v3)
  {
    v21 = 1;
    goto LABEL_27;
  }

  v4 = v3;
  v5 = *v33;
  v23 = *v33;
  while (2)
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v33 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v32 + 1) + 8 * i);
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v8 = [v7 unambiguousDialects];
      v9 = [v8 countByEnumeratingWithState:&v28 objects:v37 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v29;
LABEL_8:
        v12 = 0;
        while (1)
        {
          if (*v29 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v28 + 1) + 8 * v12) langMap];
          v14 = [v13 isWestern];

          if (v14)
          {
            goto LABEL_25;
          }

          if (v10 == ++v12)
          {
            v10 = [v8 countByEnumeratingWithState:&v28 objects:v37 count:16];
            if (v10)
            {
              goto LABEL_8;
            }

            break;
          }
        }
      }

      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v8 = [v7 ambiguousDialects];
      v15 = [v8 countByEnumeratingWithState:&v24 objects:v36 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v25;
LABEL_16:
        v18 = 0;
        while (1)
        {
          if (*v25 != v17)
          {
            objc_enumerationMutation(v8);
          }

          v19 = [*(*(&v24 + 1) + 8 * v18) langMap];
          v20 = [v19 isWestern];

          if (v20)
          {
            break;
          }

          if (v16 == ++v18)
          {
            v16 = [v8 countByEnumeratingWithState:&v24 objects:v36 count:16];
            if (v16)
            {
              goto LABEL_16;
            }

            goto LABEL_22;
          }
        }

LABEL_25:

        v21 = 0;
        goto LABEL_27;
      }

LABEL_22:

      v5 = v23;
    }

    v4 = [v2 countByEnumeratingWithState:&v32 objects:v38 count:16];
    v21 = 1;
    if (v4)
    {
      continue;
    }

    break;
  }

LABEL_27:

  return v21;
}

- (id)_preferredLanguagesForTagging
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 spokenContentDefaultFallbackLanguage];

  if (v3)
  {
    v6[0] = v3;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_manuallyProcessContentWithRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v83 = *MEMORY[0x1E69E9840];
  v5 = AXLogSpokenContentTextProcessing();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);

  if (v6)
  {
    v7 = [(AXLanguageTaggedContent *)self contentString];
    v8 = [v7 substringWithRange:{location, length}];
    [(AXLanguageTaggedContent *)self _debugLog:@"Manual process:" token:v8 range:location script:length dialects:0, self->_currentDialects];
  }

  v67 = +[AXLanguageManager sharedInstance];
  if (length)
  {
    v10 = 0;
    *&v9 = 138413315;
    v66 = v9;
    do
    {
      v11 = [(AXLanguageTaggedContent *)self contentString];
      v12 = [v11 rangeOfComposedCharacterSequenceAtIndex:location + v10];
      v14 = v13;

      v15 = [(AXLanguageTaggedContent *)self contentString];
      v16 = [v15 substringWithRange:{v12, v14}];

      v17 = AXLogSpokenContentTextProcessing();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v33 = [MEMORY[0x1E696AD98] numberWithInteger:v10];
        v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:length];
        v35 = [v16 stringByReplacingOccurrencesOfString:@"\n" withString:@"<newline>"];
        if (self->_currentDialects)
        {
          currentDialects = self->_currentDialects;
        }

        else
        {
          currentDialects = &stru_1EFE6D570;
        }

        v37 = NSStringFromRange(self->_currentChunk);
        *v77 = v66;
        *&v77[4] = v33;
        *&v77[12] = 2112;
        *&v77[14] = v34;
        *&v77[22] = 2113;
        v78 = v35;
        v79 = 2112;
        v80 = currentDialects;
        v81 = 2112;
        v82 = v37;
        _os_log_debug_impl(&dword_18B15E000, v17, OS_LOG_TYPE_DEBUG, "Iterate char %@/%@: '%{private}@' %@ %@", v77, 0x34u);
      }

      v18 = [v16 characterAtIndex:0];
      if ([v16 length] == 1 && objc_msgSend(v67, "isCharacterCommon:", v18))
      {
        v19 = AXLogSpokenContentTextProcessing();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          if (self->_currentDialects)
          {
            v48 = self->_currentDialects;
          }

          else
          {
            v48 = &stru_1EFE6D570;
          }

          v49 = NSStringFromRange(self->_currentChunk);
          *v77 = 138412546;
          *&v77[4] = v48;
          *&v77[12] = 2112;
          *&v77[14] = v49;
          _os_log_debug_impl(&dword_18B15E000, v19, OS_LOG_TYPE_DEBUG, "Skipping common char. %@ %@", v77, 0x16u);
        }
      }

      else
      {
        if ([(NSArray *)self->_currentDialects count])
        {
          *v77 = 0;
          *&v77[8] = v77;
          *&v77[16] = 0x2020000000;
          LOBYTE(v78) = 0;
          if (AXLanguageIsSpeakableEmojiString())
          {
            *(*&v77[8] + 24) = 1;
LABEL_23:
            v22 = AXLogSpokenContentTextProcessing();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
            {
              v23 = self->_currentDialects;
              v24 = NSStringFromRange(self->_currentChunk);
              *buf = 138412546;
              v74 = v23;
              v75 = 2112;
              v76 = v24;
              _os_log_debug_impl(&dword_18B15E000, v22, OS_LOG_TYPE_DEBUG, "Add to exisiting %@ %@", buf, 0x16u);
            }
          }

          else
          {
            v21 = self->_currentDialects;
            v69[0] = MEMORY[0x1E69E9820];
            v69[1] = 3221225472;
            v69[2] = __60__AXLanguageTaggedContent__manuallyProcessContentWithRange___block_invoke;
            v69[3] = &unk_1E71EBE18;
            v70 = v16;
            v71 = v77;
            [(NSArray *)v21 enumerateObjectsUsingBlock:v69];

            if (*(*&v77[8] + 24))
            {
              goto LABEL_23;
            }

            v25 = [(AXLanguageTaggedContent *)self _preferredLanguagesForTagging];
            v22 = [v67 dialectsThatCanSpeakCharacter:v18 overridePreferredLanguages:v25 allowTransliteration:0 preferOverrides:1];

            if ([v22 count])
            {
              if (self->_currentDialects)
              {
                [(AXLanguageTaggedContent *)self _addTag];
              }

              [(AXLanguageTaggedContent *)self setCurrentDialects:v22];
              v26 = AXLogSpokenContentTextProcessing();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
              {
                v27 = [(AXLanguageTaggedContent *)self _preferredLanguagesForTagging];
                *buf = 138412290;
                v74 = v27;
                _os_log_impl(&dword_18B15E000, v26, OS_LOG_TYPE_INFO, "OverridePreferredLanguages: %@", buf, 0xCu);
              }

              v28 = AXLogSpokenContentTextProcessing();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
              {
                v29 = [(AXLanguageTaggedContent *)self currentDialects];
                *buf = 138412290;
                v74 = v29;
                _os_log_impl(&dword_18B15E000, v28, OS_LOG_TYPE_INFO, "Setting currentDialects to dialectsThatCanSpeakCharacter: %@", buf, 0xCu);
              }

              v30 = AXLogSpokenContentTextProcessing();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
              {
                v31 = self->_currentDialects;
                v32 = NSStringFromRange(self->_currentChunk);
                *buf = 138412546;
                v74 = v31;
                v75 = 2112;
                v76 = v32;
                _os_log_impl(&dword_18B15E000, v30, OS_LOG_TYPE_INFO, "Start new chunk %@ %@", buf, 0x16u);
              }
            }

            else
            {
              v30 = AXLogSpokenContentTextProcessing();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
              {
                v38 = self->_currentDialects;
                v39 = NSStringFromRange(self->_currentChunk);
                *buf = 138412546;
                v74 = v38;
                v75 = 2112;
                v76 = v39;
                _os_log_impl(&dword_18B15E000, v30, OS_LOG_TYPE_INFO, "Char is unspeakable. %@ %@", buf, 0x16u);
              }
            }
          }

          _Block_object_dispose(v77, 8);
          goto LABEL_42;
        }

        v20 = AXLogSpokenContentTextProcessing();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          if (self->_currentDialects)
          {
            v46 = self->_currentDialects;
          }

          else
          {
            v46 = &stru_1EFE6D570;
          }

          v47 = NSStringFromRange(self->_currentChunk);
          *v77 = 138412546;
          *&v77[4] = v46;
          *&v77[12] = 2112;
          *&v77[14] = v47;
          _os_log_debug_impl(&dword_18B15E000, v20, OS_LOG_TYPE_DEBUG, "No current dialects. %@ %@", v77, 0x16u);
        }

        if ((AXLanguageIsSpeakableEmojiString() & 1) != 0 || [v16 length] != 1)
        {
          goto LABEL_42;
        }

        if (v18 == 8722)
        {
          v18 = 45;
        }

        else
        {
          v18 = v18;
        }

        if (![v67 isCharacterCommon:v18])
        {
          v40 = [(AXLanguageTaggedContent *)self _preferredLanguagesForTagging];
          v41 = [v67 dialectsThatCanSpeakCharacter:v18 overridePreferredLanguages:v40 allowTransliteration:0 preferOverrides:1];
          [(AXLanguageTaggedContent *)self setCurrentDialects:v41];

          v42 = AXLogSpokenContentTextProcessing();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
          {
            v43 = [(AXLanguageTaggedContent *)self _preferredLanguagesForTagging];
            *v77 = 138412290;
            *&v77[4] = v43;
            _os_log_impl(&dword_18B15E000, v42, OS_LOG_TYPE_INFO, "OverridePreferredLanguages: %@", v77, 0xCu);
          }

          v44 = AXLogSpokenContentTextProcessing();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
          {
            v45 = [(AXLanguageTaggedContent *)self currentDialects];
            *v77 = 138412290;
            *&v77[4] = v45;
            _os_log_impl(&dword_18B15E000, v44, OS_LOG_TYPE_INFO, "Setting currentDialects to dialectsThatCanSpeakCharacter: %@", v77, 0xCu);
          }

          goto LABEL_42;
        }

        v19 = AXLogSpokenContentTextProcessing();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          if (self->_currentDialects)
          {
            v50 = self->_currentDialects;
          }

          else
          {
            v50 = &stru_1EFE6D570;
          }

          v51 = NSStringFromRange(self->_currentChunk);
          *v77 = 138412546;
          *&v77[4] = v50;
          *&v77[12] = 2112;
          *&v77[14] = v51;
          _os_log_debug_impl(&dword_18B15E000, v19, OS_LOG_TYPE_DEBUG, "Skipping first common char. %@ %@", v77, 0x16u);
        }
      }

LABEL_42:
      ++self->_currentChunk.length;

      ++v10;
    }

    while (length != v10);
  }

  v52 = +[AXLanguageManager sharedInstance];
  v53 = [v52 dialectForCurrentLocale];

  if (!v53)
  {
    v54 = AXLogSpokenContentTextProcessing();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
    {
      v61 = [v67 systemLanguageID];
      v62 = [v67 userLocale];
      v63 = [v62 objectForKey:*MEMORY[0x1E695D9B0]];
      v64 = [v67 userLocale];
      v65 = [v64 objectForKey:*MEMORY[0x1E695D978]];
      *v77 = 138412802;
      *&v77[4] = v61;
      *&v77[12] = 2112;
      *&v77[14] = v63;
      *&v77[22] = 2112;
      v78 = v65;
      _os_log_impl(&dword_18B15E000, v54, OS_LOG_TYPE_INFO, "Failed to find dialect map for system language: %@, locale language: %@, locale region: %@", v77, 0x20u);
    }

    goto LABEL_68;
  }

  v54 = [(AXLanguageTaggedContent *)self currentDialects];
  if (([v54 containsObject:v53]& 1) != 0)
  {
LABEL_68:

    goto LABEL_69;
  }

  v55 = [v53 speakableCharacters];
  v56 = v55 == 0;

  if (v56)
  {
    v72 = v53;
    v57 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v72 count:1];
    v58 = [(AXLanguageTaggedContent *)self currentDialects];
    v59 = [v57 arrayByAddingObjectsFromArray:v58];
    [(AXLanguageTaggedContent *)self setCurrentDialects:v59];

    v54 = AXLogSpokenContentTextProcessing();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
    {
      v60 = [v53 specificLanguageID];
      *v77 = 138412290;
      *&v77[4] = v60;
      _os_log_impl(&dword_18B15E000, v54, OS_LOG_TYPE_INFO, "Adding language %@ to content because we don't have spoken range", v77, 0xCu);
    }

    goto LABEL_68;
  }

LABEL_69:
}

uint64_t __60__AXLanguageTaggedContent__manuallyProcessContentWithRange___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 canSpeakString:*(a1 + 32) allowsTransliteration:0];
  if (result)
  {
    *a4 = 1;
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return result;
}

- (void)_addTag
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = [(AXLanguageTaggedContent *)self currentDialects];

  if (!v3)
  {
    v4 = AXLogSpokenContentTextProcessing();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      [(AXLanguageTaggedContent *)v4 _addTag];
    }
  }

  v5 = [(AXLanguageTaggedContent *)self currentDialects];
  v6 = [(AXLanguageTaggedContent *)self contentString];
  v7 = [AXLanguageTag tagWithDialects:v5 range:self->_currentChunk.location content:self->_currentChunk.length predictedByTagger:v6, self->_predictedByTagger];

  if (!self->_predictedByTagger && [v7 hasAmbigiousDialects])
  {
    v8 = +[AXLanguageManager sharedInstance];
    v9 = [v8 dialectForSystemLanguage];
    v10 = [v9 langMap];
    v11 = [v10 isAmbiguous];

    if (v11 && [v7 canBeSpokenByDialect:v9])
    {
      [v7 addAmbiguousDialect:v9];
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v12 = [v8 ambiguousDialectsFromUserKeyboardPreferences];
    v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v22;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v21 + 1) + 8 * i);
          if ([v7 canBeSpokenByDialect:v17])
          {
            [v7 addAmbiguousDialect:v17];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v14);
    }
  }

  [v7 setCreatedFromNewline:0];
  v18 = [(AXLanguageTaggedContent *)self tags];
  [v18 addObject:v7];

  self->_predictedByTagger = 0;
  v19 = AXLogSpokenContentTextProcessing();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    *v20 = 0;
    _os_log_impl(&dword_18B15E000, v19, OS_LOG_TYPE_INFO, "Setting currentDialects to nil", v20, 2u);
  }

  [(AXLanguageTaggedContent *)self setCurrentDialects:0];
  self->_currentChunk.location += self->_currentChunk.length;
  self->_currentChunk.length = 0;
}

- (id)primaryAmbiguousDialect
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = [(AXLanguageTaggedContent *)self ambiguousLangMaps];
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 spokenContentDefaultFallbackLanguage];

  if (v4)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v5 = v2;
    v6 = [v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v29;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v29 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v28 + 1) + 8 * i);
          v11 = [v10 generalLanguageID];
          v12 = [v11 isEqual:v4];

          if (v12)
          {
            v22 = [v10 defaultDialect];
            goto LABEL_22;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }
  }

  v13 = +[AXLanguageManager sharedInstance];
  v5 = [v13 systemLanguageID];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = v2;
  v15 = [v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v25;
LABEL_13:
    v18 = 0;
    while (1)
    {
      if (*v25 != v17)
      {
        objc_enumerationMutation(v14);
      }

      v19 = *(*(&v24 + 1) + 8 * v18);
      v20 = [v19 generalLanguageID];
      v21 = [v20 isEqual:v5];

      if (v21)
      {
        break;
      }

      if (v16 == ++v18)
      {
        v16 = [v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v16)
        {
          goto LABEL_13;
        }

        goto LABEL_19;
      }
    }
  }

  else
  {
LABEL_19:

    v19 = [v14 firstObject];
    v14 = v19;
  }

  v22 = [v19 defaultDialect];

LABEL_22:

  return v22;
}

- (id)primaryUnambiguousDialect
{
  v2 = [(AXLanguageTaggedContent *)self unambiguousLangMaps];
  v3 = [v2 firstObject];
  v4 = [v3 defaultDialect];

  return v4;
}

- (void)updateTagsForLocalePrefChange
{
  v39 = *MEMORY[0x1E69E9840];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = [(AXLanguageTaggedContent *)self tags];
  v23 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v23)
  {
    v22 = *v33;
    v2 = 0x1E695D000uLL;
    do
    {
      v3 = 0;
      do
      {
        if (*v33 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v32 + 1) + 8 * v3);
        v5 = [*(v2 + 4000) orderedSet];
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v6 = [v4 ambiguousDialects];
        v7 = [v6 countByEnumeratingWithState:&v28 objects:v37 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v29;
          do
          {
            v10 = 0;
            do
            {
              if (*v29 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = [*(*(&v28 + 1) + 8 * v10) langMap];
              v12 = [v11 defaultDialect];
              [v5 addObject:v12];

              ++v10;
            }

            while (v8 != v10);
            v8 = [v6 countByEnumeratingWithState:&v28 objects:v37 count:16];
          }

          while (v8);
        }

        v13 = [*(v2 + 4000) orderedSet];
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v14 = [v4 unambiguousDialects];
        v15 = [v14 countByEnumeratingWithState:&v24 objects:v36 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v25;
          do
          {
            v18 = 0;
            do
            {
              if (*v25 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = [*(*(&v24 + 1) + 8 * v18) langMap];
              v20 = [v19 defaultDialect];
              [v13 addObject:v20];

              ++v18;
            }

            while (v16 != v18);
            v16 = [v14 countByEnumeratingWithState:&v24 objects:v36 count:16];
          }

          while (v16);
        }

        [v4 setAmbiguousDialects:v5];
        [v4 setUnambiguousDialects:v13];

        ++v3;
        v2 = 0x1E695D000;
      }

      while (v3 != v23);
      v23 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v23);
  }
}

@end