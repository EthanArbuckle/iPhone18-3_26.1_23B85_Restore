@interface SafariContentBlockerPermissionsSettingsController
- (SafariContentBlockerPermissionsSettingsController)init;
- (id)_contentBlockerManager;
- (id)_enabledStateOfContentBlockerForSpecifier:(id)specifier;
- (id)_enabledStateOfContentBlockerInPrivateBrowsingForSpecifier:(id)specifier;
- (id)_hostAppDisplayName:(id)name;
- (id)_specifiersForEnablingExtension;
- (id)specifiers;
- (void)_reloadSpecifiersSoon;
- (void)_setContentBlockerEnabled:(id)enabled forSpecifier:(id)specifier;
- (void)_setContentBlockerEnabledInPrivateBrowsing:(id)browsing forSpecifier:(id)specifier;
- (void)_setExtensionIfNeeded;
@end

@implementation SafariContentBlockerPermissionsSettingsController

- (SafariContentBlockerPermissionsSettingsController)init
{
  v7.receiver = self;
  v7.super_class = SafariContentBlockerPermissionsSettingsController;
  v2 = [(SafariContentBlockerPermissionsSettingsController *)&v7 init];
  if (v2)
  {
    v3 = +[NSDistributedNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"_contentBlockerEnabledStateDidChange:" name:SFContentBlockerEnabledStateDidChangeDistributedNotification object:0];

    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v2 selector:"_managedExtensionsStateDidChange:" name:WBSManagedExtensionsStateDidChangeNotification object:0];

    v5 = v2;
  }

  return v2;
}

- (id)specifiers
{
  [(SafariContentBlockerPermissionsSettingsController *)self _setExtensionIfNeeded];
  _contentBlockerManager = [(SafariContentBlockerPermissionsSettingsController *)self _contentBlockerManager];
  navigationController = [(SafariContentBlockerPermissionsSettingsController *)self navigationController];
  extensions = [_contentBlockerManager extensions];
  if ([extensions containsObject:self->_extension])
  {
  }

  else
  {
    viewIfLoaded = [(SafariContentBlockerPermissionsSettingsController *)self viewIfLoaded];
    window = [viewIfLoaded window];

    if (window)
    {
      v8 = [navigationController popViewControllerAnimated:1];
      v9 = 0;
      goto LABEL_10;
    }
  }

  v10 = OBJC_IVAR___PSListController__specifiers;
  v11 = *&self->super.PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (v11)
  {
    v9 = v11;
  }

  else
  {
    v12 = +[NSMutableArray array];
    v32 = [PSSpecifier groupSpecifierWithID:@"EXTENSION_INFO_GROUP"];
    [v12 addObject:v32];
    v30 = [_contentBlockerManager displayNameForExtension:self->_extension];
    v35 = [PSSpecifier preferenceSpecifierNamed:"preferenceSpecifierNamed:target:set:get:detail:cell:edit:" target:0 set:? get:? detail:? cell:? edit:?];
    _plugIn = [(NSExtension *)self->_extension _plugIn];
    uuid = [_plugIn uuid];
    v15 = [LSPlugInKitProxy pluginKitProxyForUUID:uuid];

    v31 = v15;
    v33 = [UIImage _iconForResourceProxy:v15 format:0];
    [v35 setProperty:? forKey:?];
    [v35 setUserInfo:self->_extension];
    [v12 addObject:v35];
    v16 = SafariSettingsLocalizedString(@"App", @"Extensions");
    v17 = [PSSpecifier preferenceSpecifierNamed:v16 target:self set:0 get:"_hostAppDisplayName:" detail:0 cell:4 edit:0];
    [v12 addObject:v17];

    safari_humanReadableDescription = [(NSExtension *)self->_extension safari_humanReadableDescription];
    if ([safari_humanReadableDescription length])
    {
      v18 = [PSSpecifier preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:-1 edit:0];
      [v18 setProperty:@"DESCRIPTION" forKey:PSIDKey];
      v36[0] = @"title";
      v19 = SafariSettingsLocalizedString(@"Description", @"Extensions");
      v36[1] = @"subtitle";
      v37[0] = v19;
      v37[1] = safari_humanReadableDescription;
      v20 = [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:2];
      [v18 setUserInfo:v20];

      [v18 setProperty:objc_opt_class() forKey:PSCellClassKey];
      [v12 addObject:v18];
    }

    _specifiersForEnablingExtension = [(SafariContentBlockerPermissionsSettingsController *)self _specifiersForEnablingExtension];
    [v12 addObjectsFromArray:_specifiersForEnablingExtension];

    v22 = [SafariExtensionPermissionsExplanation alloc];
    extension = self->_extension;
    v24 = [_contentBlockerManager displayNameForExtension:extension];
    v25 = [(SafariExtensionPermissionsExplanation *)v22 initWithContentBlocker:extension withDisplayName:v24];
    specifiers = [(SafariExtensionPermissionsExplanation *)v25 specifiers];
    [v12 addObjectsFromArray:specifiers];

    v27 = [v12 copy];
    v28 = *&self->super.PSListController_opaque[v10];
    *&self->super.PSListController_opaque[v10] = v27;

    v9 = *&self->super.PSListController_opaque[v10];
  }

LABEL_10:

  return v9;
}

