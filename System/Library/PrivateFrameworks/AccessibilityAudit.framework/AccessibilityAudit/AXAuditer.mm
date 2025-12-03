@interface AXAuditer
+ (void)initialize;
- (AXAuditer)init;
- (AXAuditerDelegate)delegate;
- (NSString)description;
- (id)_allCategoriesDescription;
- (id)_auditCategoryForClass:(Class)class;
- (id)_currentTime;
- (id)allSupportedAuditTypes;
- (id)detectionResultsFromImageData:(id)data;
- (void)_clearCurrentRunningCategories;
- (void)_initializeAuditCategories;
- (void)_runCategories:(id)categories;
- (void)auditCategory:(id)category didEncounterIssue:(id)issue;
- (void)auditCategoryResult:(id)result didAppendLogWithMessage:(id)message;
- (void)didCompleteCategory:(id)category;
- (void)init;
- (void)runCategories:(id)categories;
- (void)startWithAuditTypes:(id)types;
@end

@implementation AXAuditer

+ (void)initialize
{
  dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_11);
  v2 = os_log_create("com.apple.AccessibilityAudit", "AccessibilityAudit");
  v3 = log_signpost;
  log_signpost = v2;

  spid = os_signpost_id_generate(log_signpost);
}

- (AXAuditer)init
{
  v7.receiver = self;
  v7.super_class = AXAuditer;
  v2 = [(AXAuditer *)&v7 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEB18] array];
    results = v2->__results;
    v2->__results = array;

    [(AXAuditer *)v2 _initializeAuditCategories];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      [AXAuditer init];
    }

    v5 = +[AXAuditAssetManager shared];
    [v5 downloadAssetsIfNecessary];

    [(AXAuditer *)v2 setAuditQueue:MEMORY[0x277D85CD0]];
  }

  return v2;
}

- (void)_initializeAuditCategories
{
  v16 = *MEMORY[0x277D85DE8];
  _auditCategories = [(AXAuditer *)self _auditCategories];

  if (!_auditCategories)
  {
    array = [MEMORY[0x277CBEB18] array];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [&unk_284FC3AA8 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        v8 = 0;
        do
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(&unk_284FC3AA8);
          }

          if (NSClassFromString(*(*(&v11 + 1) + 8 * v8)))
          {
            v9 = objc_opt_new();
            [v9 setDelegate:self];
            [array addObject:v9];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [&unk_284FC3AA8 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }

    [(AXAuditer *)self set_auditCategories:array];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)_allCategoriesDescription
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  _auditCategories = [(AXAuditer *)self _auditCategories];
  [v3 appendFormat:@"\nContains %i categories {\n", objc_msgSend(_auditCategories, "count")];
  v5 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = _auditCategories;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    LODWORD(v9) = 0;
    v10 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v9 = (v9 + 1);
        [v5 appendFormat:@"   Test %i: %@", v9, *(*(&v14 + 1) + 8 * i), v14];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  [v5 replaceOccurrencesOfString:@"\n" withString:@"\n   " options:1 range:{0, objc_msgSend(v5, "length")}];
  [v3 appendString:v5];

  v12 = *MEMORY[0x277D85DE8];

  return v3;
}

- (NSString)description
{
  v3 = objc_opt_new();
  v7.receiver = self;
  v7.super_class = AXAuditer;
  v4 = [(AXAuditer *)&v7 description];
  [v3 appendString:v4];

  _allCategoriesDescription = [(AXAuditer *)self _allCategoriesDescription];
  [v3 appendString:_allCategoriesDescription];

  return v3;
}

- (id)_auditCategoryForClass:(Class)class
{
  v18 = *MEMORY[0x277D85DE8];
  [(AXAuditer *)self _auditCategories];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([objc_opt_class() isEqual:{class, v13}])
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)allSupportedAuditTypes
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  _auditCategories = [(AXAuditer *)self _auditCategories];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [_auditCategories countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(_auditCategories);
        }

        allSupportedAuditTypes = [*(*(&v13 + 1) + 8 * i) allSupportedAuditTypes];
        if ([allSupportedAuditTypes count])
        {
          [v3 unionSet:allSupportedAuditTypes];
        }
      }

      v6 = [_auditCategories countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)_clearCurrentRunningCategories
{
  currentRunningCategories = [(AXAuditer *)self currentRunningCategories];

  if (currentRunningCategories)
  {
    currentRunningCategories2 = [(AXAuditer *)self currentRunningCategories];
    [currentRunningCategories2 removeAllObjects];
  }

  else
  {
    currentRunningCategories2 = [MEMORY[0x277CBEB18] array];
    [(AXAuditer *)self setCurrentRunningCategories:currentRunningCategories2];
  }

  array = [MEMORY[0x277CBEA60] array];
  [(AXAuditer *)self set_currentTypesToAuditFor:array];
}

