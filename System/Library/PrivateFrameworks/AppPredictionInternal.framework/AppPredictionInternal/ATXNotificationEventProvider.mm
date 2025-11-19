@interface ATXNotificationEventProvider
- (ATXNotificationEventProvider)initWithEventType:(int64_t)a3 contactStore:(id)a4;
- (ATXNotificationEventProvider)initWithEventTypes:(id)a3 contactStore:(id)a4;
- (BOOL)isEventFromProvider:(id)a3;
- (NSString)description;
- (double)secondsSinceReceiptForModeEvent:(id)a3;
- (id)aggregationEventsFromEvent:(id)a3;
- (id)biomePublisherWithBookmark:(id)a3;
- (id)dateIntervalFromEvent:(id)a3;
- (id)eventsFromPublisher;
- (void)updateEntitySpecificFeaturesDict:(id)a3 aggregationEvent:(id)a4 isLocalToMode:(BOOL)a5;
@end

@implementation ATXNotificationEventProvider

- (ATXNotificationEventProvider)initWithEventType:(int64_t)a3 contactStore:(id)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CCABB0];
  v7 = a4;
  v8 = [v6 numberWithInteger:a3];
  v13[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v10 = [(ATXNotificationEventProvider *)self initWithEventTypes:v9 contactStore:v7];

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (ATXNotificationEventProvider)initWithEventTypes:(id)a3 contactStore:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = ATXNotificationEventProvider;
  v9 = [(ATXNotificationEventProvider *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_eventTypes, a3);
    v11 = [[ATXStableContactRepresentationDatastore alloc] initWithContactStore:v8];
    stableContactRepresentationProvider = v10->_stableContactRepresentationProvider;
    v10->_stableContactRepresentationProvider = v11;
  }

  return v10;
}

- (id)biomePublisherWithBookmark:(id)a3
{
  v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:{a3, -2419200.0}];
  v5 = objc_opt_new();
  v6 = [v5 publisherFromStartTime:v4 endTime:0 maxEvents:0 lastN:2000 reversed:0];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__ATXNotificationEventProvider_biomePublisherWithBookmark___block_invoke;
  v9[3] = &unk_27859A798;
  v9[4] = self;
  v7 = [v6 filterWithIsIncluded:v9];

  return v7;
}

uint64_t __59__ATXNotificationEventProvider_biomePublisherWithBookmark___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 eventBody];

  if (v4)
  {
    v5 = [v3 eventBody];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = __atxlog_handle_notification_management();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __59__ATXNotificationEventProvider_biomePublisherWithBookmark___block_invoke_cold_1();
      }

      v7 = MEMORY[0x277CBEAD8];
      v8 = *MEMORY[0x277CBE658];
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      [v7 raise:v8 format:{@"Encountered event in ATXNotificationEventProvider that was of unknown class. Expected ATXUserNotificationLoggingEvent. Received: %@", v10}];
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = *(*(a1 + 32) + 8);
    v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = *v20;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v19 + 1) + 8 * i);
          v16 = [v5 eventType];
          if (v16 == [v15 integerValue])
          {
            v12 = 1;
            goto LABEL_16;
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:
  }

  else
  {
    v12 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v12;
}

- (id)eventsFromPublisher
{
  v3 = objc_opt_new();
  v4 = [(ATXNotificationEventProvider *)self biomePublisherWithBookmark:0];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __51__ATXNotificationEventProvider_eventsFromPublisher__block_invoke_2;
  v10[3] = &unk_27859EB98;
  v10[4] = self;
  v5 = v3;
  v11 = v5;
  v6 = [v4 sinkWithCompletion:&__block_literal_global_149 receiveInput:v10];

  v7 = v11;
  v8 = v5;

  return v5;
}

void __51__ATXNotificationEventProvider_eventsFromPublisher__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) aggregationEventsFromEvent:a2];
  if ([v3 count])
  {
    [*(a1 + 40) addObjectsFromArray:v3];
  }
}

