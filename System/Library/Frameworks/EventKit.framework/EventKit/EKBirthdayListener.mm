@interface EKBirthdayListener
+ (BOOL)areBirthdaysEnabled;
+ (id)sharedListener;
- (id)allContactsWithBirthdays;
- (id)birthdayCalendarsCreateIfNeeded:(BOOL)needed inStore:(id)store originalIdentifier:(id)identifier originalAlarms:(id)alarms ignoreAlarms:(BOOL)ignoreAlarms;
- (id)birthdayCalendarsInStore:(id)store;
- (id)eventStoreProviderWithReset:(BOOL)reset;
- (id)initSingleton;
- (void)_insertEventsForContact:(id)contact intoCalendar:(id)calendar inStore:(id)store;
- (void)_localeChanged;
- (void)_performUpdateWithContext:(id)context;
- (void)_start;
- (void)addBirthdayCalendars;
- (void)checkForFailures;
- (void)contactsInserted:(id)inserted updated:(id)updated deleted:(id)deleted;
- (void)disableBirthdayCalendars;
- (void)disableBirthdayCalendarsInStore:(id)store;
- (void)incrementalUpdateWithContext:(id)context;
- (void)insertEventWithContact:(id)contact forDateComponents:(id)components intoCalendar:(id)calendar inStore:(id)store;
- (void)reset;
- (void)resetAllBirthdaysInStore:(id)store;
- (void)start;
- (void)stop;
@end

@implementation EKBirthdayListener

+ (id)sharedListener
{
  if (sharedListener_onceToken != -1)
  {
    +[EKBirthdayListener sharedListener];
  }

  v3 = sharedListener_listener;

  return v3;
}

uint64_t __36__EKBirthdayListener_sharedListener__block_invoke()
{
  sharedListener_listener = [[EKBirthdayListener alloc] initSingleton];

  return MEMORY[0x1EEE66BB8]();
}

- (id)initSingleton
{
  v15.receiver = self;
  v15.super_class = EKBirthdayListener;
  v2 = [(EKBirthdayListener *)&v15 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_UTILITY, 0);

    v5 = dispatch_queue_create("EKBirthdayListener", v4);
    updateJobQueue = v2->_updateJobQueue;
    v2->_updateJobQueue = v5;

    v7 = objc_alloc(MEMORY[0x1E6992F08]);
    v8 = v2->_updateJobQueue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __35__EKBirthdayListener_initSingleton__block_invoke;
    v12[3] = &unk_1E77FE500;
    objc_copyWeak(&v13, &location);
    v9 = [v7 initWithQueue:v8 andBlock:v12];
    updateQueue = v2->_updateQueue;
    v2->_updateQueue = v9;

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __35__EKBirthdayListener_initSingleton__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    if ((WeakRetained[33] & 1) == 0)
    {
      [WeakRetained _performUpdateWithContext:v4];
    }
  }

  else if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    __35__EKBirthdayListener_initSingleton__block_invoke_cold_1();
  }
}

