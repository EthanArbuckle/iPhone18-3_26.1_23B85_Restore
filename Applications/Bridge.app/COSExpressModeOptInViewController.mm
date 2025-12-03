@interface COSExpressModeOptInViewController
- (COSExpressModeOptInViewController)init;
- (COSSetupController)setupController;
- (id)_makeAppsDetailSection;
- (id)_makeDetailSections;
- (id)_makeSettingsDetailSection;
- (id)_makeWalletDetailSection;
- (id)_paymentExpressSetupManager;
- (id)alternateButtonTitle;
- (id)detailString;
- (id)learnMoreButtonTitle;
- (id)suggestedButtonTitle;
- (id)titleString;
- (void)_checkLocalPairingStorePathAndReleaseHold;
- (void)alternateButtonPressed:(id)pressed;
- (void)device:(id)device propertyDidChange:(id)change fromValue:(id)value;
- (void)didEstablishHold;
- (void)learnMoreButtonPressed:(id)pressed;
- (void)paymentExpressSetupManager:(id)manager didUpdateCardArtForSetupAssistantCredential:(id)credential;
- (void)suggestedButtonPressed:(id)pressed;
- (void)viewDidLoad;
@end

@implementation COSExpressModeOptInViewController

- (void)didEstablishHold
{
  _paymentExpressSetupManager = [(COSExpressModeOptInViewController *)self _paymentExpressSetupManager];
  if (_paymentExpressSetupManager)
  {
    objc_initWeak(&location, self);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100016714;
    v4[3] = &unk_100268430;
    objc_copyWeak(&v5, &location);
    [_paymentExpressSetupManager configureExpressSetupProvisioningContextWithCompletion:v4];
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }

  else
  {
    [(COSExpressModeOptInViewController *)self _checkLocalPairingStorePathAndReleaseHold];
  }
}

- (COSExpressModeOptInViewController)init
{
  v13.receiver = self;
  v13.super_class = COSExpressModeOptInViewController;
  v2 = [(COSOptinViewController *)&v13 init];
  v3 = v2;
  if (v2)
  {
    [(COSExpressModeOptInViewController *)v2 setStyle:26];
    setupController = [UIApp setupController];
    objc_storeWeak(&v3->_setupController, setupController);

    v5 = pbb_setupflow_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      WeakRetained = objc_loadWeakRetained(&v3->_setupController);
      expressModeControllers = [WeakRetained expressModeControllers];
      *buf = 138412290;
      v15 = expressModeControllers;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Express mode controllers: %@", buf, 0xCu);
    }

    _walletExpressSetupEnabled = [(COSExpressModeOptInViewController *)v3 _walletExpressSetupEnabled];
    v9 = pbb_setupflow_log();
    v10 = os_log_type_enabled(&v9->super, OS_LOG_TYPE_ERROR);
    if (_walletExpressSetupEnabled)
    {
      if (v10)
      {
        sub_10018639C();
      }

      v9 = objc_alloc_init(COSPaymentExpressSetupManager);
      [(COSPaymentExpressSetupManager *)v9 setDelegate:v3];
      v11 = objc_loadWeakRetained(&v3->_setupController);
      [v11 setPaymentExpressSetupManager:v9];
    }

    else if (v10)
    {
      sub_100186368();
    }
  }

  return v3;
}

- (void)_checkLocalPairingStorePathAndReleaseHold
{
  v3 = +[UIApplication sharedApplication];
  activeWatch = [v3 activeWatch];

  v5 = NRDevicePropertyLocalPairingDataStorePath;
  v6 = [activeWatch valueForProperty:NRDevicePropertyLocalPairingDataStorePath];
  if (v6)
  {
    objc_initWeak(&location, self);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100016A98;
    v9[3] = &unk_100268430;
    objc_copyWeak(&v10, &location);
    dispatch_async(&_dispatch_main_q, v9);
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  else
  {
    v7 = pbb_setupflow_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1001863D0();
    }

    v12 = v5;
    v8 = [NSArray arrayWithObjects:&v12 count:1];
    [activeWatch addPropertyObserver:self forPropertyChanges:v8];
  }
}

