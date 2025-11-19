@interface MFNanoBridgeSettingsListController
- (BOOL)_needsSetUp;
- (BOOL)pairedDeviceSupportsStandaloneService;
- (MFNanoBridgeSettingsListController)init;
- (id)_accountNamesKeyedByAccountId;
- (id)_alwaysLoadContentDirectly:(id)a3;
- (id)_askBeforeDeleting:(id)a3;
- (id)_includeMail:(id)a3;
- (id)_linesOfPreview:(id)a3;
- (id)_linesOfPreviewTitlesDictionary;
- (id)_loadRemoteImages:(id)a3;
- (id)_mirroringDetailPrivacyProtection;
- (id)_mirroringDetailStringForAlerts;
- (id)_mirroringDetailStringForAskBeforeDeleting;
- (id)_mirroringDetailStringForLoadRemoteImages;
- (id)_mirroringDetailStringForNotificationSources;
- (id)_mirroringDetailStringForOrganizeByThread;
- (id)_organizeByThread:(id)a3;
- (id)_showAlertsFrom:(id)a3;
- (id)_signature:(id)a3;
- (id)applicationGroupSpecifiers;
- (id)localizedMirroringDetailFooter;
- (id)localizedPaneTitle;
- (id)mirroredApplicationGroupSpecifiers;
- (id)notificationApplicationSpecifiers;
- (void)_setAlwaysLoadContentDirectly:(id)a3 withSpecifier:(id)a4;
- (void)_setAskBeforeDeleting:(id)a3 withSpecifier:(id)a4;
- (void)_setLinesOfPreview:(id)a3 withSpecifier:(id)a4;
- (void)_setLoadRemoteImages:(id)a3 withSpecifier:(id)a4;
- (void)_setOrganizeByThread:(id)a3 withSpecifier:(id)a4;
- (void)_setSignature:(id)a3 withSpecifier:(id)a4;
- (void)_setUpMail;
- (void)applicationWillEnterForegroundNotification;
- (void)mirrorSettingsChanged:(BOOL)a3;
- (void)saveShowAlertsForSpecifier:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)willBecomeActive;
@end

@implementation MFNanoBridgeSettingsListController

- (MFNanoBridgeSettingsListController)init
{
  v13.receiver = self;
  v13.super_class = MFNanoBridgeSettingsListController;
  v2 = [(MFNanoBridgeSettingsListController *)&v13 init];
  v3 = v2;
  if (v2 && [(MFNanoBridgeSettingsListController *)v2 pairedDeviceSupportsStandaloneService])
  {
    v4 = objc_alloc_init(MFNanoAccountsSettingsDataSource);
    mailAccountsDatasource = v3->_mailAccountsDatasource;
    v3->_mailAccountsDatasource = v4;

    [(MFNanoAccountsSettingsDataSource *)v3->_mailAccountsDatasource addObserver:v3];
    [(MFNanoAccountsSettingsDataSource *)v3->_mailAccountsDatasource refreshAccounts];
    v6 = [NMCUICloudNotificationAccountDataSource alloc];
    v7 = [[MFNanoCloudNotificationAccountDataSource alloc] initWithAccountDataSource:v3->_mailAccountsDatasource];
    v8 = [v6 initWithAccountDataSource:v7];
    cloudNotificationDatasource = v3->_cloudNotificationDatasource;
    v3->_cloudNotificationDatasource = v8;

    v10 = [[NMCUISpecifierController alloc] initWithListController:v3 dataSource:v3->_cloudNotificationDatasource isTinker:0];
    specifierController = v3->_specifierController;
    v3->_specifierController = v10;
  }

  return v3;
}

- (void)viewWillAppear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = MFNanoBridgeSettingsListController;
  [(MFNanoBridgeSettingsListController *)&v3 viewWillAppear:a3];
  +[MFNanoMailBridgeSettingsNavigationDonation donateUserVisitForMailSettings];
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = MFNanoBridgeSettingsListController;
  [(MFNanoBridgeSettingsListController *)&v5 viewDidAppear:a3];
  [(MFNanoAccountsSettingsDataSource *)self->_mailAccountsDatasource refreshAccounts];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"applicationWillEnterForegroundNotification" name:UIApplicationWillEnterForegroundNotification object:0];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = MFNanoBridgeSettingsListController;
  [(MFNanoBridgeSettingsListController *)&v5 viewDidDisappear:a3];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];
}

- (void)applicationWillEnterForegroundNotification
{
  [(MFNanoAccountsSettingsDataSource *)self->_mailAccountsDatasource refreshAccounts];

  [(MFNanoBridgeSettingsListController *)self reloadSpecifiers];
}

- (void)saveShowAlertsForSpecifier:(id)a3
{
  [(MFNanoBridgeSettingsListController *)self writeSectionState];

  [(MFNanoBridgeSettingsListController *)self reloadSpecifiers];
}