- (void)_performUpdateWithContext:(id)context
{
  v16 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  if ((_os_feature_enabled_impl() & 1) == 0 && (_os_feature_enabled_impl() & 1) == 0)
  {
    v5 = +[EKBirthdayListener areBirthdaysEnabled];
    selfCopy = self;
    objc_sync_enter(selfCopy);
    needsReset = selfCopy->_needsReset;
    selfCopy->_needsReset = 0;
    objc_sync_exit(selfCopy);

    v8 = [(EKBirthdayListener *)selfCopy eventStoreWithReset:needsReset];
    if (v5)
    {
      if (needsReset || (-[EKBirthdayListener birthdayCalendarsInStore:](selfCopy, "birthdayCalendarsInStore:", v8), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 count], v9, v10 != 1))
      {
        [(EKBirthdayListener *)selfCopy resetAllBirthdaysInStore:v8];
      }

      else
      {
        [(EKBirthdayListener *)selfCopy incrementalUpdateWithContext:contextCopy];
      }
    }

    else
    {
      [(EKBirthdayListener *)selfCopy disableBirthdayCalendarsInStore:v8];
      v11 = EKLogHandle;
      if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v13[0] = 67109376;
        v13[1] = needsReset;
        v14 = 1024;
        v15 = 0;
        _os_log_impl(&dword_1A805E000, v11, OS_LOG_TYPE_DEFAULT, "Not updating birthday events -- need reset? [%{BOOL}d] birthdays enabled? [%{BOOL}d]", v13, 0xEu);
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)start
{
  if ((_os_feature_enabled_impl() & 1) == 0 && (_os_feature_enabled_impl() & 1) == 0)
  {

    [(EKBirthdayListener *)self _start];
  }
}

- (void)_start
{
  v28 = *MEMORY[0x1E69E9840];
  updateJobQueue = self->_updateJobQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__EKBirthdayListener__start__block_invoke;
  block[3] = &unk_1E77FD418;
  block[4] = self;
  dispatch_sync(updateJobQueue, block);
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__localeChanged name:*MEMORY[0x1E695D8F0] object:0];

  mEMORY[0x1E6992F80] = [MEMORY[0x1E6992F80] shared];
  v6 = [mEMORY[0x1E6992F80] objectForKey:@"BirthdayEventsGenerationLastLocale"];

  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];
  v9 = [v6 isEqualToString:localeIdentifier];

  if ((v9 & 1) == 0)
  {
    mEMORY[0x1E6992F80]2 = [MEMORY[0x1E6992F80] shared];
    currentLocale2 = [MEMORY[0x1E695DF58] currentLocale];
    localeIdentifier2 = [currentLocale2 localeIdentifier];
    [mEMORY[0x1E6992F80]2 setObject:localeIdentifier2 forKey:@"BirthdayEventsGenerationLastLocale"];

    v13 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v14 = MEMORY[0x1E695DF58];
      v15 = v13;
      currentLocale3 = [v14 currentLocale];
      localeIdentifier3 = [currentLocale3 localeIdentifier];
      *buf = 138412546;
      v25 = v6;
      v26 = 2112;
      v27 = localeIdentifier3;
      _os_log_impl(&dword_1A805E000, v15, OS_LOG_TYPE_DEFAULT, "BirthdayEventsGenerationLocale (%@) does not match current (%@). Forcing regeneration.", buf, 0x16u);
    }

    selfCopy = self;
    objc_sync_enter(selfCopy);
    selfCopy->_needsReset = 1;
    objc_sync_exit(selfCopy);
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  needsReset = selfCopy2->_needsReset;
  objc_sync_exit(selfCopy2);

  if (!needsReset)
  {
    [(EKBirthdayListener *)selfCopy2 checkForFailures];
  }

  [(CalAccumulatingQueue *)selfCopy2->_updateQueue updateTagsAndExecuteBlock:0 withContext:&unk_1F1B6B260];
  defaultProvider = [MEMORY[0x1E6992F50] defaultProvider];
  [defaultProvider registerForContactChangeNotifications:selfCopy2];

  v22 = *MEMORY[0x1E69E9840];
}

void __28__EKBirthdayListener__start__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 33) = 0;
  v2 = [*(a1 + 32) eventStore];
  v3 = [v2 birthdayCalendarVersion];
  if (v3 != 13)
  {
    v4 = v3;
    [v2 setBirthdayCalendarVersion:13];
    v5 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v8[0] = 67109376;
      v8[1] = v4;
      v9 = 1024;
      v10 = 13;
      _os_log_impl(&dword_1A805E000, v5, OS_LOG_TYPE_DEFAULT, "birthdayCalendarVersion (%d) does not match current version (%d). Forcing regeneration.", v8, 0xEu);
    }

    v6 = *(a1 + 32);
    objc_sync_enter(v6);
    *(*(a1 + 32) + 32) = 1;
    objc_sync_exit(v6);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)stop
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  defaultProvider = [MEMORY[0x1E6992F50] defaultProvider];
  [defaultProvider deregisterForContactChangeNotifications:self];

  updateJobQueue = self->_updateJobQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__EKBirthdayListener_stop__block_invoke;
  block[3] = &unk_1E77FD418;
  block[4] = self;
  dispatch_sync(updateJobQueue, block);
}