- (void)startWithAuditTypes:(id)types
{
  v41 = *MEMORY[0x277D85DE8];
  typesCopy = types;
  v5 = log_signpost;
  v6 = v5;
  v7 = spid;
  if ((spid - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23D6FE000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v7, "AXAuditRun", "Starting accessibility audit", buf, 2u);
  }

  [(AXAuditer *)self _clearCurrentRunningCategories];
  v8 = +[AXAuditScreenshotManager sharedManager];
  [v8 clear];

  if (!typesCopy || ![typesCopy count])
  {
    allSupportedAuditTypes = [(AXAuditer *)self allSupportedAuditTypes];
    allObjects = [allSupportedAuditTypes allObjects];

    typesCopy = allObjects;
  }

  v11 = [typesCopy copy];
  [(AXAuditer *)self set_currentTypesToAuditFor:v11];

  v12 = objc_opt_new();
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  selfCopy = self;
  obj = [(AXAuditer *)self _auditCategories];
  v29 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v29)
  {
    v28 = *v35;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v35 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v34 + 1) + 8 * i);
        array = [MEMORY[0x277CBEB18] array];
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v16 = typesCopy;
        v17 = typesCopy;
        v18 = [v17 countByEnumeratingWithState:&v30 objects:v39 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v31;
          do
          {
            for (j = 0; j != v19; ++j)
            {
              if (*v31 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = *(*(&v30 + 1) + 8 * j);
              if ([v14 supportsAuditTestType:v22])
              {
                [array addObject:v22];
                if (([v12 containsObject:v14] & 1) == 0)
                {
                  [v12 addObject:v14];
                }
              }
            }

            v19 = [v17 countByEnumeratingWithState:&v30 objects:v39 count:16];
          }

          while (v19);
        }

        if ([array count])
        {
          v23 = [MEMORY[0x277CBEB98] setWithArray:array];
          [v14 setCurrentAuditTypesToTestFor:v23];
        }

        typesCopy = v16;
      }

      v29 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v29);
  }

  allObjects2 = [v12 allObjects];
  [(AXAuditer *)selfCopy runCategories:allObjects2];

  v25 = *MEMORY[0x277D85DE8];
}