- (BOOL)pairedDeviceSupportsStandaloneService
{
  v2 = +[PDRRegistry sharedInstance];
  v3 = [v2 devices];
  v4 = [v3 active];
  v5 = [v4 notAltAccount];
  v6 = [v5 final];

  LOBYTE(v2) = [v6 supportsCapability:2349192809];
  return v2;
}

- (id)notificationApplicationSpecifiers
{
  v26 = +[NSMutableArray array];
  v3 = [(MFNanoBridgeSettingsListController *)self sectionInfo];
  v20 = [v3 objectForKeyedSubscript:BPSNanoBulletinSubsections];

  v21 = [(MFNanoBridgeSettingsListController *)self _accountNamesKeyedByAccountId];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v20;
  v4 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v4)
  {
    v5 = *v29;
    v6 = BPSNanoBulletinSubsectionId;
    v7 = MSUserNotificationCenterTopicVIP;
    v24 = MSUserNotificationCenterTopicFavoriteMailboxes;
    v25 = MSUserNotificationCenterTopicPrimary;
    v22 = MSUserNotificationCenterTopicRemindMe;
    v23 = MSUserNotificationCenterTopicNotifiedThreads;
    do
    {
      v8 = 0;
      do
      {
        if (*v29 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v28 + 1) + 8 * v8);
        v10 = [v9 objectForKeyedSubscript:v6];
        v11 = v10;
        if (v10)
        {
          if ([v10 isEqualToString:v7])
          {
            v12 = [NSBundle bundleForClass:objc_opt_class()];
            v13 = [v12 localizedStringForKey:@"ALERTS_FROM_VIPS" value:&stru_34FF0 table:@"Main"];
            goto LABEL_17;
          }

          if ([v11 isEqualToString:v25])
          {
            v12 = [NSBundle bundleForClass:objc_opt_class()];
            v13 = [v12 localizedStringForKey:@"ALERTS_FROM_PRIMARY" value:&stru_34FF0 table:@"Main"];
            goto LABEL_17;
          }

          if ([v11 isEqualToString:v24])
          {
            v12 = [NSBundle bundleForClass:objc_opt_class()];
            v13 = [v12 localizedStringForKey:@"ALERTS_FROM_FAVORITE_MAILBOXES" value:&stru_34FF0 table:@"Main"];
            goto LABEL_17;
          }

          if ([v11 isEqualToString:v23])
          {
            v12 = [NSBundle bundleForClass:objc_opt_class()];
            v13 = [v12 localizedStringForKey:@"ALERTS_FROM_NOTIFY_THREADS" value:&stru_34FF0 table:@"Main"];
            goto LABEL_17;
          }

          if ([v11 isEqualToString:v22])
          {
            v12 = [NSBundle bundleForClass:objc_opt_class()];
            v13 = [v12 localizedStringForKey:@"ALERTS_FROM_REMIND_ME" value:&stru_34FF0 table:@"Main"];
LABEL_17:
            v14 = v13;

            if (v14)
            {
LABEL_18:
              v15 = objc_opt_class();
              v16 = _ConfigurePSSpecifier(v26, v14, self, "_setShowAlertsFrom:withSpecifier:", "_showAlertsFrom:", 0, 0, v15, 2, 0, v9, 0, 0);
            }
          }

          else
          {
            v14 = [v21 objectForKeyedSubscript:v11];
            if (v14)
            {
              goto LABEL_18;
            }
          }
        }

        v8 = v8 + 1;
      }

      while (v4 != v8);
      v17 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      v4 = v17;
    }

    while (v17);
  }

  objc_storeStrong(&self->_subsectionSpecifiers, v26);
  v18 = [PSSpecifier groupSpecifierWithID:@"Mail-Notification-Group-Specidier"];
  [v26 insertObject:v18 atIndex:0];

  return v26;
}

