@interface NanoCalendarPreferences
+ (NSUserDefaults)mobileCalDefaults;
+ (id)_calendarsThatAreVisible:(BOOL)a3 source:(id)a4;
+ (id)_selectedCalendarsFromAllCalendars:(id)a3 deselectedCalendarIdentifier:(id)a4 deselectedCalendarSyncIdentifiers:(id)a5 deselectedCalendarSyncHashes:(id)a6;
+ (id)appDefaults;
+ (id)calendarSyncIdentifiersFrom:(id)a3;
+ (id)currentSelectedCalendarsForEventStore:(id)a3 filteredForFocus:(BOOL)a4;
+ (id)hiddenCalendarsInSource:(id)a3;
+ (id)overlayCalendarLocaleDisplayNames;
+ (id)overlayCalendarLocaleIDs;
+ (id)sharedPreferences;
+ (id)visibleCalendarsInSource:(id)a3;
- (BOOL)chineseOverlayCalendarIsEnabled;
- (BOOL)overlayCalendarIsEnabled;
- (NSArray)customDeselectedCalendarHashes;
- (NSString)customOverlayCalendarID;
- (NanoCalendarPreferences)init;
- (double)defaultEventDurationInSeconds;
- (id)customDeselectedCalendarSyncIdentifiers;
- (id)lastSuspendTime;
- (id)lastViewedDate;
- (id)overlayCalendar;
- (id)overlayCalendarID;
- (void)_handleDidUnpair;
- (void)_handlePairedDeviceChanged;
- (void)_startObserving;
- (void)_stopObserving;
- (void)_updateOverlayCalendarCache;
- (void)dealloc;
- (void)setCustomDeselectedCalendarHashes:(id)a3;
- (void)setCustomDeselectedCalendarIdentifiers:(id)a3;
- (void)setOverlayCalendarID:(id)a3 deviceHasCompanion:(BOOL)a4;
@end

@implementation NanoCalendarPreferences

+ (id)sharedPreferences
{
  if (qword_27F18 != -1)
  {
    sub_12E34();
  }

  v3 = qword_27F10;

  return v3;
}

- (NanoCalendarPreferences)init
{
  v9.receiver = self;
  v9.super_class = NanoCalendarPreferences;
  v2 = [(NanoCalendarPreferences *)&v9 init];
  if (v2)
  {
    v3 = objc_opt_new();
    npsManager = v2->_npsManager;
    v2->_npsManager = v3;

    v5 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.mobilecal"];
    domainAccessor = v2->_domainAccessor;
    v2->_domainAccessor = v5;

    v7 = +[EKPreferences shared];
    [(NanoCalendarPreferences *)v2 _startObserving];
  }

  return v2;
}

- (void)dealloc
{
  [(NanoCalendarPreferences *)self _stopObserving];
  v3.receiver = self;
  v3.super_class = NanoCalendarPreferences;
  [(NanoCalendarPreferences *)&v3 dealloc];
}

- (void)_startObserving
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_updateOverlayCalendarCache" name:CUIKPreferencesNotification_OverlayCalendarID object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"_handleDidUnpair" name:NRPairedDeviceRegistryDeviceDidUnpairNotification object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"_handlePairedDeviceChanged" name:NRPairedDeviceRegistryDeviceDidBecomeActive object:0];
}

- (void)_stopObserving
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:CUIKPreferencesNotification_OverlayCalendarID object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:NRPairedDeviceRegistryDeviceDidUnpairNotification object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:NRPairedDeviceRegistryDeviceDidBecomeActive object:0];
}

- (id)lastViewedDate
{
  v3 = [(NPSDomainAccessor *)self->_domainAccessor synchronize];
  domainAccessor = self->_domainAccessor;

  return [(NPSDomainAccessor *)domainAccessor objectForKey:@"LastViewedDate"];
}

- (id)lastSuspendTime
{
  v3 = [(NPSDomainAccessor *)self->_domainAccessor synchronize];
  domainAccessor = self->_domainAccessor;

  return [(NPSDomainAccessor *)domainAccessor objectForKey:@"LastSuspendTime"];
}

- (id)customDeselectedCalendarSyncIdentifiers
{
  v3 = [(NPSDomainAccessor *)self->_domainAccessor synchronize];
  domainAccessor = self->_domainAccessor;

  return [(NPSDomainAccessor *)domainAccessor objectForKey:@"CustomDeselectedCalendarIdentifiers"];
}