- (void)runCategories:(id)categories
{
  v32 = *MEMORY[0x277D85DE8];
  categoriesCopy = categories;
  v5 = [categoriesCopy mutableCopy];
  v6 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = categoriesCopy;
  v8 = [v7 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v28;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v27 + 1) + 8 * i);
        if (([v12 supportAuditGroup:2] & 1) != 0 || objc_msgSend(v12, "supportAuditGroup:", 4))
        {
          [v6 addObject:v12];
          [v5 removeObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v9);
  }

  currentRunningCategories = [(AXAuditer *)self currentRunningCategories];
  [currentRunningCategories addObjectsFromArray:v5];

  currentRunningCategories2 = [(AXAuditer *)self currentRunningCategories];
  [currentRunningCategories2 addObjectsFromArray:v6];

  auditQueue = [(AXAuditer *)self auditQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__AXAuditer_runCategories___block_invoke;
  block[3] = &unk_278BE2CA8;
  block[4] = self;
  v16 = v5;
  v26 = v16;
  dispatch_async(auditQueue, block);

  if ([v6 count])
  {
    delegate = [(AXAuditer *)self delegate];
    fetchScreenshot = [delegate fetchScreenshot];

    v19 = [fetchScreenshot objectForKey:@"imageData"];
    if ([v19 length])
    {
      v20 = +[AXAuditScreenshotManager sharedManager];
      _currentTime = [(AXAuditer *)self _currentTime];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __27__AXAuditer_runCategories___block_invoke_2;
      v23[3] = &unk_278BE2CA8;
      v23[4] = self;
      v24 = v6;
      [v20 addScreenshotWithInfo:fetchScreenshot timestamp:_currentTime completion:v23];
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __27__AXAuditer_runCategories___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) auditQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __27__AXAuditer_runCategories___block_invoke_3;
  v4[3] = &unk_278BE2CA8;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(v2, v4);
}

- (void)_runCategories:(id)categories
{
  v31 = *MEMORY[0x277D85DE8];
  categoriesCopy = categories;
  if (![categoriesCopy count])
  {
    [(AXAuditer *)self didCompleteCategory:0];
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = categoriesCopy;
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    v9 = &OBJC_IVAR___AXAuditDetectionResult__detectionRegion;
    v10 = &OBJC_IVAR___AXAuditDetectionResult__detectionRegion;
    do
    {
      v11 = 0;
      v23 = v7;
      do
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v24 + 1) + 8 * v11);
        v13 = *(v9 + 230);
        v14 = v13;
        v15 = *(v10 + 231);
        if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
        {
          [v12 title];
          v16 = v8;
          v17 = v10;
          v18 = v9;
          v20 = v19 = v5;
          *buf = 138543362;
          v29 = v20;
          _os_signpost_emit_with_name_impl(&dword_23D6FE000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v15, "AXAuditCategory", "Running audit category: %{public}@", buf, 0xCu);

          v5 = v19;
          v9 = v18;
          v10 = v17;
          v8 = v16;
          v7 = v23;
        }

        [v12 setTargetPid:{-[AXAuditer targetPid](self, "targetPid")}];
        [v12 setCategoryType:{-[AXAuditer categoryType](self, "categoryType")}];
        result = [v12 result];
        [result setDelegate:self];
        [v12 run];

        ++v11;
      }

      while (v7 != v11);
      v7 = [v5 countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v7);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)didCompleteCategory:(id)category
{
  v24 = *MEMORY[0x277D85DE8];
  categoryCopy = category;
  currentRunningCategories = [(AXAuditer *)self currentRunningCategories];
  v6 = [currentRunningCategories count];

  if (v6)
  {
    if (categoryCopy)
    {
      v7 = log_signpost;
      v8 = v7;
      v9 = spid;
      if ((spid - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
      {
        title = [categoryCopy title];
        v22 = 138543362;
        v23 = title;
        _os_signpost_emit_with_name_impl(&dword_23D6FE000, v8, OS_SIGNPOST_INTERVAL_END, v9, "AXAuditCategory", "Completed audit category: %{public}@", &v22, 0xCu);
      }
    }

    [categoryCopy setCurrentAuditTypesToTestFor:0];
    result = [categoryCopy result];
    if (result)
    {
      _results = [(AXAuditer *)self _results];
      [_results addObject:result];
    }

    currentRunningCategories2 = [(AXAuditer *)self currentRunningCategories];
    [currentRunningCategories2 removeObject:categoryCopy];

    currentRunningCategories3 = [(AXAuditer *)self currentRunningCategories];
    v15 = [currentRunningCategories3 count];

    if (!v15)
    {
      v16 = log_signpost;
      v17 = v16;
      v18 = spid;
      if ((spid - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
      {
        LOWORD(v22) = 0;
        _os_signpost_emit_with_name_impl(&dword_23D6FE000, v17, OS_SIGNPOST_INTERVAL_END, v18, "AXAuditRun", "Completed accessibility audit", &v22, 2u);
      }

      delegate = [(AXAuditer *)self delegate];
      _results2 = [(AXAuditer *)self _results];
      [delegate auditer:self didCompleteWithResults:_results2];
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [AXAuditer didCompleteCategory:categoryCopy];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)auditCategoryResult:(id)result didAppendLogWithMessage:(id)message
{
  messageCopy = message;
  delegate = [(AXAuditer *)self delegate];
  [delegate auditer:self didAppendLogWithMessage:messageCopy];
}

- (void)auditCategory:(id)category didEncounterIssue:(id)issue
{
  issueCopy = issue;
  delegate = [(AXAuditer *)self delegate];
  [delegate auditer:self didEncounterIssue:issueCopy];
}

- (id)detectionResultsFromImageData:(id)data
{
  dataCopy = data;
  v4 = +[AXAuditImageDetectionManager sharedManager];
  v5 = [v4 detectionResultsFromImageData:dataCopy];

  return v5;
}

- (id)_currentTime
{
  v2 = objc_opt_new();
  v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:0.0];
  systemTimeZone = [MEMORY[0x277CBEBB0] systemTimeZone];
  [v2 setTimeZone:systemTimeZone];

  [v2 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
  v5 = [v2 stringFromDate:v3];

  return v5;
}

- (AXAuditerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)init
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[AXAuditer init]";
  _os_log_debug_impl(&dword_23D6FE000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%s: Preparing to download assets", &v1, 0xCu);
  v0 = *MEMORY[0x277D85DE8];
}

- (void)didCompleteCategory:(void *)a1 .cold.1(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [a1 title];
  v3 = [a1 lastCaseSelectorFinishedName];
  v5 = 136315650;
  v6 = "[AXAuditer didCompleteCategory:]";
  v7 = 2112;
  v8 = v2;
  v9 = 2112;
  v10 = v3;
  _os_log_error_impl(&dword_23D6FE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s: currentRunningCategories is empty but %@:%@ is incorrectly finishing up.", &v5, 0x20u);

  v4 = *MEMORY[0x277D85DE8];
}

@end