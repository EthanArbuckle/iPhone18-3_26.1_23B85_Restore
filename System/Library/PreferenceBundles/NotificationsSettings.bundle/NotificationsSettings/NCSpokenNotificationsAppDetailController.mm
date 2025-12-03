@interface NCSpokenNotificationsAppDetailController
+ (BOOL)_isPriorityNotificationSupported;
+ (BOOL)_sectionInfoHasAnyAnnounceEnabled:(id)enabled;
+ (BOOL)isDirectMessagesAnnounceSupportedForSectionInfo:(id)info;
+ (id)spokenNotificationsEnabled:(id)enabled;
+ (id)spokenNotificationsSpecifierNamed:(id)named sectionInfo:(id)info showIcon:(BOOL)icon class:(Class)class;
- (BOOL)_isDirectMessagesAnnounceSupportedForSectionInfo:(id)info;
- (BOOL)_isPriorityNotificationSupported;
- (BOOL)_isTimeSensitiveAnnounceSupportedForSectionInfo:(id)info;
- (BOOL)_sectionInfoHasAnyAnnounceEnabled:(id)enabled;
- (NCSpokenNotificationsAppDetailControllerDelegate)delegate;
- (id)_spokenNoOptionsGroupSpecifier;
- (id)_spokenOptionsAllSpecifier;
- (id)_spokenOptionsGroupSpecifier;
- (id)_spokenOptionsPriorityNotificationsSpecifier;
- (id)_spokenOptionsTimeSensitiveSpecifier;
- (id)specifiers;
- (id)spokenNotificationsEnabled:(id)enabled;
- (id)spokenOptionPriority:(id)priority;
- (id)spokenOptionsAllNotifications:(id)notifications;
- (id)spokenOptionsTimeSensitiveDMs:(id)ms;
- (void)_setTimeSensitiveAndPriorityEnabled:(BOOL)enabled;
- (void)_signalDelegateSettingsChanged;
- (void)_updateOptionsGroupSpecifiers;
- (void)_updateSwitchStates;
- (void)didChangeSettingForSpokenNotificationsAppDetailController:(id)controller withSpecifierIdentifier:(id)identifier;
- (void)setSpokenNotificationsEnabled:(id)enabled specifier:(id)specifier;
- (void)setSpokenOptionAllNotifications:(id)notifications specifier:(id)specifier;
- (void)setSpokenOptionPriority:(id)priority specifier:(id)specifier;
- (void)setSpokenOptionTimeSensitiveDMs:(id)ms specifier:(id)specifier;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation NCSpokenNotificationsAppDetailController

- (NCSpokenNotificationsAppDetailControllerDelegate)delegate
{
  specifier = [(NCSpokenNotificationsAppDetailController *)self specifier];
  v3 = [specifier propertyForKey:kNotificationsSettingsDetailControllerDelegate];

  return v3;
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = NCSpokenNotificationsAppDetailController;
  [(NCSpokenNotificationsAppDetailController *)&v5 viewDidAppear:appear];
  specifier = [(NCSpokenNotificationsAppDetailController *)self specifier];
  [BulletinBoardController emitNavigationEventForSpecifier:specifier viewController:self];
}

