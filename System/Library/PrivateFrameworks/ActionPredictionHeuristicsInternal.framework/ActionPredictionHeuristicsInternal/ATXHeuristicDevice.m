@interface ATXHeuristicDevice
+ (MTAlarmManager)sharedAlarmManager;
- (ATXHeuristicDevice)initWithLocationManager:(id)a3;
- (EKEventStore)eventStore;
- (NSDate)now;
- (id)_calendarVisibilityManager;
- (id)_contactForPredicate:(id)a3;
- (id)_contactKeysToFetch;
- (id)_dictContactForIdentifier:(id)a3;
- (id)_dictContactForParticipant:(id)a3 contactCache:(id)a4;
- (id)_dictForAttachment:(id)a3;
- (id)_dictForEvent:(id)a3 contactCache:(id)a4;
- (id)_unwrap:(id)a3;
- (id)_wrap:(id)a3;
- (id)contactForParticipant:(id)a3;
- (id)contactStore;
- (id)contactsForPredicate:(id)a3;
- (id)dictContactForCNContact:(id)a3;
- (id)dictForEvent:(id)a3 contactCache:(id)a4;
- (id)meContact;
- (id)organizerContactWithEvent:(id)a3;
- (id)resolveContact:(id)a3;
- (id)visibleCalendarsInCurrentFocus;
- (id)visibleCalendarsRegardlessOfFocus;
- (id)wrap:(id)a3;
- (void)accessFavoriteContacts:(id)a3;
- (void)dealloc;
- (void)meContact;
- (void)setNow:(id)a3;
@end

@implementation ATXHeuristicDevice

- (ATXHeuristicDevice)initWithLocationManager:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ATXHeuristicDevice;
  v6 = [(ATXHeuristicDevice *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_locationManager, a3);
  }

  return v7;
}

- (void)dealloc
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = objc_autoreleasePoolPush();
  favoriteContactsLazy = v2->_favoriteContactsLazy;
  v2->_favoriteContactsLazy = 0;

  objc_autoreleasePoolPop(v3);
  objc_sync_exit(v2);

  v5.receiver = v2;
  v5.super_class = ATXHeuristicDevice;
  [(ATXHeuristicDevice *)&v5 dealloc];
}

- (EKEventStore)eventStore
{
  v2 = self;
  objc_sync_enter(v2);
  eventStore = v2->_eventStore;
  if (!eventStore)
  {
    v4 = [objc_alloc(MEMORY[0x277CC5A40]) initWithEKOptions:128];
    v5 = v2->_eventStore;
    v2->_eventStore = v4;

    eventStore = v2->_eventStore;
  }

  v6 = eventStore;
  objc_sync_exit(v2);

  return v6;
}

- (id)_calendarVisibilityManager
{
  if (_calendarVisibilityManager_onceToken != -1)
  {
    [ATXHeuristicDevice _calendarVisibilityManager];
  }

  v3 = objc_alloc(MEMORY[0x277CC59F0]);
  v4 = [(ATXHeuristicDevice *)self eventStore];
  v5 = [v3 initWithEventStore:v4 limitedToSource:0 visibilityChangedCallback:0 queue:0];

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
  v2 = [(ATXHeuristicDevice *)self _calendarVisibilityManager];
  v3 = [v2 visibleCalendars];

  return v3;
}

- (id)visibleCalendarsInCurrentFocus
{
  v3 = [MEMORY[0x277CC59F0] unselectedCalendarIdentifiersForFocusMode];
  v4 = [(ATXHeuristicDevice *)self visibleCalendarsRegardlessOfFocus];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__ATXHeuristicDevice_visibleCalendarsInCurrentFocus__block_invoke;
  v8[3] = &unk_278C3CB68;
  v9 = v3;
  v5 = v3;
  v6 = [v4 _pas_filteredArrayWithTest:v8];

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
    v3 = [(ATXHeuristicDevice *)self contactStore];
    v4 = [(ATXHeuristicDevice *)self _contactKeysToFetch];
    v11 = 0;
    v5 = [v3 _crossPlatformUnifiedMeContactWithKeysToFetch:v4 error:&v11];
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
  v2 = self;
  objc_sync_enter(v2);
  contactStoreLazy = v2->_contactStoreLazy;
  if (!contactStoreLazy)
  {
    v4 = objc_opt_new();
    v5 = v2->_contactStoreLazy;
    v2->_contactStoreLazy = v4;

    contactStoreLazy = v2->_contactStoreLazy;
  }

  v6 = contactStoreLazy;
  objc_sync_exit(v2);

  return v6;
}

