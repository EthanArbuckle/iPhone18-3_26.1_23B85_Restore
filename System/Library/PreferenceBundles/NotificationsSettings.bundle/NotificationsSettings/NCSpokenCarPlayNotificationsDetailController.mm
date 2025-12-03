@interface NCSpokenCarPlayNotificationsDetailController
+ (BOOL)announceCarPlayEnabled;
+ (id)globalAnnounceCarPlaySetting:(id)setting;
+ (id)spokenCarPlayNotificationSpecifierNamed:(id)named;
- (NCSpokenCarPlayNotificationsDetailController)init;
- (NCSpokenCarPlayNotificationsDetailControllerDelegate)delegate;
- (id)_announceNewMessagesSpecifier;
- (id)_announceOptionSpecifierNamed:(id)named identifier:(id)identifier;
- (id)_announceOptionsGroupSpecifier;
- (id)_announceOptionsSectionSpecifiers;
- (id)_rememberPreviousSettingSpecifier;
- (id)_silenceNewMessagesSpecifier;
- (id)globalAnnounceCarPlaySetting:(id)setting;
- (id)specifiers;
- (void)_setAnnounceOption:(id)option;
- (void)_updateAnnounceOptionsAnimated:(BOOL)animated;
- (void)_updateAnnounceOptionsGroupSpecifiersAnimated:(BOOL)animated;
- (void)_updateAnnounceSwitchGroupSpecifierAnimated:(BOOL)animated;
- (void)controller:(id)controller announceNotificationsInCarPlayTemporarilyDisabledChanged:(BOOL)changed;
- (void)controller:(id)controller carPlayAnnounceEnablementTypeChanged:(int64_t)changed;
- (void)dealloc;
- (void)setGlobalAnnounceCarPlaySetting:(id)setting specifier:(id)specifier;
- (void)settingsGatewayDidUpdateGlobalSettings:(id)settings;
@end

@implementation NCSpokenCarPlayNotificationsDetailController

- (NCSpokenCarPlayNotificationsDetailController)init
{
  v8.receiver = self;
  v8.super_class = NCSpokenCarPlayNotificationsDetailController;
  v2 = [(NCSpokenCarPlayNotificationsDetailController *)&v8 init];
  if (v2)
  {
    v3 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v4 = [v3 localizedStringForKey:@"SPOKEN_NOTIFICATIONS_ANNOUNCE_DESTINATION_CARPLAY" value:&stru_4E3F0 table:@"NotificationsSettings"];
    [(NCSpokenCarPlayNotificationsDetailController *)v2 setTitle:v4];

    v5 = +[NCAssistantPreferencesController sharedInstance];
    [v5 addObserver:v2];

    v6 = +[NCSettingsGatewayController sharedInstance];
    [v6 addObserver:v2];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NCAssistantPreferencesController sharedInstance];
  [v3 removeObserver:self];

  v4 = +[NCSettingsGatewayController sharedInstance];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = NCSpokenCarPlayNotificationsDetailController;
  [(NCSpokenCarPlayNotificationsDetailController *)&v5 dealloc];
}