- (id)applicationGroupSpecifiers
{
  v3 = +[NSMutableArray array];
  if ([(MFNanoBridgeSettingsListController *)self _needsSetUp])
  {
    v4 = +[PSSpecifier emptyGroupSpecifier];
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"SET_UP_NOTE" value:&stru_34FF0 table:@"Main"];
    [v4 setProperty:v6 forKey:PSFooterTextGroupKey];

    [v3 addObject:v4];
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"SET_UP_MAIL" value:&stru_34FF0 table:@"Main"];
    v9 = _ConfigurePSSpecifier(v3, v8, self, 0, 0, 0, 0, 0, 13, 0, 0, 0, 0);

    [v9 setButtonAction:"_setUpMail"];
  }

  else if (![(MFNanoBridgeSettingsListController *)self settingsMode])
  {
    if ([(MFNanoBridgeSettingsListController *)self pairedDeviceSupportsStandaloneService])
    {
      v10 = [(MFNanoBridgeSettingsListController *)self sectionInfo];
      v11 = [v10 objectForKeyedSubscript:BPSNanoBulletinShowsAlerts];
      -[NMCUICloudNotificationAccountDataSource setShowsAlerts:](self->_cloudNotificationDatasource, "setShowsAlerts:", [v11 BOOLValue]);

      v12 = [(MFNanoBridgeSettingsListController *)self sectionInfo];
      v13 = [v12 objectForKeyedSubscript:BPSNanoBulletinSubsections];
      [(NMCUICloudNotificationAccountDataSource *)self->_cloudNotificationDatasource setNotificationSubsections:v13];

      v14 = [(MFNanoBridgeSettingsListController *)self specifierController];
      v15 = [v14 specifiers];
      [v3 addObjectsFromArray:v15];

      v16 = [NSBundle bundleForClass:objc_opt_class()];
      v17 = [v16 localizedStringForKey:@"APP_SETTINGS_SECTION" value:&stru_34FF0 table:@"Main"];
      v18 = [PSSpecifier preferenceSpecifierNamed:v17 target:0 set:0 get:0 detail:0 cell:0 edit:0];
      [v3 addObject:v18];

      v19 = [NSBundle bundleForClass:objc_opt_class()];
      v20 = [v19 localizedStringForKey:@"ACCOUNTS_SCREEN_TITLE" value:&stru_34FF0 table:@"Main"];
      v21 = [PSSpecifier preferenceSpecifierNamed:v20 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

      [v21 setIdentifier:@"ACCOUNTS_ID"];
      [v21 setCellType:2];
      if ([(MFNanoBridgeSettingsListController *)self accountCellBadgeCount])
      {
        v22 = [NSNumber numberWithUnsignedInteger:[(MFNanoBridgeSettingsListController *)self accountCellBadgeCount]];
        [v21 setProperty:v22 forKey:PSBadgeNumberKey];
      }

      mailAccountsDatasource = self->_mailAccountsDatasource;
      v55[0] = @"MFNanoSettingsAccountDataSourceKey";
      v55[1] = @"MFNanoSettingsCloudNotificationDataSourceKey";
      cloudNotificationDatasource = self->_cloudNotificationDatasource;
      v56[0] = mailAccountsDatasource;
      v56[1] = cloudNotificationDatasource;
      v25 = [NSDictionary dictionaryWithObjects:v56 forKeys:v55 count:2];
      [v21 setUserInfo:v25];

      [v3 addObject:v21];
    }

    else
    {
      v26 = [NSBundle bundleForClass:objc_opt_class()];
      v27 = [v26 localizedStringForKey:@"APP_SETTINGS_SECTION" value:&stru_34FF0 table:@"Main"];
      v28 = [PSSpecifier preferenceSpecifierNamed:v27 target:0 set:0 get:0 detail:0 cell:0 edit:0];
      [v3 addObject:v28];
    }

    v29 = [NSBundle bundleForClass:objc_opt_class()];
    v30 = [v29 localizedStringForKey:@"INCLUDE_MAIL" value:&stru_34FF0 table:@"Main"];
    v31 = objc_opt_class();
    v32 = _ConfigurePSSpecifier(v3, v30, self, "_setIncludeMail:withSpecifier:", "_includeMail:", 0, 0, v31, 2, 0, 0, 0, 0);

    [v32 setIdentifier:@"INCLUDE_MAIL_ID"];
    v33 = [NSBundle bundleForClass:objc_opt_class()];
    v34 = [v33 localizedStringForKey:@"MESSAGE_PREVIEW" value:&stru_34FF0 table:@"Main"];
    v35 = objc_opt_class();
    v36 = [(MFNanoBridgeSettingsListController *)self _linesOfPreviewTitlesDictionary];
    v37 = [(MFNanoBridgeSettingsListController *)self _linesOfPreviewValues];
    v38 = _ConfigurePSSpecifier(v3, v34, self, "_setLinesOfPreview:withSpecifier:", "_linesOfPreview:", 0, 0, v35, 2, 0, v36, 0, v37);

    [v38 setIdentifier:@"MESSAGE_PREVIEW_ID"];
    v39 = +[MFNanoBridgeSettingsManager sharedInstance];
    LODWORD(v34) = [v39 privacyProtectionEnabled];

    if (v34)
    {
      v40 = [NSBundle bundleForClass:objc_opt_class()];
      v41 = [v40 localizedStringForKey:@"ALWAYS_LOAD_CONTENT_DIRECTLY" value:&stru_34FF0 table:@"Main"];
      v42 = _ConfigurePSSpecifier(v3, v41, self, "_setAlwaysLoadContentDirectly:withSpecifier:", "_alwaysLoadContentDirectly:", 0, 0, 0, 6, 0, 0, 0, 0);

      [v42 setIdentifier:@"ALWAYS_LOAD_CONTENT_DIRECTLY_ID"];
    }

    v43 = +[NRPairedDeviceRegistry sharedInstance];
    v44 = [v43 getActivePairedDevice];
    HasCapabilityForString = BPSDeviceHasCapabilityForString();

    if (HasCapabilityForString)
    {
      v46 = [NSBundle bundleForClass:objc_opt_class()];
      v47 = [v46 localizedStringForKey:@"DEFAULT_REPLIES" value:&stru_34FF0 table:@"Main"];
      v48 = objc_opt_class();
      v49 = _ConfigurePSSpecifier(v3, v47, self, 0, 0, 0, 0, v48, 2, 0, 0, 0, 0);

      [v49 setIdentifier:@"DEFAULT_REPLIES_ID"];
      v50 = [NSBundle bundleForClass:objc_opt_class()];
      v51 = [v50 localizedStringForKey:@"SIGNATURE" value:&stru_34FF0 table:@"Main"];
      v52 = objc_opt_class();
      v53 = _ConfigurePSSpecifier(v3, v51, self, "_setSignature:withSpecifier:", "_signature:", 0, 0, v52, 2, 0, 0, 0, 0);

      [v53 setIdentifier:@"SIGNATURE_ID"];
    }
  }

  return v3;
}

