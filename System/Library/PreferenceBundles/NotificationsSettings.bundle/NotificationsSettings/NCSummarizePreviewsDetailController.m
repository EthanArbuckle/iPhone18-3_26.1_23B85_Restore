@interface NCSummarizePreviewsDetailController
- (NCSummarizePreviewsDetailController)init;
- (NCSummarizePreviewsDetailControllerDelegate)delegate;
- (id)_updatesForSpecifiers:(id)a3 withGlobalSummarizationSetting:(int64_t)a4 animated:(BOOL)a5;
- (id)allowSummarization:(id)a3;
- (id)specifiers;
- (id)summarizationSetting:(id)a3;
- (void)_setGlobalSummarizationSettingEnabled:(BOOL)a3;
- (void)setSummarization:(id)a3 specifier:(id)a4;
- (void)setSummarizationSetting:(id)a3 specifier:(id)a4;
- (void)settingsGateway:(id)a3 didUpdateSectionInfo:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation NCSummarizePreviewsDetailController

- (NCSummarizePreviewsDetailController)init
{
  v5.receiver = self;
  v5.super_class = NCSummarizePreviewsDetailController;
  v2 = [(NCSummarizePreviewsDetailController *)&v5 init];
  if (v2)
  {
    v3 = +[NCSettingsGatewayController sharedInstance];
    [v3 addObserver:v2];
  }

  return v2;
}

