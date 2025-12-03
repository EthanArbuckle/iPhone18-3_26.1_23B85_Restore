@interface ATXModeEntityScorerClient
- (ATXModeEntityScorerClient)init;
- (void)assignModeEntityScores:(unint64_t)scores entityTypeIdentifier:(id)identifier entityIdentifier:(id)entityIdentifier score:(double)score modeConfigurationType:(int64_t)type reply:(id)reply;
- (void)dealloc;
- (void)modeEntityScoresFromCacheForModeEntityTypeIdentifier:(id)identifier modeIdentifier:(id)modeIdentifier modeConfigurationType:(int64_t)type reply:(id)reply;
- (void)rankedAppsForDenyListForMode:(unint64_t)mode reply:(id)reply;
- (void)rankedAppsForMode:(unint64_t)mode options:(unint64_t)options reply:(id)reply;
- (void)rankedAppsForMode:(unint64_t)mode reply:(id)reply;
- (void)rankedAppsForNotificationsForMode:(unint64_t)mode reply:(id)reply;
- (void)rankedContactsForDenyListForMode:(unint64_t)mode options:(unint64_t)options reply:(id)reply;
- (void)rankedContactsForMode:(unint64_t)mode options:(unint64_t)options reply:(id)reply;
- (void)rankedContactsForMode:(unint64_t)mode reply:(id)reply;
- (void)rankedContactsForNotificationsForMode:(unint64_t)mode reply:(id)reply;
- (void)rankedNotificationsForMode:(unint64_t)mode options:(unint64_t)options reply:(id)reply;
- (void)rankedNotificationsForMode:(unint64_t)mode reply:(id)reply;
- (void)rankedWidgetsForMode:(unint64_t)mode reply:(id)reply;
- (void)scoreApps:(id)apps mode:(unint64_t)mode reply:(id)reply;
- (void)scoreAppsForDenyList:(id)list mode:(unint64_t)mode reply:(id)reply;
- (void)scoreContacts:(id)contacts mode:(unint64_t)mode reply:(id)reply;
- (void)scoreContactsForDenyList:(id)list mode:(unint64_t)mode reply:(id)reply;
- (void)scoreNotifications:(id)notifications mode:(unint64_t)mode reply:(id)reply;
@end

@implementation ATXModeEntityScorerClient

