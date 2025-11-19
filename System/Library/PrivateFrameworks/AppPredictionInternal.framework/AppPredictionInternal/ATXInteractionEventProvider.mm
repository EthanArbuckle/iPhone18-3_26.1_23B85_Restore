@interface ATXInteractionEventProvider
- (ATXInteractionEventProvider)initWithContactStore:(id)a3;
- (BOOL)isEventFromProvider:(id)a3;
- (id)aggregationEventsFromEvent:(id)a3;
- (id)biomePublisherWithBookmark:(id)a3;
- (id)contactEntityFromEvent:(id)a3;
- (id)contactEntityFromInstantMessagingInteraction:(id)a3;
- (id)dateIntervalFromEvent:(id)a3;
- (id)eventsFromPublisher;
@end

@implementation ATXInteractionEventProvider

- (ATXInteractionEventProvider)initWithContactStore:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ATXInteractionEventProvider;
  v5 = [(ATXInteractionEventProvider *)&v9 init];
  if (v5)
  {
    v6 = [[ATXStableContactRepresentationDatastore alloc] initWithContactStore:v4];
    stableContactRepresentationProvider = v5->_stableContactRepresentationProvider;
    v5->_stableContactRepresentationProvider = v6;
  }

  return v5;
}

- (id)biomePublisherWithBookmark:(id)a3
{
  v43[2] = *MEMORY[0x277D85DE8];
  v35 = a3;
  v34 = [MEMORY[0x277CFE0C0] defaultDatabaseDirectory];
  v3 = [MEMORY[0x277CFE0C0] storeWithDirectory:? readOnly:?];
  v4 = MEMORY[0x277CCAC30];
  v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-2419200.0];
  v6 = [v4 predicateWithFormat:@"(startDate >= %@)", v5];

  v7 = MEMORY[0x277CCAC30];
  v8 = [MEMORY[0x277CBEB98] setWithArray:&unk_283A57D88];
  v9 = [v7 predicateWithFormat:@"(direction IN %@)", v8];

  v10 = MEMORY[0x277CCA920];
  v31 = v9;
  v32 = v6;
  v43[0] = v6;
  v43[1] = v9;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:2];
  v12 = [v10 andPredicateWithSubpredicates:v11];

  v13 = [MEMORY[0x277CFE260] startDateSortDescriptorAscending:1];
  v42 = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v42 count:1];
  v40 = 0;
  v33 = v3;
  v15 = [v3 queryInteractionsUsingPredicate:v12 sortDescriptors:v14 limit:0 offset:0 error:&v40];
  v30 = v40;

  v16 = objc_opt_new();
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v17 = v15;
  v18 = [v17 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v37;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v37 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v36 + 1) + 8 * i);
        v23 = objc_autoreleasePoolPush();
        if ([v22 direction] == 1)
        {
          v24 = objc_alloc(MEMORY[0x277CF1800]);
          v25 = [v22 startDate];
          [v25 timeIntervalSinceReferenceDate];
          v26 = [v24 initWithEventBody:v22 timestamp:?];

          [v16 addObject:v26];
        }

        objc_autoreleasePoolPop(v23);
      }

      v19 = [v17 countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v19);
  }

  v27 = [objc_alloc(MEMORY[0x277CF17D0]) initWithSequence:v16];
  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

- (id)eventsFromPublisher
{
  v3 = objc_opt_new();
  v4 = [(ATXInteractionEventProvider *)self biomePublisherWithBookmark:0];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __50__ATXInteractionEventProvider_eventsFromPublisher__block_invoke_2;
  v10[3] = &unk_2785988C8;
  v10[4] = self;
  v5 = v3;
  v11 = v5;
  v6 = [v4 sinkWithCompletion:&__block_literal_global_62 receiveInput:v10];

  v7 = v11;
  v8 = v5;

  return v5;
}

