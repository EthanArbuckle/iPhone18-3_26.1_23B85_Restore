@interface ATXNotificationAndSuggestionDatastore
- (ATXNotificationAndSuggestionDatastore)initWithNotificationAndSuggestionDatabase:(id)a3 createBookmark:(id)a4 updateBookmark:(id)a5 notificationEventPublisher:(id)a6 suggestionPublisher:(id)a7 suggestionInteractionEventPublisher:(id)a8 notificationGroupEventPublisher:(id)a9 notificationDeliveryEventPublisher:(id)a10;
- (id)_fetchBookmarkFromDbWithName:(id)a3 version:(unint64_t)a4;
- (id)_notificationDeliveryEventPublisher;
- (id)_notificationEventPublisher;
- (id)_notificationGroupEventPublisher;
- (id)_serializeBookmark:(id)a3 withVersion:(unint64_t)a4;
- (id)_suggestionInteractionEventPublisher;
- (id)_suggestionPublisher;
- (id)allNotificationsBetweenStartTimestamp:(id)a3 endTimestamp:(id)a4 limit:(unint64_t)a5;
- (id)deleteAllData;
- (id)mergedInputEventStreamForInsert;
- (id)mergedInputEventStreamForUpdates;
- (id)notificationsReceivedPerBundleIdSinceDate:(id)a3;
- (void)notificationAndSuggestionDatastorePerfMetricsLogging;
- (void)numberOfActiveNotificationsWithCompletionHandler:(id)a3;
- (void)pruneDatabaseWithXPCActivity:(id)a3;
- (void)updateDatabase;
- (void)updateDatabaseForEvent:(id)a3;
- (void)updateDatabaseForNotificationEvent:(id)a3;
@end

@implementation ATXNotificationAndSuggestionDatastore

- (id)mergedInputEventStreamForInsert
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = [(ATXNotificationAndSuggestionDatastore *)self _notificationEventPublisher];
  v4 = [(ATXNotificationAndSuggestionDatastore *)self _suggestionPublisher];
  v9[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v6 = [(ATXNotificationAndSuggestionDatastore *)self _timeBasedMergePublisher:v3 withOtherPublishers:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)mergedInputEventStreamForUpdates
{
  v10[2] = *MEMORY[0x277D85DE8];
  v3 = [(ATXNotificationAndSuggestionDatastore *)self _suggestionInteractionEventPublisher];
  v4 = [(ATXNotificationAndSuggestionDatastore *)self _notificationGroupEventPublisher];
  v5 = [(ATXNotificationAndSuggestionDatastore *)self _notificationDeliveryEventPublisher];
  v10[0] = v3;
  v10[1] = v4;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  v7 = [(ATXNotificationAndSuggestionDatastore *)self _timeBasedMergePublisher:v5 withOtherPublishers:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

uint64_t __86__ATXNotificationAndSuggestionDatastore__timeBasedMergePublisher_withOtherPublishers___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  [a2 timestamp];
  v6 = [v4 numberWithDouble:?];
  v7 = MEMORY[0x277CCABB0];
  [v5 timestamp];
  v9 = v8;

  v10 = [v7 numberWithDouble:v9];
  v11 = [v6 compare:v10];

  return v11;
}

- (id)_notificationEventPublisher
{
  notificationEventPublisher = self->_notificationEventPublisher;
  if (!notificationEventPublisher)
  {
    v4 = objc_opt_new();
    v5 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:-604800.0];
    [v5 timeIntervalSinceReferenceDate];
    v6 = [v4 publisherFromStartTime:?];
    v7 = self->_notificationEventPublisher;
    self->_notificationEventPublisher = v6;

    notificationEventPublisher = self->_notificationEventPublisher;
  }

  return notificationEventPublisher;
}

- (id)_suggestionPublisher
{
  suggestionPublisher = self->_suggestionPublisher;
  if (!suggestionPublisher)
  {
    v4 = objc_opt_new();
    v5 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:-604800.0];
    [v5 timeIntervalSinceReferenceDate];
    v6 = [v4 publisherFromStartTime:?];
    v7 = self->_suggestionPublisher;
    self->_suggestionPublisher = v6;

    suggestionPublisher = self->_suggestionPublisher;
  }

  return suggestionPublisher;
}