- (void)setCustomDeselectedCalendarIdentifiers:(id)a3
{
  v4 = a3;
  v5 = ncs_log_selected_calendars();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543362;
    v14 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "NanoCalendarPreferences: Set Custom Deselected Identifiers = %{public}@", &v13, 0xCu);
  }

  [(NPSDomainAccessor *)self->_domainAccessor setObject:v4 forKey:@"CustomDeselectedCalendarIdentifiers"];
  v6 = [(NPSDomainAccessor *)self->_domainAccessor synchronize];
  npsManager = self->_npsManager;
  v8 = [NSSet setWithObject:@"CustomDeselectedCalendarIdentifiers"];
  [(NPSManager *)npsManager synchronizeNanoDomain:@"com.apple.mobilecal" keys:v8];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, EKPreferences_Notification_DeselectedCalendarSyncHashes, 0, 0, 1u);
  v10 = [NSNotification alloc];
  v11 = [v10 initWithName:EKPreferences_Notification_DeselectedCalendarIdentifiers object:0 userInfo:0];
  v12 = +[NSNotificationCenter defaultCenter];
  [v12 postNotification:v11];
}

- (NSArray)customDeselectedCalendarHashes
{
  v3 = [(NPSDomainAccessor *)self->_domainAccessor synchronize];
  domainAccessor = self->_domainAccessor;

  return [(NPSDomainAccessor *)domainAccessor objectForKey:@"CustomDeselectedCalendarHashes"];
}

- (void)setCustomDeselectedCalendarHashes:(id)a3
{
  v4 = a3;
  v5 = ncs_log_selected_calendars();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "NanoCalendarPreferences: Set Custom Deselected Hashes = %{public}@", &v9, 0xCu);
  }

  [(NPSDomainAccessor *)self->_domainAccessor setObject:v4 forKey:@"CustomDeselectedCalendarHashes"];
  v6 = [(NPSDomainAccessor *)self->_domainAccessor synchronize];
  npsManager = self->_npsManager;
  v8 = [NSSet setWithObject:@"CustomDeselectedCalendarHashes"];
  [(NPSManager *)npsManager synchronizeNanoDomain:@"com.apple.mobilecal" keys:v8];
}

+ (id)calendarSyncIdentifiersFrom:(id)a3
{
  v3 = a3;
  v4 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v3, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * i) selectionSyncIdentifier];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (BOOL)overlayCalendarIsEnabled
{
  v2 = [(NanoCalendarPreferences *)self overlayCalendarID];
  v3 = [v2 isEqualToString:&stru_20EF0] ^ 1;

  return (v2 != 0) & v3;
}

- (id)overlayCalendarID
{
  cachedOverlayCalendarID = self->_cachedOverlayCalendarID;
  if (!cachedOverlayCalendarID)
  {
    [(NanoCalendarPreferences *)self _updateOverlayCalendarCache];
    cachedOverlayCalendarID = self->_cachedOverlayCalendarID;
  }

  return cachedOverlayCalendarID;
}

- (BOOL)chineseOverlayCalendarIsEnabled
{
  v2 = [(NanoCalendarPreferences *)self overlayCalendarID];
  v3 = [v2 isEqualToString:@"chinese"];

  return v3;
}

- (id)overlayCalendar
{
  v2 = +[NanoCalendarPreferences sharedPreferences];
  v3 = [v2 overlayCalendarID];

  v4 = +[CalChronometry activeTimeZone];
  v5 = [CUIKOverlayCalendar overlayCalendarForCalendarIdentifier:v3 timezone:v4];

  return v5;
}

- (NSString)customOverlayCalendarID
{
  v3 = [(NPSDomainAccessor *)self->_domainAccessor synchronize];
  domainAccessor = self->_domainAccessor;

  return [(NPSDomainAccessor *)domainAccessor objectForKey:@"CustomOverlayCalendarID"];
}

- (void)setOverlayCalendarID:(id)a3 deviceHasCompanion:(BOOL)a4
{
  v4 = a4;
  v9 = a3;
  [NanoCalendarPreferences _reportOverlayCalendarID:"_reportOverlayCalendarID:mirroringCompanion:" mirroringCompanion:?];
  if (v4)
  {
    [(NPSDomainAccessor *)self->_domainAccessor setObject:v9 forKey:@"CustomOverlayCalendarID"];
    v6 = [(NPSDomainAccessor *)self->_domainAccessor synchronize];
    npsManager = self->_npsManager;
    v8 = [NSSet setWithObject:@"CustomOverlayCalendarID"];
    [(NPSManager *)npsManager synchronizeNanoDomain:@"com.apple.mobilecal" keys:v8];
  }

  else
  {
    v8 = +[CUIKPreferences sharedPreferences];
    [v8 setOverlayCalendarID:v9];
  }

  [(NanoCalendarPreferences *)self _updateOverlayCalendarCache];
  +[CalWidgetUtils refreshDateWidgets];
}

