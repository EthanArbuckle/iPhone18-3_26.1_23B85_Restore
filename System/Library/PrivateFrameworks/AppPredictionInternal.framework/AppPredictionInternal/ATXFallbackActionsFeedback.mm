@interface ATXFallbackActionsFeedback
+ (id)sharedInstance;
- (id)clientModelIds;
- (void)receiveUIFeedbackResult:(id)a3;
- (void)receiveUIFeedbackResult:(id)a3 histogramManager:(id)a4;
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

- (void)receiveUIFeedbackResult:(id)a3
{
  v4 = a3;
  v5 = +[_ATXAppLaunchHistogramManager sharedInstance];
  [(ATXFallbackActionsFeedback *)self receiveUIFeedbackResult:v4 histogramManager:v5];
}

- (void)receiveUIFeedbackResult:(id)a3 histogramManager:(id)a4
{
  v74 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 histogramForLaunchType:90];
  v49 = v7;
  v9 = [v7 histogramForLaunchType:91];
  v10 = [v6 context];
  if (v10 && (v11 = v10, [v6 context], v12 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v12, v11, (isKindOfClass & 1) != 0))
  {
    v14 = [v6 context];
    v15 = [v14 timeContext];
    v16 = [v15 date];
  }

  else
  {
    v16 = objc_opt_new();
    v14 = __atxlog_handle_feedback();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [(ATXFallbackActionsFeedback *)self receiveUIFeedbackResult:v6 histogramManager:v14];
    }
  }

  v17 = [v6 shownSuggestions];
  v18 = [_ATXActionUtils atxActionsFromProactiveSuggestions:v17];
  v19 = [v18 mutableCopy];

  v20 = [v6 engagedSuggestions];
  v21 = [_ATXActionUtils atxActionsFromProactiveSuggestions:v20];

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

        v27 = [*(*(&v59 + 1) + 8 * v26) actionKey];
        LODWORD(v28) = 1.0;
        [v8 addLaunchWithBundleId:v27 date:v16 timeZone:0 weight:v28];

        ++v26;
      }

      while (v24 != v26);
      v24 = [v22 countByEnumeratingWithState:&v59 objects:v73 count:16];
    }

    while (v24);
  }

  [v19 removeObjectsInArray:v22];
  v50 = v6;
  v29 = [v6 rejectedSuggestions];
  v30 = [_ATXActionUtils atxActionsFromProactiveSuggestions:v29];

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

        v36 = [*(*(&v55 + 1) + 8 * v35) actionKey];
        LODWORD(v37) = 3.0;
        [v9 addLaunchWithBundleId:v36 date:v16 timeZone:0 weight:v37];

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

        v43 = [*(*(&v51 + 1) + 8 * v42) actionKey];
        LODWORD(v44) = 1.0;
        [v9 addLaunchWithBundleId:v43 date:v16 timeZone:0 weight:v44];

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