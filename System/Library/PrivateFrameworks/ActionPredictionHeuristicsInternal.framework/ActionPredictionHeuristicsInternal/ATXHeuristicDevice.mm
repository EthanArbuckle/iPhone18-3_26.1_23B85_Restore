@interface ATXHeuristicDevice
+ (MTAlarmManager)sharedAlarmManager;
- (ATXHeuristicDevice)initWithLocationManager:(id)manager;
- (EKEventStore)eventStore;
- (NSDate)now;
- (id)_calendarVisibilityManager;
- (id)_contactForPredicate:(id)predicate;
- (id)_contactKeysToFetch;
- (id)_dictContactForIdentifier:(id)identifier;
- (id)_dictContactForParticipant:(id)participant contactCache:(id)cache;
- (id)_dictForAttachment:(id)attachment;
- (id)_dictForEvent:(id)event contactCache:(id)cache;
- (id)_unwrap:(id)_unwrap;
- (id)_wrap:(id)_wrap;
- (id)contactForParticipant:(id)participant;
- (id)contactStore;
- (id)contactsForPredicate:(id)predicate;
- (id)dictContactForCNContact:(id)contact;
- (id)dictForEvent:(id)event contactCache:(id)cache;
- (id)meContact;
- (id)organizerContactWithEvent:(id)event;
- (id)resolveContact:(id)contact;
- (id)visibleCalendarsInCurrentFocus;
- (id)visibleCalendarsRegardlessOfFocus;
- (id)wrap:(id)wrap;
- (void)accessFavoriteContacts:(id)contacts;
- (void)dealloc;
- (void)meContact;
- (void)setNow:(id)now;
@end

@implementation ATXHeuristicDevice

- (ATXHeuristicDevice)initWithLocationManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = ATXHeuristicDevice;
  v6 = [(ATXHeuristicDevice *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_locationManager, manager);
  }

  return v7;
}

- (void)dealloc
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = objc_autoreleasePoolPush();
  favoriteContactsLazy = selfCopy->_favoriteContactsLazy;
  selfCopy->_favoriteContactsLazy = 0;

  objc_autoreleasePoolPop(v3);
  objc_sync_exit(selfCopy);

  v5.receiver = selfCopy;
  v5.super_class = ATXHeuristicDevice;
  [(ATXHeuristicDevice *)&v5 dealloc];
}

- (EKEventStore)eventStore
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  eventStore = selfCopy->_eventStore;
  if (!eventStore)
  {
    v4 = [objc_alloc(MEMORY[0x277CC5A40]) initWithEKOptions:128];
    v5 = selfCopy->_eventStore;
    selfCopy->_eventStore = v4;

    eventStore = selfCopy->_eventStore;
  }

  v6 = eventStore;
  objc_sync_exit(selfCopy);

  return v6;
}

- (id)_calendarVisibilityManager
{
  if (_calendarVisibilityManager_onceToken != -1)
  {
    [ATXHeuristicDevice _calendarVisibilityManager];
  }

  v3 = objc_alloc(MEMORY[0x277CC59F0]);
  eventStore = [(ATXHeuristicDevice *)self eventStore];
  v5 = [v3 initWithEventStore:eventStore limitedToSource:0 visibilityChangedCallback:0 queue:0];

  return v5;
}

void __48__ATXHeuristicDevice__calendarVisibilityManager__block_invoke()
{
  v3 = [MEMORY[0x277CC59F0] visibilityChangedNotificationName];
  v0 = v3;
  v1 = [v3 UTF8String];
  v2 = dispatch_get_global_queue(25, 0);
  notify_register_dispatch(v1, &_calendarVisibilityManager_calendarVisibilityToken, v2, &__block_literal_global_25);
}

void __48__ATXHeuristicDevice__calendarVisibilityManager__block_invoke_2()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:*MEMORY[0x277CC5948] object:0];

  v1 = __atxlog_handle_default();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_23E3EA000, v1, OS_LOG_TYPE_DEFAULT, "Reposting EKEventStoreChangedNotification because calendar visibility has changed", v2, 2u);
  }
}

- (id)visibleCalendarsRegardlessOfFocus
{
  _calendarVisibilityManager = [(ATXHeuristicDevice *)self _calendarVisibilityManager];
  visibleCalendars = [_calendarVisibilityManager visibleCalendars];

  return visibleCalendars;
}

