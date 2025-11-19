@interface NCPriorityNotificationsDetailController
- (NCPriorityNotificationsDetailControllerDelegate)delegate;
- (id)_updatesForSpecifiers:(id)a3 withGlobalPrioritizationSetting:(int64_t)a4 animated:(BOOL)a5;
- (id)allowPrioritization:(id)a3;
- (id)prioritizationSetting:(id)a3;
- (id)specifiers;
- (void)setAllowPrioritization:(id)a3 specifier:(id)a4;
- (void)setProritizationSetting:(id)a3 specifier:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation NCPriorityNotificationsDetailController

- (NCPriorityNotificationsDetailControllerDelegate)delegate
{
  v2 = [(NCPriorityNotificationsDetailController *)self specifier];
  v3 = [v2 propertyForKey:kNotificationsSettingsDetailControllerDelegate];

  return v3;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = NCPriorityNotificationsDetailController;
  [(NCPriorityNotificationsDetailController *)&v5 viewDidLoad];
  v3 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
  v4 = [v3 localizedStringForKey:@"PRIORITIZE_NOTIFICATIONS" value:&stru_4E3F0 table:@"NotificationsSettings"];
  [(NCPriorityNotificationsDetailController *)self setTitle:v4];
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = NCPriorityNotificationsDetailController;
  [(NCPriorityNotificationsDetailController *)&v5 viewDidAppear:a3];
  v4 = [(NCPriorityNotificationsDetailController *)self specifier];
  [BulletinBoardController emitNavigationEventForSpecifier:v4 viewController:self];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = objc_alloc_init(NSMutableArray);
    v22 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:-1 edit:0];
    [v22 setProperty:objc_opt_class() forKey:PSCellClassKey];
    [v22 setIdentifier:@"PRIORITY_NOTIFICATION_INFO"];
    [v5 addObject:v22];
    v6 = [PSSpecifier groupSpecifierWithID:@"PRIORITIZE_NOTIFICATIONS_GROUP_ID"];
    v7 = +[BSPlatform sharedInstance];
    v8 = [v7 deviceClass];

    v9 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v10 = v9;
    if (v8 == 2)
    {
      v11 = @"PRIORITIZE_NOTIFICATIONS_FOOTER_IPAD";
    }

    else
    {
      v11 = @"PRIORITIZE_NOTIFICATIONS_FOOTER_IPHONE";
    }

    v12 = [v9 localizedStringForKey:v11 value:&stru_4E3F0 table:@"NotificationsSettings"];

    [v6 setProperty:v12 forKey:PSFooterTextGroupKey];
    [v5 addObject:v6];
    v13 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v14 = [v13 localizedStringForKey:@"PRIORITIZE_NOTIFICATIONS" value:&stru_4E3F0 table:@"NotificationsSettings"];
    v15 = [PSSpecifier preferenceSpecifierNamed:v14 target:self set:"setAllowPrioritization:specifier:" get:"allowPrioritization:" detail:0 cell:6 edit:0];

    [v15 setIdentifier:@"PRIORITIZE_NOTIFICATIONS_ID"];
    [v5 addObject:v15];
    v16 = +[NCSettingsGatewayController sharedInstance];
    v17 = [v16 effectiveGlobalHighlightsSetting];

    v18 = [(NCPriorityNotificationsDetailController *)self _updatesForSpecifiers:v5 withGlobalPrioritizationSetting:v17 animated:0];
    v19 = [v18 currentSpecifiers];
    [v5 setArray:v19];

    v20 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v5;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (id)allowPrioritization:(id)a3
{
  v3 = +[NCSettingsGatewayController sharedInstance];
  if ([v3 effectiveGlobalHighlightsSetting] == &dword_0 + 2)
  {
    v4 = &__kCFBooleanTrue;
  }

  else
  {
    v4 = &__kCFBooleanFalse;
  }

  v5 = v4;

  return v4;
}

- (void)setAllowPrioritization:(id)a3 specifier:(id)a4
{
  if ([a3 BOOLValue])
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  v6 = +[NCSettingsGatewayController sharedInstance];
  [v6 setEffectiveGlobalHighlightsSetting:v5];

  v8 = [(NCPriorityNotificationsDetailController *)self _updatesForSpecifiers:*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] withGlobalPrioritizationSetting:v5 animated:1];
  [(NCPriorityNotificationsDetailController *)self performSpecifierUpdates:v8];
  v7 = [(NCPriorityNotificationsDetailController *)self delegate];
  [v7 priorityNotificationsDetailController:self didUpdateSetting:v5];
}

