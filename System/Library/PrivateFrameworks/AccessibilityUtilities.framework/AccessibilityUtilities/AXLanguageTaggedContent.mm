@interface AXLanguageTaggedContent
- ($1230CF39250A084FEEB876D19862D23B)_languageHintsEvenlyDistributedWithProbability:(float)probability excludingHints:(id)hints;
- (AXLanguageTaggedContent)initWithContent:(id)content;
- (BOOL)_addLanguageTagForCurrentChunk;
- (BOOL)_addLanguageTagForDateIfNecessary;
- (BOOL)_isNamedEntity:(id)entity;
- (BOOL)_isStringCombinationOfCommonAndEmoji:(id)emoji;
- (BOOL)hasOnlyNonWesternLangMaps;
- (BOOL)hasOnlyWesternLangMaps;
- (id)_overrideLanguageDetection:(id)detection;
- (id)_preferredLanguagesForTagging;
- (id)ambiguousLangMaps;
- (id)description;
- (id)langCodeForlangId:(int)id;
- (id)primaryAmbiguousDialect;
- (id)primaryUnambiguousDialect;
- (id)significantAmbiguousLangMapsForUserKeyboards;
- (id)unambiguousLangMaps;
- (int)langIDforLangCode:(id)code;
- (void)_addTag;
- (void)_debugLog:(id)log token:(id)token range:(_NSRange)range script:(id)script dialects:(id)dialects;
- (void)_manuallyProcessContentWithRange:(_NSRange)range;
- (void)_searchForShorthandDates;
- (void)appendLanguageTaggedContent:(id)content;
- (void)dealloc;
- (void)enumeratePredictedTags:(id)tags;
- (void)enumerateUnpredictedTags:(id)tags;
- (void)tagContent;
- (void)updateTagsForLocalePrefChange;
@end

@implementation AXLanguageTaggedContent

- (AXLanguageTaggedContent)initWithContent:(id)content
{
  v10[1] = *MEMORY[0x1E69E9840];
  contentCopy = content;
  if (contentCopy && (v8.receiver = self, v8.super_class = AXLanguageTaggedContent, (self = [(AXLanguageTaggedContent *)&v8 init]) != 0))
  {
    v5 = [contentCopy mutableCopy];
    [(AXLanguageTaggedContent *)self setContentString:v5];

    v10[0] = *MEMORY[0x1E6998268];
    [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    self->_nlTagger = NLTaggerCreate();
    v9 = *MEMORY[0x1E6998258];
    [MEMORY[0x1E695DEC8] arrayWithObjects:&v9 count:1];
    self->_namedEntityTagger = NLTaggerCreate();
    self = self;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
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
  tags = [(AXLanguageTaggedContent *)self tags];
  v5 = [tags countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(tags);
        }

        [v3 appendFormat:@"  %@\n", *(*(&v10 + 1) + 8 * i)];
      }

      v6 = [tags countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)appendLanguageTaggedContent:(id)content
{
  v43 = *MEMORY[0x1E69E9840];
  contentCopy = content;
  v5 = AXLogSpokenContentTextProcessing();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_18B15E000, v5, OS_LOG_TYPE_INFO, "Will append new tagged content to current tagged content", buf, 2u);
  }

  contentString = [(AXLanguageTaggedContent *)self contentString];
  contentString2 = [contentCopy contentString];
  [contentString appendString:contentString2];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  tags = [contentCopy tags];
  v9 = [tags countByEnumeratingWithState:&v34 objects:v42 count:16];
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
          objc_enumerationMutation(tags);
        }

        v13 = *(*(&v34 + 1) + 8 * v12);
        content = [(AXLanguageTaggedContent *)self content];
        [v13 setContent:content];

        range = [v13 range];
        contentString3 = [(AXLanguageTaggedContent *)self contentString];
        v17 = [contentString3 length] + range;
        contentString4 = [contentCopy contentString];
        v19 = v17 - [contentString4 length];
        [v13 range];
        [v13 setRange:{v19, v20}];

        ++v12;
      }

      while (v10 != v12);
      v10 = [tags countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v10);
  }

  tags2 = [(AXLanguageTaggedContent *)self tags];
  tags3 = [contentCopy tags];
  [tags2 addObjectsFromArray:tags3];

  unpredictedAmbiguousLangMaps = [(AXLanguageTaggedContent *)self unpredictedAmbiguousLangMaps];
  unpredictedAmbiguousLangMaps2 = [contentCopy unpredictedAmbiguousLangMaps];
  [unpredictedAmbiguousLangMaps unionOrderedSet:unpredictedAmbiguousLangMaps2];

  predictedSecondaryLangMaps = [(AXLanguageTaggedContent *)self predictedSecondaryLangMaps];
  predictedSecondaryLangMaps2 = [contentCopy predictedSecondaryLangMaps];
  [predictedSecondaryLangMaps unionOrderedSet:predictedSecondaryLangMaps2];

  v27 = AXLogSpokenContentTextProcessing();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    currentDialects = [(AXLanguageTaggedContent *)self currentDialects];
    currentDialects2 = [contentCopy currentDialects];
    *buf = 138412546;
    v39 = currentDialects;
    v40 = 2112;
    v41 = currentDialects2;
    _os_log_impl(&dword_18B15E000, v27, OS_LOG_TYPE_INFO, "Combining currentDialects. old: %@. new: %@", buf, 0x16u);
  }

  currentDialects3 = [(AXLanguageTaggedContent *)self currentDialects];
  currentDialects4 = [contentCopy currentDialects];
  v32 = [currentDialects3 arrayByAddingObjectsFromArray:currentDialects4];
  [(AXLanguageTaggedContent *)self setCurrentDialects:v32];

  if ([(AXLanguageTaggedContent *)self isTagged])
  {
    isTagged = [contentCopy isTagged];
  }

  else
  {
    isTagged = 0;
  }

  [(AXLanguageTaggedContent *)self setTagged:isTagged];
}

