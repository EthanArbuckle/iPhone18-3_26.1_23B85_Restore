@interface NCSpokenNotificationsAppDetailController
+ (BOOL)_isPriorityNotificationSupported;
+ (BOOL)_sectionInfoHasAnyAnnounceEnabled:(id)a3;
+ (BOOL)isDirectMessagesAnnounceSupportedForSectionInfo:(id)a3;
+ (id)spokenNotificationsEnabled:(id)a3;
+ (id)spokenNotificationsSpecifierNamed:(id)a3 sectionInfo:(id)a4 showIcon:(BOOL)a5 class:(Class)a6;
- (BOOL)_isDirectMessagesAnnounceSupportedForSectionInfo:(id)a3;
- (BOOL)_isPriorityNotificationSupported;
- (BOOL)_isTimeSensitiveAnnounceSupportedForSectionInfo:(id)a3;
- (BOOL)_sectionInfoHasAnyAnnounceEnabled:(id)a3;
- (NCSpokenNotificationsAppDetailControllerDelegate)delegate;
- (id)_spokenNoOptionsGroupSpecifier;
- (id)_spokenOptionsAllSpecifier;
- (id)_spokenOptionsGroupSpecifier;
- (id)_spokenOptionsPriorityNotificationsSpecifier;
- (id)_spokenOptionsTimeSensitiveSpecifier;
- (id)specifiers;
- (id)spokenNotificationsEnabled:(id)a3;
- (id)spokenOptionPriority:(id)a3;
- (id)spokenOptionsAllNotifications:(id)a3;
- (id)spokenOptionsTimeSensitiveDMs:(id)a3;
- (void)_setTimeSensitiveAndPriorityEnabled:(BOOL)a3;
- (void)_signalDelegateSettingsChanged;
- (void)_updateOptionsGroupSpecifiers;
- (void)_updateSwitchStates;
- (void)didChangeSettingForSpokenNotificationsAppDetailController:(id)a3 withSpecifierIdentifier:(id)a4;
- (void)setSpokenNotificationsEnabled:(id)a3 specifier:(id)a4;
- (void)setSpokenOptionAllNotifications:(id)a3 specifier:(id)a4;
- (void)setSpokenOptionPriority:(id)a3 specifier:(id)a4;
- (void)setSpokenOptionTimeSensitiveDMs:(id)a3 specifier:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation NCSpokenNotificationsAppDetailController

- (NCSpokenNotificationsAppDetailControllerDelegate)delegate
{
  v2 = [(NCSpokenNotificationsAppDetailController *)self specifier];
  v3 = [v2 propertyForKey:kNotificationsSettingsDetailControllerDelegate];

  return v3;
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = NCSpokenNotificationsAppDetailController;
  [(NCSpokenNotificationsAppDetailController *)&v5 viewDidAppear:a3];
  v4 = [(NCSpokenNotificationsAppDetailController *)self specifier];
  [BulletinBoardController emitNavigationEventForSpecifier:v4 viewController:self];
}

