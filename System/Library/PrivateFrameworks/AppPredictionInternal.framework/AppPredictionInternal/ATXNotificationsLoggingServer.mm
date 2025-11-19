@interface ATXNotificationsLoggingServer
+ (ATXNotificationsLoggingServer)sharedInstance;
- (ATXNotificationsLoggingServer)init;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (id)_createPortraitNotificationWithNotificationInterface:(id)a3;
- (id)getDuetMetadataFromNotification:(id)a3 metadata:(id)a4;
- (id)getLockscreenBundleIds;
- (void)_donateNotificationToPortraitWithNotificationsInterface:(id)a3;
- (void)_logEventToCoreDuet:(int64_t)a3 forNotificationId:(id)a4 timestamp:(id)a5;
- (void)getModeTimelineDataFromStartDate:(id)a3 reply:(id)a4;
- (void)logNotification:(id)a3 withNotificationId:(id)a4 timestamp:(id)a5;
- (void)logNotificationDeliveryUI:(unint64_t)a3 notificationUUIDs:(id)a4;
- (void)logNotificationEvent:(int64_t)a3 notification:(id)a4 reason:(unint64_t)a5 interactionUI:(unint64_t)a6;
- (void)logNotificationGroupEvent:(int64_t)a3 eventIdentifier:(id)a4 timestamp:(id)a5;
- (void)logNotificationToCoreDuet:(id)a3 withNotificationId:(id)a4 timestamp:(id)a5;
- (void)logNotificationWithMetadata:(id)a3 withNotificationId:(id)a4 timestamp:(id)a5;
- (void)logSuggestionEvent:(int64_t)a3 suggestionType:(int64_t)a4 suggestionIdentifier:(id)a5 timestamp:(id)a6;
- (void)logToCoreDuet:(id)a3 identifier:(id)a4 timestamp:(id)a5;
@end

@implementation ATXNotificationsLoggingServer

+ (ATXNotificationsLoggingServer)sharedInstance
{
  if (sharedInstance_onceToken_12 != -1)
  {
    +[ATXNotificationsLoggingServer sharedInstance];
  }

  v3 = sharedInstance_instance_4;

  return v3;
}

uint64_t __47__ATXNotificationsLoggingServer_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance_instance_4;
  sharedInstance_instance_4 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (ATXNotificationsLoggingServer)init
{
  v22.receiver = self;
  v22.super_class = ATXNotificationsLoggingServer;
  v2 = [(ATXNotificationsLoggingServer *)&v22 init];
  if (v2)
  {
    v3 = objc_alloc_init(ATXModeTimelineManager);
    modeTimelineManager = v2->_modeTimelineManager;
    v2->_modeTimelineManager = v3;

    v5 = +[_ATXAggregateLogger sharedInstance];
    aggdlogger = v2->_aggdlogger;
    v2->_aggdlogger = v5;

    v7 = +[ATXBBNotificationManager sharedInstance];
    bbNotificationManager = v2->_bbNotificationManager;
    v2->_bbNotificationManager = v7;

    v9 = objc_alloc_init(ATXNotificationDeliverySuggestionManager);
    notificationDeliverySuggestionManager = v2->_notificationDeliverySuggestionManager;
    v2->_notificationDeliverySuggestionManager = v9;

    v11 = [objc_alloc(MEMORY[0x277D425E8]) initWithBlock:&__block_literal_global_46_2 idleTimeout:1800.0];
    cachedLoggingSources = v2->_cachedLoggingSources;
    v2->_cachedLoggingSources = v11;

    v13 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"ATXNotificationsLoggingServer-donateNotification"];
    donationQueue = v2->_donationQueue;
    v2->_donationQueue = v13;

    v15 = +[ATXNotificationsDedupeTracker sharedInstance];
    dedupetracker = v2->_dedupetracker;
    v2->_dedupetracker = v15;

    v17 = [MEMORY[0x277CFE208] knowledgeStore];
    duetstorer = v2->_duetstorer;
    v2->_duetstorer = v17;

    v19 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.notifications.logging"];
    listener = v2->_listener;
    v2->_listener = v19;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    [(NSXPCListener *)v2->_listener resume];
  }

  return v2;
}

id __37__ATXNotificationsLoggingServer_init__block_invoke()
{
  v0 = objc_opt_new();

  return v0;
}