- (void)enumerateUnpredictedTags:(id)tags
{
  v17 = *MEMORY[0x1E69E9840];
  tagsCopy = tags;
  v15 = 0;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  tags = [(AXLanguageTaggedContent *)self tags];
  v6 = [tags countByEnumeratingWithState:&v11 objects:v16 count:16];
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
        objc_enumerationMutation(tags);
      }

      v10 = *(*(&v11 + 1) + 8 * v9);
      if (([v10 wasPredicted] & 1) == 0)
      {
        tagsCopy[2](tagsCopy, v10, &v15);
        if (v15)
        {
          break;
        }
      }

      if (v7 == ++v9)
      {
        v7 = [tags countByEnumeratingWithState:&v11 objects:v16 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)enumeratePredictedTags:(id)tags
{
  v17 = *MEMORY[0x1E69E9840];
  tagsCopy = tags;
  v15 = 0;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  tags = [(AXLanguageTaggedContent *)self tags];
  v6 = [tags countByEnumeratingWithState:&v11 objects:v16 count:16];
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
        objc_enumerationMutation(tags);
      }

      v10 = *(*(&v11 + 1) + 8 * v9);
      if ([v10 wasPredicted])
      {
        tagsCopy[2](tagsCopy, v10, &v15);
        if (v15)
        {
          break;
        }
      }

      if (v7 == ++v9)
      {
        v7 = [tags countByEnumeratingWithState:&v11 objects:v16 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (id)langCodeForlangId:(int)id
{
  if ((id - 2) > 0x38)
  {
    return @"und";
  }

  else
  {
    return off_1E71EBE38[id - 2];
  }
}

- (int)langIDforLangCode:(id)code
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

  else
  {
    v4 = 1;
  }

  return v4;
}

- ($1230CF39250A084FEEB876D19862D23B)_languageHintsEvenlyDistributedWithProbability:(float)probability excludingHints:(id)hints
{
  hintsCopy = hints;
  _allLangIDs = [(AXLanguageTaggedContent *)self _allLangIDs];
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

    while ([_allLangIDs count] > v12);
  }

  return v8;
}

- (id)_overrideLanguageDetection:(id)detection
{
  v14 = *MEMORY[0x1E69E9840];
  detectionCopy = detection;
  v4 = +[AXLanguageManager sharedInstance];
  dialectForSystemLanguage = [v4 dialectForSystemLanguage];
  specificLanguageID = [dialectForSystemLanguage specificLanguageID];

  if ([detectionCopy hasPrefix:@"zh"] && (objc_msgSend(specificLanguageID, "hasPrefix:", @"ja") & 1) != 0 || objc_msgSend(detectionCopy, "hasPrefix:", @"ja") && objc_msgSend(specificLanguageID, "hasPrefix:", @"zh"))
  {
    v7 = AXLogSpokenContentTextProcessing();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v12 = 138412290;
      v13 = detectionCopy;
      _os_log_impl(&dword_18B15E000, v7, OS_LOG_TYPE_INFO, "Override language {%@} detection to be ja-JP", &v12, 0xCu);
    }

    v8 = +[AXLanguageManager sharedInstance];
    dialectForSystemLanguage2 = [v8 dialectForSystemLanguage];
    specificLanguageID2 = [dialectForSystemLanguage2 specificLanguageID];
  }

  else
  {
    specificLanguageID2 = detectionCopy;
  }

  return specificLanguageID2;
}

