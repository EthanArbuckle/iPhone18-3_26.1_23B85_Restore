@interface ATXModeEntityScorerServer
+ (id)sharedInstance;
- (ATXModeEntityScorerServer)initWithContactStoreProvider:(id)a3;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (BOOL)saveScoredEntitiesToDisk:(id)a3 mode:(id)a4 modeEntityTypeIdentifier:(id)a5 modeConfigurationType:(int64_t)a6;
- (id)dataFromFileHandle:(id)a3;
- (id)emptyModeEntityScore;
- (id)modeEntityScoresFromCacheForModeEntityTypeIdentifier:(id)a3 modeIdentifier:(id)a4 modeConfigurationType:(int64_t)a5;
- (id)pathForModeEntityTypeIdentifier:(id)a3 modeIdentifier:(id)a4 modeConfigurationType:(int64_t)a5;
- (id)rankedAppsForDenyListForMode:(unint64_t)a3;
- (id)rankedAppsForMode:(unint64_t)a3;
- (id)rankedEntitiesForMode:(unint64_t)a3 entityTypeIdentifier:(id)a4 modeConfigurationType:(int64_t)a5 options:(unint64_t)a6;
- (id)rankedWidgetsForMode:(unint64_t)a3;
- (id)scoredNotificationEntityForAppFromNotificationEntity:(id)a3 notificationScores:(id)a4;
- (id)scoredNotificationEntityForContactFromNotificationEntity:(id)a3 notificationScores:(id)a4;
- (void)assignModeEntityScores:(unint64_t)a3 entityTypeIdentifier:(id)a4 entityIdentifier:(id)a5 score:(double)a6 modeConfigurationType:(int64_t)a7 reply:(id)a8;
- (void)dealloc;
- (void)modeEntityScoresFromCacheForModeEntityTypeIdentifier:(id)a3 modeIdentifier:(id)a4 modeConfigurationType:(int64_t)a5 reply:(id)a6;
- (void)rankedAppsForDenyListForMode:(unint64_t)a3 reply:(id)a4;
- (void)rankedAppsForMode:(unint64_t)a3 options:(unint64_t)a4 reply:(id)a5;
- (void)rankedAppsForMode:(unint64_t)a3 reply:(id)a4;
- (void)rankedAppsForNotificationsForMode:(unint64_t)a3 reply:(id)a4;
- (void)rankedContactsForDenyListForMode:(unint64_t)a3 options:(unint64_t)a4 reply:(id)a5;
- (void)rankedContactsForMode:(unint64_t)a3 options:(unint64_t)a4 reply:(id)a5;
- (void)rankedContactsForMode:(unint64_t)a3 reply:(id)a4;
- (void)rankedContactsForNotificationsForMode:(unint64_t)a3 options:(unint64_t)a4 reply:(id)a5;
- (void)rankedNotificationsForMode:(unint64_t)a3 options:(unint64_t)a4 reply:(id)a5;
- (void)rankedNotificationsForMode:(unint64_t)a3 reply:(id)a4;
- (void)rankedWidgetsForMode:(unint64_t)a3 reply:(id)a4;
- (void)scoreApps:(id)a3 mode:(unint64_t)a4 reply:(id)a5;
- (void)scoreAppsForDenyList:(id)a3 mode:(unint64_t)a4 reply:(id)a5;
- (void)scoreContacts:(id)a3 mode:(unint64_t)a4 reply:(id)a5;
- (void)scoreContactsForDenyList:(id)a3 mode:(unint64_t)a4 reply:(id)a5;
- (void)scoreEntities:(id)a3 entityTypeIdentifier:(id)a4 mode:(unint64_t)a5 modeConfigurationType:(int64_t)a6;
- (void)scoreNotificationModeEntity:(id)a3 modeEntityScores:(id)a4;
- (void)scoreNotifications:(id)a3 mode:(unint64_t)a4 reply:(id)a5;
@end

@implementation ATXModeEntityScorerServer

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken7_23 != -1)
  {
    +[ATXModeEntityScorerServer sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_28;

  return v3;
}

void __43__ATXModeEntityScorerServer_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [[ATXModeEntityScorerServer alloc] initWithContactStoreProvider:&__block_literal_global_19];
  v2 = sharedInstance__pasExprOnceResult_28;
  sharedInstance__pasExprOnceResult_28 = v1;

  objc_autoreleasePoolPop(v0);
}

id __43__ATXModeEntityScorerServer_sharedInstance__block_invoke_2()
{
  v0 = objc_opt_new();

  return v0;
}

- (ATXModeEntityScorerServer)initWithContactStoreProvider:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = ATXModeEntityScorerServer;
  v5 = [(ATXModeEntityScorerServer *)&v14 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.ModeEntityScorer"];
    listener = v5->_listener;
    v5->_listener = v6;

    [(NSXPCListener *)v5->_listener setDelegate:v5];
    [(NSXPCListener *)v5->_listener resume];
    v8 = objc_alloc(MEMORY[0x277D425E8]);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __58__ATXModeEntityScorerServer_initWithContactStoreProvider___block_invoke;
    v12[3] = &unk_27859E2B0;
    v13 = v4;
    v9 = [v8 initWithBlock:v12 idleTimeout:3600.0];
    lazyStableContactRepresentationDataStore = v5->_lazyStableContactRepresentationDataStore;
    v5->_lazyStableContactRepresentationDataStore = v9;
  }

  return v5;
}

ATXStableContactRepresentationDatastore *__58__ATXModeEntityScorerServer_initWithContactStoreProvider___block_invoke(uint64_t a1)
{
  v2 = [ATXStableContactRepresentationDatastore alloc];
  v3 = (*(*(a1 + 32) + 16))();
  v4 = [(ATXStableContactRepresentationDatastore *)v2 initWithContactStore:v3];

  return v4;
}

