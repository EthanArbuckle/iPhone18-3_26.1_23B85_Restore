@interface SFAnalyticsCollection
+ (BOOL)isVersionSameOrNewer:(id)newer than:(id)than;
+ (id)parseVersion:(id)version platform:(id)platform;
- (BOOL)allowedVersionsWithSelf:(id)self;
- (SFAnalyticsCollection)init;
- (SFAnalyticsCollection)initWithActionInterface:(id)interface product:(id)product build:(id)build;
- (id)parseCollection:(id)collection logger:(id)logger;
- (unsigned)match:(id)match eventClass:(int64_t)class attributes:(id)attributes bucket:(unsigned int)bucket logger:(id)logger;
- (void)dealloc;
- (void)drainSetupQueue;
- (void)loadCollection:(id)collection;
- (void)onQueue_stopMetricCollection;
- (void)setupMetricsHook:(id)hook;
- (void)stopMetricCollection;
- (void)storeCollection:(id)collection logger:(id)logger;
@end

@implementation SFAnalyticsCollection

- (void)drainSetupQueue
{
  queue = [(SFAnalyticsCollection *)self queue];
  dispatch_sync(queue, &__block_literal_global_194);
}

- (unsigned)match:(id)match eventClass:(int64_t)class attributes:(id)attributes bucket:(unsigned int)bucket logger:(id)logger
{
  v34 = *MEMORY[0x1E69E9840];
  matchCopy = match;
  attributesCopy = attributes;
  loggerCopy = logger;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v14 = getOSLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v33 = matchCopy;
    _os_log_debug_impl(&dword_1887D2000, v14, OS_LOG_TYPE_DEBUG, "matching rules %@", buf, 0xCu);
  }

  queue = [(SFAnalyticsCollection *)self queue];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __67__SFAnalyticsCollection_match_eventClass_attributes_bucket_logger___block_invoke;
  v22[3] = &unk_1E70D6AE8;
  v22[4] = self;
  v23 = matchCopy;
  v24 = attributesCopy;
  v25 = loggerCopy;
  v26 = &v28;
  classCopy = class;
  v16 = loggerCopy;
  v17 = attributesCopy;
  v18 = matchCopy;
  dispatch_sync(queue, v22);

  v19 = *(v29 + 6);
  _Block_object_dispose(&v28, 8);
  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

void __67__SFAnalyticsCollection_match_eventClass_attributes_bucket_logger___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) matchingRules];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v3 && [v3 count])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v17;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v16 + 1) + 8 * i);
          v10 = *(a1 + 48);
          v11 = *(a1 + 72);
          v12 = [*(a1 + 32) processName];
          LODWORD(v10) = [v9 matchAttributes:v10 eventClass:v11 processName:v12 logger:*(a1 + 56)];

          if (v10)
          {
            v13 = [*(a1 + 32) actions];
            *(*(*(a1 + 64) + 8) + 24) |= [v9 doAction:v13 attributes:*(a1 + 48) logger:*(a1 + 56)];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v4 = getOSLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v15 = *(a1 + 40);
      *buf = 138412290;
      v22 = v15;
      _os_log_debug_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEBUG, "no rules %@", buf, 0xCu);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)storeCollection:(id)collection logger:(id)logger
{
  collectionCopy = collection;
  loggerCopy = logger;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = -86;
  v8 = [(SFAnalyticsCollection *)self parseCollection:collectionCopy logger:loggerCopy];
  queue = [(SFAnalyticsCollection *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__SFAnalyticsCollection_storeCollection_logger___block_invoke;
  block[3] = &unk_1E70D6AC0;
  v16 = &v17;
  v10 = v8;
  v14 = v10;
  selfCopy = self;
  dispatch_sync(queue, block);

  if (loggerCopy && *(v18 + 24) == 1)
  {
    v11 = getOSLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_1887D2000, v11, OS_LOG_TYPE_DEFAULT, "Setting up new rules", v12, 2u);
    }

    [loggerCopy setDataProperty:collectionCopy forKey:@"SFCollectionConfig"];
    [(SFAnalyticsCollection *)self setupMetricsHook:loggerCopy];
  }

  _Block_object_dispose(&v17, 8);
}

