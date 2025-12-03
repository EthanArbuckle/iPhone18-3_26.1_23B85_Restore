@interface EKCalendarVisibilityManager
+ (NSArray)deselectedCalendarIdentifiers;
+ (NSArray)unselectedCalendarIdentifiersForFocusMode;
+ (id)_defaultQueue;
+ (id)reminderCalendarInEventStore:(id)store;
+ (id)unselectedCalendarsForFocusModeInEventStore:(id)store;
+ (void)setUnselectedCalendarIdentifiersForFocusMode:(id)mode;
- (EKCalendarVisibilityManager)initWithEventStore:(id)store limitedToSource:(id)source visibilityChangedCallback:(id)callback queue:(id)queue activate:(BOOL)activate;
- (id)_calendarsThatAreVisible:(BOOL)visible filteredByIdentity:(BOOL)identity;
- (id)_deselectedCalendarIdentifiers;
- (void)activate;
- (void)deactivate;
- (void)dealloc;
@end

@implementation EKCalendarVisibilityManager

- (id)_deselectedCalendarIdentifiers
{
  v42 = *MEMORY[0x1E69E9840];
  deselectedCalendarIdentifiers = [objc_opt_class() deselectedCalendarIdentifiers];
  if (deselectedCalendarIdentifiers)
  {
    v4 = deselectedCalendarIdentifiers;
    v5 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      *buf = 134218242;
      v39 = [v4 count];
      v40 = 2112;
      v41 = v4;
      _os_log_impl(&dword_1A805E000, v6, OS_LOG_TYPE_DEFAULT, "Returning [%lu] stored deselectedCalendarIdentifiers: %@", buf, 0x16u);
    }

    v7 = v4;
    v8 = v7;
  }

  else
  {
    v9 = +[EKPreferences shared];
    selectedCalendarIdentifiers = [v9 selectedCalendarIdentifiers];

    v11 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_INFO))
    {
      v12 = v11;
      *buf = 134217984;
      v39 = [selectedCalendarIdentifiers count];
      _os_log_impl(&dword_1A805E000, v12, OS_LOG_TYPE_INFO, "Store contains [%lu] selectedCalendarIdentifiers", buf, 0xCu);
    }

    if (selectedCalendarIdentifiers)
    {
      v32 = selectedCalendarIdentifiers;
      eventStore = [(EKCalendarVisibilityManager *)self eventStore];
      v14 = [eventStore calendarsForEntityType:0];

      v15 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v16 = v14;
      v17 = [v16 countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v34;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v34 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v33 + 1) + 8 * i);
            calendarIdentifier = [v21 calendarIdentifier];
            if (calendarIdentifier)
            {
              [v15 addObject:calendarIdentifier];
            }

            else
            {
              v23 = EKLogHandle;
              if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v39 = v21;
                _os_log_error_impl(&dword_1A805E000, v23, OS_LOG_TYPE_ERROR, "No calendar identifier found.  Will not be able get all deselected calendar identifiers.  Calendar: [%@]", buf, 0xCu);
              }
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v33 objects:v37 count:16];
        }

        while (v18);
      }

      selectedCalendarIdentifiers = v32;
      v24 = [MEMORY[0x1E695DFD8] setWithArray:v32];
      [v15 minusSet:v24];
      allObjects = [v15 allObjects];
      v26 = EKLogHandle;
      if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v27 = v26;
        v28 = [allObjects count];
        *buf = 134218242;
        v39 = v28;
        v40 = 2112;
        v41 = allObjects;
        _os_log_impl(&dword_1A805E000, v27, OS_LOG_TYPE_DEFAULT, "Returning [%lu] computed deselectedCalendarIdentifiers: %@", buf, 0x16u);
      }

      v7 = allObjects;

      v8 = v7;
    }

    else
    {
      v29 = EKLogHandle;
      if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A805E000, v29, OS_LOG_TYPE_DEFAULT, "Returning [0] deselectedCalendarIdentifiers: deselected and selected are nil", buf, 2u);
      }

      v7 = 0;
      v8 = MEMORY[0x1E695E0F0];
    }
  }

  v30 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (NSArray)deselectedCalendarIdentifiers
{
  v2 = +[EKPreferences shared];
  deselectedCalendarIdentifiers = [v2 deselectedCalendarIdentifiers];

  return deselectedCalendarIdentifiers;
}

void __44__EKCalendarVisibilityManager__defaultQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("EKCalendarVisibilityManagerDefaultQ", v2);
  v1 = _defaultQueue_queue;
  _defaultQueue_queue = v0;
}

+ (id)_defaultQueue
{
  if (_defaultQueue_onceToken != -1)
  {
    +[EKCalendarVisibilityManager _defaultQueue];
  }

  v3 = _defaultQueue_queue;

  return v3;
}