- (void)dealloc
{
  [(NSXPCListener *)self->_listener invalidate];
  v3.receiver = self;
  v3.super_class = ATXModeEntityScorerServer;
  [(ATXModeEntityScorerServer *)&v3 dealloc];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v105[2] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [v5 valueForEntitlement:@"com.apple.ModeEntityScorer"];
  if (v6 && (objc_opt_respondsToSelector() & 1) != 0 && ([v6 BOOLValue] & 1) != 0)
  {
    v81 = self;
    v7 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_INFO, "ATXModeEntityScorerServer Established connection", buf, 2u);
    }

    v8 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_283ABFE00];
    v9 = MEMORY[0x277CBEB98];
    v105[0] = objc_opt_class();
    v105[1] = objc_opt_class();
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v105 count:2];
    v11 = [v9 setWithArray:v10];
    [v8 setClasses:v11 forSelector:sel_scoreContacts_mode_reply_ argumentIndex:0 ofReply:1];

    v12 = MEMORY[0x277CBEB98];
    v104[0] = objc_opt_class();
    v104[1] = objc_opt_class();
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v104 count:2];
    v14 = [v12 setWithArray:v13];
    [v8 setClasses:v14 forSelector:sel_rankedContactsForMode_reply_ argumentIndex:0 ofReply:1];

    v15 = MEMORY[0x277CBEB98];
    v103[0] = objc_opt_class();
    v103[1] = objc_opt_class();
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v103 count:2];
    v17 = [v15 setWithArray:v16];
    [v8 setClasses:v17 forSelector:sel_rankedContactsForMode_options_reply_ argumentIndex:0 ofReply:1];

    v18 = MEMORY[0x277CBEB98];
    v102[0] = objc_opt_class();
    v102[1] = objc_opt_class();
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v102 count:2];
    v20 = [v18 setWithArray:v19];
    [v8 setClasses:v20 forSelector:sel_scoreContacts_mode_reply_ argumentIndex:0 ofReply:0];

    v21 = MEMORY[0x277CBEB98];
    v101[0] = objc_opt_class();
    v101[1] = objc_opt_class();
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v101 count:2];
    v23 = [v21 setWithArray:v22];
    [v8 setClasses:v23 forSelector:sel_scoreApps_mode_reply_ argumentIndex:0 ofReply:1];

    v24 = MEMORY[0x277CBEB98];
    v100[0] = objc_opt_class();
    v100[1] = objc_opt_class();
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v100 count:2];
    v26 = [v24 setWithArray:v25];
    [v8 setClasses:v26 forSelector:sel_rankedAppsForMode_reply_ argumentIndex:0 ofReply:1];

    v27 = MEMORY[0x277CBEB98];
    v99[0] = objc_opt_class();
    v99[1] = objc_opt_class();
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v99 count:2];
    v29 = [v27 setWithArray:v28];
    [v8 setClasses:v29 forSelector:sel_rankedAppsForMode_options_reply_ argumentIndex:0 ofReply:1];

    v30 = MEMORY[0x277CBEB98];
    v98[0] = objc_opt_class();
    v98[1] = objc_opt_class();
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v98 count:2];
    v32 = [v30 setWithArray:v31];
    [v8 setClasses:v32 forSelector:sel_scoreApps_mode_reply_ argumentIndex:0 ofReply:0];

    v33 = MEMORY[0x277CBEB98];
    v97[0] = objc_opt_class();
    v97[1] = objc_opt_class();
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v97 count:2];
    v35 = [v33 setWithArray:v34];
    [v8 setClasses:v35 forSelector:sel_scoreAppsForDenyList_mode_reply_ argumentIndex:0 ofReply:1];

    v36 = MEMORY[0x277CBEB98];
    v96[0] = objc_opt_class();
    v96[1] = objc_opt_class();
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v96 count:2];
    v38 = [v36 setWithArray:v37];
    [v8 setClasses:v38 forSelector:sel_rankedAppsForDenyListForMode_reply_ argumentIndex:0 ofReply:1];

    v39 = MEMORY[0x277CBEB98];
    v95[0] = objc_opt_class();
    v95[1] = objc_opt_class();
    v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v95 count:2];
    v41 = [v39 setWithArray:v40];
    [v8 setClasses:v41 forSelector:sel_scoreAppsForDenyList_mode_reply_ argumentIndex:0 ofReply:0];

    v42 = MEMORY[0x277CBEB98];
    v94[0] = objc_opt_class();
    v94[1] = objc_opt_class();
    v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v94 count:2];
    v44 = [v42 setWithArray:v43];
    [v8 setClasses:v44 forSelector:sel_scoreContactsForDenyList_mode_reply_ argumentIndex:0 ofReply:1];

    v45 = MEMORY[0x277CBEB98];
    v93[0] = objc_opt_class();
    v93[1] = objc_opt_class();
    v46 = [MEMORY[0x277CBEA60] arrayWithObjects:v93 count:2];
    v47 = [v45 setWithArray:v46];
    [v8 setClasses:v47 forSelector:sel_rankedContactsForDenyListForMode_reply_ argumentIndex:0 ofReply:1];

    v48 = MEMORY[0x277CBEB98];
    v92[0] = objc_opt_class();
    v92[1] = objc_opt_class();
    v49 = [MEMORY[0x277CBEA60] arrayWithObjects:v92 count:2];
    v50 = [v48 setWithArray:v49];
    [v8 setClasses:v50 forSelector:sel_rankedContactsForDenyListForMode_options_reply_ argumentIndex:0 ofReply:1];

    v51 = MEMORY[0x277CBEB98];
    v91[0] = objc_opt_class();
    v91[1] = objc_opt_class();
    v52 = [MEMORY[0x277CBEA60] arrayWithObjects:v91 count:2];
    v53 = [v51 setWithArray:v52];
    [v8 setClasses:v53 forSelector:sel_scoreContactsForDenyList_mode_reply_ argumentIndex:0 ofReply:0];

    v54 = MEMORY[0x277CBEB98];
    v90[0] = objc_opt_class();
    v90[1] = objc_opt_class();
    v55 = [MEMORY[0x277CBEA60] arrayWithObjects:v90 count:2];
    v56 = [v54 setWithArray:v55];
    [v8 setClasses:v56 forSelector:sel_rankedWidgetsForMode_reply_ argumentIndex:0 ofReply:1];

    v57 = MEMORY[0x277CBEB98];
    v89[0] = objc_opt_class();
    v89[1] = objc_opt_class();
    v58 = [MEMORY[0x277CBEA60] arrayWithObjects:v89 count:2];
    v59 = [v57 setWithArray:v58];
    [v8 setClasses:v59 forSelector:sel_scoreNotifications_mode_reply_ argumentIndex:0 ofReply:1];

    v60 = MEMORY[0x277CBEB98];
    v88[0] = objc_opt_class();
    v88[1] = objc_opt_class();
    v61 = [MEMORY[0x277CBEA60] arrayWithObjects:v88 count:2];
    v62 = [v60 setWithArray:v61];
    [v8 setClasses:v62 forSelector:sel_scoreNotifications_mode_reply_ argumentIndex:0 ofReply:0];

    v63 = MEMORY[0x277CBEB98];
    v87[0] = objc_opt_class();
    v87[1] = objc_opt_class();
    v64 = [MEMORY[0x277CBEA60] arrayWithObjects:v87 count:2];
    v65 = [v63 setWithArray:v64];
    [v8 setClasses:v65 forSelector:sel_rankedNotificationsForMode_reply_ argumentIndex:0 ofReply:1];

    v66 = MEMORY[0x277CBEB98];
    v86[0] = objc_opt_class();
    v86[1] = objc_opt_class();
    v67 = [MEMORY[0x277CBEA60] arrayWithObjects:v86 count:2];
    v68 = [v66 setWithArray:v67];
    [v8 setClasses:v68 forSelector:sel_rankedNotificationsForMode_options_reply_ argumentIndex:0 ofReply:1];

    v69 = MEMORY[0x277CBEB98];
    v85[0] = objc_opt_class();
    v85[1] = objc_opt_class();
    v70 = [MEMORY[0x277CBEA60] arrayWithObjects:v85 count:2];
    v71 = [v69 setWithArray:v70];
    [v8 setClasses:v71 forSelector:sel_rankedAppsForNotificationsForMode_reply_ argumentIndex:0 ofReply:1];

    v72 = MEMORY[0x277CBEB98];
    v84[0] = objc_opt_class();
    v84[1] = objc_opt_class();
    v73 = [MEMORY[0x277CBEA60] arrayWithObjects:v84 count:2];
    v74 = [v72 setWithArray:v73];
    [v8 setClasses:v74 forSelector:sel_rankedContactsForNotificationsForMode_reply_ argumentIndex:0 ofReply:1];

    v75 = MEMORY[0x277CBEB98];
    v83[0] = objc_opt_class();
    v83[1] = objc_opt_class();
    v83[2] = objc_opt_class();
    v76 = 1;
    v83[3] = objc_opt_class();
    v83[4] = objc_opt_class();
    v83[5] = objc_opt_class();
    v77 = [MEMORY[0x277CBEA60] arrayWithObjects:v83 count:6];
    v78 = [v75 setWithArray:v77];
    [v8 setClasses:v78 forSelector:sel_modeEntityScoresFromCacheForModeEntityTypeIdentifier_modeIdentifier_modeConfigurationType_reply_ argumentIndex:0 ofReply:1];

    [v5 setExportedInterface:v8];
    [v5 setExportedObject:v81];
    [v5 setInterruptionHandler:&__block_literal_global_88_0];
    [v5 setInvalidationHandler:&__block_literal_global_91_1];
    [v5 resume];
  }

  else
  {
    v8 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [ATXModeEntityScorerServer listener:shouldAcceptNewConnection:];
    }

    v76 = 0;
  }

  v79 = *MEMORY[0x277D85DE8];
  return v76;
}

