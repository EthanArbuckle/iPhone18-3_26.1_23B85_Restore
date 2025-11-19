@interface ATXActionNotificationServer
+ (ATXActionNotificationServer)sharedInstance;
+ (id)_requestIdentifierForBundleId:(id)a3;
+ (id)bundleIdFromRequestIdentifier:(id)a3;
+ (id)localizedContentBodyStringWithString:(id)a3 forAction:(id)a4;
- (ATXActionNotificationServer)init;
- (BOOL)_isRTL;
- (id)_actionKeyFromNotification:(id)a3;
- (id)_blendingCacheUpdateUUIDFromNotification:(id)a3;
- (id)_localizedStringForKey:(id)a3 defaultValue:(id)a4 languageCode:(id)a5;
- (id)_unarchiveProactiveSuggestionFromNotification:(id)a3;
- (id)proactiveSuggestionsCurrentlyOnLockscreen;
- (unint64_t)deliveredNotificationCount;
- (void)_postNotificationForProactiveSuggestion:(id)a3 blendingCacheUpdateUUID:(id)a4;
- (void)_postTestNotificationWithPredictionCount:(int64_t)a3;
- (void)_removeNotificationWithIdentifier:(id)a3 trackEvent:(BOOL)a4;
- (void)_setupNotifications;
- (void)postDemoOrDebugNotificationForATXAction:(id)a3;
- (void)postNotificationForATXAction:(id)a3;
- (void)postNotificationForProactiveSuggestion:(id)a3 blendingCacheUpdateUUID:(id)a4;
- (void)removeActionPredictionNotificationsMatchingAction:(id)a3;
- (void)removeAllActionPredictionNotificationsAndTrackEvent:(BOOL)a3 recordFeedback:(BOOL)a4;
- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5;
- (void)workflowRunnerClient:(id)a3 didFinishRunningWorkflowWithOutput:(id)a4 error:(id)a5 cancelled:(BOOL)a6;
- (void)workflowRunnerClient:(id)a3 didStartRunningWorkflowWithProgress:(id)a4;
@end

@implementation ATXActionNotificationServer

+ (ATXActionNotificationServer)sharedInstance
{
  if (sharedInstance_onceToken_13 != -1)
  {
    +[ATXActionNotificationServer sharedInstance];
  }

  v3 = sharedInstance__sharedInstance;

  return v3;
}

uint64_t __45__ATXActionNotificationServer_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(ATXActionNotificationServer);
  v1 = sharedInstance__sharedInstance;
  sharedInstance__sharedInstance = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)_requestIdentifierForBundleId:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = [MEMORY[0x277CCAD78] UUID];
    v6 = [v5 UUIDString];
    v7 = [v4 stringWithFormat:@"%@|%@", v3, v6];
  }

  else
  {
    v5 = [MEMORY[0x277CCAD78] UUID];
    v7 = [v5 UUIDString];
  }

  return v7;
}

+ (id)bundleIdFromRequestIdentifier:(id)a3
{
  v3 = [a3 componentsSeparatedByString:@"|"];
  if ([v3 count] < 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 objectAtIndexedSubscript:0];
  }

  return v4;
}

+ (id)localizedContentBodyStringWithString:(id)a3 forAction:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 routeInfo];
  if (v7 && (v8 = v7, [v6 routeInfo], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isExternalRoute"), v9, v8, v10))
  {
    v11 = objc_alloc(MEMORY[0x277CCACA8]);
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"AirPlay to %@" value:&stru_2839A6058 table:0];
    v14 = [v6 routeInfo];
    v15 = [v14 deviceName];
    v16 = [v11 initWithFormat:v13, v15];

    if ([v5 length])
    {
      v17 = [MEMORY[0x277CCACA8] localizedUserNotificationStringForKey:v5 arguments:0];
      v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@\n%@", v17, v16];
    }

    else
    {
      v18 = v16;
    }
  }

  else
  {
    if ([v5 length])
    {
      v19 = [MEMORY[0x277CCACA8] localizedUserNotificationStringForKey:v5 arguments:0];
    }

    else
    {
      v19 = v5;
    }

    v18 = v19;
  }

  return v18;
}

- (ATXActionNotificationServer)init
{
  v31[1] = *MEMORY[0x277D85DE8];
  v30.receiver = self;
  v30.super_class = ATXActionNotificationServer;
  v2 = [(ATXActionNotificationServer *)&v30 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CE2028]) initWithBundleIdentifier:@"com.apple.Siri.ActionPredictionNotifications"];
    notificationCenter = v2->_notificationCenter;
    v2->_notificationCenter = v3;

    [(UNUserNotificationCenter *)v2->_notificationCenter setDelegate:v2];
    [(UNUserNotificationCenter *)v2->_notificationCenter setWantsNotificationResponsesDelivered];
    v5 = v2->_notificationCenter;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __35__ATXActionNotificationServer_init__block_invoke;
    v28[3] = &unk_2785A0C48;
    v6 = v2;
    v29 = v6;
    [(UNUserNotificationCenter *)v5 requestAuthorizationWithOptions:4 completionHandler:v28];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v6, onPostTestNotifReceive, @"com.apple.Siri.TestActionNotification", 0, CFNotificationSuspensionBehaviorDrop);
    v8 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v8, v6, onPostTestNotifReceiveNoPrediction, @"com.apple.Siri.TestActionNotificationNoPrediction", 0, CFNotificationSuspensionBehaviorDrop);
    v9 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v9, v6, onPostTestNotifReceiveManyPredictions, @"com.apple.Siri.TestActionNotificationManyPredictions", 0, CFNotificationSuspensionBehaviorDrop);
    v10 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v10, v6, onPostTestNotifRemoveAll, @"com.apple.Siri.TestActionNotificationRemoveAll", 0, CFNotificationSuspensionBehaviorDrop);
    v11 = objc_alloc(MEMORY[0x277D41DB8]);
    v12 = MEMORY[0x277CBEBF8];
    v13 = [v11 initWithFeatureId:@"ActionPredictions" event:@"remove_notif" registerProperties:MEMORY[0x277CBEBF8]];
    removeTracker = v6->_removeTracker;
    v6->_removeTracker = v13;

    v15 = [objc_alloc(MEMORY[0x277D41DB8]) initWithFeatureId:@"ActionPredictions" event:@"post_notif_init" registerProperties:v12];
    notifyInitTracker = v6->_notifyInitTracker;
    v6->_notifyInitTracker = v15;

    v17 = [MEMORY[0x277D41DA0] propertyWithName:@"reason" possibleValues:&unk_283A58B50];
    v18 = objc_alloc(MEMORY[0x277D41DB8]);
    v31[0] = v17;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
    v20 = [v18 initWithFeatureId:@"ActionPredictions" event:@"post_notif_error" registerProperties:v19];
    notifyErrorTracker = v6->_notifyErrorTracker;
    v6->_notifyErrorTracker = v20;

    v22 = [objc_alloc(MEMORY[0x277D41DB8]) initWithFeatureId:@"ActionPredictions" event:@"post_notif_success" registerProperties:v12];
    notifySuccessTracker = v6->_notifySuccessTracker;
    v6->_notifySuccessTracker = v22;

    v24 = [MEMORY[0x277CEB500] sharedInstance];
    engagementRecordManager = v6->_engagementRecordManager;
    v6->_engagementRecordManager = v24;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v2;
}