+ (id)spokenNotificationsSpecifierNamed:(id)a3 sectionInfo:(id)a4 showIcon:(BOOL)a5 class:(Class)a6
{
  v7 = a5;
  v10 = a4;
  v11 = [PSSpecifier preferenceSpecifierNamed:a3 target:a1 set:0 get:"spokenNotificationsEnabled:" detail:a6 cell:2 edit:0];
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
  v19 = [v10 sectionID];
  v20 = [NSString stringWithFormat:@"SPOKEN_NOTIFICATIONS_APP_ID:%@", v19];
  [v11 setIdentifier:v20];

  [v11 setProperty:v10 forKey:@"BBSECTION_INFO_KEY"];
  if (v7)
  {
    v21 = [v10 icon];
    v22 = [v21 _bestVariantForFormat:1];

    v23 = [v22 applicationIdentifier];
    v24 = [v22 uti];
    v25 = [v10 nc_settingsIconImage];
    if (v25)
    {
      v26 = PSIconImageKey;
      v27 = v11;
      v28 = v25;
    }

    else if ([v23 length])
    {
      [v11 setProperty:&__kCFBooleanTrue forKey:PSLazyIconLoading];
      v26 = PSLazyIconAppID;
      v27 = v11;
      v28 = v23;
    }

    else
    {
      if (![v24 length])
      {
        [v11 setProperty:&__kCFBooleanTrue forKey:PSLazyIconLoading];
        v30 = [v10 sectionID];
        v31 = [v30 copy];
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
    v5 = [(NCSpokenNotificationsAppDetailController *)self specifier];
    v6 = [v5 propertyForKey:@"BBSECTION_INFO_KEY"];

    v7 = BBSettingsDisplayNameForBBSection(v6);
    [(NCSpokenNotificationsAppDetailController *)self setTitle:v7];

    v8 = objc_alloc_init(NSMutableArray);
    v9 = [PSSpecifier groupSpecifierWithID:@"SPOKEN_NOTIFICATIONS_SWITCH_MESSAGES_GROUP_ID"];
    v10 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v11 = [v10 localizedStringForKey:@"SPOKEN_NOTIFICATIONS_APP_FOOTER" value:&stru_4E3F0 table:@"NotificationsSettings"];
    v12 = [(NCSpokenNotificationsAppDetailController *)self title];
    v13 = [NSString stringWithFormat:v11, v12];
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

+ (id)spokenNotificationsEnabled:(id)a3
{
  v4 = [a3 propertyForKey:@"BBSECTION_INFO_KEY"];
  v5 = [v4 nc_effectiveAnnounceSetting];
  if (v5 == &dword_0 + 3 || (v6 = v5, v7 = [objc_opt_class() isTimeSensitiveAnnounceSupportedForSectionInfo:v4], v8 = objc_msgSend(objc_opt_class(), "isDirectMessagesAnnounceSupportedForSectionInfo:", v4), v6 == &dword_0 + 2) && ((v7 | v8) & 1) != 0)
  {
    v9 = &dword_0 + 1;
  }

  else
  {
    v9 = [a1 _sectionInfoHasAnyAnnounceEnabled:v4];
  }

  v10 = [NSNumber numberWithBool:v9];

  return v10;
}

- (id)spokenNotificationsEnabled:(id)a3
{
  v4 = objc_opt_class();
  v5 = [(NCSpokenNotificationsAppDetailController *)self specifier];
  v6 = [v4 spokenNotificationsEnabled:v5];

  return v6;
}

- (void)setSpokenNotificationsEnabled:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = [(NCSpokenNotificationsAppDetailController *)self specifier];
  v16 = [v6 propertyForKey:@"BBSECTION_INFO_KEY"];

  LOBYTE(v6) = [(NCSpokenNotificationsAppDetailController *)self _isTimeSensitiveAnnounceSupportedForSectionInfo:v16];
  v7 = [(NCSpokenNotificationsAppDetailController *)self _isDirectMessagesAnnounceSupportedForSectionInfo:v16];
  v8 = [(NCSpokenNotificationsAppDetailController *)self _isPriorityNotificationSupported];
  v9 = [v5 BOOLValue];

  v10 = 2;
  if (((v6 | v7) & 1) == 0)
  {
    v10 = 3;
  }

  if ((v9 & v8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  if (v9)
  {
    v12 = v10;
  }

  else
  {
    v12 = 1;
  }

  v13 = [v16 sectionInfoSettings];
  [v13 setAnnouncePriorityNotificationsSetting:v11];
  [v16 setSectionInfoSettings:v13];
  [v16 setAnnounceSetting:v12];
  if (v9 && ([v16 allowsNotifications] & 1) == 0)
  {
    [v16 setAllowsNotifications:1];
  }

  v14 = +[NCSettingsGatewayController sharedInstance];
  v15 = [v16 sectionID];
  [v14 setSectionInfo:v16 forSectionID:v15];

  [(NCSpokenNotificationsAppDetailController *)self _updateOptionsGroupSpecifiers];
  [(NCSpokenNotificationsAppDetailController *)self _signalDelegateSettingsChanged];
}

- (void)_updateOptionsGroupSpecifiers
{
  v3 = [(NCSpokenNotificationsAppDetailController *)self specifier];
  v4 = [v3 propertyForKey:@"BBSECTION_INFO_KEY"];

  v5 = [v4 nc_effectiveAnnounceSetting];
  v6 = [(NCSpokenNotificationsAppDetailController *)self _isTimeSensitiveAnnounceSupportedForSectionInfo:v4];
  v7 = [(NCSpokenNotificationsAppDetailController *)self _isDirectMessagesAnnounceSupportedForSectionInfo:v4];
  v8 = [(NCSpokenNotificationsAppDetailController *)self _isPriorityNotificationSupported];
  v9 = v6 | v7;
  v10 = +[NSMutableArray array];
  if ((v9 & 1) != 0 || v8)
  {
    v12 = [(NCSpokenNotificationsAppDetailController *)self _spokenOptionsGroupSpecifier];
    v19[0] = v12;
    v13 = [(NCSpokenNotificationsAppDetailController *)self _spokenOptionsAllSpecifier];
    v19[1] = v13;
    v14 = [NSArray arrayWithObjects:v19 count:2];
    [v10 addObjectsFromArray:v14];

    if (v8)
    {
      v15 = [(NCSpokenNotificationsAppDetailController *)self _spokenOptionsPriorityNotificationsSpecifier];
      [v10 addObject:v15];
    }

    if (v9)
    {
      v16 = [(NCSpokenNotificationsAppDetailController *)self _spokenOptionsTimeSensitiveSpecifier];
      [v10 addObject:v16];
    }
  }

  else
  {
    v11 = [(NCSpokenNotificationsAppDetailController *)self _spokenNoOptionsGroupSpecifier];
    [v10 addObject:v11];

    if (v5 == &dword_0 + 2)
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
  [(NCSpokenNotificationsAppDetailController *)self _setTimeSensitiveAndPriorityEnabled:v5 != &dword_0 + 3];
}

- (void)_updateSwitchStates
{
  v3 = [(NCSpokenNotificationsAppDetailController *)self specifier];
  v5 = [v3 propertyForKey:@"BBSECTION_INFO_KEY"];

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

+ (BOOL)_sectionInfoHasAnyAnnounceEnabled:(id)a3
{
  v3 = a3;
  v4 = [v3 nc_effectiveAnnounceSetting] & 0xFFFFFFFFFFFFFFFELL;
  v5 = [v3 sectionInfoSettings];

  v6 = [v5 announcePriorityNotificationsSetting];
  return v4 == 2 || v6 == &dword_0 + 2;
}

- (BOOL)_sectionInfoHasAnyAnnounceEnabled:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() _sectionInfoHasAnyAnnounceEnabled:v3];

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
    v8 = [(NCSpokenNotificationsAppDetailController *)self specifier];
    v9 = [v8 propertyForKey:@"BBSECTION_INFO_KEY"];

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
      v17 = [(NCSpokenNotificationsAppDetailController *)self title];
      v12 = [NSString stringWithFormat:v16, v17];
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
    v9 = [(NCSpokenNotificationsAppDetailController *)self title];
    v10 = [NSString stringWithFormat:v8, v9];
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

- (id)spokenOptionPriority:(id)a3
{
  v3 = [(NCSpokenNotificationsAppDetailController *)self specifier];
  v4 = [v3 propertyForKey:@"BBSECTION_INFO_KEY"];

  v5 = [v4 sectionInfoSettings];
  v6 = [v5 announcePriorityNotificationsSetting];

  v7 = [NSNumber numberWithInt:v6 == &dword_0 + 2];

  return v7;
}

- (void)setSpokenOptionPriority:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = [(NCSpokenNotificationsAppDetailController *)self specifier];
  v12 = [v6 propertyForKey:@"BBSECTION_INFO_KEY"];

  v7 = [v12 sectionInfoSettings];
  v8 = [v5 BOOLValue];

  if (v8)
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  [v7 setAnnouncePriorityNotificationsSetting:v9];
  [v12 setSectionInfoSettings:v7];
  v10 = +[NCSettingsGatewayController sharedInstance];
  v11 = [v12 sectionID];
  [v10 setSectionInfo:v12 forSectionID:v11];

  [(NCSpokenNotificationsAppDetailController *)self _signalDelegateSettingsChanged];
  [(NCSpokenNotificationsAppDetailController *)self _updateSwitchStates];
}

- (id)_spokenOptionsTimeSensitiveSpecifier
{
  spokenOptionsTimeSensitiveSpecifier = self->_spokenOptionsTimeSensitiveSpecifier;
  if (!spokenOptionsTimeSensitiveSpecifier)
  {
    v4 = [(NCSpokenNotificationsAppDetailController *)self specifier];
    v5 = [v4 propertyForKey:@"BBSECTION_INFO_KEY"];

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

- (id)spokenOptionsTimeSensitiveDMs:(id)a3
{
  v3 = [(NCSpokenNotificationsAppDetailController *)self specifier];
  v4 = [v3 propertyForKey:@"BBSECTION_INFO_KEY"];

  v5 = [v4 sectionInfoSettings];
  v6 = [v5 announceSetting];

  v7 = [NSNumber numberWithInt:v6 == &dword_0 + 2];

  return v7;
}

- (void)setSpokenOptionTimeSensitiveDMs:(id)a3 specifier:(id)a4
{
  v11 = a3;
  v5 = [(NCSpokenNotificationsAppDetailController *)self specifier];
  v6 = [v5 propertyForKey:@"BBSECTION_INFO_KEY"];

  v7 = [v6 sectionInfoSettings];
  if ([v7 announceSetting] != &dword_0 + 3)
  {
    if ([v11 BOOLValue])
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
    }

    [v7 setAnnounceSetting:v8];
  }

  [v6 setSectionInfoSettings:v7];
  v9 = +[NCSettingsGatewayController sharedInstance];
  v10 = [v6 sectionID];
  [v9 setSectionInfo:v6 forSectionID:v10];

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

- (id)spokenOptionsAllNotifications:(id)a3
{
  v3 = [(NCSpokenNotificationsAppDetailController *)self specifier];
  v4 = [v3 propertyForKey:@"BBSECTION_INFO_KEY"];

  v5 = [v4 sectionInfoSettings];
  v6 = [v5 announceSetting];

  v7 = [NSNumber numberWithInt:v6 == &dword_0 + 3];

  return v7;
}

- (void)setSpokenOptionAllNotifications:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = [(NCSpokenNotificationsAppDetailController *)self specifier];
  v11 = [v6 propertyForKey:@"BBSECTION_INFO_KEY"];

  v7 = [v11 sectionInfoSettings];
  v8 = [v5 BOOLValue];

  if (v8)
  {
    [v7 setAnnounceSetting:3];
    [v7 setAnnouncePriorityNotificationsSetting:1];
  }

  else
  {
    [v7 setAnnounceSetting:1];
  }

  [(NCSpokenNotificationsAppDetailController *)self _setTimeSensitiveAndPriorityEnabled:v8 ^ 1];
  [v11 setSectionInfoSettings:v7];
  v9 = +[NCSettingsGatewayController sharedInstance];
  v10 = [v11 sectionID];
  [v9 setSectionInfo:v11 forSectionID:v10];

  [(NCSpokenNotificationsAppDetailController *)self _signalDelegateSettingsChanged];
  [(NCSpokenNotificationsAppDetailController *)self _updateSwitchStates];
}

- (void)_setTimeSensitiveAndPriorityEnabled:(BOOL)a3
{
  v3 = a3;
  spokenOptionsPrioritySpecifier = self->_spokenOptionsPrioritySpecifier;
  v6 = [NSNumber numberWithBool:?];
  v7 = PSEnabledKey;
  [(PSSpecifier *)spokenOptionsPrioritySpecifier setProperty:v6 forKey:PSEnabledKey];

  spokenOptionsTimeSensitiveSpecifier = self->_spokenOptionsTimeSensitiveSpecifier;
  v9 = [NSNumber numberWithBool:v3];
  [(PSSpecifier *)spokenOptionsTimeSensitiveSpecifier setProperty:v9 forKey:v7];

  [(NCSpokenNotificationsAppDetailController *)self reloadSpecifier:self->_spokenOptionsPrioritySpecifier];
  v10 = self->_spokenOptionsTimeSensitiveSpecifier;

  [(NCSpokenNotificationsAppDetailController *)self reloadSpecifier:v10];
}

- (void)_signalDelegateSettingsChanged
{
  v3 = [(NCSpokenNotificationsAppDetailController *)self delegate];
  if (v3)
  {
    v6 = v3;
    v4 = [(NCSpokenNotificationsAppDetailController *)self specifier];
    v5 = [v4 identifier];
    [v6 didChangeSettingForSpokenNotificationsAppDetailController:self withSpecifierIdentifier:v5];

    v3 = v6;
  }
}

+ (BOOL)isDirectMessagesAnnounceSupportedForSectionInfo:(id)a3
{
  v3 = a3;
  v4 = [v3 scheduledDeliverySetting] != &dword_0 + 2 && objc_msgSend(v3, "directMessagesSetting") || objc_msgSend(v3, "scheduledDeliverySetting") == &dword_0 + 2 && objc_msgSend(v3, "directMessagesSetting") == &dword_0 + 2;

  return v4;
}

- (BOOL)_isTimeSensitiveAnnounceSupportedForSectionInfo:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() isTimeSensitiveAnnounceSupportedForSectionInfo:v3];

  return v4;
}

- (BOOL)_isDirectMessagesAnnounceSupportedForSectionInfo:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() isDirectMessagesAnnounceSupportedForSectionInfo:v3];

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

- (void)didChangeSettingForSpokenNotificationsAppDetailController:(id)a3 withSpecifierIdentifier:(id)a4
{
  [(NCSpokenNotificationsAppDetailController *)self reloadSpecifierID:a4];
  v7 = [(NCSpokenNotificationsAppDetailController *)self delegate];
  v5 = [(NCSpokenNotificationsAppDetailController *)self specifier];
  v6 = [v5 identifier];
  [v7 didChangeSettingForSpokenNotificationsAppDetailController:self withSpecifierIdentifier:v6];
}

@end