void __64__ATXModeEntityScorerServer_listener_shouldAcceptNewConnection___block_invoke()
{
  v0 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    __64__ATXModeEntityScorerServer_listener_shouldAcceptNewConnection___block_invoke_cold_1(v0);
  }
}

void __64__ATXModeEntityScorerServer_listener_shouldAcceptNewConnection___block_invoke_89()
{
  v0 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    __64__ATXModeEntityScorerServer_listener_shouldAcceptNewConnection___block_invoke_89_cold_1(v0);
  }
}

- (void)scoreContacts:(id)a3 mode:(unint64_t)a4 reply:(id)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v27 = a5;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v30;
    do
    {
      v10 = v6;
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(v10);
        }

        v12 = *(*(&v29 + 1) + 8 * i);
        v13 = [(_PASLazyPurgeableResult *)self->_lazyStableContactRepresentationDataStore result];
        v14 = [v12 cnContactId];
        v15 = [v12 rawIdentifier];
        v16 = [v13 stableContactRepresentationForCnContactId:v14 rawIdentifier:v15];
        v17 = [v16 stableContactIdentifier];
        [v12 setStableContactIdentifier:v17];
      }

      v6 = v10;
      v8 = [v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v8);
  }

  if (v27)
  {
    [(ATXModeEntityScorerServer *)self scoreEntities:v6 entityTypeIdentifier:*MEMORY[0x277D41C90] mode:a4];
    v27[2](v27, v6, 0);
  }

  else
  {
    v18 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [ATXModeEntityScorerServer scoreContacts:mode:reply:];
    }

    v19 = MEMORY[0x277CBEAD8];
    v20 = *MEMORY[0x277CBE658];
    v21 = NSStringFromSelector(a2);
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    [v19 raise:v20 format:{@"No reply handler provided for %@ in %@", v21, v23}];
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)rankedContactsForMode:(unint64_t)a3 reply:(id)a4
{
  v7 = a4;
  if (v7)
  {
    v8 = [(ATXModeEntityScorerServer *)self rankedContactsForMode:a3];
    v7[2](v7, v8, 0);
  }

  else
  {
    v9 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ATXModeEntityScorerServer scoreContacts:mode:reply:];
    }

    v10 = MEMORY[0x277CBEAD8];
    v11 = *MEMORY[0x277CBE658];
    v12 = NSStringFromSelector(a2);
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    [v10 raise:v11 format:{@"No reply handler provided for %@ in %@", v12, v14}];
  }
}

- (void)rankedContactsForMode:(unint64_t)a3 options:(unint64_t)a4 reply:(id)a5
{
  v9 = a5;
  if (v9)
  {
    v10 = [(ATXModeEntityScorerServer *)self rankedContactsForMode:a3 options:a4];
    v9[2](v9, v10, 0);
  }

  else
  {
    v11 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ATXModeEntityScorerServer scoreContacts:mode:reply:];
    }

    v12 = MEMORY[0x277CBEAD8];
    v13 = *MEMORY[0x277CBE658];
    v14 = NSStringFromSelector(a2);
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    [v12 raise:v13 format:{@"No reply handler provided for %@ in %@", v14, v16}];
  }
}