- (void)checkForFailures
{
  mEMORY[0x1E6992F80] = [MEMORY[0x1E6992F80] shared];
  v4 = [mEMORY[0x1E6992F80] objectForKey:@"BirthdayEventsGenerationLastAttemptTimeResetKey"];

  if (v4)
  {
    mEMORY[0x1E6992F80]2 = [MEMORY[0x1E6992F80] shared];
    v6 = [mEMORY[0x1E6992F80]2 integerForKey:@"BirthdayEventsGenerationAttemptsToResetKey"];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __38__EKBirthdayListener_checkForFailures__block_invoke;
    v10[3] = &unk_1E77FE528;
    v11 = v4;
    selfCopy = self;
    v7 = _Block_copy(v10);
    v8 = v7;
    if ((v6 - 1) > 2)
    {
      v9 = 84600;
    }

    else
    {
      v9 = qword_1A81C3C80[v6 - 1];
    }

    (*(v7 + 2))(v7, v9);
  }
}

void __38__EKBirthdayListener_checkForFailures__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E695DF00] date];
  [v4 timeIntervalSinceDate:*(a1 + 32)];
  v6 = v3 - v5;

  if (v6 >= 0.0)
  {
    v7 = dispatch_time(0, (v6 * 1000000000.0));
    v8 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __38__EKBirthdayListener_checkForFailures__block_invoke_2;
    block[3] = &unk_1E77FD418;
    block[4] = *(a1 + 40);
    dispatch_after(v7, v8, block);
  }

  else
  {
    *(*(a1 + 40) + 32) = 1;
  }
}

- (id)eventStoreProviderWithReset:(BOOL)reset
{
  resetCopy = reset;
  dispatch_assert_queue_V2(self->_updateJobQueue);
  eventStoreProvider = self->_eventStoreProvider;
  if (eventStoreProvider)
  {
    v6 = !resetCopy;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    v7 = [[EKEphemeralCacheEventStoreProvider alloc] initWithCreationBlock:&__block_literal_global_47];
    v8 = self->_eventStoreProvider;
    self->_eventStoreProvider = v7;

    eventStoreProvider = self->_eventStoreProvider;
  }

  return eventStoreProvider;
}

EKEventStore *__50__EKBirthdayListener_eventStoreProviderWithReset___block_invoke()
{
  v0 = [[EKEventStore alloc] initWithBirthdayCalendarModifications];

  return v0;
}

+ (BOOL)areBirthdaysEnabled
{
  mEMORY[0x1E6992F80] = [MEMORY[0x1E6992F80] shared];
  v3 = [mEMORY[0x1E6992F80] BOOLForKey:*MEMORY[0x1E6992E90]];

  return v3;
}

- (void)addBirthdayCalendars
{
  mEMORY[0x1E6992F80] = [MEMORY[0x1E6992F80] shared];
  [mEMORY[0x1E6992F80] setBool:1 forKey:*MEMORY[0x1E6992E90]];
  [(CalAccumulatingQueue *)self->_updateQueue updateTagsAndExecuteBlock:0 withContext:&unk_1F1B6B288];
}

- (void)_localeChanged
{
  v22 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E6992F80] = [MEMORY[0x1E6992F80] shared];
  v4 = [mEMORY[0x1E6992F80] objectForKey:@"BirthdayEventsGenerationLastLocale"];

  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];
  v7 = [v4 isEqualToString:localeIdentifier];

  if (v7)
  {
    v8 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412290;
      v19 = v4;
      _os_log_impl(&dword_1A805E000, v8, OS_LOG_TYPE_DEFAULT, "BirthdayEventsGenerationLocale ignoring locale change because locale identifier has not changed (%@)", &v18, 0xCu);
    }
  }

  else
  {
    mEMORY[0x1E6992F80]2 = [MEMORY[0x1E6992F80] shared];
    currentLocale2 = [MEMORY[0x1E695DF58] currentLocale];
    localeIdentifier2 = [currentLocale2 localeIdentifier];
    [mEMORY[0x1E6992F80]2 setObject:localeIdentifier2 forKey:@"BirthdayEventsGenerationLastLocale"];

    v12 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v13 = MEMORY[0x1E695DF58];
      v14 = v12;
      currentLocale3 = [v13 currentLocale];
      localeIdentifier3 = [currentLocale3 localeIdentifier];
      v18 = 138412546;
      v19 = v4;
      v20 = 2112;
      v21 = localeIdentifier3;
      _os_log_impl(&dword_1A805E000, v14, OS_LOG_TYPE_DEFAULT, "BirthdayEventsGenerationLocale (%@) does not match current (%@). Forcing regeneration.", &v18, 0x16u);
    }

    [(EKBirthdayListener *)self reset];
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (id)birthdayCalendarsInStore:(id)store
{
  v19 = *MEMORY[0x1E69E9840];
  storeCopy = store;
  v4 = objc_opt_new();
  v5 = [storeCopy calendarsForEntityType:0];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ([v10 type] == 4)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v11 = [MEMORY[0x1E695DEC8] arrayWithArray:v4];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)disableBirthdayCalendars
{
  mEMORY[0x1E6992F80] = [MEMORY[0x1E6992F80] shared];
  [mEMORY[0x1E6992F80] setBool:0 forKey:*MEMORY[0x1E6992E90]];
  if ((_os_feature_enabled_impl() & 1) == 0 && (_os_feature_enabled_impl() & 1) == 0)
  {
    updateJobQueue = self->_updateJobQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__EKBirthdayListener_disableBirthdayCalendars__block_invoke;
    block[3] = &unk_1E77FD418;
    block[4] = self;
    dispatch_sync(updateJobQueue, block);
  }
}