- (id)_suggestionInteractionEventPublisher
{
  suggestionInteractionEventPublisher = self->_suggestionInteractionEventPublisher;
  if (!suggestionInteractionEventPublisher)
  {
    v4 = objc_opt_new();
    v5 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:-604800.0];
    [v5 timeIntervalSinceReferenceDate];
    v6 = [v4 publisherFromStartTime:?];
    v7 = self->_suggestionInteractionEventPublisher;
    self->_suggestionInteractionEventPublisher = v6;

    suggestionInteractionEventPublisher = self->_suggestionInteractionEventPublisher;
  }

  return suggestionInteractionEventPublisher;
}

- (id)_notificationGroupEventPublisher
{
  notificationGroupEventPublisher = self->_notificationGroupEventPublisher;
  if (!notificationGroupEventPublisher)
  {
    v4 = objc_opt_new();
    v5 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:-604800.0];
    [v5 timeIntervalSinceReferenceDate];
    v6 = [v4 publisherFromStartTime:?];
    v7 = self->_notificationGroupEventPublisher;
    self->_notificationGroupEventPublisher = v6;

    notificationGroupEventPublisher = self->_notificationGroupEventPublisher;
  }

  return notificationGroupEventPublisher;
}

- (id)_notificationDeliveryEventPublisher
{
  notificationDeliveryEventPublisher = self->_notificationDeliveryEventPublisher;
  if (!notificationDeliveryEventPublisher)
  {
    v4 = objc_opt_new();
    v5 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:-604800.0];
    [v5 timeIntervalSinceReferenceDate];
    v6 = [v4 publisherFromStartTime:?];
    v7 = self->_notificationDeliveryEventPublisher;
    self->_notificationDeliveryEventPublisher = v6;

    notificationDeliveryEventPublisher = self->_notificationDeliveryEventPublisher;
  }

  return notificationDeliveryEventPublisher;
}

- (void)updateDatabaseForEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 eventBody];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v7 = [v4 eventBody];
  if (isKindOfClass)
  {
    [(ATXNotificationAndSuggestionDatastore *)self updateDatabaseForNotificationEvent:v7];
  }

  else
  {
    objc_opt_class();
    v8 = objc_opt_isKindOfClass();

    v7 = [v4 eventBody];
    if (v8)
    {
      [(ATXNotificationAndSuggestionDatabase *)self->_db insertSuggestion:v7];
    }

    else
    {
      objc_opt_class();
      v9 = objc_opt_isKindOfClass();

      v7 = [v4 eventBody];
      if (v9)
      {
        [(ATXNotificationAndSuggestionDatabase *)self->_db updateSuggestionFromEvent:v7];
      }

      else
      {
        objc_opt_class();
        v10 = objc_opt_isKindOfClass();

        v11 = [v4 eventBody];
        v7 = v11;
        if (v10)
        {
          if ([v11 eventType]== 3)
          {
            [(ATXNotificationAndSuggestionDatabase *)self->_db setAllNotificationsToClearedExceptProminent];
          }

          else if ([v7 eventType]== 15)
          {
            [(ATXNotificationAndSuggestionDatabase *)self->_db setAllNotificationsToModified];
          }
        }

        else
        {
          objc_opt_class();
          v12 = objc_opt_isKindOfClass();

          if (v12)
          {
            v7 = [v4 eventBody];
            db = self->_db;
            v14 = [v7 suggestionUUIDs];
            [(ATXNotificationAndSuggestionDatabase *)db updateNotificationUIForNotifications:v14 nextUI:[v7 deliveryUI]];
          }

          else
          {
            v7 = __atxlog_handle_default();
            if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
            {
              [ATXNotificationAndSuggestionDatastore updateDatabaseForEvent:];
            }
          }
        }
      }
    }
  }
}

