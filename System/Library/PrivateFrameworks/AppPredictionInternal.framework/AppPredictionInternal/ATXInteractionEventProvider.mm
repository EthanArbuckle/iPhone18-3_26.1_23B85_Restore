@interface ATXInteractionEventProvider
- (ATXInteractionEventProvider)initWithContactStore:(id)store;
- (BOOL)isEventFromProvider:(id)provider;
- (id)aggregationEventsFromEvent:(id)event;
- (id)biomePublisherWithBookmark:(id)bookmark;
- (id)contactEntityFromEvent:(id)event;
- (id)contactEntityFromInstantMessagingInteraction:(id)interaction;
- (id)dateIntervalFromEvent:(id)event;
- (id)eventsFromPublisher;
@end

@implementation ATXInteractionEventProvider

- (ATXInteractionEventProvider)initWithContactStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = ATXInteractionEventProvider;
  v5 = [(ATXInteractionEventProvider *)&v9 init];
  if (v5)
  {
    v6 = [[ATXStableContactRepresentationDatastore alloc] initWithContactStore:storeCopy];
    stableContactRepresentationProvider = v5->_stableContactRepresentationProvider;
    v5->_stableContactRepresentationProvider = v6;
  }

  return v5;
}

- (id)biomePublisherWithBookmark:(id)bookmark
{
  v43[2] = *MEMORY[0x277D85DE8];
  bookmarkCopy = bookmark;
  defaultDatabaseDirectory = [MEMORY[0x277CFE0C0] defaultDatabaseDirectory];
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
          startDate = [v22 startDate];
          [startDate timeIntervalSinceReferenceDate];
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

- (BOOL)isEventFromProvider:(id)provider
{
  providerCopy = provider;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    eventBody = [providerCopy eventBody];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (id)aggregationEventsFromEvent:(id)event
{
  eventCopy = event;
  if ([(ATXInteractionEventProvider *)self isEventFromProvider:eventCopy])
  {
    eventBody = [eventCopy eventBody];
    v6 = [ATXModeEvent alloc];
    startDate = [eventBody startDate];
    endDate = [eventBody endDate];
    v9 = [(ATXInteractionEventProvider *)self contactEntityFromEvent:eventCopy];
    v10 = [(ATXModeEvent *)v6 initWithStartDate:startDate endDate:endDate entity:v9];

    v11 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v10, 0}];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)dateIntervalFromEvent:(id)event
{
  eventCopy = event;
  if ([(ATXInteractionEventProvider *)self isEventFromProvider:eventCopy])
  {
    eventBody = [eventCopy eventBody];
    startDate = [eventBody startDate];
    [startDate timeIntervalSinceReferenceDate];
    v8 = v7;
    endDate = [eventBody endDate];
    [endDate timeIntervalSinceReferenceDate];
    v11 = v10;

    if (v8 <= v11)
    {
      v13 = objc_alloc(MEMORY[0x277CCA970]);
      startDate2 = [eventBody startDate];
      endDate2 = [eventBody endDate];
      v12 = [v13 initWithStartDate:startDate2 endDate:endDate2];
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

- (id)contactEntityFromEvent:(id)event
{
  eventCopy = event;
  if ([(ATXInteractionEventProvider *)self isEventFromProvider:eventCopy])
  {
    eventBody = [eventCopy eventBody];
    if ([eventBody mechanism] == 4)
    {
      personId = [(ATXInteractionEventProvider *)self contactEntityFromInstantMessagingInteraction:eventBody];
    }

    else
    {
      recipients = [eventBody recipients];
      v8 = [recipients count];

      if (v8 <= 1)
      {
        recipients2 = [eventBody recipients];
        firstObject = [recipients2 firstObject];

        personId = [firstObject personId];

        if (personId)
        {
          stableContactRepresentationProvider = self->_stableContactRepresentationProvider;
          personId2 = [firstObject personId];
          identifier = [firstObject identifier];
          v14 = [(ATXStableContactRepresentationProviderProtocol *)stableContactRepresentationProvider stableContactRepresentationForCnContactId:personId2 rawIdentifier:identifier];

          stableContactIdentifier = [v14 stableContactIdentifier];
          v16 = objc_alloc(MEMORY[0x277CEB420]);
          displayName = [firstObject displayName];
          identifier2 = [firstObject identifier];
          personId3 = [firstObject personId];
          personId = [v16 initWithDisplayName:displayName rawIdentifier:identifier2 cnContactId:personId3 stableContactIdentifier:stableContactIdentifier];
        }
      }

      else
      {
        personId = 0;
      }
    }
  }

  else
  {
    personId = 0;
  }

  return personId;
}

- (id)contactEntityFromInstantMessagingInteraction:(id)interaction
{
  v33 = *MEMORY[0x277D85DE8];
  interactionCopy = interaction;
  recipients = [interactionCopy recipients];
  if ([recipients count] >= 2 && (objc_msgSend(interactionCopy, "groupName"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v8))
  {
    groupName = [interactionCopy groupName];
    personId = 0;
  }

  else if ([recipients count] == 1)
  {
    firstObject = [recipients firstObject];
    groupName = [firstObject displayName];

    firstObject2 = [recipients firstObject];
    personId = [firstObject2 personId];
  }

  else
  {
    personId = 0;
    groupName = 0;
  }

  bundleId = [interactionCopy bundleId];
  v14 = [bundleId isEqualToString:@"com.apple.MobileSMS"];

  if (v14)
  {
    domainIdentifier = [interactionCopy domainIdentifier];
  }

  else
  {
    derivedIntentIdentifier = [interactionCopy derivedIntentIdentifier];

    if (!derivedIntentIdentifier)
    {
      goto LABEL_12;
    }

    domainIdentifier = [interactionCopy derivedIntentIdentifier];
  }

  derivedIntentIdentifier = domainIdentifier;
LABEL_12:
  if (personId | derivedIntentIdentifier)
  {
    if (!personId)
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

    v21 = [objc_alloc(MEMORY[0x277CEB420]) initWithDisplayName:groupName rawIdentifier:derivedIntentIdentifier cnContactId:personId];
    if ([recipients count] == 1)
    {
      stableContactRepresentationProvider = self->_stableContactRepresentationProvider;
      firstObject3 = [recipients firstObject];
      identifier = [firstObject3 identifier];
      v25 = [(ATXStableContactRepresentationProviderProtocol *)stableContactRepresentationProvider stableContactRepresentationForCnContactId:personId rawIdentifier:identifier];

      stableContactIdentifier = [v25 stableContactIdentifier];
      [v21 setStableContactIdentifier:stableContactIdentifier];
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