- (id)visibleCalendarsInCurrentFocus
{
  unselectedCalendarIdentifiersForFocusMode = [MEMORY[0x277CC59F0] unselectedCalendarIdentifiersForFocusMode];
  visibleCalendarsRegardlessOfFocus = [(ATXHeuristicDevice *)self visibleCalendarsRegardlessOfFocus];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__ATXHeuristicDevice_visibleCalendarsInCurrentFocus__block_invoke;
  v8[3] = &unk_278C3CB68;
  v9 = unselectedCalendarIdentifiersForFocusMode;
  v5 = unselectedCalendarIdentifiersForFocusMode;
  v6 = [visibleCalendarsRegardlessOfFocus _pas_filteredArrayWithTest:v8];

  return v6;
}

uint64_t __52__ATXHeuristicDevice_visibleCalendarsInCurrentFocus__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 calendarIdentifier];
  v5 = [v4 length];

  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = [v3 calendarIdentifier];
    v8 = [v6 containsObject:v7] ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (MTAlarmManager)sharedAlarmManager
{
  if (sharedAlarmManager_onceToken != -1)
  {
    +[ATXHeuristicDevice sharedAlarmManager];
  }

  v3 = sharedAlarmManager_alarmManager;

  return v3;
}

uint64_t __40__ATXHeuristicDevice_sharedAlarmManager__block_invoke()
{
  sharedAlarmManager_alarmManager = objc_alloc_init(MEMORY[0x277D296D8]);

  return MEMORY[0x2821F96F8]();
}

- (id)meContact
{
  if (!self->_meContactChecked)
  {
    self->_meContactChecked = 1;
    contactStore = [(ATXHeuristicDevice *)self contactStore];
    _contactKeysToFetch = [(ATXHeuristicDevice *)self _contactKeysToFetch];
    v11 = 0;
    v5 = [contactStore _crossPlatformUnifiedMeContactWithKeysToFetch:_contactKeysToFetch error:&v11];
    v6 = v11;
    meContactLazy = self->_meContactLazy;
    self->_meContactLazy = v5;

    if (v6)
    {
      v8 = __atxlog_handle_heuristic();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(ATXHeuristicDevice *)v6 meContact];
      }
    }
  }

  v9 = self->_meContactLazy;

  return v9;
}

- (id)contactStore
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  contactStoreLazy = selfCopy->_contactStoreLazy;
  if (!contactStoreLazy)
  {
    v4 = objc_opt_new();
    v5 = selfCopy->_contactStoreLazy;
    selfCopy->_contactStoreLazy = v4;

    contactStoreLazy = selfCopy->_contactStoreLazy;
  }

  v6 = contactStoreLazy;
  objc_sync_exit(selfCopy);

  return v6;
}

- (void)accessFavoriteContacts:(id)contacts
{
  contactsCopy = contacts;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = contactsCopy;
  favoriteContactsLazy = selfCopy->_favoriteContactsLazy;
  if (!favoriteContactsLazy)
  {
    v7 = objc_alloc(MEMORY[0x277CBDAF8]);
    contactStore = [(ATXHeuristicDevice *)selfCopy contactStore];
    v9 = [v7 initWithContactStore:contactStore];
    v10 = selfCopy->_favoriteContactsLazy;
    selfCopy->_favoriteContactsLazy = v9;

    favoriteContactsLazy = selfCopy->_favoriteContactsLazy;
    v5 = contactsCopy;
  }

  v5[2](v5, favoriteContactsLazy);
  objc_sync_exit(selfCopy);
}

- (NSDate)now
{
  now = self->_now;
  if (!now)
  {
    v4 = objc_opt_new();
    v5 = self->_now;
    self->_now = v4;

    now = self->_now;
  }

  return now;
}

- (void)setNow:(id)now
{
  v4 = [now copy];
  now = self->_now;
  self->_now = v4;

  MEMORY[0x2821F96F8]();
}

