@interface ATXFallbackActionsFeedback
+ (id)sharedInstance;
- (id)clientModelIds;
- (void)receiveUIFeedbackResult:(id)result;
- (void)receiveUIFeedbackResult:(id)result histogramManager:(id)manager;
@end

@implementation ATXFallbackActionsFeedback

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken7_4 != -1)
  {
    +[ATXFallbackActionsFeedback sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_5;

  return v3;
}

void __44__ATXFallbackActionsFeedback_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_alloc_init(ATXFallbackActionsFeedback);
  v2 = sharedInstance__pasExprOnceResult_5;
  sharedInstance__pasExprOnceResult_5 = v1;

  objc_autoreleasePoolPop(v0);
}

- (id)clientModelIds
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:10];
  v4 = [v2 setWithObject:v3];

  return v4;
}

- (void)receiveUIFeedbackResult:(id)result
{
  resultCopy = result;
  v5 = +[_ATXAppLaunchHistogramManager sharedInstance];
  [(ATXFallbackActionsFeedback *)self receiveUIFeedbackResult:resultCopy histogramManager:v5];
}

- (void)receiveUIFeedbackResult:(id)result histogramManager:(id)manager
{
  v74 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  managerCopy = manager;
  v8 = [managerCopy histogramForLaunchType:90];
  v49 = managerCopy;
  v9 = [managerCopy histogramForLaunchType:91];
  context = [resultCopy context];
  if (context && (v11 = context, [resultCopy context], v12 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v12, v11, (isKindOfClass & 1) != 0))
  {
    context2 = [resultCopy context];
    timeContext = [context2 timeContext];
    date = [timeContext date];
  }

  else
  {
    date = objc_opt_new();
    context2 = __atxlog_handle_feedback();
    if (os_log_type_enabled(context2, OS_LOG_TYPE_FAULT))
    {
      [(ATXFallbackActionsFeedback *)self receiveUIFeedbackResult:resultCopy histogramManager:context2];
    }
  }

  shownSuggestions = [resultCopy shownSuggestions];
  v18 = [_ATXActionUtils atxActionsFromProactiveSuggestions:shownSuggestions];
  v19 = [v18 mutableCopy];

  engagedSuggestions = [resultCopy engagedSuggestions];
  v21 = [_ATXActionUtils atxActionsFromProactiveSuggestions:engagedSuggestions];

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v22 = v21;
  v23 = [v22 countByEnumeratingWithState:&v59 objects:v73 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v60;
    do
    {
      v26 = 0;
      do
      {
        if (*v60 != v25)
        {
          objc_enumerationMutation(v22);
        }

        actionKey = [*(*(&v59 + 1) + 8 * v26) actionKey];
        LODWORD(v28) = 1.0;
        [v8 addLaunchWithBundleId:actionKey date:date timeZone:0 weight:v28];

        ++v26;
      }

      while (v24 != v26);
      v24 = [v22 countByEnumeratingWithState:&v59 objects:v73 count:16];
    }

    while (v24);
  }

  [v19 removeObjectsInArray:v22];
  v50 = resultCopy;
  rejectedSuggestions = [resultCopy rejectedSuggestions];
  v30 = [_ATXActionUtils atxActionsFromProactiveSuggestions:rejectedSuggestions];

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v31 = v30;
  v32 = [v31 countByEnumeratingWithState:&v55 objects:v72 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v56;
    do
    {
      v35 = 0;
      do
      {
        if (*v56 != v34)
        {
          objc_enumerationMutation(v31);
        }

        actionKey2 = [*(*(&v55 + 1) + 8 * v35) actionKey];
        LODWORD(v37) = 3.0;
        [v9 addLaunchWithBundleId:actionKey2 date:date timeZone:0 weight:v37];

        ++v35;
      }

      while (v33 != v35);
      v33 = [v31 countByEnumeratingWithState:&v55 objects:v72 count:16];
    }

    while (v33);
  }

  [v19 removeObjectsInArray:v31];
  v38 = v19;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v39 = [v38 countByEnumeratingWithState:&v51 objects:v71 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v52;
    do
    {
      v42 = 0;
      do
      {
        if (*v52 != v41)
        {
          objc_enumerationMutation(v38);
        }

        actionKey3 = [*(*(&v51 + 1) + 8 * v42) actionKey];
        LODWORD(v44) = 1.0;
        [v9 addLaunchWithBundleId:actionKey3 date:date timeZone:0 weight:v44];

        ++v42;
      }

      while (v40 != v42);
      v40 = [v38 countByEnumeratingWithState:&v51 objects:v71 count:16];
    }

    while (v40);
  }

  v45 = __atxlog_handle_feedback();
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    v46 = objc_opt_class();
    v47 = NSStringFromClass(v46);
    *buf = 138413058;
    v64 = v47;
    v65 = 2112;
    v66 = v22;
    v67 = 2112;
    v68 = v31;
    v69 = 2112;
    v70 = v38;
    _os_log_impl(&dword_2263AA000, v45, OS_LOG_TYPE_DEFAULT, "%@ - feedback for fallback actions processed - Engaged: %@\nExpl Rejected: %@\n Impl Rejected: %@", buf, 0x2Au);
  }

  v48 = *MEMORY[0x277D85DE8];
}

- (void)receiveUIFeedbackResult:(NSObject *)a3 histogramManager:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v8 = 138412546;
  v9 = v6;
  v10 = 2112;
  v11 = a2;
  _os_log_fault_impl(&dword_2263AA000, a3, OS_LOG_TYPE_FAULT, "%@ - could not find time context in result: %@", &v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

@end