- (ATXModeEntityScorerClient)init
{
  v99[2] = *MEMORY[0x1E69E9840];
  v76.receiver = self;
  v76.super_class = ATXModeEntityScorerClient;
  v2 = [(ATXModeEntityScorerClient *)&v76 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.ModeEntityScorer" options:0];
    xpcConnection = v2->_xpcConnection;
    v2->_xpcConnection = v3;

    v5 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3E6F9A8];
    v6 = MEMORY[0x1E695DFD8];
    v99[0] = objc_opt_class();
    v99[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v99 count:2];
    v8 = [v6 setWithArray:v7];
    [v5 setClasses:v8 forSelector:sel_scoreContacts_mode_reply_ argumentIndex:0 ofReply:1];

    v9 = MEMORY[0x1E695DFD8];
    v98[0] = objc_opt_class();
    v98[1] = objc_opt_class();
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v98 count:2];
    v11 = [v9 setWithArray:v10];
    [v5 setClasses:v11 forSelector:sel_rankedContactsForMode_reply_ argumentIndex:0 ofReply:1];

    v12 = MEMORY[0x1E695DFD8];
    v97[0] = objc_opt_class();
    v97[1] = objc_opt_class();
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v97 count:2];
    v14 = [v12 setWithArray:v13];
    [v5 setClasses:v14 forSelector:sel_rankedContactsForMode_options_reply_ argumentIndex:0 ofReply:1];

    v15 = MEMORY[0x1E695DFD8];
    v96[0] = objc_opt_class();
    v96[1] = objc_opt_class();
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v96 count:2];
    v17 = [v15 setWithArray:v16];
    [v5 setClasses:v17 forSelector:sel_scoreContacts_mode_reply_ argumentIndex:0 ofReply:0];

    v18 = MEMORY[0x1E695DFD8];
    v95[0] = objc_opt_class();
    v95[1] = objc_opt_class();
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v95 count:2];
    v20 = [v18 setWithArray:v19];
    [v5 setClasses:v20 forSelector:sel_scoreApps_mode_reply_ argumentIndex:0 ofReply:1];

    v21 = MEMORY[0x1E695DFD8];
    v94[0] = objc_opt_class();
    v94[1] = objc_opt_class();
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v94 count:2];
    v23 = [v21 setWithArray:v22];
    [v5 setClasses:v23 forSelector:sel_rankedAppsForMode_reply_ argumentIndex:0 ofReply:1];

    v24 = MEMORY[0x1E695DFD8];
    v93[0] = objc_opt_class();
    v93[1] = objc_opt_class();
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v93 count:2];
    v26 = [v24 setWithArray:v25];
    [v5 setClasses:v26 forSelector:sel_rankedAppsForMode_options_reply_ argumentIndex:0 ofReply:1];

    v27 = MEMORY[0x1E695DFD8];
    v92[0] = objc_opt_class();
    v92[1] = objc_opt_class();
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v92 count:2];
    v29 = [v27 setWithArray:v28];
    [v5 setClasses:v29 forSelector:sel_scoreApps_mode_reply_ argumentIndex:0 ofReply:0];

    v30 = MEMORY[0x1E695DFD8];
    v91[0] = objc_opt_class();
    v91[1] = objc_opt_class();
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v91 count:2];
    v32 = [v30 setWithArray:v31];
    [v5 setClasses:v32 forSelector:sel_scoreAppsForDenyList_mode_reply_ argumentIndex:0 ofReply:1];

    v33 = MEMORY[0x1E695DFD8];
    v90[0] = objc_opt_class();
    v90[1] = objc_opt_class();
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v90 count:2];
    v35 = [v33 setWithArray:v34];
    [v5 setClasses:v35 forSelector:sel_rankedAppsForDenyListForMode_reply_ argumentIndex:0 ofReply:1];

    v36 = MEMORY[0x1E695DFD8];
    v89[0] = objc_opt_class();
    v89[1] = objc_opt_class();
    v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v89 count:2];
    v38 = [v36 setWithArray:v37];
    [v5 setClasses:v38 forSelector:sel_scoreAppsForDenyList_mode_reply_ argumentIndex:0 ofReply:0];

    v39 = MEMORY[0x1E695DFD8];
    v88[0] = objc_opt_class();
    v88[1] = objc_opt_class();
    v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v88 count:2];
    v41 = [v39 setWithArray:v40];
    [v5 setClasses:v41 forSelector:sel_scoreContactsForDenyList_mode_reply_ argumentIndex:0 ofReply:1];

    v42 = MEMORY[0x1E695DFD8];
    v87[0] = objc_opt_class();
    v87[1] = objc_opt_class();
    v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v87 count:2];
    v44 = [v42 setWithArray:v43];
    [v5 setClasses:v44 forSelector:sel_rankedContactsForDenyListForMode_reply_ argumentIndex:0 ofReply:1];

    v45 = MEMORY[0x1E695DFD8];
    v86[0] = objc_opt_class();
    v86[1] = objc_opt_class();
    v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:v86 count:2];
    v47 = [v45 setWithArray:v46];
    [v5 setClasses:v47 forSelector:sel_rankedContactsForDenyListForMode_options_reply_ argumentIndex:0 ofReply:1];

    v48 = MEMORY[0x1E695DFD8];
    v85[0] = objc_opt_class();
    v85[1] = objc_opt_class();
    v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:v85 count:2];
    v50 = [v48 setWithArray:v49];
    [v5 setClasses:v50 forSelector:sel_scoreContactsForDenyList_mode_reply_ argumentIndex:0 ofReply:0];

    v51 = MEMORY[0x1E695DFD8];
    v84[0] = objc_opt_class();
    v84[1] = objc_opt_class();
    v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:v84 count:2];
    v53 = [v51 setWithArray:v52];
    [v5 setClasses:v53 forSelector:sel_rankedWidgetsForMode_reply_ argumentIndex:0 ofReply:1];

    v54 = MEMORY[0x1E695DFD8];
    v83[0] = objc_opt_class();
    v83[1] = objc_opt_class();
    v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:2];
    v56 = [v54 setWithArray:v55];
    [v5 setClasses:v56 forSelector:sel_scoreNotifications_mode_reply_ argumentIndex:0 ofReply:1];

    v57 = MEMORY[0x1E695DFD8];
    v82[0] = objc_opt_class();
    v82[1] = objc_opt_class();
    v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:v82 count:2];
    v59 = [v57 setWithArray:v58];
    [v5 setClasses:v59 forSelector:sel_scoreNotifications_mode_reply_ argumentIndex:0 ofReply:0];

    v60 = MEMORY[0x1E695DFD8];
    v81[0] = objc_opt_class();
    v81[1] = objc_opt_class();
    v61 = [MEMORY[0x1E695DEC8] arrayWithObjects:v81 count:2];
    v62 = [v60 setWithArray:v61];
    [v5 setClasses:v62 forSelector:sel_rankedNotificationsForMode_reply_ argumentIndex:0 ofReply:1];

    v63 = MEMORY[0x1E695DFD8];
    v80[0] = objc_opt_class();
    v80[1] = objc_opt_class();
    v64 = [MEMORY[0x1E695DEC8] arrayWithObjects:v80 count:2];
    v65 = [v63 setWithArray:v64];
    [v5 setClasses:v65 forSelector:sel_rankedNotificationsForMode_options_reply_ argumentIndex:0 ofReply:1];

    v66 = MEMORY[0x1E695DFD8];
    v79[0] = objc_opt_class();
    v79[1] = objc_opt_class();
    v67 = [MEMORY[0x1E695DEC8] arrayWithObjects:v79 count:2];
    v68 = [v66 setWithArray:v67];
    [v5 setClasses:v68 forSelector:sel_rankedAppsForNotificationsForMode_reply_ argumentIndex:0 ofReply:1];

    v69 = MEMORY[0x1E695DFD8];
    v78[0] = objc_opt_class();
    v78[1] = objc_opt_class();
    v70 = [MEMORY[0x1E695DEC8] arrayWithObjects:v78 count:2];
    v71 = [v69 setWithArray:v70];
    [v5 setClasses:v71 forSelector:sel_rankedContactsForNotificationsForMode_reply_ argumentIndex:0 ofReply:1];

    v72 = MEMORY[0x1E695DFD8];
    v77[0] = objc_opt_class();
    v77[1] = objc_opt_class();
    v77[2] = objc_opt_class();
    v77[3] = objc_opt_class();
    v77[4] = objc_opt_class();
    v77[5] = objc_opt_class();
    v73 = [MEMORY[0x1E695DEC8] arrayWithObjects:v77 count:6];
    v74 = [v72 setWithArray:v73];
    [v5 setClasses:v74 forSelector:sel_modeEntityScoresFromCacheForModeEntityTypeIdentifier_modeIdentifier_modeConfigurationType_reply_ argumentIndex:0 ofReply:1];

    [(NSXPCConnection *)v2->_xpcConnection setRemoteObjectInterface:v5];
    [(NSXPCConnection *)v2->_xpcConnection setInterruptionHandler:&__block_literal_global_31];
    [(NSXPCConnection *)v2->_xpcConnection setInvalidationHandler:&__block_literal_global_71];
    [(NSXPCConnection *)v2->_xpcConnection resume];
  }

  return v2;
}

void __33__ATXModeEntityScorerClient_init__block_invoke()
{
  v0 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __33__ATXModeEntityScorerClient_init__block_invoke_cold_1(v0);
  }
}

void __33__ATXModeEntityScorerClient_init__block_invoke_69()
{
  v0 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_1BF549000, v0, OS_LOG_TYPE_INFO, "ATXModeEntityScorer invalidation handler called", v1, 2u);
  }
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_xpcConnection invalidate];
  v3.receiver = self;
  v3.super_class = ATXModeEntityScorerClient;
  [(ATXModeEntityScorerClient *)&v3 dealloc];
}