- (void)viewDidLoad
{
  v45.receiver = self;
  v45.super_class = COSExpressModeOptInViewController;
  [(COSExpressModeOptInViewController *)&v45 viewDidLoad];
  v38 = objc_opt_new();
  WeakRetained = objc_loadWeakRetained(&self->_setupController);
  expressModeDevice = [WeakRetained expressModeDevice];

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v4 = objc_loadWeakRetained(&self->_setupController);
  expressModeControllers = [v4 expressModeControllers];

  v6 = [expressModeControllers countByEnumeratingWithState:&v41 objects:v49 count:16];
  if (v6)
  {
    v7 = *v42;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v42 != v7)
        {
          objc_enumerationMutation(expressModeControllers);
        }

        v9 = *(*(&v41 + 1) + 8 * i);
        if ([(objc_class *)v9 skipControllerForExpressMode:expressModeDevice])
        {
          v10 = pbb_setupflow_log();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v11 = NSStringFromClass(v9);
            *buf = 138412290;
            v48 = v11;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Express mode controller requesting skip: %@", buf, 0xCu);
          }

          [v38 addObject:v9];
        }
      }

      v6 = [expressModeControllers countByEnumeratingWithState:&v41 objects:v49 count:16];
    }

    while (v6);
  }

  v12 = [v38 copy];
  [(COSExpressModeOptInViewController *)self setActiveExpressModeControllerClasses:v12];

  v13 = [COSExpressSetupDetailView alloc];
  _makeDetailSections = [(COSExpressModeOptInViewController *)self _makeDetailSections];
  v15 = [(COSExpressSetupDetailView *)v13 initWithSections:_makeDetailSections];

  objc_storeStrong(&self->_detailView, v15);
  contentView = [(COSExpressModeOptInViewController *)self contentView];
  [contentView addSubview:v15];

  [(COSExpressSetupDetailView *)v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  topAnchor = [(COSExpressSetupDetailView *)v15 topAnchor];
  contentView2 = [(COSExpressModeOptInViewController *)self contentView];
  topAnchor2 = [contentView2 topAnchor];
  v34 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v46[0] = v34;
  leadingAnchor = [(COSExpressSetupDetailView *)v15 leadingAnchor];
  contentView3 = [(COSExpressModeOptInViewController *)self contentView];
  leadingAnchor2 = [contentView3 leadingAnchor];
  v30 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v46[1] = v30;
  trailingAnchor = [(COSExpressSetupDetailView *)v15 trailingAnchor];
  contentView4 = [(COSExpressModeOptInViewController *)self contentView];
  trailingAnchor2 = [contentView4 trailingAnchor];
  v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v46[2] = v19;
  bottomAnchor = [(COSExpressSetupDetailView *)v15 bottomAnchor];
  contentView5 = [(COSExpressModeOptInViewController *)self contentView];
  bottomAnchor2 = [contentView5 bottomAnchor];
  v23 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v46[3] = v23;
  v24 = [NSArray arrayWithObjects:v46 count:4];
  [NSLayoutConstraint activateConstraints:v24];

  v25 = objc_alloc_init(AAUIProfilePictureStore);
  profilePictureForAccountOwner = [v25 profilePictureForAccountOwner];
  objc_initWeak(buf, self);
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_100017050;
  v39[3] = &unk_100268480;
  objc_copyWeak(&v40, buf);
  [v25 profilePictureForAccountOwnerWithCompletion:v39];
  headerView = [(COSExpressModeOptInViewController *)self headerView];
  [headerView setIcon:profilePictureForAccountOwner accessibilityLabel:0];

  objc_destroyWeak(&v40);
  objc_destroyWeak(buf);
}

- (id)titleString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"EXPRESS_MODE_TITLE" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