- (void)scoreApps:(id)a3 mode:(unint64_t)a4 reply:(id)a5
{
  v9 = a3;
  v10 = a5;
  if (v10)
  {
    [(ATXModeEntityScorerServer *)self scoreEntities:v9 entityTypeIdentifier:*MEMORY[0x277D41C88] mode:a4];
    v10[2](v10, v9, 0);
  }

  else
  {
    v11 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ATXModeEntityScorerServer scoreContacts:mode:reply:];
    }

    v12 = MEMORY[0x277CBEAD8];
    v13 = *MEMORY[0x277CBE658];
    v14 = NSStringFromSelector(a2);
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    [v12 raise:v13 format:{@"No reply handler provided for %@ in %@", v14, v16}];
  }
}

- (void)rankedAppsForMode:(unint64_t)a3 reply:(id)a4
{
  v7 = a4;
  if (v7)
  {
    v8 = [(ATXModeEntityScorerServer *)self rankedAppsForMode:a3];
    v7[2](v7, v8, 0);
  }

  else
  {
    v9 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ATXModeEntityScorerServer scoreContacts:mode:reply:];
    }

    v10 = MEMORY[0x277CBEAD8];
    v11 = *MEMORY[0x277CBE658];
    v12 = NSStringFromSelector(a2);
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    [v10 raise:v11 format:{@"No reply handler provided for %@ in %@", v12, v14}];
  }
}

- (void)rankedAppsForMode:(unint64_t)a3 options:(unint64_t)a4 reply:(id)a5
{
  v8 = MEMORY[0x277CBEB98];
  v9 = a5;
  v10 = [v8 alloc];
  v11 = CFPreferencesCopyValue(@"SBSearchSuggestAppDisabled", @"com.apple.spotlightui", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = objc_opt_new();
  }

  v14 = v13;

  v15 = [v10 initWithArray:v14];
  v16 = [(ATXModeEntityScorerServer *)self rankedEntitiesForMode:a3 entityTypeIdentifier:*MEMORY[0x277D41C88] options:a4];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __61__ATXModeEntityScorerServer_rankedAppsForMode_options_reply___block_invoke;
  v19[3] = &unk_27859E2D8;
  v20 = v15;
  v17 = v15;
  v18 = [v16 _pas_filteredArrayWithTest:v19];
  v9[2](v9, v18, 0);
}

uint64_t __61__ATXModeEntityScorerServer_rankedAppsForMode_options_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277CEB3B8];
  v5 = [v3 bundleId];
  if ([v4 isInstalledAndNotRestrictedForBundle:v5])
  {
    v6 = *(a1 + 32);
    v7 = [v3 bundleId];
    v8 = [v6 containsObject:v7] ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)rankedAppsForMode:(unint64_t)a3
{
  v5 = objc_alloc(MEMORY[0x277CBEB98]);
  v6 = CFPreferencesCopyValue(@"SBSearchSuggestAppDisabled", @"com.apple.spotlightui", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = objc_opt_new();
  }

  v9 = v8;

  v10 = [v5 initWithArray:v9];
  v11 = [(ATXModeEntityScorerServer *)self rankedEntitiesForMode:a3 entityTypeIdentifier:*MEMORY[0x277D41C88] options:0];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __47__ATXModeEntityScorerServer_rankedAppsForMode___block_invoke;
  v15[3] = &unk_27859E2D8;
  v16 = v10;
  v12 = v10;
  v13 = [v11 _pas_filteredArrayWithTest:v15];

  return v13;
}

uint64_t __47__ATXModeEntityScorerServer_rankedAppsForMode___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277CEB3B8];
  v5 = [v3 bundleId];
  if ([v4 isInstalledAndNotRestrictedForBundle:v5])
  {
    v6 = *(a1 + 32);
    v7 = [v3 bundleId];
    v8 = [v6 containsObject:v7] ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)rankedWidgetsForMode:(unint64_t)a3 reply:(id)a4
{
  v7 = a4;
  if (v7)
  {
    v8 = [(ATXModeEntityScorerServer *)self rankedWidgetsForMode:a3];
    v7[2](v7, v8, 0);
  }

  else
  {
    v9 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ATXModeEntityScorerServer scoreContacts:mode:reply:];
    }

    v10 = MEMORY[0x277CBEAD8];
    v11 = *MEMORY[0x277CBE658];
    v12 = NSStringFromSelector(a2);
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    [v10 raise:v11 format:{@"No reply handler provided for %@ in %@", v12, v14}];
  }
}

- (id)rankedWidgetsForMode:(unint64_t)a3
{
  v3 = [(ATXModeEntityScorerServer *)self rankedEntitiesForMode:a3 entityTypeIdentifier:*MEMORY[0x277D41CF8] options:0];
  v4 = [v3 _pas_filteredArrayWithTest:&__block_literal_global_100_0];

  return v4;
}

uint64_t __50__ATXModeEntityScorerServer_rankedWidgetsForMode___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 widget];
  v3 = [v2 extensionIdentity];
  v4 = [v3 containerBundleIdentifier];

  if (ATXBundleIdIsFakeContainerBundleId())
  {
    v5 = 1;
  }

  else
  {
    v5 = [MEMORY[0x277CEB3B8] isInstalledAndNotRestrictedForBundle:v4];
  }

  return v5;
}

- (void)scoreNotifications:(id)a3 mode:(unint64_t)a4 reply:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  if (v9)
  {
    v10 = *MEMORY[0x277D41CD8];
    v11 = ATXModeToString();
    v12 = [(ATXModeEntityScorerServer *)self modeEntityScoresFromCacheForModeEntityTypeIdentifier:v10 modeIdentifier:v11 modeConfigurationType:0];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v13 = v8;
    v14 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v25;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v25 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [(ATXModeEntityScorerServer *)self scoreNotificationModeEntity:*(*(&v24 + 1) + 8 * i) modeEntityScores:v12];
        }

        v15 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v15);
    }

    v9[2](v9, v13, 0);
  }

  else
  {
    v18 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [ATXModeEntityScorerServer scoreContacts:mode:reply:];
    }

    v19 = MEMORY[0x277CBEAD8];
    v20 = *MEMORY[0x277CBE658];
    v12 = NSStringFromSelector(a2);
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    [v19 raise:v20 format:{@"No reply handler provided for %@ in %@", v12, v22}];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)scoreNotificationModeEntity:(id)a3 modeEntityScores:(id)a4
{
  v23 = a3;
  v6 = a4;
  v7 = [v23 identifier];
  v8 = [v6 objectForKeyedSubscript:v7];

  if (v8)
  {
    v9 = [v8 scoreMetadata];
LABEL_11:
    v21 = v9;
    [v23 setScoreMetadata:v9];
    goto LABEL_12;
  }

  v10 = [v23 appEntity];

  v11 = [v23 contactEntity];

  if (!v10 || !v11)
  {
    v9 = [(ATXModeEntityScorerServer *)self emptyModeEntityScore];
    goto LABEL_11;
  }

  v12 = [(ATXModeEntityScorerServer *)self scoredNotificationEntityForAppFromNotificationEntity:v23 notificationScores:v6];
  v13 = [(ATXModeEntityScorerServer *)self scoredNotificationEntityForContactFromNotificationEntity:v23 notificationScores:v6];
  if (v12 | v13)
  {
    if (!v12)
    {
      goto LABEL_8;
    }

    v14 = [v12 scoreMetadata];
    [v14 score];
    v16 = v15;
    v17 = [v13 scoreMetadata];
    [v17 score];
    v19 = v18;

    v20 = v12;
    if (v16 < v19)
    {
LABEL_8:
      v20 = v13;
    }

    v21 = v20;
    v22 = [v21 scoreMetadata];
  }

  else
  {
    v22 = [(ATXModeEntityScorerServer *)self emptyModeEntityScore];
    v21 = 0;
  }

  [v23 setScoreMetadata:v22];

LABEL_12:
}