- (id)_specifiersForEnablingExtension
{
  v49 = [PSSpecifier groupSpecifierWithID:@"EXTENSION_DEFAULT_PROFILE_GROUP"];
  v3 = [NSMutableArray arrayWithObject:v49];
  v4 = SafariSettingsLocalizedString(@"Allow Extension", @"Extensions");
  v50 = [PSSpecifier preferenceSpecifierNamed:"preferenceSpecifierNamed:target:set:get:detail:cell:edit:" target:v4 set:self get:0 detail:? cell:? edit:?];

  _contentBlockerManager = [(SafariContentBlockerPermissionsSettingsController *)self _contentBlockerManager];
  webExtensionsController = [_contentBlockerManager webExtensionsController];
  v48 = [webExtensionsController composedIdentifierForExtensionStateForExtension:self->_extension];

  v7 = +[WBSManagedExtensionsController sharedController];
  v8 = [v7 managedExtensionStateForComposedIdentifier:v48];

  if (v8)
  {
    v9 = _WBSLocalizedString();
    [v49 setProperty:v9 forKey:PSFooterTextGroupKey];
  }

  v10 = [NSNumber numberWithBool:v8 == 0];
  v53 = PSEnabledKey;
  [v50 setProperty:v10 forKey:?];

  extension = self->_extension;
  v63[0] = @"Extension";
  v63[1] = @"ProfileServerID";
  v64[0] = extension;
  v64[1] = WBSDefaultProfileIdentifier;
  v12 = [NSDictionary dictionaryWithObjects:v64 forKeys:v63 count:2];
  v54 = v8;
  [v50 setUserInfo:v12];

  [v3 addObject:v50];
  _contentBlockerManager2 = [(SafariContentBlockerPermissionsSettingsController *)self _contentBlockerManager];
  v47 = [_contentBlockerManager2 extensionIsEnabled:self->_extension];

  if (v47)
  {
    v14 = +[WBSManagedExtensionsController sharedController];
    v15 = [v14 managedExtensionPrivateBrowsingStateForComposedIdentifier:v48];

    if (v8 == 0 && v15 == 0)
    {
      v16 = 0;
    }

    else
    {
      v16 = [PSSpecifier groupSpecifierWithID:@"EXTENSION_PRIVATE_BROWSING_GROUP"];
      [v3 addObject:v16];
    }

    v17 = SafariSettingsLocalizedString(@"Allow in Private Browsing", @"Extensions");
    v18 = [PSSpecifier preferenceSpecifierNamed:v17 target:self set:"_setContentBlockerEnabledInPrivateBrowsing:forSpecifier:" get:"_enabledStateOfContentBlockerInPrivateBrowsingForSpecifier:" detail:0 cell:6 edit:0];

    [v18 setObject:&__kCFBooleanTrue forKeyedSubscript:PSAllowMultilineTitleKey];
    [v18 setUserInfo:self->_extension];
    if (v15)
    {
      [v18 setProperty:&__kCFBooleanFalse forKey:v53];
      v19 = _WBSLocalizedString();
      [v16 setProperty:v19 forKey:PSFooterTextGroupKey];
    }

    [v3 addObject:v18];
  }

  v20 = +[SafariSettingsController tabGroupManager];
  namedProfiles = [v20 namedProfiles];
  v22 = [namedProfiles count] == 0;

  if (v22)
  {
    v43 = [v3 copy];
  }

  else
  {
    v55 = +[NSMutableArray array];

    v45 = SafariSettingsLocalizedString(@"Allow Extension In Title (Extensions)", @"Extensions");
    v46 = [PSSpecifier groupSpecifierWithID:@"EXTENSION_PROFILES_GROUP" name:?];
    if (v54)
    {
      v23 = _WBSLocalizedString();
      [v46 setProperty:v23 forKey:PSFooterTextGroupKey];
    }

    [v55 addObject:v46];
    v24 = +[SafariSettingsController tabGroupManager];
    defaultProfile = [v24 defaultProfile];
    obja = [NSArray arrayWithObject:defaultProfile];

    v26 = +[SafariSettingsController tabGroupManager];
    namedProfiles2 = [v26 namedProfiles];
    v28 = [obja arrayByAddingObjectsFromArray:namedProfiles2];

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    obj = v28;
    v29 = [obj countByEnumeratingWithState:&v56 objects:v62 count:16];
    if (v29)
    {
      v30 = *v57;
      v31 = PSAllowMultilineTitleKey;
      do
      {
        for (i = 0; i != v29; i = i + 1)
        {
          if (*v57 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v33 = *(*(&v56 + 1) + 8 * i);
          title = [v33 title];
          v35 = [PSSpecifier preferenceSpecifierNamed:title target:self set:"_setContentBlockerEnabled:forSpecifier:" get:"_enabledStateOfContentBlockerForSpecifier:" detail:0 cell:6 edit:0];

          [v35 setObject:&__kCFBooleanTrue forKeyedSubscript:v31];
          v36 = self->_extension;
          v60[0] = @"Extension";
          v60[1] = @"ProfileServerID";
          v61[0] = v36;
          identifierForExtensions = [v33 identifierForExtensions];
          v61[1] = identifierForExtensions;
          v38 = [NSDictionary dictionaryWithObjects:v61 forKeys:v60 count:2];
          [v35 setUserInfo:v38];

          v39 = [NSNumber numberWithBool:v54 == 0];
          [v35 setProperty:v39 forKey:v53];

          [v55 addObject:v35];
        }

        v29 = [obj countByEnumeratingWithState:&v56 objects:v62 count:16];
      }

      while (v29);
    }

    if (v47)
    {
      v40 = [PSSpecifier groupSpecifierWithID:@"EXTENSION_PRIVATE_BROWSING_GROUP"];
      [v55 addObject:v40];

      v41 = SafariSettingsLocalizedString(@"Private Browsing", @"Extensions");
      v42 = [PSSpecifier preferenceSpecifierNamed:v41 target:self set:"_setContentBlockerEnabledInPrivateBrowsing:forSpecifier:" get:"_enabledStateOfContentBlockerInPrivateBrowsingForSpecifier:" detail:0 cell:6 edit:0];

      [v42 setObject:&__kCFBooleanTrue forKeyedSubscript:PSAllowMultilineTitleKey];
      [v42 setUserInfo:self->_extension];
      [v55 addObject:v42];
    }

    v43 = [v55 copy];

    v3 = v55;
  }

  return v43;
}

- (id)_contentBlockerManager
{
  v2 = +[SafariSettingsController extensionsProfilesDataSource];
  profileServerIDToContentBlockerManagers = [v2 profileServerIDToContentBlockerManagers];
  v4 = [profileServerIDToContentBlockerManagers objectForKeyedSubscript:WBSDefaultProfileIdentifier];

  return v4;
}

- (void)_setExtensionIfNeeded
{
  if (!self->_extension)
  {
    specifier = [(SafariContentBlockerPermissionsSettingsController *)self specifier];
    userInfo = [specifier userInfo];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = userInfo;
    }

    else
    {
      v5 = 0;
    }

    v8 = v5;

    extension = [v8 extension];
    extension = self->_extension;
    self->_extension = extension;
  }
}

- (id)_enabledStateOfContentBlockerForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  userInfo = [specifierCopy userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"Extension"];

  v6 = +[SafariSettingsController extensionsProfilesDataSource];
  profileServerIDToContentBlockerManagers = [v6 profileServerIDToContentBlockerManagers];
  userInfo2 = [specifierCopy userInfo];
  v9 = [userInfo2 objectForKeyedSubscript:@"ProfileServerID"];
  v10 = [profileServerIDToContentBlockerManagers objectForKeyedSubscript:v9];

  v11 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v10 extensionIsEnabled:v5]);

  return v11;
}

- (void)_setContentBlockerEnabled:(id)enabled forSpecifier:(id)specifier
{
  enabledCopy = enabled;
  specifierCopy = specifier;
  userInfo = [specifierCopy userInfo];
  v7 = [userInfo objectForKeyedSubscript:@"Extension"];

  v8 = +[SafariSettingsController extensionsProfilesDataSource];
  profileServerIDToContentBlockerManagers = [v8 profileServerIDToContentBlockerManagers];
  userInfo2 = [specifierCopy userInfo];
  v11 = [userInfo2 objectForKeyedSubscript:@"ProfileServerID"];
  v12 = [profileServerIDToContentBlockerManagers objectForKeyedSubscript:v11];

  [v12 setExtension:v7 isEnabled:objc_msgSend(enabledCopy byUserGesture:{"BOOLValue"), 1}];
}

