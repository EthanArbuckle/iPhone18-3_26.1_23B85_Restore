@interface NanoCalendarPreferences
+ (NSUserDefaults)mobileCalDefaults;
+ (id)_calendarsThatAreVisible:(BOOL)visible source:(id)source;
+ (id)_selectedCalendarsFromAllCalendars:(id)calendars deselectedCalendarIdentifier:(id)identifier deselectedCalendarSyncIdentifiers:(id)identifiers deselectedCalendarSyncHashes:(id)hashes;
+ (id)appDefaults;
+ (id)calendarSyncIdentifiersFrom:(id)from;
+ (id)currentSelectedCalendarsForEventStore:(id)store filteredForFocus:(BOOL)focus;
+ (id)hiddenCalendarsInSource:(id)source;
+ (id)overlayCalendarLocaleDisplayNames;
+ (id)overlayCalendarLocaleIDs;
+ (id)sharedPreferences;
+ (id)visibleCalendarsInSource:(id)source;
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
- (void)setCustomDeselectedCalendarHashes:(id)hashes;
- (void)setCustomDeselectedCalendarIdentifiers:(id)identifiers;
- (void)setOverlayCalendarID:(id)d deviceHasCompanion:(BOOL)companion;
@end

@implementation NanoCalendarPreferences

+ (id)sharedPreferences
{
  if (qword_10BE0 != -1)
  {
    sub_531C();
  }

  v3 = qword_10BD8;

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
  synchronize = [(NPSDomainAccessor *)self->_domainAccessor synchronize];
  domainAccessor = self->_domainAccessor;

  return [(NPSDomainAccessor *)domainAccessor objectForKey:@"LastViewedDate"];
}

- (id)lastSuspendTime
{
  synchronize = [(NPSDomainAccessor *)self->_domainAccessor synchronize];
  domainAccessor = self->_domainAccessor;

  return [(NPSDomainAccessor *)domainAccessor objectForKey:@"LastSuspendTime"];
}

- (id)customDeselectedCalendarSyncIdentifiers
{
  synchronize = [(NPSDomainAccessor *)self->_domainAccessor synchronize];
  domainAccessor = self->_domainAccessor;

  return [(NPSDomainAccessor *)domainAccessor objectForKey:@"CustomDeselectedCalendarIdentifiers"];
}

- (void)setCustomDeselectedCalendarIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = ncs_log_selected_calendars();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543362;
    v14 = identifiersCopy;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "NanoCalendarPreferences: Set Custom Deselected Identifiers = %{public}@", &v13, 0xCu);
  }

  [(NPSDomainAccessor *)self->_domainAccessor setObject:identifiersCopy forKey:@"CustomDeselectedCalendarIdentifiers"];
  synchronize = [(NPSDomainAccessor *)self->_domainAccessor synchronize];
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
  synchronize = [(NPSDomainAccessor *)self->_domainAccessor synchronize];
  domainAccessor = self->_domainAccessor;

  return [(NPSDomainAccessor *)domainAccessor objectForKey:@"CustomDeselectedCalendarHashes"];
}

- (void)setCustomDeselectedCalendarHashes:(id)hashes
{
  hashesCopy = hashes;
  v5 = ncs_log_selected_calendars();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = hashesCopy;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "NanoCalendarPreferences: Set Custom Deselected Hashes = %{public}@", &v9, 0xCu);
  }

  [(NPSDomainAccessor *)self->_domainAccessor setObject:hashesCopy forKey:@"CustomDeselectedCalendarHashes"];
  synchronize = [(NPSDomainAccessor *)self->_domainAccessor synchronize];
  npsManager = self->_npsManager;
  v8 = [NSSet setWithObject:@"CustomDeselectedCalendarHashes"];
  [(NPSManager *)npsManager synchronizeNanoDomain:@"com.apple.mobilecal" keys:v8];
}