- (id)emptyModeEntityScore
{
  v2 = objc_alloc(MEMORY[0x277CEB698]);
  v3 = objc_opt_new();
  v4 = [v2 initWithScore:0 featureVector:v3 uuid:0.0];

  return v4;
}

- (id)scoredNotificationEntityForAppFromNotificationEntity:(id)a3 notificationScores:(id)a4
{
  v5 = a4;
  v6 = [a3 appEntity];
  v7 = [objc_alloc(MEMORY[0x277CEB720]) initWithAppEntity:v6];
  v8 = [v7 identifier];
  v9 = [v5 objectForKeyedSubscript:v8];

  return v9;
}

- (id)scoredNotificationEntityForContactFromNotificationEntity:(id)a3 notificationScores:(id)a4
{
  v5 = a4;
  v6 = [a3 contactEntity];
  v7 = [objc_alloc(MEMORY[0x277CEB720]) initWithContactEntity:v6];
  v8 = [v7 identifier];
  v9 = [v5 objectForKeyedSubscript:v8];

  return v9;
}

- (void)rankedNotificationsForMode:(unint64_t)a3 reply:(id)a4
{
  v7 = a4;
  if (v7)
  {
    v8 = [(ATXModeEntityScorerServer *)self rankedNotificationsForMode:a3];
    v7[2](v7, v8, 0);
  }

  else
  {
    v9 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ATXModeEntityScorerServer scoreContacts:mode:reply:];
    }

    v10 = MEMORY[0x277CBEAD8];
    v11 = *MEMORY[0x277CBE658];
    v12 = NSStringFromSelector(a2);
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    [v10 raise:v11 format:{@"No reply handler provided for %@ in %@", v12, v14}];
  }
}

- (void)rankedNotificationsForMode:(unint64_t)a3 options:(unint64_t)a4 reply:(id)a5
{
  v9 = a5;
  if (v9)
  {
    v10 = [(ATXModeEntityScorerServer *)self rankedNotificationsForMode:a3 options:a4];
    v9[2](v9, v10, 0);
  }

  else
  {
    v11 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ATXModeEntityScorerServer scoreContacts:mode:reply:];
    }

    v12 = MEMORY[0x277CBEAD8];
    v13 = *MEMORY[0x277CBE658];
    v14 = NSStringFromSelector(a2);
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    [v12 raise:v13 format:{@"No reply handler provided for %@ in %@", v14, v16}];
  }
}

- (void)rankedAppsForNotificationsForMode:(unint64_t)a3 reply:(id)a4
{
  v7 = a4;
  if (v7)
  {
    v8 = [(ATXModeEntityScorerServer *)self rankedEntitiesForMode:a3 entityTypeIdentifier:*MEMORY[0x277D41CD8] options:0];
    v9 = [v8 _pas_filteredArrayWithTest:&__block_literal_global_105_1];

    v10 = objc_opt_new();
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __69__ATXModeEntityScorerServer_rankedAppsForNotificationsForMode_reply___block_invoke_2;
    v16[3] = &unk_27859E340;
    v17 = v10;
    v11 = v10;
    [v9 enumerateObjectsUsingBlock:v16];
    v7[2](v7, v11, 0);
  }

  else
  {
    v12 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ATXModeEntityScorerServer scoreContacts:mode:reply:];
    }

    v13 = MEMORY[0x277CBEAD8];
    v14 = *MEMORY[0x277CBE658];
    v9 = NSStringFromSelector(a2);
    v15 = objc_opt_class();
    v11 = NSStringFromClass(v15);
    [v13 raise:v14 format:{@"No reply handler provided for %@ in %@", v9, v11}];
  }
}

BOOL __69__ATXModeEntityScorerServer_rankedAppsForNotificationsForMode_reply___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 contactEntity];

  return v2 == 0;
}

void __69__ATXModeEntityScorerServer_rankedAppsForNotificationsForMode_reply___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [v3 appEntity];
  v4 = [v3 scoreMetadata];

  [v5 setScoreMetadata:v4];
  [*(a1 + 32) addObject:v5];
}

- (void)rankedContactsForNotificationsForMode:(unint64_t)a3 options:(unint64_t)a4 reply:(id)a5
{
  v9 = a5;
  if (v9)
  {
    v10 = [(ATXModeEntityScorerServer *)self rankedEntitiesForMode:a3 entityTypeIdentifier:*MEMORY[0x277D41CD8] options:a4];
    v11 = [v10 _pas_filteredArrayWithTest:&__block_literal_global_109];

    v12 = objc_opt_new();
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __81__ATXModeEntityScorerServer_rankedContactsForNotificationsForMode_options_reply___block_invoke_2;
    v18[3] = &unk_27859E340;
    v19 = v12;
    v13 = v12;
    [v11 enumerateObjectsUsingBlock:v18];
    v9[2](v9, v13, 0);
  }

  else
  {
    v14 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [ATXModeEntityScorerServer scoreContacts:mode:reply:];
    }

    v15 = MEMORY[0x277CBEAD8];
    v16 = *MEMORY[0x277CBE658];
    v11 = NSStringFromSelector(a2);
    v17 = objc_opt_class();
    v13 = NSStringFromClass(v17);
    [v15 raise:v16 format:{@"No reply handler provided for %@ in %@", v11, v13}];
  }
}

