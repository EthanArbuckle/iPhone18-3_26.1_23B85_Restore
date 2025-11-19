@interface ExtensionsSettingsPane
+ (OS_os_log)log;
- (PSListController)parentListController;
- (id)_valueOfExtensionSpecifier:(id)a3;
- (id)specifiers;
- (void)_handleExtensionsAdded:(id)a3;
- (void)_handleExtensionsRemoved:(id)a3;
- (void)_registerForExtensionsIfNeeded;
@end

@implementation ExtensionsSettingsPane

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_6384;
  block[3] = &unk_3CD10;
  block[4] = a1;
  if (qword_448D8 != -1)
  {
    dispatch_once(&qword_448D8, block);
  }

  v2 = qword_448D0;

  return v2;
}

- (id)specifiers
{
  [(ExtensionsSettingsPane *)self _registerForExtensionsIfNeeded];
  v3 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v28 = OBJC_IVAR___PSListController__specifiers;
    v34 = self;
    v4 = objc_alloc_init(NSMutableArray);
    v5 = *&self->PSListController_opaque[v28];
    v33 = v4;
    *&self->PSListController_opaque[v28] = v4;

    v29 = [PSSpecifier groupSpecifierWithID:@"ExtensionHeaderSpecifier"];
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"INSTALLED_EXTENSIONS_HEADER" value:&stru_3D2B0 table:@"Preferences"];
    [v29 setName:v7];

    v8 = [NSBundle bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"INSTALLED_EXTENSIONS_FOOTER" value:&stru_3D2B0 table:@"Preferences"];
    [v29 setProperty:v9 forKey:PSFooterTextGroupKey];

    [v33 addObject:v29];
    if ([(NSMutableArray *)v34->_remoteExtensions count])
    {
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      obj = v34->_remoteExtensions;
      v10 = [(NSMutableArray *)obj countByEnumeratingWithState:&v35 objects:v41 count:16];
      if (v10)
      {
        v32 = *v36;
        v31 = PSIconImageKey;
        v11 = PSEnabledKey;
        v12 = PSPrioritizeValueTextDisplayKey;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v36 != v32)
            {
              objc_enumerationMutation(obj);
            }

            v14 = *(*(&v35 + 1) + 8 * i);
            v15 = [v14 displayName];
            v16 = [PSSpecifier preferenceSpecifierNamed:v15 target:v34 set:0 get:"_valueOfExtensionSpecifier:" detail:objc_opt_class() cell:2 edit:0];

            v17 = [v14 menuIcon];
            [v16 setProperty:v17 forKey:v31];

            [v16 setProperty:&__kCFBooleanTrue forKey:v11];
            [v16 setProperty:&__kCFBooleanTrue forKey:v12];
            v39 = @"EXTENSION_IDENIFIER";
            v18 = [v14 extensionID];
            v40 = v18;
            v19 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
            [v16 setUserInfo:v19];

            [v33 addObject:v16];
          }

          v10 = [(NSMutableArray *)obj countByEnumeratingWithState:&v35 objects:v41 count:16];
        }

        while (v10);
      }
    }

    else
    {
      v20 = [NSBundle bundleForClass:objc_opt_class()];
      v21 = [v20 localizedStringForKey:@"NO_EXTENSIONS_INSTALLED" value:&stru_3D2B0 table:@"Preferences"];
      [v29 setName:v21];
    }

    v22 = [PSSpecifier groupSpecifierWithID:@"MoreExtensionsButtonGroup"];
    [v33 addObject:v22];
    v23 = [PSSpecifier alloc];
    v24 = [NSBundle bundleForClass:objc_opt_class()];
    v25 = [v24 localizedStringForKey:@"MORE_EXTENSIONS" value:&stru_3D2B0 table:@"Preferences"];
    v26 = [v23 initWithName:v25 target:v34 set:0 get:0 detail:0 cell:13 edit:0];

    [v26 setButtonAction:"_moreExtensionsButtonTapped:"];
    [v33 addObject:v26];

    v3 = *&v34->PSListController_opaque[v28];
  }

  return v3;
}

- (id)_valueOfExtensionSpecifier:(id)a3
{
  v3 = [a3 userInfo];
  v4 = [v3 objectForKeyedSubscript:@"EXTENSION_IDENIFIER"];
  v5 = +[MEAppExtensionsController sharedInstance];
  v6 = [v5 extensionForIdentifier:v4];

  if ([v6 isEnabled])
  {
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    [v7 localizedStringForKey:@"EXTENSION_ON" value:&stru_3D2B0 table:@"Preferences"];
  }

  else
  {
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    [v7 localizedStringForKey:@"EXTENSION_OFF" value:&stru_3D2B0 table:@"Preferences"];
  }
  v8 = ;

  return v8;
}

- (void)_registerForExtensionsIfNeeded
{
  if (!self->_remoteExtensions)
  {
    v3 = objc_alloc_init(NSMutableArray);
    remoteExtensions = self->_remoteExtensions;
    self->_remoteExtensions = v3;

    v5 = objc_alloc_init(EFManualCancelationToken);
    extensionsObserverCancelable = self->_extensionsObserverCancelable;
    self->_extensionsObserverCancelable = v5;

    objc_initWeak(&location, self);
    v7 = +[MEAppExtensionsController sharedInstance];
    v8 = +[MERemoteExtension allCapabilities];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_6D90;
    v9[3] = &unk_3CD40;
    objc_copyWeak(&v10, &location);
    [v7 registerMailAppExtensionsObserver:self capabilities:v8 includeDisabled:1 completion:v9];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

- (void)_handleExtensionsAdded:(id)a3
{
  v6 = self;
  v3 = a3;
  v7 = v3;
  v4 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v4 performSyncBlock:&v5];
}

- (void)_handleExtensionsRemoved:(id)a3
{
  v6 = self;
  v3 = a3;
  v7 = v3;
  v4 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v4 performSyncBlock:&v5];
}

- (PSListController)parentListController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentListController);

  return WeakRetained;
}

@end