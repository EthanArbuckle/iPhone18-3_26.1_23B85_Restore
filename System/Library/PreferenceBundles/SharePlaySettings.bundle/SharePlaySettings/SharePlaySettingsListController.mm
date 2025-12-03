@interface SharePlaySettingsListController
- (PSSpecifier)mainSwitchSpecifier;
- (id)iconImageForBundleIdentifier:(id)identifier;
- (id)mainSwitchOn:(id)on;
- (id)providerForSpecifier:(id)specifier;
- (id)providerSpecifiers;
- (id)readPreferenceValue:(id)value;
- (id)specifiers;
- (void)emitNavigationEvent;
- (void)refreshView;
- (void)setMainSwitchOn:(id)on specifier:(id)specifier;
- (void)setPreferenceValue:(id)value specifier:(id)specifier;
- (void)setSpecifier:(id)specifier;
- (void)sharePlayController:(id)controller didChangeProvider:(id)provider;
- (void)sharePlayController:(id)controller didRemoveProvider:(id)provider;
@end

@implementation SharePlaySettingsListController

- (id)providerSpecifiers
{
  v27 = +[NSMutableArray array];
  providerController = [(SharePlaySettingsListController *)self providerController];
  providers = [providerController providers];

  if ([providers count])
  {
    v24 = providers;
    v5 = [SharePlaySettingsStrings localizedStringForKey:@"LIST_CONTROLLER_PROVIDERS_GROUP_SPECIFIER_TITLE"];
    v6 = [PSSpecifier groupSpecifierWithName:v5];

    v7 = [SharePlaySettingsStrings localizedStringForKey:@"LIST_CONTROLLER_PROVIDERS_GROUP_SPECIFIER_DETAIL"];
    [v6 setProperty:v7 forKey:PSFooterTextGroupKey];

    v23 = v6;
    [v27 addObject:v6];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    providerController2 = [(SharePlaySettingsListController *)self providerController];
    providers2 = [providerController2 providers];

    obj = providers2;
    v10 = [providers2 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v10)
    {
      v11 = v10;
      v26 = *v29;
      v12 = PSIconImageKey;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v29 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v28 + 1) + 8 * i);
          localizedName = [v14 localizedName];
          v16 = [PSSpecifier preferenceSpecifierNamed:localizedName target:self set:"setPreferenceValue:specifier:" get:"readPreferenceValue:" detail:0 cell:6 edit:0];

          bundleIdentifier = [v14 bundleIdentifier];
          [v16 setIdentifier:bundleIdentifier];

          bundleIdentifier2 = [v14 bundleIdentifier];
          v19 = [(SharePlaySettingsListController *)self iconImageForBundleIdentifier:bundleIdentifier2];
          [v16 setProperty:v19 forKey:v12];

          v20 = objc_opt_class();
          v21 = NSStringFromClass(v20);
          [v16 setProperty:v14 forKey:v21];

          [v27 addObject:v16];
        }

        v11 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v11);
    }

    providers = v24;
  }

  return v27;
}

- (PSSpecifier)mainSwitchSpecifier
{
  mainSwitchSpecifier = self->_mainSwitchSpecifier;
  if (!mainSwitchSpecifier)
  {
    v4 = [SharePlaySettingsStrings localizedStringForKey:@"LIST_CONTROLLER_MAIN_SWITCH_SPECIFIER_TITLE"];
    v5 = [PSSpecifier preferenceSpecifierNamed:v4 target:self set:"setMainSwitchOn:specifier:" get:"mainSwitchOn:" detail:0 cell:6 edit:0];
    v6 = self->_mainSwitchSpecifier;
    self->_mainSwitchSpecifier = v5;

    mainSwitchSpecifier = self->_mainSwitchSpecifier;
  }

  return mainSwitchSpecifier;
}

- (id)mainSwitchOn:(id)on
{
  providerController = [(SharePlaySettingsListController *)self providerController];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [providerController isEnabled]);

  return v4;
}