void __48__SFAnalyticsCollection_storeCollection_logger___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) matchingRules];
  v3 = [*(a1 + 40) matchingRules];
  if (v2 == v3)
  {
    v4 = [*(a1 + 32) allowedEvents];
    v5 = [*(a1 + 40) allowedEvents];
    *(*(*(a1 + 48) + 8) + 24) = v4 != v5;
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  v6 = [*(a1 + 32) matchingRules];
  [*(a1 + 40) setMatchingRules:v6];

  [*(a1 + 40) setExcludedVersion:{objc_msgSend(*(a1 + 32), "excludedVersion")}];
  v7 = [*(a1 + 32) allowedEvents];
  [*(a1 + 40) setAllowedEvents:v7];
}

- (void)loadCollection:(id)collection
{
  v19 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  v5 = [collectionCopy dataPropertyForKey:@"SFCollectionConfig"];
  if (v5)
  {
    v6 = [(SFAnalyticsCollection *)self parseCollection:v5 logger:collectionCopy];
    queue = [(SFAnalyticsCollection *)self queue];
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __40__SFAnalyticsCollection_loadCollection___block_invoke;
    v14 = &unk_1E70D6A98;
    selfCopy = self;
    v8 = v6;
    v16 = v8;
    dispatch_sync(queue, &v11);

    v9 = getOSLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v8;
      _os_log_impl(&dword_1887D2000, v9, OS_LOG_TYPE_DEFAULT, "Loading matching rules: %@", buf, 0xCu);
    }

    [(SFAnalyticsCollection *)self setupMetricsHook:collectionCopy, v11, v12, v13, v14, selfCopy];
  }

  else
  {
    v8 = getOSLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1887D2000, v8, OS_LOG_TYPE_DEFAULT, "No rules, not setting up collection", buf, 2u);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __40__SFAnalyticsCollection_loadCollection___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) matchingRules];
  [*(a1 + 32) setMatchingRules:v2];

  [*(a1 + 32) setExcludedVersion:{objc_msgSend(*(a1 + 40), "excludedVersion")}];
  v3 = [*(a1 + 40) allowedEvents];
  [*(a1 + 32) setAllowedEvents:v3];
}

