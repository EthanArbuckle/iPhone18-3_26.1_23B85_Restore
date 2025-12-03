@interface ATXNotificationsLoggingServer
+ (ATXNotificationsLoggingServer)sharedInstance;
- (ATXNotificationsLoggingServer)init;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (id)_createPortraitNotificationWithNotificationInterface:(id)interface;
- (id)getDuetMetadataFromNotification:(id)notification metadata:(id)metadata;
- (id)getLockscreenBundleIds;
- (void)_donateNotificationToPortraitWithNotificationsInterface:(id)interface;
- (void)_logEventToCoreDuet:(int64_t)duet forNotificationId:(id)id timestamp:(id)timestamp;
- (void)getModeTimelineDataFromStartDate:(id)date reply:(id)reply;
- (void)logNotification:(id)notification withNotificationId:(id)id timestamp:(id)timestamp;
- (void)logNotificationDeliveryUI:(unint64_t)i notificationUUIDs:(id)ds;
- (void)logNotificationEvent:(int64_t)event notification:(id)notification reason:(unint64_t)reason interactionUI:(unint64_t)i;
- (void)logNotificationGroupEvent:(int64_t)event eventIdentifier:(id)identifier timestamp:(id)timestamp;
- (void)logNotificationToCoreDuet:(id)duet withNotificationId:(id)id timestamp:(id)timestamp;
- (void)logNotificationWithMetadata:(id)metadata withNotificationId:(id)id timestamp:(id)timestamp;
- (void)logSuggestionEvent:(int64_t)event suggestionType:(int64_t)type suggestionIdentifier:(id)identifier timestamp:(id)timestamp;
- (void)logToCoreDuet:(id)duet identifier:(id)identifier timestamp:(id)timestamp;
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

    knowledgeStore = [MEMORY[0x277CFE208] knowledgeStore];
    duetstorer = v2->_duetstorer;
    v2->_duetstorer = knowledgeStore;

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

