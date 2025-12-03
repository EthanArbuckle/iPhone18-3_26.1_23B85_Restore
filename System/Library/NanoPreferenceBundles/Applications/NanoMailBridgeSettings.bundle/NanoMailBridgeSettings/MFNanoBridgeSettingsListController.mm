@interface MFNanoBridgeSettingsListController
- (BOOL)_needsSetUp;
- (BOOL)pairedDeviceSupportsStandaloneService;
- (MFNanoBridgeSettingsListController)init;
- (id)_accountNamesKeyedByAccountId;
- (id)_alwaysLoadContentDirectly:(id)directly;
- (id)_askBeforeDeleting:(id)deleting;
- (id)_includeMail:(id)mail;
- (id)_linesOfPreview:(id)preview;
- (id)_linesOfPreviewTitlesDictionary;
- (id)_loadRemoteImages:(id)images;
- (id)_mirroringDetailPrivacyProtection;
- (id)_mirroringDetailStringForAlerts;
- (id)_mirroringDetailStringForAskBeforeDeleting;
- (id)_mirroringDetailStringForLoadRemoteImages;
- (id)_mirroringDetailStringForNotificationSources;
- (id)_mirroringDetailStringForOrganizeByThread;
- (id)_organizeByThread:(id)thread;
- (id)_showAlertsFrom:(id)from;
- (id)_signature:(id)_signature;
- (id)applicationGroupSpecifiers;
- (id)localizedMirroringDetailFooter;
- (id)localizedPaneTitle;
- (id)mirroredApplicationGroupSpecifiers;
- (id)notificationApplicationSpecifiers;
- (void)_setAlwaysLoadContentDirectly:(id)directly withSpecifier:(id)specifier;
- (void)_setAskBeforeDeleting:(id)deleting withSpecifier:(id)specifier;
- (void)_setLinesOfPreview:(id)preview withSpecifier:(id)specifier;
- (void)_setLoadRemoteImages:(id)images withSpecifier:(id)specifier;
- (void)_setOrganizeByThread:(id)thread withSpecifier:(id)specifier;
- (void)_setSignature:(id)signature withSpecifier:(id)specifier;
- (void)_setUpMail;
- (void)applicationWillEnterForegroundNotification;
- (void)mirrorSettingsChanged:(BOOL)changed;
- (void)saveShowAlertsForSpecifier:(id)specifier;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
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

- (void)viewWillAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = MFNanoBridgeSettingsListController;
  [(MFNanoBridgeSettingsListController *)&v3 viewWillAppear:appear];
  +[MFNanoMailBridgeSettingsNavigationDonation donateUserVisitForMailSettings];
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = MFNanoBridgeSettingsListController;
  [(MFNanoBridgeSettingsListController *)&v5 viewDidAppear:appear];
  [(MFNanoAccountsSettingsDataSource *)self->_mailAccountsDatasource refreshAccounts];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"applicationWillEnterForegroundNotification" name:UIApplicationWillEnterForegroundNotification object:0];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = MFNanoBridgeSettingsListController;
  [(MFNanoBridgeSettingsListController *)&v5 viewDidDisappear:disappear];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];
}

- (void)applicationWillEnterForegroundNotification
{
  [(MFNanoAccountsSettingsDataSource *)self->_mailAccountsDatasource refreshAccounts];

  [(MFNanoBridgeSettingsListController *)self reloadSpecifiers];
}

- (void)saveShowAlertsForSpecifier:(id)specifier
{
  [(MFNanoBridgeSettingsListController *)self writeSectionState];

  [(MFNanoBridgeSettingsListController *)self reloadSpecifiers];
}

- (BOOL)pairedDeviceSupportsStandaloneService
{
  v2 = +[PDRRegistry sharedInstance];
  devices = [v2 devices];
  active = [devices active];
  notAltAccount = [active notAltAccount];
  final = [notAltAccount final];

  LOBYTE(v2) = [final supportsCapability:2349192809];
  return v2;
}