- (id)mirroredApplicationGroupSpecifiers
{
  if ([(MFNanoBridgeSettingsListController *)self settingsMode])
  {
    v3 = &__NSArray0__struct;
  }

  else
  {
    v3 = +[NSMutableArray array];
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"ASK_BEFORE_DELETING" value:&stru_34FF0 table:@"Main"];
    v6 = _ConfigurePSSpecifier(v3, v5, self, "_setAskBeforeDeleting:withSpecifier:", "_askBeforeDeleting:", 0, 0, 0, 6, 0, 0, 0, 0);

    if ([(MFNanoBridgeSettingsListController *)self pairedDeviceSupportsStandaloneService])
    {
      v7 = [NSBundle bundleForClass:objc_opt_class()];
      v8 = [v7 localizedStringForKey:@"LOAD_REMOTE_IMAGES" value:&stru_34FF0 table:@"Main"];
      v9 = _ConfigurePSSpecifier(v3, v8, self, "_setLoadRemoteImages:withSpecifier:", "_loadRemoteImages:", 0, 0, 0, 6, 0, 0, 0, 0);
    }

    v10 = [NSBundle bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"ORGANIZE_BY_THREAD" value:&stru_34FF0 table:@"Main"];
    v12 = _ConfigurePSSpecifier(v3, v11, self, "_setOrganizeByThread:withSpecifier:", "_organizeByThread:", 0, 0, 0, 6, 0, 0, 0, 0);
  }

  return v3;
}

- (void)mirrorSettingsChanged:(BOOL)a3
{
  v3 = a3;
  v5 = +[MFNanoBridgeSettingsManager sharedInstance];
  [v5 notifyMirrorSettingsFromCompanionChanged];

  if (v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = 3;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = self->_subsectionSpecifiers;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = *v17;
    v10 = BPSNanoBulletinSubsectionId;
    do
    {
      v11 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v16 + 1) + 8 * v11) userInfo];
        v13 = [v12 objectForKeyedSubscript:v10];

        v14 = +[TLToneManager sharedToneManager];
        [v14 _setCurrentToneWatchAlertPolicy:v6 forAlertType:5 topic:v13];

        v15 = +[TLVibrationManager sharedVibrationManager];
        [v15 _setCurrentVibrationWatchAlertPolicy:v6 forAlertType:5 topic:v13];

        v11 = v11 + 1;
      }

      while (v8 != v11);
      v8 = [(NSArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }
}