- (NCSummarizePreviewsDetailControllerDelegate)delegate
{
  v2 = [(NCSummarizePreviewsDetailController *)self specifier];
  v3 = [v2 propertyForKey:kNotificationsSettingsDetailControllerDelegate];

  return v3;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = NCSummarizePreviewsDetailController;
  [(NCSummarizePreviewsDetailController *)&v5 viewDidLoad];
  v3 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
  v4 = [v3 localizedStringForKey:@"SUMMARIZE_NOTIFICATIONS" value:&stru_4E3F0 table:@"NotificationsSettings"];
  [(NCSummarizePreviewsDetailController *)self setTitle:v4];
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = NCSummarizePreviewsDetailController;
  [(NCSummarizePreviewsDetailController *)&v5 viewDidAppear:a3];
  v4 = [(NCSummarizePreviewsDetailController *)self specifier];
  [BulletinBoardController emitNavigationEventForSpecifier:v4 viewController:self];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = objc_alloc_init(NSMutableArray);
    v6 = [PSSpecifier groupSpecifierWithID:@"SUMMARIZE_NOTIFICATIONS_GROUP_ID"];
    v7 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v17 = [v7 localizedStringForKey:@"SUMMARIZATION_EXPLANATION_LONG" value:&stru_4E3F0 table:@"NotificationsSettings"];

    [v6 setProperty:v17 forKey:PSFooterTextGroupKey];
    [v5 addObject:v6];
    v8 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v9 = [v8 localizedStringForKey:@"SUMMARIZE_NOTIFICATIONS" value:&stru_4E3F0 table:@"NotificationsSettings"];
    v10 = [PSSpecifier preferenceSpecifierNamed:v9 target:self set:"setSummarization:specifier:" get:"allowSummarization:" detail:0 cell:6 edit:0];

    [v10 setIdentifier:@"SUMMARIZE_NOTIFICATIONS_ID"];
    [v5 addObject:v10];
    v11 = +[NCSettingsGatewayController sharedInstance];
    v12 = [v11 effectiveGlobalSummarizationSetting];

    v13 = [(NCSummarizePreviewsDetailController *)self _updatesForSpecifiers:v5 withGlobalSummarizationSetting:v12 animated:0];
    v14 = [v13 currentSpecifiers];
    [v5 setArray:v14];

    v15 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v5;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (id)allowSummarization:(id)a3
{
  v3 = +[NCSettingsGatewayController sharedInstance];
  if ([v3 effectiveGlobalSummarizationSetting] == &dword_0 + 2)
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

- (void)setSummarization:(id)a3 specifier:(id)a4
{
  v6 = a4;
  v7 = [a3 BOOLValue];
  v8 = [UNNotificationOnboarding shouldShowExperience:0 forClient:2];
  v9 = 0;
  if (v8)
  {
    v9 = [UNNotificationOnboarding onboardingNavigationControllerForExperience:0];
  }

  if (!v7)
  {
    [v9 setOnboardingDelegate:self];
LABEL_9:
    [(NCSummarizePreviewsDetailController *)self _setGlobalSummarizationSettingEnabled:v7];
    goto LABEL_10;
  }

  if (!v9)
  {
    v8 = 0;
  }

  [v9 setOnboardingDelegate:self];
  if (v8 != 1)
  {
    goto LABEL_9;
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_9D00;
  v10[3] = &unk_4D0D8;
  v10[4] = self;
  v11 = v6;
  [(NCSummarizePreviewsDetailController *)self presentViewController:v9 animated:1 completion:v10];

LABEL_10:
}

- (id)_updatesForSpecifiers:(id)a3 withGlobalSummarizationSetting:(int64_t)a4 animated:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = [PSSpecifierUpdates updatesWithSpecifiers:v7];
  if (a4 == 2)
  {
    v9 = objc_alloc_init(NSMutableArray);
    v10 = [v7 specifierForID:@"SUMMARIZATION_APP_LIST_GROUP_ID"];
    if (!v10)
    {
      v40 = v8;
      v41 = v7;
      v42 = v5;
      v11 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
      v12 = [v11 localizedStringForKey:@"SUMMARIZATION_APP_LIST_GROUP" value:&stru_4E3F0 table:@"NotificationsSettings"];
      v13 = [PSSpecifier groupSpecifierWithID:@"SUMMARIZATION_APP_LIST_GROUP_ID" name:v12];

      v39 = v13;
      [v9 addObject:v13];
      v14 = +[NCSettingsGatewayController sharedInstance];
      v15 = [v14 activeSectionInfo];

      v54[0] = _NSConcreteStackBlock;
      v54[1] = 3221225472;
      v54[2] = sub_A258;
      v54[3] = &unk_4D450;
      v54[4] = self;
      v38 = v15;
      v37 = [v15 bs_filter:v54];
      [v37 sortedArrayUsingComparator:&stru_4D4E8];
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
            v23 = [PSSpecifier preferenceSpecifierNamed:v22 target:self set:"setSummarizationSetting:specifier:" get:"summarizationSetting:" detail:0 cell:6 edit:0];

            v24 = [v21 sectionID];
            v25 = NCIsSummarizationFeatureEnabledForBundleIdentifier(v24);

            if ((v25 & 1) == 0)
            {
              [v23 setProperty:objc_opt_class() forKey:v45];
              v26 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
              v27 = [v26 localizedStringForKey:@"SUMMARIZATION_APP_LIST_DISABLED_APP_DISCLOSURE" value:&stru_4E3F0 table:@"NotificationsSettings"];
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
    v34 = [v7 indexOfSpecifierWithID:@"SUMMARIZATION_APP_LIST_GROUP_ID"];
    if (v34 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v8 removeSpecifiersInRange:{v34, objc_msgSend(v7, "count") - v34}];
    }
  }

  v35 = [v8 context];
  [v35 setAnimated:v5];

  return v8;
}

- (void)setSummarizationSetting:(id)a3 specifier:(id)a4
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

  [v9 setSummarizationSetting:v6];
  v7 = +[NCSettingsGatewayController sharedInstance];
  v8 = [v9 sectionID];
  [v7 setSectionInfo:v9 forSectionID:v8];
}

- (id)summarizationSetting:(id)a3
{
  v3 = [a3 propertyForKey:@"BBSECTION_INFO_KEY"];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 summarizationSetting] == &dword_0 + 2);

  return v4;
}

- (void)_setGlobalSummarizationSettingEnabled:(BOOL)a3
{
  if (a3)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  v5 = +[NCSettingsGatewayController sharedInstance];
  [v5 setEffectiveGlobalSummarizationSetting:v4];

  v7 = [(NCSummarizePreviewsDetailController *)self _updatesForSpecifiers:*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] withGlobalSummarizationSetting:v4 animated:1];
  [(NCSummarizePreviewsDetailController *)self performSpecifierUpdates:v7];
  v6 = [(NCSummarizePreviewsDetailController *)self delegate];
  [v6 summarizePreviewsDetailController:self didChangeGlobalSummarizePreviewsSetting:v4];
}

- (void)settingsGateway:(id)a3 didUpdateSectionInfo:(id)a4
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_A5F0;
  block[3] = &unk_4D510;
  v9 = a3;
  v10 = self;
  v11 = a4;
  v6 = v11;
  v7 = v9;
  dispatch_async(&_dispatch_main_q, block);
}

@end