- (void)_donateNotificationToPortraitWithNotificationsInterface:(id)a3
{
  v4 = a3;
  v5 = [v4 sectionID];
  if ([v5 length])
  {
    v6 = [v4 message];
    v7 = [v6 length];

    if (v7)
    {
      v8 = [(ATXNotificationsLoggingServer *)self _createPortraitNotificationWithNotificationInterface:v4];
      v9 = MEMORY[0x277D425A0];
      donationQueue = self->_donationQueue;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __89__ATXNotificationsLoggingServer__donateNotificationToPortraitWithNotificationsInterface___block_invoke;
      v13[3] = &unk_278596BB8;
      v14 = v8;
      v11 = v8;
      [v9 runAsyncOnQueue:donationQueue afterDelaySeconds:v13 block:60.0];

      goto LABEL_7;
    }
  }

  else
  {
  }

  v11 = __atxlog_handle_default();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_DEFAULT, "ATXNotificationsLoggingServer could not donate notification to PersonalizationPortrait as it was missing a sectionID or message", v12, 2u);
  }

LABEL_7:
}

void __89__ATXNotificationsLoggingServer__donateNotificationToPortraitWithNotificationsInterface___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v6 = 0;
  v2 = [MEMORY[0x277D3A388] donateNotification:v1 error:&v6];
  v3 = v6;
  v4 = __atxlog_handle_default();
  v5 = v4;
  if (v2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __89__ATXNotificationsLoggingServer__donateNotificationToPortraitWithNotificationsInterface___block_invoke_cold_2(v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __89__ATXNotificationsLoggingServer__donateNotificationToPortraitWithNotificationsInterface___block_invoke_cold_1();
  }
}

- (id)_createPortraitNotificationWithNotificationInterface:(id)a3
{
  v3 = MEMORY[0x277D3A450];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v4 sectionID];
  v7 = [v4 title];
  v8 = [v4 subtitle];
  v9 = [v4 message];

  v10 = [v5 initWithCurrentDateAndBundleId:v6 title:v7 subtitle:v8 message:v9];

  return v10;
}

- (void)logNotificationWithMetadata:(id)a3 withNotificationId:(id)a4 timestamp:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  if ([(ATXNotificationsDedupeTracker *)self->_dedupetracker addNotificationId:v8])
  {
    v10 = [MEMORY[0x277CEB1B0] getBundleIdFromMetadata:v12];
    if (v10)
    {
      v11 = v10;
      [(ATXBBNotificationManager *)self->_bbNotificationManager addNotificationForBundleId:v10 withPublicationDate:v9];
      [(ATXNotificationsLoggingServer *)self logNotificationToCoreDuet:v12 withNotificationId:v8 timestamp:v9];
    }
  }
}

- (void)logNotificationToCoreDuet:(id)a3 withNotificationId:(id)a4 timestamp:(id)a5
{
  v8 = a5;
  v10 = [(ATXNotificationsLoggingServer *)self getDuetMetadataFromNotification:a4 metadata:a3];
  v9 = ATXNEventTypeToString();
  [(ATXNotificationsLoggingServer *)self logToCoreDuet:v10 identifier:v9 timestamp:v8];
}

- (void)_logEventToCoreDuet:(int64_t)a3 forNotificationId:(id)a4 timestamp:(id)a5
{
  v14[1] = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  if (v7)
  {
    v9 = [MEMORY[0x277CFE240] identifier];
    v13 = v9;
    v14[0] = v7;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v11 = ATXNEventTypeToString();
    [(ATXNotificationsLoggingServer *)self logToCoreDuet:v10 identifier:v11 timestamp:v8];
  }

  else
  {
    v9 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [ATXNotificationsLoggingServer _logEventToCoreDuet:v9 forNotificationId:? timestamp:?];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)logNotification:(id)a3 withNotificationId:(id)a4 timestamp:(id)a5
{
  v8 = a5;
  v9 = a4;
  v11 = a3;
  v10 = [v11 extractMetadata];
  [(ATXNotificationsLoggingServer *)self logNotificationWithMetadata:v10 withNotificationId:v9 timestamp:v8];

  [(ATXNotificationsLoggingServer *)self _donateNotificationToPortraitWithNotificationsInterface:v11];
}

- (void)getModeTimelineDataFromStartDate:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  modeTimelineManager = self->_modeTimelineManager;
  v9 = v6;
  if (!v6)
  {
    v9 = [MEMORY[0x277CBEAA8] distantPast];
  }

  v10 = [MEMORY[0x277CBEAA8] date];
  v11 = [(ATXModeTimelineManager *)modeTimelineManager modeFromStartDate:v9 toEndDate:v10];

  if (!v6)
  {
  }

  v14 = 0;
  v12 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v11 options:1 error:&v14];
  v13 = v14;
  v7[2](v7, v12, v13);
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = __atxlog_handle_default();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v12 = 0;
    _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_INFO, "Established connection", v12, 2u);
  }

  v7 = [v5 valueForEntitlement:@"com.apple.notifications.logging"];
  if (v7 && (objc_opt_respondsToSelector() & 1) != 0 && ([v7 BOOLValue] & 1) != 0)
  {
    v8 = ATXNotificationsLoggingInterface();
    [v5 setExportedInterface:v8];

    [v5 setExportedObject:self];
    [v5 resume];
    v9 = 1;
  }

  else
  {
    v10 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [ATXNotificationsLoggingServer listener:shouldAcceptNewConnection:];
    }

    v9 = 0;
  }

  return v9;
}