- (id)localizedMirroringDetailFooter
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"MIRRORING_DETAIL_BULLET_FORMAT" value:&stru_34FF0 table:@"Main"];

  if ([(MFNanoBridgeSettingsListController *)self showAlerts])
  {
    v5 = [(MFNanoBridgeSettingsListController *)self _mirroringDetailStringForNotificationSources];
    v6 = [NSString stringWithFormat:v4, v5];
  }

  else
  {
    v6 = &stru_34FF0;
  }

  if ([(MFNanoBridgeSettingsListController *)self settingsMode])
  {
    v7 = [(MFNanoBridgeSettingsListController *)self _mirroringDetailStringForAlerts];
    v8 = [NSString stringWithFormat:v4, v7];
    v9 = [NSString stringWithFormat:@"%@%@", v8, v6];
  }

  else
  {
    v7 = [(MFNanoBridgeSettingsListController *)self _mirroringDetailStringForAlerts];
    v8 = [NSString stringWithFormat:v4, v7];
    v18 = [(MFNanoBridgeSettingsListController *)self _mirroringDetailStringForAskBeforeDeleting];
    v17 = [NSString stringWithFormat:v4, v18];
    v16 = [(MFNanoBridgeSettingsListController *)self _mirroringDetailStringForLoadRemoteImages];
    v15 = [NSString stringWithFormat:v4, v16];
    v14 = [(MFNanoBridgeSettingsListController *)self _mirroringDetailStringForOrganizeByThread];
    v10 = [NSString stringWithFormat:v4, v14];
    v11 = [(MFNanoBridgeSettingsListController *)self _mirroringDetailPrivacyProtection];
    v12 = [NSString stringWithFormat:v4, v11];
    v9 = [NSString stringWithFormat:@"%@%@%@%@%@%@", v8, v6, v17, v15, v10, v12];
  }

  return v9;
}

- (id)localizedPaneTitle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"APP_NAME" value:&stru_34FF0 table:@"Main"];

  return v3;
}

- (void)willBecomeActive
{
  v5.receiver = self;
  v5.super_class = MFNanoBridgeSettingsListController;
  [(MFNanoBridgeSettingsListController *)&v5 willBecomeActive];
  v3 = +[MFNanoBridgeSettingsManager sharedInstance];
  [v3 reloadCachedAccounts];

  v4.receiver = self;
  v4.super_class = MFNanoBridgeSettingsListController;
  [(MFNanoBridgeSettingsListController *)&v4 reloadSpecifiers];
}

- (id)_linesOfPreviewTitlesDictionary
{
  v18 = objc_alloc_init(NSNumberFormatter);
  v2 = +[NSLocale autoupdatingCurrentLocale];
  [v18 setLocale:v2];

  [v18 setNumberStyle:1];
  v15 = [(MFNanoBridgeSettingsListController *)self _linesOfPreviewValues];
  v17 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v15 count]);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v15;
  v3 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v3)
  {
    v4 = *v21;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v21 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v20 + 1) + 8 * i);
        v7 = [NSString stringWithFormat:@"%@_LINES", v6];
        v8 = [NSBundle bundleForClass:objc_opt_class()];
        v9 = [v8 localizedStringForKey:v7 value:&stru_34FF0 table:@"Main"];
        v10 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v6 intValue]);
        v11 = [v18 stringFromNumber:v10];
        v12 = [NSString stringWithFormat:v9, v11];

        [v17 addObject:v12];
      }

      v3 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v3);
  }

  v13 = [NSMutableDictionary dictionaryWithObject:v17 forKey:@"titles"];

  return v13;
}

- (id)_mirroringDetailStringForAlerts
{
  v2 = [(MFNanoBridgeSettingsListController *)self showAlerts];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = v3;
  if (v2)
  {
    [v3 localizedStringForKey:@"MIRRORING_DETAIL_FLAG_STYLE_SHOW_ALERTS" value:&stru_34FF0 table:@"Main"];
  }

  else
  {
    [v3 localizedStringForKey:@"MIRRORING_DETAIL_FLAG_STYLE_DONT_SHOW_ALERTS" value:&stru_34FF0 table:@"Main"];
  }
  v5 = ;

  return v5;
}

- (id)_mirroringDetailStringForNotificationSources
{
  v2 = [(MFNanoBridgeSettingsListController *)self sectionInfo];
  v3 = [v2 objectForKeyedSubscript:BPSNanoBulletinSubsections];

  v53 = [(MFNanoBridgeSettingsListController *)self _accountNamesKeyedByAccountId];
  v54 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);
  v75 = 0;
  v76 = &v75;
  v77 = 0x2020000000;
  v78 = 0;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v71 objects:v79 count:16];
  if (!v4)
  {
    v52 = 0;
    v56 = 0;
    v58 = 0;
    v49 = 0;
    v60 = 0;
    v9 = 1;
    goto LABEL_26;
  }

  v52 = 0;
  v56 = 0;
  v58 = 0;
  v49 = 0;
  v60 = 0;
  v5 = *v72;
  v6 = BPSNanoBulletinShowsAlerts;
  v7 = BPSNanoBulletinSubsectionId;
  v8 = MSUserNotificationCenterTopicVIP;
  v59 = MSUserNotificationCenterTopicFavoriteMailboxes;
  v57 = MSUserNotificationCenterTopicNotifiedThreads;
  v55 = MSUserNotificationCenterTopicRemindMe;
  v9 = 1;
  v51 = MSUserNotificationCenterTopicPrimary;
  do
  {
    v10 = 0;
    do
    {
      if (*v72 != v5)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v71 + 1) + 8 * v10);
      v12 = [v11 objectForKeyedSubscript:v6];
      v13 = [v12 BOOLValue];

      v14 = [v11 objectForKeyedSubscript:v7];
      v15 = v14;
      if (!v13)
      {
        v9 = 0;
        goto LABEL_19;
      }

      if ([v14 isEqualToString:v8])
      {
        v60 = 1;
LABEL_18:
        ++v76[3];
        goto LABEL_19;
      }

      if ([v15 isEqualToString:v59])
      {
        v58 = 1;
        goto LABEL_18;
      }

      if ([v15 isEqualToString:v57])
      {
        v56 = 1;
        goto LABEL_18;
      }

      if ([v15 isEqualToString:v55])
      {
        v52 = 1;
        goto LABEL_18;
      }

      if ([v15 isEqualToString:v51])
      {
        v49 = 1;
        goto LABEL_18;
      }

      v16 = [v53 objectForKeyedSubscript:v15];

      if (v16)
      {
        [v54 addObject:v15];
      }

