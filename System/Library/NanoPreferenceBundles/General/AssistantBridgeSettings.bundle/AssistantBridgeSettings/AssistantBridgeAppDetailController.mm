@interface AssistantBridgeAppDetailController
- (AssistantBridgeAppDetailController)init;
- (BOOL)appHasCustomSettingsWithBundleId:(id)id;
- (id)_bundleId;
- (id)_iOSBundleToMirrorWithBundleId:(id)id;
- (id)inAppShowSiriSuggestionsEnabled:(id)enabled;
- (id)specifiers;
- (void)dealloc;
- (void)setAppHasCustomSettingsWithBundleId:(id)id hasCustomSettings:(BOOL)settings;
- (void)setInAppShowSiriSuggestionsEnabled:(BOOL)enabled bundleId:(id)id;
- (void)setInAppShowSiriSuggestionsEnabled:(id)enabled specifier:(id)specifier;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation AssistantBridgeAppDetailController

- (AssistantBridgeAppDetailController)init
{
  v8.receiver = self;
  v8.super_class = AssistantBridgeAppDetailController;
  v2 = [(AssistantBridgeAppDetailController *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_notifyToken = -1;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_5C34;
    handler[3] = &unk_105D0;
    v7 = v2;
    if (notify_register_dispatch("com.apple.suggestions.settingsChanged", &v3->_notifyToken, &_dispatch_main_q, handler))
    {
      v4 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
      {
        sub_8D44(v4);
      }
    }
  }

  return v3;
}

- (void)dealloc
{
  notifyToken = self->_notifyToken;
  if (notifyToken != -1)
  {
    notify_cancel(notifyToken);
  }

  v4.receiver = self;
  v4.super_class = AssistantBridgeAppDetailController;
  [(AssistantBridgeAppDetailController *)&v4 dealloc];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v37 = [PSSpecifier groupSpecifierWithID:@"APPDETAIL_MIRROR_GROUP_ID"];
    [v37 setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"ASSISTANTBRIDGE_APPDETAIL_MIRROR" value:&stru_10AF0 table:@"AssistantBridgeSettings"];
    v7 = [PSSpecifier preferenceSpecifierNamed:v6 target:self set:0 get:0 detail:0 cell:3 edit:0];
    mirrorRadio = self->_mirrorRadio;
    self->_mirrorRadio = v7;

    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"ASSISTANTBRIDGE_APPDETAIL_CUSTOM" value:&stru_10AF0 table:@"AssistantBridgeSettings"];
    v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:self set:0 get:0 detail:0 cell:3 edit:0];
    customRadio = self->_customRadio;
    self->_customRadio = v11;

    v13 = [NSBundle bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"SIRIANDSEARCH_PERAPP_INAPP_HEADER" value:&stru_10AF0 table:@"AssistantBridgeSettings"];
    _appName = [(AssistantBridgeAppDetailController *)self _appName];
    v16 = [NSString stringWithFormat:v14, _appName];
    v17 = [PSSpecifier groupSpecifierWithName:v16];
    inAppGroup = self->_inAppGroup;
    self->_inAppGroup = v17;

    v19 = self->_inAppGroup;
    v20 = [NSBundle bundleForClass:objc_opt_class()];
    v21 = [v20 localizedStringForKey:@"SIRIANDSEARCH_PERAPP_INAPP_SHOWONLY_FOOTER" value:&stru_10AF0 table:@"AssistantBridgeSettings"];
    _appName2 = [(AssistantBridgeAppDetailController *)self _appName];
    v23 = [NSString stringWithFormat:v21, _appName2];
    [(PSSpecifier *)v19 setProperty:v23 forKey:PSFooterTextGroupKey];

    v24 = [NSBundle bundleForClass:objc_opt_class()];
    v25 = [v24 localizedStringForKey:@"SIRIANDSEARCH_PERAPP_INAPP_SHOWSUGGESTIONS_TOGGLE" value:&stru_10AF0 table:@"AssistantBridgeSettings"];
    v26 = [PSSpecifier preferenceSpecifierNamed:v25 target:self set:"setInAppShowSiriSuggestionsEnabled:specifier:" get:"inAppShowSiriSuggestionsEnabled:" detail:0 cell:6 edit:0];
    showToggle = self->_showToggle;
    self->_showToggle = v26;

    [(PSSpecifier *)self->_showToggle setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
    _bundleId = [(AssistantBridgeAppDetailController *)self _bundleId];
    LODWORD(v25) = [(AssistantBridgeAppDetailController *)self appHasCustomSettingsWithBundleId:_bundleId];

    if (v25)
    {
      [v37 setProperty:self->_customRadio forKey:PSRadioGroupCheckedSpecifierKey];
      v29 = self->_mirrorRadio;
      v39[0] = v37;
      v39[1] = v29;
      v30 = self->_inAppGroup;
      v39[2] = self->_customRadio;
      v39[3] = v30;
      v39[4] = self->_showToggle;
      v31 = v39;
      v32 = 5;
    }

    else
    {
      [v37 setProperty:self->_mirrorRadio forKey:PSRadioGroupCheckedSpecifierKey];
      v33 = self->_mirrorRadio;
      v38[0] = v37;
      v38[1] = v33;
      v38[2] = self->_customRadio;
      v31 = v38;
      v32 = 3;
    }

    v34 = [NSArray arrayWithObjects:v31 count:v32];
    v35 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v34;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(AssistantBridgeAppDetailController *)self indexForIndexPath:pathCopy];
  v9 = [*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:v8];
  identifier = [v9 identifier];
  identifier2 = [(PSSpecifier *)self->_mirrorRadio identifier];
  v12 = [identifier isEqualToString:identifier2];

  if (v12)
  {
    _bundleId = [(AssistantBridgeAppDetailController *)self _bundleId];
    [(AssistantBridgeAppDetailController *)self setAppHasCustomSettingsWithBundleId:_bundleId hasCustomSettings:0];

    showToggle = self->_showToggle;
    v23[0] = self->_inAppGroup;
    v23[1] = showToggle;
    v15 = [NSArray arrayWithObjects:v23 count:2];
    [(AssistantBridgeAppDetailController *)self removeContiguousSpecifiers:v15 animated:1];
LABEL_5:

    goto LABEL_6;
  }

  identifier3 = [v9 identifier];
  identifier4 = [(PSSpecifier *)self->_customRadio identifier];
  v18 = [identifier3 isEqualToString:identifier4];

  if (v18)
  {
    _bundleId2 = [(AssistantBridgeAppDetailController *)self _bundleId];
    [(AssistantBridgeAppDetailController *)self setAppHasCustomSettingsWithBundleId:_bundleId2 hasCustomSettings:1];

    v20 = self->_showToggle;
    v22[0] = self->_inAppGroup;
    v22[1] = v20;
    v15 = [NSArray arrayWithObjects:v22 count:2];
    [(AssistantBridgeAppDetailController *)self insertContiguousSpecifiers:v15 afterSpecifier:self->_customRadio animated:1];
    goto LABEL_5;
  }