void __35__ATXActionNotificationServer_init__block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = __atxlog_handle_notifications();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_INFO, "Notification Center access granted!", v8, 2u);
    }

    [*(a1 + 32) _setupNotifications];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __35__ATXActionNotificationServer_init__block_invoke_cold_1();
    }
  }
}

- (void)_setupNotifications
{
  v5 = [objc_alloc(MEMORY[0x277CE1F50]) initWithIdentifier:@"suggestedShortcut"];
  [v5 setBackgroundStyle:1];
  [v5 setHiddenPreviewsBodyPlaceholder:@" "];
  [v5 setListPriority:2];
  [v5 setOptions:131073];
  notificationCenter = self->_notificationCenter;
  v4 = [MEMORY[0x277CBEB98] setWithObjects:{v5, 0}];
  [(UNUserNotificationCenter *)notificationCenter setNotificationCategories:v4];
}

- (void)_postTestNotificationWithPredictionCount:(int64_t)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v5 = __atxlog_handle_notifications();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v46 = a3;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_INFO, "Posting %ld test notification(s)", buf, 0xCu);
  }

  if (a3 >= 1)
  {
    buf[0] = 0;
    if (CFPreferencesGetAppBooleanValue(@"displayLastDonationOnCoverSheet", *MEMORY[0x277CEBD00], buf))
    {
      v6 = [MEMORY[0x277CEB2F8] actionResponseForDeveloperMode];
      v7 = [v6 scoredActions];
      if (!v7)
      {
        v8 = [v6 proactiveSuggestions];

        if (v8)
        {
          v32 = a3;
          v9 = objc_alloc(MEMORY[0x277CBEB18]);
          v10 = [v6 proactiveSuggestions];
          v34 = [v9 initWithCapacity:{objc_msgSend(v10, "count")}];

          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          obj = [v6 proactiveSuggestions];
          v11 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v40;
            do
            {
              for (i = 0; i != v12; ++i)
              {
                if (*v40 != v13)
                {
                  objc_enumerationMutation(obj);
                }

                v15 = *(*(&v39 + 1) + 8 * i);
                v16 = objc_alloc(MEMORY[0x277CEB7F0]);
                v17 = [v15 atxActionExecutableObject];
                v18 = [v15 scoreSpecification];
                [v18 rawScore];
                *&v19 = v19;
                v20 = [v16 initWithPredictedItem:v17 score:v19];

                if (v20)
                {
                  [v34 addObject:v20];
                }
              }

              v12 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
            }

            while (v12);
          }

          v7 = [v34 copy];
          a3 = v32;
        }

        else
        {
          v7 = 0;
        }
      }

      v24 = [v7 count];
      if (v24 >= a3)
      {
        v25 = a3;
      }

      else
      {
        v25 = v24;
      }

      v22 = [v7 subarrayWithRange:{0, v25}];
    }

    else
    {
      v6 = objc_alloc_init(MEMORY[0x277CEB2E0]);
      v21 = [v6 actionPredictionsForConsumerSubType:21 limit:a3];
      if (!v21)
      {
        v23 = 0;
        goto LABEL_34;
      }

      v7 = v21;
      v22 = [v21 scoredActions];
    }

    v23 = v22;

    if (![v23 count])
    {
LABEL_35:

      goto LABEL_36;
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v6 = v23;
    v26 = [v6 countByEnumeratingWithState:&v35 objects:v43 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v36;
      do
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v36 != v28)
          {
            objc_enumerationMutation(v6);
          }

          v30 = [*(*(&v35 + 1) + 8 * j) predictedItem];
          [(ATXActionNotificationServer *)self postDemoOrDebugNotificationForATXAction:v30];
        }

        v27 = [v6 countByEnumeratingWithState:&v35 objects:v43 count:16];
      }

      while (v27);
    }

    v23 = v6;
LABEL_34:

    goto LABEL_35;
  }

LABEL_36:
  v31 = *MEMORY[0x277D85DE8];
}