- (id)_contactKeysToFetch
{
  v9[5] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBDA78] descriptorForRequiredKeysForStyle:0];
  v3 = [MEMORY[0x277CBDA78] descriptorForRequiredKeysForStyle:{1000, v2}];
  v4 = *MEMORY[0x277CBD098];
  v9[1] = v3;
  v9[2] = v4;
  v5 = *MEMORY[0x277CBCFC0];
  v9[3] = *MEMORY[0x277CBD038];
  v9[4] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)contactsForPredicate:(id)predicate
{
  predicateCopy = predicate;
  contactStore = [(ATXHeuristicDevice *)self contactStore];
  _contactKeysToFetch = [(ATXHeuristicDevice *)self _contactKeysToFetch];
  v12 = 0;
  v7 = [contactStore unifiedContactsMatchingPredicate:predicateCopy keysToFetch:_contactKeysToFetch error:&v12];
  v8 = v12;

  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v10 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [ATXHeuristicDevice contactsForPredicate:];
    }

    v9 = MEMORY[0x277CBEBF8];
  }

  return v9;
}

- (id)resolveContact:(id)contact
{
  v19[4] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBDA78];
  contactCopy = contact;
  v6 = [v4 descriptorForRequiredKeysForStyle:0];
  v7 = *MEMORY[0x277CBD160];
  v19[0] = v6;
  v19[1] = v7;
  v8 = *MEMORY[0x277CBCFC0];
  v19[2] = *MEMORY[0x277CBD098];
  v19[3] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:4];

  v10 = objc_alloc(MEMORY[0x277D3A088]);
  contactStore = [(ATXHeuristicDevice *)self contactStore];
  v12 = [v10 initWithContactStore:contactStore keysToFetch:v9];

  v13 = [v12 contactWithIdentifier:contactCopy];

  if ([v13 contactType])
  {
    v14 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&dword_23E3EA000, v14, OS_LOG_TYPE_DEFAULT, "ATXOngoingCall: Contact found is not a CNContactTypePerson", v18, 2u);
    }

    v15 = 0;
  }

  else
  {
    v15 = v13;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)organizerContactWithEvent:(id)event
{
  organizer = [event organizer];
  v5 = [(ATXHeuristicDevice *)self contactForParticipant:organizer];

  return v5;
}

- (id)contactForParticipant:(id)participant
{
  v22[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBDA78];
  participantCopy = participant;
  v6 = [v4 descriptorForRequiredKeysForStyle:0];
  contactPredicate = [participantCopy contactPredicate];

  contactStore = [(ATXHeuristicDevice *)self contactStore];
  v22[0] = v6;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v17 = 0;
  v10 = [contactStore unifiedContactsMatchingPredicate:contactPredicate keysToFetch:v9 error:&v17];
  v11 = v17;

  if (v11)
  {
    firstObject = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(firstObject, OS_LOG_TYPE_ERROR))
    {
      [ATXHeuristicDevice contactsForPredicate:];
    }

LABEL_10:

    firstObject = 0;
    goto LABEL_11;
  }

  firstObject = [v10 firstObject];
  v13 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v19 = v10;
    v20 = 2112;
    v21 = contactPredicate;
    _os_log_impl(&dword_23E3EA000, v13, OS_LOG_TYPE_DEFAULT, "contacts: %@ found with predicate:%@", buf, 0x16u);
  }

  if ([firstObject contactType])
  {
    v14 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E3EA000, v14, OS_LOG_TYPE_DEFAULT, "Contact found is not a CNContactTypePerson", buf, 2u);
    }

    goto LABEL_10;
  }

LABEL_11:

  v15 = *MEMORY[0x277D85DE8];

  return firstObject;
}

- (id)_contactForPredicate:(id)predicate
{
  v3 = [(ATXHeuristicDevice *)self contactsForPredicate:predicate];
  firstObject = [v3 firstObject];

  return firstObject;
}