- (void)scoreContacts:(id)contacts mode:(unint64_t)mode reply:(id)reply
{
  v28[1] = *MEMORY[0x1E69E9840];
  contactsCopy = contacts;
  replyCopy = reply;
  if (replyCopy)
  {
    if ([MEMORY[0x1E69C5D20] hasTrueBooleanEntitlement:@"com.apple.ModeEntityScorer" logHandle:0])
    {
      xpcConnection = self->_xpcConnection;
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __54__ATXModeEntityScorerClient_scoreContacts_mode_reply___block_invoke;
      v26[3] = &unk_1E80C2678;
      v26[4] = self;
      v26[5] = a2;
      v12 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v26];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __54__ATXModeEntityScorerClient_scoreContacts_mode_reply___block_invoke_84;
      v24[3] = &unk_1E80C0908;
      v25 = replyCopy;
      [v12 scoreContacts:contactsCopy mode:mode reply:v24];
    }

    else
    {
      v19 = __atxlog_handle_notification_management();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [ATXModeEntityScorerClient scoreContacts:mode:reply:];
      }

      v20 = objc_alloc(MEMORY[0x1E696ABC0]);
      v21 = *MEMORY[0x1E696A5A0];
      v27 = *MEMORY[0x1E696A578];
      v28[0] = @"Missing entitlement for mode entity scoring.  Not calling XPC service.";
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
      v23 = [v20 initWithDomain:v21 code:1 userInfo:v22];

      (*(replyCopy + 2))(replyCopy, contactsCopy, v23);
    }
  }

  else
  {
    v13 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ATXModeEntityScorerClient scoreContacts:mode:reply:];
    }

    v14 = MEMORY[0x1E695DF30];
    v15 = *MEMORY[0x1E695D930];
    v16 = NSStringFromSelector(a2);
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    [v14 raise:v15 format:{@"No reply handler provided for %@ in %@", v16, v18}];
  }
}

void __54__ATXModeEntityScorerClient_scoreContacts_mode_reply___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __54__ATXModeEntityScorerClient_scoreContacts_mode_reply___block_invoke_cold_1();
  }
}

- (void)rankedContactsForMode:(unint64_t)mode reply:(id)reply
{
  v28[1] = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  if (!replyCopy)
  {
    v11 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ATXModeEntityScorerClient scoreContacts:mode:reply:];
    }

    v12 = MEMORY[0x1E695DF30];
    v13 = *MEMORY[0x1E695D930];
    v14 = NSStringFromSelector(a2);
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    [v12 raise:v13 format:{@"No reply handler provided for %@ in %@", v14, v16}];

    goto LABEL_10;
  }

  if (([MEMORY[0x1E69C5D20] hasTrueBooleanEntitlement:@"com.apple.ModeEntityScorer" logHandle:0] & 1) == 0)
  {
    v17 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [ATXModeEntityScorerClient scoreContacts:mode:reply:];
    }

    v18 = objc_alloc(MEMORY[0x1E696ABC0]);
    v19 = *MEMORY[0x1E696A5A0];
    v27 = *MEMORY[0x1E696A578];
    v28[0] = @"Missing entitlement for mode entity scoring.  Not calling XPC service.";
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    v14 = [v18 initWithDomain:v19 code:1 userInfo:v20];

    replyCopy[2](replyCopy, MEMORY[0x1E695E0F0], v14);
LABEL_10:

    goto LABEL_11;
  }

  xpcConnection = self->_xpcConnection;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __57__ATXModeEntityScorerClient_rankedContactsForMode_reply___block_invoke;
  v24[3] = &unk_1E80C1100;
  v26 = a2;
  v24[4] = self;
  v9 = replyCopy;
  v25 = v9;
  v10 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v24];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __57__ATXModeEntityScorerClient_rankedContactsForMode_reply___block_invoke_86;
  v21[3] = &unk_1E80C26A0;
  v23 = a2;
  v22 = v9;
  [v10 rankedContactsForMode:mode reply:v21];

LABEL_11:
}

void __57__ATXModeEntityScorerClient_rankedContactsForMode_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __100__ATXNotificationCategorizationClient_collectDynamicBreakthroughFeaturesForNotification_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

void __57__ATXModeEntityScorerClient_rankedContactsForMode_reply___block_invoke_86(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(*(a1 + 40));
    v9 = 138412546;
    v10 = v8;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_1BF549000, v7, OS_LOG_TYPE_DEFAULT, "Reached %@ reply with contacts:%@", &v9, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)rankedContactsForMode:(unint64_t)mode options:(unint64_t)options reply:(id)reply
{
  v30[1] = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  if (!replyCopy)
  {
    v13 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ATXModeEntityScorerClient scoreContacts:mode:reply:];
    }

    v14 = MEMORY[0x1E695DF30];
    v15 = *MEMORY[0x1E695D930];
    v16 = NSStringFromSelector(a2);
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    [v14 raise:v15 format:{@"No reply handler provided for %@ in %@", v16, v18}];

    goto LABEL_10;
  }

  if (([MEMORY[0x1E69C5D20] hasTrueBooleanEntitlement:@"com.apple.ModeEntityScorer" logHandle:0] & 1) == 0)
  {
    v19 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [ATXModeEntityScorerClient scoreContacts:mode:reply:];
    }

    v20 = objc_alloc(MEMORY[0x1E696ABC0]);
    v21 = *MEMORY[0x1E696A5A0];
    v29 = *MEMORY[0x1E696A578];
    v30[0] = @"Missing entitlement for mode entity scoring.  Not calling XPC service.";
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    v16 = [v20 initWithDomain:v21 code:1 userInfo:v22];

    replyCopy[2](replyCopy, MEMORY[0x1E695E0F0], v16);
LABEL_10:

    goto LABEL_11;
  }

  xpcConnection = self->_xpcConnection;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __65__ATXModeEntityScorerClient_rankedContactsForMode_options_reply___block_invoke;
  v26[3] = &unk_1E80C1100;
  v28 = a2;
  v26[4] = self;
  v11 = replyCopy;
  v27 = v11;
  v12 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v26];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __65__ATXModeEntityScorerClient_rankedContactsForMode_options_reply___block_invoke_87;
  v23[3] = &unk_1E80C26A0;
  v25 = a2;
  v24 = v11;
  [v12 rankedContactsForMode:mode options:options reply:v23];

LABEL_11:
}

void __65__ATXModeEntityScorerClient_rankedContactsForMode_options_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __100__ATXNotificationCategorizationClient_collectDynamicBreakthroughFeaturesForNotification_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