- (void)postNotificationForATXAction:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(PETScalarEventTracker *)self->_notifyInitTracker trackEventWithPropertyValues:MEMORY[0x277CBEBF8]];
  if ([(ATXActionNotificationServer *)self hasLockscreenPrediction])
  {
    v5 = __atxlog_handle_notifications();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "Trying to predict action %@", &v8, 0xCu);
    }

    v6 = __atxlog_handle_notifications();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [ATXActionNotificationServer postNotificationForATXAction:];
    }

    [(ATXActionNotificationServer *)self removeAllActionPredictionNotificationsAndTrackEvent:0 recordFeedback:0];
  }

  [(ATXActionNotificationServer *)self postDemoOrDebugNotificationForATXAction:v4];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)postDemoOrDebugNotificationForATXAction:(id)a3
{
  v15[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D42070];
  v5 = a3;
  v6 = [v4 clientModelIdFromClientModelType:25];
  v7 = [objc_alloc(MEMORY[0x277D42078]) initWithClientModelId:v6 clientModelVersion:@"1.0"];
  v8 = objc_alloc(MEMORY[0x277CEB7F0]);
  LODWORD(v9) = 1.0;
  v10 = [v8 initWithPredictedItem:v5 score:v9];

  v15[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v12 = [ATXProactiveSuggestionBuilder proactiveSuggestionsForLockscreenActions:v11 clientModelSpec:v7];
  v13 = [v12 firstObject];

  [(ATXActionNotificationServer *)self _postNotificationForProactiveSuggestion:v13 blendingCacheUpdateUUID:0];
  v14 = *MEMORY[0x277D85DE8];
}

- (unint64_t)deliveredNotificationCount
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v3 = dispatch_semaphore_create(0);
  notificationCenter = self->_notificationCenter;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__ATXActionNotificationServer_deliveredNotificationCount__block_invoke;
  v9[3] = &unk_2785A0C70;
  v11 = &v12;
  v5 = v3;
  v10 = v5;
  [(UNUserNotificationCenter *)notificationCenter getDeliveredNotificationsWithCompletionHandler:v9];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__ATXActionNotificationServer_deliveredNotificationCount__block_invoke_2;
  v8[3] = &unk_2785967D8;
  v8[4] = &v12;
  [MEMORY[0x277D425A0] waitForSemaphore:v5 timeoutSeconds:&__block_literal_global_192 onAcquire:v8 onTimeout:1.0];
  v6 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v6;
}

void __57__ATXActionNotificationServer_deliveredNotificationCount__block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v16 = a1;
  *(*(*(a1 + 40) + 8) + 24) = [v3 count];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = __atxlog_handle_notifications();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = [v9 request];
          v12 = [v11 identifier];
          v13 = [v9 request];
          v14 = [v13 content];
          *buf = 138412546;
          v22 = v12;
          v23 = 2112;
          v24 = v14;
          _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, "Notification with id: %@, content: %@", buf, 0x16u);
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v6);
  }

  dispatch_semaphore_signal(*(v16 + 32));
  v15 = *MEMORY[0x277D85DE8];
}

void __57__ATXActionNotificationServer_deliveredNotificationCount__block_invoke_2(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = 0;
  v1 = __atxlog_handle_notifications();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __57__ATXActionNotificationServer_deliveredNotificationCount__block_invoke_2_cold_1();
  }
}

- (id)proactiveSuggestionsCurrentlyOnLockscreen
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__95;
  v15 = __Block_byref_object_dispose__95;
  v16 = objc_opt_new();
  v3 = dispatch_semaphore_create(0);
  notificationCenter = self->_notificationCenter;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __72__ATXActionNotificationServer_proactiveSuggestionsCurrentlyOnLockscreen__block_invoke;
  v8[3] = &unk_2785A0C98;
  v8[4] = self;
  v10 = &v11;
  v5 = v3;
  v9 = v5;
  [(UNUserNotificationCenter *)notificationCenter getDeliveredNotificationsWithCompletionHandler:v8];
  [MEMORY[0x277D425A0] waitForSemaphore:v5 timeoutSeconds:&__block_literal_global_194 onAcquire:&__block_literal_global_196 onTimeout:1.0];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __72__ATXActionNotificationServer_proactiveSuggestionsCurrentlyOnLockscreen__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(a1 + 32) _unarchiveProactiveSuggestionFromNotification:*(*(&v10 + 1) + 8 * v7)];
        if (v8)
        {
          [*(*(*(a1 + 48) + 8) + 40) addObject:v8];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  dispatch_semaphore_signal(*(a1 + 40));

  v9 = *MEMORY[0x277D85DE8];
}

void __72__ATXActionNotificationServer_proactiveSuggestionsCurrentlyOnLockscreen__block_invoke_3()
{
  v0 = __atxlog_handle_notifications();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __72__ATXActionNotificationServer_proactiveSuggestionsCurrentlyOnLockscreen__block_invoke_3_cold_1();
  }
}