LABEL_19:

      v10 = v10 + 1;
    }

    while (v4 != v10);
    v17 = [obj countByEnumeratingWithState:&v71 objects:v79 count:16];
    v4 = v17;
  }

  while (v17);
LABEL_26:

  v67 = 0;
  v68 = &v67;
  v69 = 0x2020000000;
  v70 = 1;
  v18 = +[NSMutableString string];
  if (v9)
  {
    *(v68 + 24) = 0;
    v19 = [NSBundle bundleForClass:objc_opt_class()];
    v20 = [v19 localizedStringForKey:@"ALERTS_FROM_EVERYONE" value:&stru_34FF0 table:@"Main"];

    v21 = [v20 lowercaseString];
    [v18 appendString:v21];
  }

  else
  {
    v22 = 0;
    v23 = [v54 count] + (v56 & 1) + (v52 & 1) + (v58 & 1) + (v60 & 1) - 1;
    while (v22 < [v54 count])
    {
      v24 = [v54 objectAtIndexedSubscript:v22];
      v25 = [v53 objectForKeyedSubscript:v24];
      v26 = v25;
      if (v25)
      {
        v27 = v25;
      }

      else
      {
        v27 = &stru_34FF0;
      }

      [v18 appendString:v27];

      if (v23)
      {
        *(v68 + 24) = 0;
        v28 = [NSBundle bundleForClass:objc_opt_class()];
        if (v23 == &dword_0 + 1)
        {
          [v28 localizedStringForKey:@"ALERTS_LAST_SEPARATOR" value:&stru_34FF0 table:@"Main"];
        }

        else
        {
          [v28 localizedStringForKey:@"ALERTS_SEPARATOR" value:&stru_34FF0 table:@"Main"];
        }
        v29 = ;
        [v18 appendString:v29];
      }

      ++v22;
      --v23;
    }

    v62[0] = _NSConcreteStackBlock;
    v62[1] = 3221225472;
    v62[2] = sub_CCF8;
    v62[3] = &unk_34B48;
    v65 = &v75;
    v66 = &v67;
    v30 = v18;
    v63 = v30;
    v64 = self;
    v31 = objc_retainBlock(v62);
    if (v60)
    {
      v32 = [NSBundle bundleForClass:objc_opt_class()];
      v33 = [v32 localizedStringForKey:@"ALERTS_FROM_VIPS" value:&stru_34FF0 table:@"Main"];
      [v30 appendString:v33];

      (v31[2])(v31);
    }

    if (v49)
    {
      v34 = [NSBundle bundleForClass:objc_opt_class()];
      v35 = [v34 localizedStringForKey:@"ALERTS_FROM_PRIMARY" value:&stru_34FF0 table:@"Main"];
      [v30 appendString:v35];

      (v31[2])(v31);
    }

    if (v58)
    {
      v36 = [NSBundle bundleForClass:objc_opt_class()];
      v37 = [v36 localizedStringForKey:@"ALERTS_FROM_FAVORITE_MAILBOXES" value:&stru_34FF0 table:@"Main"];
      [v30 appendString:v37];

      (v31[2])(v31);
    }

    if (v56)
    {
      v38 = [NSBundle bundleForClass:objc_opt_class()];
      v39 = [v38 localizedStringForKey:@"ALERTS_FROM_NOTIFY_THREADS" value:&stru_34FF0 table:@"Main"];
      [v30 appendString:v39];

      (v31[2])(v31);
    }

    if (v52)
    {
      v40 = [NSBundle bundleForClass:objc_opt_class()];
      v41 = [v40 localizedStringForKey:@"ALERTS_FROM_REMIND_ME" value:&stru_34FF0 table:@"Main"];
      [v30 appendString:v41];

      (v31[2])(v31);
    }

    if (![v30 length])
    {
      *(v68 + 24) = 0;
      v42 = [NSBundle bundleForClass:objc_opt_class()];
      v43 = [v42 localizedStringForKey:@"ALERTS_FROM_NO_ONE" value:&stru_34FF0 table:@"Main"];

      v44 = [v43 lowercaseString];
      [v30 appendString:v44];
    }

    v20 = v63;
  }

  if (*(v68 + 24) == 1)
  {
    v45 = [NSBundle bundleForClass:objc_opt_class()];
    [v45 localizedStringForKey:@"MIRRORING_DETAIL_FLAG_STYLE_SHOW_ALERTS_FROM_SINGLE" value:&stru_34FF0 table:@"Main"];
  }

  else
  {
    v45 = [NSBundle bundleForClass:objc_opt_class()];
    [v45 localizedStringForKey:@"MIRRORING_DETAIL_FLAG_STYLE_SHOW_ALERTS_FROM" value:&stru_34FF0 table:@"Main"];
  }
  v46 = ;

  v47 = [NSString stringWithFormat:v46, v18];

  _Block_object_dispose(&v67, 8);
  _Block_object_dispose(&v75, 8);

  return v47;
}