void __65__ATXModeEntityScorerClient_rankedContactsForMode_options_reply___block_invoke_87(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(*(a1 + 40));
    v9 = 138412546;
    v10 = v8;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_1BF549000, v7, OS_LOG_TYPE_DEFAULT, "Reached %@ reply with contacts:%@", &v9, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)scoreApps:(id)apps mode:(unint64_t)mode reply:(id)reply
{
  v28[1] = *MEMORY[0x1E69E9840];
  appsCopy = apps;
  replyCopy = reply;
  if (replyCopy)
  {
    if ([MEMORY[0x1E69C5D20] hasTrueBooleanEntitlement:@"com.apple.ModeEntityScorer" logHandle:0])
    {
      xpcConnection = self->_xpcConnection;
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __50__ATXModeEntityScorerClient_scoreApps_mode_reply___block_invoke;
      v26[3] = &unk_1E80C2678;
      v26[4] = self;
      v26[5] = a2;
      v12 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v26];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __50__ATXModeEntityScorerClient_scoreApps_mode_reply___block_invoke_88;
      v24[3] = &unk_1E80C0908;
      v25 = replyCopy;
      [v12 scoreApps:appsCopy mode:mode reply:v24];
    }

    else
    {
      v19 = __atxlog_handle_notification_management();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [ATXModeEntityScorerClient scoreContacts:mode:reply:];
      }

      v20 = objc_alloc(MEMORY[0x1E696ABC0]);
      v21 = *MEMORY[0x1E696A5A0];
      v27 = *MEMORY[0x1E696A578];
      v28[0] = @"Missing entitlement for mode entity scoring.  Not calling XPC service.";
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
      v23 = [v20 initWithDomain:v21 code:1 userInfo:v22];

      (*(replyCopy + 2))(replyCopy, appsCopy, v23);
    }
  }

  else
  {
    v13 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ATXModeEntityScorerClient scoreContacts:mode:reply:];
    }

    v14 = MEMORY[0x1E695DF30];
    v15 = *MEMORY[0x1E695D930];
    v16 = NSStringFromSelector(a2);
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    [v14 raise:v15 format:{@"No reply handler provided for %@ in %@", v16, v18}];
  }
}

void __50__ATXModeEntityScorerClient_scoreApps_mode_reply___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __54__ATXModeEntityScorerClient_scoreContacts_mode_reply___block_invoke_cold_1();
  }
}

- (void)rankedAppsForMode:(unint64_t)mode reply:(id)reply
{
  v28[1] = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  if (!replyCopy)
  {
    v11 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ATXModeEntityScorerClient scoreContacts:mode:reply:];
    }

    v12 = MEMORY[0x1E695DF30];
    v13 = *MEMORY[0x1E695D930];
    v14 = NSStringFromSelector(a2);
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    [v12 raise:v13 format:{@"No reply handler provided for %@ in %@", v14, v16}];

    goto LABEL_10;
  }

  if (([MEMORY[0x1E69C5D20] hasTrueBooleanEntitlement:@"com.apple.ModeEntityScorer" logHandle:0] & 1) == 0)
  {
    v17 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [ATXModeEntityScorerClient scoreContacts:mode:reply:];
    }

    v18 = objc_alloc(MEMORY[0x1E696ABC0]);
    v19 = *MEMORY[0x1E696A5A0];
    v27 = *MEMORY[0x1E696A578];
    v28[0] = @"Missing entitlement for mode entity scoring.  Not calling XPC service.";
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    v14 = [v18 initWithDomain:v19 code:1 userInfo:v20];

    replyCopy[2](replyCopy, MEMORY[0x1E695E0F0], v14);
LABEL_10:

    goto LABEL_11;
  }

  xpcConnection = self->_xpcConnection;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __53__ATXModeEntityScorerClient_rankedAppsForMode_reply___block_invoke;
  v24[3] = &unk_1E80C1100;
  v26 = a2;
  v24[4] = self;
  v9 = replyCopy;
  v25 = v9;
  v10 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v24];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __53__ATXModeEntityScorerClient_rankedAppsForMode_reply___block_invoke_89;
  v21[3] = &unk_1E80C26A0;
  v23 = a2;
  v22 = v9;
  [v10 rankedAppsForMode:mode reply:v21];

LABEL_11:
}

void __53__ATXModeEntityScorerClient_rankedAppsForMode_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __100__ATXNotificationCategorizationClient_collectDynamicBreakthroughFeaturesForNotification_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

void __53__ATXModeEntityScorerClient_rankedAppsForMode_reply___block_invoke_89(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(*(a1 + 40));
    v9 = 138412546;
    v10 = v8;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_1BF549000, v7, OS_LOG_TYPE_DEFAULT, "Reached %@ reply with apps:%@", &v9, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)rankedAppsForMode:(unint64_t)mode options:(unint64_t)options reply:(id)reply
{
  v30[1] = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  if (!replyCopy)
  {
    v13 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ATXModeEntityScorerClient scoreContacts:mode:reply:];
    }

    v14 = MEMORY[0x1E695DF30];
    v15 = *MEMORY[0x1E695D930];
    v16 = NSStringFromSelector(a2);
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    [v14 raise:v15 format:{@"No reply handler provided for %@ in %@", v16, v18}];

    goto LABEL_10;
  }

  if (([MEMORY[0x1E69C5D20] hasTrueBooleanEntitlement:@"com.apple.ModeEntityScorer" logHandle:0] & 1) == 0)
  {
    v19 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [ATXModeEntityScorerClient scoreContacts:mode:reply:];
    }

    v20 = objc_alloc(MEMORY[0x1E696ABC0]);
    v21 = *MEMORY[0x1E696A5A0];
    v29 = *MEMORY[0x1E696A578];
    v30[0] = @"Missing entitlement for mode entity scoring.  Not calling XPC service.";
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    v16 = [v20 initWithDomain:v21 code:1 userInfo:v22];

    replyCopy[2](replyCopy, MEMORY[0x1E695E0F0], v16);
LABEL_10:

    goto LABEL_11;
  }

  xpcConnection = self->_xpcConnection;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __61__ATXModeEntityScorerClient_rankedAppsForMode_options_reply___block_invoke;
  v26[3] = &unk_1E80C1100;
  v28 = a2;
  v26[4] = self;
  v11 = replyCopy;
  v27 = v11;
  v12 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v26];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __61__ATXModeEntityScorerClient_rankedAppsForMode_options_reply___block_invoke_90;
  v23[3] = &unk_1E80C26A0;
  v25 = a2;
  v24 = v11;
  [v12 rankedAppsForMode:mode options:options reply:v23];

LABEL_11:
}

void __61__ATXModeEntityScorerClient_rankedAppsForMode_options_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __100__ATXNotificationCategorizationClient_collectDynamicBreakthroughFeaturesForNotification_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