- (id)detailString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"EXPRESS_MODE_DETAIL" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

- (id)suggestedButtonTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"CONTINUE_SETUP" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

- (id)alternateButtonTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"EXPRESS_MODE_CUSTOMIZE" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

- (id)learnMoreButtonTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"EXPRESS_MODE_LEARN_MORE" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

- (void)suggestedButtonPressed:(id)pressed
{
  setupController = [UIApp setupController];
  v5 = +[COSBackupManager sharedBackupManager];
  expressModeDevice = [setupController expressModeDevice];
  activePairingDevice = [setupController activePairingDevice];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100017484;
  v8[3] = &unk_1002684A8;
  v8[4] = self;
  [v5 restoreFromDevice:expressModeDevice toDevice:activePairingDevice completionHandler:v8];
}

- (void)alternateButtonPressed:(id)pressed
{
  setupController = [UIApp setupController];
  [setupController setExpressMode:0];
  delegate = [(COSExpressModeOptInViewController *)self delegate];
  [delegate buddyControllerDone:self nextControllerClass:objc_opt_class()];
}

- (void)learnMoreButtonPressed:(id)pressed
{
  v4 = [OBPrivacyPresenter presenterForPrivacyUnifiedAboutWithIdentifiers:&off_100281708];
  [v4 setPresentingViewController:self];
  [v4 present];
}

- (id)_makeDetailSections
{
  v3 = objc_opt_new();
  _makeAppsDetailSection = [(COSExpressModeOptInViewController *)self _makeAppsDetailSection];
  if (_makeAppsDetailSection)
  {
    [v3 addObject:_makeAppsDetailSection];
  }

  _makeSettingsDetailSection = [(COSExpressModeOptInViewController *)self _makeSettingsDetailSection];
  if (_makeSettingsDetailSection)
  {
    [v3 addObject:_makeSettingsDetailSection];
  }

  _makeWalletDetailSection = [(COSExpressModeOptInViewController *)self _makeWalletDetailSection];
  if (_makeWalletDetailSection)
  {
    [v3 addObject:_makeWalletDetailSection];
  }

  walletDetailSection = self->_walletDetailSection;
  self->_walletDetailSection = _makeWalletDetailSection;

  return v3;
}

