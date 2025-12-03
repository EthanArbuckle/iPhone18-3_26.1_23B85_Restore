@interface NCABSettingsPairedController
+ (id)foundationKeys;
+ (id)peoplePickerKeys;
+ (void)mapFoundationPreferenceKeysAndValues:(id)values toLegacyDomainAccessor:(id)accessor withSyncManager:(id)manager;
- (NCABSettingsPairedController)init;
- (id)_getValueForKey:(id)key inDomainAccessor:(id)accessor;
- (id)contactsSortOrder:(id)order;
- (id)foundationKeysAndValuesUsingDomainAccessor:(BOOL)accessor;
- (id)localizedMirroringDetailFooter;
- (id)localizedPaneTitle;
- (id)mirroredApplicationGroupSpecifiers;
- (id)personNameOrder:(id)order;
- (void)_setValue:(id)value forKey:(id)key inDomainAccessor:(id)accessor syncWithClient:(BOOL)client;
- (void)dealloc;
- (void)setContactsSortOrder:(id)order specifier:(id)specifier;
- (void)setPersonNameOrder:(id)order specifier:(id)specifier;
@end

@implementation NCABSettingsPairedController

- (NCABSettingsPairedController)init
{
  v16.receiver = self;
  v16.super_class = NCABSettingsPairedController;
  v2 = [(NCABSettingsPairedController *)&v16 init];
  if (v2)
  {
    v3 = objc_opt_new();
    syncManager = v2->_syncManager;
    v2->_syncManager = v3;

    v5 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.PeoplePicker"];
    peoplePickerDomainAccessor = v2->_peoplePickerDomainAccessor;
    v2->_peoplePickerDomainAccessor = v5;

    v7 = [NPSDomainAccessor alloc];
    v8 = [v7 initWithDomain:NSPersonNameDefaultNamePreferencesDomain];
    foundationDomainAccessor = v2->_foundationDomainAccessor;
    v2->_foundationDomainAccessor = v8;

    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:v2 selector:"_contactStoreDidChange:" name:CNContactStoreDidChangeNotification object:0];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_1000, NSPersonNamePreferencesDidChangeNotification, 0, CFNotificationSuspensionBehaviorDrop);
    v12 = +[PDRRegistry sharedInstance];
    v13 = [v12 getDevicesExcluding:4];
    firstObject = [v13 firstObject];

    if (firstObject)
    {
      PDRWatchOSVersionForRemoteDevice();
      v2->_activePairedWatchRequiresLegacyKeys = PDRVersionIsGreaterThanOrEqual() ^ 1;
    }
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:CNContactStoreDidChangeNotification object:0];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, NSPersonNamePreferencesDidChangeNotification, 0);
  v5.receiver = self;
  v5.super_class = NCABSettingsPairedController;
  [(NCABSettingsPairedController *)&v5 dealloc];
}

- (id)mirroredApplicationGroupSpecifiers
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [NSDictionary alloc];
  v5 = [v3 pathForResource:@"NanoContactsBridgeSettingsPaired" ofType:@"plist"];
  v6 = [v4 initWithContentsOfFile:v5];

  v18 = v3;
  v7 = SpecifiersFromPlist();
  v8 = [v7 count];
  if (v8 >= 1)
  {
    v9 = NSPersonNameDefaultDisplayNameOrderKey;
    v10 = v8 + 1;
    do
    {
      v11 = [v7 objectAtIndex:v10 - 2];
      identifier = [v11 identifier];
      v13 = [identifier isEqualToString:@"contactsSortOrder"];
      v14 = &OBJC_IVAR___NCABSettingsPairedController__contactsSortOrderSpecifier;
      if ((v13 & 1) != 0 || (v15 = [identifier isEqualToString:v9], v14 = &OBJC_IVAR___NCABSettingsPairedController__personNameOrderSpecifier, v15))
      {
        v16 = *v14;
        objc_storeStrong(&self->BPSNotificationAppController_opaque[v16], v11);
        objc_storeWeak((*&self->BPSNotificationAppController_opaque[v16] + OBJC_IVAR___PSSpecifier_target), self);
      }

      --v10;
    }

    while (v10 > 1);
  }

  return v7;
}