+ (id)calendarSyncIdentifiersFrom:(id)from
{
  fromCopy = from;
  v4 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(fromCopy, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = fromCopy;
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

        selectionSyncIdentifier = [*(*(&v12 + 1) + 8 * i) selectionSyncIdentifier];
        [v4 addObject:selectionSyncIdentifier];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (BOOL)overlayCalendarIsEnabled
{
  overlayCalendarID = [(NanoCalendarPreferences *)self overlayCalendarID];
  v3 = [overlayCalendarID isEqualToString:&stru_C820] ^ 1;

  return (overlayCalendarID != 0) & v3;
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
  overlayCalendarID = [(NanoCalendarPreferences *)self overlayCalendarID];
  v3 = [overlayCalendarID isEqualToString:@"chinese"];

  return v3;
}

- (id)overlayCalendar
{
  v2 = +[NanoCalendarPreferences sharedPreferences];
  overlayCalendarID = [v2 overlayCalendarID];

  v4 = +[CalChronometry activeTimeZone];
  v5 = [CUIKOverlayCalendar overlayCalendarForCalendarIdentifier:overlayCalendarID timezone:v4];

  return v5;
}

- (NSString)customOverlayCalendarID
{
  synchronize = [(NPSDomainAccessor *)self->_domainAccessor synchronize];
  domainAccessor = self->_domainAccessor;

  return [(NPSDomainAccessor *)domainAccessor objectForKey:@"CustomOverlayCalendarID"];
}

- (void)setOverlayCalendarID:(id)d deviceHasCompanion:(BOOL)companion
{
  companionCopy = companion;
  dCopy = d;
  [NanoCalendarPreferences _reportOverlayCalendarID:"_reportOverlayCalendarID:mirroringCompanion:" mirroringCompanion:?];
  if (companionCopy)
  {
    [(NPSDomainAccessor *)self->_domainAccessor setObject:dCopy forKey:@"CustomOverlayCalendarID"];
    synchronize = [(NPSDomainAccessor *)self->_domainAccessor synchronize];
    npsManager = self->_npsManager;
    v8 = [NSSet setWithObject:@"CustomOverlayCalendarID"];
    [(NPSManager *)npsManager synchronizeNanoDomain:@"com.apple.mobilecal" keys:v8];
  }

  else
  {
    v8 = +[CUIKPreferences sharedPreferences];
    [v8 setOverlayCalendarID:dCopy];
  }

  [(NanoCalendarPreferences *)self _updateOverlayCalendarCache];
  +[CalWidgetUtils refreshDateWidgets];
}

- (void)_updateOverlayCalendarCache
{
  customOverlayCalendarID = [(NanoCalendarPreferences *)self customOverlayCalendarID];

  if (customOverlayCalendarID)
  {
    customOverlayCalendarID2 = [(NanoCalendarPreferences *)self customOverlayCalendarID];
    cachedOverlayCalendarID = self->_cachedOverlayCalendarID;
    self->_cachedOverlayCalendarID = customOverlayCalendarID2;
  }

  else
  {
    +[CUIKPreferences sharedPreferences];
    overlayCalendarID = [objc_claimAutoreleasedReturnValue() overlayCalendarID];
    v7 = self->_cachedOverlayCalendarID;
    self->_cachedOverlayCalendarID = overlayCalendarID;
  }

  _objc_release_x1();
}

+ (id)overlayCalendarLocaleIDs
{
  v2 = +[NSLocale currentLocale];
  localeIdentifier = [v2 localeIdentifier];
  v4 = [IntlUtility lunarCalendarsForLocaleID:localeIdentifier];

  v5 = [NSMutableArray arrayWithArray:v4];

  return v5;
}

+ (id)overlayCalendarLocaleDisplayNames
{
  v2 = +[NanoCalendarPreferences overlayCalendarLocaleIDs];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1FA8;
  v5[3] = &unk_C310;
  v3 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v2, "count")}];
  v6 = v3;
  [v2 enumerateObjectsUsingBlock:v5];

  return v3;
}