+ (id)spokenNotificationsSpecifierNamed:(id)named sectionInfo:(id)info showIcon:(BOOL)icon class:(Class)class
{
  iconCopy = icon;
  infoCopy = info;
  v11 = [PSSpecifier preferenceSpecifierNamed:named target:self set:0 get:"spokenNotificationsEnabled:" detail:class cell:2 edit:0];
  v12 = [NSMutableArray alloc];
  v13 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
  v14 = [v13 localizedStringForKey:@"OFF" value:&stru_4E3F0 table:@"NotificationsSettings"];
  v32[0] = v14;
  v15 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
  v16 = [v15 localizedStringForKey:@"ON" value:&stru_4E3F0 table:@"NotificationsSettings"];
  v32[1] = v16;
  v17 = [NSArray arrayWithObjects:v32 count:2];
  v18 = [v12 initWithArray:v17];

  [v11 setValues:&off_516C0 titles:v18];
  sectionID = [infoCopy sectionID];
  v20 = [NSString stringWithFormat:@"SPOKEN_NOTIFICATIONS_APP_ID:%@", sectionID];
  [v11 setIdentifier:v20];

  [v11 setProperty:infoCopy forKey:@"BBSECTION_INFO_KEY"];
  if (iconCopy)
  {
    icon = [infoCopy icon];
    v22 = [icon _bestVariantForFormat:1];

    applicationIdentifier = [v22 applicationIdentifier];
    v24 = [v22 uti];
    nc_settingsIconImage = [infoCopy nc_settingsIconImage];
    if (nc_settingsIconImage)
    {
      v26 = PSIconImageKey;
      v27 = v11;
      v28 = nc_settingsIconImage;
    }

    else if ([applicationIdentifier length])
    {
      [v11 setProperty:&__kCFBooleanTrue forKey:PSLazyIconLoading];
      v26 = PSLazyIconAppID;
      v27 = v11;
      v28 = applicationIdentifier;
    }

    else
    {
      if (![v24 length])
      {
        [v11 setProperty:&__kCFBooleanTrue forKey:PSLazyIconLoading];
        sectionID2 = [infoCopy sectionID];
        v31 = [sectionID2 copy];
        [v11 setProperty:v31 forKey:PSLazyIconAppID];

        goto LABEL_9;
      }

      [v11 setProperty:v24 forKey:PSIconUTTypeIdentifierKey];
      v26 = PSLazyIconLoading;
      v28 = &__kCFBooleanTrue;
      v27 = v11;
    }

    [v27 setProperty:v28 forKey:v26];
LABEL_9:
  }

  return v11;
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    specifier = [(NCSpokenNotificationsAppDetailController *)self specifier];
    v6 = [specifier propertyForKey:@"BBSECTION_INFO_KEY"];

    v7 = BBSettingsDisplayNameForBBSection(v6);
    [(NCSpokenNotificationsAppDetailController *)self setTitle:v7];

    v8 = objc_alloc_init(NSMutableArray);
    v9 = [PSSpecifier groupSpecifierWithID:@"SPOKEN_NOTIFICATIONS_SWITCH_MESSAGES_GROUP_ID"];
    v10 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v11 = [v10 localizedStringForKey:@"SPOKEN_NOTIFICATIONS_APP_FOOTER" value:&stru_4E3F0 table:@"NotificationsSettings"];
    title = [(NCSpokenNotificationsAppDetailController *)self title];
    v13 = [NSString stringWithFormat:v11, title];
    [v9 setProperty:v13 forKey:PSFooterTextGroupKey];

    [v8 addObject:v9];
    v14 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v15 = [v14 localizedStringForKey:@"SPOKEN_NOTIFICATIONS" value:&stru_4E3F0 table:@"NotificationsSettings"];
    v16 = [PSSpecifier preferenceSpecifierNamed:v15 target:self set:"setSpokenNotificationsEnabled:specifier:" get:"spokenNotificationsEnabled:" detail:0 cell:6 edit:0];
    spokenNotificationsSwitchSpecifier = self->_spokenNotificationsSwitchSpecifier;
    self->_spokenNotificationsSwitchSpecifier = v16;

    [(PSSpecifier *)self->_spokenNotificationsSwitchSpecifier setIdentifier:@"SPOKEN_NOTIFICATIONS_ID"];
    [(PSSpecifier *)self->_spokenNotificationsSwitchSpecifier setProperty:v6 forKey:@"BBSECTION_INFO_KEY"];
    [v8 bs_safeAddObject:self->_spokenNotificationsSwitchSpecifier];
    [(NCSpokenNotificationsAppDetailController *)self setSpecifiers:v8];
    [(NCSpokenNotificationsAppDetailController *)self _updateOptionsGroupSpecifiers];

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

+ (id)spokenNotificationsEnabled:(id)enabled
{
  v4 = [enabled propertyForKey:@"BBSECTION_INFO_KEY"];
  nc_effectiveAnnounceSetting = [v4 nc_effectiveAnnounceSetting];
  if (nc_effectiveAnnounceSetting == &dword_0 + 3 || (v6 = nc_effectiveAnnounceSetting, v7 = [objc_opt_class() isTimeSensitiveAnnounceSupportedForSectionInfo:v4], v8 = objc_msgSend(objc_opt_class(), "isDirectMessagesAnnounceSupportedForSectionInfo:", v4), v6 == &dword_0 + 2) && ((v7 | v8) & 1) != 0)
  {
    v9 = &dword_0 + 1;
  }

  else
  {
    v9 = [self _sectionInfoHasAnyAnnounceEnabled:v4];
  }

  v10 = [NSNumber numberWithBool:v9];

  return v10;
}

- (id)spokenNotificationsEnabled:(id)enabled
{
  v4 = objc_opt_class();
  specifier = [(NCSpokenNotificationsAppDetailController *)self specifier];
  v6 = [v4 spokenNotificationsEnabled:specifier];

  return v6;
}

- (void)setSpokenNotificationsEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  specifier = [(NCSpokenNotificationsAppDetailController *)self specifier];
  v16 = [specifier propertyForKey:@"BBSECTION_INFO_KEY"];

  LOBYTE(specifier) = [(NCSpokenNotificationsAppDetailController *)self _isTimeSensitiveAnnounceSupportedForSectionInfo:v16];
  v7 = [(NCSpokenNotificationsAppDetailController *)self _isDirectMessagesAnnounceSupportedForSectionInfo:v16];
  _isPriorityNotificationSupported = [(NCSpokenNotificationsAppDetailController *)self _isPriorityNotificationSupported];
  bOOLValue = [enabledCopy BOOLValue];

  v10 = 2;
  if (((specifier | v7) & 1) == 0)
  {
    v10 = 3;
  }

  if ((bOOLValue & _isPriorityNotificationSupported) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  if (bOOLValue)
  {
    v12 = v10;
  }

  else
  {
    v12 = 1;
  }

  sectionInfoSettings = [v16 sectionInfoSettings];
  [sectionInfoSettings setAnnouncePriorityNotificationsSetting:v11];
  [v16 setSectionInfoSettings:sectionInfoSettings];
  [v16 setAnnounceSetting:v12];
  if (bOOLValue && ([v16 allowsNotifications] & 1) == 0)
  {
    [v16 setAllowsNotifications:1];
  }

  v14 = +[NCSettingsGatewayController sharedInstance];
  sectionID = [v16 sectionID];
  [v14 setSectionInfo:v16 forSectionID:sectionID];

  [(NCSpokenNotificationsAppDetailController *)self _updateOptionsGroupSpecifiers];
  [(NCSpokenNotificationsAppDetailController *)self _signalDelegateSettingsChanged];
}

- (void)_updateOptionsGroupSpecifiers
{
  specifier = [(NCSpokenNotificationsAppDetailController *)self specifier];
  v4 = [specifier propertyForKey:@"BBSECTION_INFO_KEY"];

  nc_effectiveAnnounceSetting = [v4 nc_effectiveAnnounceSetting];
  v6 = [(NCSpokenNotificationsAppDetailController *)self _isTimeSensitiveAnnounceSupportedForSectionInfo:v4];
  v7 = [(NCSpokenNotificationsAppDetailController *)self _isDirectMessagesAnnounceSupportedForSectionInfo:v4];
  _isPriorityNotificationSupported = [(NCSpokenNotificationsAppDetailController *)self _isPriorityNotificationSupported];
  v9 = v6 | v7;
  v10 = +[NSMutableArray array];
  if ((v9 & 1) != 0 || _isPriorityNotificationSupported)
  {
    _spokenOptionsGroupSpecifier = [(NCSpokenNotificationsAppDetailController *)self _spokenOptionsGroupSpecifier];
    v19[0] = _spokenOptionsGroupSpecifier;
    _spokenOptionsAllSpecifier = [(NCSpokenNotificationsAppDetailController *)self _spokenOptionsAllSpecifier];
    v19[1] = _spokenOptionsAllSpecifier;
    v14 = [NSArray arrayWithObjects:v19 count:2];
    [v10 addObjectsFromArray:v14];

    if (_isPriorityNotificationSupported)
    {
      _spokenOptionsPriorityNotificationsSpecifier = [(NCSpokenNotificationsAppDetailController *)self _spokenOptionsPriorityNotificationsSpecifier];
      [v10 addObject:_spokenOptionsPriorityNotificationsSpecifier];
    }

    if (v9)
    {
      _spokenOptionsTimeSensitiveSpecifier = [(NCSpokenNotificationsAppDetailController *)self _spokenOptionsTimeSensitiveSpecifier];
      [v10 addObject:_spokenOptionsTimeSensitiveSpecifier];
    }
  }

  else
  {
    _spokenNoOptionsGroupSpecifier = [(NCSpokenNotificationsAppDetailController *)self _spokenNoOptionsGroupSpecifier];
    [v10 addObject:_spokenNoOptionsGroupSpecifier];

    if (nc_effectiveAnnounceSetting == &dword_0 + 2)
    {
      goto LABEL_12;
    }
  }

  if (![(NCSpokenNotificationsAppDetailController *)self _sectionInfoHasAnyAnnounceEnabled:v4])
  {
LABEL_12:
    [(NCSpokenNotificationsAppDetailController *)self removeContiguousSpecifiers:v10];
    goto LABEL_13;
  }

  if ([(NCSpokenNotificationsAppDetailController *)self _sectionInfoHasAnyAnnounceEnabled:v4])
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1F5E8;
    v18[3] = &unk_4D950;
    v18[4] = self;
    v17 = [v10 bs_filter:v18];
    [(NCSpokenNotificationsAppDetailController *)self addSpecifiersFromArray:v17];
  }

LABEL_13:
  [(NCSpokenNotificationsAppDetailController *)self _setTimeSensitiveAndPriorityEnabled:nc_effectiveAnnounceSetting != &dword_0 + 3];
}