- (void)setMainSwitchOn:(id)on specifier:(id)specifier
{
  bOOLValue = [on BOOLValue];
  v6 = SharePlaySettingsLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"DISABLED";
    if (bOOLValue)
    {
      v7 = @"ENABLED";
    }

    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Setting SharePlay service to %@.", &v9, 0xCu);
  }

  providerController = [(SharePlaySettingsListController *)self providerController];
  [providerController setEnabled:bOOLValue];
}

- (id)readPreferenceValue:(id)value
{
  v3 = [(SharePlaySettingsListController *)self providerForSpecifier:value];
  v4 = v3;
  if (v3)
  {
    isEnabled = [v3 isEnabled];
    v6 = SharePlaySettingsLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      localizedName = [v4 localizedName];
      v8 = localizedName;
      v9 = @"DISABLED";
      if (isEnabled)
      {
        v9 = @"ENABLED";
      }

      v12 = 138412546;
      v13 = localizedName;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Getting SharePlay provider %@ as %@", &v12, 0x16u);
    }

    v10 = [NSNumber numberWithBool:isEnabled];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)setPreferenceValue:(id)value specifier:(id)specifier
{
  valueCopy = value;
  v7 = [(SharePlaySettingsListController *)self providerForSpecifier:specifier];
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      bOOLValue = [valueCopy BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }

    v9 = SharePlaySettingsLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      bundleIdentifier = [v7 bundleIdentifier];
      v11 = bundleIdentifier;
      v12 = @"DISABLED";
      if (bOOLValue)
      {
        v12 = @"ENABLED";
      }

      v14 = 138412546;
      v15 = bundleIdentifier;
      v16 = 2112;
      v17 = v12;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Setting SharePlay provider %@ to %@", &v14, 0x16u);
    }

    providerController = [(SharePlaySettingsListController *)self providerController];
    [providerController setSharePlayEnabled:bOOLValue forProvider:v7];
  }
}

- (void)emitNavigationEvent
{
  specifier = [(SharePlaySettingsListController *)self specifier];
  target = [specifier target];
  parentListController = [target parentListController];
  specifierID = [parentListController specifierID];

  if ([specifierID isEqualToString:@"com.apple.preferences.facetime"])
  {
    v24 = TUBundleIdentifierFaceTimeApplication;
    v25 = [NSString stringWithFormat:@"settings-navigation://com.apple.Settings.Apps/%@/%@", TUBundleIdentifierFaceTimeApplication, @"SHAREPLAY_SETTINGS_GROUP"];
    v23 = [NSURL URLWithString:v25];
    v7 = [_NSLocalizedStringResource alloc];
    v8 = +[NSLocale currentLocale];
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    bundleURL = [v9 bundleURL];
    v11 = [v7 initWithKey:@"SharePlay" table:0 locale:v8 bundleURL:bundleURL];

    v12 = [_NSLocalizedStringResource alloc];
    v13 = +[NSLocale currentLocale];
    v14 = [NSBundle bundleForClass:objc_opt_class()];
    bundleURL2 = [v14 bundleURL];
    v16 = [v12 initWithKey:@"Apps" table:0 locale:v13 bundleURL:bundleURL2];

    v17 = [_NSLocalizedStringResource alloc];
    v18 = +[NSLocale currentLocale];
    v19 = [NSBundle bundleForClass:objc_opt_class()];
    bundleURL3 = [v19 bundleURL];
    v21 = [v17 initWithKey:@"FaceTime" table:0 locale:v18 bundleURL:bundleURL3];

    v26[0] = v16;
    v26[1] = v21;
    v22 = [NSArray arrayWithObjects:v26 count:2];
    [(SharePlaySettingsListController *)self pe_emitNavigationEventForApplicationSettingsWithApplicationBundleIdentifier:v24 title:v11 localizedNavigationComponents:v22 deepLink:v23];
  }
}