- (id)localizedMirroringDetailFooter
{
  SortOrdering = ABPersonGetSortOrdering();
  v3 = NanoContactsSettingsPairedBundle();
  v4 = v3;
  if (SortOrdering)
  {
    v5 = @"LAST";
  }

  else
  {
    v5 = @"FIRST";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_8450 table:@"NanoContactsBridgeSettingsPaired"];

  if (+[NSPersonNameComponentsFormatter _defaultDisplayNameOrder]== &dword_0 + 1)
  {
    v7 = @"FIRST";
  }

  else
  {
    v7 = @"LAST";
  }

  v8 = NanoContactsSettingsPairedBundle();
  v9 = [v8 localizedStringForKey:v7 value:&stru_8450 table:@"NanoContactsBridgeSettingsPaired"];

  v10 = NanoContactsSettingsPairedBundle();
  v11 = [v10 localizedStringForKey:@"SETTING_DESCRIPTION_LINE_FORMAT_WITH_COLON" value:&stru_8450 table:@"NanoContactsBridgeSettingsPaired"];
  v12 = NanoContactsSettingsPairedBundle();
  v13 = [v12 localizedStringForKey:@"Sort Order" value:&stru_8450 table:@"NanoContactsBridgeSettingsPaired"];
  v14 = [NSMutableString stringWithFormat:v11, v13, v6];

  v15 = NanoContactsSettingsPairedBundle();
  v16 = [v15 localizedStringForKey:@"SETTING_DESCRIPTION_LINE_FORMAT_WITH_COLON" value:&stru_8450 table:@"NanoContactsBridgeSettingsPaired"];
  v17 = NanoContactsSettingsPairedBundle();
  v18 = [v17 localizedStringForKey:@"Display Order" value:&stru_8450 table:@"NanoContactsBridgeSettingsPaired"];
  [v14 appendFormat:v16, v18, v9];

  if (+[NSPersonNameComponentsFormatter _shortNameIsEnabled])
  {
    v19 = +[NSPersonNameComponentsFormatter _defaultShortNameFormat];
    v20 = NanoContactsSettingsPairedBundle();
    v21 = v20;
    if ((v19 - 1) > 3)
    {
      v22 = @"SHORT_NAME_FORMAT_FIRST_ONLY";
    }

    else
    {
      v22 = *(&off_8330 + (v19 - 1));
    }

    v23 = [v20 localizedStringForKey:v22 value:&stru_8450 table:@"NanoContactsBridgeSettingsPaired"];

    v24 = NanoContactsSettingsPairedBundle();
    v25 = [v24 localizedStringForKey:@"SETTING_DESCRIPTION_LINE_FORMAT_WITH_COLON" value:&stru_8450 table:@"NanoContactsBridgeSettingsPaired"];
    v26 = NanoContactsSettingsPairedBundle();
    v27 = [v26 localizedStringForKey:@"Short Name" value:&stru_8450 table:@"NanoContactsBridgeSettingsPaired"];
    [v14 appendFormat:v25, v27, v23];
  }

  v28 = +[NSPersonNameComponentsFormatter _shouldPreferNicknames];
  v29 = NanoContactsSettingsPairedBundle();
  v30 = v29;
  if (v28)
  {
    v31 = @"ON";
  }

  else
  {
    v31 = @"OFF";
  }

  v32 = [v29 localizedStringForKey:v31 value:&stru_8450 table:@"NanoContactsBridgeSettingsPaired"];

  v33 = NanoContactsSettingsPairedBundle();
  v34 = [v33 localizedStringForKey:@"SETTING_DESCRIPTION_LINE_FORMAT_WITH_COLON" value:&stru_8450 table:@"NanoContactsBridgeSettingsPaired"];
  v35 = NanoContactsSettingsPairedBundle();
  v36 = [v35 localizedStringForKey:@"Prefer Nicknames" value:&stru_8450 table:@"NanoContactsBridgeSettingsPaired"];
  [v14 appendFormat:v34, v36, v32];

  return v14;
}