- (void)logToCoreDuet:(id)a3 identifier:(id)a4 timestamp:(id)a5
{
  v25[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = MEMORY[0x277CFE1F0];
  v12 = [(ATXNotificationsLoggingServer *)self duetValueType];
  v13 = [v11 identifierWithString:v9 type:v12];

  v14 = MEMORY[0x277CFE1D8];
  v15 = [(ATXNotificationsLoggingServer *)self getDuetStream];
  v16 = [v14 eventWithStream:v15 startDate:v10 endDate:v10 value:v13 metadata:v8];

  v17 = self->_duetstorer;
  objc_sync_enter(v17);
  duetstorer = self->_duetstorer;
  v25[0] = v16;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
  v24 = 0;
  v20 = [(_DKKnowledgeSaving *)duetstorer saveObjects:v19 error:&v24];
  v21 = v24;

  if ((v20 & 1) == 0)
  {
    v22 = __atxlog_handle_default();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [ATXNotificationsLoggingServer logToCoreDuet:identifier:timestamp:];
    }
  }

  objc_sync_exit(v17);
  v23 = *MEMORY[0x277D85DE8];
}

- (id)getDuetMetadataFromNotification:(id)a3 metadata:(id)a4
{
  v19[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277CEB1B0] getBundleIdFromMetadata:a4];
  v7 = [MEMORY[0x277CEB3B8] parentAppBundleIdForClipBundleID:v6];
  v8 = objc_opt_new();
  v9 = [MEMORY[0x277CFE240] identifier];
  v18[0] = v9;
  v19[0] = v5;
  v10 = [MEMORY[0x277CFE240] bundleID];
  v18[1] = v10;
  v19[1] = v6;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
  [v8 addEntriesFromDictionary:v11];

  if (v7)
  {
    v12 = [MEMORY[0x277CFE158] appBundleID];
    v16 = v12;
    v17 = v7;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    [v8 addEntriesFromDictionary:v13];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)getLockscreenBundleIds
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_opt_new();
  v4 = [v3 allBundleIdsOfNotificationsOnLockscreen];

  objc_autoreleasePoolPop(v2);

  return v4;
}