- (void)stopMetricCollection
{
  queue = [(SFAnalyticsCollection *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__SFAnalyticsCollection_stopMetricCollection__block_invoke;
  block[3] = &unk_1E70E4300;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)onQueue_stopMetricCollection
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__4729;
  v11 = __Block_byref_object_dispose__4730;
  v12 = 0;
  tearDownMetricsHook = [(SFAnalyticsCollection *)self tearDownMetricsHook];
  v4 = v8[5];
  v8[5] = tearDownMetricsHook;

  [(SFAnalyticsCollection *)self setTearDownMetricsHook:0];
  if (v8[5])
  {
    v5 = dispatch_get_global_queue(17, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __53__SFAnalyticsCollection_onQueue_stopMetricCollection__block_invoke;
    block[3] = &unk_1E70E1270;
    block[4] = &v7;
    dispatch_async(v5, block);
  }

  _Block_object_dispose(&v7, 8);
}

- (void)setupMetricsHook:(id)hook
{
  hookCopy = hook;
  queue = [(SFAnalyticsCollection *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__SFAnalyticsCollection_setupMetricsHook___block_invoke;
  v7[3] = &unk_1E70D6A98;
  v7[4] = self;
  v8 = hookCopy;
  v6 = hookCopy;
  dispatch_async(queue, v7);
}

void __42__SFAnalyticsCollection_setupMetricsHook___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) tearDownMetricsHook];

  if (!v2)
  {
    objc_initWeak(&location, *(a1 + 40));
    objc_initWeak(&from, *(a1 + 32));
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __42__SFAnalyticsCollection_setupMetricsHook___block_invoke_2;
    aBlock[3] = &unk_1E70D6A28;
    objc_copyWeak(&v13, &location);
    objc_copyWeak(&v14, &from);
    v3 = _Block_copy(aBlock);
    if ([*(a1 + 32) excludedVersion])
    {
      v4 = [*(a1 + 40) AddMultiSamplerForName:@"SFACollection" withTimeInterval:&__block_literal_global_4731 block:-1.0];
    }

    v6 = MEMORY[0x1E69E9820];
    v7 = 3221225472;
    v8 = __42__SFAnalyticsCollection_setupMetricsHook___block_invoke_4;
    v9 = &unk_1E70D6A70;
    objc_copyWeak(&v11, &location);
    v5 = v3;
    v10 = v5;
    [*(a1 + 32) setTearDownMetricsHook:&v6];
    if (v5)
    {
      [*(a1 + 40) addMetricsHook:{v5, v6, v7, v8, v9}];
    }

    objc_destroyWeak(&v11);
    objc_destroyWeak(&v14);
    objc_destroyWeak(&v13);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }
}

uint64_t __42__SFAnalyticsCollection_setupMetricsHook___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = a2;
  v10 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v12 = objc_loadWeakRetained((a1 + 40));
  v13 = v12;
  v14 = 0;
  if (WeakRetained && v12)
  {
    if (_os_feature_enabled_impl())
    {
      v14 = 0;
      goto LABEL_14;
    }

    if (([v13 excludedVersion] & 1) == 0)
    {
      v15 = [v13 allowedEvents];

      if (v15)
      {
        v16 = [v13 allowedEvents];
        v17 = [v16 objectForKeyedSubscript:v9];

        if (!v17 || [v17 integerValue] >= 1 && (v18 = objc_msgSend(v17, "integerValue"), v18 > arc4random_uniform(0x64u)))
        {

          goto LABEL_11;
        }
      }

      v14 = [v13 match:v9 eventClass:a3 attributes:v10 bucket:a5 logger:WeakRetained];
      goto LABEL_14;
    }

LABEL_11:
    v14 = 1;
  }

LABEL_14:

  return v14;
}

void __42__SFAnalyticsCollection_setupMetricsHook___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained removeMetricsHook:*(a1 + 32)];
}