- (id)dictContactForCNContact:(id)contact
{
  v39 = *MEMORY[0x277D85DE8];
  contactCopy = contact;
  v5 = [MEMORY[0x277CBDA78] stringFromContact:contactCopy style:1000];
  v6 = [MEMORY[0x277CBDA78] stringFromContact:contactCopy style:0];
  if ([v5 length] && objc_msgSend(v6, "length"))
  {
    v7 = objc_opt_new();
    [v7 setObject:contactCopy forKeyedSubscript:@"CNContact"];
    identifier = [contactCopy identifier];
    [v7 setObject:identifier forKeyedSubscript:@"identifier"];

    v9 = MEMORY[0x277CCABB0];
    identifier2 = [contactCopy identifier];
    meContact = [(ATXHeuristicDevice *)self meContact];
    identifier3 = [meContact identifier];
    v13 = [v9 numberWithBool:{objc_msgSend(identifier2, "isEqualToString:", identifier3)}];
    [v7 setObject:v13 forKeyedSubscript:@"isMeContact"];

    [v7 setObject:v5 forKeyedSubscript:@"displayName"];
    [v7 setObject:v6 forKeyedSubscript:@"fullName"];
    givenName = [contactCopy givenName];
    [v7 setObject:givenName forKeyedSubscript:@"givenName"];

    familyName = [contactCopy familyName];
    [v7 setObject:familyName forKeyedSubscript:@"familyName"];

    emailAddresses = [contactCopy emailAddresses];
    v17 = [emailAddresses count];

    if (v17)
    {
      v18 = objc_opt_new();
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      emailAddresses2 = [contactCopy emailAddresses];
      v20 = [emailAddresses2 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v29;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v29 != v22)
            {
              objc_enumerationMutation(emailAddresses2);
            }

            value = [*(*(&v28 + 1) + 8 * i) value];
            [v18 addObject:value];
          }

          v21 = [emailAddresses2 countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v21);
      }

      [v7 setObject:v18 forKeyedSubscript:@"emailAddresses"];
    }

    v25 = [v7 copy];
  }

  else
  {
    v7 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v34 = v5;
      v35 = 2112;
      v36 = v6;
      v37 = 2112;
      v38 = contactCopy;
      _os_log_error_impl(&dword_23E3EA000, v7, OS_LOG_TYPE_ERROR, "Failed to get shortName/fullName: %@/%@ from contact: %@", buf, 0x20u);
    }

    v25 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

- (id)_dictContactForIdentifier:(id)identifier
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBDA58];
  identifierCopy = identifier;
  v5 = MEMORY[0x277CBEA60];
  identifierCopy2 = identifier;
  v7 = [v5 arrayWithObjects:&identifierCopy count:1];
  v8 = [v4 predicateForContactsWithIdentifiers:{v7, identifierCopy, v14}];

  v9 = [(ATXHeuristicDevice *)self _contactForPredicate:v8];

  if (v9)
  {
    v10 = [(ATXHeuristicDevice *)self dictContactForCNContact:v9];
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)_dictContactForParticipant:(id)participant contactCache:(id)cache
{
  participantCopy = participant;
  cacheCopy = cache;
  v8 = [participantCopy URL];
  if (!v8)
  {
    v10 = 0;
    goto LABEL_31;
  }

  v9 = [cacheCopy objectForKey:v8];
  if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v11 = [v9 mutableCopy];
    if (v11)
    {
      v12 = v11;
      v13 = __atxlog_handle_heuristic();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [(ATXHeuristicDevice *)v12 _dictContactForParticipant:v8 contactCache:v13];
      }

LABEL_8:

      participantRole = [participantCopy participantRole];
      if (participantRole > 4)
      {
        v15 = 0;
      }

      else
      {
        v15 = off_278C3CBB0[participantRole];
      }

      [v12 setObject:v15 forKeyedSubscript:@"role"];
      participantType = [participantCopy participantType];
      if (participantType > 4)
      {
        v23 = 0;
      }

      else
      {
        v23 = off_278C3CBD8[participantType];
      }

      [v12 setObject:v23 forKeyedSubscript:@"type"];
      participantStatus = [participantCopy participantStatus];
      if (participantStatus > 7)
      {
        v25 = 0;
      }

      else
      {
        v25 = off_278C3CC00[participantStatus];
      }

      [v12 setObject:v25 forKeyedSubscript:@"status"];
      v26 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(participantCopy, "isCurrentUser")}];
      [v12 setObject:v26 forKeyedSubscript:@"isCurrentUser"];

      v27 = [(ATXHeuristicDevice *)self wrap:participantCopy];
      [v12 setObject:v27 forKeyedSubscript:@"EKParticipant"];

      if ([v12 count])
      {
        v10 = [v12 copy];
LABEL_29:

        goto LABEL_30;
      }