- (void)_updateSwitchStates
{
  specifier = [(NCSpokenNotificationsAppDetailController *)self specifier];
  v5 = [specifier propertyForKey:@"BBSECTION_INFO_KEY"];

  if ([(NCSpokenNotificationsAppDetailController *)self _sectionInfoHasAnyAnnounceEnabled:v5])
  {
    v4 = &__kCFBooleanTrue;
  }

  else
  {
    v4 = &__kCFBooleanFalse;
  }

  [(PSSpecifier *)self->_spokenNotificationsSwitchSpecifier setProperty:v4 forKey:PSValueKey];
  [(NCSpokenNotificationsAppDetailController *)self reloadSpecifier:self->_spokenNotificationsSwitchSpecifier];
}

+ (BOOL)_sectionInfoHasAnyAnnounceEnabled:(id)enabled
{
  enabledCopy = enabled;
  v4 = [enabledCopy nc_effectiveAnnounceSetting] & 0xFFFFFFFFFFFFFFFELL;
  sectionInfoSettings = [enabledCopy sectionInfoSettings];

  announcePriorityNotificationsSetting = [sectionInfoSettings announcePriorityNotificationsSetting];
  return v4 == 2 || announcePriorityNotificationsSetting == &dword_0 + 2;
}

- (BOOL)_sectionInfoHasAnyAnnounceEnabled:(id)enabled
{
  enabledCopy = enabled;
  v4 = [objc_opt_class() _sectionInfoHasAnyAnnounceEnabled:enabledCopy];

  return v4;
}