void __46__EKBirthdayListener_disableBirthdayCalendars__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 eventStore];
  [v1 disableBirthdayCalendarsInStore:v2];
}

- (void)disableBirthdayCalendarsInStore:(id)store
{
  v31 = *MEMORY[0x1E69E9840];
  storeCopy = store;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = [(EKBirthdayListener *)self birthdayCalendarsInStore:storeCopy];
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = 0;
    v10 = *v23;
    *&v7 = 138412546;
    v19 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        v12 = v9;
        if (*v23 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        v21 = v9;
        v14 = [storeCopy removeCalendar:v13 commit:0 error:{&v21, v19}];
        v9 = v21;

        if ((v14 & 1) == 0)
        {
          v15 = EKLogHandle;
          if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
          {
            *buf = v19;
            v27 = v13;
            v28 = 2112;
            v29 = v9;
            _os_log_error_impl(&dword_1A805E000, v15, OS_LOG_TYPE_ERROR, "EKBirthdayListener unable to delete birthday calendar %@, %@", buf, 0x16u);
          }
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v20 = v9;
  v16 = [storeCopy commitWithRollback:&v20];
  v17 = v20;

  if ((v16 & 1) == 0 && os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    [EKBirthdayListener disableBirthdayCalendarsInStore:];
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (id)birthdayCalendarsCreateIfNeeded:(BOOL)needed inStore:(id)store originalIdentifier:(id)identifier originalAlarms:(id)alarms ignoreAlarms:(BOOL)ignoreAlarms
{
  neededCopy = needed;
  v27[1] = *MEMORY[0x1E69E9840];
  storeCopy = store;
  identifierCopy = identifier;
  v12 = [(EKBirthdayListener *)self birthdayCalendarsInStore:storeCopy];
  v13 = v12;
  if (!neededCopy || [v12 count])
  {
    v14 = v13;
    goto LABEL_4;
  }

  v17 = EKLogHandle;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A805E000, v17, OS_LOG_TYPE_DEFAULT, "Creating Birthday Calendar", buf, 2u);
  }

  v18 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v25 = 0;
  v19 = [storeCopy localBirthdayCalendarCreateIfNeededWithError:&v25];
  v20 = v25;
  if (identifierCopy)
  {
    [v19 setCalendarIdentifier:identifierCopy];
  }

  v21 = [v18 localizedStringForKey:@"Birthdays" value:@"Birthdays" table:0];
  [v19 setTitle:v21];

  v24 = v20;
  v22 = [storeCopy saveCalendar:v19 commit:1 error:&v24];
  v23 = v24;

  if ((v22 & 1) == 0 && os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    [EKBirthdayListener birthdayCalendarsCreateIfNeeded:inStore:originalIdentifier:originalAlarms:ignoreAlarms:];
    if (v19)
    {
      goto LABEL_14;
    }

LABEL_16:
    v14 = MEMORY[0x1E695E0F0];
    goto LABEL_17;
  }

  if (!v19)
  {
    goto LABEL_16;
  }

LABEL_14:
  v27[0] = v19;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
LABEL_17:

LABEL_4:
  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)allContactsWithBirthdays
{
  defaultProvider = [MEMORY[0x1E6992F50] defaultProvider];
  contactStore = [defaultProvider contactStore];

  v4 = objc_alloc(MEMORY[0x1E695CD78]);
  calKeys = [MEMORY[0x1E695CD58] CalKeys];
  v6 = [v4 initWithKeysToFetch:calKeys];

  v15 = objc_opt_new();
  v16 = 0;
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __46__EKBirthdayListener_allContactsWithBirthdays__block_invoke;
  v14 = &unk_1E77FE570;
  v7 = v15;
  [contactStore enumerateContactsWithFetchRequest:v6 error:&v16 usingBlock:&v11];
  v8 = v16;
  v9 = [v7 copy];

  return v9;
}

void __46__EKBirthdayListener_allContactsWithBirthdays__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 birthday];
  if (v3)
  {
  }

  else
  {
    v4 = [v5 nonGregorianBirthday];

    if (!v4)
    {
      goto LABEL_5;
    }
  }

  [*(a1 + 32) addObject:v5];
LABEL_5:
}