- (void)_searchForShorthandDates
{
  v3 = [MEMORY[0x1E696AB60] dataDetectorWithTypes:8 error:0];
  contentString = [(AXLanguageTaggedContent *)self contentString];
  v5 = [contentString length];

  array = [MEMORY[0x1E695DF70] array];
  v7 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v8 = +[AXLanguageManager sharedInstance];
  dialectForSystemLanguage = [v8 dialectForSystemLanguage];

  v10 = MEMORY[0x1E695DF58];
  specificLanguageID = [dialectForSystemLanguage specificLanguageID];
  v12 = [v10 localeWithLocaleIdentifier:specificLanguageID];
  [v7 setLocale:v12];

  shortMonthSymbols = [v7 shortMonthSymbols];
  [array addObjectsFromArray:shortMonthSymbols];

  shortWeekdaySymbols = [v7 shortWeekdaySymbols];
  [array addObjectsFromArray:shortWeekdaySymbols];

  contentString2 = [(AXLanguageTaggedContent *)self contentString];
  v16 = [v3 matchesInString:contentString2 options:0 range:{0, v5}];
  [(AXLanguageTaggedContent *)self setShorthandDateMatches:v16];

  shorthandDateMatches = [(AXLanguageTaggedContent *)self shorthandDateMatches];
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __51__AXLanguageTaggedContent__searchForShorthandDates__block_invoke;
  v23 = &unk_1E71EBD78;
  selfCopy = self;
  v25 = array;
  v18 = array;
  v19 = [shorthandDateMatches ax_filteredArrayUsingBlock:&v20];
  [(AXLanguageTaggedContent *)self setShorthandDateMatches:v19, v20, v21, v22, v23, selfCopy];
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

- (BOOL)_isNamedEntity:(id)entity
{
  entityCopy = entity;
  NLTaggerSetString();
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x2020000000;
  v6[3] = 0;
  [entityCopy length];
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
  shorthandDateMatches = [(AXLanguageTaggedContent *)self shorthandDateMatches];
  if (![shorthandDateMatches count])
  {
LABEL_10:

    return 0;
  }

  nextShorthandDateIndex = [(AXLanguageTaggedContent *)self nextShorthandDateIndex];
  shorthandDateMatches2 = [(AXLanguageTaggedContent *)self shorthandDateMatches];
  v6 = [shorthandDateMatches2 count];

  if (nextShorthandDateIndex >= v6)
  {
    return 0;
  }

  shorthandDateMatches3 = [(AXLanguageTaggedContent *)self shorthandDateMatches];
  shorthandDateMatches = [shorthandDateMatches3 objectAtIndexedSubscript:{-[AXLanguageTaggedContent nextShorthandDateIndex](self, "nextShorthandDateIndex")}];

  range = [shorthandDateMatches range];
  location = self->_currentChunk.location;
  length = self->_currentChunk.length;
  if (location != range || length != v9)
  {
    v18 = length + location;
    range2 = [shorthandDateMatches range];
    if (v18 > range2 + v20)
    {
      [(AXLanguageTaggedContent *)self setNextShorthandDateIndex:[(AXLanguageTaggedContent *)self nextShorthandDateIndex]+ 1];
    }

    goto LABEL_10;
  }

  [(AXLanguageTaggedContent *)self setNextShorthandDateIndex:[(AXLanguageTaggedContent *)self nextShorthandDateIndex]+ 1];
  v12 = +[AXLanguageManager sharedInstance];
  dialectForSystemLanguage = [v12 dialectForSystemLanguage];
  v23[0] = dialectForSystemLanguage;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  [(AXLanguageTaggedContent *)self setCurrentDialects:v14];

  v15 = AXLogSpokenContentTextProcessing();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    currentDialects = [(AXLanguageTaggedContent *)self currentDialects];
    v21 = 138412290;
    v22 = currentDialects;
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
  contentString = [(AXLanguageTaggedContent *)self contentString];
  v6 = [contentString length];

  if (v4 > v6)
  {
    v7 = AXLogSpokenContentTextProcessing();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [(AXLanguageTaggedContent *)v7 _addLanguageTagForCurrentChunk];
    }

    contentString2 = [(AXLanguageTaggedContent *)self contentString];
    self->_currentChunk.length = [contentString2 length] - self->_currentChunk.location;
  }

  v9 = +[AXSettings sharedInstance];
  spokenContentShouldUseLanguageDetection = [v9 spokenContentShouldUseLanguageDetection];

  if (spokenContentShouldUseLanguageDetection)
  {
    contentString3 = [(AXLanguageTaggedContent *)self contentString];
    v12 = [contentString3 substringWithRange:{self->_currentChunk.location, self->_currentChunk.length}];

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

      preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
      v17 = [preferredLanguages count];
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
          v26 = [preferredLanguages objectAtIndexedSubscript:v22];
          v27 = [v25 numberWithUnsignedInt:{-[AXLanguageTaggedContent langIDforLangCode:](self, "langIDforLangCode:", v26)}];
          [v20 setObject:v24 forKeyedSubscript:v27];

          ++v22;
          --v19;
        }

        while (v19);
      }

      LODWORD(v21) = 1053609165;
      v28 = [(AXLanguageTaggedContent *)self _languageHintsEvenlyDistributedWithProbability:v20 excludingHints:v21];
      _allLangIDs = [(AXLanguageTaggedContent *)self _allLangIDs];
      [_allLangIDs count];
      NLLanguageIdentifierSetLanguageHints();

      memset(v80, 0, 24);
      NLLanguageIdentifierGetTopHypotheses();
      orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
      v31 = orderedSet;
      v60 = v28;
      if (LODWORD(v80[0]) <= 1 || *(v80 + 1) <= 0.9)
      {
        v63 = 0;
        v12 = v61;
      }

      else
      {
        v65 = orderedSet;
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
            preferredLanguages2 = [MEMORY[0x1E695DF58] preferredLanguages];
            v37 = [preferredLanguages2 countByEnumeratingWithState:&v68 objects:v79 count:16];
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
                    objc_enumerationMutation(preferredLanguages2);
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

                v38 = [preferredLanguages2 countByEnumeratingWithState:&v68 objects:v79 count:16];
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
        dialectForSystemLanguage = [v48 dialectForSystemLanguage];
        specificLanguageID = [dialectForSystemLanguage specificLanguageID];

        specificLanguageID2 = [*&v47 specificLanguageID];
        v62 = specificLanguageID;
        v52 = ([specificLanguageID isEqualToString:specificLanguageID2] & 1) == 0 && -[AXLanguageTaggedContent _isNamedEntity:](self, "_isNamedEntity:", v12);

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
          tags = [(AXLanguageTaggedContent *)self tags];
          tags2 = [(AXLanguageTaggedContent *)self tags];
          v53 = [tags objectAtIndex:{objc_msgSend(tags2, "count") - 1}];

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

- (void)_debugLog:(id)log token:(id)token range:(_NSRange)range script:(id)script dialects:(id)dialects
{
  length = range.length;
  location = range.location;
  v32 = *MEMORY[0x1E69E9840];
  logCopy = log;
  tokenCopy = token;
  scriptCopy = script;
  dialectsCopy = dialects;
  v16 = AXLogSpokenContentTextProcessing();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17 = [tokenCopy stringByReplacingOccurrencesOfString:@"\n" withString:@"<newline>"];
    v33.location = location;
    v33.length = length;
    v18 = NSStringFromRange(v33);
    v19 = &stru_1EFE6D570;
    if ([(__CFString *)scriptCopy length])
    {
      v20 = scriptCopy;
    }

    else
    {
      v20 = &stru_1EFE6D570;
    }

    v21 = [dialectsCopy count];
    if (v21)
    {
      v19 = [dialectsCopy description];
    }

    v22 = 138413315;
    v23 = logCopy;
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
    selfCopy = self;
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

    [(AXLanguageTaggedContent *)selfCopy setCurrentDialects:0];
    v117 = 0;
    v118 = &v117;
    v119 = 0x2020000000;
    v120 = 0;
    contentString = [(AXLanguageTaggedContent *)selfCopy contentString];
    [(AXLanguageTaggedContent *)selfCopy setNextShorthandDateIndex:0];
    [(AXLanguageTaggedContent *)selfCopy _searchForShorthandDates];
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

    p_isa = &selfCopy->super.isa;
    [contentString length];
    v97 = MEMORY[0x1E69E9820];
    v98 = 3221225472;
    v99 = __37__AXLanguageTaggedContent_tagContent__block_invoke;
    v100 = &unk_1E71EBDC8;
    v68 = contentString;
    v101 = v68;
    v102 = selfCopy;
    v103 = buf;
    v104 = v109;
    v105 = v107;
    v106 = &v117;
    NLTaggerEnumerateTokens();
    if ([(AXLanguageTaggedContent *)selfCopy _addLanguageTagForCurrentChunk])
    {
      location = selfCopy->_currentChunk.location;
      length = selfCopy->_currentChunk.length;
      selfCopy->_currentChunk.length = 0;
      [(AXLanguageTaggedContent *)selfCopy _manuallyProcessContentWithRange:location, length, v68];
      *(v118 + 24) = 1;
    }

    v9 = selfCopy->_currentChunk.length;
    if (v9)
    {
      v10 = selfCopy->_currentChunk.location;
      contentString2 = [(AXLanguageTaggedContent *)selfCopy contentString];
      v12 = v10 + v9 > [contentString2 length];

      p_isa = &selfCopy->super.isa;
      if (!v12)
      {
        if (![(NSArray *)selfCopy->_currentDialects count])
        {
          dialectForSystemLanguage = [v71 dialectForSystemLanguage];
          if (v118[3])
          {
            contentString3 = [(AXLanguageTaggedContent *)selfCopy contentString];
            v15 = [(AXLanguageTaggedContent *)selfCopy _isStringCombinationOfCommonAndEmoji:contentString3];
            if (dialectForSystemLanguage)
            {
              v16 = v15;
            }

            else
            {
              v16 = 0;
            }

            if (v16)
            {
              v131 = dialectForSystemLanguage;
              v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v131 count:1];
              [(AXLanguageTaggedContent *)selfCopy setCurrentDialects:v17];

              v18 = AXLogSpokenContentTextProcessing();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
              {
                currentDialects = [(AXLanguageTaggedContent *)selfCopy currentDialects];
                *v121 = 138412290;
                v122 = currentDialects;
                _os_log_impl(&dword_18B15E000, v18, OS_LOG_TYPE_INFO, "Setting currentDialects to dialectForSystemLanguage: %@", v121, 0xCu);
              }
            }
          }

          else
          {
            array = [MEMORY[0x1E695DF70] array];
            contentString3 = array;
            if (dialectForSystemLanguage)
            {
              [(AXLanguageTaggedContent *)array addObject:dialectForSystemLanguage];
            }

            v95 = 0u;
            v96 = 0u;
            v93 = 0u;
            v94 = 0u;
            significantAmbiguousLangMapsForUserKeyboards = [(AXLanguageTaggedContent *)selfCopy significantAmbiguousLangMapsForUserKeyboards];
            v22 = [significantAmbiguousLangMapsForUserKeyboards countByEnumeratingWithState:&v93 objects:v132 count:16];
            if (v22)
            {
              v23 = *v94;
              do
              {
                for (i = 0; i != v22; ++i)
                {
                  if (*v94 != v23)
                  {
                    objc_enumerationMutation(significantAmbiguousLangMapsForUserKeyboards);
                  }

                  v25 = *(*(&v93 + 1) + 8 * i);
                  defaultDialect = [v25 defaultDialect];
                  v27 = [defaultDialect isEqual:dialectForSystemLanguage];

                  if ((v27 & 1) == 0)
                  {
                    defaultDialect2 = [v25 defaultDialect];
                    [(AXLanguageTaggedContent *)contentString3 addObject:defaultDialect2];
                  }
                }

                v22 = [significantAmbiguousLangMapsForUserKeyboards countByEnumeratingWithState:&v93 objects:v132 count:16];
              }

              while (v22);
            }

            v29 = AXLogSpokenContentTextProcessing();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
            {
              *v121 = 138412290;
              v122 = contentString3;
              _os_log_impl(&dword_18B15E000, v29, OS_LOG_TYPE_INFO, "Setting currentDialects to defaultMaps: %@", v121, 0xCu);
            }

            [(AXLanguageTaggedContent *)selfCopy setCurrentDialects:contentString3];
          }

          p_isa = &selfCopy->super.isa;
        }

        if ([p_isa[1] count])
        {
          v30 = AXLogSpokenContentTextProcessing();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            currentDialects = selfCopy->_currentDialects;
            v32 = NSStringFromRange(selfCopy->_currentChunk);
            *v121 = 138412546;
            v122 = currentDialects;
            v123 = 2112;
            v124 = v32;
            _os_log_impl(&dword_18B15E000, v30, OS_LOG_TYPE_INFO, "Add last chunk: %@ %@", v121, 0x16u);
          }

          p_isa = &selfCopy->super.isa;
          [(AXLanguageTaggedContent *)selfCopy _addTag];
        }
      }
    }

    array2 = [MEMORY[0x1E695DF70] array];
    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    tags = [p_isa tags];
    v34 = [tags countByEnumeratingWithState:&v89 objects:v130 count:16];
    if (v34)
    {
      v35 = 0;
      dialect3 = 0;
      v37 = *v90;
      do
      {
        for (j = 0; j != v34; ++j)
        {
          if (*v90 != v37)
          {
            objc_enumerationMutation(tags);
          }

          v39 = *(*(&v89 + 1) + 8 * j);
          if (v35 | dialect3)
          {
            dialect = [*(*(&v89 + 1) + 8 * j) dialect];
            v41 = dialect3 == dialect;

            if (v41)
            {
              range = [v35 range];
              [v35 range];
              v46 = v45;
              [v39 range];
              [v35 setRange:{range, v47 + v46}];
              if ([v39 wasPredicted])
              {
                [v35 setWasPredicted:1];
              }

              [v35 setCreatedFromNewline:{objc_msgSend(v39, "createdFromNewline")}];
            }

            else
            {
              [(NSArray *)array2 addObject:v35];
              v42 = v39;

              dialect2 = [v42 dialect];

              v35 = v42;
              dialect3 = dialect2;
            }
          }

          else
          {
            v35 = v39;
            dialect3 = [v35 dialect];
          }
        }

        v34 = [tags countByEnumeratingWithState:&v89 objects:v130 count:16];
      }

      while (v34);

      if (v35)
      {
        [(NSArray *)array2 addObject:v35];
      }
    }

    else
    {

      dialect3 = 0;
      v35 = 0;
    }

    v48 = AXLogSpokenContentTextProcessing();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
    {
      tags2 = [(AXLanguageTaggedContent *)selfCopy tags];
      *v121 = 138478083;
      v122 = tags2;
      v123 = 2113;
      v124 = array2;
      _os_log_impl(&dword_18B15E000, v48, OS_LOG_TYPE_INFO, "Combining tags. Old tags were: %{private}@. New tags are: %{private}@", v121, 0x16u);
    }

    [(AXLanguageTaggedContent *)selfCopy setTags:array2];
    orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
    orderedSet2 = [MEMORY[0x1E695DFA0] orderedSet];
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    tags3 = [(AXLanguageTaggedContent *)selfCopy tags];
    v53 = [tags3 countByEnumeratingWithState:&v85 objects:v129 count:16];
    if (v53)
    {
      obj = tags3;
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
            predictedSecondaryDialects = [v55 predictedSecondaryDialects];
            v57 = [predictedSecondaryDialects countByEnumeratingWithState:&v77 objects:v127 count:16];
            if (v57)
            {
              v58 = *v78;
              do
              {
                for (m = 0; m != v57; ++m)
                {
                  if (*v78 != v58)
                  {
                    objc_enumerationMutation(predictedSecondaryDialects);
                  }

                  langMap = [*(*(&v77 + 1) + 8 * m) langMap];
                  [orderedSet2 addObject:langMap];
                }

                v57 = [predictedSecondaryDialects countByEnumeratingWithState:&v77 objects:v127 count:16];
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
            predictedSecondaryDialects = [v55 ambiguousDialects];
            v61 = [predictedSecondaryDialects countByEnumeratingWithState:&v81 objects:v128 count:16];
            if (v61)
            {
              v62 = *v82;
              do
              {
                for (n = 0; n != v61; ++n)
                {
                  if (*v82 != v62)
                  {
                    objc_enumerationMutation(predictedSecondaryDialects);
                  }

                  langMap2 = [*(*(&v81 + 1) + 8 * n) langMap];
                  [orderedSet addObject:langMap2];
                }

                v61 = [predictedSecondaryDialects countByEnumeratingWithState:&v81 objects:v128 count:16];
              }

              while (v61);
            }
          }
        }

        tags3 = obj;
        v53 = [obj countByEnumeratingWithState:&v85 objects:v129 count:16];
      }

      while (v53);
    }

    [(AXLanguageTaggedContent *)selfCopy setUnpredictedAmbiguousLangMaps:orderedSet];
    [(AXLanguageTaggedContent *)selfCopy setPredictedSecondaryLangMaps:orderedSet2];
    v65 = AXLogSpokenContentTextProcessing();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
    {
      v66 = selfCopy->_currentDialects;
      v67 = NSStringFromRange(selfCopy->_currentChunk);
      *v121 = 138412802;
      v122 = selfCopy;
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

- (BOOL)_isStringCombinationOfCommonAndEmoji:(id)emoji
{
  emojiCopy = emoji;
  v4 = +[AXLanguageManager sharedInstance];
  v5 = 0;
  while (v5 < [emojiCopy length])
  {
    v6 = [emojiCopy length] - v5;
    v13 = 0;
    v14 = &v13;
    v15 = 0x3010000000;
    v16 = &unk_18B3155F1;
    v17 = 0;
    v18 = 0;
    commonCharacters = [v4 commonCharacters];
    v17 = [emojiCopy rangeOfCharacterFromSet:commonCharacters options:0 range:{v5, v6}];
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
      [emojiCopy length];
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

  v11 = v5 == [emojiCopy length];
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
  ambiguousDialectsFromUserKeyboardPreferences = [v2 ambiguousDialectsFromUserKeyboardPreferences];
  v5 = [ambiguousDialectsFromUserKeyboardPreferences countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(ambiguousDialectsFromUserKeyboardPreferences);
        }

        langMap = [*(*(&v11 + 1) + 8 * i) langMap];
        [v3 addObject:langMap];
      }

      v6 = [ambiguousDialectsFromUserKeyboardPreferences countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  tags = [(AXLanguageTaggedContent *)self tags];
  v5 = [tags countByEnumeratingWithState:&v21 objects:v26 count:16];
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
          objc_enumerationMutation(tags);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        unambiguousDialects = [v9 unambiguousDialects];
        v11 = [unambiguousDialects countByEnumeratingWithState:&v17 objects:v25 count:16];
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
                objc_enumerationMutation(unambiguousDialects);
              }

              langMap = [*(*(&v17 + 1) + 8 * j) langMap];
              [v3 addObject:langMap];
            }

            v12 = [unambiguousDialects countByEnumeratingWithState:&v17 objects:v25 count:16];
          }

          while (v12);
        }
      }

      v6 = [tags countByEnumeratingWithState:&v21 objects:v26 count:16];
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
  tags = [(AXLanguageTaggedContent *)self tags];
  v5 = [tags countByEnumeratingWithState:&v21 objects:v26 count:16];
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
          objc_enumerationMutation(tags);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        ambiguousDialects = [v9 ambiguousDialects];
        v11 = [ambiguousDialects countByEnumeratingWithState:&v17 objects:v25 count:16];
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
                objc_enumerationMutation(ambiguousDialects);
              }

              langMap = [*(*(&v17 + 1) + 8 * j) langMap];
              [v3 addObject:langMap];
            }

            v12 = [ambiguousDialects countByEnumeratingWithState:&v17 objects:v25 count:16];
          }

          while (v12);
        }
      }

      v6 = [tags countByEnumeratingWithState:&v21 objects:v26 count:16];
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
  tags = [(AXLanguageTaggedContent *)self tags];
  v3 = [tags countByEnumeratingWithState:&v32 objects:v38 count:16];
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
        objc_enumerationMutation(tags);
      }

      v7 = *(*(&v32 + 1) + 8 * i);
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      unambiguousDialects = [v7 unambiguousDialects];
      v9 = [unambiguousDialects countByEnumeratingWithState:&v28 objects:v37 count:16];
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
            objc_enumerationMutation(unambiguousDialects);
          }

          langMap = [*(*(&v28 + 1) + 8 * v12) langMap];
          isWestern = [langMap isWestern];

          if (!isWestern)
          {
            goto LABEL_25;
          }

          if (v10 == ++v12)
          {
            v10 = [unambiguousDialects countByEnumeratingWithState:&v28 objects:v37 count:16];
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
      unambiguousDialects = [v7 ambiguousDialects];
      v15 = [unambiguousDialects countByEnumeratingWithState:&v24 objects:v36 count:16];
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
            objc_enumerationMutation(unambiguousDialects);
          }

          langMap2 = [*(*(&v24 + 1) + 8 * v18) langMap];
          isWestern2 = [langMap2 isWestern];

          if (!isWestern2)
          {
            break;
          }

          if (v16 == ++v18)
          {
            v16 = [unambiguousDialects countByEnumeratingWithState:&v24 objects:v36 count:16];
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

    v4 = [tags countByEnumeratingWithState:&v32 objects:v38 count:16];
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
  tags = [(AXLanguageTaggedContent *)self tags];
  v3 = [tags countByEnumeratingWithState:&v32 objects:v38 count:16];
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
        objc_enumerationMutation(tags);
      }

      v7 = *(*(&v32 + 1) + 8 * i);
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      unambiguousDialects = [v7 unambiguousDialects];
      v9 = [unambiguousDialects countByEnumeratingWithState:&v28 objects:v37 count:16];
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
            objc_enumerationMutation(unambiguousDialects);
          }

          langMap = [*(*(&v28 + 1) + 8 * v12) langMap];
          isWestern = [langMap isWestern];

          if (isWestern)
          {
            goto LABEL_25;
          }

          if (v10 == ++v12)
          {
            v10 = [unambiguousDialects countByEnumeratingWithState:&v28 objects:v37 count:16];
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
      unambiguousDialects = [v7 ambiguousDialects];
      v15 = [unambiguousDialects countByEnumeratingWithState:&v24 objects:v36 count:16];
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
            objc_enumerationMutation(unambiguousDialects);
          }

          langMap2 = [*(*(&v24 + 1) + 8 * v18) langMap];
          isWestern2 = [langMap2 isWestern];

          if (isWestern2)
          {
            break;
          }

          if (v16 == ++v18)
          {
            v16 = [unambiguousDialects countByEnumeratingWithState:&v24 objects:v36 count:16];
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

    v4 = [tags countByEnumeratingWithState:&v32 objects:v38 count:16];
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
  spokenContentDefaultFallbackLanguage = [v2 spokenContentDefaultFallbackLanguage];

  if (spokenContentDefaultFallbackLanguage)
  {
    v6[0] = spokenContentDefaultFallbackLanguage;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_manuallyProcessContentWithRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v83 = *MEMORY[0x1E69E9840];
  v5 = AXLogSpokenContentTextProcessing();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);

  if (v6)
  {
    contentString = [(AXLanguageTaggedContent *)self contentString];
    v8 = [contentString substringWithRange:{location, length}];
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
      contentString2 = [(AXLanguageTaggedContent *)self contentString];
      v12 = [contentString2 rangeOfComposedCharacterSequenceAtIndex:location + v10];
      v14 = v13;

      contentString3 = [(AXLanguageTaggedContent *)self contentString];
      v16 = [contentString3 substringWithRange:{v12, v14}];

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

            _preferredLanguagesForTagging = [(AXLanguageTaggedContent *)self _preferredLanguagesForTagging];
            v22 = [v67 dialectsThatCanSpeakCharacter:v18 overridePreferredLanguages:_preferredLanguagesForTagging allowTransliteration:0 preferOverrides:1];

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
                _preferredLanguagesForTagging2 = [(AXLanguageTaggedContent *)self _preferredLanguagesForTagging];
                *buf = 138412290;
                v74 = _preferredLanguagesForTagging2;
                _os_log_impl(&dword_18B15E000, v26, OS_LOG_TYPE_INFO, "OverridePreferredLanguages: %@", buf, 0xCu);
              }

              v28 = AXLogSpokenContentTextProcessing();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
              {
                currentDialects = [(AXLanguageTaggedContent *)self currentDialects];
                *buf = 138412290;
                v74 = currentDialects;
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
          _preferredLanguagesForTagging3 = [(AXLanguageTaggedContent *)self _preferredLanguagesForTagging];
          v41 = [v67 dialectsThatCanSpeakCharacter:v18 overridePreferredLanguages:_preferredLanguagesForTagging3 allowTransliteration:0 preferOverrides:1];
          [(AXLanguageTaggedContent *)self setCurrentDialects:v41];

          v42 = AXLogSpokenContentTextProcessing();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
          {
            _preferredLanguagesForTagging4 = [(AXLanguageTaggedContent *)self _preferredLanguagesForTagging];
            *v77 = 138412290;
            *&v77[4] = _preferredLanguagesForTagging4;
            _os_log_impl(&dword_18B15E000, v42, OS_LOG_TYPE_INFO, "OverridePreferredLanguages: %@", v77, 0xCu);
          }

          v44 = AXLogSpokenContentTextProcessing();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
          {
            currentDialects2 = [(AXLanguageTaggedContent *)self currentDialects];
            *v77 = 138412290;
            *&v77[4] = currentDialects2;
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
  dialectForCurrentLocale = [v52 dialectForCurrentLocale];

  if (!dialectForCurrentLocale)
  {
    currentDialects3 = AXLogSpokenContentTextProcessing();
    if (os_log_type_enabled(currentDialects3, OS_LOG_TYPE_INFO))
    {
      systemLanguageID = [v67 systemLanguageID];
      userLocale = [v67 userLocale];
      v63 = [userLocale objectForKey:*MEMORY[0x1E695D9B0]];
      userLocale2 = [v67 userLocale];
      v65 = [userLocale2 objectForKey:*MEMORY[0x1E695D978]];
      *v77 = 138412802;
      *&v77[4] = systemLanguageID;
      *&v77[12] = 2112;
      *&v77[14] = v63;
      *&v77[22] = 2112;
      v78 = v65;
      _os_log_impl(&dword_18B15E000, currentDialects3, OS_LOG_TYPE_INFO, "Failed to find dialect map for system language: %@, locale language: %@, locale region: %@", v77, 0x20u);
    }

    goto LABEL_68;
  }

  currentDialects3 = [(AXLanguageTaggedContent *)self currentDialects];
  if (([currentDialects3 containsObject:dialectForCurrentLocale]& 1) != 0)
  {
LABEL_68:

    goto LABEL_69;
  }

  speakableCharacters = [dialectForCurrentLocale speakableCharacters];
  v56 = speakableCharacters == 0;

  if (v56)
  {
    v72 = dialectForCurrentLocale;
    v57 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v72 count:1];
    currentDialects4 = [(AXLanguageTaggedContent *)self currentDialects];
    v59 = [v57 arrayByAddingObjectsFromArray:currentDialects4];
    [(AXLanguageTaggedContent *)self setCurrentDialects:v59];

    currentDialects3 = AXLogSpokenContentTextProcessing();
    if (os_log_type_enabled(currentDialects3, OS_LOG_TYPE_INFO))
    {
      specificLanguageID = [dialectForCurrentLocale specificLanguageID];
      *v77 = 138412290;
      *&v77[4] = specificLanguageID;
      _os_log_impl(&dword_18B15E000, currentDialects3, OS_LOG_TYPE_INFO, "Adding language %@ to content because we don't have spoken range", v77, 0xCu);
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
  currentDialects = [(AXLanguageTaggedContent *)self currentDialects];

  if (!currentDialects)
  {
    v4 = AXLogSpokenContentTextProcessing();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      [(AXLanguageTaggedContent *)v4 _addTag];
    }
  }

  currentDialects2 = [(AXLanguageTaggedContent *)self currentDialects];
  contentString = [(AXLanguageTaggedContent *)self contentString];
  v7 = [AXLanguageTag tagWithDialects:currentDialects2 range:self->_currentChunk.location content:self->_currentChunk.length predictedByTagger:contentString, self->_predictedByTagger];

  if (!self->_predictedByTagger && [v7 hasAmbigiousDialects])
  {
    v8 = +[AXLanguageManager sharedInstance];
    dialectForSystemLanguage = [v8 dialectForSystemLanguage];
    langMap = [dialectForSystemLanguage langMap];
    isAmbiguous = [langMap isAmbiguous];

    if (isAmbiguous && [v7 canBeSpokenByDialect:dialectForSystemLanguage])
    {
      [v7 addAmbiguousDialect:dialectForSystemLanguage];
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    ambiguousDialectsFromUserKeyboardPreferences = [v8 ambiguousDialectsFromUserKeyboardPreferences];
    v13 = [ambiguousDialectsFromUserKeyboardPreferences countByEnumeratingWithState:&v21 objects:v25 count:16];
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
            objc_enumerationMutation(ambiguousDialectsFromUserKeyboardPreferences);
          }

          v17 = *(*(&v21 + 1) + 8 * i);
          if ([v7 canBeSpokenByDialect:v17])
          {
            [v7 addAmbiguousDialect:v17];
          }
        }

        v14 = [ambiguousDialectsFromUserKeyboardPreferences countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v14);
    }
  }

  [v7 setCreatedFromNewline:0];
  tags = [(AXLanguageTaggedContent *)self tags];
  [tags addObject:v7];

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
  ambiguousLangMaps = [(AXLanguageTaggedContent *)self ambiguousLangMaps];
  v3 = +[AXSettings sharedInstance];
  spokenContentDefaultFallbackLanguage = [v3 spokenContentDefaultFallbackLanguage];

  if (spokenContentDefaultFallbackLanguage)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    systemLanguageID = ambiguousLangMaps;
    v6 = [systemLanguageID countByEnumeratingWithState:&v28 objects:v33 count:16];
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
            objc_enumerationMutation(systemLanguageID);
          }

          v10 = *(*(&v28 + 1) + 8 * i);
          generalLanguageID = [v10 generalLanguageID];
          v12 = [generalLanguageID isEqual:spokenContentDefaultFallbackLanguage];

          if (v12)
          {
            defaultDialect = [v10 defaultDialect];
            goto LABEL_22;
          }
        }

        v7 = [systemLanguageID countByEnumeratingWithState:&v28 objects:v33 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }
  }

  v13 = +[AXLanguageManager sharedInstance];
  systemLanguageID = [v13 systemLanguageID];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = ambiguousLangMaps;
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

      firstObject = *(*(&v24 + 1) + 8 * v18);
      generalLanguageID2 = [firstObject generalLanguageID];
      v21 = [generalLanguageID2 isEqual:systemLanguageID];

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

    firstObject = [v14 firstObject];
    v14 = firstObject;
  }

  defaultDialect = [firstObject defaultDialect];