- (id)notificationApplicationSpecifiers
{
  v26 = +[NSMutableArray array];
  sectionInfo = [(MFNanoBridgeSettingsListController *)self sectionInfo];
  v20 = [sectionInfo objectForKeyedSubscript:BPSNanoBulletinSubsections];

  _accountNamesKeyedByAccountId = [(MFNanoBridgeSettingsListController *)self _accountNamesKeyedByAccountId];
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
            v14 = [_accountNamesKeyedByAccountId objectForKeyedSubscript:v11];
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
      sectionInfo = [(MFNanoBridgeSettingsListController *)self sectionInfo];
      v11 = [sectionInfo objectForKeyedSubscript:BPSNanoBulletinShowsAlerts];
      -[NMCUICloudNotificationAccountDataSource setShowsAlerts:](self->_cloudNotificationDatasource, "setShowsAlerts:", [v11 BOOLValue]);

      sectionInfo2 = [(MFNanoBridgeSettingsListController *)self sectionInfo];
      v13 = [sectionInfo2 objectForKeyedSubscript:BPSNanoBulletinSubsections];
      [(NMCUICloudNotificationAccountDataSource *)self->_cloudNotificationDatasource setNotificationSubsections:v13];

      specifierController = [(MFNanoBridgeSettingsListController *)self specifierController];
      specifiers = [specifierController specifiers];
      [v3 addObjectsFromArray:specifiers];

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
    _linesOfPreviewTitlesDictionary = [(MFNanoBridgeSettingsListController *)self _linesOfPreviewTitlesDictionary];
    _linesOfPreviewValues = [(MFNanoBridgeSettingsListController *)self _linesOfPreviewValues];
    v38 = _ConfigurePSSpecifier(v3, v34, self, "_setLinesOfPreview:withSpecifier:", "_linesOfPreview:", 0, 0, v35, 2, 0, _linesOfPreviewTitlesDictionary, 0, _linesOfPreviewValues);

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
    getActivePairedDevice = [v43 getActivePairedDevice];
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

- (void)mirrorSettingsChanged:(BOOL)changed
{
  changedCopy = changed;
  v5 = +[MFNanoBridgeSettingsManager sharedInstance];
  [v5 notifyMirrorSettingsFromCompanionChanged];

  if (changedCopy)
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

        userInfo = [*(*(&v16 + 1) + 8 * v11) userInfo];
        v13 = [userInfo objectForKeyedSubscript:v10];

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
    _mirroringDetailStringForNotificationSources = [(MFNanoBridgeSettingsListController *)self _mirroringDetailStringForNotificationSources];
    v6 = [NSString stringWithFormat:v4, _mirroringDetailStringForNotificationSources];
  }

  else
  {
    v6 = &stru_34FF0;
  }

  if ([(MFNanoBridgeSettingsListController *)self settingsMode])
  {
    _mirroringDetailStringForAlerts = [(MFNanoBridgeSettingsListController *)self _mirroringDetailStringForAlerts];
    v8 = [NSString stringWithFormat:v4, _mirroringDetailStringForAlerts];
    v9 = [NSString stringWithFormat:@"%@%@", v8, v6];
  }

  else
  {
    _mirroringDetailStringForAlerts = [(MFNanoBridgeSettingsListController *)self _mirroringDetailStringForAlerts];
    v8 = [NSString stringWithFormat:v4, _mirroringDetailStringForAlerts];
    _mirroringDetailStringForAskBeforeDeleting = [(MFNanoBridgeSettingsListController *)self _mirroringDetailStringForAskBeforeDeleting];
    v17 = [NSString stringWithFormat:v4, _mirroringDetailStringForAskBeforeDeleting];
    _mirroringDetailStringForLoadRemoteImages = [(MFNanoBridgeSettingsListController *)self _mirroringDetailStringForLoadRemoteImages];
    v15 = [NSString stringWithFormat:v4, _mirroringDetailStringForLoadRemoteImages];
    _mirroringDetailStringForOrganizeByThread = [(MFNanoBridgeSettingsListController *)self _mirroringDetailStringForOrganizeByThread];
    v10 = [NSString stringWithFormat:v4, _mirroringDetailStringForOrganizeByThread];
    _mirroringDetailPrivacyProtection = [(MFNanoBridgeSettingsListController *)self _mirroringDetailPrivacyProtection];
    v12 = [NSString stringWithFormat:v4, _mirroringDetailPrivacyProtection];
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
  _linesOfPreviewValues = [(MFNanoBridgeSettingsListController *)self _linesOfPreviewValues];
  v17 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [_linesOfPreviewValues count]);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = _linesOfPreviewValues;
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
  showAlerts = [(MFNanoBridgeSettingsListController *)self showAlerts];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = v3;
  if (showAlerts)
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
  sectionInfo = [(MFNanoBridgeSettingsListController *)self sectionInfo];
  v3 = [sectionInfo objectForKeyedSubscript:BPSNanoBulletinSubsections];

  _accountNamesKeyedByAccountId = [(MFNanoBridgeSettingsListController *)self _accountNamesKeyedByAccountId];
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
      bOOLValue = [v12 BOOLValue];

      v14 = [v11 objectForKeyedSubscript:v7];
      v15 = v14;
      if (!bOOLValue)
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

      v16 = [_accountNamesKeyedByAccountId objectForKeyedSubscript:v15];

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

    lowercaseString = [v20 lowercaseString];
    [v18 appendString:lowercaseString];
  }

  else
  {
    v22 = 0;
    v23 = [v54 count] + (v56 & 1) + (v52 & 1) + (v58 & 1) + (v60 & 1) - 1;
    while (v22 < [v54 count])
    {
      v24 = [v54 objectAtIndexedSubscript:v22];
      v25 = [_accountNamesKeyedByAccountId objectForKeyedSubscript:v24];
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
    selfCopy = self;
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

      lowercaseString2 = [v43 lowercaseString];
      [v30 appendString:lowercaseString2];
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

- (id)_showAlertsFrom:(id)from
{
  userInfo = [from userInfo];
  v4 = [userInfo objectForKeyedSubscript:BPSNanoBulletinShowsAlerts];
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

- (id)_includeMail:(id)mail
{
  v3 = +[MFNanoBridgeSettingsManager sharedInstance];
  includeMailMailboxes = [v3 includeMailMailboxes];

  if ([includeMailMailboxes count] >= 2)
  {
    firstObject = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [firstObject localizedStringForKey:@"NUMBER_OF_MAILBOXES_SELECTED %lu" value:&stru_34FF0 table:@"Main"];
    displayName = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v6, [includeMailMailboxes count]);
LABEL_3:

    goto LABEL_13;
  }

  if ([includeMailMailboxes count] == &dword_0 + 1)
  {
    firstObject = [includeMailMailboxes firstObject];
    v8 = +[MFNanoBridgeSettingsManager sharedInstance];
    activeAccounts = [v8 activeAccounts];
    if ([activeAccounts count] < 2)
    {
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v6 = firstObject;
        [v6 invalidateCachedData];
        if ([v6 type] == &dword_4 + 3)
        {
          accountUniqueIdentifier = [v6 accountUniqueIdentifier];
          v12 = [MailAccount accountWithUniqueId:accountUniqueIdentifier];
          displayName = [v12 displayName];
        }

        else
        {
          displayName = [v6 displayName];
        }

        firstObject = v6;
        goto LABEL_3;
      }
    }

    displayName2 = [firstObject displayName];
  }

  else
  {
    firstObject = [NSBundle bundleForClass:objc_opt_class()];
    displayName2 = [firstObject localizedStringForKey:@"NO_MAILBOX_SELECTED" value:&stru_34FF0 table:@"Main"];
  }

  displayName = displayName2;
LABEL_13:

  return displayName;
}

- (void)_setLinesOfPreview:(id)preview withSpecifier:(id)specifier
{
  previewCopy = preview;
  intValue = [previewCopy intValue];
  v5 = +[MFNanoBridgeSettingsManager sharedInstance];
  [v5 setLinesOfPreview:intValue];
}

- (id)_linesOfPreview:(id)preview
{
  v3 = +[MFNanoBridgeSettingsManager sharedInstance];
  v4 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v3 linesOfPreview]);
  stringValue = [v4 stringValue];

  return stringValue;
}