- (void)_updateOverlayCalendarCache
{
  v3 = [(NanoCalendarPreferences *)self customOverlayCalendarID];

  if (v3)
  {
    v4 = [(NanoCalendarPreferences *)self customOverlayCalendarID];
    cachedOverlayCalendarID = self->_cachedOverlayCalendarID;
    self->_cachedOverlayCalendarID = v4;
  }

  else
  {
    +[CUIKPreferences sharedPreferences];
    v6 = [objc_claimAutoreleasedReturnValue() overlayCalendarID];
    v7 = self->_cachedOverlayCalendarID;
    self->_cachedOverlayCalendarID = v6;
  }

  _objc_release_x1();
}

+ (id)overlayCalendarLocaleIDs
{
  v2 = +[NSLocale currentLocale];
  v3 = [v2 localeIdentifier];
  v4 = [IntlUtility lunarCalendarsForLocaleID:v3];

  v5 = [NSMutableArray arrayWithArray:v4];

  return v5;
}

+ (id)overlayCalendarLocaleDisplayNames
{
  v2 = +[NanoCalendarPreferences overlayCalendarLocaleIDs];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_2E20;
  v5[3] = &unk_20728;
  v3 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v2, "count")}];
  v6 = v3;
  [v2 enumerateObjectsUsingBlock:v5];

  return v3;
}

+ (id)currentSelectedCalendarsForEventStore:(id)a3 filteredForFocus:(BOOL)a4
{
  v4 = a4;
  v5 = [a3 calendarsForEntityType:0];
  if (v4)
  {
    v6 = +[EKPreferences shared];
    v7 = [v6 unselectedCalendarIdentifiersForFocusMode];
  }

  else
  {
    v7 = &__NSArray0__struct;
  }

  v8 = ncs_log_selected_calendars();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v24 = 138543362;
    v25 = v7;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "NanoCalendarPreferences: unselectedCalendarIdentifiersForFocusMode = %{public}@", &v24, 0xCu);
  }

  v9 = [objc_opt_class() sharedPreferences];
  v10 = [v9 customDeselectedCalendarSyncIdentifiers];

  v11 = ncs_log_selected_calendars();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v24 = 138543362;
    v25 = v10;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "NanoCalendarPreferences: customDeselectedCalendarSyncIdentifiers = %{public}@", &v24, 0xCu);
  }

  if (v10)
  {
    goto LABEL_9;
  }

  v13 = [objc_opt_class() sharedPreferences];
  v12 = [v13 customDeselectedCalendarHashes];

  v14 = ncs_log_selected_calendars();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v24 = 138543362;
    v25 = v12;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "NanoCalendarPreferences: customDeselectedCalendarHashes = %{public}@", &v24, 0xCu);
  }

  if (!v12)
  {
    v20 = +[EKPreferences shared];
    v10 = [v20 deselectedCalendarSyncIdentifiers];

    v21 = ncs_log_selected_calendars();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v24 = 138543362;
      v25 = v10;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_INFO, "NanoCalendarPreferences: deselectedCalendarSyncIdentifiers = %{public}@", &v24, 0xCu);
    }

    if (v10)
    {
LABEL_9:
      v12 = 0;
      goto LABEL_14;
    }

    v22 = +[EKPreferences shared];
    v12 = [v22 deselectedCalendarSyncHashes];

    v23 = ncs_log_selected_calendars();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = 138543362;
      v25 = v12;
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_INFO, "NanoCalendarPreferences: deselectedCalendarSyncHashes = %{public}@", &v24, 0xCu);
    }
  }

  v10 = 0;