- (id)parseCollection:(id)collection logger:(id)logger
{
  v63 = *MEMORY[0x1E69E9840];
  loggerCopy = logger;
  v60 = 0;
  v5 = [collection decompressedDataUsingAlgorithm:0 error:&v60];
  v6 = v60;
  if (v5)
  {
    v7 = [[SECSFARules alloc] initWithData:v5];
    v8 = objc_alloc_init(SecSFAParsedCollection);
    allowedBuilds = [(SECSFARules *)v7 allowedBuilds];
    versionsCount = [allowedBuilds versionsCount];

    if (!versionsCount || ([(SECSFARules *)v7 allowedBuilds], v11 = objc_claimAutoreleasedReturnValue(), [(SecSFAParsedCollection *)v8 setExcludedVersion:[(SFAnalyticsCollection *)self allowedVersionsWithSelf:v11]^ 1], v11, ![(SecSFAParsedCollection *)v8 excludedVersion]))
    {
      eventFilters = [(SECSFARules *)v7 eventFilters];
      v13 = [eventFilters count];

      v48 = v6;
      v49 = v5;
      v47 = v7;
      if (v13)
      {
        dictionary = [MEMORY[0x1E695DF90] dictionary];
        [(SecSFAParsedCollection *)v8 setAllowedEvents:dictionary];

        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        eventFilters2 = [(SECSFARules *)v7 eventFilters];
        v16 = [eventFilters2 countByEnumeratingWithState:&v56 objects:v62 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v57;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v57 != v18)
              {
                objc_enumerationMutation(eventFilters2);
              }

              v20 = *(*(&v56 + 1) + 8 * i);
              if ([v20 dropRate])
              {
                if ([v20 dropRate] < 1 || objc_msgSend(v20, "dropRate") > 100)
                {
                  v21 = 0;
                }

                else
                {
                  v21 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v20, "dropRate")}];
                }
              }

              else
              {
                v21 = &unk_1EFAAC6A0;
              }

              allowedEvents = [(SecSFAParsedCollection *)v8 allowedEvents];
              event = [v20 event];
              [allowedEvents setObject:v21 forKeyedSubscript:event];
            }

            v17 = [eventFilters2 countByEnumeratingWithState:&v56 objects:v62 count:16];
          }

          while (v17);
        }

        v5 = v49;
        v7 = v47;
      }

      eventRules = [(SECSFARules *)v7 eventRules];
      v25 = [eventRules count];

      if (v25)
      {
        dictionary2 = [MEMORY[0x1E695DF90] dictionary];
        [(SecSFAParsedCollection *)v8 setMatchingRules:dictionary2];

        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        eventRules2 = [(SECSFARules *)v7 eventRules];
        v28 = [eventRules2 countByEnumeratingWithState:&v52 objects:v61 count:16];
        if (v28)
        {
          v29 = v28;
          v30 = *v53;
          do
          {
            for (j = 0; j != v29; ++j)
            {
              if (*v53 != v30)
              {
                objc_enumerationMutation(eventRules2);
              }

              v32 = *(*(&v52 + 1) + 8 * j);
              versions = [v32 versions];
              if (versions)
              {
                v34 = versions;
                versions2 = [v32 versions];
                v36 = [(SFAnalyticsCollection *)self allowedVersionsWithSelf:versions2];

                if (!v36)
                {
                  continue;
                }
              }

              matchingRules = [(SecSFAParsedCollection *)v8 matchingRules];
              eventType = [v32 eventType];
              v39 = [matchingRules objectForKeyedSubscript:eventType];

              if (!v39)
              {
                v39 = [MEMORY[0x1E695DFA8] set];
                matchingRules2 = [(SecSFAParsedCollection *)v8 matchingRules];
                eventType2 = [v32 eventType];
                [matchingRules2 setObject:v39 forKeyedSubscript:eventType2];
              }

              v42 = [[SFAnalyticsMatchingRule alloc] initWithSFARule:v32 logger:loggerCopy];
              if (v42)
              {
                [v39 addObject:v42];
              }

              allowedEvents2 = [(SecSFAParsedCollection *)v8 allowedEvents];
              eventType3 = [v32 eventType];
              [allowedEvents2 setObject:&unk_1EFAAC6A0 forKeyedSubscript:eventType3];
            }

            v29 = [eventRules2 countByEnumeratingWithState:&v52 objects:v61 count:16];
          }

          while (v29);
        }

        v6 = v48;
        v5 = v49;
        v7 = v47;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  v45 = *MEMORY[0x1E69E9840];

  return v8;
}