- (id)_spokenOptionsGroupSpecifier
{
  spokenOptionsGroupSpecifier = self->_spokenOptionsGroupSpecifier;
  if (!spokenOptionsGroupSpecifier)
  {
    v4 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v5 = [v4 localizedStringForKey:@"SPOKEN_NOTIFICATIONS_APP_OPTIONS_GROUP" value:&stru_4E3F0 table:@"NotificationsSettings"];
    v6 = [PSSpecifier groupSpecifierWithID:@"SPOKEN_NOTIFICATIONS_APP_OPTIONS_GROUP" name:v5];
    v7 = self->_spokenOptionsGroupSpecifier;
    self->_spokenOptionsGroupSpecifier = v6;

    [(PSSpecifier *)self->_spokenOptionsGroupSpecifier setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
    specifier = [(NCSpokenNotificationsAppDetailController *)self specifier];
    v9 = [specifier propertyForKey:@"BBSECTION_INFO_KEY"];

    v10 = [(NCSpokenNotificationsAppDetailController *)self _isTimeSensitiveAnnounceSupportedForSectionInfo:v9];
    v11 = [(NCSpokenNotificationsAppDetailController *)self _isDirectMessagesAnnounceSupportedForSectionInfo:v9];
    if ((v10 & 1) != 0 || v11)
    {
      v13 = @"SPOKEN_NOTIFICATIONS_APP_OPTIONS_FOOTER_TIME_SENSITIVE";
      if ((v10 & v11) != 0)
      {
        v13 = @"SPOKEN_NOTIFICATIONS_APP_OPTIONS_FOOTER_TIME_SENSITIVE_AND_MESSAGES";
      }

      if (v10)
      {
        v14 = v13;
      }

      else
      {
        v14 = @"SPOKEN_NOTIFICATIONS_APP_OPTIONS_FOOTER_MESSAGES";
      }

      v15 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
      v16 = [v15 localizedStringForKey:v14 value:&stru_4E3F0 table:@"NotificationsSettings"];
      title = [(NCSpokenNotificationsAppDetailController *)self title];
      v12 = [NSString stringWithFormat:v16, title];
    }

    else
    {
      v12 = 0;
    }

    [(PSSpecifier *)self->_spokenOptionsGroupSpecifier setProperty:v12 forKey:PSFooterTextGroupKey];

    spokenOptionsGroupSpecifier = self->_spokenOptionsGroupSpecifier;
  }

  return spokenOptionsGroupSpecifier;
}

- (id)_spokenNoOptionsGroupSpecifier
{
  spokenNoOptionsGroupSpecifier = self->_spokenNoOptionsGroupSpecifier;
  if (!spokenNoOptionsGroupSpecifier)
  {
    v4 = [PSSpecifier groupSpecifierWithID:@"SPOKEN_NOTIFICATIONS_APP_NO_OPTIONS_GROUP"];
    v5 = self->_spokenNoOptionsGroupSpecifier;
    self->_spokenNoOptionsGroupSpecifier = v4;

    [(PSSpecifier *)self->_spokenNoOptionsGroupSpecifier setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
    v6 = self->_spokenNoOptionsGroupSpecifier;
    v7 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v8 = [v7 localizedStringForKey:@"SPOKEN_NOTIFICATIONS_APP_NO_OPTIONS_FOOTER" value:&stru_4E3F0 table:@"NotificationsSettings"];
    title = [(NCSpokenNotificationsAppDetailController *)self title];
    v10 = [NSString stringWithFormat:v8, title];
    [(PSSpecifier *)v6 setProperty:v10 forKey:PSFooterTextGroupKey];

    spokenNoOptionsGroupSpecifier = self->_spokenNoOptionsGroupSpecifier;
  }

  return spokenNoOptionsGroupSpecifier;
}

- (id)_spokenOptionsPriorityNotificationsSpecifier
{
  spokenOptionsPrioritySpecifier = self->_spokenOptionsPrioritySpecifier;
  if (!spokenOptionsPrioritySpecifier)
  {
    v4 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v5 = [v4 localizedStringForKey:@"SPOKEN_NOTIFICATIONS_APP_OPTIONS_PRIORITY" value:&stru_4E3F0 table:@"NotificationsSettings"];
    v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:"setSpokenOptionPriority:specifier:" get:"spokenOptionPriority:" detail:0 cell:6 edit:0];
    v7 = self->_spokenOptionsPrioritySpecifier;
    self->_spokenOptionsPrioritySpecifier = v6;

    [(PSSpecifier *)self->_spokenOptionsPrioritySpecifier setIdentifier:@"SPOKEN_NOTIFICATIONS_APP_OPTIONS_PRIORITY"];
    [(PSSpecifier *)self->_spokenOptionsPrioritySpecifier setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
    [(PSSpecifier *)self->_spokenOptionsPrioritySpecifier setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];
    spokenOptionsPrioritySpecifier = self->_spokenOptionsPrioritySpecifier;
  }

  return spokenOptionsPrioritySpecifier;
}

- (id)spokenOptionPriority:(id)priority
{
  specifier = [(NCSpokenNotificationsAppDetailController *)self specifier];
  v4 = [specifier propertyForKey:@"BBSECTION_INFO_KEY"];

  sectionInfoSettings = [v4 sectionInfoSettings];
  announcePriorityNotificationsSetting = [sectionInfoSettings announcePriorityNotificationsSetting];

  v7 = [NSNumber numberWithInt:announcePriorityNotificationsSetting == &dword_0 + 2];

  return v7;
}

- (void)setSpokenOptionPriority:(id)priority specifier:(id)specifier
{
  priorityCopy = priority;
  specifier = [(NCSpokenNotificationsAppDetailController *)self specifier];
  v12 = [specifier propertyForKey:@"BBSECTION_INFO_KEY"];

  sectionInfoSettings = [v12 sectionInfoSettings];
  bOOLValue = [priorityCopy BOOLValue];

  if (bOOLValue)
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  [sectionInfoSettings setAnnouncePriorityNotificationsSetting:v9];
  [v12 setSectionInfoSettings:sectionInfoSettings];
  v10 = +[NCSettingsGatewayController sharedInstance];
  sectionID = [v12 sectionID];
  [v10 setSectionInfo:v12 forSectionID:sectionID];

  [(NCSpokenNotificationsAppDetailController *)self _signalDelegateSettingsChanged];
  [(NCSpokenNotificationsAppDetailController *)self _updateSwitchStates];
}

- (id)_spokenOptionsTimeSensitiveSpecifier
{
  spokenOptionsTimeSensitiveSpecifier = self->_spokenOptionsTimeSensitiveSpecifier;
  if (!spokenOptionsTimeSensitiveSpecifier)
  {
    specifier = [(NCSpokenNotificationsAppDetailController *)self specifier];
    v5 = [specifier propertyForKey:@"BBSECTION_INFO_KEY"];

    v6 = [(NCSpokenNotificationsAppDetailController *)self _isTimeSensitiveAnnounceSupportedForSectionInfo:v5];
    v7 = [(NCSpokenNotificationsAppDetailController *)self _isDirectMessagesAnnounceSupportedForSectionInfo:v5];
    if ((v6 & 1) != 0 || v7)
    {
      v9 = @"SPOKEN_NOTIFICATIONS_APP_OPTIONS_TIME_SENSITIVE";
      if ((v6 & v7) != 0)
      {
        v9 = @"SPOKEN_NOTIFICATIONS_APP_OPTIONS_TIME_SENSITIVE_AND_MESSAGES";
      }

      if (v6)
      {
        v10 = v9;
      }

      else
      {
        v10 = @"SPOKEN_NOTIFICATIONS_APP_OPTIONS_MESSAGES";
      }

      v11 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
      v8 = [v11 localizedStringForKey:v10 value:&stru_4E3F0 table:@"NotificationsSettings"];
    }

    else
    {
      v8 = 0;
    }

    v12 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:"setSpokenOptionTimeSensitiveDMs:specifier:" get:"spokenOptionsTimeSensitiveDMs:" detail:0 cell:6 edit:0];
    v13 = self->_spokenOptionsTimeSensitiveSpecifier;
    self->_spokenOptionsTimeSensitiveSpecifier = v12;

    [(PSSpecifier *)self->_spokenOptionsTimeSensitiveSpecifier setIdentifier:@"SPOKEN_NOTIFICATIONS_APP_OPTIONS_TIME_SENSITIVE_ID"];
    [(PSSpecifier *)self->_spokenOptionsTimeSensitiveSpecifier setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
    [(PSSpecifier *)self->_spokenOptionsTimeSensitiveSpecifier setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];

    spokenOptionsTimeSensitiveSpecifier = self->_spokenOptionsTimeSensitiveSpecifier;
  }

  return spokenOptionsTimeSensitiveSpecifier;
}

- (id)spokenOptionsTimeSensitiveDMs:(id)ms
{
  specifier = [(NCSpokenNotificationsAppDetailController *)self specifier];
  v4 = [specifier propertyForKey:@"BBSECTION_INFO_KEY"];

  sectionInfoSettings = [v4 sectionInfoSettings];
  announceSetting = [sectionInfoSettings announceSetting];

  v7 = [NSNumber numberWithInt:announceSetting == &dword_0 + 2];

  return v7;
}

- (void)setSpokenOptionTimeSensitiveDMs:(id)ms specifier:(id)specifier
{
  msCopy = ms;
  specifier = [(NCSpokenNotificationsAppDetailController *)self specifier];
  v6 = [specifier propertyForKey:@"BBSECTION_INFO_KEY"];

  sectionInfoSettings = [v6 sectionInfoSettings];
  if ([sectionInfoSettings announceSetting] != &dword_0 + 3)
  {
    if ([msCopy BOOLValue])
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
    }

    [sectionInfoSettings setAnnounceSetting:v8];
  }

  [v6 setSectionInfoSettings:sectionInfoSettings];
  v9 = +[NCSettingsGatewayController sharedInstance];
  sectionID = [v6 sectionID];
  [v9 setSectionInfo:v6 forSectionID:sectionID];

  [(NCSpokenNotificationsAppDetailController *)self _signalDelegateSettingsChanged];
  [(NCSpokenNotificationsAppDetailController *)self _updateSwitchStates];
}

- (id)_spokenOptionsAllSpecifier
{
  spokenOptionsAllSpecifier = self->_spokenOptionsAllSpecifier;
  if (!spokenOptionsAllSpecifier)
  {
    v4 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v5 = [v4 localizedStringForKey:@"SPOKEN_NOTIFICATIONS_APP_OPTIONS_ALL" value:&stru_4E3F0 table:@"NotificationsSettings"];
    v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:"setSpokenOptionAllNotifications:specifier:" get:"spokenOptionsAllNotifications:" detail:0 cell:6 edit:0];
    v7 = self->_spokenOptionsAllSpecifier;
    self->_spokenOptionsAllSpecifier = v6;

    [(PSSpecifier *)self->_spokenOptionsAllSpecifier setIdentifier:@"SPOKEN_NOTIFICATIONS_APP_OPTIONS_ALL"];
    [(PSSpecifier *)self->_spokenOptionsAllSpecifier setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];
    spokenOptionsAllSpecifier = self->_spokenOptionsAllSpecifier;
  }

  return spokenOptionsAllSpecifier;
}