- (id)_mirroringDetailStringForAskBeforeDeleting
{
  v2 = +[MFNanoBridgeSettingsManager sharedInstance];
  if ([v2 askBeforeDeleting])
  {
    v3 = [NSBundle bundleForClass:objc_opt_class()];
    [v3 localizedStringForKey:@"MIRRORING_DETAIL_ASK_BEFORE_DELETING" value:&stru_34FF0 table:@"Main"];
  }

  else
  {
    v3 = [NSBundle bundleForClass:objc_opt_class()];
    [v3 localizedStringForKey:@"MIRRORING_DETAIL_DONT_ASK_BEFORE_DELETING" value:&stru_34FF0 table:@"Main"];
  }
  v4 = ;

  return v4;
}

- (id)_mirroringDetailStringForLoadRemoteImages
{
  v2 = +[MFNanoBridgeSettingsManager sharedInstance];
  if ([v2 loadRemoteImages])
  {
    v3 = [NSBundle bundleForClass:objc_opt_class()];
    [v3 localizedStringForKey:@"MIRRORING_DETAIL_LOAD_REMOTE_IMAGES" value:&stru_34FF0 table:@"Main"];
  }

  else
  {
    v3 = [NSBundle bundleForClass:objc_opt_class()];
    [v3 localizedStringForKey:@"MIRRORING_DETAIL_DONT_LOAD_REMOTE_IMAGES" value:&stru_34FF0 table:@"Main"];
  }
  v4 = ;

  return v4;
}

- (id)_mirroringDetailStringForOrganizeByThread
{
  v2 = +[MFNanoBridgeSettingsManager sharedInstance];
  if ([v2 organizeByThread])
  {
    v3 = [NSBundle bundleForClass:objc_opt_class()];
    [v3 localizedStringForKey:@"MIRRORING_DETAIL_ORGANIZE_BY_THREADS" value:&stru_34FF0 table:@"Main"];
  }

  else
  {
    v3 = [NSBundle bundleForClass:objc_opt_class()];
    [v3 localizedStringForKey:@"MIRRORING_DETAIL_DONT_ORGANIZE_BY_THREADS" value:&stru_34FF0 table:@"Main"];
  }
  v4 = ;

  return v4;
}

- (id)_mirroringDetailPrivacyProtection
{
  v2 = +[MFNanoBridgeSettingsManager sharedInstance];
  if ([v2 privacyProtectionEnabled])
  {
    v3 = [NSBundle bundleForClass:objc_opt_class()];
    [v3 localizedStringForKey:@"MIRRORING_DETAIL_PRIVACY_PROTECTION" value:&stru_34FF0 table:@"Main"];
  }

  else
  {
    v3 = [NSBundle bundleForClass:objc_opt_class()];
    [v3 localizedStringForKey:@"MIRRORING_DETAIL_NO_PRIVACY_PROTECTION" value:&stru_34FF0 table:@"Main"];
  }
  v4 = ;

  return v4;
}

- (id)_showAlertsFrom:(id)a3
{
  v3 = [a3 userInfo];
  v4 = [v3 objectForKeyedSubscript:BPSNanoBulletinShowsAlerts];
  if ([v4 BOOLValue])
  {
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    [v5 localizedStringForKey:@"ALERTS_FROM_ON" value:&stru_34FF0 table:@"Main"];
  }

  else
  {
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    [v5 localizedStringForKey:@"ALERTS_FROM_OFF" value:&stru_34FF0 table:@"Main"];
  }
  v6 = ;

  return v6;
}