LABEL_28:
      v10 = 0;
      goto LABEL_29;
    }

    contactPredicate = [participantCopy contactPredicate];
    v13 = [(ATXHeuristicDevice *)self _contactForPredicate:contactPredicate];

    if (v13)
    {
      v17 = [(ATXHeuristicDevice *)self dictContactForCNContact:v13];
      v12 = [v17 mutableCopy];

      if (v12)
      {
        v18 = [v12 objectForKeyedSubscript:@"displayName"];

        if (!v18)
        {
          name = [participantCopy name];
          [v12 setObject:name forKeyedSubscript:@"displayName"];
        }

        v20 = [v12 objectForKeyedSubscript:@"displayName"];

        if (v20)
        {
          v21 = [v12 copy];
          [cacheCopy setObject:v21 forKey:v8];

          goto LABEL_8;
        }
      }
    }

    else
    {
      v12 = 0;
    }

    v28 = objc_opt_new();
    [cacheCopy setObject:v28 forKey:v8];

    goto LABEL_28;
  }

  v10 = 0;
LABEL_30:

LABEL_31:

  return v10;
}

- (id)_dictForAttachment:(id)attachment
{
  attachmentCopy = attachment;
  v5 = objc_opt_new();
  v6 = [attachmentCopy URL];
  [v5 setObject:v6 forKeyedSubscript:@"URL"];

  fileName = [attachmentCopy fileName];
  [v5 setObject:fileName forKeyedSubscript:@"fileName"];

  fileSize = [attachmentCopy fileSize];
  [v5 setObject:fileSize forKeyedSubscript:@"fileSize"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(attachmentCopy, "isBinary")}];
  [v5 setObject:v9 forKeyedSubscript:@"isBinary"];

  fileFormat = [attachmentCopy fileFormat];
  [v5 setObject:fileFormat forKeyedSubscript:@"fileFormat"];

  v11 = [(ATXHeuristicDevice *)self wrap:attachmentCopy];

  [v5 setObject:v11 forKeyedSubscript:@"EKAttachment"];
  v12 = [v5 copy];

  return v12;
}