- (id)localizedPaneTitle
{
  v2 = NanoContactsSettingsPairedBundle();
  v3 = [v2 localizedStringForKey:@"CONTACTS" value:&stru_8450 table:@"NanoContactsBridgeSettingsPaired"];

  return v3;
}

- (id)contactsSortOrder:(id)order
{
  v3 = [(NCABSettingsPairedController *)self _getValueForKey:@"contactsSortOrder" inDomainAccessor:self->_peoplePickerDomainAccessor];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [NSNumber numberWithUnsignedInt:ABPersonGetSortOrdering()];
  }

  v6 = v5;

  return v6;
}

- (void)setContactsSortOrder:(id)order specifier:(id)specifier
{
  v5 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [order intValue]);
  [(NCABSettingsPairedController *)self _setValue:v5 forKey:@"contactsSortOrder" inDomainAccessor:self->_peoplePickerDomainAccessor syncWithClient:1];
}

- (id)personNameOrder:(id)order
{
  v3 = [(NCABSettingsPairedController *)self _getValueForKey:NSPersonNameDefaultDisplayNameOrderKey inDomainAccessor:self->_foundationDomainAccessor];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", +[NSPersonNameComponentsFormatter _defaultDisplayNameOrder]);
  }

  v6 = v5;

  return v6;
}

- (void)setPersonNameOrder:(id)order specifier:(id)specifier
{
  v5 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [order integerValue]);
  [(NCABSettingsPairedController *)self _setValue:v5 forKey:NSPersonNameDefaultDisplayNameOrderKey inDomainAccessor:self->_foundationDomainAccessor syncWithClient:1];
}

+ (id)peoplePickerKeys
{
  if (qword_C6D8 != -1)
  {
    sub_33C4();
  }

  v3 = qword_C6D0;

  return v3;
}

+ (id)foundationKeys
{
  if (qword_C6E8 != -1)
  {
    sub_33D8();
  }

  v3 = qword_C6E0;

  return v3;
}