void __50__ATXInteractionEventProvider_eventsFromPublisher__block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 eventBody];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v5 = v7;
  if (isKindOfClass)
  {
    v6 = [*(a1 + 32) aggregationEventsFromEvent:v7];
    if ([v6 count])
    {
      [*(a1 + 40) addObjectsFromArray:v6];
    }

    v5 = v7;
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
  if ([(ATXInteractionEventProvider *)self isEventFromProvider:v4])
  {
    v5 = [v4 eventBody];
    v6 = [ATXModeEvent alloc];
    v7 = [v5 startDate];
    v8 = [v5 endDate];
    v9 = [(ATXInteractionEventProvider *)self contactEntityFromEvent:v4];
    v10 = [(ATXModeEvent *)v6 initWithStartDate:v7 endDate:v8 entity:v9];

    v11 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v10, 0}];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)dateIntervalFromEvent:(id)a3
{
  v4 = a3;
  if ([(ATXInteractionEventProvider *)self isEventFromProvider:v4])
  {
    v5 = [v4 eventBody];
    v6 = [v5 startDate];
    [v6 timeIntervalSinceReferenceDate];
    v8 = v7;
    v9 = [v5 endDate];
    [v9 timeIntervalSinceReferenceDate];
    v11 = v10;

    if (v8 <= v11)
    {
      v13 = objc_alloc(MEMORY[0x277CCA970]);
      v14 = [v5 startDate];
      v15 = [v5 endDate];
      v12 = [v13 initWithStartDate:v14 endDate:v15];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)contactEntityFromEvent:(id)a3
{
  v4 = a3;
  if ([(ATXInteractionEventProvider *)self isEventFromProvider:v4])
  {
    v5 = [v4 eventBody];
    if ([v5 mechanism] == 4)
    {
      v6 = [(ATXInteractionEventProvider *)self contactEntityFromInstantMessagingInteraction:v5];
    }

    else
    {
      v7 = [v5 recipients];
      v8 = [v7 count];

      if (v8 <= 1)
      {
        v9 = [v5 recipients];
        v10 = [v9 firstObject];

        v6 = [v10 personId];

        if (v6)
        {
          stableContactRepresentationProvider = self->_stableContactRepresentationProvider;
          v12 = [v10 personId];
          v13 = [v10 identifier];
          v14 = [(ATXStableContactRepresentationProviderProtocol *)stableContactRepresentationProvider stableContactRepresentationForCnContactId:v12 rawIdentifier:v13];

          v15 = [v14 stableContactIdentifier];
          v16 = objc_alloc(MEMORY[0x277CEB420]);
          v17 = [v10 displayName];
          v18 = [v10 identifier];
          v19 = [v10 personId];
          v6 = [v16 initWithDisplayName:v17 rawIdentifier:v18 cnContactId:v19 stableContactIdentifier:v15];
        }
      }

      else
      {
        v6 = 0;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)contactEntityFromInstantMessagingInteraction:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 recipients];
  if ([v6 count] >= 2 && (objc_msgSend(v5, "groupName"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v8))
  {
    v9 = [v5 groupName];
    v10 = 0;
  }

  else if ([v6 count] == 1)
  {
    v11 = [v6 firstObject];
    v9 = [v11 displayName];

    v12 = [v6 firstObject];
    v10 = [v12 personId];
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  v13 = [v5 bundleId];
  v14 = [v13 isEqualToString:@"com.apple.MobileSMS"];

  if (v14)
  {
    v15 = [v5 domainIdentifier];
  }

  else
  {
    v16 = [v5 derivedIntentIdentifier];

    if (!v16)
    {
      goto LABEL_12;
    }

    v15 = [v5 derivedIntentIdentifier];
  }

  v16 = v15;
LABEL_12:
  if (v10 | v16)
  {
    if (!v10)
    {
      v17 = __atxlog_handle_notification_management();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = NSStringFromSelector(a2);
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        v29 = 138412546;
        v30 = v18;
        v31 = 2112;
        v32 = v20;
        _os_log_impl(&dword_2263AA000, v17, OS_LOG_TYPE_DEFAULT, "No cnContactId provided for %@ in %@", &v29, 0x16u);
      }
    }

    v21 = [objc_alloc(MEMORY[0x277CEB420]) initWithDisplayName:v9 rawIdentifier:v16 cnContactId:v10];
    if ([v6 count] == 1)
    {
      stableContactRepresentationProvider = self->_stableContactRepresentationProvider;
      v23 = [v6 firstObject];
      v24 = [v23 identifier];
      v25 = [(ATXStableContactRepresentationProviderProtocol *)stableContactRepresentationProvider stableContactRepresentationForCnContactId:v10 rawIdentifier:v24];

      v26 = [v25 stableContactIdentifier];
      [v21 setStableContactIdentifier:v26];
    }
  }

  else
  {
    v21 = 0;
  }

  v27 = *MEMORY[0x277D85DE8];

  return v21;
}

@end