- (BOOL)allowedVersionsWithSelf:(id)self
{
  v21 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  if ([selfCopy versionsCount])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    versions = [selfCopy versions];
    v6 = [versions countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(versions);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          v11 = objc_opt_class();
          selfVersion = [(SFAnalyticsCollection *)self selfVersion];
          LOBYTE(v10) = [v11 isVersionSameOrNewer:selfVersion than:v10];

          if (v10)
          {
            v13 = 1;
            goto LABEL_12;
          }
        }

        v7 = [versions countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v13 = 0;
LABEL_12:
  }

  else
  {
    v13 = 1;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (void)dealloc
{
  [(SFAnalyticsCollection *)self onQueue_stopMetricCollection];
  v3.receiver = self;
  v3.super_class = SFAnalyticsCollection;
  [(SFAnalyticsCollection *)&v3 dealloc];
}

- (SFAnalyticsCollection)initWithActionInterface:(id)interface product:(id)product build:(id)build
{
  interfaceCopy = interface;
  buildCopy = build;
  productCopy = product;
  v11 = [objc_opt_class() parseVersion:buildCopy platform:productCopy];

  if (v11 && (v16.receiver = self, v16.super_class = SFAnalyticsCollection, (self = [(SFAnalyticsCollection *)&v16 init]) != 0))
  {
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create("SFAnalyticsCollection", v12);
    [(SFAnalyticsCollection *)self setQueue:v13];

    [(SFAnalyticsCollection *)self setActions:interfaceCopy];
    [(SFAnalyticsCollection *)self setSelfVersion:v11];
    self = self;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (SFAnalyticsCollection)init
{
  v3 = _CFCopySystemVersionDictionary();
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E695E1E8]];
  v5 = [v3 objectForKeyedSubscript:*MEMORY[0x1E695E1F0]];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    processName = [processInfo processName];
    [(SFAnalyticsCollection *)self setProcessName:processName];

    v8 = objc_alloc_init(DefaultCollectionActions);
    self = [(SFAnalyticsCollection *)self initWithActionInterface:v8 product:v5 build:v4];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (BOOL)isVersionSameOrNewer:(id)newer than:(id)than
{
  newerCopy = newer;
  thanCopy = than;
  productName = [newerCopy productName];
  if (productName != [thanCopy productName])
  {
    goto LABEL_5;
  }

  major = [newerCopy major];
  if (major <= [thanCopy major])
  {
    major2 = [newerCopy major];
    if (major2 >= [thanCopy major])
    {
      minor = [newerCopy minor];
      if (minor > [thanCopy minor])
      {
        goto LABEL_3;
      }

      minor2 = [newerCopy minor];
      if (minor2 >= [thanCopy minor])
      {
        build = [newerCopy build];
        v9 = build >= [thanCopy build];
        goto LABEL_6;
      }
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

LABEL_3:
  v9 = 1;
LABEL_6:

  return v9;
}

+ (id)parseVersion:(id)version platform:(id)platform
{
  versionCopy = version;
  platformCopy = platform;
  v7 = objc_alloc_init(SECSFAVersion);
  if ([platformCopy isEqual:@"macOS"] & 1) != 0 || (objc_msgSend(platformCopy, "isEqual:", @"Mac OS X"))
  {
    v8 = 1;
  }

  else if ([platformCopy isEqual:@"iPhone OS"])
  {
    v8 = 2;
  }

  else if ([platformCopy isEqual:@"Apple TVOS"])
  {
    v8 = 5;
  }

  else if ([platformCopy isEqual:@"visionOS"] & 1) != 0 || (objc_msgSend(platformCopy, "isEqual:", @"xrOS"))
  {
    v8 = 3;
  }

  else
  {
    if (![platformCopy isEqual:@"Watch OS"])
    {
      v13 = 0;
      goto LABEL_11;
    }

    v8 = 4;
  }

  [(SECSFAVersion *)v7 setProductName:v8];
  v24 = 0;
  v9 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"^(\\d+)([A-Z])(\\d+)" options:0 error:&v24];
  v10 = [v9 matchesInString:versionCopy options:0 range:{0, objc_msgSend(versionCopy, "length")}];
  v11 = v10;
  if (v10 && [v10 count] == 1)
  {
    v12 = [v11 objectAtIndex:0];
    v13 = 0;
    if ([v12 numberOfRanges] == 4)
    {
      v14 = [v12 rangeAtIndex:1];
      v16 = [versionCopy substringWithRange:{v14, v15}];
      -[SECSFAVersion setMajor:](v7, "setMajor:", [v16 intValue]);

      v17 = [v12 rangeAtIndex:2];
      v19 = [versionCopy substringWithRange:{v17, v18}];
      -[SECSFAVersion setMinor:](v7, "setMinor:", [v19 characterAtIndex:0] - 64);

      v20 = [v12 rangeAtIndex:3];
      v22 = [versionCopy substringWithRange:{v20, v21}];
      -[SECSFAVersion setBuild:](v7, "setBuild:", [v22 intValue]);

      v13 = v7;
    }
  }

  else
  {
    v13 = 0;
  }

LABEL_11:

  return v13;
}

@end