- (void)accessFavoriteContacts:(id)a3
{
  v11 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = v11;
  favoriteContactsLazy = v4->_favoriteContactsLazy;
  if (!favoriteContactsLazy)
  {
    v7 = objc_alloc(MEMORY[0x277CBDAF8]);
    v8 = [(ATXHeuristicDevice *)v4 contactStore];
    v9 = [v7 initWithContactStore:v8];
    v10 = v4->_favoriteContactsLazy;
    v4->_favoriteContactsLazy = v9;

    favoriteContactsLazy = v4->_favoriteContactsLazy;
    v5 = v11;
  }

  v5[2](v5, favoriteContactsLazy);
  objc_sync_exit(v4);
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

- (void)setNow:(id)a3
{
  v4 = [a3 copy];
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

- (id)contactsForPredicate:(id)a3
{
  v4 = a3;
  v5 = [(ATXHeuristicDevice *)self contactStore];
  v6 = [(ATXHeuristicDevice *)self _contactKeysToFetch];
  v12 = 0;
  v7 = [v5 unifiedContactsMatchingPredicate:v4 keysToFetch:v6 error:&v12];
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

- (id)resolveContact:(id)a3
{
  v19[4] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBDA78];
  v5 = a3;
  v6 = [v4 descriptorForRequiredKeysForStyle:0];
  v7 = *MEMORY[0x277CBD160];
  v19[0] = v6;
  v19[1] = v7;
  v8 = *MEMORY[0x277CBCFC0];
  v19[2] = *MEMORY[0x277CBD098];
  v19[3] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:4];

  v10 = objc_alloc(MEMORY[0x277D3A088]);
  v11 = [(ATXHeuristicDevice *)self contactStore];
  v12 = [v10 initWithContactStore:v11 keysToFetch:v9];

  v13 = [v12 contactWithIdentifier:v5];

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

- (id)organizerContactWithEvent:(id)a3
{
  v4 = [a3 organizer];
  v5 = [(ATXHeuristicDevice *)self contactForParticipant:v4];

  return v5;
}

- (id)contactForParticipant:(id)a3
{
  v22[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBDA78];
  v5 = a3;
  v6 = [v4 descriptorForRequiredKeysForStyle:0];
  v7 = [v5 contactPredicate];

  v8 = [(ATXHeuristicDevice *)self contactStore];
  v22[0] = v6;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v17 = 0;
  v10 = [v8 unifiedContactsMatchingPredicate:v7 keysToFetch:v9 error:&v17];
  v11 = v17;

  if (v11)
  {
    v12 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ATXHeuristicDevice contactsForPredicate:];
    }

LABEL_10:

    v12 = 0;
    goto LABEL_11;
  }

  v12 = [v10 firstObject];
  v13 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v19 = v10;
    v20 = 2112;
    v21 = v7;
    _os_log_impl(&dword_23E3EA000, v13, OS_LOG_TYPE_DEFAULT, "contacts: %@ found with predicate:%@", buf, 0x16u);
  }

  if ([v12 contactType])
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

  return v12;
}

- (id)_contactForPredicate:(id)a3
{
  v3 = [(ATXHeuristicDevice *)self contactsForPredicate:a3];
  v4 = [v3 firstObject];

  return v4;
}