- (id)spokenOptionsAllNotifications:(id)notifications
{
  specifier = [(NCSpokenNotificationsAppDetailController *)self specifier];
  v4 = [specifier propertyForKey:@"BBSECTION_INFO_KEY"];

  sectionInfoSettings = [v4 sectionInfoSettings];
  announceSetting = [sectionInfoSettings announceSetting];

  v7 = [NSNumber numberWithInt:announceSetting == &dword_0 + 3];

  return v7;
}

- (void)setSpokenOptionAllNotifications:(id)notifications specifier:(id)specifier
{
  notificationsCopy = notifications;
  specifier = [(NCSpokenNotificationsAppDetailController *)self specifier];
  v11 = [specifier propertyForKey:@"BBSECTION_INFO_KEY"];

  sectionInfoSettings = [v11 sectionInfoSettings];
  bOOLValue = [notificationsCopy BOOLValue];

  if (bOOLValue)
  {
    [sectionInfoSettings setAnnounceSetting:3];
    [sectionInfoSettings setAnnouncePriorityNotificationsSetting:1];
  }

  else
  {
    [sectionInfoSettings setAnnounceSetting:1];
  }

  [(NCSpokenNotificationsAppDetailController *)self _setTimeSensitiveAndPriorityEnabled:bOOLValue ^ 1];
  [v11 setSectionInfoSettings:sectionInfoSettings];
  v9 = +[NCSettingsGatewayController sharedInstance];
  sectionID = [v11 sectionID];
  [v9 setSectionInfo:v11 forSectionID:sectionID];

  [(NCSpokenNotificationsAppDetailController *)self _signalDelegateSettingsChanged];
  [(NCSpokenNotificationsAppDetailController *)self _updateSwitchStates];
}

- (void)_setTimeSensitiveAndPriorityEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  spokenOptionsPrioritySpecifier = self->_spokenOptionsPrioritySpecifier;
  v6 = [NSNumber numberWithBool:?];
  v7 = PSEnabledKey;
  [(PSSpecifier *)spokenOptionsPrioritySpecifier setProperty:v6 forKey:PSEnabledKey];

  spokenOptionsTimeSensitiveSpecifier = self->_spokenOptionsTimeSensitiveSpecifier;
  v9 = [NSNumber numberWithBool:enabledCopy];
  [(PSSpecifier *)spokenOptionsTimeSensitiveSpecifier setProperty:v9 forKey:v7];

  [(NCSpokenNotificationsAppDetailController *)self reloadSpecifier:self->_spokenOptionsPrioritySpecifier];
  v10 = self->_spokenOptionsTimeSensitiveSpecifier;

  [(NCSpokenNotificationsAppDetailController *)self reloadSpecifier:v10];
}

- (void)_signalDelegateSettingsChanged
{
  delegate = [(NCSpokenNotificationsAppDetailController *)self delegate];
  if (delegate)
  {
    v6 = delegate;
    specifier = [(NCSpokenNotificationsAppDetailController *)self specifier];
    identifier = [specifier identifier];
    [v6 didChangeSettingForSpokenNotificationsAppDetailController:self withSpecifierIdentifier:identifier];

    delegate = v6;
  }
}