- (NCSpokenCarPlayNotificationsDetailControllerDelegate)delegate
{
  specifier = [(NCSpokenCarPlayNotificationsDetailController *)self specifier];
  v3 = [specifier propertyForKey:kNotificationsSettingsDetailControllerDelegate];

  return v3;
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  if (!*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers])
  {
    v4 = objc_alloc_init(NSMutableArray);
    announceMessagesInCarPlaySwitchGroupSpecifier = self->_announceMessagesInCarPlaySwitchGroupSpecifier;
    if (!announceMessagesInCarPlaySwitchGroupSpecifier)
    {
      v6 = [PSSpecifier groupSpecifierWithID:@"SPOKEN_NOTIFICATIONS_CARPLAY_ANNOUNCE_SWITCH_GROUP_ID"];
      v7 = self->_announceMessagesInCarPlaySwitchGroupSpecifier;
      self->_announceMessagesInCarPlaySwitchGroupSpecifier = v6;

      announceMessagesInCarPlaySwitchGroupSpecifier = self->_announceMessagesInCarPlaySwitchGroupSpecifier;
    }

    [v4 addObject:announceMessagesInCarPlaySwitchGroupSpecifier];
    v8 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v9 = [v8 localizedStringForKey:@"SPOKEN_NOTIFICATIONS_CARPLAY_ANNOUNCE_MESSAGES" value:&stru_4E3F0 table:@"NotificationsSettings"];
    v10 = [PSSpecifier preferenceSpecifierNamed:v9 target:self set:"setGlobalAnnounceCarPlaySetting:specifier:" get:"globalAnnounceCarPlaySetting:" detail:0 cell:6 edit:0];

    [v10 setIdentifier:@"SPOKEN_NOTIFICATIONS_CARPLAY_ANNOUNCE_SWITCH_ID"];
    [v4 bs_safeAddObject:v10];
    v11 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v4;
  }

  [(NCSpokenCarPlayNotificationsDetailController *)self _updateAnnounceSwitchGroupSpecifierAnimated:0];
  [(NCSpokenCarPlayNotificationsDetailController *)self _updateAnnounceOptionsGroupSpecifiersAnimated:0];
  v12 = *&self->PSListController_opaque[v3];

  return v12;
}

+ (id)spokenCarPlayNotificationSpecifierNamed:(id)named
{
  namedCopy = named;
  v5 = [PSSpecifier preferenceSpecifierNamed:namedCopy target:self set:0 get:"globalAnnounceCarPlaySetting:" detail:objc_opt_class() cell:2 edit:0];

  v6 = [NSMutableArray alloc];
  v7 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
  v8 = [v7 localizedStringForKey:@"SPOKEN_NOTIFICATIONS_ANNOUNCE_DESTINATION_CARPLAY_DISABLED" value:&stru_4E3F0 table:@"NotificationsSettings"];
  v14[0] = v8;
  v9 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
  v10 = [v9 localizedStringForKey:@"SPOKEN_NOTIFICATIONS_ANNOUNCE_DESTINATION_CARPLAY_ENABLED" value:&stru_4E3F0 table:@"NotificationsSettings"];
  v14[1] = v10;
  v11 = [NSArray arrayWithObjects:v14 count:2];
  v12 = [v6 initWithArray:v11];

  [v5 setValues:&off_51678 titles:v12];

  return v5;
}

+ (BOOL)announceCarPlayEnabled
{
  v2 = +[NCSettingsGatewayController sharedInstance];
  effectiveGlobalAnnounceCarPlaySetting = [v2 effectiveGlobalAnnounceCarPlaySetting];

  return effectiveGlobalAnnounceCarPlaySetting > 1;
}

+ (id)globalAnnounceCarPlaySetting:(id)setting
{
  announceCarPlayEnabled = [self announceCarPlayEnabled];

  return [NSNumber numberWithBool:announceCarPlayEnabled];
}

- (id)globalAnnounceCarPlaySetting:(id)setting
{
  settingCopy = setting;
  v4 = [objc_opt_class() globalAnnounceCarPlaySetting:settingCopy];

  return v4;
}

- (void)setGlobalAnnounceCarPlaySetting:(id)setting specifier:(id)specifier
{
  settingCopy = setting;
  v5 = +[NCSettingsGatewayController sharedInstance];
  effectiveGlobalAnnounceCarPlaySetting = [v5 effectiveGlobalAnnounceCarPlaySetting];

  if ([settingCopy BOOLValue])
  {
    v7 = 3;
  }

  else
  {
    v7 = 1;
  }

  if (effectiveGlobalAnnounceCarPlaySetting != v7)
  {
    if (effectiveGlobalAnnounceCarPlaySetting == &dword_0 + 1)
    {
      v8 = +[NCAssistantPreferencesController sharedInstance];
      [v8 clearAnnounceNotificationsInCarPlayTemporarilyDisabled];
    }

    v9 = +[NCSettingsGatewayController sharedInstance];
    [v9 setEffectiveGlobalAnnounceCarPlaySetting:v7];

    if ([settingCopy BOOLValue])
    {
      v10 = 4;
    }

    else
    {
      v10 = 1;
    }

    v11 = +[NCAssistantPreferencesController sharedInstance];
    [v11 setCarPlayAnnounceEnablementType:v10];
  }

  delegate = [(NCSpokenCarPlayNotificationsDetailController *)self delegate];
  [delegate didChangeSettingForSpokenCarPlayNotificationsDetailController:self];
}

