@interface FCUISettingsAvailabilityStatusListController
- (FCUISettingsAvailabilityStatusListController)initWithNibName:(id)name bundle:(id)bundle;
- (id)specifiers;
- (void)_setAvailabilityStatus:(id)status specifier:(id)specifier;
@end

@implementation FCUISettingsAvailabilityStatusListController

- (FCUISettingsAvailabilityStatusListController)initWithNibName:(id)name bundle:(id)bundle
{
  v8.receiver = self;
  v8.super_class = FCUISettingsAvailabilityStatusListController;
  v4 = [(FCUISettingsAvailabilityStatusListController *)&v8 initWithNibName:name bundle:bundle];
  if (v4)
  {
    v5 = [DNDGlobalConfigurationService serviceForClientIdentifier:@"com.apple.donotdisturb.preferences"];
    globalConfigurationService = v4->_globalConfigurationService;
    v4->_globalConfigurationService = v5;
  }

  return v4;
}

- (id)specifiers
{
  v3 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v32 = OBJC_IVAR___PSListController__specifiers;
    selfCopy = self;
    v4 = objc_alloc_init(NSMutableArray);
    v5 = +[PSSpecifier emptyGroupSpecifier];
    v6 = +[NSBundle fcui_focusSettingsLocalizationBundle];
    v7 = [v6 localizedStringForKey:@"AVAILABILITY_STATUS_EXPLANATION" value:&stru_21648 table:0];
    v8 = PSFooterTextGroupKey;
    [v5 setProperty:v7 forKey:PSFooterTextGroupKey];

    v31 = v5;
    [v4 addObject:v5];
    v9 = +[PSSpecifier emptyGroupSpecifier];
    v10 = +[NSBundle fcui_focusSettingsLocalizationBundle];
    v11 = [v10 localizedStringForKey:@"AVAILABILITY_STATUS_SHARING_HEADER" value:&stru_21648 table:0];
    [v9 setName:v11];

    v12 = +[NSBundle fcui_focusSettingsLocalizationBundle];
    v13 = [v12 localizedStringForKey:@"AVAILABILITY_STATUS_APP_LIST_FOOTER" value:&stru_21648 table:0];
    [v9 setProperty:v13 forKey:v8];

    v37 = v4;
    v30 = v9;
    [v4 addObject:v9];
    v14 = TCCAccessCopyInformation();
    v15 = TCCAccessCopyBundleIdentifiersForService();
    v36 = [NSSet setWithArray:v15];

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = v14;
    v16 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v40;
      v35 = PSLazyIconLoading;
      v34 = PSLazyIconAppID;
      v19 = PSValueKey;
      do
      {
        v20 = 0;
        do
        {
          if (*v40 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v21 = [*(*(&v39 + 1) + 8 * v20) objectForKey:kTCCInfoBundle];
          if (v21)
          {
            v22 = CFBundleGetIdentifier(v21);
            v23 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v22 allowPlaceholder:0 error:0];
            localizedName = [v23 localizedName];
            v25 = [PSSpecifier preferenceSpecifierNamed:localizedName target:selfCopy set:"_setAvailabilityStatus:specifier:" get:"_availabilityStatus:" detail:0 cell:6 edit:0];

            [v25 setProperty:&__kCFBooleanTrue forKey:v35];
            [v25 setProperty:v22 forKey:@"appBundleID"];
            [v25 setProperty:v22 forKey:v34];
            v26 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v36 containsObject:v22]);
            [v25 setProperty:v26 forKey:v19];

            [v37 addObject:v25];
          }

          v20 = v20 + 1;
        }

        while (v17 != v20);
        v17 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v17);
    }

    v27 = [v37 copy];
    v28 = *&selfCopy->PSListController_opaque[v32];
    *&selfCopy->PSListController_opaque[v32] = v27;

    v3 = *&selfCopy->PSListController_opaque[v32];
  }

  return v3;
}

- (void)_setAvailabilityStatus:(id)status specifier:(id)specifier
{
  statusCopy = status;
  specifierCopy = specifier;
  v7 = PSValueKey;
  v8 = [specifierCopy propertyForKey:PSValueKey];
  v9 = [statusCopy isEqual:v8];

  if ((v9 & 1) == 0)
  {
    v10 = [specifierCopy propertyForKey:@"appBundleID"];
    [statusCopy BOOLValue];
    TCCAccessSetForBundleId();
    [(DNDGlobalConfigurationService *)self->_globalConfigurationService didChangeFocusStatusSharingSettingForApplicationIdentifier:v10];
    [specifierCopy setProperty:statusCopy forKey:v7];
  }
}

@end