- (id)_makeAppsDetailSection
{
  v3 = objc_opt_new();
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"EXPRESS_MODE_APPS_TITLE" value:&stru_10026E598 table:@"Localizable"];
  [v3 setTitle:v5];

  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"EXPRESS_MODE_APPS_SUBTITLE" value:&stru_10026E598 table:@"Localizable"];
  [v3 setSubtitle:v7];

  v8 = [UIImage _systemImageNamed:@"app.3.stack.3d"];
  [v3 setImage:v8];

  WeakRetained = objc_loadWeakRetained(&self->_setupController);
  expressModeDevice = [WeakRetained expressModeDevice];

  if (expressModeDevice)
  {
    v11 = objc_opt_new();
    v12 = objc_loadWeakRetained(&self->_setupController);
    expressModeDevice2 = [v12 expressModeDevice];
    v14 = [expressModeDevice2 valueForProperty:NRDevicePropertyName];
    [v11 setTitle:v14];

    v15 = [UIImage _systemImageNamed:@"apps.watch.applewatch.case"];
    [v11 setImage:v15];

    v16 = objc_loadWeakRetained(&self->_setupController);
    expressModeDevice3 = [v16 expressModeDevice];
    v36 = [expressModeDevice3 valueForProperty:NRDevicePropertyProductType];

    v39[0] = @"COMPACT_VARIANT_ACTIVE_DEVICE";
    v39[1] = @"REGULAR_VARIANT_ACTIVE_DEVICE";
    v39[2] = @"394H_VARIANT_ACTIVE_DEVICE";
    v39[3] = @"448H_VARIANT_ACTIVE_DEVICE";
    v39[4] = @"430H_VARIANT_ACTIVE_DEVICE";
    v39[5] = @"484H_VARIANT_ACTIVE_DEVICE";
    v39[6] = @"502H_VARIANT_ACTIVE_DEVICE";
    v39[7] = @"446H_VARIANT_ACTIVE_DEVICE";
    v39[8] = @"496H_VARIANT_ACTIVE_DEVICE";
    v18 = [NSBundle bundleWithIdentifier:@"com.apple.BridgePreferences"];
    v19 = [v18 localizedStringForKey:@"514H_VARIANT_ACTIVE_DEVICE" value:&stru_10026E598 table:@"Localizable-N230"];
    v39[9] = v19;
    [NSArray arrayWithObjects:v39 count:10];
    v20 = v37 = v3;
    v21 = [BPSScreenStringObj screenStringsWithArray:v20];
    v22 = BPSGetRelevantScreenStringForProduct();

    v23 = +[NSBundle mainBundle];
    v24 = [v23 localizedStringForKey:v22 value:&stru_10026E598 table:@"Pairing"];

    v25 = objc_loadWeakRetained(&self->_setupController);
    expressModeDevice4 = [v25 expressModeDevice];
    [PBBridgeWatchAttributeController materialFromDevice:expressModeDevice4];

    v27 = BPSUnlocalizedNameForMaterial();
    v28 = [v27 stringByAppendingString:@"_ACTIVE_DEVICE"];

    v29 = +[NSBundle mainBundle];
    v30 = [v29 localizedStringForKey:v28 value:&stru_10026E598 table:@"Pairing"];

    v31 = +[NSBundle mainBundle];
    v32 = [v31 localizedStringForKey:@"EXPRESS_WATCH_DETAILS_FORMAT_%@_%@" value:&stru_10026E598 table:@"Localizable"];
    v33 = [NSString stringWithFormat:v32, v30, v24];
    [v11 setDetail:v33];

    v3 = v37;
    v38 = v11;
    v34 = [NSArray arrayWithObjects:&v38 count:1];
    [v37 setItems:v34];
  }

  else
  {
    v11 = pbb_setupflow_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100186404();
    }
  }

  return v3;
}