- (id)dictContactForCNContact:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBDA78] stringFromContact:v4 style:1000];
  v6 = [MEMORY[0x277CBDA78] stringFromContact:v4 style:0];
  if ([v5 length] && objc_msgSend(v6, "length"))
  {
    v7 = objc_opt_new();
    [v7 setObject:v4 forKeyedSubscript:@"CNContact"];
    v8 = [v4 identifier];
    [v7 setObject:v8 forKeyedSubscript:@"identifier"];

    v9 = MEMORY[0x277CCABB0];
    v10 = [v4 identifier];
    v11 = [(ATXHeuristicDevice *)self meContact];
    v12 = [v11 identifier];
    v13 = [v9 numberWithBool:{objc_msgSend(v10, "isEqualToString:", v12)}];
    [v7 setObject:v13 forKeyedSubscript:@"isMeContact"];

    [v7 setObject:v5 forKeyedSubscript:@"displayName"];
    [v7 setObject:v6 forKeyedSubscript:@"fullName"];
    v14 = [v4 givenName];
    [v7 setObject:v14 forKeyedSubscript:@"givenName"];

    v15 = [v4 familyName];
    [v7 setObject:v15 forKeyedSubscript:@"familyName"];

    v16 = [v4 emailAddresses];
    v17 = [v16 count];

    if (v17)
    {
      v18 = objc_opt_new();
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v19 = [v4 emailAddresses];
      v20 = [v19 countByEnumeratingWithState:&v28 objects:v32 count:16];
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
              objc_enumerationMutation(v19);
            }

            v24 = [*(*(&v28 + 1) + 8 * i) value];
            [v18 addObject:v24];
          }

          v21 = [v19 countByEnumeratingWithState:&v28 objects:v32 count:16];
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
      v38 = v4;
      _os_log_error_impl(&dword_23E3EA000, v7, OS_LOG_TYPE_ERROR, "Failed to get shortName/fullName: %@/%@ from contact: %@", buf, 0x20u);
    }

    v25 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

- (id)_dictContactForIdentifier:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBDA58];
  v13 = a3;
  v5 = MEMORY[0x277CBEA60];
  v6 = a3;
  v7 = [v5 arrayWithObjects:&v13 count:1];
  v8 = [v4 predicateForContactsWithIdentifiers:{v7, v13, v14}];

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

- (id)_dictContactForParticipant:(id)a3 contactCache:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 URL];
  if (!v8)
  {
    v10 = 0;
    goto LABEL_31;
  }

  v9 = [v7 objectForKey:v8];
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

      v14 = [v6 participantRole];
      if (v14 > 4)
      {
        v15 = 0;
      }

      else
      {
        v15 = off_278C3CBB0[v14];
      }

      [v12 setObject:v15 forKeyedSubscript:@"role"];
      v22 = [v6 participantType];
      if (v22 > 4)
      {
        v23 = 0;
      }

      else
      {
        v23 = off_278C3CBD8[v22];
      }

      [v12 setObject:v23 forKeyedSubscript:@"type"];
      v24 = [v6 participantStatus];
      if (v24 > 7)
      {
        v25 = 0;
      }

      else
      {
        v25 = off_278C3CC00[v24];
      }

      [v12 setObject:v25 forKeyedSubscript:@"status"];
      v26 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v6, "isCurrentUser")}];
      [v12 setObject:v26 forKeyedSubscript:@"isCurrentUser"];

      v27 = [(ATXHeuristicDevice *)self wrap:v6];
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

    v16 = [v6 contactPredicate];
    v13 = [(ATXHeuristicDevice *)self _contactForPredicate:v16];

    if (v13)
    {
      v17 = [(ATXHeuristicDevice *)self dictContactForCNContact:v13];
      v12 = [v17 mutableCopy];

      if (v12)
      {
        v18 = [v12 objectForKeyedSubscript:@"displayName"];

        if (!v18)
        {
          v19 = [v6 name];
          [v12 setObject:v19 forKeyedSubscript:@"displayName"];
        }

        v20 = [v12 objectForKeyedSubscript:@"displayName"];

        if (v20)
        {
          v21 = [v12 copy];
          [v7 setObject:v21 forKey:v8];

          goto LABEL_8;
        }
      }
    }

    else
    {
      v12 = 0;
    }

    v28 = objc_opt_new();
    [v7 setObject:v28 forKey:v8];

    goto LABEL_28;
  }

  v10 = 0;
LABEL_30:

LABEL_31:

  return v10;
}