- (void)_setAskBeforeDeleting:(id)deleting withSpecifier:(id)specifier
{
  deletingCopy = deleting;
  bOOLValue = [deletingCopy BOOLValue];
  v5 = +[MFNanoBridgeSettingsManager sharedInstance];
  [v5 setAskBeforeDeleting:bOOLValue];
}

- (id)_askBeforeDeleting:(id)deleting
{
  v3 = +[MFNanoBridgeSettingsManager sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 askBeforeDeleting]);

  return v4;
}

- (void)_setAlwaysLoadContentDirectly:(id)directly withSpecifier:(id)specifier
{
  directlyCopy = directly;
  bOOLValue = [directlyCopy BOOLValue];
  v5 = +[MFNanoBridgeSettingsManager sharedInstance];
  [v5 setAlwaysLoadContentDirectly:bOOLValue];
}

- (id)_alwaysLoadContentDirectly:(id)directly
{
  v3 = +[MFNanoBridgeSettingsManager sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 alwaysLoadContentDirectly]);

  return v4;
}

- (void)_setLoadRemoteImages:(id)images withSpecifier:(id)specifier
{
  imagesCopy = images;
  bOOLValue = [imagesCopy BOOLValue];
  v5 = +[MFNanoBridgeSettingsManager sharedInstance];
  [v5 setLoadRemoteImages:bOOLValue];
}