- (void)updateDatabaseForNotificationEvent:(id)a3
{
  v4 = a3;
  if ([v4 isReceiveEvent])
  {
    v5 = [v4 eventType];
    v6 = 1;
    if (v5 && v5 != 16)
    {
      if (v5 == 17)
      {
        v6 = 0;
      }

      else
      {
        v7 = __atxlog_handle_default();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
        {
          [ATXNotificationAndSuggestionDatastore updateDatabaseForNotificationEvent:];
        }

        v6 = 2;
      }
    }

    db = self->_db;
    v9 = [v4 modeUUID];
    v10 = [v9 UUIDString];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "deliveryReason")}];
    [(ATXNotificationAndSuggestionDatabase *)db insertNotificationFromEvent:v4 deliveryMethod:v6 modeIdentifier:v10 deliveryReason:v11];
  }

  else
  {
    [(ATXNotificationAndSuggestionDatabase *)self->_db updateNotificationFromEvent:v4];
  }
}

- (ATXNotificationAndSuggestionDatastore)initWithNotificationAndSuggestionDatabase:(id)a3 createBookmark:(id)a4 updateBookmark:(id)a5 notificationEventPublisher:(id)a6 suggestionPublisher:(id)a7 suggestionInteractionEventPublisher:(id)a8 notificationGroupEventPublisher:(id)a9 notificationDeliveryEventPublisher:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v31 = a6;
  v30 = a7;
  v29 = a8;
  v28 = a9;
  v19 = a10;
  v32.receiver = self;
  v32.super_class = ATXNotificationAndSuggestionDatastore;
  v20 = [(ATXNotificationAndSuggestionDatastore *)&v32 init];
  if (v20)
  {
    if (v16)
    {
      v21 = v16;
    }

    else
    {
      v21 = objc_opt_new();
    }

    db = v20->_db;
    v20->_db = v21;

    if (v17)
    {
      v23 = v17;
    }

    else
    {
      v23 = [(ATXNotificationAndSuggestionDatastore *)v20 _fetchBookmarkFromDbWithName:@"ATXNotificationAndSuggestionDatastore_bookmark" version:2, v28, v29, v30, v31];
    }

    insertionBookmark = v20->_insertionBookmark;
    v20->_insertionBookmark = v23;

    if (v18)
    {
      v25 = v18;
    }

    else
    {
      v25 = [(ATXNotificationAndSuggestionDatastore *)v20 _fetchBookmarkFromDbWithName:@"ATXNotificationAndSuggestionDatastoreUpdate_bookmark" version:1];
    }

    updateBookmark = v20->_updateBookmark;
    v20->_updateBookmark = v25;

    objc_storeStrong(&v20->_notificationEventPublisher, a6);
    objc_storeStrong(&v20->_suggestionPublisher, a7);
    objc_storeStrong(&v20->_suggestionInteractionEventPublisher, a8);
    objc_storeStrong(&v20->_notificationGroupEventPublisher, a9);
    objc_storeStrong(&v20->_notificationDeliveryEventPublisher, a10);
  }

  return v20;
}

- (id)_fetchBookmarkFromDbWithName:(id)a3 version:(unint64_t)a4
{
  v6 = a3;
  v7 = [(ATXNotificationAndSuggestionDatabase *)self->_db getBookmarkDataFromName:v6];
  if (v7)
  {
    v8 = MEMORY[0x277CEBBF8];
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
    v10 = [v8 bookmarkFromData:v7 bookmarkLocation:v6 versionNumber:v9];

    v11 = [v10 bookmark];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_serializeBookmark:(id)a3 withVersion:(unint64_t)a4
{
  v5 = MEMORY[0x277CEBBF8];
  v6 = a3;
  v7 = [v5 alloc];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  v9 = [v7 initWithURLPath:0 versionNumber:v8 bookmark:v6 metadata:0];

  v15 = 0;
  v10 = [v9 serializeBookmark:&v15];
  v11 = v15;
  if (v11)
  {
    v12 = __atxlog_handle_default();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ATXNotificationAndSuggestionDatastore _serializeBookmark:withVersion:];
    }

    v13 = 0;
  }

  else
  {
    v13 = v10;
  }

  return v13;
}