+ (NSArray)unselectedCalendarIdentifiersForFocusMode
{
  v2 = +[EKPreferences shared];
  unselectedCalendarIdentifiersForFocusMode = [v2 unselectedCalendarIdentifiersForFocusMode];

  return unselectedCalendarIdentifiersForFocusMode;
}

- (void)dealloc
{
  [(EKCalendarVisibilityManager *)self deactivate];
  v3.receiver = self;
  v3.super_class = EKCalendarVisibilityManager;
  [(EKCalendarVisibilityManager *)&v3 dealloc];
}

- (void)deactivate
{
  [(EKCalendarVisibilityManager *)self setActive:0];
  notificationListener = [(EKCalendarVisibilityManager *)self notificationListener];
  [notificationListener deactivate];
}

- (EKCalendarVisibilityManager)initWithEventStore:(id)store limitedToSource:(id)source visibilityChangedCallback:(id)callback queue:(id)queue activate:(BOOL)activate
{
  activateCopy = activate;
  storeCopy = store;
  sourceCopy = source;
  callbackCopy = callback;
  queueCopy = queue;
  v32.receiver = self;
  v32.super_class = EKCalendarVisibilityManager;
  v17 = [(EKCalendarVisibilityManager *)&v32 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_eventStore, store);
    v19 = _Block_copy(callbackCopy);
    visibilityChangedCallback = v18->_visibilityChangedCallback;
    v18->_visibilityChangedCallback = v19;

    objc_storeStrong(&v18->_limitedToSource, source);
    if (queueCopy)
    {
      if (!callbackCopy)
      {
        goto LABEL_9;
      }
    }

    else
    {
      queueCopy = [objc_opt_class() _defaultQueue];
      if (!callbackCopy)
      {
        goto LABEL_9;
      }
    }

    objc_initWeak(&location, v18);
    v21 = objc_alloc(MEMORY[0x1E6992F60]);
    visibilityChangedNotificationName = [objc_opt_class() visibilityChangedNotificationName];
    v26 = MEMORY[0x1E69E9820];
    v27 = 3221225472;
    v28 = __107__EKCalendarVisibilityManager_initWithEventStore_limitedToSource_visibilityChangedCallback_queue_activate___block_invoke;
    v29 = &unk_1E77FD3F0;
    objc_copyWeak(&v30, &location);
    v23 = [v21 initWithNotificationName:visibilityChangedNotificationName callback:&v26 queue:queueCopy];
    notificationListener = v18->_notificationListener;
    v18->_notificationListener = v23;

    if (activateCopy)
    {
      [(EKCalendarVisibilityManager *)v18 activate:v26];
    }

    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }

LABEL_9:

  return v18;
}

void __107__EKCalendarVisibilityManager_initWithEventStore_limitedToSource_visibilityChangedCallback_queue_activate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained && [WeakRetained active])
  {
    v3 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
    {
      __107__EKCalendarVisibilityManager_initWithEventStore_limitedToSource_visibilityChangedCallback_queue_activate___block_invoke_cold_1(v2, v3);
    }

    v4 = [v2 visibilityChangedCallback];
    v4[2]();
  }
}

- (void)activate
{
  [(EKCalendarVisibilityManager *)self setActive:1];
  notificationListener = [(EKCalendarVisibilityManager *)self notificationListener];
  [notificationListener activate];
}

- (id)_calendarsThatAreVisible:(BOOL)visible filteredByIdentity:(BOOL)identity
{
  visibleCopy = visible;
  v56 = *MEMORY[0x1E69E9840];
  eventStore = [(EKCalendarVisibilityManager *)self eventStore];
  v8 = [eventStore calendarsForEntityType:0];

  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __75__EKCalendarVisibilityManager__calendarsThatAreVisible_filteredByIdentity___block_invoke;
  v39[3] = &unk_1E7800610;
  identityCopy = identity;
  v39[4] = self;
  v9 = [MEMORY[0x1E696AE18] predicateWithBlock:v39];
  v10 = [v8 filteredArrayUsingPredicate:v9];

  _deselectedCalendarIdentifiers = [(EKCalendarVisibilityManager *)self _deselectedCalendarIdentifiers];
  v11 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:_deselectedCalendarIdentifiers];
  v30 = v8;
  v34 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v8, "count")}];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v35 objects:v55 count:16];
  if (!v13)
  {
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v15 = 0;
    goto LABEL_26;
  }

  v14 = v13;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v15 = 0;
  v16 = *v36;
  do
  {
    v17 = 0;
    do
    {
      if (*v36 != v16)
      {
        objc_enumerationMutation(v12);
      }

      v18 = *(*(&v35 + 1) + 8 * v17);
      calendarIdentifier = [v18 calendarIdentifier];
      if (calendarIdentifier)
      {
        if ([v11 containsObject:calendarIdentifier])
        {
          if (visibleCopy)
          {
            goto LABEL_18;
          }
        }

        else if (!visibleCopy)
        {
          goto LABEL_18;
        }

        [v34 addObject:v18];
        if ([v18 isHolidayCalendar])
        {
          ++v15;
        }

        else if ([v18 type] == 5 || objc_msgSend(v18, "isSuggestedEventCalendar"))
        {
          ++v33;
        }

        else if ([v18 type] == 4)
        {
          ++v31;
        }

        else
        {
          ++v32;
        }
      }

      else
      {
        v20 = EKLogHandle;
        if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v42 = v18;
          _os_log_error_impl(&dword_1A805E000, v20, OS_LOG_TYPE_ERROR, "No calendar identifier found.  Will not be able to find all visible calendars.  Calendar: [%@]", buf, 0xCu);
        }
      }

LABEL_18:

      ++v17;
    }

    while (v14 != v17);
    v21 = [v12 countByEnumeratingWithState:&v35 objects:v55 count:16];
    v14 = v21;
  }

  while (v21);