- (void)_updateAnnounceOptionsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = +[NCAssistantPreferencesController sharedInstance];
  carPlayAnnounceEnablementType = [v5 carPlayAnnounceEnablementType];

  if (carPlayAnnounceEnablementType == &dword_4)
  {
    _rememberPreviousSettingSpecifier = [(NCSpokenCarPlayNotificationsDetailController *)self _rememberPreviousSettingSpecifier];
    v8 = @"SPOKEN_NOTIFICATIONS_CARPLAY_ANNOUNCE_OPTIONS_REMEMBER_PREVIOUS_SETTING_FOOTER";
    goto LABEL_8;
  }

  if (carPlayAnnounceEnablementType == (&dword_0 + 3))
  {
    _silenceNewMessagesSpecifier = [(NCSpokenCarPlayNotificationsDetailController *)self _silenceNewMessagesSpecifier];
    goto LABEL_6;
  }

  if (carPlayAnnounceEnablementType == (&dword_0 + 2))
  {
    _silenceNewMessagesSpecifier = [(NCSpokenCarPlayNotificationsDetailController *)self _announceNewMessagesSpecifier];
LABEL_6:
    _rememberPreviousSettingSpecifier = _silenceNewMessagesSpecifier;
    v8 = @"SPOKEN_NOTIFICATIONS_CARPLAY_ANNOUNCE_OPTIONS_ANNOUNCE_OR_SILENCE_FOOTER";
LABEL_8:
    v9 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v10 = [v9 localizedStringForKey:v8 value:&stru_4E3F0 table:@"NotificationsSettings"];

    goto LABEL_10;
  }

  _rememberPreviousSettingSpecifier = 0;
  v10 = 0;
LABEL_10:
  _announceOptionsGroupSpecifier = [(NCSpokenCarPlayNotificationsDetailController *)self _announceOptionsGroupSpecifier];
  [_announceOptionsGroupSpecifier setProperty:_rememberPreviousSettingSpecifier forKey:PSRadioGroupCheckedSpecifierKey];

  _announceOptionsGroupSpecifier2 = [(NCSpokenCarPlayNotificationsDetailController *)self _announceOptionsGroupSpecifier];
  [_announceOptionsGroupSpecifier2 setProperty:v10 forKey:PSFooterTextGroupKey];

  _announceOptionsGroupSpecifier3 = [(NCSpokenCarPlayNotificationsDetailController *)self _announceOptionsGroupSpecifier];
  [(NCSpokenCarPlayNotificationsDetailController *)self reloadSpecifier:_announceOptionsGroupSpecifier3 animated:animatedCopy];
}

- (void)_setAnnounceOption:(id)option
{
  identifier = [option identifier];
  if ([identifier isEqualToString:@"SPOKEN_NOTIFICATIONS_CARPLAY_ANNOUNCE_OPTIONS_ANNOUNCE_NEW_ID"])
  {
    v3 = 2;
  }

  else if ([identifier isEqualToString:@"SPOKEN_NOTIFICATIONS_CARPLAY_ANNOUNCE_OPTIONS_SILENCE_NEW_ID"])
  {
    v3 = 3;
  }

  else if ([identifier isEqualToString:@"SPOKEN_NOTIFICATIONS_CARPLAY_ANNOUNCE_OPTIONS_REMEMBER_LAST_ID"])
  {
    v3 = 4;
  }

  else
  {
    v3 = 1;
  }

  v4 = +[NCAssistantPreferencesController sharedInstance];
  [v4 setCarPlayAnnounceEnablementType:v3];
}