- (void)updateDatabase
{
  v3 = [(ATXNotificationAndSuggestionDatastore *)self mergedInputEventStreamForInsert];
  insertionBookmark = self->_insertionBookmark;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __55__ATXNotificationAndSuggestionDatastore_updateDatabase__block_invoke;
  v12[3] = &unk_278596E58;
  v12[4] = self;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__ATXNotificationAndSuggestionDatastore_updateDatabase__block_invoke_2;
  v11[3] = &unk_27859FE58;
  v11[4] = self;
  v5 = [v3 sinkWithBookmark:insertionBookmark completion:v12 receiveInput:v11];

  v6 = [(ATXNotificationAndSuggestionDatastore *)self mergedInputEventStreamForUpdates];
  updateBookmark = self->_updateBookmark;
  v9[4] = self;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __55__ATXNotificationAndSuggestionDatastore_updateDatabase__block_invoke_46;
  v10[3] = &unk_278596E58;
  v10[4] = self;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __55__ATXNotificationAndSuggestionDatastore_updateDatabase__block_invoke_2_47;
  v9[3] = &unk_27859FE58;
  v8 = [v6 sinkWithBookmark:updateBookmark completion:v10 receiveInput:v9];
}

void __55__ATXNotificationAndSuggestionDatastore_updateDatabase__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v7 = [*(a1 + 32) _serializeBookmark:v4 withVersion:2];
  [*(*(a1 + 32) + 8) setBookmarkData:v7 forName:@"ATXNotificationAndSuggestionDatastore_bookmark"];
  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  *(v5 + 16) = v4;
}

void __55__ATXNotificationAndSuggestionDatastore_updateDatabase__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) updateDatabaseForEvent:v3];
  }

  else
  {
    v4 = __atxlog_handle_default();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __55__ATXNotificationAndSuggestionDatastore_updateDatabase__block_invoke_2_cold_1();
    }
  }
}

void __55__ATXNotificationAndSuggestionDatastore_updateDatabase__block_invoke_46(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v7 = [*(a1 + 32) _serializeBookmark:v4 withVersion:1];
  [*(*(a1 + 32) + 8) setBookmarkData:v7 forName:@"ATXNotificationAndSuggestionDatastoreUpdate_bookmark"];
  v5 = *(a1 + 32);
  v6 = *(v5 + 24);
  *(v5 + 24) = v4;
}

void __55__ATXNotificationAndSuggestionDatastore_updateDatabase__block_invoke_2_47(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) updateDatabaseForEvent:v3];
  }

  else
  {
    v4 = __atxlog_handle_default();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __55__ATXNotificationAndSuggestionDatastore_updateDatabase__block_invoke_2_cold_1();
    }
  }
}

- (void)numberOfActiveNotificationsWithCompletionHandler:(id)a3
{
  v4 = a3;
  [(ATXNotificationAndSuggestionDatastore *)self updateDatabase];
  [(ATXNotificationAndSuggestionDatabase *)self->_db numberOfActiveNotificationsWithCompletionHandler:v4];
}

- (id)allNotificationsBetweenStartTimestamp:(id)a3 endTimestamp:(id)a4 limit:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [MEMORY[0x277CBEAA8] distantPast];
  }

  v11 = v10;
  if (v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = [MEMORY[0x277CBEAA8] distantFuture];
  }

  v13 = v12;
  v14 = [(ATXNotificationAndSuggestionDatabase *)self->_db allNotificationsBetweenStartTimestamp:v11 endTimestamp:v12 limit:a5];

  return v14;
}