LABEL_6:
  v21.receiver = self;
  v21.super_class = AssistantBridgeAppDetailController;
  [(AssistantBridgeAppDetailController *)&v21 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
}

- (id)inAppShowSiriSuggestionsEnabled:(id)enabled
{
  enabledCopy = enabled;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    sub_8E4C();
  }

  _bundleId = [(AssistantBridgeAppDetailController *)self _bundleId];
  v6 = CFPreferencesCopyAppValue(@"NanoAppCanShowSiriSuggestionsBlacklist", @"com.apple.suggestions");
  v7 = [v6 containsObject:_bundleId];

  v8 = [NSNumber numberWithBool:v7 ^ 1];

  return v8;
}

- (void)setInAppShowSiriSuggestionsEnabled:(id)enabled specifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];
  _bundleId = [(AssistantBridgeAppDetailController *)self _bundleId];
  [(AssistantBridgeAppDetailController *)self setInAppShowSiriSuggestionsEnabled:bOOLValue bundleId:_bundleId];
}

- (void)setInAppShowSiriSuggestionsEnabled:(BOOL)enabled bundleId:(id)id
{
  enabledCopy = enabled;
  idCopy = id;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    sub_8ECC();
  }

  v6 = idCopy;
  v7 = CFPreferencesCopyAppValue(@"NanoAppCanShowSiriSuggestionsBlacklist", @"com.apple.suggestions");
  v8 = v7;
  if (v7)
  {
    v9 = [v7 mutableCopy];
  }

  else
  {
    v9 = objc_opt_new();
  }

  v10 = v9;
  if (enabledCopy)
  {
    [v9 removeObject:v6];
  }

  else if (([v9 containsObject:v6] & 1) == 0)
  {
    [v10 addObject:v6];
  }

  CFPreferencesSetAppValue(@"NanoAppCanShowSiriSuggestionsBlacklist", v10, @"com.apple.suggestions");
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.suggestions.settingsChanged", 0, 0, 1u);

  v12 = [[NSSet alloc] initWithObjects:{@"NanoAppCanShowSiriSuggestionsBlacklist", 0}];
  v13 = objc_opt_new();
  [v13 synchronizeUserDefaultsDomain:@"com.apple.suggestions" keys:v12];
}