- (id)_makeSettingsDetailSection
{
  v3 = objc_opt_new();
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"EXPRESS_MODE_SETTINGS_TITLE" value:&stru_10026E598 table:@"Localizable"];
  [v3 setTitle:v5];

  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"EXPRESS_MODE_SETTINGS_SUBTITLE" value:&stru_10026E598 table:@"Localizable"];
  [v3 setSubtitle:v7];

  v8 = [UIImage _systemImageNamed:@"gear"];
  v80 = v3;
  [v3 setImage:v8];

  v9 = objc_opt_new();
  WeakRetained = objc_loadWeakRetained(&self->_setupController);
  expressModeDevice = [WeakRetained expressModeDevice];

  selfCopy = self;
  if (expressModeDevice)
  {
    v12 = objc_loadWeakRetained(&self->_setupController);
    expressModeDevice2 = [v12 expressModeDevice];
    v14 = [expressModeDevice2 valueForProperty:NRDevicePropertyPairingID];

    v15 = objc_loadWeakRetained(&self->_setupController);
    expressModeDevice3 = [v15 expressModeDevice];
    v17 = [expressModeDevice3 valueForProperty:NRDevicePropertyLocalPairingDataStorePath];

    v18 = objc_opt_new();
    v19 = +[NSBundle mainBundle];
    v20 = [v19 localizedStringForKey:@"EXPRESS_ITEM_SIRI_TITLE" value:&stru_10026E598 table:@"Localizable"];
    [v18 setTitle:v20];

    v21 = [UIImage _systemImageNamed:@"siri"];
    [v18 setImage:v21];

    v22 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.assistant.nano" pairingID:v14 pairingDataStore:v17];
    synchronize = [v22 synchronize];
    v88[0] = 0;
    v79 = v22;
    LODWORD(v22) = [v22 BOOLForKey:@"Assistant Enabled" keyExistsAndHasValidFormat:v88];
    v24 = v88[0];
    v25 = +[NSBundle mainBundle];
    v26 = v25;
    v27 = @"EXPRESS_STATUS_OFF";
    if (v22)
    {
      v27 = @"EXPRESS_STATUS_ON";
    }

    if (v24)
    {
      v28 = v27;
    }

    else
    {
      v28 = @"EXPRESS_STATUS_ON";
    }

    v29 = [v25 localizedStringForKey:v28 value:&stru_10026E598 table:@"Localizable"];
    [v18 setStatus:v29];

    v30 = +[NSBundle mainBundle];
    v31 = [v30 localizedStringForKey:@"EXPRESS_ITEM_SIRI_DETAIL" value:&stru_10026E598 table:@"Localizable"];
    [v18 setDetail:v31];

    [v9 addObject:v18];
    v32 = objc_opt_new();

    v33 = +[NSBundle mainBundle];
    v34 = [v33 localizedStringForKey:@"EXPRESS_ITEM_ORIENTATION_TITLE" value:&stru_10026E598 table:@"Localizable"];
    [v32 setTitle:v34];

    v35 = [UIImage _systemImageNamed:@"applewatch.side.right"];
    [v32 setImage:v35];

    v36 = +[NSBundle mainBundle];
    v37 = [v36 localizedStringForKey:@"EXPRESS_ITEM_ORIENTATION_DETAIL" value:&stru_10026E598 table:@"Localizable"];
    [v32 setDetail:v37];

    v38 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.nano" pairingID:v14 pairingDataStore:v17];
    synchronize2 = [v38 synchronize];
    v88[0] = 0;
    v40 = [v38 BOOLForKey:@"wornOnRightArm" keyExistsAndHasValidFormat:v88];
    if (v88[0] == 1)
    {
      v41 = v40;
      v42 = +[NSBundle mainBundle];
      v43 = v42;
      if (v41)
      {
        v44 = @"EXPRESS_STATUS_RIGHT_WRIST";
      }

      else
      {
        v44 = @"EXPRESS_STATUS_LEFT_WRIST";
      }

      v45 = [v42 localizedStringForKey:v44 value:&stru_10026E598 table:@"Localizable"];
      [v32 setStatus:v45];
    }

    [v9 addObject:v32];
    v46 = objc_opt_new();

    v47 = +[NSBundle mainBundle];
    v48 = [v47 localizedStringForKey:@"EXPRESS_ITEM_LOCATION_TITLE" value:&stru_10026E598 table:@"Localizable"];
    [v46 setTitle:v48];

    v49 = [UIImage _systemImageNamed:@"location.fill"];
    [v46 setImage:v49];

    v50 = +[NSBundle mainBundle];
    v51 = [v50 localizedStringForKey:@"EXPRESS_ITEM_LOCATION_DETAIL" value:&stru_10026E598 table:@"Localizable"];
    [v46 setDetail:v51];

    [v9 addObject:v46];
    v52 = objc_opt_new();

    v53 = +[NSBundle mainBundle];
    v54 = [v53 localizedStringForKey:@"EXPRESS_ITEM_WATCH_ANALYTICS_TITLE" value:&stru_10026E598 table:@"Localizable"];
    [v52 setTitle:v54];

    v55 = [UIImage _systemImageNamed:@"applewatch"];
    [v52 setImage:v55];

    v56 = +[NSBundle mainBundle];
    v57 = [v56 localizedStringForKey:@"EXPRESS_ITEM_WATCH_ANALYTICS_DETAIL" value:&stru_10026E598 table:@"Localizable"];
    [v52 setDetail:v57];

    [v9 addObject:v52];
    v58 = objc_opt_new();

    v59 = +[NSBundle mainBundle];
    v60 = [v59 localizedStringForKey:@"EXPRESS_ITEM_APP_ANALYTICS_TITLE" value:&stru_10026E598 table:@"Localizable"];
    [v58 setTitle:v60];

    v61 = [UIImage _systemImageNamed:@"chart.bar.xaxis"];
    [v58 setImage:v61];

    v62 = +[NSBundle mainBundle];
    v63 = [v62 localizedStringForKey:@"EXPRESS_ITEM_APP_ANALYTICS_DETAIL" value:&stru_10026E598 table:@"Localizable"];
    [v58 setDetail:v63];

    [v9 addObject:v58];
    self = selfCopy;
    v64 = v14;
  }

  else
  {
    v64 = pbb_setupflow_log();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
    {
      sub_100186438();
    }
  }

  activeExpressModeControllerClasses = [(COSExpressModeOptInViewController *)self activeExpressModeControllerClasses];
  v66 = [activeExpressModeControllerClasses count];

  if (v66)
  {
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    activeExpressModeControllerClasses2 = [(COSExpressModeOptInViewController *)self activeExpressModeControllerClasses];
    v68 = [activeExpressModeControllerClasses2 countByEnumeratingWithState:&v83 objects:v89 count:16];
    if (v68)
    {
      v69 = v68;
      v81 = v9;
      v70 = *v84;
      do
      {
        for (i = 0; i != v69; i = i + 1)
        {
          if (*v84 != v70)
          {
            objc_enumerationMutation(activeExpressModeControllerClasses2);
          }

          v72 = *(*(&v83 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            v73 = objc_loadWeakRetained(&self->_setupController);
            expressModeDevice4 = [v73 expressModeDevice];
            v75 = [v72 expressModeSettingsItem:expressModeDevice4];

            if (v75)
            {
              [v81 addObject:v75];
            }

            else
            {
              v76 = pbb_setupflow_log();
              if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
              {
                sub_1001864C8(v88, v72);
              }
            }

            self = selfCopy;
          }

          else
          {
            v75 = pbb_setupflow_log();
            if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
            {
              sub_10018646C(v87, v72);
            }
          }
        }

        v69 = [activeExpressModeControllerClasses2 countByEnumeratingWithState:&v83 objects:v89 count:16];
      }

      while (v69);
      v77 = v80;
      v9 = v81;
    }

    else
    {
      v77 = v80;
    }
  }

  else
  {
    activeExpressModeControllerClasses2 = pbb_setupflow_log();
    v77 = v80;
    if (os_log_type_enabled(activeExpressModeControllerClasses2, OS_LOG_TYPE_ERROR))
    {
      sub_100186524();
    }
  }

  [v77 setItems:v9];

  return v77;
}