LABEL_26:

  v22 = EKLogHandle;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v23 = v22;
    v24 = [v34 count];
    if (visibleCopy)
    {
      v25 = @"visibleCalendars";
    }

    else
    {
      v25 = @"invisibleCalendars";
    }

    v26 = [v30 count];
    *buf = 134219522;
    v42 = v24;
    v43 = 2112;
    v44 = v25;
    v45 = 2048;
    v46 = v26;
    v47 = 2048;
    v48 = v15;
    v49 = 2048;
    v50 = v33;
    v51 = 2048;
    v52 = v31;
    v53 = 2048;
    v54 = v32;
    _os_log_impl(&dword_1A805E000, v23, OS_LOG_TYPE_DEFAULT, "Returning [%lu] %@ of [%lu] calendars: [%ld] holiday [%ld] suggestion [%ld] birthday [%ld] other", buf, 0x48u);
  }

  v27 = *MEMORY[0x1E69E9840];

  return v34;
}

uint64_t __75__EKCalendarVisibilityManager__calendarsThatAreVisible_filteredByIdentity___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 40) == 1)
  {
    v4 = [*(a1 + 32) limitedToSource];

    v5 = [v3 source];
    v6 = v5;
    if (v4)
    {
      v7 = [v5 externalID];
      v8 = [*(a1 + 32) limitedToSource];
      v9 = [v8 externalID];
      v10 = [v7 isEqualToString:v9];
    }

    else
    {
      v10 = [v5 isDelegate] ^ 1;
    }
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

+ (void)setUnselectedCalendarIdentifiersForFocusMode:(id)mode
{
  modeCopy = mode;
  v4 = +[EKPreferences shared];
  [v4 setUnselectedCalendarIdentifiersForFocusMode:modeCopy];
}

+ (id)unselectedCalendarsForFocusModeInEventStore:(id)store
{
  v17 = *MEMORY[0x1E69E9840];
  storeCopy = store;
  unselectedCalendarIdentifiersForFocusMode = [self unselectedCalendarIdentifiersForFocusMode];
  if (unselectedCalendarIdentifiersForFocusMode)
  {
    v6 = [storeCopy calendarsWithIdentifiers:unselectedCalendarIdentifiersForFocusMode];
    v7 = [MEMORY[0x1E695DFD8] setWithArray:v6];
    v8 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      v13 = 134218242;
      v14 = [v7 count];
      v15 = 2112;
      v16 = unselectedCalendarIdentifiersForFocusMode;
      _os_log_impl(&dword_1A805E000, v9, OS_LOG_TYPE_DEFAULT, "Returning [%lu] unselectedCalendarsForFocusMode: %@", &v13, 0x16u);
    }
  }

  else
  {
    v10 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_1A805E000, v10, OS_LOG_TYPE_DEFAULT, "Returning [0] unselectedCalendarsForFocusMode: nil", &v13, 2u);
    }

    v7 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)reminderCalendarInEventStore:(id)store
{
  v19 = *MEMORY[0x1E69E9840];
  storeCopy = store;
  v4 = [storeCopy calendarsForEntityType:0];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ([v10 type] == 6)
        {
          v11 = v10;

          v7 = v11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v7;
}

void __107__EKCalendarVisibilityManager_initWithEventStore_limitedToSource_visibilityChangedCallback_queue_activate___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1A805E000, a2, OS_LOG_TYPE_DEBUG, "Underlying calendar visibility preferences changed.  Notifying client of [%@]", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end