- (id)foundationKeysAndValuesUsingDomainAccessor:(BOOL)accessor
{
  if (accessor)
  {
    v4 = NSPersonNameDefaultDisplayNameOrderKey;
    v5 = [(NPSDomainAccessor *)self->_foundationDomainAccessor objectForKey:NSPersonNameDefaultDisplayNameOrderKey];
    if (v5)
    {
      v6 = [(NPSDomainAccessor *)self->_foundationDomainAccessor integerForKey:v4];
    }

    else
    {
      v6 = +[NSPersonNameComponentsFormatter _defaultDisplayNameOrder];
    }

    v7 = v6;

    v11 = NSPersonNameDefaultShortNameEnabledKey;
    v14 = [(NPSDomainAccessor *)self->_foundationDomainAccessor objectForKey:NSPersonNameDefaultShortNameEnabledKey];
    if (v14)
    {
      v15 = [(NPSDomainAccessor *)self->_foundationDomainAccessor BOOLForKey:v11];
    }

    else
    {
      v15 = +[NSPersonNameComponentsFormatter _shortNameIsEnabled];
    }

    v8 = v15;

    v12 = NSPersonNameDefaultShortNameFormatKey;
    v16 = [(NPSDomainAccessor *)self->_foundationDomainAccessor objectForKey:NSPersonNameDefaultShortNameFormatKey];
    if (v16)
    {
      v17 = [(NPSDomainAccessor *)self->_foundationDomainAccessor integerForKey:v12];
    }

    else
    {
      v17 = +[NSPersonNameComponentsFormatter _defaultShortNameFormat];
    }

    v9 = v17;

    v13 = NSPersonNameDefaultShouldPreferNicknamesKey;
    v18 = [(NPSDomainAccessor *)self->_foundationDomainAccessor objectForKey:NSPersonNameDefaultShouldPreferNicknamesKey];
    if (v18)
    {
      v19 = [(NPSDomainAccessor *)self->_foundationDomainAccessor BOOLForKey:v13];
    }

    else
    {
      v19 = +[NSPersonNameComponentsFormatter _shouldPreferNicknames];
    }

    v10 = v19;
  }

  else
  {
    v7 = +[NSPersonNameComponentsFormatter _defaultDisplayNameOrder];
    v8 = +[NSPersonNameComponentsFormatter _shortNameIsEnabled];
    v9 = +[NSPersonNameComponentsFormatter _defaultShortNameFormat];
    v10 = +[NSPersonNameComponentsFormatter _shouldPreferNicknames];
    v4 = NSPersonNameDefaultDisplayNameOrderKey;
    v11 = NSPersonNameDefaultShortNameEnabledKey;
    v12 = NSPersonNameDefaultShortNameFormatKey;
    v13 = NSPersonNameDefaultShouldPreferNicknamesKey;
  }

  v26[0] = v4;
  v20 = [NSNumber numberWithInteger:v7];
  v27[0] = v20;
  v26[1] = v11;
  v21 = [NSNumber numberWithBool:v8];
  v27[1] = v21;
  v26[2] = v12;
  v22 = [NSNumber numberWithInteger:v9];
  v27[2] = v22;
  v26[3] = v13;
  v23 = [NSNumber numberWithBool:v10];
  v27[3] = v23;
  v24 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:4];

  return v24;
}

- (id)_getValueForKey:(id)key inDomainAccessor:(id)accessor
{
  accessorCopy = accessor;
  keyCopy = key;
  synchronize = [accessorCopy synchronize];
  v8 = [accessorCopy objectForKey:keyCopy];

  return v8;
}

- (void)_setValue:(id)value forKey:(id)key inDomainAccessor:(id)accessor syncWithClient:(BOOL)client
{
  clientCopy = client;
  valueCopy = value;
  keyCopy = key;
  accessorCopy = accessor;
  [accessorCopy setObject:valueCopy forKey:keyCopy];
  synchronize = [accessorCopy synchronize];
  if (clientCopy)
  {
    syncManager = self->_syncManager;
    domain = [accessorCopy domain];
    v16 = [NSSet setWithObject:keyCopy];
    [(NPSManager *)syncManager synchronizeNanoDomain:domain keys:v16];

    if (self->_activePairedWatchRequiresLegacyKeys)
    {
      foundationKeys = [objc_opt_class() foundationKeys];
      v18 = [foundationKeys containsObject:keyCopy];

      if (v18)
      {
        v19 = objc_opt_class();
        v21 = keyCopy;
        v22 = valueCopy;
        v20 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
        [v19 mapFoundationPreferenceKeysAndValues:v20 toLegacyDomainAccessor:self->_peoplePickerDomainAccessor withSyncManager:self->_syncManager];
      }
    }
  }
}

+ (void)mapFoundationPreferenceKeysAndValues:(id)values toLegacyDomainAccessor:(id)accessor withSyncManager:(id)manager
{
  accessorCopy = accessor;
  managerCopy = manager;
  valuesCopy = values;
  v10 = +[NSMutableSet set];
  v11 = [NSPersonNameComponentsFormatterPreferences mappedPreferencesForPreferences:valuesCopy from:0 to:2];

  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_22F4;
  v19 = &unk_8310;
  v20 = accessorCopy;
  v21 = v10;
  v12 = v10;
  v13 = accessorCopy;
  [v11 enumerateKeysAndObjectsUsingBlock:&v16];
  synchronize = [v13 synchronize];
  domain = [v13 domain];
  [managerCopy synchronizeNanoDomain:domain keys:v12];
}

@end