- (id)notificationsReceivedPerBundleIdSinceDate:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [MEMORY[0x277CBEAA8] distantPast];
  }

  v7 = v6;
  v8 = [(ATXNotificationAndSuggestionDatabase *)self->_db notificationsReceivedPerBundleIdSinceDate:v6];

  return v8;
}

- (id)deleteAllData
{
  insertionBookmark = self->_insertionBookmark;
  self->_insertionBookmark = 0;

  updateBookmark = self->_updateBookmark;
  self->_updateBookmark = 0;

  db = self->_db;

  return [(ATXNotificationAndSuggestionDatabase *)db deleteAllData];
}

- (void)pruneDatabaseWithXPCActivity:(id)a3
{
  v64 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v6 = v5;
  v7 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    *buf = 138412546;
    v61 = v9;
    v62 = 2048;
    v63 = v6;
    _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_INFO, "[%@] Pruning database given current time %f", buf, 0x16u);
  }

  [MEMORY[0x277CEBCB0] appPredictionDirectoryFile:@"_ATXNotificationStore.db"];
  v10 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
  v11 = [MEMORY[0x277CCAA00] defaultManager];
  v58 = 0;
  v12 = [v11 removeItemAtPath:*&v10 error:&v58];
  v13 = v58;
  v14 = v13;
  if ((v12 & 1) != 0 || !v13)
  {
    v20 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v61 = "[ATXNotificationAndSuggestionDatastore pruneDatabaseWithXPCActivity:]";
      v62 = 2112;
      v63 = v10;
      _os_log_impl(&dword_2263AA000, v20, OS_LOG_TYPE_DEFAULT, "%s: Migration step 10: Deleted old database at %@", buf, 0x16u);
    }

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v21 = [MEMORY[0x277CEBCB0] appPredictionDirectory];
    v19 = [v11 contentsOfDirectoryAtPath:v21 error:0];

    v22 = [v19 countByEnumeratingWithState:&v54 objects:v59 count:16];
    if (v22)
    {
      v23 = v22;
      v52 = v14;
      v53 = v4;
      v24 = v10;
      v25 = *v55;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v55 != v25)
          {
            objc_enumerationMutation(v19);
          }

          v27 = *(*(&v54 + 1) + 8 * i);
          if ([v27 hasPrefix:{@"_ATXNotificationStore.db", v52, v53}])
          {
            v28 = [MEMORY[0x277CEBCB0] appPredictionDirectoryFile:v27];
            [v11 removeItemAtPath:v28 error:0];
          }
        }

        v23 = [v19 countByEnumeratingWithState:&v54 objects:v59 count:16];
      }

      while (v23);
      v10 = v24;
      v14 = v52;
      v4 = v53;
    }

    v18 = &off_226871000;
  }

  else
  {
    v15 = [v13 userInfo];
    v16 = [v15 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];
    v17 = [v16 code];

    v18 = &off_226871000;
    if (v17 == 2)
    {
      goto LABEL_22;
    }

    v19 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [(ATXNotificationAndSuggestionDatastore *)*&v10 pruneDatabaseWithXPCActivity:v14, v19];
    }
  }