+ (id)currentSelectedCalendarsForEventStore:(id)store filteredForFocus:(BOOL)focus
{
  focusCopy = focus;
  v5 = [store calendarsForEntityType:0];
  if (focusCopy)
  {
    v6 = +[EKPreferences shared];
    unselectedCalendarIdentifiersForFocusMode = [v6 unselectedCalendarIdentifiersForFocusMode];
  }

  else
  {
    unselectedCalendarIdentifiersForFocusMode = &__NSArray0__struct;
  }

  v8 = ncs_log_selected_calendars();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v24 = 138543362;
    v25 = unselectedCalendarIdentifiersForFocusMode;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "NanoCalendarPreferences: unselectedCalendarIdentifiersForFocusMode = %{public}@", &v24, 0xCu);
  }

  sharedPreferences = [objc_opt_class() sharedPreferences];
  customDeselectedCalendarSyncIdentifiers = [sharedPreferences customDeselectedCalendarSyncIdentifiers];

  v11 = ncs_log_selected_calendars();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v24 = 138543362;
    v25 = customDeselectedCalendarSyncIdentifiers;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "NanoCalendarPreferences: customDeselectedCalendarSyncIdentifiers = %{public}@", &v24, 0xCu);
  }

  if (customDeselectedCalendarSyncIdentifiers)
  {
    goto LABEL_9;
  }

  sharedPreferences2 = [objc_opt_class() sharedPreferences];
  customDeselectedCalendarHashes = [sharedPreferences2 customDeselectedCalendarHashes];

  v14 = ncs_log_selected_calendars();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v24 = 138543362;
    v25 = customDeselectedCalendarHashes;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "NanoCalendarPreferences: customDeselectedCalendarHashes = %{public}@", &v24, 0xCu);
  }

  if (!customDeselectedCalendarHashes)
  {
    v20 = +[EKPreferences shared];
    customDeselectedCalendarSyncIdentifiers = [v20 deselectedCalendarSyncIdentifiers];

    v21 = ncs_log_selected_calendars();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v24 = 138543362;
      v25 = customDeselectedCalendarSyncIdentifiers;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_INFO, "NanoCalendarPreferences: deselectedCalendarSyncIdentifiers = %{public}@", &v24, 0xCu);
    }

    if (customDeselectedCalendarSyncIdentifiers)
    {
LABEL_9:
      customDeselectedCalendarHashes = 0;
      goto LABEL_14;
    }

    v22 = +[EKPreferences shared];
    customDeselectedCalendarHashes = [v22 deselectedCalendarSyncHashes];

    v23 = ncs_log_selected_calendars();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = 138543362;
      v25 = customDeselectedCalendarHashes;
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_INFO, "NanoCalendarPreferences: deselectedCalendarSyncHashes = %{public}@", &v24, 0xCu);
    }
  }

  customDeselectedCalendarSyncIdentifiers = 0;
LABEL_14:
  v15 = [objc_opt_class() _selectedCalendarsFromAllCalendars:v5 deselectedCalendarIdentifier:unselectedCalendarIdentifiersForFocusMode deselectedCalendarSyncIdentifiers:customDeselectedCalendarSyncIdentifiers deselectedCalendarSyncHashes:customDeselectedCalendarHashes];
  v16 = ncs_log_selected_calendars();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    nanoPrivacyAwareDescriptionForCalendars = [v5 nanoPrivacyAwareDescriptionForCalendars];
    nanoPrivacyAwareDescriptionForCalendars2 = [v15 nanoPrivacyAwareDescriptionForCalendars];
    v24 = 138544386;
    v25 = nanoPrivacyAwareDescriptionForCalendars;
    v26 = 2114;
    v27 = nanoPrivacyAwareDescriptionForCalendars2;
    v28 = 2114;
    v29 = unselectedCalendarIdentifiersForFocusMode;
    v30 = 2114;
    v31 = customDeselectedCalendarSyncIdentifiers;
    v32 = 2114;
    v33 = customDeselectedCalendarHashes;
    _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "NanoCalendarPreferences: Computed selected calendars (All Calendars = %{public}@; Selected Calendars = %{public}@; Deselected for Focus IDs = %{public}@; Deselected Identifiers = %{public}@);  Deselected Hashes = %{public}@)", &v24, 0x34u);
  }

  return v15;
}