LABEL_14:
  v15 = [objc_opt_class() _selectedCalendarsFromAllCalendars:v5 deselectedCalendarIdentifier:v7 deselectedCalendarSyncIdentifiers:v10 deselectedCalendarSyncHashes:v12];
  v16 = ncs_log_selected_calendars();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [v5 nanoPrivacyAwareDescriptionForCalendars];
    v18 = [v15 nanoPrivacyAwareDescriptionForCalendars];
    v24 = 138544386;
    v25 = v17;
    v26 = 2114;
    v27 = v18;
    v28 = 2114;
    v29 = v7;
    v30 = 2114;
    v31 = v10;
    v32 = 2114;
    v33 = v12;
    _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "NanoCalendarPreferences: Computed selected calendars (All Calendars = %{public}@; Selected Calendars = %{public}@; Deselected for Focus IDs = %{public}@; Deselected Identifiers = %{public}@);  Deselected Hashes = %{public}@)", &v24, 0x34u);
  }

  return v15;
}

+ (id)_selectedCalendarsFromAllCalendars:(id)a3 deselectedCalendarIdentifier:(id)a4 deselectedCalendarSyncIdentifiers:(id)a5 deselectedCalendarSyncHashes:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v28 = a6;
  v27 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v9 count]);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v12 = v9;
  v13 = [v12 countByEnumeratingWithState:&v30 objects:v42 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v31;
    v26 = v11;
    obj = v12;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v31 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v30 + 1) + 8 * i);
        v18 = [v17 calendarIdentifier];
        v19 = [v17 selectionSyncIdentifier];
        v20 = [v17 syncHash];
        v21 = ncs_log_selected_calendars();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          v22 = [v17 nanoPrivacyAwareDescription];
          *buf = 138544130;
          v35 = v22;
          v36 = 2114;
          v37 = v18;
          v38 = 2114;
          v39 = v20;
          v40 = 2114;
          v41 = v19;
          _os_log_debug_impl(&dword_0, v21, OS_LOG_TYPE_DEBUG, "Calendar: %{public}@, calendarIdentifier: %{public}@, calendarSyncHash: %{public}@, selectionSyncIdentifier: %{public}@", buf, 0x2Au);

          v11 = v26;
        }

        if (([v10 containsObject:v18] & 1) == 0 && (objc_msgSend(v11, "containsObject:", v19) & 1) == 0 && (objc_msgSend(v28, "containsObject:", v20) & 1) == 0)
        {
          [v27 addObject:v17];
        }
      }

      v12 = obj;
      v14 = [obj countByEnumeratingWithState:&v30 objects:v42 count:16];
    }

    while (v14);
  }

  v23 = ncs_log_selected_calendars();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    sub_12E48(a1, v27, v23);
  }

  return v27;
}

+ (id)visibleCalendarsInSource:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() _calendarsThatAreVisible:1 source:v3];

  return v4;
}

+ (id)hiddenCalendarsInSource:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() _calendarsThatAreVisible:0 source:v3];

  return v4;
}

+ (id)_calendarsThatAreVisible:(BOOL)a3 source:(id)a4
{
  v4 = a3;
  v5 = [a4 allCalendars];
  v6 = [objc_opt_class() sharedPreferences];
  v7 = [v6 customDeselectedCalendarSyncIdentifiers];

  v21 = v7;
  v8 = [[NSSet alloc] initWithArray:v7];
  v9 = [v5 allObjects];
  v22 = v5;
  v10 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v5 count]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v24;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v23 + 1) + 8 * i);
        v17 = [v16 selectionSyncIdentifier];
        if (v17)
        {
          if ([v8 containsObject:v17] != v4)
          {
            [v10 addObject:v16];
          }
        }

        else
        {
          v18 = ncs_log_selected_calendars();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = [v16 calendarIdentifier];
            *buf = 138543362;
            v28 = v19;
            _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "Calendar has no sync identifier: %{public}@", buf, 0xCu);
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v13);
  }

  return v10;
}

- (void)_handleDidUnpair
{
  domainAccessor = self->_domainAccessor;
  self->_domainAccessor = 0;
  _objc_release_x1();
}

- (void)_handlePairedDeviceChanged
{
  v3 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.mobilecal"];
  domainAccessor = self->_domainAccessor;
  self->_domainAccessor = v3;

  _objc_release_x1();
}

+ (NSUserDefaults)mobileCalDefaults
{
  if (qword_27F28 != -1)
  {
    sub_12F20();
  }

  v3 = qword_27F20;

  return v3;
}

+ (id)appDefaults
{
  if (qword_27F38 != -1)
  {
    sub_12F34();
  }

  v3 = qword_27F30;

  return v3;
}

- (double)defaultEventDurationInSeconds
{
  v2 = [(NPSDomainAccessor *)self->_domainAccessor objectForKey:@"defaultEventDuration"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 3600.0;
  }

  return v5;
}

@end