LABEL_22:
  v29 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    v30 = objc_opt_class();
    v31 = NSStringFromClass(v30);
    *buf = *(v18 + 414);
    v61 = v31;
    v62 = 2048;
    v63 = v6 + -5184000.0;
    _os_log_impl(&dword_2263AA000, v29, OS_LOG_TYPE_INFO, "[%@] Pruning notifications with cutoff time %f", buf, 0x16u);
  }

  v32 = [(ATXNotificationAndSuggestionDatastore *)self pruneNotificationsBeforeTimestamp:v6 + -5184000.0];
  if ([v4 didDefer])
  {
    v33 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v34 = objc_opt_class();
      v35 = NSStringFromClass(v34);
      *buf = 138412290;
      v61 = v35;
      _os_log_impl(&dword_2263AA000, v33, OS_LOG_TYPE_INFO, "[%@] XPC Activity deferred, skipping remaining work.", buf, 0xCu);
    }
  }

  v36 = v6 + -31536000.0;
  v37 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
  {
    v38 = objc_opt_class();
    v39 = NSStringFromClass(v38);
    *buf = *(v18 + 414);
    v61 = v39;
    v62 = 2048;
    v63 = v36;
    _os_log_impl(&dword_2263AA000, v37, OS_LOG_TYPE_INFO, "[%@] Pruning suggestions with cutoff time %f", buf, 0x16u);
  }

  v40 = [(ATXNotificationAndSuggestionDatastore *)self pruneSuggestionsBeforeTimestamp:v36];
  if ([v4 didDefer])
  {
    v41 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      v42 = objc_opt_class();
      v43 = NSStringFromClass(v42);
      *buf = 138412290;
      v61 = v43;
      _os_log_impl(&dword_2263AA000, v41, OS_LOG_TYPE_INFO, "[%@] XPC Activity deferred, skipping remaining work.", buf, 0xCu);
    }
  }

  v44 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
  {
    v45 = objc_opt_class();
    v46 = NSStringFromClass(v45);
    *buf = 138412290;
    v61 = v46;
    _os_log_impl(&dword_2263AA000, v44, OS_LOG_TYPE_INFO, "[%@] Vacuuming database", buf, 0xCu);
  }

  v47 = [(ATXNotificationAndSuggestionDatastore *)self vacuumDatabase];
  v48 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
  {
    v49 = objc_opt_class();
    v50 = NSStringFromClass(v49);
    *buf = 138412290;
    v61 = v50;
    _os_log_impl(&dword_2263AA000, v48, OS_LOG_TYPE_INFO, "[%@] Finished pruning and vacuuming database", buf, 0xCu);
  }

  v51 = *MEMORY[0x277D85DE8];
}

- (void)notificationAndSuggestionDatastorePerfMetricsLogging
{
  v10[2] = *MEMORY[0x277D85DE8];
  v2 = [(ATXNotificationAndSuggestionDatabase *)self->_db notificationAndSuggestionDatastorePerfMetrics];
  v4 = v3;
  v9[0] = @"notificationsCount";
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:v2];
  v9[1] = @"suggestionsCount";
  v10[0] = v5;
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:v4];
  v10[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
  AnalyticsSendEvent();

  v8 = *MEMORY[0x277D85DE8];
}

- (void)updateDatabaseForEvent:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  v13 = *MEMORY[0x277D85DE8];
  v1 = objc_opt_class();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_8_1() eventBody];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_13(&dword_2263AA000, v5, v6, "[%@] - Encountered unknown event type: %@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)updateDatabaseForNotificationEvent:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  v11 = *MEMORY[0x277D85DE8];
  v1 = objc_opt_class();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_8_1() eventType];
  v2 = ATXNEventTypeToString();
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_13(&dword_2263AA000, v3, v4, "[%@] Received unexpected notification receive event type %@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_serializeBookmark:withVersion:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  v9 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = v1;
  _os_log_error_impl(&dword_2263AA000, v0, OS_LOG_TYPE_ERROR, "%@ – failed to serialize bookmark.  Error: %@", &v5, 0x16u);

  v4 = *MEMORY[0x277D85DE8];
}

void __55__ATXNotificationAndSuggestionDatastore_updateDatabase__block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_2_1();
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(v1 + 32);
  v3 = objc_opt_class();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_8_1();
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_13(&dword_2263AA000, v6, v7, "[%@] Expected a BMStoreEvent, but received a %@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)pruneDatabaseWithXPCActivity:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = 136315650;
  v5 = "[ATXNotificationAndSuggestionDatastore pruneDatabaseWithXPCActivity:]";
  v6 = 2112;
  v7 = a1;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "%s: Failed to delete: %@ with error: %@", &v4, 0x20u);
  v3 = *MEMORY[0x277D85DE8];
}

@end