- (void)postNotificationForProactiveSuggestion:(id)a3 blendingCacheUpdateUUID:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  [(PETScalarEventTracker *)self->_notifyInitTracker trackEventWithPropertyValues:MEMORY[0x277CBEBF8]];
  if ([(ATXActionNotificationServer *)self hasLockscreenPrediction])
  {
    v8 = __atxlog_handle_notifications();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "Trying to predict suggestion %@", &v11, 0xCu);
    }

    v9 = __atxlog_handle_notifications();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [ATXActionNotificationServer postNotificationForATXAction:];
    }

    [(ATXActionNotificationServer *)self removeAllActionPredictionNotificationsAndTrackEvent:0 recordFeedback:0];
  }

  [(ATXActionNotificationServer *)self _postNotificationForProactiveSuggestion:v6 blendingCacheUpdateUUID:v7];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_postNotificationForProactiveSuggestion:(id)a3 blendingCacheUpdateUUID:(id)a4
{
  v72[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v59 = a4;
  v7 = __atxlog_handle_blending();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    *buf = 138412546;
    v66 = v9;
    v67 = 2112;
    v68 = v6;
    _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "%@ - attempting to post notification for suggestion: %@", buf, 0x16u);
  }

  v10 = [(__CFString *)v6 atxActionExecutableObject];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 actionTitle];
    v13 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v58 = [v12 stringByTrimmingCharactersInSet:v13];

    v14 = [v11 actionSubtitle];
    v15 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v57 = [v14 stringByTrimmingCharactersInSet:v15];

    v16 = [v11 _bundleIdForDisplay];
    if (v16)
    {
      if ([v58 length] || objc_msgSend(v57, "length"))
      {
        if ([v16 isEqualToString:@"com.apple.mobilenotes"] && (objc_msgSend(v11, "isHeuristic") & 1) == 0)
        {

          v57 = 0;
        }

        v56 = [(__CFString *)v6 encodeAsProto];
        v55 = [v11 actionKey];
        if (v56 && v55)
        {
          v71[0] = @"actionKey";
          v71[1] = @"proactiveSuggestion";
          v72[0] = v55;
          v72[1] = v56;
          v71[2] = @"blendingCacheUpdateUUID";
          v17 = [v59 UUIDString];
          v18 = v17;
          v19 = &stru_2839A6058;
          if (v17)
          {
            v19 = v17;
          }

          v72[2] = v19;
          v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v72 forKeys:v71 count:3];

          v20 = objc_alloc_init(MEMORY[0x277CE1F60]);
          [(__CFString *)v20 setShouldSuppressScreenLightUp:1];
          [(__CFString *)v20 setUserInfo:v53];
          [(__CFString *)v20 setShouldHideDate:1];
          [(__CFString *)v20 setSound:0];
          [(__CFString *)v20 setShouldAuthenticateDefaultAction:1];
          if ([v16 length])
          {
            v21 = [v11 bundleId];
            v22 = [v11 userActivityWebpageURL];
            v23 = ATXBundleIdReplacementForBundleIdWithWebpageURLHint();

            v16 = v23;
          }

          v24 = [MEMORY[0x277CCACA8] localizedUserNotificationStringForKey:v58 arguments:0];
          [(__CFString *)v20 setTitle:v24];

          v25 = [ATXActionNotificationServer localizedContentBodyStringWithString:v57 forAction:v11];
          [(__CFString *)v20 setBody:v25];

          v26 = __atxlog_handle_notifications();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            v27 = [(__CFString *)v20 title];
            v28 = [(__CFString *)v20 body];
            *buf = 138412546;
            v66 = v27;
            v67 = 2112;
            v68 = v28;
            _os_log_impl(&dword_2263AA000, v26, OS_LOG_TYPE_DEFAULT, "UNMutableNotificationContent content title: %@, body: %@", buf, 0x16u);
          }

          v29 = [v11 intent];
          v54 = [v29 _className];

          if ([v54 isEqualToString:@"DNDToggleDoNotDisturbIntent"])
          {
            v50 = [MEMORY[0x277CE1FB0] iconNamed:@"dnd-notif-icon"];
            [(__CFString *)v20 setIcon:v50, v50];
          }

          else
          {
            if ([v54 isEqualToString:@"WFSetAirplaneModeIntent"])
            {
              [MEMORY[0x277CE1FB0] iconNamed:@"airplane-notif-icon"];
            }

            else
            {
              [MEMORY[0x277CE1FB0] iconForApplicationIdentifier:v16];
            }
            v52 = ;
            [(__CFString *)v20 setIcon:v52, v52];
          }

          v34 = [(ATXActionNotificationServer *)self _localizedStringForKey:@"ATXNotificationFooter" defaultValue:@"ATXNotificationFooter" languageCode:0];
          [(__CFString *)v20 setFooter:v34];

          v35 = [v11 intent];
          v36 = [v35 atx_supportsBackgroundExecution];

          if (v36 && (([MEMORY[0x277D42590] isAudioAccessory] & 1) != 0 || !objc_msgSend(v11, "isTVWhiteListedLongFormMedia")))
          {
            [(__CFString *)v20 setShouldBackgroundDefaultAction:1];
            [(__CFString *)v20 setShouldPreventNotificationDismissalAfterDefaultAction:1];
          }

          else
          {
            [(__CFString *)v20 setShouldBackgroundDefaultAction:1];
          }

          [(__CFString *)v20 setCategoryIdentifier:@"suggestedShortcut"];
          v37 = __atxlog_handle_notifications();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446466;
            v66 = "[ATXActionNotificationServer _postNotificationForProactiveSuggestion:blendingCacheUpdateUUID:]";
            v67 = 2112;
            v68 = v20;
            _os_log_impl(&dword_2263AA000, v37, OS_LOG_TYPE_DEFAULT, "%{public}s posting content: %@", buf, 0x16u);
          }

          v38 = [v11 intent];
          v39 = [v38 _intents_bundleIdForDisplay];
          v40 = v39;
          if (v39)
          {
            v41 = v39;
          }

          else
          {
            v41 = [v11 bundleId];
          }

          v42 = v41;

          v43 = [objc_opt_class() _requestIdentifierForBundleId:v42];
          v44 = [MEMORY[0x277CE1FC0] requestWithIdentifier:v43 content:v20 trigger:0 destinations:6];
          v45 = __atxlog_handle_notifications();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            v46 = [v44 identifier];
            *buf = 138412290;
            v66 = v46;
            _os_log_impl(&dword_2263AA000, v45, OS_LOG_TYPE_DEFAULT, "posting notification req id: %@", buf, 0xCu);
          }

          objc_initWeak(buf, self);
          notificationCenter = self->_notificationCenter;
          v60[0] = MEMORY[0x277D85DD0];
          v60[1] = 3221225472;
          v60[2] = __95__ATXActionNotificationServer__postNotificationForProactiveSuggestion_blendingCacheUpdateUUID___block_invoke;
          v60[3] = &unk_2785A0CC0;
          objc_copyWeak(&v64, buf);
          v61 = v11;
          v62 = v6;
          v63 = v59;
          [(UNUserNotificationCenter *)notificationCenter addNotificationRequest:v44 withCompletionHandler:v60];

          objc_destroyWeak(&v64);
          objc_destroyWeak(buf);
        }

        else
        {
          v32 = __atxlog_handle_ui();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
          {
            v49 = @"nil";
            *buf = 138412802;
            v66 = v55;
            v67 = 2112;
            if (v56)
            {
              v49 = @"not nil";
            }

            v68 = v49;
            v69 = 2112;
            v70 = v6;
            _os_log_fault_impl(&dword_2263AA000, v32, OS_LOG_TYPE_FAULT, "not posting notification for actionKey: %@, proactiveSuggestionData: %@, suggestion: %@", buf, 0x20u);
          }

          [(PETScalarEventTracker *)self->_notifyErrorTracker trackEventWithPropertyValues:&unk_283A58BB0];
        }
      }

      else
      {
        v33 = __atxlog_handle_notifications();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          [ATXActionNotificationServer _postNotificationForProactiveSuggestion:blendingCacheUpdateUUID:];
        }

        [(PETScalarEventTracker *)self->_notifyErrorTracker trackEventWithPropertyValues:&unk_283A58B98];
      }
    }

    else
    {
      v31 = __atxlog_handle_notifications();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        [ATXActionNotificationServer _postNotificationForProactiveSuggestion:blendingCacheUpdateUUID:];
      }

      [(PETScalarEventTracker *)self->_notifyErrorTracker trackEventWithPropertyValues:&unk_283A58B80];
    }
  }

  else
  {
    v30 = __atxlog_handle_notifications();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [ATXActionNotificationServer _postNotificationForProactiveSuggestion:blendingCacheUpdateUUID:];
    }

    [(PETScalarEventTracker *)self->_notifyErrorTracker trackEventWithPropertyValues:&unk_283A58B68];
  }

  v48 = *MEMORY[0x277D85DE8];
}