- (void)insertEventWithContact:(id)contact forDateComponents:(id)components intoCalendar:(id)calendar inStore:(id)store
{
  v45 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  componentsCopy = components;
  calendarCopy = calendar;
  storeCopy = store;
  context = objc_autoreleasePoolPush();
  v39 = storeCopy;
  v13 = [EKEvent eventWithEventStore:storeCopy];
  [v13 setCalendar:calendarCopy];
  v14 = [MEMORY[0x1E695DEE8] CalDateFromBirthdayComponents:componentsCopy];
  calendar = [componentsCopy calendar];
  [v13 setAllDay:1];
  v16 = MEMORY[0x1E6992F50];
  calDisplayName = [contactCopy CalDisplayName];
  calendarIdentifier = [calendar calendarIdentifier];
  v19 = [v16 birthdayStringForContactName:calDisplayName eventDate:0 birthDate:v14 lunarCalendar:calendarIdentifier];

  [v13 setAlarms:0];
  v38 = calendarCopy;
  source = [calendarCopy source];
  defaultAlarmOffset = [source defaultAlarmOffset];

  if (defaultAlarmOffset)
  {
    intValue = [defaultAlarmOffset intValue];
    v23 = [EKAlarm alarmWithRelativeOffset:intValue];
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"relative=%i", intValue];
    [v23 setExternalID:v24];

    [v13 addAlarm:v23];
  }

  v25 = MEMORY[0x1E696AEC0];
  calendarIdentifier2 = [calendar calendarIdentifier];
  identifier = [contactCopy identifier];
  v28 = [v25 stringWithFormat:@"%@/%@", calendarIdentifier2, identifier];
  [v13 setUniqueID:v28];

  [v13 setTitle:v19];
  [v13 setStartDate:v14];
  [v13 setEndDateUnadjustedForLegacyClients:v14];
  v29 = [[EKRecurrenceRule alloc] initRecurrenceWithFrequency:3 interval:1 end:0];
  [v13 addRecurrenceRule:v29];
  [v13 setBirthdayContact:contactCopy];
  calendarIdentifier3 = [calendar calendarIdentifier];
  [v13 setLunarCalendarString:calendarIdentifier3];

  v31 = EKLogHandle;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v32 = v31;
    identifier2 = [contactCopy identifier];
    *buf = 138412546;
    v42 = v19;
    v43 = 2112;
    v44 = identifier2;
    _os_log_impl(&dword_1A805E000, v32, OS_LOG_TYPE_DEFAULT, "EKBirthdayListener inserting birthday for %@ (%@)", buf, 0x16u);
  }

  v40 = 0;
  v34 = [v39 saveEvent:v13 span:1 commit:0 error:&v40];
  v35 = v40;
  if ((v34 & 1) == 0 && os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    [EKBirthdayListener insertEventWithContact:forDateComponents:intoCalendar:inStore:];
  }

  objc_autoreleasePoolPop(context);
  v36 = *MEMORY[0x1E69E9840];
}

