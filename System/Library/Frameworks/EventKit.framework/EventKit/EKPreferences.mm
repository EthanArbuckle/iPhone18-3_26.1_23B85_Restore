@interface EKPreferences
+ (id)shared;
- (BOOL)_array:(id)a3 hasSameElementAsArray:(id)a4;
- (EKPreferences)init;
- (EKPreferences)initWithPreferences:(id)a3;
- (NSArray)collapsedSectionIdentifiers;
- (NSArray)customDeselectedCalendarSyncHashes;
- (NSArray)customDeselectedCalendarSyncIdentifiers;
- (NSArray)deselectedCalendarIdentifiers;
- (NSArray)deselectedCalendarSyncHashes;
- (NSArray)deselectedCalendarSyncIdentifiers;
- (NSArray)selectedCalendarIdentifiers;
- (NSArray)unselectedCalendarIdentifiersForFocusMode;
- (NSDictionary)conferenceRoomTypeIdentifiersByMRU;
- (double)travelEngineThrottlePeriod;
- (void)_setDeselectedCalendarIdentifiers:(id)a3;
- (void)_setDeselectedCalendars_iOS:(id)a3;
- (void)setCollapsedSectionIdentifiers:(id)a3;
- (void)setDeselectedCalendars:(id)a3 reason:(id)a4;
- (void)setTravelEngineThrottlePeriod:(double)a3;
- (void)setUnselectedCalendarIdentifiersForFocusMode:(id)a3;
@end

@implementation EKPreferences

+ (id)shared
{
  if (shared_onceToken != -1)
  {
    +[EKPreferences shared];
  }

  v3 = shared_sharedPreferences;

  return v3;
}

- (EKPreferences)init
{
  v3 = objc_alloc(MEMORY[0x1E6993020]);
  v4 = [v3 initWithDomain:*MEMORY[0x1E6993168]];
  v5 = [(EKPreferences *)self initWithPreferences:v4];

  return v5;
}

uint64_t __23__EKPreferences_shared__block_invoke()
{
  shared_sharedPreferences = objc_alloc_init(EKPreferences);

  return MEMORY[0x1EEE66BB8]();
}

- (NSArray)deselectedCalendarIdentifiers
{
  v2 = [(CalPreferences *)self->_preferences getValueForPreference:@"LastDeselectedCalendars" expectedClass:objc_opt_class()];
  if (!v2)
  {
    v2 = MEMORY[0x1E695E0F0];
  }

  return v2;
}

- (NSArray)collapsedSectionIdentifiers
{
  v2 = [(CalPreferences *)self->_preferences getValueForPreference:@"CollapsedSectionIdentifiers" expectedClass:objc_opt_class()];
  if (!v2)
  {
    v2 = MEMORY[0x1E695E0F0];
  }

  return v2;
}

- (NSArray)unselectedCalendarIdentifiersForFocusMode
{
  if (_os_feature_enabled_impl())
  {
    v3 = [(CalPreferences *)self->_preferences getValueForPreference:@"UnselectedCalendarIdentifiersForFocusMode" expectedClass:objc_opt_class()];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (EKPreferences)initWithPreferences:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = EKPreferences;
  v6 = [(EKPreferences *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_preferences, a3);
    [(CalPreferences *)v7->_preferences registerReflectionForPreferenceWithNotificationName:@"com.apple.eventkit.debug.preference.notification.travelEngineThrottlePeriod"];
    [(CalPreferences *)v7->_preferences registerReflectionForPreferenceWithNotificationName:@"com.apple.eventkit.preference.notification.refiringReminderAlarmsEnabled"];
    [(CalPreferences *)v7->_preferences registerReflectionForPreferenceWithNotificationName:@"com.apple.eventkit.preference.notification.deselectedCalendarIdentifiers"];
    [(CalPreferences *)v7->_preferences registerReflectionForPreferenceWithNotificationName:@"com.apple.mobilecal.preference.notification.selectedCalendarSyncHashesChanged"];
    [(CalPreferences *)v7->_preferences registerReflectionForPreferenceWithNotificationName:@"com.apple.eventkit.preference.notification.selectedCalendarIdentifiers"];
    [(CalPreferences *)v7->_preferences registerReflectionForPreferenceWithNotificationName:@"com.apple.mobilecal.showdeclinedchanged"];
    [(CalPreferences *)v7->_preferences registerReflectionForPreferenceWithNotificationName:@"com.apple.eventkit.preference.notification.AlertInviteeDeclines"];
    [(CalPreferences *)v7->_preferences registerReflectionForPreferenceWithNotificationName:@"com.apple.eventkit.preference.notification.UnselectedCalendarIdentifiersForFocusMode"];
  }

  return v7;
}

- (double)travelEngineThrottlePeriod
{
  v2 = [(CalPreferences *)self->_preferences getValueForPreference:@"TravelEngineThrottlePeriod" expectedClass:objc_opt_class()];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 900.0;
  }

  return v5;
}