+ (BOOL)isDirectMessagesAnnounceSupportedForSectionInfo:(id)info
{
  infoCopy = info;
  v4 = [infoCopy scheduledDeliverySetting] != &dword_0 + 2 && objc_msgSend(infoCopy, "directMessagesSetting") || objc_msgSend(infoCopy, "scheduledDeliverySetting") == &dword_0 + 2 && objc_msgSend(infoCopy, "directMessagesSetting") == &dword_0 + 2;

  return v4;
}

- (BOOL)_isTimeSensitiveAnnounceSupportedForSectionInfo:(id)info
{
  infoCopy = info;
  v4 = [objc_opt_class() isTimeSensitiveAnnounceSupportedForSectionInfo:infoCopy];

  return v4;
}

- (BOOL)_isDirectMessagesAnnounceSupportedForSectionInfo:(id)info
{
  infoCopy = info;
  v4 = [objc_opt_class() isDirectMessagesAnnounceSupportedForSectionInfo:infoCopy];

  return v4;
}

- (BOOL)_isPriorityNotificationSupported
{
  v2 = objc_opt_class();

  return [v2 _isPriorityNotificationSupported];
}

+ (BOOL)_isPriorityNotificationSupported
{
  v2 = _os_feature_enabled_impl();
  if (v2)
  {

    LOBYTE(v2) = NCAreGenerativePrioritizationModelsAvailable();
  }

  return v2;
}

- (void)didChangeSettingForSpokenNotificationsAppDetailController:(id)controller withSpecifierIdentifier:(id)identifier
{
  [(NCSpokenNotificationsAppDetailController *)self reloadSpecifierID:identifier];
  delegate = [(NCSpokenNotificationsAppDetailController *)self delegate];
  specifier = [(NCSpokenNotificationsAppDetailController *)self specifier];
  identifier = [specifier identifier];
  [delegate didChangeSettingForSpokenNotificationsAppDetailController:self withSpecifierIdentifier:identifier];
}

@end