- (void)_insertEventsForContact:(id)contact intoCalendar:(id)calendar inStore:(id)store
{
  contactCopy = contact;
  calendarCopy = calendar;
  storeCopy = store;
  birthday = [contactCopy birthday];

  if (birthday)
  {
    birthday2 = [contactCopy birthday];
    [(EKBirthdayListener *)self insertEventWithContact:contactCopy forDateComponents:birthday2 intoCalendar:calendarCopy inStore:storeCopy];
  }

  nonGregorianBirthday = [contactCopy nonGregorianBirthday];

  if (nonGregorianBirthday)
  {
    nonGregorianBirthday2 = [contactCopy nonGregorianBirthday];
    [(EKBirthdayListener *)self insertEventWithContact:contactCopy forDateComponents:nonGregorianBirthday2 intoCalendar:calendarCopy inStore:storeCopy];
  }
}

- (void)resetAllBirthdaysInStore:(id)store
{
  v34 = *MEMORY[0x1E69E9840];
  storeCopy = store;
  mEMORY[0x1E6992F80] = [MEMORY[0x1E6992F80] shared];
  date = [MEMORY[0x1E695DF00] date];
  [mEMORY[0x1E6992F80] setObject:date forKey:@"BirthdayEventsGenerationLastAttemptTimeResetKey"];

  mEMORY[0x1E6992F80]2 = [MEMORY[0x1E6992F80] shared];
  v8 = [mEMORY[0x1E6992F80]2 integerForKey:@"BirthdayEventsGenerationAttemptsToResetKey"];

  mEMORY[0x1E6992F80]3 = [MEMORY[0x1E6992F80] shared];
  [mEMORY[0x1E6992F80]3 setInteger:v8 + 1 forKey:@"BirthdayEventsGenerationAttemptsToResetKey"];

  v10 = EKLogHandle;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A805E000, v10, OS_LOG_TYPE_DEFAULT, "Resetting All Birthdays in Store", buf, 2u);
  }

  v11 = [(EKBirthdayListener *)self birthdayCalendarsInStore:storeCopy];
  if ([v11 count] == 1)
  {
    v12 = [v11 objectAtIndexedSubscript:0];
  }

  else
  {
    v12 = 0;
  }

  calendarIdentifier = [v12 calendarIdentifier];
  [(EKBirthdayListener *)self disableBirthdayCalendarsInStore:storeCopy];
  v14 = [(EKBirthdayListener *)self birthdayCalendarsCreateIfNeeded:1 inStore:storeCopy originalIdentifier:calendarIdentifier originalAlarms:0 ignoreAlarms:0];

  if ([v14 count] == 1)
  {
    v15 = [v14 objectAtIndexedSubscript:0];
    allContactsWithBirthdays = [(EKBirthdayListener *)self allContactsWithBirthdays];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v17 = [allContactsWithBirthdays countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v29;
      do
      {
        v20 = 0;
        do
        {
          if (*v29 != v19)
          {
            objc_enumerationMutation(allContactsWithBirthdays);
          }

          [(EKBirthdayListener *)self _insertEventsForContact:*(*(&v28 + 1) + 8 * v20++) intoCalendar:v15 inStore:storeCopy];
        }

        while (v18 != v20);
        v18 = [allContactsWithBirthdays countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v18);
    }

    v27 = 0;
    v21 = [storeCopy commitWithRollback:&v27];
    v22 = v27;
    if ((v21 & 1) == 0 && os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      [EKBirthdayListener resetAllBirthdaysInStore:];
    }

    mEMORY[0x1E6992F80]4 = [MEMORY[0x1E6992F80] shared];
    [mEMORY[0x1E6992F80]4 setObject:0 forKey:@"BirthdayEventsGenerationLastAttemptTimeResetKey"];

    mEMORY[0x1E6992F80]5 = [MEMORY[0x1E6992F80] shared];
    [mEMORY[0x1E6992F80]5 setInteger:0 forKey:@"BirthdayEventsGenerationAttemptsToResetKey"];
  }

  else
  {
    v25 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      [(EKBirthdayListener *)v25 resetAllBirthdaysInStore:v14];
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (void)incrementalUpdateWithContext:(id)context
{
  v51 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v5 = [contextCopy objectForKeyedSubscript:@"inserts"];
  v6 = [contextCopy objectForKeyedSubscript:@"updates"];
  v7 = [contextCopy objectForKeyedSubscript:@"deletes"];
  if ([v5 count] || objc_msgSend(v6, "count") || objc_msgSend(v7, "count"))
  {
    v8 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      *buf = 134218496;
      v46 = [v5 count];
      v47 = 2048;
      v48 = [v6 count];
      v49 = 2048;
      v50 = [v7 count];
      _os_log_impl(&dword_1A805E000, v9, OS_LOG_TYPE_DEFAULT, "EKBirthdayListener handling a total of %ld inserted, %ld updated, %ld deleted contacts", buf, 0x20u);
    }

    eventStore = [(EKBirthdayListener *)self eventStore];
    v11 = [(EKBirthdayListener *)self birthdayCalendarsCreateIfNeeded:0 inStore:eventStore originalIdentifier:0 originalAlarms:0 ignoreAlarms:0];
    if ([v11 count])
    {
      v30 = contextCopy;
      v12 = [v11 objectAtIndexedSubscript:0];
      v13 = [v6 valueForKeyPath:@"identifier"];
      v14 = [v5 valueForKey:@"identifier"];
      v32 = v13;
      v15 = [MEMORY[0x1E695DFA8] setWithArray:v13];
      v31 = v14;
      [v15 addObjectsFromArray:v14];
      v33 = v7;
      [v15 addObjectsFromArray:v7];
      v16 = [eventStore predicateForMasterEventsInCalendar:v12];
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __51__EKBirthdayListener_incrementalUpdateWithContext___block_invoke;
      v41[3] = &unk_1E77FE598;
      v28 = v15;
      v42 = v28;
      v17 = eventStore;
      v43 = v17;
      v29 = v16;
      [v17 enumerateEventsMatchingPredicate:v16 usingBlock:v41];
      v34 = v6;
      v35 = v5;
      v18 = [v5 arrayByAddingObjectsFromArray:v6];
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v19 = [v18 countByEnumeratingWithState:&v37 objects:v44 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v38;
        do
        {
          v22 = 0;
          do
          {
            if (*v38 != v21)
            {
              objc_enumerationMutation(v18);
            }

            [(EKBirthdayListener *)self _insertEventsForContact:*(*(&v37 + 1) + 8 * v22++) intoCalendar:v12 inStore:v17];
          }

          while (v20 != v22);
          v20 = [v18 countByEnumeratingWithState:&v37 objects:v44 count:16];
        }

        while (v20);
      }

      v23 = EKLogHandle;
      if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A805E000, v23, OS_LOG_TYPE_DEFAULT, "EKBirthdayListener committing changes", buf, 2u);
      }

      v36 = 0;
      v24 = [v17 commitWithRollback:&v36];
      v25 = v36;
      v6 = v34;
      contextCopy = v30;
      if ((v24 & 1) == 0 && os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
      {
        [EKBirthdayListener resetAllBirthdaysInStore:];
      }

      v5 = v35;
      v7 = v33;
    }

    else if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      [EKBirthdayListener incrementalUpdateWithContext:];
    }
  }

  else
  {
    v27 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A805E000, v27, OS_LOG_TYPE_DEFAULT, "EKBirthdayListener has nothing to do; skipping this update.", buf, 2u);
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

