@interface BMAppIntent(ATXAction)
- (id)atxAction;
- (void)atxAction;
@end

@implementation BMAppIntent(ATXAction)

- (id)atxAction
{
  v2 = objc_autoreleasePoolPush();
  v3 = MEMORY[0x277CCAAC8];
  v4 = objc_opt_class();
  v5 = [a1 interaction];
  v15 = 0;
  v6 = [v3 unarchivedObjectOfClass:v4 fromData:v5 error:&v15];
  v7 = v15;

  objc_autoreleasePoolPop(v2);
  if (v6)
  {
    v8 = objc_alloc(MEMORY[0x277CEB2C8]);
    v9 = [v6 intent];
    v10 = objc_opt_new();
    v11 = [a1 bundleID];
    LOBYTE(v14) = 0;
    v12 = [v8 initWithIntent:v9 actionUUID:v10 bundleId:v11 heuristic:0 heuristicMetadata:0 criteria:0 isFutureMedia:v14 title:0 subtitle:0];
  }

  else
  {
    v9 = __atxlog_handle_feedback();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(BMAppIntent(ATXAction) *)v7 atxAction];
    }

    v12 = 0;
  }

  return v12;
}

- (void)atxAction
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "IntentEventIsCompleteEngagement - Error unarchiving intent: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end