void __95__ATXActionNotificationServer__postNotificationForProactiveSuggestion_blendingCacheUpdateUUID___block_invoke(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = __atxlog_handle_notifications();
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __95__ATXActionNotificationServer__postNotificationForProactiveSuggestion_blendingCacheUpdateUUID___block_invoke_cold_1();
    }

    v7 = __atxlog_handle_blending();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = [*(a1 + 32) actionKey];
      v11 = *(a1 + 40);
      *buf = 138413058;
      v24 = v9;
      v25 = 2112;
      v26 = v10;
      v27 = 2112;
      v28 = v3;
      v29 = 2112;
      v30 = v11;
      _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "%@ - failed to post notification with actionKey: %@, error: %@, suggestion: %@", buf, 0x2Au);
    }

    if (WeakRetained)
    {
      [WeakRetained[5] trackEventWithPropertyValues:&unk_283A58BC8];
    }
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_INFO, "notif success", buf, 2u);
    }

    v12 = __atxlog_handle_blending();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = [*(a1 + 32) actionKey];
      v16 = *(a1 + 40);
      *buf = 138412802;
      v24 = v14;
      v25 = 2112;
      v26 = v15;
      v27 = 2112;
      v28 = v16;
      _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_DEFAULT, "%@ - posted notification with actionKey: %@, suggestion: %@", buf, 0x20u);
    }

    if (WeakRetained)
    {
      [WeakRetained[6] trackEventWithPropertyValues:MEMORY[0x277CBEBF8]];
    }

    v17 = objc_opt_new();
    v18 = *(a1 + 48);
    v19 = [*(a1 + 40) uuid];
    v22 = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
    [WeakRetained _sendLockscreenEventToBiomeWithDate:v17 eventType:1 blendingCacheId:v18 suggestionIds:v20];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)removeActionPredictionNotificationsMatchingAction:(id)a3
{
  v4 = a3;
  v5 = dispatch_semaphore_create(0);
  objc_initWeak(&location, self);
  notificationCenter = self->_notificationCenter;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __81__ATXActionNotificationServer_removeActionPredictionNotificationsMatchingAction___block_invoke;
  v10[3] = &unk_2785A0CE8;
  objc_copyWeak(&v13, &location);
  v10[4] = self;
  v7 = v4;
  v11 = v7;
  v8 = v5;
  v12 = v8;
  [(UNUserNotificationCenter *)notificationCenter getDeliveredNotificationsWithCompletionHandler:v10];
  if ([MEMORY[0x277D425A0] waitForSemaphore:v8 timeoutSeconds:2.0] == 1)
  {
    v9 = __atxlog_handle_notifications();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ATXActionNotificationServer removeActionPredictionNotificationsMatchingAction:];
    }
  }

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __81__ATXActionNotificationServer_removeActionPredictionNotificationsMatchingAction___block_invoke(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v23 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v24 objects:v32 count:16];
  v22 = v4;
  if (v5)
  {
    v6 = v5;
    v7 = *v25;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        v10 = [*(a1 + 32) _actionKeyFromNotification:v9];
        v11 = [*(a1 + 40) actionKey];
        v12 = v11;
        if (v10)
        {
          v13 = v11 == 0;
        }

        else
        {
          v13 = 1;
        }

        if (!v13 && [v10 isEqualToString:v11])
        {
          v14 = [*(a1 + 32) _unarchiveProactiveSuggestionFromNotification:v9];
          v15 = [v14 atxActionExecutableObject];
          if (v15 && [_ATXActionUtils isContainmentBetweenAction:v15 other:*(a1 + 40)])
          {
            v16 = [v9 request];
            v17 = [v16 identifier];
            [v23 addObject:v17];

            v4 = v22;
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v6);
  }

  if ([v23 count])
  {
    [WeakRetained[1] removeDeliveredNotificationsWithIdentifiers:v23];
  }

  v18 = __atxlog_handle_notifications();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [*(a1 + 40) actionKey];
    *buf = 138412546;
    v29 = v23;
    v30 = 2112;
    v31 = v19;
    _os_log_impl(&dword_2263AA000, v18, OS_LOG_TYPE_DEFAULT, "Removed delivered notifications: %@ matching action: %@", buf, 0x16u);

    v4 = v22;
  }

  dispatch_semaphore_signal(*(a1 + 48));
  v20 = *MEMORY[0x277D85DE8];
}

- (void)removeAllActionPredictionNotificationsAndTrackEvent:(BOOL)a3 recordFeedback:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v24 = *MEMORY[0x277D85DE8];
  v7 = __atxlog_handle_feedback();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 67109376;
    HIDWORD(buf) = v5;
    v22 = 1024;
    v23 = v4;
    _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "removing all lockscreen predictions with trackEvent: %{BOOL}d and recordFeedback: %{BOOL}d", &buf, 0xEu);
  }

  if (v5)
  {
    [(PETScalarEventTracker *)self->_removeTracker trackEventWithPropertyValues:MEMORY[0x277CBEBF8]];
  }

  v8 = dispatch_semaphore_create(0);
  objc_initWeak(&buf, self);
  notificationCenter = self->_notificationCenter;
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __98__ATXActionNotificationServer_removeAllActionPredictionNotificationsAndTrackEvent_recordFeedback___block_invoke;
  v16 = &unk_2785A0D10;
  objc_copyWeak(&v19, &buf);
  v20 = v4;
  v17 = self;
  v10 = v8;
  v18 = v10;
  [(UNUserNotificationCenter *)notificationCenter getDeliveredNotificationsWithCompletionHandler:&v13];
  if ([MEMORY[0x277D425A0] waitForSemaphore:v10 timeoutSeconds:{2.0, v13, v14, v15, v16, v17}] == 1)
  {
    v11 = __atxlog_handle_notifications();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ATXActionNotificationServer removeActionPredictionNotificationsMatchingAction:];
    }
  }

  objc_destroyWeak(&v19);
  objc_destroyWeak(&buf);

  v12 = *MEMORY[0x277D85DE8];
}