LABEL_22:

  return defaultDialect;
}

- (id)primaryUnambiguousDialect
{
  unambiguousLangMaps = [(AXLanguageTaggedContent *)self unambiguousLangMaps];
  firstObject = [unambiguousLangMaps firstObject];
  defaultDialect = [firstObject defaultDialect];

  return defaultDialect;
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
        orderedSet = [*(v2 + 4000) orderedSet];
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        ambiguousDialects = [v4 ambiguousDialects];
        v7 = [ambiguousDialects countByEnumeratingWithState:&v28 objects:v37 count:16];
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
                objc_enumerationMutation(ambiguousDialects);
              }

              langMap = [*(*(&v28 + 1) + 8 * v10) langMap];
              defaultDialect = [langMap defaultDialect];
              [orderedSet addObject:defaultDialect];

              ++v10;
            }

            while (v8 != v10);
            v8 = [ambiguousDialects countByEnumeratingWithState:&v28 objects:v37 count:16];
          }

          while (v8);
        }

        orderedSet2 = [*(v2 + 4000) orderedSet];
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        unambiguousDialects = [v4 unambiguousDialects];
        v15 = [unambiguousDialects countByEnumeratingWithState:&v24 objects:v36 count:16];
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
                objc_enumerationMutation(unambiguousDialects);
              }

              langMap2 = [*(*(&v24 + 1) + 8 * v18) langMap];
              defaultDialect2 = [langMap2 defaultDialect];
              [orderedSet2 addObject:defaultDialect2];

              ++v18;
            }

            while (v16 != v18);
            v16 = [unambiguousDialects countByEnumeratingWithState:&v24 objects:v36 count:16];
          }

          while (v16);
        }

        [v4 setAmbiguousDialects:orderedSet];
        [v4 setUnambiguousDialects:orderedSet2];

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