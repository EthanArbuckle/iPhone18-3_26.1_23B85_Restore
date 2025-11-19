@interface MapsSettingsExtensionBaseController
- (BOOL)_countAndIdentifiersOfApplications:(id)a3 matchCountAndIdentifiersOfApplications:(id)a4;
- (BOOL)hasInstalledApplications;
- (MapsSettingsExtensionBaseController)initWithNibName:(id)a3 bundle:(id)a4;
- (MapsSettingsExtensionBaseController)initWithUpdateHandler:(id)a3;
- (id)_extensionEnabled:(id)a3 applications:(id)a4;
- (id)specifiers;
- (void)_callUpdateHandler;
- (void)_setExtensionEnabled:(id)a3 specifier:(id)a4 applications:(id)a5;
- (void)_setupExtensionManager;
@end

@implementation MapsSettingsExtensionBaseController

- (BOOL)hasInstalledApplications
{
  v2 = [(MapsSettingsExtensionBaseController *)self applications];
  v3 = [v2 count] != 0;

  return v3;
}

- (MapsSettingsExtensionBaseController)initWithUpdateHandler:(id)a3
{
  v4 = a3;
  v5 = [(MapsSettingsExtensionBaseController *)self initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(MapsSettingsExtensionBaseController *)v5 setUpdateHandler:v4];
  }

  return v6;
}

- (MapsSettingsExtensionBaseController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = MapsSettingsExtensionBaseController;
  v4 = [(MapsSettingBaseController *)&v7 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    [(MapsSettingsExtensionBaseController *)v4 _setupExtensionManager];
  }

  return v5;
}

- (void)_callUpdateHandler
{
  v3 = [(MapsSettingsExtensionBaseController *)self updateHandler];

  if (v3)
  {
    v4 = [(MapsSettingsExtensionBaseController *)self updateHandler];
    v4[2]();
  }
}

- (id)specifiers
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [(MapsSettingsExtensionBaseController *)self applications];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [(MapsSettingsExtensionBaseController *)self localizedExtensionsHeader];
    v7 = [PSSpecifier preferenceSpecifierNamed:v6 target:0 set:0 get:0 detail:0 cell:0 edit:0];

    v8 = [(MapsSettingsExtensionBaseController *)self localizedExtensionsFooter];
    [v7 setProperty:v8 forKey:PSFooterTextGroupKey];

    [v3 addObject:v7];
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    obj = [(MapsSettingsExtensionBaseController *)self applications];
    v9 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v9)
    {
      v10 = v9;
      v21 = v7;
      v11 = 0;
      v23 = *v26;
      v24 = self;
      v12 = PSIconImageKey;
      do
      {
        v13 = 0;
        v14 = v11;
        do
        {
          v15 = v3;
          if (*v26 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v25 + 1) + 8 * v13);
          v17 = [v16 displayName];
          v11 = [PSSpecifier preferenceSpecifierNamed:v17 target:v24 set:"_setExtensionEnabled:specifier:" get:"_extensionEnabled:" detail:0 cell:6 edit:0];

          v18 = [v16 displayImage];
          [v11 setProperty:v18 forKey:v12];
          v19 = [v16 identifier];
          [v11 setIdentifier:v19];

          v3 = v15;
          [v15 addObject:v11];

          v13 = v13 + 1;
          v14 = v11;
        }

        while (v10 != v13);
        v10 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v10);

      self = v24;
      v7 = v21;
    }
  }

  [(MapsSettingsExtensionBaseController *)self setSpecifiers:v3];

  return v3;
}

- (void)_setupExtensionManager
{
  objc_initWeak(&location, self);
  v3 = [(MapsSettingsExtensionBaseController *)self extensionLookupPolicy];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1913C;
  v6[3] = &unk_7FD28;
  objc_copyWeak(&v7, &location);
  v4 = [_MXExtensionManager managerWithExtensionLookupPolicy:v3 updateHandler:v6];
  v5 = *(&self->super + 1);
  *(&self->super + 1) = v4;

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (BOOL)_countAndIdentifiersOfApplications:(id)a3 matchCountAndIdentifiersOfApplications:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 count];
  if (v7 == [v6 count])
  {
    v8 = [v5 valueForKey:@"identifier"];
    v9 = [v6 valueForKey:@"identifier"];
    v10 = [v8 isEqualToArray:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_setExtensionEnabled:(id)a3 specifier:(id)a4 applications:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_195D8;
  v23[3] = &unk_7FD50;
  v10 = v8;
  v24 = v10;
  v11 = [v9 indexOfObjectPassingTest:v23];
  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = [v9 objectAtIndexedSubscript:v11];
    [v12 setEnabled:{objc_msgSend(v7, "BOOLValue")}];
    if (([v12 isEnabled] & 1) == 0)
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v13 = [v12 extensions];
      v14 = [v13 countByEnumeratingWithState:&v19 objects:v25 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v20;
        do
        {
          for (i = 0; i != v15; i = i + 1)
          {
            if (*v20 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = [*(*(&v19 + 1) + 8 * i) extension];
            [v18 _kill:9];
          }

          v15 = [v13 countByEnumeratingWithState:&v19 objects:v25 count:16];
        }

        while (v15);
      }
    }
  }
}

- (id)_extensionEnabled:(id)a3 applications:(id)a4
{
  v5 = a3;
  v6 = a4;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1974C;
  v12[3] = &unk_7FD50;
  v7 = v5;
  v13 = v7;
  v8 = [v6 indexOfObjectPassingTest:v12];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = &__kCFBooleanFalse;
  }

  else
  {
    v10 = [v6 objectAtIndexedSubscript:v8];
    v9 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v10 isEnabled]);
  }

  return v9;
}

@end