- (void)_donateNotificationToPortraitWithNotificationsInterface:(id)interface
{
  interfaceCopy = interface;
  sectionID = [interfaceCopy sectionID];
  if ([sectionID length])
  {
    message = [interfaceCopy message];
    v7 = [message length];

    if (v7)
    {
      v8 = [(ATXNotificationsLoggingServer *)self _createPortraitNotificationWithNotificationInterface:interfaceCopy];
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

- (id)_createPortraitNotificationWithNotificationInterface:(id)interface
{
  v3 = MEMORY[0x277D3A450];
  interfaceCopy = interface;
  v5 = [v3 alloc];
  sectionID = [interfaceCopy sectionID];
  title = [interfaceCopy title];
  subtitle = [interfaceCopy subtitle];
  message = [interfaceCopy message];

  v10 = [v5 initWithCurrentDateAndBundleId:sectionID title:title subtitle:subtitle message:message];

  return v10;
}

- (void)logNotificationWithMetadata:(id)metadata withNotificationId:(id)id timestamp:(id)timestamp
{
  metadataCopy = metadata;
  idCopy = id;
  timestampCopy = timestamp;
  if ([(ATXNotificationsDedupeTracker *)self->_dedupetracker addNotificationId:idCopy])
  {
    v10 = [MEMORY[0x277CEB1B0] getBundleIdFromMetadata:metadataCopy];
    if (v10)
    {
      v11 = v10;
      [(ATXBBNotificationManager *)self->_bbNotificationManager addNotificationForBundleId:v10 withPublicationDate:timestampCopy];
      [(ATXNotificationsLoggingServer *)self logNotificationToCoreDuet:metadataCopy withNotificationId:idCopy timestamp:timestampCopy];
    }
  }
}

- (void)logNotificationToCoreDuet:(id)duet withNotificationId:(id)id timestamp:(id)timestamp
{
  timestampCopy = timestamp;
  v10 = [(ATXNotificationsLoggingServer *)self getDuetMetadataFromNotification:id metadata:duet];
  v9 = ATXNEventTypeToString();
  [(ATXNotificationsLoggingServer *)self logToCoreDuet:v10 identifier:v9 timestamp:timestampCopy];
}

- (void)_logEventToCoreDuet:(int64_t)duet forNotificationId:(id)id timestamp:(id)timestamp
{
  v14[1] = *MEMORY[0x277D85DE8];
  idCopy = id;
  timestampCopy = timestamp;
  if (idCopy)
  {
    identifier = [MEMORY[0x277CFE240] identifier];
    v13 = identifier;
    v14[0] = idCopy;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v11 = ATXNEventTypeToString();
    [(ATXNotificationsLoggingServer *)self logToCoreDuet:v10 identifier:v11 timestamp:timestampCopy];
  }

  else
  {
    identifier = __atxlog_handle_notification_management();
    if (os_log_type_enabled(identifier, OS_LOG_TYPE_FAULT))
    {
      [ATXNotificationsLoggingServer _logEventToCoreDuet:identifier forNotificationId:? timestamp:?];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)logNotification:(id)notification withNotificationId:(id)id timestamp:(id)timestamp
{
  timestampCopy = timestamp;
  idCopy = id;
  notificationCopy = notification;
  extractMetadata = [notificationCopy extractMetadata];
  [(ATXNotificationsLoggingServer *)self logNotificationWithMetadata:extractMetadata withNotificationId:idCopy timestamp:timestampCopy];

  [(ATXNotificationsLoggingServer *)self _donateNotificationToPortraitWithNotificationsInterface:notificationCopy];
}

- (void)getModeTimelineDataFromStartDate:(id)date reply:(id)reply
{
  dateCopy = date;
  replyCopy = reply;
  modeTimelineManager = self->_modeTimelineManager;
  distantPast = dateCopy;
  if (!dateCopy)
  {
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
  }

  date = [MEMORY[0x277CBEAA8] date];
  v11 = [(ATXModeTimelineManager *)modeTimelineManager modeFromStartDate:distantPast toEndDate:date];

  if (!dateCopy)
  {
  }

  v14 = 0;
  v12 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v11 options:1 error:&v14];
  v13 = v14;
  replyCopy[2](replyCopy, v12, v13);
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = __atxlog_handle_default();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v12 = 0;
    _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_INFO, "Established connection", v12, 2u);
  }

  v7 = [connectionCopy valueForEntitlement:@"com.apple.notifications.logging"];
  if (v7 && (objc_opt_respondsToSelector() & 1) != 0 && ([v7 BOOLValue] & 1) != 0)
  {
    v8 = ATXNotificationsLoggingInterface();
    [connectionCopy setExportedInterface:v8];

    [connectionCopy setExportedObject:self];
    [connectionCopy resume];
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

- (void)logToCoreDuet:(id)duet identifier:(id)identifier timestamp:(id)timestamp
{
  v25[1] = *MEMORY[0x277D85DE8];
  duetCopy = duet;
  identifierCopy = identifier;
  timestampCopy = timestamp;
  v11 = MEMORY[0x277CFE1F0];
  duetValueType = [(ATXNotificationsLoggingServer *)self duetValueType];
  v13 = [v11 identifierWithString:identifierCopy type:duetValueType];

  v14 = MEMORY[0x277CFE1D8];
  getDuetStream = [(ATXNotificationsLoggingServer *)self getDuetStream];
  v16 = [v14 eventWithStream:getDuetStream startDate:timestampCopy endDate:timestampCopy value:v13 metadata:duetCopy];

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

- (id)getDuetMetadataFromNotification:(id)notification metadata:(id)metadata
{
  v19[2] = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v6 = [MEMORY[0x277CEB1B0] getBundleIdFromMetadata:metadata];
  v7 = [MEMORY[0x277CEB3B8] parentAppBundleIdForClipBundleID:v6];
  v8 = objc_opt_new();
  identifier = [MEMORY[0x277CFE240] identifier];
  v18[0] = identifier;
  v19[0] = notificationCopy;
  bundleID = [MEMORY[0x277CFE240] bundleID];
  v18[1] = bundleID;
  v19[1] = v6;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
  [v8 addEntriesFromDictionary:v11];

  if (v7)
  {
    appBundleID = [MEMORY[0x277CFE158] appBundleID];
    v16 = appBundleID;
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
  allBundleIdsOfNotificationsOnLockscreen = [v3 allBundleIdsOfNotificationsOnLockscreen];

  objc_autoreleasePoolPop(v2);

  return allBundleIdsOfNotificationsOnLockscreen;
}

- (void)logNotificationEvent:(int64_t)event notification:(id)notification reason:(unint64_t)reason interactionUI:(unint64_t)i
{
  notificationCopy = notification;
  v10 = objc_opt_new();
  bundleID = [notificationCopy bundleID];
  [v10 setSectionID:bundleID];

  title = [notificationCopy title];
  [v10 setTitle:title];

  subtitle = [notificationCopy subtitle];
  [v10 setSubtitle:subtitle];

  body = [notificationCopy body];
  [v10 setMessage:body];

  categoryID = [notificationCopy categoryID];
  [v10 setTopic:categoryID];

  uuid = [notificationCopy uuid];
  uUIDString = [uuid UUIDString];

  v18 = MEMORY[0x277CBEAA8];
  [notificationCopy timestamp];
  v19 = [v18 dateWithTimeIntervalSinceReferenceDate:?];
  if (event <= 0x11 && ((1 << event) & 0x30001) != 0)
  {
    [(ATXNotificationsLoggingServer *)self logNotification:v10 withNotificationId:uUIDString timestamp:v19];
  }

  v46 = v19;
  result = [(_PASLazyPurgeableResult *)self->_cachedLoggingSources result];
  contactRepresentationDatastore = [result contactRepresentationDatastore];
  [notificationCopy setRawIdentifiersWithContactRepresentationDataStore:contactRepresentationDatastore];

  v45 = result;
  userNotificationBiomeStream = [result userNotificationBiomeStream];
  [userNotificationBiomeStream sendEvent:event notification:notificationCopy deliveryReason:reason interactionUI:i];

  v37 = objc_alloc(MEMORY[0x277CF1388]);
  v44 = objc_opt_new();
  uUIDString2 = [v44 UUIDString];
  v23 = objc_alloc(MEMORY[0x277CBEAA8]);
  [notificationCopy timestamp];
  v42 = [v23 initWithTimeIntervalSinceReferenceDate:?];
  v47 = v10;
  if ((event - 1) > 0x1A)
  {
    v39 = 0;
  }

  else
  {
    v39 = dword_226872A24[event - 1];
  }

  bundleID2 = [notificationCopy bundleID];
  uuid2 = [notificationCopy uuid];
  uUIDString3 = [uuid2 UUIDString];
  title2 = [notificationCopy title];
  subtitle2 = [notificationCopy subtitle];
  v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(notificationCopy, "badge")}];
  threadID = [notificationCopy threadID];
  categoryID2 = [notificationCopy categoryID];
  sectionID = [notificationCopy sectionID];
  contactIDs = [notificationCopy contactIDs];
  v25 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(notificationCopy, "isGroupMessage")}];
  v26 = MEMORY[0x277CEB3B8];
  bundleID3 = [notificationCopy bundleID];
  v28 = [v26 parentAppBundleIdForClipBundleID:bundleID3];
  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(notificationCopy, "bodyLength")}];
  v40 = [v37 initWithUniqueID:uUIDString2 absoluteTimestamp:v42 usageType:v39 bundleID:bundleID2 notificationID:uUIDString3 deviceID:0 title:title2 subtitle:subtitle2 body:0 badge:v33 threadID:threadID categoryID:categoryID2 sectionID:sectionID contactIDs:contactIDs isGroupMessage:v25 parentBundleID:v28 bodyLength:v29];

  notificationUsageSource = [v45 notificationUsageSource];
  [notificationUsageSource sendEvent:v40];
}