- (id)_bundleId
{
  specifier = [(AssistantBridgeAppDetailController *)self specifier];
  v3 = [specifier propertyForKey:PSIDKey];

  return v3;
}

- (BOOL)appHasCustomSettingsWithBundleId:(id)id
{
  idCopy = id;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    sub_8F40();
  }

  v4 = idCopy;
  v5 = CFPreferencesCopyAppValue(@"AppHasCustomBridgeSettings", @"com.apple.suggestions");
  v6 = [v5 containsObject:v4];

  return v6;
}

- (void)setAppHasCustomSettingsWithBundleId:(id)id hasCustomSettings:(BOOL)settings
{
  settingsCopy = settings;
  idCopy = id;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    sub_8FC0();
  }

  v7 = idCopy;
  v8 = CFPreferencesCopyAppValue(@"AppHasCustomBridgeSettings", @"com.apple.suggestions");
  v9 = v8;
  if (v8)
  {
    v10 = [v8 mutableCopy];
  }

  else
  {
    v10 = objc_opt_new();
  }

  v11 = v10;
  if (settingsCopy)
  {
    if (([v10 containsObject:v7] & 1) == 0)
    {
      [v11 addObject:v7];
    }
  }

  else
  {
    [v10 removeObject:v7];
  }

  CFPreferencesSetAppValue(@"AppHasCustomBridgeSettings", v11, @"com.apple.suggestions");
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.suggestions.settingsChanged", 0, 0, 1u);

  if (settingsCopy)
  {
    [(AssistantBridgeAppDetailController *)self setInAppShowSiriSuggestionsEnabled:1 bundleId:v7];
  }

  else
  {
    v13 = [(AssistantBridgeAppDetailController *)self _iOSBundleToMirrorWithBundleId:v7];
    v14 = CFPreferencesCopyAppValue(@"AppCanShowSiriSuggestionsBlacklist", @"com.apple.suggestions");
    v15 = [v14 containsObject:v13];

    [(AssistantBridgeAppDetailController *)self setInAppShowSiriSuggestionsEnabled:v15 ^ 1 bundleId:v7];
  }

  v16 = [[NSSet alloc] initWithObjects:{@"AppHasCustomBridgeSettings", 0}];
  v17 = objc_opt_new();
  [v17 synchronizeUserDefaultsDomain:@"com.apple.suggestions" keys:v16];
}

- (id)_iOSBundleToMirrorWithBundleId:(id)id
{
  idCopy = id;
  v6 = [&off_115B0 objectForKeyedSubscript:idCopy];
  if (!v6)
  {
    sub_9034(a2, self, idCopy);
  }

  return v6;
}

@end