- (id)_enabledStateOfContentBlockerInPrivateBrowsingForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  _contentBlockerManager = [(SafariContentBlockerPermissionsSettingsController *)self _contentBlockerManager];
  userInfo = [specifierCopy userInfo];
  v7 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [_contentBlockerManager isContentBlockerAllowedInPrivateBrowsing:userInfo]);

  return v7;
}

- (void)_setContentBlockerEnabledInPrivateBrowsing:(id)browsing forSpecifier:(id)specifier
{
  browsingCopy = browsing;
  specifierCopy = specifier;
  userInfo = [specifierCopy userInfo];
  _contentBlockerManager = [(SafariContentBlockerPermissionsSettingsController *)self _contentBlockerManager];
  [_contentBlockerManager setExtension:userInfo isEnabledInPrivateBrowsing:objc_msgSend(browsingCopy updateUserContentController:{"BOOLValue"), 0}];

  v10 = +[NSDistributedNotificationCenter defaultCenter];
  v13[0] = WBSContentBlockerIdentifierNotificationKey;
  identifier = [userInfo identifier];
  v13[1] = WBSExtensionEnabledInPrivateBrowsingNotificationKey;
  v14[0] = identifier;
  v14[1] = browsingCopy;
  v12 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];
  [v10 postNotificationName:WBSContentBlockerExtensionDidChangeEnabledStateInPrivateBrowsingNotification object:0 userInfo:v12 deliverImmediately:1];
}

- (id)_hostAppDisplayName:(id)name
{
  safari_localizedContainingAppDisplayName = [(NSExtension *)self->_extension safari_localizedContainingAppDisplayName];

  return safari_localizedContainingAppDisplayName;
}

- (void)_reloadSpecifiersSoon
{
  objc_initWeak(&location, self);
  [(NSTimer *)self->_reloadSpecifiersTimer invalidate];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __74__SafariContentBlockerPermissionsSettingsController__reloadSpecifiersSoon__block_invoke;
  v5[3] = &unk_89600;
  objc_copyWeak(&v6, &location);
  v3 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v5 block:0.5];
  reloadSpecifiersTimer = self->_reloadSpecifiersTimer;
  self->_reloadSpecifiersTimer = v3;

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __74__SafariContentBlockerPermissionsSettingsController__reloadSpecifiersSoon__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained reloadSpecifiers];
  }
}

@end