- (id)_makeWalletDetailSection
{
  _paymentExpressSetupManager = [(COSExpressModeOptInViewController *)self _paymentExpressSetupManager];
  v3 = _paymentExpressSetupManager;
  if (_paymentExpressSetupManager)
  {
    expressWalletPasses = [_paymentExpressSetupManager expressWalletPasses];
    if ([expressWalletPasses count])
    {
      v42 = v3;
      v5 = objc_opt_new();
      v6 = +[NSBundle mainBundle];
      v7 = [v6 localizedStringForKey:@"EXPRESS_MODE_WALLET_TITLE" value:&stru_10026E598 table:@"Localizable"];
      [v5 setTitle:v7];

      v8 = [UIImage _systemImageNamed:@"wallet"];
      v40 = v5;
      [v5 setImage:v8];

      v41 = objc_alloc_init(NSMutableArray);
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v39 = expressWalletPasses;
      v9 = expressWalletPasses;
      v10 = [v9 countByEnumeratingWithState:&v48 objects:v54 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v49;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v49 != v12)
            {
              objc_enumerationMutation(v9);
            }

            title = [*(*(&v48 + 1) + 8 * i) title];
            if (title)
            {
              v15 = +[NSBundle mainBundle];
              v16 = [v15 localizedStringForKey:@"EXPRESS_MODE_WALLET_ITEM_NAME" value:&stru_10026E598 table:@"Localizable"];
              v17 = [NSString stringWithFormat:v16, title];
              [v41 addObject:v17];
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v48 objects:v54 count:16];
        }

        while (v11);
      }

      v18 = +[NSBundle mainBundle];
      v19 = [v18 localizedStringForKey:@"EXPRESS_MODE_WALLET_SUBTITLE" value:&stru_10026E598 table:@"Localizable"];
      v20 = [NSString localizedStringWithFormat:v19, [v9 count]];
      [v40 setSubtitle:v20];

      v21 = objc_opt_new();
      v22 = [[NSMutableDictionary alloc] initWithCapacity:{-[NSObject count](v9, "count")}];
      walletDetailSectionItemsMap = self->_walletDetailSectionItemsMap;
      self->_walletDetailSectionItemsMap = v22;

      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v24 = v9;
      v25 = [v24 countByEnumeratingWithState:&v44 objects:v53 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v45;
        do
        {
          for (j = 0; j != v26; j = j + 1)
          {
            if (*v45 != v27)
            {
              objc_enumerationMutation(v24);
            }

            v29 = *(*(&v44 + 1) + 8 * j);
            v30 = objc_opt_new();
            title2 = [v29 title];
            [v30 setTitle:title2];

            subtitle = [v29 subtitle];
            [v30 setDetail:subtitle];

            v33 = [v42 passSnapshotForCredential:v29];
            [v30 setImage:v33];

            [v21 addObject:v30];
            v34 = self->_walletDetailSectionItemsMap;
            uniqueIdentifier = [v29 uniqueIdentifier];
            [(NSMutableDictionary *)v34 setObject:v30 forKey:uniqueIdentifier];
          }

          v26 = [v24 countByEnumeratingWithState:&v44 objects:v53 count:16];
        }

        while (v26);
      }

      v36 = v40;
      [v40 setItems:v21];

      v37 = v41;
      v3 = v42;
      expressWalletPasses = v39;
    }

    else
    {
      v37 = pbb_setupflow_log();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "No Wallet credentials found; express mode opt in controller skipping Wallet detail section.", buf, 2u);
      }

      v36 = 0;
    }
  }

  else
  {
    expressWalletPasses = pbb_setupflow_log();
    if (os_log_type_enabled(expressWalletPasses, OS_LOG_TYPE_ERROR))
    {
      sub_100186558();
    }

    v36 = 0;
  }

  return v36;
}