void __61__ATXModeEntityScorerClient_rankedAppsForMode_options_reply___block_invoke_90(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(*(a1 + 40));
    v9 = 138412546;
    v10 = v8;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_1BF549000, v7, OS_LOG_TYPE_DEFAULT, "Reached %@ reply with apps:%@", &v9, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)rankedWidgetsForMode:(unint64_t)mode reply:(id)reply
{
  v28[1] = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  if (!replyCopy)
  {
    v11 = __atxlog_handle_modes();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ATXModeEntityScorerClient scoreContacts:mode:reply:];
    }

    v12 = MEMORY[0x1E695DF30];
    v13 = *MEMORY[0x1E695D930];
    v14 = NSStringFromSelector(a2);
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    [v12 raise:v13 format:{@"No reply handler provided for %@ in %@", v14, v16}];

    goto LABEL_10;
  }

  if (([MEMORY[0x1E69C5D20] hasTrueBooleanEntitlement:@"com.apple.ModeEntityScorer" logHandle:0] & 1) == 0)
  {
    v17 = __atxlog_handle_modes();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [ATXModeEntityScorerClient scoreContacts:mode:reply:];
    }

    v18 = objc_alloc(MEMORY[0x1E696ABC0]);
    v19 = *MEMORY[0x1E696A5A0];
    v27 = *MEMORY[0x1E696A578];
    v28[0] = @"Missing entitlement for mode entity scoring.  Not calling XPC service.";
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    v14 = [v18 initWithDomain:v19 code:1 userInfo:v20];

    replyCopy[2](replyCopy, MEMORY[0x1E695E0F0], v14);
LABEL_10:

    goto LABEL_11;
  }

  xpcConnection = self->_xpcConnection;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __56__ATXModeEntityScorerClient_rankedWidgetsForMode_reply___block_invoke;
  v24[3] = &unk_1E80C1100;
  v26 = a2;
  v24[4] = self;
  v9 = replyCopy;
  v25 = v9;
  v10 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v24];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __56__ATXModeEntityScorerClient_rankedWidgetsForMode_reply___block_invoke_91;
  v21[3] = &unk_1E80C26A0;
  v23 = a2;
  v22 = v9;
  [v10 rankedWidgetsForMode:mode reply:v21];

LABEL_11:
}

void __56__ATXModeEntityScorerClient_rankedWidgetsForMode_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_modes();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __100__ATXNotificationCategorizationClient_collectDynamicBreakthroughFeaturesForNotification_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

void __56__ATXModeEntityScorerClient_rankedWidgetsForMode_reply___block_invoke_91(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = __atxlog_handle_modes();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(*(a1 + 40));
    v9 = 138412546;
    v10 = v8;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_1BF549000, v7, OS_LOG_TYPE_DEFAULT, "Reached %@ reply with widgets:%@", &v9, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)scoreNotifications:(id)notifications mode:(unint64_t)mode reply:(id)reply
{
  v28[1] = *MEMORY[0x1E69E9840];
  notificationsCopy = notifications;
  replyCopy = reply;
  if (replyCopy)
  {
    if ([MEMORY[0x1E69C5D20] hasTrueBooleanEntitlement:@"com.apple.ModeEntityScorer" logHandle:0])
    {
      xpcConnection = self->_xpcConnection;
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __59__ATXModeEntityScorerClient_scoreNotifications_mode_reply___block_invoke;
      v26[3] = &unk_1E80C2678;
      v26[4] = self;
      v26[5] = a2;
      v12 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v26];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __59__ATXModeEntityScorerClient_scoreNotifications_mode_reply___block_invoke_92;
      v24[3] = &unk_1E80C0908;
      v25 = replyCopy;
      [v12 scoreNotifications:notificationsCopy mode:mode reply:v24];
    }

    else
    {
      v19 = __atxlog_handle_notification_management();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [ATXModeEntityScorerClient scoreContacts:mode:reply:];
      }

      v20 = objc_alloc(MEMORY[0x1E696ABC0]);
      v21 = *MEMORY[0x1E696A5A0];
      v27 = *MEMORY[0x1E696A578];
      v28[0] = @"Missing entitlement for mode entity scoring.  Not calling XPC service.";
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
      v23 = [v20 initWithDomain:v21 code:1 userInfo:v22];

      (*(replyCopy + 2))(replyCopy, notificationsCopy, v23);
    }
  }

  else
  {
    v13 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ATXModeEntityScorerClient scoreContacts:mode:reply:];
    }

    v14 = MEMORY[0x1E695DF30];
    v15 = *MEMORY[0x1E695D930];
    v16 = NSStringFromSelector(a2);
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    [v14 raise:v15 format:{@"No reply handler provided for %@ in %@", v16, v18}];
  }
}

void __59__ATXModeEntityScorerClient_scoreNotifications_mode_reply___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __54__ATXModeEntityScorerClient_scoreContacts_mode_reply___block_invoke_cold_1();
  }
}

- (void)rankedNotificationsForMode:(unint64_t)mode reply:(id)reply
{
  v28[1] = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  if (replyCopy)
  {
    if ([MEMORY[0x1E69C5D20] hasTrueBooleanEntitlement:@"com.apple.ModeEntityScorer" logHandle:0])
    {
      xpcConnection = self->_xpcConnection;
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __62__ATXModeEntityScorerClient_rankedNotificationsForMode_reply___block_invoke;
      v24[3] = &unk_1E80C1100;
      v26 = a2;
      v24[4] = self;
      v9 = replyCopy;
      v25 = v9;
      v10 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v24];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __62__ATXModeEntityScorerClient_rankedNotificationsForMode_reply___block_invoke_93;
      v22[3] = &unk_1E80C0908;
      v23 = v9;
      [v10 rankedNotificationsForMode:mode reply:v22];
    }

    else
    {
      v17 = __atxlog_handle_notification_management();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [ATXModeEntityScorerClient scoreContacts:mode:reply:];
      }

      v18 = objc_alloc(MEMORY[0x1E696ABC0]);
      v19 = *MEMORY[0x1E696A5A0];
      v27 = *MEMORY[0x1E696A578];
      v28[0] = @"Missing entitlement for mode entity scoring.  Not calling XPC service.";
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
      v21 = [v18 initWithDomain:v19 code:1 userInfo:v20];

      (*(replyCopy + 2))(replyCopy, MEMORY[0x1E695E0F0], v21);
    }
  }

  else
  {
    v11 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ATXModeEntityScorerClient scoreContacts:mode:reply:];
    }

    v12 = MEMORY[0x1E695DF30];
    v13 = *MEMORY[0x1E695D930];
    v14 = NSStringFromSelector(a2);
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    [v12 raise:v13 format:{@"No reply handler provided for %@ in %@", v14, v16}];
  }
}