- (id)_includeMail:(id)a3
{
  v3 = +[MFNanoBridgeSettingsManager sharedInstance];
  v4 = [v3 includeMailMailboxes];

  if ([v4 count] >= 2)
  {
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"NUMBER_OF_MAILBOXES_SELECTED %lu" value:&stru_34FF0 table:@"Main"];
    v7 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v6, [v4 count]);
LABEL_3:

    goto LABEL_13;
  }

  if ([v4 count] == &dword_0 + 1)
  {
    v5 = [v4 firstObject];
    v8 = +[MFNanoBridgeSettingsManager sharedInstance];
    v9 = [v8 activeAccounts];
    if ([v9 count] < 2)
    {
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v6 = v5;
        [v6 invalidateCachedData];
        if ([v6 type] == &dword_4 + 3)
        {
          v11 = [v6 accountUniqueIdentifier];
          v12 = [MailAccount accountWithUniqueId:v11];
          v7 = [v12 displayName];
        }

        else
        {
          v7 = [v6 displayName];
        }

        v5 = v6;
        goto LABEL_3;
      }
    }

    v13 = [v5 displayName];
  }

  else
  {
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v13 = [v5 localizedStringForKey:@"NO_MAILBOX_SELECTED" value:&stru_34FF0 table:@"Main"];
  }

  v7 = v13;
LABEL_13:

  return v7;
}

- (void)_setLinesOfPreview:(id)a3 withSpecifier:(id)a4
{
  v6 = a3;
  v4 = [v6 intValue];
  v5 = +[MFNanoBridgeSettingsManager sharedInstance];
  [v5 setLinesOfPreview:v4];
}

- (id)_linesOfPreview:(id)a3
{
  v3 = +[MFNanoBridgeSettingsManager sharedInstance];
  v4 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v3 linesOfPreview]);
  v5 = [v4 stringValue];

  return v5;
}

- (void)_setAskBeforeDeleting:(id)a3 withSpecifier:(id)a4
{
  v6 = a3;
  v4 = [v6 BOOLValue];
  v5 = +[MFNanoBridgeSettingsManager sharedInstance];
  [v5 setAskBeforeDeleting:v4];
}

- (id)_askBeforeDeleting:(id)a3
{
  v3 = +[MFNanoBridgeSettingsManager sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 askBeforeDeleting]);

  return v4;
}

- (void)_setAlwaysLoadContentDirectly:(id)a3 withSpecifier:(id)a4
{
  v6 = a3;
  v4 = [v6 BOOLValue];
  v5 = +[MFNanoBridgeSettingsManager sharedInstance];
  [v5 setAlwaysLoadContentDirectly:v4];
}

- (id)_alwaysLoadContentDirectly:(id)a3
{
  v3 = +[MFNanoBridgeSettingsManager sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 alwaysLoadContentDirectly]);

  return v4;
}

- (void)_setLoadRemoteImages:(id)a3 withSpecifier:(id)a4
{
  v6 = a3;
  v4 = [v6 BOOLValue];
  v5 = +[MFNanoBridgeSettingsManager sharedInstance];
  [v5 setLoadRemoteImages:v4];
}

- (id)_loadRemoteImages:(id)a3
{
  v3 = +[MFNanoBridgeSettingsManager sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 loadRemoteImages]);

  return v4;
}

- (void)_setOrganizeByThread:(id)a3 withSpecifier:(id)a4
{
  v6 = a3;
  v4 = [v6 BOOLValue];
  v5 = +[MFNanoBridgeSettingsManager sharedInstance];
  [v5 setOrganizeByThread:v4];
}

- (id)_organizeByThread:(id)a3
{
  v3 = +[MFNanoBridgeSettingsManager sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 organizeByThread]);

  return v4;
}

- (void)_setSignature:(id)a3 withSpecifier:(id)a4
{
  v5 = a3;
  v4 = +[MFNanoBridgeSettingsManager sharedInstance];
  [v4 setHtmlSignature:v5];
}

- (id)_signature:(id)a3
{
  v3 = +[MFNanoBridgeSettingsManager sharedInstance];
  v4 = [v3 signature];

  return v4;
}

- (id)_accountNamesKeyedByAccountId
{
  v2 = +[MFNanoBridgeSettingsManager sharedInstance];
  v3 = [v2 activeAccounts];

  v4 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v3 count]);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 displayName];
        v11 = [v9 uniqueID];
        [v4 setObject:v10 forKeyedSubscript:v11];
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v4;
}

- (BOOL)_needsSetUp
{
  v2 = +[MFNanoBridgeSettingsManager sharedInstance];
  v3 = [v2 activeAccounts];
  v4 = [v3 count] == 0;

  return v4;
}

- (void)_setUpMail
{
  v3 = +[LSApplicationWorkspace defaultWorkspace];
  v2 = +[MFPreferencesURL addAccountURL];
  [v3 openSensitiveURL:v2 withOptions:0];
}

@end