- (void)logSuggestionEvent:(int64_t)event suggestionType:(int64_t)type suggestionIdentifier:(id)identifier timestamp:(id)timestamp
{
  v9 = MEMORY[0x277CEB770];
  timestampCopy = timestamp;
  identifierCopy = identifier;
  v14 = [[v9 alloc] initWithSuggestionType:type eventType:event suggestionUUID:identifierCopy eventDate:timestampCopy];

  v12 = objc_opt_new();
  source = [v12 source];
  [source sendEvent:v14];
}

- (void)logNotificationDeliveryUI:(unint64_t)i notificationUUIDs:(id)ds
{
  dsCopy = ds;
  v6 = dsCopy;
  if (!dsCopy)
  {
    v7 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [ATXNotificationsLoggingServer logNotificationDeliveryUI:i notificationUUIDs:v7];
    }

    v6 = MEMORY[0x277CBEBF8];
  }

  v8 = [[ATXNotificationDeliveryEvent alloc] initWithDeliveryUI:i suggestionUUIDs:v6];
  v9 = objc_opt_new();
  source = [v9 source];
  [source sendEvent:v8];
}

- (void)logNotificationGroupEvent:(int64_t)event eventIdentifier:(id)identifier timestamp:(id)timestamp
{
  v7 = MEMORY[0x277CEB700];
  timestampCopy = timestamp;
  identifierCopy = identifier;
  v12 = [[v7 alloc] initWithEventType:event uuid:identifierCopy eventDate:timestampCopy];

  v10 = objc_opt_new();
  source = [v10 source];
  [source sendEvent:v12];
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