void __62__ATXModeEntityScorerClient_rankedNotificationsForMode_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __100__ATXNotificationCategorizationClient_collectDynamicBreakthroughFeaturesForNotification_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)rankedNotificationsForMode:(unint64_t)mode options:(unint64_t)options reply:(id)reply
{
  v30[1] = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  if (replyCopy)
  {
    if ([MEMORY[0x1E69C5D20] hasTrueBooleanEntitlement:@"com.apple.ModeEntityScorer" logHandle:0])
    {
      xpcConnection = self->_xpcConnection;
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __70__ATXModeEntityScorerClient_rankedNotificationsForMode_options_reply___block_invoke;
      v26[3] = &unk_1E80C1100;
      v28 = a2;
      v26[4] = self;
      v11 = replyCopy;
      v27 = v11;
      v12 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v26];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __70__ATXModeEntityScorerClient_rankedNotificationsForMode_options_reply___block_invoke_94;
      v24[3] = &unk_1E80C0908;
      v25 = v11;
      [v12 rankedNotificationsForMode:mode options:options reply:v24];
    }

    else
    {
      v19 = __atxlog_handle_notification_management();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [ATXModeEntityScorerClient scoreContacts:mode:reply:];
      }

      v20 = objc_alloc(MEMORY[0x1E696ABC0]);
      v21 = *MEMORY[0x1E696A5A0];
      v29 = *MEMORY[0x1E696A578];
      v30[0] = @"Missing entitlement for mode entity scoring.  Not calling XPC service.";
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
      v23 = [v20 initWithDomain:v21 code:1 userInfo:v22];

      (*(replyCopy + 2))(replyCopy, MEMORY[0x1E695E0F0], v23);
    }
  }

  else
  {
    v13 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ATXModeEntityScorerClient scoreContacts:mode:reply:];
    }

    v14 = MEMORY[0x1E695DF30];
    v15 = *MEMORY[0x1E695D930];
    v16 = NSStringFromSelector(a2);
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    [v14 raise:v15 format:{@"No reply handler provided for %@ in %@", v16, v18}];
  }
}

void __70__ATXModeEntityScorerClient_rankedNotificationsForMode_options_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __100__ATXNotificationCategorizationClient_collectDynamicBreakthroughFeaturesForNotification_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)rankedAppsForNotificationsForMode:(unint64_t)mode reply:(id)reply
{
  v28[1] = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  if (replyCopy)
  {
    if ([MEMORY[0x1E69C5D20] hasTrueBooleanEntitlement:@"com.apple.ModeEntityScorer" logHandle:0])
    {
      xpcConnection = self->_xpcConnection;
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __69__ATXModeEntityScorerClient_rankedAppsForNotificationsForMode_reply___block_invoke;
      v24[3] = &unk_1E80C1100;
      v26 = a2;
      v24[4] = self;
      v9 = replyCopy;
      v25 = v9;
      v10 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v24];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __69__ATXModeEntityScorerClient_rankedAppsForNotificationsForMode_reply___block_invoke_95;
      v22[3] = &unk_1E80C0908;
      v23 = v9;
      [v10 rankedAppsForNotificationsForMode:mode reply:v22];
    }

    else
    {
      v17 = __atxlog_handle_notification_management();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [ATXModeEntityScorerClient scoreContacts:mode:reply:];
      }

      v18 = objc_alloc(MEMORY[0x1E696ABC0]);
      v19 = *MEMORY[0x1E696A5A0];
      v27 = *MEMORY[0x1E696A578];
      v28[0] = @"Missing entitlement for mode entity scoring.  Not calling XPC service.";
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
      v21 = [v18 initWithDomain:v19 code:1 userInfo:v20];

      (*(replyCopy + 2))(replyCopy, MEMORY[0x1E695E0F0], v21);
    }
  }

  else
  {
    v11 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ATXModeEntityScorerClient scoreContacts:mode:reply:];
    }

    v12 = MEMORY[0x1E695DF30];
    v13 = *MEMORY[0x1E695D930];
    v14 = NSStringFromSelector(a2);
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    [v12 raise:v13 format:{@"No reply handler provided for %@ in %@", v14, v16}];
  }
}

void __69__ATXModeEntityScorerClient_rankedAppsForNotificationsForMode_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __100__ATXNotificationCategorizationClient_collectDynamicBreakthroughFeaturesForNotification_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)rankedContactsForNotificationsForMode:(unint64_t)mode reply:(id)reply
{
  v28[1] = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  if (replyCopy)
  {
    if ([MEMORY[0x1E69C5D20] hasTrueBooleanEntitlement:@"com.apple.ModeEntityScorer" logHandle:0])
    {
      xpcConnection = self->_xpcConnection;
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __73__ATXModeEntityScorerClient_rankedContactsForNotificationsForMode_reply___block_invoke;
      v24[3] = &unk_1E80C1100;
      v26 = a2;
      v24[4] = self;
      v9 = replyCopy;
      v25 = v9;
      v10 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v24];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __73__ATXModeEntityScorerClient_rankedContactsForNotificationsForMode_reply___block_invoke_96;
      v22[3] = &unk_1E80C0908;
      v23 = v9;
      [v10 rankedContactsForNotificationsForMode:mode reply:v22];
    }

    else
    {
      v17 = __atxlog_handle_notification_management();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [ATXModeEntityScorerClient scoreContacts:mode:reply:];
      }

      v18 = objc_alloc(MEMORY[0x1E696ABC0]);
      v19 = *MEMORY[0x1E696A5A0];
      v27 = *MEMORY[0x1E696A578];
      v28[0] = @"Missing entitlement for mode entity scoring.  Not calling XPC service.";
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
      v21 = [v18 initWithDomain:v19 code:1 userInfo:v20];

      (*(replyCopy + 2))(replyCopy, MEMORY[0x1E695E0F0], v21);
    }
  }

  else
  {
    v11 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ATXModeEntityScorerClient scoreContacts:mode:reply:];
    }

    v12 = MEMORY[0x1E695DF30];
    v13 = *MEMORY[0x1E695D930];
    v14 = NSStringFromSelector(a2);
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    [v12 raise:v13 format:{@"No reply handler provided for %@ in %@", v14, v16}];
  }
}