- (void)setTravelEngineThrottlePeriod:(double)a3
{
  if (a3 >= 0.0)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
    [(CalPreferences *)self->_preferences setValueForPreference:@"TravelEngineThrottlePeriod" value:v6 notificationName:@"com.apple.eventkit.debug.preference.notification.travelEngineThrottlePeriod"];
  }

  else
  {
    v4 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      [(EKPreferences *)v4 setTravelEngineThrottlePeriod:a3];
    }
  }
}

- (void)setCollapsedSectionIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [(CalPreferences *)self->_preferences getValueForPreference:@"CollapsedSectionIdentifiers" expectedClass:objc_opt_class()];
  if ([(EKPreferences *)self _array:v5 hasSameElementAsArray:v4])
  {
    v6 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
    {
      [(EKPreferences *)v6 setCollapsedSectionIdentifiers:v7, v8, v9, v10, v11, v12, v13];
    }
  }

  else
  {
    [(CalPreferences *)self->_preferences setValueForPreference:@"CollapsedSectionIdentifiers" value:v4 notificationName:0];
  }
}

- (void)setDeselectedCalendars:(id)a3 reason:(id)a4
{
  v28 = self;
  v39 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = EKLogHandle;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    *buf = 134218242;
    v36 = [v5 count];
    v37 = 2114;
    v38 = v6;
    _os_log_impl(&dword_1A805E000, v8, OS_LOG_TYPE_DEFAULT, "Saving of %lu invisible calendars commencing: %{public}@", buf, 0x16u);
  }

  v29 = v6;
  v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v10 = v5;
  v11 = [v10 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v31;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v31 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v30 + 1) + 8 * i);
        v16 = [v15 calendarIdentifier];
        v17 = EKLogHandle;
        if (v16)
        {
          if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v36 = v16;
            _os_log_debug_impl(&dword_1A805E000, v17, OS_LOG_TYPE_DEBUG, "Saving calendar identifier [%@] of invisible calendar", buf, 0xCu);
          }

          [v9 addObject:v16];
        }

        else if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v36 = v15;
          _os_log_error_impl(&dword_1A805E000, v17, OS_LOG_TYPE_ERROR, "No calendar identifier found.  Will not be able to save all invisible calendars.  Calendar: [%@]", buf, 0xCu);
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v12);
  }

  [(EKPreferences *)v28 _setDeselectedCalendars_iOS:v10];
  v18 = +[EKPreferences shared];
  [v18 _setDeselectedCalendarIdentifiers:v9];

  v19 = EKLogHandle;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
  {
    [(EKPreferences *)v19 setDeselectedCalendars:v20 reason:v21, v22, v23, v24, v25, v26];
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (void)_setDeselectedCalendars_iOS:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v21 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v23;
    *&v6 = 138412290;
    v19 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        v11 = [v10 calendarIdentifier];
        v12 = [v10 syncHash];
        v13 = EKLogHandle;
        if (v12)
        {
          if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v27 = v12;
            v28 = 2112;
            v29 = v11;
            _os_log_debug_impl(&dword_1A805E000, v13, OS_LOG_TYPE_DEBUG, "Saving sync hash [%@] of invisible calendar with identifier [%@]", buf, 0x16u);
          }

          [v21 addObject:v12];
        }

        else if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = v19;
          v27 = v10;
          _os_log_error_impl(&dword_1A805E000, v13, OS_LOG_TYPE_ERROR, "No calendar sync hash found.  Will not be able to save all calendar sync hashes.  Calendar: [%@]", buf, 0xCu);
        }

        v14 = [v10 selectionSyncIdentifier];
        v15 = EKLogHandle;
        if (v14)
        {
          if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v27 = v14;
            v28 = 2112;
            v29 = v11;
            _os_log_debug_impl(&dword_1A805E000, v15, OS_LOG_TYPE_DEBUG, "Saving sync identifier [%@] of invisible calendar with identifier [%@]", buf, 0x16u);
          }

          [v4 addObject:v14];
        }

        else if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = v19;
          v27 = v10;
          _os_log_error_impl(&dword_1A805E000, v15, OS_LOG_TYPE_ERROR, "No calendar sync identifier found.  Will not be able to save all calendar sync identifiers.  Calendar: [%@]", buf, 0xCu);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v7);
  }

  v16 = +[EKPreferences shared];
  [v16 _setDeselectedCalendarSyncIdentifiers:v4];

  v17 = +[EKPreferences shared];
  [v17 _setDeselectedCalendarSyncHashes:v21];

  v18 = *MEMORY[0x1E69E9840];
}