BOOL __81__ATXModeEntityScorerServer_rankedContactsForNotificationsForMode_options_reply___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 appEntity];

  return v2 == 0;
}

void __81__ATXModeEntityScorerServer_rankedContactsForNotificationsForMode_options_reply___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [v3 contactEntity];
  v4 = [v3 scoreMetadata];

  [v5 setScoreMetadata:v4];
  [*(a1 + 32) addObject:v5];
}

- (void)scoreAppsForDenyList:(id)a3 mode:(unint64_t)a4 reply:(id)a5
{
  v9 = a3;
  v10 = a5;
  if (v10)
  {
    [(ATXModeEntityScorerServer *)self scoreEntitiesForDenyList:v9 entityTypeIdentifier:*MEMORY[0x277D41C88] mode:a4];
    v10[2](v10, v9, 0);
  }

  else
  {
    v11 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ATXModeEntityScorerServer scoreContacts:mode:reply:];
    }

    v12 = MEMORY[0x277CBEAD8];
    v13 = *MEMORY[0x277CBE658];
    v14 = NSStringFromSelector(a2);
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    [v12 raise:v13 format:{@"No reply handler provided for %@ in %@", v14, v16}];
  }
}

- (void)rankedAppsForDenyListForMode:(unint64_t)a3 reply:(id)a4
{
  v7 = a4;
  if (v7)
  {
    v8 = [(ATXModeEntityScorerServer *)self rankedAppsForDenyListForMode:a3];
    v7[2](v7, v8, 0);
  }

  else
  {
    v9 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ATXModeEntityScorerServer scoreContacts:mode:reply:];
    }

    v10 = MEMORY[0x277CBEAD8];
    v11 = *MEMORY[0x277CBE658];
    v12 = NSStringFromSelector(a2);
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    [v10 raise:v11 format:{@"No reply handler provided for %@ in %@", v12, v14}];
  }
}

- (id)rankedAppsForDenyListForMode:(unint64_t)a3
{
  v5 = objc_alloc(MEMORY[0x277CBEB98]);
  v6 = CFPreferencesCopyValue(@"SBSearchSuggestAppDisabled", @"com.apple.spotlightui", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = objc_opt_new();
  }

  v9 = v8;

  v10 = [v5 initWithArray:v9];
  v11 = [(ATXModeEntityScorerServer *)self rankedEntitiesForDenyListForMode:a3 entityTypeIdentifier:*MEMORY[0x277D41C88] options:0];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __58__ATXModeEntityScorerServer_rankedAppsForDenyListForMode___block_invoke;
  v15[3] = &unk_27859E2D8;
  v16 = v10;
  v12 = v10;
  v13 = [v11 _pas_filteredArrayWithTest:v15];

  return v13;
}

uint64_t __58__ATXModeEntityScorerServer_rankedAppsForDenyListForMode___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277CEB3B8];
  v5 = [v3 bundleId];
  if ([v4 isInstalledAndNotRestrictedForBundle:v5])
  {
    v6 = *(a1 + 32);
    v7 = [v3 bundleId];
    v8 = [v6 containsObject:v7] ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)scoreContactsForDenyList:(id)a3 mode:(unint64_t)a4 reply:(id)a5
{
  v9 = a3;
  v10 = a5;
  if (v10)
  {
    [(ATXModeEntityScorerServer *)self scoreEntitiesForDenyList:v9 entityTypeIdentifier:*MEMORY[0x277D41C90] mode:a4];
    v10[2](v10, v9, 0);
  }

  else
  {
    v11 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ATXModeEntityScorerServer scoreContacts:mode:reply:];
    }

    v12 = MEMORY[0x277CBEAD8];
    v13 = *MEMORY[0x277CBE658];
    v14 = NSStringFromSelector(a2);
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    [v12 raise:v13 format:{@"No reply handler provided for %@ in %@", v14, v16}];
  }
}

- (void)rankedContactsForDenyListForMode:(unint64_t)a3 options:(unint64_t)a4 reply:(id)a5
{
  v9 = a5;
  if (v9)
  {
    v10 = [(ATXModeEntityScorerServer *)self rankedContactsForDenyListForMode:a3 options:a4];
    v9[2](v9, v10, 0);
  }

  else
  {
    v11 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ATXModeEntityScorerServer scoreContacts:mode:reply:];
    }

    v12 = MEMORY[0x277CBEAD8];
    v13 = *MEMORY[0x277CBE658];
    v14 = NSStringFromSelector(a2);
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    [v12 raise:v13 format:{@"No reply handler provided for %@ in %@", v14, v16}];
  }
}