- (id)_dictForAttachment:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [v4 URL];
  [v5 setObject:v6 forKeyedSubscript:@"URL"];

  v7 = [v4 fileName];
  [v5 setObject:v7 forKeyedSubscript:@"fileName"];

  v8 = [v4 fileSize];
  [v5 setObject:v8 forKeyedSubscript:@"fileSize"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v4, "isBinary")}];
  [v5 setObject:v9 forKeyedSubscript:@"isBinary"];

  v10 = [v4 fileFormat];
  [v5 setObject:v10 forKeyedSubscript:@"fileFormat"];

  v11 = [(ATXHeuristicDevice *)self wrap:v4];

  [v5 setObject:v11 forKeyedSubscript:@"EKAttachment"];
  v12 = [v5 copy];

  return v12;
}

- (id)dictForEvent:(id)a3 contactCache:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (_EventDictionaryLRUCache_onceToken != -1)
  {
    [ATXHeuristicDevice dictForEvent:contactCache:];
  }

  v8 = _EventDictionaryLRUCache_cache;
  v9 = self;
  objc_sync_enter(v9);
  v10 = [v6 eventIdentifier];
  if (v10)
  {
    v11 = [v8 objectForKey:v10];
    if (v11)
    {
      v12 = __atxlog_handle_heuristic();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v20 = 136315394;
        v21 = "[ATXHeuristicDevice dictForEvent:contactCache:]";
        v22 = 2112;
        v23 = v10;
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
        v23 = v10;
        _os_log_impl(&dword_23E3EA000, v15, OS_LOG_TYPE_INFO, "%s: Cache miss for ekEvent.eventIdentifier: %@", &v20, 0x16u);
      }

      v13 = [(ATXHeuristicDevice *)v9 _dictForEvent:v6 contactCache:v7];
      if (v13)
      {
        [v8 setObject:v13 forKey:v10];
        v16 = v13;
      }

      else
      {
        v17 = objc_opt_new();
        [v8 setObject:v17 forKey:v10];
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

    v13 = [(ATXHeuristicDevice *)v9 _dictForEvent:v6 contactCache:v7];
  }

  objc_sync_exit(v9);
  v18 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)_dictForEvent:(id)a3 contactCache:(id)a4
{
  v132 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  if ([v6 junkStatus] == 1 || objc_msgSend(v6, "junkStatus") == 3)
  {
    v9 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v6 junkStatus];
      v11 = [v6 eventIdentifier];
      *buf = 134218242;
      v129 = v10;
      v130 = 2112;
      v131 = v11;
      _os_log_impl(&dword_23E3EA000, v9, OS_LOG_TYPE_DEFAULT, "Ignore event: junkStatus [%lu], id %@", buf, 0x16u);
    }