- (BOOL)isEventFromProvider:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 eventBody];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (id)aggregationEventsFromEvent:(id)a3
{
  v4 = a3;
  if ([(ATXNotificationEventProvider *)self isEventFromProvider:v4])
  {
    v5 = [v4 eventBody];
    v6 = objc_alloc(MEMORY[0x277CBEAA8]);
    [v5 timestamp];
    v7 = [v6 initWithTimeIntervalSinceReferenceDate:?];
    v8 = [v5 notification];
    v9 = [v8 bundleID];

    if (v9)
    {
      v10 = [objc_alloc(MEMORY[0x277CEB390]) initWithBundleId:v9];
      if (v10)
      {
        v11 = [v5 notification];
        v12 = [v11 isMessage];

        if (v12)
        {
          v13 = [v5 notification];
          v14 = [v13 isGroupMessage];

          v15 = [v5 notification];
          v16 = v15;
          if (v14)
          {
            v17 = [v15 threadID];

            if (v17)
            {
              v18 = [objc_alloc(MEMORY[0x277CEB420]) initWithDisplayName:0 rawIdentifier:v17 cnContactId:0];
            }

            else
            {
              v18 = 0;
            }
          }

          else
          {
            v20 = [v15 contactIDs];
            v17 = [v20 firstObject];

            v21 = [v5 notification];
            v22 = [v21 rawIdentifiers];
            v23 = [v22 firstObject];

            if (v17)
            {
              v24 = [(ATXStableContactRepresentationProviderProtocol *)self->_stableContactRepresentationProvider stableContactRepresentationForCnContactId:v17 rawIdentifier:v23];
              v25 = [v24 stableContactIdentifier];
              v18 = [objc_alloc(MEMORY[0x277CEB420]) initWithDisplayName:0 rawIdentifier:v23 cnContactId:v17 stableContactIdentifier:v25];
            }

            else
            {
              v26 = __atxlog_handle_notification_management();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
              {
                [ATXNotificationEventProvider aggregationEventsFromEvent:v5];
              }

              v18 = 0;
            }
          }
        }

        else
        {
          v18 = 0;
        }

        v19 = objc_opt_new();
        v27 = [objc_alloc(MEMORY[0x277CEB720]) initWithAppEntity:v10 contactEntity:0];
        v28 = [v5 notification];
        [v28 timestamp];
        [v27 setReceiveTimestamp:?];

        if (v27)
        {
          v29 = [[ATXModeEvent alloc] initWithStartDate:v7 endDate:v7 entity:v27];
          [v19 addObject:v29];
        }

        if (v18)
        {
          v30 = [objc_alloc(MEMORY[0x277CEB720]) initWithAppEntity:v10 contactEntity:v18];

          v31 = [v5 notification];
          [v31 timestamp];
          [v30 setReceiveTimestamp:?];

          if (v30)
          {
            v32 = [[ATXModeEvent alloc] initWithStartDate:v7 endDate:v7 entity:v30];
            [v19 addObject:v32];
          }

          v27 = [objc_alloc(MEMORY[0x277CEB720]) initWithAppEntity:0 contactEntity:v18];

          v33 = [v5 notification];
          [v33 timestamp];
          [v27 setReceiveTimestamp:?];

          if (v27)
          {
            v34 = [[ATXModeEvent alloc] initWithStartDate:v7 endDate:v7 entity:v27];
            [v19 addObject:v34];
          }
        }
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)dateIntervalFromEvent:(id)a3
{
  v4 = a3;
  if ([(ATXNotificationEventProvider *)self isEventFromProvider:v4])
  {
    v5 = [v4 eventBody];
    v6 = objc_alloc(MEMORY[0x277CBEAA8]);
    [v5 timestamp];
    v7 = [v6 initWithTimeIntervalSinceReferenceDate:?];
    v8 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v7 endDate:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)updateEntitySpecificFeaturesDict:(id)a3 aggregationEvent:(id)a4 isLocalToMode:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v5)
  {
    v11 = [v9 entity];
    v12 = [v8 objectForKeyedSubscript:v11];

    if (!v12)
    {
      v13 = objc_opt_new();
      v14 = [v10 entity];
      [v8 setObject:v13 forKeyedSubscript:v14];
    }

    v15 = [v10 entity];
    v16 = [v8 objectForKeyedSubscript:v15];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 secondsToEngagement];
      v18 = MEMORY[0x277CCABB0];
      [(ATXNotificationEventProvider *)self secondsSinceReceiptForModeEvent:v10];
      v19 = [v18 numberWithDouble:?];
      [v17 addObject:v19];
    }

    else
    {
      v20 = __atxlog_handle_notification_management();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        [ATXNotificationEventProvider updateEntitySpecificFeaturesDict:v16 aggregationEvent:v20 isLocalToMode:?];
      }
    }
  }
}

- (double)secondsSinceReceiptForModeEvent:(id)a3
{
  v3 = a3;
  v4 = [v3 entity];
  v5 = [v3 startDate];

  v6 = objc_alloc(MEMORY[0x277CBEAA8]);
  [v4 receiveTimestamp];
  v7 = [v6 initWithTimeIntervalSinceReferenceDate:?];
  [v5 timeIntervalSinceDate:v7];
  v9 = v8;

  return v9;
}

- (NSString)description
{
  v3 = objc_opt_new();
  eventTypes = self->_eventTypes;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__ATXNotificationEventProvider_description__block_invoke;
  v7[3] = &unk_27859EBC0;
  v5 = v3;
  v8 = v5;
  [(NSArray *)eventTypes enumerateObjectsUsingBlock:v7];

  return v5;
}

void __43__ATXNotificationEventProvider_description__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (a3)
  {
    [*(a1 + 32) appendString:@"-"];
  }

  [v6 integerValue];
  v5 = ATXNEventTypeToString();
  [*(a1 + 32) appendString:v5];
}

void __59__ATXNotificationEventProvider_biomePublisherWithBookmark___block_invoke_cold_1()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_0(&dword_2263AA000, v2, v3, "Encountered event in ATXNotificationEventProvider that was of unknown class. Expected ATXUserNotificationLoggingEvent. Received: %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)aggregationEventsFromEvent:(void *)a1 .cold.1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 notification];
  OUTLINED_FUNCTION_0_0(&dword_2263AA000, v2, v3, "Notification didn't have a contactId, although it was a message and wasn't a group message. Notification: %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)updateEntitySpecificFeaturesDict:(uint64_t)a1 aggregationEvent:(NSObject *)a2 isLocalToMode:.cold.1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v6 = 138412290;
  v7 = v4;
  _os_log_fault_impl(&dword_2263AA000, a2, OS_LOG_TYPE_FAULT, "Encountered an event of unknown type. Expected ATXNotificationEntityFeatures, received: %@", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

@end