- (void)setSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v15.receiver = self;
  v15.super_class = SharePlaySettingsListController;
  specifier = [(SharePlaySettingsListController *)&v15 specifier];

  if (specifier != specifierCopy)
  {
    v14.receiver = self;
    v14.super_class = SharePlaySettingsListController;
    [(SharePlaySettingsListController *)&v14 setSpecifier:specifierCopy];
    sharePlayProviderController = [specifierCopy sharePlayProviderController];
    v7 = sharePlayProviderController;
    if (sharePlayProviderController)
    {
      v8 = sharePlayProviderController;
    }

    else
    {
      v8 = objc_alloc_init(SharePlayProviderController);
    }

    v9 = v8;

    [(SharePlayProviderController *)v9 addDelegate:self queue:&_dispatch_main_q];
    sharePlay_userConfiguration = [specifierCopy sharePlay_userConfiguration];
    v11 = sharePlay_userConfiguration;
    if (sharePlay_userConfiguration)
    {
      v12 = sharePlay_userConfiguration;
    }

    else
    {
      v12 = objc_alloc_init(TUUserConfiguration);
    }

    v13 = v12;

    [v13 addDelegate:self queue:&_dispatch_main_q];
    [(SharePlaySettingsListController *)self setProviderController:v9];
    [(SharePlaySettingsListController *)self setUserConfiguration:v13];
  }
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = objc_alloc_init(NSMutableArray);
    mainSwitchSpecifier = [(SharePlaySettingsListController *)self mainSwitchSpecifier];
    [v5 addObject:mainSwitchSpecifier];

    providerController = [(SharePlaySettingsListController *)self providerController];
    isEnabled = [providerController isEnabled];

    if (isEnabled)
    {
      providerSpecifiers = [(SharePlaySettingsListController *)self providerSpecifiers];
      [v5 addObjectsFromArray:providerSpecifiers];
    }

    v10 = [v5 copy];
    v11 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v10;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (void)refreshView
{
  if ([(SharePlaySettingsListController *)self isViewLoaded])
  {

    [(SharePlaySettingsListController *)self reloadSpecifiers];
  }
}

- (id)providerForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [specifierCopy propertyForKey:v5];

  if (v6 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)sharePlayController:(id)controller didChangeProvider:(id)provider
{
  providerCopy = provider;
  bundleIdentifier = [providerCopy bundleIdentifier];
  v6 = [(SharePlaySettingsListController *)self specifierForID:bundleIdentifier];

  if (v6)
  {
    bundleIdentifier2 = [providerCopy bundleIdentifier];
    v8 = [(SharePlaySettingsListController *)self iconImageForBundleIdentifier:bundleIdentifier2];
    [v6 setProperty:v8 forKey:PSIconImageKey];

    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [v6 setProperty:providerCopy forKey:v10];

    [(SharePlaySettingsListController *)self reloadSpecifier:v6];
  }

  else
  {
    [(SharePlaySettingsListController *)self refreshView];
  }
}

- (void)sharePlayController:(id)controller didRemoveProvider:(id)provider
{
  bundleIdentifier = [provider bundleIdentifier];
  v7 = [(SharePlaySettingsListController *)self specifierForID:bundleIdentifier];

  v6 = v7;
  if (v7)
  {
    [(SharePlaySettingsListController *)self removeSpecifier:v7 animated:1];
    v6 = v7;
  }
}

- (id)iconImageForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  cachedIconsByBundleIdentifier = self->_cachedIconsByBundleIdentifier;
  if (!cachedIconsByBundleIdentifier)
  {
    v6 = +[NSMutableDictionary dictionary];
    v7 = self->_cachedIconsByBundleIdentifier;
    self->_cachedIconsByBundleIdentifier = v6;

    cachedIconsByBundleIdentifier = self->_cachedIconsByBundleIdentifier;
  }

  v8 = [(NSMutableDictionary *)cachedIconsByBundleIdentifier objectForKeyedSubscript:identifierCopy];
  if (!v8)
  {
    v9 = +[UIScreen mainScreen];
    [v9 scale];
    v8 = [UIImage _applicationIconImageForBundleIdentifier:identifierCopy format:0 scale:?];

    [(NSMutableDictionary *)self->_cachedIconsByBundleIdentifier setObject:v8 forKeyedSubscript:identifierCopy];
  }

  return v8;
}

@end