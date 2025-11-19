@interface ATXDigestGlobalNotificationFeedbackPipeline
- (ATXDigestGlobalNotificationFeedbackPipeline)init;
- (ATXDigestGlobalNotificationFeedbackPipeline)initWithFeedbackStore:(id)a3 notificationQuantityProvider:(id)a4 lastRunTimestampKey:(id)a5 constants:(id)a6;
- (void)logGlobalNotificationStatisticsToDigestFeedbackWithXPCActivity:(id)a3;
@end

@implementation ATXDigestGlobalNotificationFeedbackPipeline

- (ATXDigestGlobalNotificationFeedbackPipeline)init
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  [v4 updateDatabase];
  v5 = objc_opt_new();
  v6 = [(ATXDigestGlobalNotificationFeedbackPipeline *)self initWithFeedbackStore:v3 notificationQuantityProvider:v4 lastRunTimestampKey:@"digestGlobalNotficationFeedbackPipelineLastRunTime" constants:v5];

  return v6;
}

- (ATXDigestGlobalNotificationFeedbackPipeline)initWithFeedbackStore:(id)a3 notificationQuantityProvider:(id)a4 lastRunTimestampKey:(id)a5 constants:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = ATXDigestGlobalNotificationFeedbackPipeline;
  v15 = [(ATXDigestGlobalNotificationFeedbackPipeline *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_feedbackStore, a3);
    objc_storeStrong(&v16->_notificationQuantityProvider, a4);
    objc_storeStrong(&v16->_lastRunTimestampUserDefaultsKey, a5);
    objc_storeStrong(&v16->_c, a6);
  }

  return v16;
}

- (void)logGlobalNotificationStatisticsToDigestFeedbackWithXPCActivity:(id)a3
{
  v63 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138412290;
    v62 = v7;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_INFO, "[%@] Starting pipeline", buf, 0xCu);
  }

  feedbackStore = self->_feedbackStore;
  [(ATXNotificationDigestRankingConstants *)self->_c dailyDecayFactor];
  [(ATXNotificationDigestFeedbackProtocol *)feedbackStore decayFeedbackByFactor:?];
  v9 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    *buf = 138412290;
    v62 = v11;
    _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_INFO, "[%@] Decayed digest feedback", buf, 0xCu);
  }

  v12 = objc_alloc(MEMORY[0x277CBEBD0]);
  v13 = [v12 initWithSuiteName:*MEMORY[0x277CEBD00]];
  Current = CFAbsoluteTimeGetCurrent();
  v15 = [v13 objectForKey:self->_lastRunTimestampUserDefaultsKey];

  if (v15)
  {
    [v13 doubleForKey:self->_lastRunTimestampUserDefaultsKey];
    v17 = v16;
  }

  else
  {
    v17 = 0.0;
  }

  if ([v4 didDefer])
  {
    v18 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      *buf = 138412290;
      v62 = v20;
      _os_log_impl(&dword_2263AA000, v18, OS_LOG_TYPE_INFO, "[%@] XPC Activity deferred.", buf, 0xCu);
    }
  }

  else
  {
    v18 = [(ATXNotificationQuantityProviderProtocol *)self->_notificationQuantityProvider totalNotificationsPerAppFromStartTime:v17 toEndTime:Current];
    if ([v4 didDefer])
    {
      v21 = __atxlog_handle_notification_management();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = objc_opt_class();
        v23 = NSStringFromClass(v22);
        *buf = 138412290;
        v62 = v23;
        _os_log_impl(&dword_2263AA000, v21, OS_LOG_TYPE_INFO, "[%@] XPC Activity deferred.", buf, 0xCu);
      }
    }

    else
    {
      v21 = [(ATXNotificationQuantityProviderProtocol *)self->_notificationQuantityProvider messageNotificationsPerAppFromStartTime:v17 toEndTime:Current];
      if ([v4 didDefer])
      {
        v24 = __atxlog_handle_notification_management();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v25 = objc_opt_class();
          v26 = NSStringFromClass(v25);
          *buf = 138412290;
          v62 = v26;
          _os_log_impl(&dword_2263AA000, v24, OS_LOG_TYPE_INFO, "[%@] XPC Activity deferred.", buf, 0xCu);
        }
      }

      else
      {
        v24 = [(ATXNotificationQuantityProviderProtocol *)self->_notificationQuantityProvider timeSensitiveNonmessageNotificationsPerAppFromStartTime:v17 toEndTime:Current];
        if ([v4 didDefer])
        {
          v27 = __atxlog_handle_notification_management();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            v28 = objc_opt_class();
            v29 = NSStringFromClass(v28);
            *buf = 138412290;
            v62 = v29;
            _os_log_impl(&dword_2263AA000, v27, OS_LOG_TYPE_INFO, "[%@] XPC Activity deferred.", buf, 0xCu);
          }
        }

        else
        {
          v53 = v24;
          v54 = v21;
          v55 = self;
          v50 = v13;
          v51 = v4;
          v58 = 0u;
          v59 = 0u;
          v56 = 0u;
          v57 = 0u;
          v49 = v18;
          v30 = v18;
          v31 = [v30 countByEnumeratingWithState:&v56 objects:v60 count:16];
          if (v31)
          {
            v32 = v31;
            v52 = *v57;
            do
            {
              for (i = 0; i != v32; ++i)
              {
                if (*v57 != v52)
                {
                  objc_enumerationMutation(v30);
                }

                v34 = *(*(&v56 + 1) + 8 * i);
                v35 = [v30 objectForKeyedSubscript:v34];
                v36 = [v54 objectForKeyedSubscript:v34];
                v37 = v36;
                if (v36)
                {
                  v38 = v36;
                }

                else
                {
                  v38 = &unk_283A56FD8;
                }

                v39 = v38;

                v40 = [v53 objectForKeyedSubscript:v34];
                v41 = v40;
                if (v40)
                {
                  v42 = v40;
                }

                else
                {
                  v42 = &unk_283A56FD8;
                }

                v43 = v42;

                -[ATXNotificationDigestFeedbackProtocol logBasicNotificationsSentForBundleId:numNotifications:](v55->_feedbackStore, "logBasicNotificationsSentForBundleId:numNotifications:", v34, [v35 unsignedIntegerValue] - (objc_msgSend(v39, "unsignedIntegerValue") + objc_msgSend(v43, "unsignedIntegerValue")));
                v44 = v55->_feedbackStore;
                v45 = [v43 unsignedIntegerValue];

                [(ATXNotificationDigestFeedbackProtocol *)v44 logTimeSensitiveNotificationsSentForBundleId:v34 numNotifications:v45];
              }

              v32 = [v30 countByEnumeratingWithState:&v56 objects:v60 count:16];
            }

            while (v32);
          }

          v13 = v50;
          [v50 setDouble:v55->_lastRunTimestampUserDefaultsKey forKey:Current];
          v27 = __atxlog_handle_notification_management();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            v46 = objc_opt_class();
            v47 = NSStringFromClass(v46);
            *buf = 138412290;
            v62 = v47;
            _os_log_impl(&dword_2263AA000, v27, OS_LOG_TYPE_INFO, "[%@] Finished logging global notifications sent", buf, 0xCu);
          }

          v4 = v51;
          v18 = v49;
          v24 = v53;
          v21 = v54;
        }
      }
    }
  }

  v48 = *MEMORY[0x277D85DE8];
}

@end