+ (id)_selectedCalendarsFromAllCalendars:(id)calendars deselectedCalendarIdentifier:(id)identifier deselectedCalendarSyncIdentifiers:(id)identifiers deselectedCalendarSyncHashes:(id)hashes
{
  calendarsCopy = calendars;
  identifierCopy = identifier;
  identifiersCopy = identifiers;
  hashesCopy = hashes;
  v27 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [calendarsCopy count]);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v12 = calendarsCopy;
  v13 = [v12 countByEnumeratingWithState:&v30 objects:v42 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v31;
    v26 = identifiersCopy;
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
        calendarIdentifier = [v17 calendarIdentifier];
        selectionSyncIdentifier = [v17 selectionSyncIdentifier];
        syncHash = [v17 syncHash];
        v21 = ncs_log_selected_calendars();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          nanoPrivacyAwareDescription = [v17 nanoPrivacyAwareDescription];
          *buf = 138544130;
          v35 = nanoPrivacyAwareDescription;
          v36 = 2114;
          v37 = calendarIdentifier;
          v38 = 2114;
          v39 = syncHash;
          v40 = 2114;
          v41 = selectionSyncIdentifier;
          _os_log_debug_impl(&dword_0, v21, OS_LOG_TYPE_DEBUG, "Calendar: %{public}@, calendarIdentifier: %{public}@, calendarSyncHash: %{public}@, selectionSyncIdentifier: %{public}@", buf, 0x2Au);

          identifiersCopy = v26;
        }

        if (([identifierCopy containsObject:calendarIdentifier] & 1) == 0 && (objc_msgSend(identifiersCopy, "containsObject:", selectionSyncIdentifier) & 1) == 0 && (objc_msgSend(hashesCopy, "containsObject:", syncHash) & 1) == 0)
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
    sub_5330(self, v27, v23);
  }

  return v27;
}

+ (id)visibleCalendarsInSource:(id)source
{
  sourceCopy = source;
  v4 = [objc_opt_class() _calendarsThatAreVisible:1 source:sourceCopy];

  return v4;
}

+ (id)hiddenCalendarsInSource:(id)source
{
  sourceCopy = source;
  v4 = [objc_opt_class() _calendarsThatAreVisible:0 source:sourceCopy];

  return v4;
}

+ (id)_calendarsThatAreVisible:(BOOL)visible source:(id)source
{
  visibleCopy = visible;
  allCalendars = [source allCalendars];
  sharedPreferences = [objc_opt_class() sharedPreferences];
  customDeselectedCalendarSyncIdentifiers = [sharedPreferences customDeselectedCalendarSyncIdentifiers];

  v21 = customDeselectedCalendarSyncIdentifiers;
  v8 = [[NSSet alloc] initWithArray:customDeselectedCalendarSyncIdentifiers];
  allObjects = [allCalendars allObjects];
  v22 = allCalendars;
  v10 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [allCalendars count]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = allObjects;
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
        selectionSyncIdentifier = [v16 selectionSyncIdentifier];
        if (selectionSyncIdentifier)
        {
          if ([v8 containsObject:selectionSyncIdentifier] != visibleCopy)
          {
            [v10 addObject:v16];
          }
        }

        else
        {
          v18 = ncs_log_selected_calendars();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            calendarIdentifier = [v16 calendarIdentifier];
            *buf = 138543362;
            v28 = calendarIdentifier;
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
  if (qword_10BF0 != -1)
  {
    sub_5408();
  }

  v3 = qword_10BE8;

  return v3;
}

+ (id)appDefaults
{
  if (qword_10C00 != -1)
  {
    sub_541C();
  }

  v3 = qword_10BF8;

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