- (void)scoreEntities:(id)a3 entityTypeIdentifier:(id)a4 mode:(unint64_t)a5 modeConfigurationType:(int64_t)a6
{
  v30 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = ATXModeToString();
  v12 = [(ATXModeEntityScorerServer *)self modeEntityScoresFromCacheForModeEntityTypeIdentifier:v10 modeIdentifier:v11 modeConfigurationType:a6];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v13 = v9;
  v14 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v26;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v26 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v25 + 1) + 8 * i);
        v19 = [v18 identifier];
        v20 = [v12 objectForKeyedSubscript:v19];

        if (v20)
        {
          v21 = [v20 scoreMetadata];
        }

        else
        {
          v22 = objc_alloc(MEMORY[0x277CEB698]);
          v23 = objc_opt_new();
          v21 = [v22 initWithScore:0 featureVector:v23 uuid:0.0];
        }

        [v18 setScoreMetadata:v21];
      }

      v15 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v15);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (id)rankedEntitiesForMode:(unint64_t)a3 entityTypeIdentifier:(id)a4 modeConfigurationType:(int64_t)a5 options:(unint64_t)a6
{
  v6 = a6;
  v53 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = ATXModeToString();
  v43 = self;
  v11 = [(ATXModeEntityScorerServer *)self modeEntityScoresFromCacheForModeEntityTypeIdentifier:v9 modeIdentifier:v10 modeConfigurationType:a5];

  if ([v9 isEqualToString:*MEMORY[0x277D41C90]])
  {
    if ((v6 & 1) == 0)
    {
      lazyStableContactRepresentationDataStore = self->_lazyStableContactRepresentationDataStore;
      v13 = v11;
      v14 = [(_PASLazyPurgeableResult *)lazyStableContactRepresentationDataStore result];
      v11 = [v14 refreshCnContactIdsGivenContactEntities:v13];

      goto LABEL_22;
    }

    v29 = __atxlog_handle_notification_management();
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    *buf = 0;
    v30 = "Skipping contact id refresh because option was specified for ranked contact entities.";
    goto LABEL_20;
  }

  if (![v9 isEqualToString:*MEMORY[0x277D41CD8]])
  {
    goto LABEL_22;
  }

  if (v6)
  {
    v29 = __atxlog_handle_notification_management();
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
LABEL_21:

      goto LABEL_22;
    }

    *buf = 0;
    v30 = "Skipping contact id refresh because option was specified for ranked notification entities.";
LABEL_20:
    _os_log_impl(&dword_2263AA000, v29, OS_LOG_TYPE_DEFAULT, v30, buf, 2u);
    goto LABEL_21;
  }

  v41 = v9;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v40 = v11;
  obj = [v40 allValues];
  v15 = [obj countByEnumeratingWithState:&v44 objects:v52 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v45;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v45 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v44 + 1) + 8 * i);
        v20 = [v19 contactEntity];

        if (v20)
        {
          v21 = [(_PASLazyPurgeableResult *)v43->_lazyStableContactRepresentationDataStore result];
          v22 = [v19 contactEntity];
          v23 = [v22 identifier];
          v50 = v23;
          v24 = [v19 contactEntity];
          v51 = v24;
          v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
          v26 = [v21 refreshCnContactIdsGivenContactEntities:v25];

          v27 = [v26 allValues];
          v28 = [v27 firstObject];
          [v19 setContactEntity:v28];
        }
      }

      v16 = [obj countByEnumeratingWithState:&v44 objects:v52 count:16];
    }

    while (v16);
  }

  v11 = v40;
  v9 = v41;
LABEL_22:
  v31 = [v11 allValues];
  v32 = [v31 mutableCopy];
  v33 = v32;
  if (v32)
  {
    v34 = v32;
  }

  else
  {
    v34 = objc_opt_new();
  }

  v35 = v34;

  v36 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"scoreMetadata.score" ascending:0];
  v49 = v36;
  v37 = [MEMORY[0x277CBEA60] arrayWithObjects:&v49 count:1];
  [v35 sortUsingDescriptors:v37];

  v38 = *MEMORY[0x277D85DE8];

  return v35;
}

- (id)pathForModeEntityTypeIdentifier:(id)a3 modeIdentifier:(id)a4 modeConfigurationType:(int64_t)a5
{
  v7 = MEMORY[0x277CEBCB0];
  v8 = a4;
  v9 = a3;
  v10 = [v7 modeCachesRootDirectory];
  v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@_%@", v9, v8];

  v12 = [v10 stringByAppendingPathComponent:v11];

  if (a5 == 1)
  {
    v13 = objc_alloc(MEMORY[0x277CCACA8]);
    v14 = NSStringForATXModeConfigurationType();
    v15 = [v13 initWithFormat:@"%@_%@", v12, v14];

    v12 = v15;
  }

  return v12;
}

- (void)modeEntityScoresFromCacheForModeEntityTypeIdentifier:(id)a3 modeIdentifier:(id)a4 modeConfigurationType:(int64_t)a5 reply:(id)a6
{
  v11 = a6;
  if (v11)
  {
    v12 = [(ATXModeEntityScorerServer *)self modeEntityScoresFromCacheForModeEntityTypeIdentifier:a3 modeIdentifier:a4 modeConfigurationType:a5];
    v11[2](v11, v12, 0);
  }

  else
  {
    v13 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ATXModeEntityScorerServer scoreContacts:mode:reply:];
    }

    v14 = MEMORY[0x277CBEAD8];
    v15 = *MEMORY[0x277CBE658];
    v16 = NSStringFromSelector(a2);
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    [v14 raise:v15 format:{@"No reply handler provided for %@ in %@", v16, v18}];
  }
}