- (id)_loadRemoteImages:(id)images
{
  v3 = +[MFNanoBridgeSettingsManager sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 loadRemoteImages]);

  return v4;
}

- (void)_setOrganizeByThread:(id)thread withSpecifier:(id)specifier
{
  threadCopy = thread;
  bOOLValue = [threadCopy BOOLValue];
  v5 = +[MFNanoBridgeSettingsManager sharedInstance];
  [v5 setOrganizeByThread:bOOLValue];
}

- (id)_organizeByThread:(id)thread
{
  v3 = +[MFNanoBridgeSettingsManager sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 organizeByThread]);

  return v4;
}

- (void)_setSignature:(id)signature withSpecifier:(id)specifier
{
  signatureCopy = signature;
  v4 = +[MFNanoBridgeSettingsManager sharedInstance];
  [v4 setHtmlSignature:signatureCopy];
}

- (id)_signature:(id)_signature
{
  v3 = +[MFNanoBridgeSettingsManager sharedInstance];
  signature = [v3 signature];

  return signature;
}

- (id)_accountNamesKeyedByAccountId
{
  v2 = +[MFNanoBridgeSettingsManager sharedInstance];
  activeAccounts = [v2 activeAccounts];

  v4 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [activeAccounts count]);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = activeAccounts;
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
        displayName = [v9 displayName];
        uniqueID = [v9 uniqueID];
        [v4 setObject:displayName forKeyedSubscript:uniqueID];
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
  activeAccounts = [v2 activeAccounts];
  v4 = [activeAccounts count] == 0;

  return v4;
}

- (void)_setUpMail
{
  v3 = +[LSApplicationWorkspace defaultWorkspace];
  v2 = +[MFPreferencesURL addAccountURL];
  [v3 openSensitiveURL:v2 withOptions:0];
}

@end