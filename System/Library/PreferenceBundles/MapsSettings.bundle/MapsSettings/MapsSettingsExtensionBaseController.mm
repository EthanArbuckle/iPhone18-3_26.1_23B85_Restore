@interface MapsSettingsExtensionBaseController
- (BOOL)_countAndIdentifiersOfApplications:(id)applications matchCountAndIdentifiersOfApplications:(id)ofApplications;
- (BOOL)hasInstalledApplications;
- (MapsSettingsExtensionBaseController)initWithNibName:(id)name bundle:(id)bundle;
- (MapsSettingsExtensionBaseController)initWithUpdateHandler:(id)handler;
- (id)_extensionEnabled:(id)enabled applications:(id)applications;
- (id)specifiers;
- (void)_callUpdateHandler;
- (void)_setExtensionEnabled:(id)enabled specifier:(id)specifier applications:(id)applications;
- (void)_setupExtensionManager;
@end

@implementation MapsSettingsExtensionBaseController

- (BOOL)hasInstalledApplications
{
  applications = [(MapsSettingsExtensionBaseController *)self applications];
  v3 = [applications count] != 0;

  return v3;
}

- (MapsSettingsExtensionBaseController)initWithUpdateHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [(MapsSettingsExtensionBaseController *)self initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(MapsSettingsExtensionBaseController *)v5 setUpdateHandler:handlerCopy];
  }

  return v6;
}

- (MapsSettingsExtensionBaseController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = MapsSettingsExtensionBaseController;
  v4 = [(MapsSettingBaseController *)&v7 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    [(MapsSettingsExtensionBaseController *)v4 _setupExtensionManager];
  }

  return v5;
}

- (void)_callUpdateHandler
{
  updateHandler = [(MapsSettingsExtensionBaseController *)self updateHandler];

  if (updateHandler)
  {
    updateHandler2 = [(MapsSettingsExtensionBaseController *)self updateHandler];
    updateHandler2[2]();
  }
}

- (id)specifiers
{
  v3 = objc_alloc_init(NSMutableArray);
  applications = [(MapsSettingsExtensionBaseController *)self applications];
  v5 = [applications count];

  if (v5)
  {
    localizedExtensionsHeader = [(MapsSettingsExtensionBaseController *)self localizedExtensionsHeader];
    v7 = [PSSpecifier preferenceSpecifierNamed:localizedExtensionsHeader target:0 set:0 get:0 detail:0 cell:0 edit:0];

    localizedExtensionsFooter = [(MapsSettingsExtensionBaseController *)self localizedExtensionsFooter];
    [v7 setProperty:localizedExtensionsFooter forKey:PSFooterTextGroupKey];

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
      selfCopy = self;
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
          displayName = [v16 displayName];
          v11 = [PSSpecifier preferenceSpecifierNamed:displayName target:selfCopy set:"_setExtensionEnabled:specifier:" get:"_extensionEnabled:" detail:0 cell:6 edit:0];

          displayImage = [v16 displayImage];
          [v11 setProperty:displayImage forKey:v12];
          identifier = [v16 identifier];
          [v11 setIdentifier:identifier];

          v3 = v15;
          [v15 addObject:v11];

          v13 = v13 + 1;
          v14 = v11;
        }

        while (v10 != v13);
        v10 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v10);

      self = selfCopy;
      v7 = v21;
    }
  }

  [(MapsSettingsExtensionBaseController *)self setSpecifiers:v3];

  return v3;
}

- (void)_setupExtensionManager
{
  objc_initWeak(&location, self);
  extensionLookupPolicy = [(MapsSettingsExtensionBaseController *)self extensionLookupPolicy];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1913C;
  v6[3] = &unk_7FD28;
  objc_copyWeak(&v7, &location);
  v4 = [_MXExtensionManager managerWithExtensionLookupPolicy:extensionLookupPolicy updateHandler:v6];
  v5 = *(&self->super + 1);
  *(&self->super + 1) = v4;

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (BOOL)_countAndIdentifiersOfApplications:(id)applications matchCountAndIdentifiersOfApplications:(id)ofApplications
{
  applicationsCopy = applications;
  ofApplicationsCopy = ofApplications;
  v7 = [applicationsCopy count];
  if (v7 == [ofApplicationsCopy count])
  {
    v8 = [applicationsCopy valueForKey:@"identifier"];
    v9 = [ofApplicationsCopy valueForKey:@"identifier"];
    v10 = [v8 isEqualToArray:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_setExtensionEnabled:(id)enabled specifier:(id)specifier applications:(id)applications
{
  enabledCopy = enabled;
  specifierCopy = specifier;
  applicationsCopy = applications;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_195D8;
  v23[3] = &unk_7FD50;
  v10 = specifierCopy;
  v24 = v10;
  v11 = [applicationsCopy indexOfObjectPassingTest:v23];
  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = [applicationsCopy objectAtIndexedSubscript:v11];
    [v12 setEnabled:{objc_msgSend(enabledCopy, "BOOLValue")}];
    if (([v12 isEnabled] & 1) == 0)
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      extensions = [v12 extensions];
      v14 = [extensions countByEnumeratingWithState:&v19 objects:v25 count:16];
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
              objc_enumerationMutation(extensions);
            }

            extension = [*(*(&v19 + 1) + 8 * i) extension];
            [extension _kill:9];
          }

          v15 = [extensions countByEnumeratingWithState:&v19 objects:v25 count:16];
        }

        while (v15);
      }
    }
  }
}

- (id)_extensionEnabled:(id)enabled applications:(id)applications
{
  enabledCopy = enabled;
  applicationsCopy = applications;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1974C;
  v12[3] = &unk_7FD50;
  v7 = enabledCopy;
  v13 = v7;
  v8 = [applicationsCopy indexOfObjectPassingTest:v12];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = &__kCFBooleanFalse;
  }

  else
  {
    v10 = [applicationsCopy objectAtIndexedSubscript:v8];
    v9 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v10 isEnabled]);
  }

  return v9;
}

@end