- (void)_updateAnnounceSwitchGroupSpecifierAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ([objc_opt_class() announceCarPlayEnabled])
  {
    v5 = +[NCAssistantPreferencesController sharedInstance];
    announceNotificationsInCarPlayTemporarilyDisabled = [v5 announceNotificationsInCarPlayTemporarilyDisabled];

    v7 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v8 = v7;
    if (announceNotificationsInCarPlayTemporarilyDisabled)
    {
      v9 = @"SPOKEN_NOTIFICATIONS_CARPLAY_ANNOUNCE_MESSAGES_FOOTER_SILENCE_NEW_MESSAGES";
    }

    else
    {
      v9 = @"SPOKEN_NOTIFICATIONS_CARPLAY_ANNOUNCE_MESSAGES_FOOTER_ANNOUNCE_NEW_MESSAGES";
    }
  }

  else
  {
    v7 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v8 = v7;
    v9 = @"SPOKEN_NOTIFICATIONS_CARPLAY_ANNOUNCE_MESSAGES_FOOTER_DISABLED";
  }

  v10 = [v7 localizedStringForKey:v9 value:&stru_4E3F0 table:@"NotificationsSettings"];

  [(PSSpecifier *)self->_announceMessagesInCarPlaySwitchGroupSpecifier setProperty:v10 forKey:PSFooterTextGroupKey];
  [(NCSpokenCarPlayNotificationsDetailController *)self reloadSpecifier:self->_announceMessagesInCarPlaySwitchGroupSpecifier animated:animatedCopy];
}

- (void)_updateAnnounceOptionsGroupSpecifiersAnimated:(BOOL)animated
{
  [(NCSpokenCarPlayNotificationsDetailController *)self _updateAnnounceOptionsAnimated:?];
  if ([objc_opt_class() announceCarPlayEnabled] && (v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers], -[NCSpokenCarPlayNotificationsDetailController _announceOptionsGroupSpecifier](self, "_announceOptionsGroupSpecifier"), v5 = objc_claimAutoreleasedReturnValue(), LOBYTE(v4) = objc_msgSend(v4, "containsObject:", v5), v5, (v4 & 1) == 0))
  {
    _announceOptionsSectionSpecifiers = [(NCSpokenCarPlayNotificationsDetailController *)self _announceOptionsSectionSpecifiers];
    [NCSpokenCarPlayNotificationsDetailController addSpecifiersFromArray:"addSpecifiersFromArray:animated:" animated:?];
  }

  else
  {
    if ([objc_opt_class() announceCarPlayEnabled])
    {
      return;
    }

    _announceOptionsSectionSpecifiers = [(NCSpokenCarPlayNotificationsDetailController *)self _announceOptionsSectionSpecifiers];
    [NCSpokenCarPlayNotificationsDetailController removeContiguousSpecifiers:"removeContiguousSpecifiers:animated:" animated:?];
  }
}

- (id)_announceOptionsSectionSpecifiers
{
  _announceOptionsGroupSpecifier = [(NCSpokenCarPlayNotificationsDetailController *)self _announceOptionsGroupSpecifier];
  v9[0] = _announceOptionsGroupSpecifier;
  _announceNewMessagesSpecifier = [(NCSpokenCarPlayNotificationsDetailController *)self _announceNewMessagesSpecifier];
  v9[1] = _announceNewMessagesSpecifier;
  _silenceNewMessagesSpecifier = [(NCSpokenCarPlayNotificationsDetailController *)self _silenceNewMessagesSpecifier];
  v9[2] = _silenceNewMessagesSpecifier;
  _rememberPreviousSettingSpecifier = [(NCSpokenCarPlayNotificationsDetailController *)self _rememberPreviousSettingSpecifier];
  v9[3] = _rememberPreviousSettingSpecifier;
  v7 = [NSArray arrayWithObjects:v9 count:4];

  return v7;
}