- (id)_updatesForSpecifiers:(id)a3 withGlobalPrioritizationSetting:(int64_t)a4 animated:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = [PSSpecifierUpdates updatesWithSpecifiers:v7];
  if (a4 == 2)
  {
    v9 = objc_alloc_init(NSMutableArray);
    v10 = [v7 specifierForID:@"PRIORITIZATION_APP_LIST_GROUP_ID"];
    if (!v10)
    {
      v40 = v8;
      v41 = v7;
      v42 = v5;
      v11 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
      v12 = [v11 localizedStringForKey:@"PRIORITIZATION_APP_LIST_GROUP" value:&stru_4E3F0 table:@"NotificationsSettings"];
      v13 = [PSSpecifier groupSpecifierWithID:@"PRIORITIZATION_APP_LIST_GROUP_ID" name:v12];

      v39 = v13;
      [v9 addObject:v13];
      v14 = +[NCSettingsGatewayController sharedInstance];
      v15 = [v14 activeSectionInfo];

      v54[0] = _NSConcreteStackBlock;
      v54[1] = 3221225472;
      v54[2] = sub_8480;
      v54[3] = &unk_4D450;
      v54[4] = self;
      v38 = v15;
      v37 = [v15 bs_filter:v54];
      [v37 sortedArrayUsingComparator:&stru_4D470];
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      obj = v53 = 0u;
      v16 = [obj countByEnumeratingWithState:&v50 objects:v55 count:16];
      if (v16)
      {
        v17 = v16;
        v48 = *v51;
        v45 = PSCellClassKey;
        v44 = PSTableCellSubtitleTextKey;
        v47 = PSLazyIconLoading;
        v18 = PSLazyIconAppID;
        v43 = PSEnabledKey;
        do
        {
          for (i = 0; i != v17; i = i + 1)
          {
            v20 = v9;
            if (*v51 != v48)
            {
              objc_enumerationMutation(obj);
            }

            v21 = *(*(&v50 + 1) + 8 * i);
            v22 = BBSettingsDisplayNameForBBSection(v21);
            v23 = [PSSpecifier preferenceSpecifierNamed:v22 target:self set:"setProritizationSetting:specifier:" get:"prioritizationSetting:" detail:0 cell:6 edit:0];

            v24 = [v21 sectionID];
            v25 = NCIsPrioritizationFeatureEnabledForBundleIdentifier();

            if ((v25 & 1) == 0)
            {
              [v23 setProperty:objc_opt_class() forKey:v45];
              v26 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
              v27 = [v26 localizedStringForKey:@"PRIORITIZATION_APP_LIST_DISABLED_APP_DISCLOSURE" value:&stru_4E3F0 table:@"NotificationsSettings"];
              [v23 setProperty:v27 forKey:v44];
            }

            v28 = [v21 sectionID];
            [v23 setIdentifier:v28];

            [v23 setProperty:v21 forKey:@"BBSECTION_INFO_KEY"];
            [v23 setProperty:&__kCFBooleanTrue forKey:v47];
            v29 = [v21 sectionID];
            [v23 setProperty:v29 forKey:v18];

            v30 = +[MCProfileConnection sharedConnection];
            v31 = [v21 sectionID];
            v32 = [v30 isNotificationsModificationAllowedForBundleID:v31];

            if ((v32 & 1) == 0)
            {
              v33 = [NSNumber numberWithBool:0];
              [v23 setProperty:v33 forKey:v43];
            }

            v9 = v20;
            [v20 bs_safeAddObject:v23];
          }

          v17 = [obj countByEnumeratingWithState:&v50 objects:v55 count:16];
        }

        while (v17);
      }

      v5 = v42;
      v8 = v40;
      v7 = v41;
      v10 = v39;
    }

    [v8 insertContiguousSpecifiers:v9 atIndex:{objc_msgSend(v7, "count")}];
  }

  else
  {
    v34 = [v7 indexOfSpecifierWithID:@"PRIORITIZATION_APP_LIST_GROUP_ID"];
    if (v34 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v8 removeSpecifiersInRange:{v34, objc_msgSend(v7, "count") - v34}];
    }
  }

  v35 = [v8 context];
  [v35 setAnimated:v5];

  return v8;
}

- (void)setProritizationSetting:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v9 = [a4 propertyForKey:@"BBSECTION_INFO_KEY"];
  LODWORD(a4) = [v5 BOOLValue];

  if (a4)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  [v9 setPrioritizationSetting:v6];
  v7 = +[NCSettingsGatewayController sharedInstance];
  v8 = [v9 sectionID];
  [v7 setSectionInfo:v9 forSectionID:v8];
}

- (id)prioritizationSetting:(id)a3
{
  v3 = [a3 propertyForKey:@"BBSECTION_INFO_KEY"];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 prioritizationSetting] == &dword_0 + 2);

  return v4;
}

@end