void __51__EKBirthdayListener_incrementalUpdateWithContext___block_invoke(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 birthdayContactIdentifier];
  if (v4 && (v5 = v4, v6 = *(a1 + 32), [v3 birthdayContactIdentifier], v7 = objc_claimAutoreleasedReturnValue(), LODWORD(v6) = objc_msgSend(v6, "containsObject:", v7), v7, v5, v6))
  {
    v8 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      v10 = [v3 title];
      v11 = [v3 birthdayContactIdentifier];
      *buf = 138412546;
      v30 = v10;
      v31 = 2112;
      v32 = v11;
      _os_log_impl(&dword_1A805E000, v9, OS_LOG_TYPE_DEFAULT, "EKBirthdayListener removing birthday for %@ (%@)", buf, 0x16u);
    }

    v12 = *(a1 + 40);
    v28 = 0;
    v13 = [v12 removeEvent:v3 span:4 commit:0 error:&v28];
    v14 = v28;
    if ((v13 & 1) == 0 && os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __51__EKBirthdayListener_incrementalUpdateWithContext___block_invoke_cold_1();
    }
  }

  else
  {
    v15 = [v3 birthdayContactName];

    if (v15)
    {
      v16 = [MEMORY[0x1E6992F50] defaultProvider];
      v17 = [v3 birthdayContactIdentifier];
      v18 = [v16 unifiedContactWithIdentifier:v17];

      if (v18)
      {
        v14 = 0;
      }

      else
      {
        v22 = EKLogHandle;
        if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
        {
          __51__EKBirthdayListener_incrementalUpdateWithContext___block_invoke_cold_2(v22, v3);
        }

        v23 = *(a1 + 40);
        v26 = 0;
        v24 = [v23 removeEvent:v3 span:4 commit:0 error:&v26];
        v14 = v26;
        if ((v24 & 1) == 0 && os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
        {
          __51__EKBirthdayListener_incrementalUpdateWithContext___block_invoke_cold_1();
        }
      }
    }

    else
    {
      v19 = EKLogHandle;
      if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
      {
        __51__EKBirthdayListener_incrementalUpdateWithContext___block_invoke_cold_4(v19, v3);
      }

      v20 = *(a1 + 40);
      v27 = 0;
      v21 = [v20 removeEvent:v3 span:4 commit:0 error:&v27];
      v14 = v27;
      if ((v21 & 1) == 0 && os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
      {
        __51__EKBirthdayListener_incrementalUpdateWithContext___block_invoke_cold_1();
      }
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)contactsInserted:(id)inserted updated:(id)updated deleted:(id)deleted
{
  v24 = *MEMORY[0x1E69E9840];
  insertedCopy = inserted;
  updatedCopy = updated;
  deletedCopy = deleted;
  v11 = EKLogHandle;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    *buf = 134218496;
    v19 = [insertedCopy count];
    v20 = 2048;
    v21 = [updatedCopy count];
    v22 = 2048;
    v23 = [deletedCopy count];
    _os_log_impl(&dword_1A805E000, v12, OS_LOG_TYPE_DEFAULT, "EKBirthdayListener received %ld inserted, %ld updated, %ld deleted contacts", buf, 0x20u);
  }

  updateQueue = self->_updateQueue;
  v16[0] = @"inserts";
  v16[1] = @"updates";
  v17[0] = insertedCopy;
  v17[1] = updatedCopy;
  v16[2] = @"deletes";
  v17[2] = deletedCopy;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];
  [(CalAccumulatingQueue *)updateQueue updateTagsAndExecuteBlock:0 withContext:v14];

  v15 = *MEMORY[0x1E69E9840];
}

- (void)reset
{
  obj = self;
  objc_sync_enter(obj);
  obj->_needsReset = 1;
  [(CalAccumulatingQueue *)obj->_updateQueue updateTagsAndExecuteBlock:0 withContext:&unk_1F1B6B2B0];
  objc_sync_exit(obj);
}

- (void)disableBirthdayCalendarsInStore:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)birthdayCalendarsCreateIfNeeded:inStore:originalIdentifier:originalAlarms:ignoreAlarms:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)insertEventWithContact:forDateComponents:intoCalendar:inStore:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_9(&dword_1A805E000, v0, v1, "EKBirthdayListener unable to save event %@, %@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)resetAllBirthdaysInStore:(void *)a1 .cold.1(void *a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a1;
  [a2 count];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)resetAllBirthdaysInStore:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __51__EKBirthdayListener_incrementalUpdateWithContext___block_invoke_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_9(&dword_1A805E000, v0, v1, "EKBirthdayListener unable to remove event %@ %@");
  v2 = *MEMORY[0x1E69E9840];
}

void __51__EKBirthdayListener_incrementalUpdateWithContext___block_invoke_cold_2(void *a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 title];
  v5 = [a2 birthdayContactIdentifier];
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4_2();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);

  v11 = *MEMORY[0x1E69E9840];
}

void __51__EKBirthdayListener_incrementalUpdateWithContext___block_invoke_cold_4(void *a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 title];
  v5 = [a2 birthdayContactIdentifier];
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4_2();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);

  v11 = *MEMORY[0x1E69E9840];
}

@end