- (id)modeEntityScoresFromCacheForModeEntityTypeIdentifier:(id)a3 modeIdentifier:(id)a4 modeConfigurationType:(int64_t)a5
{
  v48 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = objc_autoreleasePoolPush();
  v11 = [(ATXModeEntityScorerServer *)self pathForModeEntityTypeIdentifier:v8 modeIdentifier:v9 modeConfigurationType:a5];
  v41 = 0;
  v12 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:v11 options:1 error:&v41];
  v13 = v41;
  v14 = v13;
  if (v12)
  {
    v15 = v13 == 0;
  }

  else
  {
    v15 = 0;
  }

  if (v15)
  {
    v36 = v11;
    v37 = v10;
    v38 = v9;
    v39 = v8;
    v18 = objc_autoreleasePoolPush();
    v34 = MEMORY[0x277CCAAC8];
    v35 = v18;
    context = objc_autoreleasePoolPush();
    v32 = objc_alloc(MEMORY[0x277CBEB98]);
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = objc_opt_class();
    v24 = objc_opt_class();
    v25 = objc_opt_class();
    v26 = objc_opt_class();
    v27 = [v32 initWithObjects:{v19, v20, v21, v22, v23, v24, v25, v26, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(context);
    v40 = 0;
    v28 = [v34 unarchivedObjectOfClasses:v27 fromData:v12 error:&v40];
    v16 = v40;

    objc_autoreleasePoolPop(v35);
    if (!v28 || v16)
    {
      v29 = __atxlog_handle_notification_management();
      v9 = v38;
      v8 = v39;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v43 = v39;
        v44 = 2112;
        v45 = v38;
        v46 = 2112;
        v47 = v16;
        _os_log_error_impl(&dword_2263AA000, v29, OS_LOG_TYPE_ERROR, "Couldn't deserialized cached model results for EntityType: %@, Mode: %@. Error: %@", buf, 0x20u);
      }

      v17 = 0;
    }

    else
    {
      v17 = v28;
      v9 = v38;
      v8 = v39;
    }

    v11 = v36;
    v10 = v37;
  }

  else
  {
    v16 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v43 = v8;
      v44 = 2112;
      v45 = v9;
      v46 = 2112;
      v47 = v14;
      _os_log_error_impl(&dword_2263AA000, v16, OS_LOG_TYPE_ERROR, "Couldn't find any cached model results for EntityType: %@, Mode: %@. Error: %@", buf, 0x20u);
    }

    v17 = 0;
  }

  objc_autoreleasePoolPop(v10);
  v30 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)dataFromFileHandle:(id)a3
{
  if (a3)
  {
    v9 = 0;
    v3 = [a3 readDataToEndOfFileAndReturnError:&v9];
    v4 = v9;
    v5 = v4;
    if (!v3 || v4)
    {
      v7 = __atxlog_handle_notification_management();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [ATXModeEntityScorerServer dataFromFileHandle:];
      }

      v6 = 0;
    }

    else
    {
      v6 = v3;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)assignModeEntityScores:(unint64_t)a3 entityTypeIdentifier:(id)a4 entityIdentifier:(id)a5 score:(double)a6 modeConfigurationType:(int64_t)a7 reply:(id)a8
{
  v44 = *MEMORY[0x277D85DE8];
  v14 = a4;
  v15 = a5;
  v16 = a8;
  if (v16)
  {
    v17 = ATXModeToString();
    v18 = [(ATXModeEntityScorerServer *)self modeEntityScoresFromCacheForModeEntityTypeIdentifier:v14 modeIdentifier:v17 modeConfigurationType:a7];
    v19 = [v18 mutableCopy];
    v20 = v19;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = objc_opt_new();
    }

    v25 = v21;

    v28 = [v25 objectForKeyedSubscript:v15];

    if (v28)
    {
      v29 = [v25 objectForKeyedSubscript:v15];
      v30 = [v29 scoreMetadata];
      [v30 setScore:a6];
    }

    else
    {
      v31 = __atxlog_handle_notification_management();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315395;
        v41 = "[ATXModeEntityScorerServer assignModeEntityScores:entityTypeIdentifier:entityIdentifier:score:modeConfigurationType:reply:]";
        v42 = 2117;
        v43 = v15;
        _os_log_impl(&dword_2263AA000, v31, OS_LOG_TYPE_DEFAULT, "%s: Entity with identifier: '%{sensitive}@' was not in the cache. Creating a new entry.", buf, 0x16u);
      }

      if ([v14 isEqual:@"apps"])
      {
        v32 = [objc_alloc(MEMORY[0x277CEB390]) initWithBundleId:v15];
      }

      else
      {
        if (![v14 isEqual:@"contacts"])
        {
          v39 = __atxlog_handle_notification_management();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            [ATXModeEntityScorerServer assignModeEntityScores:entityTypeIdentifier:entityIdentifier:score:modeConfigurationType:reply:];
          }

          [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"%s: Unsupported entity type '%@'", "-[ATXModeEntityScorerServer assignModeEntityScores:entityTypeIdentifier:entityIdentifier:score:modeConfigurationType:reply:]", v14}];
          goto LABEL_18;
        }

        v32 = [objc_alloc(MEMORY[0x277CEB420]) initWithDisplayName:v15 rawIdentifier:v15 cnContactId:v15];
      }

      v29 = v32;
      v33 = objc_alloc(MEMORY[0x277CEB698]);
      v34 = [MEMORY[0x277CCAD78] UUID];
      v35 = [v33 initWithScore:0 featureVector:v34 uuid:a6];
      [v29 setScoreMetadata:v35];

      [v25 setObject:v29 forKeyedSubscript:v15];
    }

LABEL_18:
    v36 = ATXModeToString();
    v37 = [(ATXModeEntityScorerServer *)self saveScoredEntitiesToDisk:v25 mode:v36 modeEntityTypeIdentifier:v14 modeConfigurationType:a7];

    v16[2](v16, v37, 0);
    goto LABEL_19;
  }

  v22 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    [ATXModeEntityScorerServer scoreContacts:mode:reply:];
  }

  v23 = MEMORY[0x277CBEAD8];
  v24 = *MEMORY[0x277CBE658];
  v25 = NSStringFromSelector(a2);
  v26 = objc_opt_class();
  v27 = NSStringFromClass(v26);
  [v23 raise:v24 format:{@"No reply handler provided for %@ in %@", v25, v27}];

LABEL_19:
  v38 = *MEMORY[0x277D85DE8];
}

- (BOOL)saveScoredEntitiesToDisk:(id)a3 mode:(id)a4 modeEntityTypeIdentifier:(id)a5 modeConfigurationType:(int64_t)a6
{
  v32 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = objc_autoreleasePoolPush();
  v14 = [(ATXModeEntityScorerServer *)self pathForModeEntityTypeIdentifier:v12 modeIdentifier:v11 modeConfigurationType:a6];
  v15 = objc_autoreleasePoolPush();
  v25 = 0;
  v16 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v10 requiringSecureCoding:1 error:&v25];
  v17 = v25;
  objc_autoreleasePoolPop(v15);
  if (v17)
  {
    v18 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [ATXModeEntityScorerServer saveScoredEntitiesToDisk:mode:modeEntityTypeIdentifier:modeConfigurationType:];
    }

LABEL_10:
    v21 = 0;
    goto LABEL_11;
  }

  v24 = 0;
  v19 = [v16 writeToFile:v14 options:1073741825 error:&v24];
  v17 = v24;
  v20 = __atxlog_handle_notification_management();
  v18 = v20;
  if ((v19 & 1) == 0)
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412802;
      v27 = v12;
      v28 = 2112;
      v29 = v14;
      v30 = 2112;
      v31 = v17;
      _os_log_fault_impl(&dword_2263AA000, v18, OS_LOG_TYPE_FAULT, "FAILURE: Unable to write mode entity scores for mode entity type: %@ to path: %@. Error: %@", buf, 0x20u);
    }

    goto LABEL_10;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v27 = v12;
    v28 = 2112;
    v29 = v14;
    _os_log_impl(&dword_2263AA000, v18, OS_LOG_TYPE_DEFAULT, "SUCCESS: Finished writing mode entity scores for mode entity type: %@ to path: %@.", buf, 0x16u);
  }

  v21 = 1;
LABEL_11:

  objc_autoreleasePoolPop(v13);
  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

- (void)listener:shouldAcceptNewConnection:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)scoreContacts:mode:reply:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  v12 = *MEMORY[0x277D85DE8];
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_3_9();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_0(&dword_2263AA000, v4, v5, "No reply handler provided for %@ in %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)dataFromFileHandle:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)assignModeEntityScores:entityTypeIdentifier:entityIdentifier:score:modeConfigurationType:reply:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)saveScoredEntitiesToDisk:mode:modeEntityTypeIdentifier:modeConfigurationType:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end