void __98__ATXActionNotificationServer_removeAllActionPredictionNotificationsAndTrackEvent_recordFeedback___block_invoke(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (*(a1 + 56) == 1)
  {
    v22 = WeakRetained;
    v23 = v3;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    obj = v3;
    v6 = [obj countByEnumeratingWithState:&v25 objects:v32 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v26;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v26 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v25 + 1) + 8 * i);
          v11 = [*(a1 + 32) _unarchiveProactiveSuggestionFromNotification:v10];
          v12 = [*(a1 + 32) _blendingCacheUpdateUUIDFromNotification:v10];
          v13 = v12;
          if (v11)
          {
            v14 = v12 == 0;
          }

          else
          {
            v14 = 1;
          }

          if (!v14)
          {
            v15 = *(a1 + 32);
            v16 = objc_opt_new();
            v17 = [v11 uuid];
            v31 = v17;
            v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
            [v15 _sendLockscreenEventToBiomeWithDate:v16 eventType:4 blendingCacheId:v13 suggestionIds:v18];
          }
        }

        v7 = [obj countByEnumeratingWithState:&v25 objects:v32 count:16];
      }

      while (v7);
    }

    v5 = v22;
    v3 = v23;
  }

  [v5[1] removeAllDeliveredNotifications];
  v19 = __atxlog_handle_notifications();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [v3 count];
    *buf = 134217984;
    v30 = v20;
    _os_log_impl(&dword_2263AA000, v19, OS_LOG_TYPE_DEFAULT, "Removed all delivered notifications: %ld", buf, 0xCu);
  }

  dispatch_semaphore_signal(*(a1 + 40));
  v21 = *MEMORY[0x277D85DE8];
}

- (void)_removeNotificationWithIdentifier:(id)a3 trackEvent:(BOOL)a4
{
  v4 = a4;
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (v4)
  {
    [(PETScalarEventTracker *)self->_removeTracker trackEventWithPropertyValues:MEMORY[0x277CBEBF8]];
  }

  notificationCenter = self->_notificationCenter;
  v13[0] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  [(UNUserNotificationCenter *)notificationCenter removeDeliveredNotificationsWithIdentifiers:v8];

  v9 = __atxlog_handle_notifications();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "Removed notification with identifier: %@", &v11, 0xCu);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isRTL
{
  v2 = MEMORY[0x277CBEAF8];
  v3 = [MEMORY[0x277CBEAF8] currentLocale];
  v4 = [v3 localeIdentifier];
  LOBYTE(v2) = [v2 characterDirectionForLanguage:v4] == 2;

  return v2;
}

- (id)_localizedStringForKey:(id)a3 defaultValue:(id)a4 languageCode:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  if (!v9)
  {
    v11 = [MEMORY[0x277CBEAF8] currentLocale];
    v9 = [v11 localeIdentifier];

    if (!v9)
    {
LABEL_16:
      if ([v8 length])
      {
        v21 = v8;
      }

      else
      {
        v21 = v7;
      }

      v16 = v21;
      goto LABEL_20;
    }
  }

  v12 = [v10 localizations];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v13 = CFBundleCopyLocalizationsForPreferences(v12, [MEMORY[0x277CBEA60] arrayWithObject:v9]);
  v14 = [(__CFArray *)v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (!v14)
  {

    goto LABEL_16;
  }

  v15 = v14;
  v16 = 0;
  v17 = *v25;
  while (2)
  {
    v18 = 0;
    v19 = v16;
    do
    {
      if (*v25 != v17)
      {
        objc_enumerationMutation(v13);
      }

      v20 = *(*(&v24 + 1) + 8 * v18);
      CFBundleGetBundleWithIdentifier([v10 bundleIdentifier]);
      v16 = CFBundleCopyLocalizedStringForLocalization();

      if (v16 && ([v16 isEqualToString:v7] & 1) == 0)
      {

        goto LABEL_20;
      }

      ++v18;
      v19 = v16;
    }

    while (v15 != v18);
    v15 = [(__CFArray *)v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v15)
    {
      continue;
    }

    break;
  }

  if (!v16)
  {
    goto LABEL_16;
  }

LABEL_20:

  v22 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)_actionKeyFromNotification:(id)a3
{
  v3 = [a3 request];
  v4 = [v3 content];
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"actionKey"];

  return v6;
}

- (id)_blendingCacheUpdateUUIDFromNotification:(id)a3
{
  v3 = [a3 request];
  v4 = [v3 content];
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"blendingCacheUpdateUUID"];

  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_unarchiveProactiveSuggestionFromNotification:(id)a3
{
  v3 = [a3 request];
  v4 = [v3 content];
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"proactiveSuggestion"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    if (v7)
    {
      v8 = [objc_alloc(MEMORY[0x277D42068]) initWithProtoData:v7];
      goto LABEL_10;
    }

    v9 = __atxlog_handle_ui();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [ATXActionNotificationServer _unarchiveProactiveSuggestionFromNotification:];
    }
  }

  else
  {
    v7 = __atxlog_handle_ui();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [ATXActionNotificationServer _unarchiveProactiveSuggestionFromNotification:];
    }
  }

  v8 = 0;
LABEL_10:

  return v8;
}

- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5
{
  v73 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = __atxlog_handle_notifications();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v66 = v7;
    _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "daemon didReceiveNotificationResponse: %@", buf, 0xCu);
  }

  v10 = [v7 notification];
  v11 = [(ATXActionNotificationServer *)self _unarchiveProactiveSuggestionFromNotification:v10];

  v12 = [v11 atxActionExecutableObject];
  v13 = [v7 notification];
  v14 = [(ATXActionNotificationServer *)self _blendingCacheUpdateUUIDFromNotification:v13];

  v15 = [v7 actionIdentifier];
  v16 = [v15 isEqualToString:*MEMORY[0x277CE20E8]];
  v17 = __atxlog_handle_feedback();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v66 = v15;
    v67 = 2112;
    v68 = v12;
    _os_log_impl(&dword_2263AA000, v17, OS_LOG_TYPE_DEFAULT, "received notification center response with identifier: %@ for action: %@", buf, 0x16u);
  }

  if (v11 && v12)
  {
    v58 = v7;
    if (v16)
    {
      v18 = 2;
    }

    else
    {
      v18 = 3;
    }

    v59 = v14;
    v19 = objc_opt_new();
    [v11 uuid];
    v21 = v20 = v11;
    v64 = v21;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v64 count:1];
    [(ATXActionNotificationServer *)self _sendLockscreenEventToBiomeWithDate:v19 eventType:v18 blendingCacheId:v59 suggestionIds:v22];

    v14 = v59;
    v23 = objc_opt_new();
    [(ATXActionNotificationServer *)self _sendLockscreenEventToBiomeWithDate:v23 eventType:4 blendingCacheId:v59 suggestionIds:0];

    engagementRecordManager = self->_engagementRecordManager;
    if (v16)
    {
      v57 = v20;
      [(ATXEngagementRecordManager *)engagementRecordManager addEngagedSuggestion:v20 engagementRecordType:1];
      if ([v12 actionType] == 5)
      {
        v25 = __atxlog_handle_notifications();
        v7 = v58;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = [v12 bundleId];
          *buf = 138412290;
          v66 = v26;
          _os_log_impl(&dword_2263AA000, v25, OS_LOG_TYPE_DEFAULT, "launching UAUserActivityProxy for bundleId: %@", buf, 0xCu);
        }

        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __107__ATXActionNotificationServer_userNotificationCenter_didReceiveNotificationResponse_withCompletionHandler___block_invoke;
        block[3] = &unk_278596BB8;
        v61 = v12;
        dispatch_async(MEMORY[0x277D85CD0], block);
        if (v8)
        {
          v8[2](v8);
        }

        v11 = v57;
        goto LABEL_42;
      }

      v7 = v58;
      if ([v12 actionType] || (objc_msgSend(v12, "intent"), v28 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v28, (isKindOfClass & 1) == 0))
      {
        if ([v12 actionType] && objc_msgSend(v12, "actionType") != 2)
        {
          if ([v12 actionType] != 1)
          {
            v53 = __atxlog_handle_notifications();
            if (os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
            {
              [ATXActionNotificationServer userNotificationCenter:didReceiveNotificationResponse:withCompletionHandler:];
            }

            v31 = 0;
            v47 = 0;
            v11 = v57;
            if (!v8)
            {
              goto LABEL_41;
            }

            goto LABEL_40;
          }

          v49 = objc_alloc(MEMORY[0x277CD4158]);
          v30 = [v12 userActivity];
          v50 = [v12 bundleId];
          v32 = [v49 initWithUserActivity:v30 bundleIdentifier:v50];

          v31 = 0;
          v36 = 2;
LABEL_32:

          v37 = __atxlog_handle_notifications();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_2263AA000, v37, OS_LOG_TYPE_DEFAULT, "invoking ShortcutsRuntime for execution", buf, 2u);
          }

          if (v31)
          {
            v55 = v36;
            v56 = v32;
            v38 = objc_alloc(MEMORY[0x277D7A150]);
            v39 = [v12 bundleId];
            v40 = [v38 initWithLinkAction:v31 bundleIdentifier:v39 resultSurface:2];
            currentWorkflowRunnerClient = self->_currentWorkflowRunnerClient;
            self->_currentWorkflowRunnerClient = v40;
          }

          else
          {
            if (!v32)
            {
              v54 = __atxlog_handle_notifications();
              if (os_log_type_enabled(v54, OS_LOG_TYPE_FAULT))
              {
                [ATXActionNotificationServer userNotificationCenter:didReceiveNotificationResponse:withCompletionHandler:];
              }

              v31 = 0;
              v47 = 0;
              v11 = v57;
LABEL_39:
              v14 = v59;
              if (!v8)
              {
LABEL_41:

                goto LABEL_42;
              }

LABEL_40:
              v8[2](v8);
              goto LABEL_41;
            }

            v55 = v36;
            v56 = v32;
            v42 = [objc_alloc(MEMORY[0x277D7A150]) initWithINShortcut:v32 executionContext:3];
            v39 = self->_currentWorkflowRunnerClient;
            self->_currentWorkflowRunnerClient = v42;
          }

          [(WFSuggestionsWorkflowRunnerClient *)self->_currentWorkflowRunnerClient setDelegate:self];
          v62[0] = @"notifID";
          v43 = [v58 notification];
          v44 = [v43 request];
          v45 = [v44 identifier];
          v62[1] = @"atxAction";
          v63[0] = v45;
          v63[1] = v12;
          v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:v62 count:2];
          [(WFSuggestionsWorkflowRunnerClient *)self->_currentWorkflowRunnerClient setUserInfo:v46];

          [(WFSuggestionsWorkflowRunnerClient *)self->_currentWorkflowRunnerClient start];
          [MEMORY[0x277CEB668] logActionViewForType:v55 inContext:2];
          v47 = v56;
          v11 = v57;
          goto LABEL_39;
        }

        v33 = [v12 bundleId];
        v34 = [v12 intent];
        [v34 _setLaunchId:v33];

        v35 = objc_alloc(MEMORY[0x277CD4158]);
        v30 = [v12 intent];
        v32 = [v35 initWithIntent:v30];
        v31 = 0;
      }

      else
      {
        v30 = [v12 intent];
        v31 = [v30 linkAction];
        v32 = 0;
      }

      v36 = 1;
      goto LABEL_32;
    }

    [(ATXEngagementRecordManager *)engagementRecordManager addHiddenSuggestion:v20 duration:120 engagementRecordType:*MEMORY[0x277CEBA90]];
    v11 = v20;
    v7 = v58;
    if (!v8)
    {
      goto LABEL_42;
    }