- (void)paymentExpressSetupManager:(id)manager didUpdateCardArtForSetupAssistantCredential:(id)credential
{
  managerCopy = manager;
  credentialCopy = credential;
  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100018E00;
  v10[3] = &unk_1002684D0;
  objc_copyWeak(&v13, &location);
  v11 = credentialCopy;
  v12 = managerCopy;
  v8 = managerCopy;
  v9 = credentialCopy;
  dispatch_async(&_dispatch_main_q, v10);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (id)_paymentExpressSetupManager
{
  WeakRetained = objc_loadWeakRetained(&self->_setupController);
  paymentExpressSetupManager = [WeakRetained paymentExpressSetupManager];

  return paymentExpressSetupManager;
}

- (void)device:(id)device propertyDidChange:(id)change fromValue:(id)value
{
  deviceCopy = device;
  v8 = NRDevicePropertyLocalPairingDataStorePath;
  if ([change isEqualToString:NRDevicePropertyLocalPairingDataStorePath])
  {
    v9 = [deviceCopy valueForProperty:v8];

    if (v9)
    {
      v11 = v8;
      v10 = [NSArray arrayWithObjects:&v11 count:1];
      [deviceCopy removePropertyObserver:self forPropertyChanges:v10];

      [(COSExpressModeOptInViewController *)self _checkLocalPairingStorePathAndReleaseHold];
    }
  }
}

- (COSSetupController)setupController
{
  WeakRetained = objc_loadWeakRetained(&self->_setupController);

  return WeakRetained;
}

@end