void __73__ATXModeEntityScorerClient_rankedContactsForNotificationsForMode_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __100__ATXNotificationCategorizationClient_collectDynamicBreakthroughFeaturesForNotification_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)scoreAppsForDenyList:(id)list mode:(unint64_t)mode reply:(id)reply
{
  v28[1] = *MEMORY[0x1E69E9840];
  listCopy = list;
  replyCopy = reply;
  if (replyCopy)
  {
    if ([MEMORY[0x1E69C5D20] hasTrueBooleanEntitlement:@"com.apple.ModeEntityScorer" logHandle:0])
    {
      xpcConnection = self->_xpcConnection;
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __61__ATXModeEntityScorerClient_scoreAppsForDenyList_mode_reply___block_invoke;
      v26[3] = &unk_1E80C2678;
      v26[4] = self;
      v26[5] = a2;
      v12 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v26];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __61__ATXModeEntityScorerClient_scoreAppsForDenyList_mode_reply___block_invoke_100;
      v24[3] = &unk_1E80C0908;
      v25 = replyCopy;
      [v12 scoreAppsForDenyList:listCopy mode:mode reply:v24];
    }

    else
    {
      v19 = __atxlog_handle_notification_management();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [ATXModeEntityScorerClient scoreContacts:mode:reply:];
      }

      v20 = objc_alloc(MEMORY[0x1E696ABC0]);
      v21 = *MEMORY[0x1E696A5A0];
      v27 = *MEMORY[0x1E696A578];
      v28[0] = @"Missing entitlement for mode entity scoring of apps for the deny list.  Not calling XPC service.";
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
      v23 = [v20 initWithDomain:v21 code:1 userInfo:v22];

      (*(replyCopy + 2))(replyCopy, listCopy, v23);
    }
  }

  else
  {
    v13 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ATXModeEntityScorerClient scoreContacts:mode:reply:];
    }

    v14 = MEMORY[0x1E695DF30];
    v15 = *MEMORY[0x1E695D930];
    v16 = NSStringFromSelector(a2);
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    [v14 raise:v15 format:{@"No reply handler provided for %@ in %@", v16, v18}];
  }
}

void __61__ATXModeEntityScorerClient_scoreAppsForDenyList_mode_reply___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __54__ATXModeEntityScorerClient_scoreContacts_mode_reply___block_invoke_cold_1();
  }
}

- (void)rankedAppsForDenyListForMode:(unint64_t)mode reply:(id)reply
{
  v28[1] = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  if (!replyCopy)
  {
    v11 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ATXModeEntityScorerClient scoreContacts:mode:reply:];
    }

    v12 = MEMORY[0x1E695DF30];
    v13 = *MEMORY[0x1E695D930];
    v14 = NSStringFromSelector(a2);
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    [v12 raise:v13 format:{@"No reply handler provided for %@ in %@", v14, v16}];

    goto LABEL_10;
  }

  if (([MEMORY[0x1E69C5D20] hasTrueBooleanEntitlement:@"com.apple.ModeEntityScorer" logHandle:0] & 1) == 0)
  {
    v17 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [ATXModeEntityScorerClient scoreContacts:mode:reply:];
    }

    v18 = objc_alloc(MEMORY[0x1E696ABC0]);
    v19 = *MEMORY[0x1E696A5A0];
    v27 = *MEMORY[0x1E696A578];
    v28[0] = @"Missing entitlement for mode entity scoring of apps for the deny list.  Not calling XPC service.";
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    v14 = [v18 initWithDomain:v19 code:1 userInfo:v20];

    replyCopy[2](replyCopy, MEMORY[0x1E695E0F0], v14);
LABEL_10:

    goto LABEL_11;
  }

  xpcConnection = self->_xpcConnection;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __64__ATXModeEntityScorerClient_rankedAppsForDenyListForMode_reply___block_invoke;
  v24[3] = &unk_1E80C1100;
  v26 = a2;
  v24[4] = self;
  v9 = replyCopy;
  v25 = v9;
  v10 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v24];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __64__ATXModeEntityScorerClient_rankedAppsForDenyListForMode_reply___block_invoke_101;
  v21[3] = &unk_1E80C26A0;
  v23 = a2;
  v22 = v9;
  [v10 rankedAppsForDenyListForMode:mode reply:v21];

LABEL_11:
}

void __64__ATXModeEntityScorerClient_rankedAppsForDenyListForMode_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __100__ATXNotificationCategorizationClient_collectDynamicBreakthroughFeaturesForNotification_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

void __64__ATXModeEntityScorerClient_rankedAppsForDenyListForMode_reply___block_invoke_101(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(*(a1 + 40));
    v9 = 138412546;
    v10 = v8;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_1BF549000, v7, OS_LOG_TYPE_DEFAULT, "Reached %@ reply with apps:%@", &v9, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)scoreContactsForDenyList:(id)list mode:(unint64_t)mode reply:(id)reply
{
  v28[1] = *MEMORY[0x1E69E9840];
  listCopy = list;
  replyCopy = reply;
  if (replyCopy)
  {
    if ([MEMORY[0x1E69C5D20] hasTrueBooleanEntitlement:@"com.apple.ModeEntityScorer" logHandle:0])
    {
      xpcConnection = self->_xpcConnection;
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __65__ATXModeEntityScorerClient_scoreContactsForDenyList_mode_reply___block_invoke;
      v26[3] = &unk_1E80C2678;
      v26[4] = self;
      v26[5] = a2;
      v12 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v26];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __65__ATXModeEntityScorerClient_scoreContactsForDenyList_mode_reply___block_invoke_105;
      v24[3] = &unk_1E80C0908;
      v25 = replyCopy;
      [v12 scoreContactsForDenyList:listCopy mode:mode reply:v24];
    }

    else
    {
      v19 = __atxlog_handle_notification_management();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [ATXModeEntityScorerClient scoreContacts:mode:reply:];
      }

      v20 = objc_alloc(MEMORY[0x1E696ABC0]);
      v21 = *MEMORY[0x1E696A5A0];
      v27 = *MEMORY[0x1E696A578];
      v28[0] = @"Missing entitlement for mode entity scoring of contacts for the deny list.  Not calling XPC service.";
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
      v23 = [v20 initWithDomain:v21 code:1 userInfo:v22];

      (*(replyCopy + 2))(replyCopy, listCopy, v23);
    }
  }

  else
  {
    v13 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ATXModeEntityScorerClient scoreContacts:mode:reply:];
    }

    v14 = MEMORY[0x1E695DF30];
    v15 = *MEMORY[0x1E695D930];
    v16 = NSStringFromSelector(a2);
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    [v14 raise:v15 format:{@"No reply handler provided for %@ in %@", v16, v18}];
  }
}

void __65__ATXModeEntityScorerClient_scoreContactsForDenyList_mode_reply___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __54__ATXModeEntityScorerClient_scoreContacts_mode_reply___block_invoke_cold_1();
  }
}