LABEL_24:
    v8[2](v8);
    goto LABEL_42;
  }

  if (v14)
  {
    v27 = __atxlog_handle_feedback();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
      v51 = objc_opt_class();
      v52 = NSStringFromClass(v51);
      *buf = 138413058;
      v66 = v52;
      v67 = 2112;
      v68 = v14;
      v69 = 2112;
      v70 = v11;
      v71 = 2112;
      v72 = v12;
      _os_log_fault_impl(&dword_2263AA000, v27, OS_LOG_TYPE_FAULT, "%@ - found blendingCacheUpdateUUID: %@, but no suggestion or action: %@ %@", buf, 0x2Au);
    }
  }

  if (v8)
  {
    goto LABEL_24;
  }

LABEL_42:

  v48 = *MEMORY[0x277D85DE8];
}

void __107__ATXActionNotificationServer_userNotificationCenter_didReceiveNotificationResponse_withCompletionHandler___block_invoke(uint64_t a1)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D0AC70];
  v8[0] = *MEMORY[0x277D0AC58];
  v8[1] = v2;
  v9[0] = MEMORY[0x277CBEC38];
  v9[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];
  v4 = [*(a1 + 32) userActivityProxy];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __107__ATXActionNotificationServer_userNotificationCenter_didReceiveNotificationResponse_withCompletionHandler___block_invoke_2;
  v6[3] = &unk_2785A0C48;
  v7 = *(a1 + 32);
  [v4 launchActivityWithOptions:v3 completionHandler:v6];

  v5 = *MEMORY[0x277D85DE8];
}

void __107__ATXActionNotificationServer_userNotificationCenter_didReceiveNotificationResponse_withCompletionHandler___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!a2)
  {
    goto LABEL_5;
  }

  v6 = __atxlog_handle_notifications();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 32) bundleId];
    v12 = 138412290;
    v13 = v7;
    _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "successfully launched UAUserActivityProxy for bundleId: %@", &v12, 0xCu);
  }

  if (v5)
  {
LABEL_5:
    v8 = __atxlog_handle_notifications();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __107__ATXActionNotificationServer_userNotificationCenter_didReceiveNotificationResponse_withCompletionHandler___block_invoke_2_cold_1(a1);
    }
  }

  v9 = [*(a1 + 32) userActivityProxy];
  v10 = objc_opt_self();

  v11 = *MEMORY[0x277D85DE8];
}

- (void)workflowRunnerClient:(id)a3 didStartRunningWorkflowWithProgress:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = __atxlog_handle_notifications();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134218240;
    v10 = v5;
    v11 = 2048;
    v12 = v6;
    _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "workflowRunnerClient: <%p> didStartRunningWorkflowWithProgress: <%p>", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)workflowRunnerClient:(id)a3 didFinishRunningWorkflowWithOutput:(id)a4 error:(id)a5 cancelled:(BOOL)a6
{
  v6 = a6;
  v26 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  v11 = __atxlog_handle_notifications();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 134217984;
    v25 = v9;
    _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_DEFAULT, "workflowRunnerClient: <%p> didFinishRunningWorkflowWithOutput:error:cancelled:", &v24, 0xCu);
  }

  if (v10 || v6)
  {
    if (v6)
    {
      v18 = __atxlog_handle_notifications();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v24) = 0;
        _os_log_impl(&dword_2263AA000, v18, OS_LOG_TYPE_DEFAULT, "ShortcutsRuntime was cancelled. Keeping notification on screen.", &v24, 2u);
      }
    }

    if (v10)
    {
      v19 = __atxlog_handle_notifications();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [ATXActionNotificationServer workflowRunnerClient:didFinishRunningWorkflowWithOutput:error:cancelled:];
      }

      [MEMORY[0x277CEB668] logError:7 inContext:2];
    }
  }

  else
  {
    v12 = __atxlog_handle_notifications();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v24) = 0;
      _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_DEFAULT, "ShortcutsRuntime completed successfully.", &v24, 2u);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v9;
      v14 = [v13 userInfo];
      v15 = [v14 objectForKeyedSubscript:@"notifID"];
      v16 = __atxlog_handle_notifications();
      v17 = v16;
      if (v15)
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v24 = 138412290;
          v25 = v15;
          _os_log_impl(&dword_2263AA000, v17, OS_LOG_TYPE_DEFAULT, "therefore removing notification with req id: %@", &v24, 0xCu);
        }

        [(ATXActionNotificationServer *)self _removeNotificationWithIdentifier:v15 trackEvent:1];
      }

      else
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
        {
          [ATXActionNotificationServer workflowRunnerClient:didFinishRunningWorkflowWithOutput:error:cancelled:];
        }
      }

      v21 = [v14 objectForKeyedSubscript:@"atxAction"];
      if ([v21 actionType] == 1)
      {
        v22 = 2;
      }

      else
      {
        v22 = 1;
      }

      [MEMORY[0x277CEB668] logActionExecuteForType:v22 inContext:2];
    }

    else
    {
      v20 = __atxlog_handle_notifications();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        [ATXActionNotificationServer workflowRunnerClient:didFinishRunningWorkflowWithOutput:error:cancelled:];
      }
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __35__ATXActionNotificationServer_init__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2263AA000, v0, v1, "notification center access not granted!: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __95__ATXActionNotificationServer__postNotificationForProactiveSuggestion_blendingCacheUpdateUUID___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2263AA000, v0, v1, "addNotificationRequest failed: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_sendLockscreenEventToBiomeWithDate:(uint64_t)a1 eventType:(void *)a2 blendingCacheId:suggestionIds:.cold.1(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v10 = [a2 jsonDict];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v5, v6, OS_LOG_TYPE_DEBUG, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_unarchiveProactiveSuggestionFromNotification:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_fault_impl(v2, v3, OS_LOG_TYPE_FAULT, v4, v5, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_unarchiveProactiveSuggestionFromNotification:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_fault_impl(v2, v3, OS_LOG_TYPE_FAULT, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

void __107__ATXActionNotificationServer_userNotificationCenter_didReceiveNotificationResponse_withCompletionHandler___block_invoke_2_cold_1(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) bundleId];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)workflowRunnerClient:didFinishRunningWorkflowWithOutput:error:cancelled:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2263AA000, v0, v1, "workflowRunnerClient:didFinishRunningWithError: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end