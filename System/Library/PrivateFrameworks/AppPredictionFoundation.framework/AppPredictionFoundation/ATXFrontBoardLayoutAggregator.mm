@interface ATXFrontBoardLayoutAggregator
- (ATXFrontBoardLayoutAggregator)init;
- (BOOL)_isAppWithBundleIdentifierVisible:(id)visible;
- (id)fetchActiveApps;
@end

@implementation ATXFrontBoardLayoutAggregator

- (ATXFrontBoardLayoutAggregator)init
{
  v7.receiver = self;
  v7.super_class = ATXFrontBoardLayoutAggregator;
  v2 = [(ATXFrontBoardLayoutAggregator *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    bundleIdentifierToVisibilityMap = v2->_bundleIdentifierToVisibilityMap;
    v2->_bundleIdentifierToVisibilityMap = v3;

    v5 = v2;
  }

  return v2;
}

- (id)fetchActiveApps
{
  v3 = objc_opt_new();
  v4 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:-86400.0];
  v5 = BiomeLibrary();
  frontBoard = [v5 FrontBoard];
  displayElement = [frontBoard DisplayElement];
  v8 = [objc_alloc(MEMORY[0x277CF1A50]) initWithStartDate:v4 endDate:0 maxEvents:100 lastN:100 reversed:0];
  v9 = [displayElement publisherWithUseCase:@"ProactiveAppPrediction" options:v8];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __48__ATXFrontBoardLayoutAggregator_fetchActiveApps__block_invoke_4;
  v15[3] = &unk_278590650;
  v15[4] = self;
  v10 = v3;
  v16 = v10;
  v11 = [v9 sinkWithCompletion:&__block_literal_global_13 receiveInput:v15];

  v12 = v16;
  v13 = v10;

  return v10;
}

void __48__ATXFrontBoardLayoutAggregator_fetchActiveApps__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 error];

  if (v3)
  {
    v4 = __atxlog_handle_default();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __48__ATXFrontBoardLayoutAggregator_fetchActiveApps__block_invoke_cold_1(v2, v4);
    }
  }
}

void __48__ATXFrontBoardLayoutAggregator_fetchActiveApps__block_invoke_4(uint64_t a1, void *a2)
{
  v16 = a2;
  v3 = [v16 eventBody];
  if (![v3 isUIApplicationElement])
  {
    goto LABEL_10;
  }

  v4 = [v16 eventBody];
  v5 = [v4 bundleIdentifier];

  v6 = v16;
  if (!v5)
  {
    goto LABEL_11;
  }

  v7 = [v16 eventBody];
  if ([v7 changeType] != 1)
  {

    goto LABEL_7;
  }

  v8 = *(a1 + 32);
  v9 = [v16 eventBody];
  v10 = [v9 bundleIdentifier];
  LODWORD(v8) = [v8 _isAppWithBundleIdentifierVisible:v10];

  if (!v8)
  {
LABEL_7:
    v13 = [v16 eventBody];
    v14 = [v13 changeType];

    v6 = v16;
    if (v14 != 3)
    {
      goto LABEL_11;
    }

    v15 = *(a1 + 40);
    v3 = [v16 eventBody];
    v12 = [v3 bundleIdentifier];
    [v15 removeObject:v12];
    goto LABEL_9;
  }

  v11 = *(a1 + 40);
  v3 = [v16 eventBody];
  v12 = [v3 bundleIdentifier];
  [v11 addObject:v12];
LABEL_9:

LABEL_10:
  v6 = v16;
LABEL_11:
}

- (BOOL)_isAppWithBundleIdentifierVisible:(id)visible
{
  visibleCopy = visible;
  if ([visibleCopy length])
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v6 = [(NSMutableDictionary *)selfCopy->_bundleIdentifierToVisibilityMap objectForKeyedSubscript:visibleCopy];
    v7 = v6;
    if (v6)
    {
      LOBYTE(v8) = [v6 BOOLValue];
    }

    else
    {
      v14 = 0;
      v9 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:visibleCopy allowPlaceholder:0 error:&v14];
      v10 = v14;
      if (v9)
      {
        appTags = [v9 appTags];
        v8 = [appTags containsObject:@"hidden"] ^ 1;

        v12 = [MEMORY[0x277CCABB0] numberWithBool:v8];
        [(NSMutableDictionary *)selfCopy->_bundleIdentifierToVisibilityMap setObject:v12 forKeyedSubscript:visibleCopy];
      }

      else
      {
        v12 = __atxlog_handle_default();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [(ATXFrontBoardLayoutAggregator *)v10 _isAppWithBundleIdentifierVisible:v12];
        }

        LOBYTE(v8) = 0;
      }
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

void __48__ATXFrontBoardLayoutAggregator_fetchActiveApps__block_invoke_cold_1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 error];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_226368000, a2, OS_LOG_TYPE_ERROR, "ATXFrontBoardLayoutAggregator: error fetching FrontBoard display elements: %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_isAppWithBundleIdentifierVisible:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_226368000, a2, OS_LOG_TYPE_ERROR, "ATXFrontBoardLayoutAggregator: could not obtain record: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end