- (id)dictForEvent:(id)event contactCache:(id)cache
{
  v24 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  cacheCopy = cache;
  if (_EventDictionaryLRUCache_onceToken != -1)
  {
    [ATXHeuristicDevice dictForEvent:contactCache:];
  }

  v8 = _EventDictionaryLRUCache_cache;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  eventIdentifier = [eventCopy eventIdentifier];
  if (eventIdentifier)
  {
    v11 = [v8 objectForKey:eventIdentifier];
    if (v11)
    {
      v12 = __atxlog_handle_heuristic();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v20 = 136315394;
        v21 = "[ATXHeuristicDevice dictForEvent:contactCache:]";
        v22 = 2112;
        v23 = eventIdentifier;
        _os_log_impl(&dword_23E3EA000, v12, OS_LOG_TYPE_INFO, "%s: Cache hit for ekEvent.eventIdentifier: %@", &v20, 0x16u);
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = v11;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v15 = __atxlog_handle_heuristic();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v20 = 136315394;
        v21 = "[ATXHeuristicDevice dictForEvent:contactCache:]";
        v22 = 2112;
        v23 = eventIdentifier;
        _os_log_impl(&dword_23E3EA000, v15, OS_LOG_TYPE_INFO, "%s: Cache miss for ekEvent.eventIdentifier: %@", &v20, 0x16u);
      }

      v13 = [(ATXHeuristicDevice *)selfCopy _dictForEvent:eventCopy contactCache:cacheCopy];
      if (v13)
      {
        [v8 setObject:v13 forKey:eventIdentifier];
        v16 = v13;
      }

      else
      {
        v17 = objc_opt_new();
        [v8 setObject:v17 forKey:eventIdentifier];
      }
    }
  }

  else
  {
    v14 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [ATXHeuristicDevice dictForEvent:v14 contactCache:?];
    }

    v13 = [(ATXHeuristicDevice *)selfCopy _dictForEvent:eventCopy contactCache:cacheCopy];
  }

  objc_sync_exit(selfCopy);
  v18 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)_dictForEvent:(id)event contactCache:(id)cache
{
  v132 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  cacheCopy = cache;
  v8 = objc_autoreleasePoolPush();
  if ([eventCopy junkStatus] == 1 || objc_msgSend(eventCopy, "junkStatus") == 3)
  {
    v9 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      junkStatus = [eventCopy junkStatus];
      eventIdentifier = [eventCopy eventIdentifier];
      *buf = 134218242;
      v129 = junkStatus;
      v130 = 2112;
      v131 = eventIdentifier;
      _os_log_impl(&dword_23E3EA000, v9, OS_LOG_TYPE_DEFAULT, "Ignore event: junkStatus [%lu], id %@", buf, 0x16u);
    }

LABEL_5:
    v12 = 0;
    goto LABEL_6;
  }

  if ([eventCopy status] == 3)
  {
    v9 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      eventIdentifier2 = [eventCopy eventIdentifier];
      *buf = 138412290;
      v129 = eventIdentifier2;
      _os_log_impl(&dword_23E3EA000, v9, OS_LOG_TYPE_DEFAULT, "Ignore event: Cancelled, id %@", buf, 0xCu);
    }

    goto LABEL_5;
  }

  v111 = v8;
  v110 = objc_opt_new();
  organizer = [eventCopy organizer];
  v17 = objc_opt_new();
  v123[0] = MEMORY[0x277D85DD0];
  v123[1] = 3221225472;
  v123[2] = __49__ATXHeuristicDevice__dictForEvent_contactCache___block_invoke;
  v123[3] = &unk_278C3CB90;
  v123[4] = self;
  v112 = cacheCopy;
  v124 = cacheCopy;
  v113 = v17;
  v125 = v113;
  v18 = MEMORY[0x23EF0A350](v123);
  v109 = organizer;
  v18[2](v18, organizer);
  attendees = [eventCopy attendees];
  v114 = eventCopy;
  attendees2 = [eventCopy attendees];
  v21 = [attendees2 count];

  if (v21 >= 5)
  {
    v22 = 5;
  }

  else
  {
    v22 = v21;
  }

  v23 = [attendees subarrayWithRange:{0, v22}];

  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  v24 = v23;
  v25 = [v24 countByEnumeratingWithState:&v119 objects:v127 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v120;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v120 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v119 + 1) + 8 * i);
        v30 = objc_autoreleasePoolPush();
        v18[2](v18, v29);
        objc_autoreleasePoolPop(v30);
      }

      v26 = [v24 countByEnumeratingWithState:&v119 objects:v127 count:16];
    }

    while (v26);
  }

  eventCopy = v114;
  selfAttendee = [v114 selfAttendee];

  if (selfAttendee && ([v114 selfAttendee], v32 = objc_claimAutoreleasedReturnValue(), v33 = objc_msgSend(v32, "participantStatus"), v32, v33 != 2))
  {
    v34 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      selfAttendee2 = [v114 selfAttendee];
      participantStatus = [selfAttendee2 participantStatus];
      eventIdentifier3 = [v114 eventIdentifier];
      *buf = 134218242;
      v129 = participantStatus;
      v130 = 2112;
      v131 = eventIdentifier3;
      _os_log_impl(&dword_23E3EA000, v34, OS_LOG_TYPE_DEFAULT, "Ignore event: Not accepted [%lu], id %@", buf, 0x16u);
    }

    v12 = 0;
    v9 = v110;
    v8 = v111;
  }

  else
  {
    v34 = objc_opt_new();
    v115 = 0u;
    v116 = 0u;
    v117 = 0u;
    v118 = 0u;
    attachments = [v114 attachments];
    v36 = [attachments countByEnumeratingWithState:&v115 objects:v126 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v116;
      do
      {
        for (j = 0; j != v37; ++j)
        {
          if (*v116 != v38)
          {
            objc_enumerationMutation(attachments);
          }

          v40 = *(*(&v115 + 1) + 8 * j);
          v41 = objc_autoreleasePoolPush();
          v42 = [(ATXHeuristicDevice *)self _dictForAttachment:v40];
          [v34 addObject:v42];

          objc_autoreleasePoolPop(v41);
        }

        v37 = [attachments countByEnumeratingWithState:&v115 objects:v126 count:16];
      }

      while (v37);
    }

    eventCopy = v114;
    title = [v114 title];
    v9 = v110;
    [v110 setObject:title forKeyedSubscript:@"eventTitle"];

    creationDate = [v114 creationDate];
    if (creationDate)
    {
      v45 = MEMORY[0x277CCABB0];
      v46 = v110;
      [creationDate timeIntervalSinceReferenceDate];
      v47 = [v45 numberWithDouble:?];
      [v46 setObject:v47 forKeyedSubscript:@"creationDateTimestamp"];
    }

    lastModifiedDate = [v114 lastModifiedDate];
    if (lastModifiedDate)
    {
      v49 = MEMORY[0x277CCABB0];
      v50 = v110;
      [lastModifiedDate timeIntervalSinceReferenceDate];
      v51 = [v49 numberWithDouble:?];
      [v50 setObject:v51 forKeyedSubscript:@"modifiedDateTimestamp"];
    }

    startDate = [v114 startDate];
    if (startDate)
    {
      v53 = MEMORY[0x277CCABB0];
      v54 = v110;
      [startDate timeIntervalSinceReferenceDate];
      v55 = [v53 numberWithDouble:?];
      [v54 setObject:v55 forKeyedSubscript:@"startDateTimestamp"];
    }

    endDate = [v114 endDate];
    if (endDate)
    {
      v57 = MEMORY[0x277CCABB0];
      v58 = v110;
      [endDate timeIntervalSinceReferenceDate];
      v59 = [v57 numberWithDouble:?];
      [v58 setObject:v59 forKeyedSubscript:@"endDateTimestamp"];
    }

    startTimeZone = [v114 startTimeZone];
    name = [startTimeZone name];
    [v110 setObject:name forKeyedSubscript:@"startTimeZoneName"];

    endTimeZone = [v114 endTimeZone];
    name2 = [endTimeZone name];
    [v110 setObject:name2 forKeyedSubscript:@"endTimeZoneName"];

    v64 = objc_autoreleasePoolPush();
    virtualConference = [v114 virtualConference];
    joinMethods = [virtualConference joinMethods];
    firstObject = [joinMethods firstObject];
    v66 = [firstObject URL];
    absoluteString = [v66 absoluteString];
    if (absoluteString)
    {
      [v110 setObject:absoluteString forKeyedSubscript:@"conferenceURL"];
    }

    else
    {
      conferenceURLForDisplay = [v114 conferenceURLForDisplay];
      [conferenceURLForDisplay absoluteString];
      v71 = v106 = v64;
      [v110 setObject:v71 forKeyedSubscript:@"conferenceURL"];

      v64 = v106;
    }

    objc_autoreleasePoolPop(v64);
    [v110 setObject:v113 forKeyedSubscript:@"contacts"];
    externalURL = [v114 externalURL];
    absoluteString2 = [externalURL absoluteString];
    [v110 setObject:absoluteString2 forKeyedSubscript:@"externalURL"];

    v74 = MEMORY[0x277CCABB0];
    [v114 travelTime];
    v75 = [v74 numberWithDouble:?];
    [v110 setObject:v75 forKeyedSubscript:@"travelTime"];

    notes = [v114 notes];
    [v110 setObject:notes forKeyedSubscript:@"notes"];

    v77 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v114, "isAllDay")}];
    [v110 setObject:v77 forKeyedSubscript:@"isAllDay"];

    v78 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v114, "hasRecurrenceRules")}];
    [v110 setObject:v78 forKeyedSubscript:@"hasRecurrenceRules"];

    v79 = [v34 copy];
    [v110 setObject:v79 forKeyedSubscript:@"attachments"];

    v80 = [(ATXHeuristicDevice *)self wrap:v114];
    [v110 setObject:v80 forKeyedSubscript:@"EKEvent"];

    eventIdentifier4 = [v114 eventIdentifier];
    [v110 setObject:eventIdentifier4 forKeyedSubscript:@"eventIdentifier"];

    uniqueID = [v114 uniqueID];
    [v110 setObject:uniqueID forKeyedSubscript:@"uniqueID"];

    preferredLocationWithoutPrediction = [v114 preferredLocationWithoutPrediction];
    if (preferredLocationWithoutPrediction)
    {
      v84 = objc_opt_new();
      title2 = [preferredLocationWithoutPrediction title];

      if (title2)
      {
        title3 = [preferredLocationWithoutPrediction title];
        [v84 setObject:title3 forKeyedSubscript:@"title"];
      }

      address = [preferredLocationWithoutPrediction address];

      if (address)
      {
        address2 = [preferredLocationWithoutPrediction address];
        [v84 setObject:address2 forKeyedSubscript:@"address"];
      }

      if ([v84 count])
      {
        [v110 setObject:v84 forKeyedSubscript:@"structuredLocation"];
      }
    }

    suggestionInfo = [v114 suggestionInfo];

    if (suggestionInfo)
    {
      suggestionInfo2 = [v114 suggestionInfo];
      uniqueKey = [suggestionInfo2 uniqueKey];
      [v110 setObject:uniqueKey forKeyedSubscript:@"suggestionsInfoUniqueKey"];

      v92 = [v114 customObjectForKey:@"SGEventMetadataKey"];
      if (v92)
      {
        [v110 setObject:v92 forKeyedSubscript:@"sgEventMetadata"];
      }
    }

    v93 = MEMORY[0x277CCABB0];
    calendar = [v114 calendar];
    v95 = [v93 numberWithBool:{objc_msgSend(calendar, "isNaturalLanguageSuggestedEventCalendar")}];
    [v110 setObject:v95 forKeyedSubscript:@"nlEventCalendar"];

    calendar2 = [v114 calendar];
    calendarIdentifier = [calendar2 calendarIdentifier];
    [v110 setObject:calendarIdentifier forKeyedSubscript:@"calendarID"];

    v98 = [v114 localCustomObjectForKey:@"EKEventNaturalLanguageSuggestedEventExpirationDate"];
    if (v98)
    {
      v99 = MEMORY[0x277CCABB0];
      v100 = v110;
      [v98 timeIntervalSinceReferenceDate];
      v101 = [v99 numberWithDouble:?];
      [v100 setObject:v101 forKeyedSubscript:@"nlEventExpirationTime"];
    }

    birthdayContactIdentifier = [v114 birthdayContactIdentifier];

    if (birthdayContactIdentifier)
    {
      birthdayContactIdentifier2 = [v114 birthdayContactIdentifier];
      v104 = [(ATXHeuristicDevice *)self _dictContactForIdentifier:birthdayContactIdentifier2];
      [v110 setObject:v104 forKeyedSubscript:@"birthdayContact"];
    }

    v12 = [v110 copy];

    v8 = v111;
  }

  cacheCopy = v112;