- (id)_announceOptionsGroupSpecifier
{
  announceOptionsGroupSpecifier = self->_announceOptionsGroupSpecifier;
  if (!announceOptionsGroupSpecifier)
  {
    v4 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v5 = [v4 localizedStringForKey:@"SPOKEN_NOTIFICATIONS_CARPLAY_ANNOUNCE_OPTIONS_GROUP" value:&stru_4E3F0 table:@"NotificationsSettings"];
    v6 = [PSSpecifier groupSpecifierWithID:@"SPOKEN_NOTIFICATIONS_CARPLAY_ANNOUNCE_OPTIONS_GROUP_ID" name:v5];
    v7 = self->_announceOptionsGroupSpecifier;
    self->_announceOptionsGroupSpecifier = v6;

    [(PSSpecifier *)self->_announceOptionsGroupSpecifier setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
    announceOptionsGroupSpecifier = self->_announceOptionsGroupSpecifier;
  }

  return announceOptionsGroupSpecifier;
}

- (id)_announceNewMessagesSpecifier
{
  announceNewMessagesSpecifier = self->_announceNewMessagesSpecifier;
  if (!announceNewMessagesSpecifier)
  {
    v4 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v5 = [v4 localizedStringForKey:@"SPOKEN_NOTIFICATIONS_CARPLAY_ANNOUNCE_OPTIONS_ANNOUNCE_NEW_MESSAGES" value:&stru_4E3F0 table:@"NotificationsSettings"];
    v6 = [(NCSpokenCarPlayNotificationsDetailController *)self _announceOptionSpecifierNamed:v5 identifier:@"SPOKEN_NOTIFICATIONS_CARPLAY_ANNOUNCE_OPTIONS_ANNOUNCE_NEW_ID"];
    v7 = self->_announceNewMessagesSpecifier;
    self->_announceNewMessagesSpecifier = v6;

    announceNewMessagesSpecifier = self->_announceNewMessagesSpecifier;
  }

  return announceNewMessagesSpecifier;
}

- (id)_silenceNewMessagesSpecifier
{
  silenceNewMessagesSpecifier = self->_silenceNewMessagesSpecifier;
  if (!silenceNewMessagesSpecifier)
  {
    v4 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v5 = [v4 localizedStringForKey:@"SPOKEN_NOTIFICATIONS_CARPLAY_ANNOUNCE_OPTIONS_SILENCE_NEW_MESSAGES" value:&stru_4E3F0 table:@"NotificationsSettings"];
    v6 = [(NCSpokenCarPlayNotificationsDetailController *)self _announceOptionSpecifierNamed:v5 identifier:@"SPOKEN_NOTIFICATIONS_CARPLAY_ANNOUNCE_OPTIONS_SILENCE_NEW_ID"];
    v7 = self->_silenceNewMessagesSpecifier;
    self->_silenceNewMessagesSpecifier = v6;

    silenceNewMessagesSpecifier = self->_silenceNewMessagesSpecifier;
  }

  return silenceNewMessagesSpecifier;
}

- (id)_rememberPreviousSettingSpecifier
{
  rememberPreviousSettingSpecifier = self->_rememberPreviousSettingSpecifier;
  if (!rememberPreviousSettingSpecifier)
  {
    v4 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v5 = [v4 localizedStringForKey:@"SPOKEN_NOTIFICATIONS_CARPLAY_ANNOUNCE_OPTIONS_REMEMBER_PREVIOUS_SETTING" value:&stru_4E3F0 table:@"NotificationsSettings"];
    v6 = [(NCSpokenCarPlayNotificationsDetailController *)self _announceOptionSpecifierNamed:v5 identifier:@"SPOKEN_NOTIFICATIONS_CARPLAY_ANNOUNCE_OPTIONS_REMEMBER_LAST_ID"];
    v7 = self->_rememberPreviousSettingSpecifier;
    self->_rememberPreviousSettingSpecifier = v6;

    rememberPreviousSettingSpecifier = self->_rememberPreviousSettingSpecifier;
  }

  return rememberPreviousSettingSpecifier;
}

- (id)_announceOptionSpecifierNamed:(id)named identifier:(id)identifier
{
  identifierCopy = identifier;
  v7 = [PSSpecifier preferenceSpecifierNamed:named target:self set:0 get:0 detail:0 cell:3 edit:0];
  [v7 setIdentifier:identifierCopy];

  [v7 setButtonAction:"_setAnnounceOption:"];

  return v7;
}

- (void)controller:(id)controller carPlayAnnounceEnablementTypeChanged:(int64_t)changed
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_13D50;
  block[3] = &unk_4D388;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)controller:(id)controller announceNotificationsInCarPlayTemporarilyDisabledChanged:(BOOL)changed
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_13DD0;
  block[3] = &unk_4D388;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)settingsGatewayDidUpdateGlobalSettings:(id)settings
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_13E50;
  block[3] = &unk_4D388;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

@end