LABEL_5:
    v12 = 0;
    goto LABEL_6;
  }

  if ([v6 status] == 3)
  {
    v9 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v6 eventIdentifier];
      *buf = 138412290;
      v129 = v15;
      _os_log_impl(&dword_23E3EA000, v9, OS_LOG_TYPE_DEFAULT, "Ignore event: Cancelled, id %@", buf, 0xCu);
    }

    goto LABEL_5;
  }

  v111 = v8;
  v110 = objc_opt_new();
  v16 = [v6 organizer];
  v17 = objc_opt_new();
  v123[0] = MEMORY[0x277D85DD0];
  v123[1] = 3221225472;
  v123[2] = __49__ATXHeuristicDevice__dictForEvent_contactCache___block_invoke;
  v123[3] = &unk_278C3CB90;
  v123[4] = self;
  v112 = v7;
  v124 = v7;
  v113 = v17;
  v125 = v113;
  v18 = MEMORY[0x23EF0A350](v123);
  v109 = v16;
  v18[2](v18, v16);
  v19 = [v6 attendees];
  v114 = v6;
  v20 = [v6 attendees];
  v21 = [v20 count];

  if (v21 >= 5)
  {
    v22 = 5;
  }

  else
  {
    v22 = v21;
  }

  v23 = [v19 subarrayWithRange:{0, v22}];

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

  v6 = v114;
  v31 = [v114 selfAttendee];

  if (v31 && ([v114 selfAttendee], v32 = objc_claimAutoreleasedReturnValue(), v33 = objc_msgSend(v32, "participantStatus"), v32, v33 != 2))
  {
    v34 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v68 = [v114 selfAttendee];
      v69 = [v68 participantStatus];
      v70 = [v114 eventIdentifier];
      *buf = 134218242;
      v129 = v69;
      v130 = 2112;
      v131 = v70;
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
    v35 = [v114 attachments];
    v36 = [v35 countByEnumeratingWithState:&v115 objects:v126 count:16];
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
            objc_enumerationMutation(v35);
          }

          v40 = *(*(&v115 + 1) + 8 * j);
          v41 = objc_autoreleasePoolPush();
          v42 = [(ATXHeuristicDevice *)self _dictForAttachment:v40];
          [v34 addObject:v42];

          objc_autoreleasePoolPop(v41);
        }

        v37 = [v35 countByEnumeratingWithState:&v115 objects:v126 count:16];
      }

      while (v37);
    }

    v6 = v114;
    v43 = [v114 title];
    v9 = v110;
    [v110 setObject:v43 forKeyedSubscript:@"eventTitle"];

    v44 = [v114 creationDate];
    if (v44)
    {
      v45 = MEMORY[0x277CCABB0];
      v46 = v110;
      [v44 timeIntervalSinceReferenceDate];
      v47 = [v45 numberWithDouble:?];
      [v46 setObject:v47 forKeyedSubscript:@"creationDateTimestamp"];
    }

    v48 = [v114 lastModifiedDate];
    if (v48)
    {
      v49 = MEMORY[0x277CCABB0];
      v50 = v110;
      [v48 timeIntervalSinceReferenceDate];
      v51 = [v49 numberWithDouble:?];
      [v50 setObject:v51 forKeyedSubscript:@"modifiedDateTimestamp"];
    }

    v52 = [v114 startDate];
    if (v52)
    {
      v53 = MEMORY[0x277CCABB0];
      v54 = v110;
      [v52 timeIntervalSinceReferenceDate];
      v55 = [v53 numberWithDouble:?];
      [v54 setObject:v55 forKeyedSubscript:@"startDateTimestamp"];
    }

    v56 = [v114 endDate];
    if (v56)
    {
      v57 = MEMORY[0x277CCABB0];
      v58 = v110;
      [v56 timeIntervalSinceReferenceDate];
      v59 = [v57 numberWithDouble:?];
      [v58 setObject:v59 forKeyedSubscript:@"endDateTimestamp"];
    }

    v60 = [v114 startTimeZone];
    v61 = [v60 name];
    [v110 setObject:v61 forKeyedSubscript:@"startTimeZoneName"];

    v62 = [v114 endTimeZone];
    v63 = [v62 name];
    [v110 setObject:v63 forKeyedSubscript:@"endTimeZoneName"];

    v64 = objc_autoreleasePoolPush();
    v108 = [v114 virtualConference];
    v107 = [v108 joinMethods];
    v65 = [v107 firstObject];
    v66 = [v65 URL];
    v67 = [v66 absoluteString];
    if (v67)
    {
      [v110 setObject:v67 forKeyedSubscript:@"conferenceURL"];
    }

    else
    {
      v105 = [v114 conferenceURLForDisplay];
      [v105 absoluteString];
      v71 = v106 = v64;
      [v110 setObject:v71 forKeyedSubscript:@"conferenceURL"];

      v64 = v106;
    }

    objc_autoreleasePoolPop(v64);
    [v110 setObject:v113 forKeyedSubscript:@"contacts"];
    v72 = [v114 externalURL];
    v73 = [v72 absoluteString];
    [v110 setObject:v73 forKeyedSubscript:@"externalURL"];

    v74 = MEMORY[0x277CCABB0];
    [v114 travelTime];
    v75 = [v74 numberWithDouble:?];
    [v110 setObject:v75 forKeyedSubscript:@"travelTime"];

    v76 = [v114 notes];
    [v110 setObject:v76 forKeyedSubscript:@"notes"];

    v77 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v114, "isAllDay")}];
    [v110 setObject:v77 forKeyedSubscript:@"isAllDay"];

    v78 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v114, "hasRecurrenceRules")}];
    [v110 setObject:v78 forKeyedSubscript:@"hasRecurrenceRules"];

    v79 = [v34 copy];
    [v110 setObject:v79 forKeyedSubscript:@"attachments"];

    v80 = [(ATXHeuristicDevice *)self wrap:v114];
    [v110 setObject:v80 forKeyedSubscript:@"EKEvent"];

    v81 = [v114 eventIdentifier];
    [v110 setObject:v81 forKeyedSubscript:@"eventIdentifier"];

    v82 = [v114 uniqueID];
    [v110 setObject:v82 forKeyedSubscript:@"uniqueID"];

    v83 = [v114 preferredLocationWithoutPrediction];
    if (v83)
    {
      v84 = objc_opt_new();
      v85 = [v83 title];

      if (v85)
      {
        v86 = [v83 title];
        [v84 setObject:v86 forKeyedSubscript:@"title"];
      }

      v87 = [v83 address];

      if (v87)
      {
        v88 = [v83 address];
        [v84 setObject:v88 forKeyedSubscript:@"address"];
      }

      if ([v84 count])
      {
        [v110 setObject:v84 forKeyedSubscript:@"structuredLocation"];
      }
    }

    v89 = [v114 suggestionInfo];

    if (v89)
    {
      v90 = [v114 suggestionInfo];
      v91 = [v90 uniqueKey];
      [v110 setObject:v91 forKeyedSubscript:@"suggestionsInfoUniqueKey"];

      v92 = [v114 customObjectForKey:@"SGEventMetadataKey"];
      if (v92)
      {
        [v110 setObject:v92 forKeyedSubscript:@"sgEventMetadata"];
      }
    }

    v93 = MEMORY[0x277CCABB0];
    v94 = [v114 calendar];
    v95 = [v93 numberWithBool:{objc_msgSend(v94, "isNaturalLanguageSuggestedEventCalendar")}];
    [v110 setObject:v95 forKeyedSubscript:@"nlEventCalendar"];

    v96 = [v114 calendar];
    v97 = [v96 calendarIdentifier];
    [v110 setObject:v97 forKeyedSubscript:@"calendarID"];

    v98 = [v114 localCustomObjectForKey:@"EKEventNaturalLanguageSuggestedEventExpirationDate"];
    if (v98)
    {
      v99 = MEMORY[0x277CCABB0];
      v100 = v110;
      [v98 timeIntervalSinceReferenceDate];
      v101 = [v99 numberWithDouble:?];
      [v100 setObject:v101 forKeyedSubscript:@"nlEventExpirationTime"];
    }

    v102 = [v114 birthdayContactIdentifier];

    if (v102)
    {
      v103 = [v114 birthdayContactIdentifier];
      v104 = [(ATXHeuristicDevice *)self _dictContactForIdentifier:v103];
      [v110 setObject:v104 forKeyedSubscript:@"birthdayContact"];
    }

    v12 = [v110 copy];

    v8 = v111;
  }

  v7 = v112;
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

- (id)_wrap:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v4];
  v6 = self;
  objc_sync_enter(v6);
  wrappedObjects = v6->_wrappedObjects;
  if (!wrappedObjects)
  {
    v8 = objc_opt_new();
    v9 = v6->_wrappedObjects;
    v6->_wrappedObjects = v8;

    wrappedObjects = v6->_wrappedObjects;
  }

  [(NSMutableDictionary *)wrappedObjects setObject:v4 forKeyedSubscript:v5];
  objc_sync_exit(v6);

  return v5;
}

- (id)_unwrap:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)v5->_wrappedObjects objectForKeyedSubscript:v4];
  objc_sync_exit(v5);

  return v6;
}

- (id)wrap:(id)a3
{
  v4 = a3;
  v5 = [[ATXHeuristicObjectHandle alloc] initWithDevice:self wrapping:v4];

  return v5;
}

- (void)meContact
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
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