LABEL_6:

  objc_autoreleasePoolPop(v8);
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

uint64_t __49__ATXHeuristicDevice__dictForEvent_contactCache___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v6 = v3;
    if (([v3 isCurrentUser] & 1) == 0)
    {
      v4 = [*(a1 + 32) _dictContactForParticipant:v6 contactCache:*(a1 + 40)];
      if (v4)
      {
        [*(a1 + 48) addObject:v4];
      }
    }
  }

  return MEMORY[0x2821F96F8]();
}

- (id)_wrap:(id)_wrap
{
  _wrapCopy = _wrap;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:_wrapCopy];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  wrappedObjects = selfCopy->_wrappedObjects;
  if (!wrappedObjects)
  {
    v8 = objc_opt_new();
    v9 = selfCopy->_wrappedObjects;
    selfCopy->_wrappedObjects = v8;

    wrappedObjects = selfCopy->_wrappedObjects;
  }

  [(NSMutableDictionary *)wrappedObjects setObject:_wrapCopy forKeyedSubscript:v5];
  objc_sync_exit(selfCopy);

  return v5;
}

- (id)_unwrap:(id)_unwrap
{
  _unwrapCopy = _unwrap;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableDictionary *)selfCopy->_wrappedObjects objectForKeyedSubscript:_unwrapCopy];
  objc_sync_exit(selfCopy);

  return v6;
}

- (id)wrap:(id)wrap
{
  wrapCopy = wrap;
  v5 = [[ATXHeuristicObjectHandle alloc] initWithDevice:self wrapping:wrapCopy];

  return v5;
}

- (void)meContact
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_23E3EA000, a2, OS_LOG_TYPE_ERROR, "Error when fetching me contact: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)contactsForPredicate:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_23E3EA000, v0, v1, "Error when fetching contact for predicate %@: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_dictContactForParticipant:(NSObject *)a3 contactCache:.cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = [a1 objectForKeyedSubscript:@"displayName"];
  OUTLINED_FUNCTION_0();
  v8 = a2;
  _os_log_debug_impl(&dword_23E3EA000, a3, OS_LOG_TYPE_DEBUG, "Re-using cached contact dictionary: %@ for id: %@", v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end