- (void)logNotificationEvent:(int64_t)a3 notification:(id)a4 reason:(unint64_t)a5 interactionUI:(unint64_t)a6
{
  v49 = a4;
  v10 = objc_opt_new();
  v11 = [v49 bundleID];
  [v10 setSectionID:v11];

  v12 = [v49 title];
  [v10 setTitle:v12];

  v13 = [v49 subtitle];
  [v10 setSubtitle:v13];

  v14 = [v49 body];
  [v10 setMessage:v14];

  v15 = [v49 categoryID];
  [v10 setTopic:v15];

  v16 = [v49 uuid];
  v17 = [v16 UUIDString];

  v18 = MEMORY[0x277CBEAA8];
  [v49 timestamp];
  v19 = [v18 dateWithTimeIntervalSinceReferenceDate:?];
  if (a3 <= 0x11 && ((1 << a3) & 0x30001) != 0)
  {
    [(ATXNotificationsLoggingServer *)self logNotification:v10 withNotificationId:v17 timestamp:v19];
  }

  v46 = v19;
  v20 = [(_PASLazyPurgeableResult *)self->_cachedLoggingSources result];
  v21 = [v20 contactRepresentationDatastore];
  [v49 setRawIdentifiersWithContactRepresentationDataStore:v21];

  v45 = v20;
  v22 = [v20 userNotificationBiomeStream];
  [v22 sendEvent:a3 notification:v49 deliveryReason:a5 interactionUI:a6];

  v37 = objc_alloc(MEMORY[0x277CF1388]);
  v44 = objc_opt_new();
  v43 = [v44 UUIDString];
  v23 = objc_alloc(MEMORY[0x277CBEAA8]);
  [v49 timestamp];
  v42 = [v23 initWithTimeIntervalSinceReferenceDate:?];
  v47 = v10;
  if ((a3 - 1) > 0x1A)
  {
    v39 = 0;
  }

  else
  {
    v39 = dword_226872A24[a3 - 1];
  }

  v38 = [v49 bundleID];
  v41 = [v49 uuid];
  v36 = [v41 UUIDString];
  v48 = [v49 title];
  v34 = [v49 subtitle];
  v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v49, "badge")}];
  v32 = [v49 threadID];
  v35 = [v49 categoryID];
  v31 = [v49 sectionID];
  v24 = [v49 contactIDs];
  v25 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v49, "isGroupMessage")}];
  v26 = MEMORY[0x277CEB3B8];
  v27 = [v49 bundleID];
  v28 = [v26 parentAppBundleIdForClipBundleID:v27];
  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v49, "bodyLength")}];
  v40 = [v37 initWithUniqueID:v43 absoluteTimestamp:v42 usageType:v39 bundleID:v38 notificationID:v36 deviceID:0 title:v48 subtitle:v34 body:0 badge:v33 threadID:v32 categoryID:v35 sectionID:v31 contactIDs:v24 isGroupMessage:v25 parentBundleID:v28 bodyLength:v29];

  v30 = [v45 notificationUsageSource];
  [v30 sendEvent:v40];
}

- (void)logSuggestionEvent:(int64_t)a3 suggestionType:(int64_t)a4 suggestionIdentifier:(id)a5 timestamp:(id)a6
{
  v9 = MEMORY[0x277CEB770];
  v10 = a6;
  v11 = a5;
  v14 = [[v9 alloc] initWithSuggestionType:a4 eventType:a3 suggestionUUID:v11 eventDate:v10];

  v12 = objc_opt_new();
  v13 = [v12 source];
  [v13 sendEvent:v14];
}

- (void)logNotificationDeliveryUI:(unint64_t)a3 notificationUUIDs:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (!v5)
  {
    v7 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [ATXNotificationsLoggingServer logNotificationDeliveryUI:a3 notificationUUIDs:v7];
    }

    v6 = MEMORY[0x277CBEBF8];
  }

  v8 = [[ATXNotificationDeliveryEvent alloc] initWithDeliveryUI:a3 suggestionUUIDs:v6];
  v9 = objc_opt_new();
  v10 = [v9 source];
  [v10 sendEvent:v8];
}

- (void)logNotificationGroupEvent:(int64_t)a3 eventIdentifier:(id)a4 timestamp:(id)a5
{
  v7 = MEMORY[0x277CEB700];
  v8 = a5;
  v9 = a4;
  v12 = [[v7 alloc] initWithEventType:a3 uuid:v9 eventDate:v8];

  v10 = objc_opt_new();
  v11 = [v10 source];
  [v11 sendEvent:v12];
}

void __89__ATXNotificationsLoggingServer__donateNotificationToPortraitWithNotificationsInterface___block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_2263AA000, v0, OS_LOG_TYPE_ERROR, "ATXNotificationsLoggingServer could not donate notification to PersonalizationPortrait: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)listener:shouldAcceptNewConnection:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  v3 = 2114;
  v4 = @"com.apple.notifications.logging";
  _os_log_error_impl(&dword_2263AA000, v0, OS_LOG_TYPE_ERROR, "ATXNotificationsLoggingServer: Rejecting connection %{public}@ without entitlement %{public}@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)logToCoreDuet:identifier:timestamp:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_2263AA000, v0, OS_LOG_TYPE_ERROR, "Notifications donation to CoreDuet failed: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)logNotificationDeliveryUI:(uint64_t)a1 notificationUUIDs:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = ATXNotificationDeliveryUIToString();
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(&dword_2263AA000, a2, OS_LOG_TYPE_FAULT, "-logNotificationDeliveryUI:notificationUUIDs: deliveryUI: %{public}@. notificationsUUIDs was nil, this shouldn't happen.", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end