- (void)rankedContactsForDenyListForMode:(unint64_t)mode options:(unint64_t)options reply:(id)reply
{
  v30[1] = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  if (!replyCopy)
  {
    v13 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ATXModeEntityScorerClient scoreContacts:mode:reply:];
    }

    v14 = MEMORY[0x1E695DF30];
    v15 = *MEMORY[0x1E695D930];
    v16 = NSStringFromSelector(a2);
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    [v14 raise:v15 format:{@"No reply handler provided for %@ in %@", v16, v18}];

    goto LABEL_10;
  }

  if (([MEMORY[0x1E69C5D20] hasTrueBooleanEntitlement:@"com.apple.ModeEntityScorer" logHandle:0] & 1) == 0)
  {
    v19 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [ATXModeEntityScorerClient scoreContacts:mode:reply:];
    }

    v20 = objc_alloc(MEMORY[0x1E696ABC0]);
    v21 = *MEMORY[0x1E696A5A0];
    v29 = *MEMORY[0x1E696A578];
    v30[0] = @"Missing entitlement for mode entity scoring of contacts for the deny list.  Not calling XPC service.";
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    v16 = [v20 initWithDomain:v21 code:1 userInfo:v22];

    replyCopy[2](replyCopy, MEMORY[0x1E695E0F0], v16);
LABEL_10:

    goto LABEL_11;
  }

  xpcConnection = self->_xpcConnection;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __76__ATXModeEntityScorerClient_rankedContactsForDenyListForMode_options_reply___block_invoke;
  v26[3] = &unk_1E80C1100;
  v28 = a2;
  v26[4] = self;
  v11 = replyCopy;
  v27 = v11;
  v12 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v26];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __76__ATXModeEntityScorerClient_rankedContactsForDenyListForMode_options_reply___block_invoke_106;
  v23[3] = &unk_1E80C26A0;
  v25 = a2;
  v24 = v11;
  [v12 rankedContactsForDenyListForMode:mode options:options reply:v23];

LABEL_11:
}

void __76__ATXModeEntityScorerClient_rankedContactsForDenyListForMode_options_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __100__ATXNotificationCategorizationClient_collectDynamicBreakthroughFeaturesForNotification_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

void __76__ATXModeEntityScorerClient_rankedContactsForDenyListForMode_options_reply___block_invoke_106(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(*(a1 + 40));
    v9 = 138412546;
    v10 = v8;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_1BF549000, v7, OS_LOG_TYPE_DEFAULT, "Reached %@ reply with contacts:%@", &v9, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)modeEntityScoresFromCacheForModeEntityTypeIdentifier:(id)identifier modeIdentifier:(id)modeIdentifier modeConfigurationType:(int64_t)type reply:(id)reply
{
  identifierCopy = identifier;
  modeIdentifierCopy = modeIdentifier;
  replyCopy = reply;
  v14 = replyCopy;
  if (replyCopy)
  {
    xpcConnection = self->_xpcConnection;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __125__ATXModeEntityScorerClient_modeEntityScoresFromCacheForModeEntityTypeIdentifier_modeIdentifier_modeConfigurationType_reply___block_invoke;
    v26[3] = &unk_1E80C1100;
    v28 = a2;
    v26[4] = self;
    v16 = replyCopy;
    v27 = v16;
    v17 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v26];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __125__ATXModeEntityScorerClient_modeEntityScoresFromCacheForModeEntityTypeIdentifier_modeIdentifier_modeConfigurationType_reply___block_invoke_107;
    v24[3] = &unk_1E80C26C8;
    v25 = v16;
    [v17 modeEntityScoresFromCacheForModeEntityTypeIdentifier:identifierCopy modeIdentifier:modeIdentifierCopy modeConfigurationType:type reply:v24];
  }

  else
  {
    v18 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [ATXModeEntityScorerClient scoreContacts:mode:reply:];
    }

    v19 = MEMORY[0x1E695DF30];
    v20 = *MEMORY[0x1E695D930];
    v21 = NSStringFromSelector(a2);
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    [v19 raise:v20 format:{@"No reply handler provided for %@ in %@", v21, v23}];
  }
}

void __125__ATXModeEntityScorerClient_modeEntityScoresFromCacheForModeEntityTypeIdentifier_modeIdentifier_modeConfigurationType_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __100__ATXNotificationCategorizationClient_collectDynamicBreakthroughFeaturesForNotification_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)assignModeEntityScores:(unint64_t)scores entityTypeIdentifier:(id)identifier entityIdentifier:(id)entityIdentifier score:(double)score modeConfigurationType:(int64_t)type reply:(id)reply
{
  identifierCopy = identifier;
  entityIdentifierCopy = entityIdentifier;
  replyCopy = reply;
  v18 = replyCopy;
  if (replyCopy)
  {
    xpcConnection = self->_xpcConnection;
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __124__ATXModeEntityScorerClient_assignModeEntityScores_entityTypeIdentifier_entityIdentifier_score_modeConfigurationType_reply___block_invoke;
    v30[3] = &unk_1E80C1100;
    v32 = a2;
    v30[4] = self;
    v20 = replyCopy;
    v31 = v20;
    v21 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v30];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __124__ATXModeEntityScorerClient_assignModeEntityScores_entityTypeIdentifier_entityIdentifier_score_modeConfigurationType_reply___block_invoke_109;
    v28[3] = &unk_1E80C26F0;
    v29 = v20;
    [v21 assignModeEntityScores:scores entityTypeIdentifier:identifierCopy entityIdentifier:entityIdentifierCopy score:type modeConfigurationType:v28 reply:score];
  }

  else
  {
    v22 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [ATXModeEntityScorerClient scoreContacts:mode:reply:];
    }

    v23 = MEMORY[0x1E695DF30];
    v24 = *MEMORY[0x1E695D930];
    v25 = NSStringFromSelector(a2);
    v26 = objc_opt_class();
    v27 = NSStringFromClass(v26);
    [v23 raise:v24 format:{@"No reply handler provided for %@ in %@", v25, v27}];
  }
}

void __124__ATXModeEntityScorerClient_assignModeEntityScores_entityTypeIdentifier_entityIdentifier_score_modeConfigurationType_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __100__ATXNotificationCategorizationClient_collectDynamicBreakthroughFeaturesForNotification_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)scoreContacts:mode:reply:.cold.1()
{
  OUTLINED_FUNCTION_7_1(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_2(&dword_1BF549000, v0, v1, "Not attempting XPC service call on connection %@ without entitlement %@", v2, v3, v4, v5, v6);
}

- (void)scoreContacts:mode:reply:.cold.2()
{
  OUTLINED_FUNCTION_4_0();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_7();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void __54__ATXModeEntityScorerClient_scoreContacts_mode_reply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3_2();
  v2 = OUTLINED_FUNCTION_11_0(v1);
  NSStringFromSelector(v2);
  objc_claimAutoreleasedReturnValue();
  v3 = OUTLINED_FUNCTION_6_0();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);
}

@end