- (void)_setDeselectedCalendarIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [(CalPreferences *)self->_preferences getValueForPreference:@"LastDeselectedCalendars" expectedClass:objc_opt_class()];
  if ([(EKPreferences *)self _array:v5 hasSameElementAsArray:v4])
  {
    v6 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
    {
      [(EKPreferences *)v6 _setDeselectedCalendarIdentifiers:v7, v8, v9, v10, v11, v12, v13];
    }
  }

  else
  {
    CalAnalyticsSendEvent();
    [(CalPreferences *)self->_preferences setValueForPreference:@"LastDeselectedCalendars" value:v4 notificationName:@"com.apple.eventkit.preference.notification.deselectedCalendarIdentifiers"];
  }
}

- (BOOL)_array:(id)a3 hasSameElementAsArray:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 count];
  if (v7 == [v6 count])
  {
    if ([v5 count])
    {
      v8 = [MEMORY[0x1E695DFD8] setWithArray:v5];
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v9 = v6;
      v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v18;
        while (2)
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v18 != v12)
            {
              objc_enumerationMutation(v9);
            }

            if (![v8 containsObject:{*(*(&v17 + 1) + 8 * i), v17}])
            {
              v14 = 0;
              goto LABEL_14;
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

      v14 = 1;
LABEL_14:
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (NSArray)deselectedCalendarSyncHashes
{
  preferences = self->_preferences;
  v3 = objc_opt_class();

  return [(CalPreferences *)preferences getValueForPreference:@"LastDeselectedCalendarSyncHashes" expectedClass:v3];
}

- (NSArray)deselectedCalendarSyncIdentifiers
{
  preferences = self->_preferences;
  v3 = objc_opt_class();

  return [(CalPreferences *)preferences getValueForPreference:@"LastDeselectedCalendarSyncIdentifiers" expectedClass:v3];
}

- (NSArray)selectedCalendarIdentifiers
{
  preferences = self->_preferences;
  v3 = objc_opt_class();

  return [(CalPreferences *)preferences getValueForPreference:@"LastViewedCalendars" expectedClass:v3];
}

- (NSArray)customDeselectedCalendarSyncIdentifiers
{
  preferences = self->_preferences;
  v3 = objc_opt_class();

  return [(CalPreferences *)preferences getValueForPreference:@"CustomDeselectedCalendarIdentifiers" expectedClass:v3];
}

- (NSArray)customDeselectedCalendarSyncHashes
{
  preferences = self->_preferences;
  v3 = objc_opt_class();

  return [(CalPreferences *)preferences getValueForPreference:@"CustomDeselectedCalendarHashes" expectedClass:v3];
}

- (void)setUnselectedCalendarIdentifiersForFocusMode:(id)a3
{
  v5 = a3;
  if (_os_feature_enabled_impl())
  {
    preferences = self->_preferences;
    if (v5)
    {
      [(CalPreferences *)preferences setValueForPreference:@"UnselectedCalendarIdentifiersForFocusMode" value:v5 notificationName:@"com.apple.eventkit.preference.notification.UnselectedCalendarIdentifiersForFocusMode"];
    }

    else
    {
      [(CalPreferences *)preferences removePreference:@"UnselectedCalendarIdentifiersForFocusMode" notificationName:@"com.apple.eventkit.preference.notification.UnselectedCalendarIdentifiersForFocusMode"];
    }
  }
}

- (NSDictionary)conferenceRoomTypeIdentifiersByMRU
{
  preferences = self->_preferences;
  v3 = objc_opt_class();

  return [(CalPreferences *)preferences getValueForPreference:@"conferenceRoomTypeIdentifiersByMRU" expectedClass:v3];
}

- (void)setTravelEngineThrottlePeriod:(os_log_t)log .cold.1(os_log_t log, double a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = a2;
  _os_log_error_impl(&dword_1A805E000, log, OS_LOG_TYPE_ERROR, "Will not set a travel lookahead interval of less than 0.  Given value: [%f]", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end