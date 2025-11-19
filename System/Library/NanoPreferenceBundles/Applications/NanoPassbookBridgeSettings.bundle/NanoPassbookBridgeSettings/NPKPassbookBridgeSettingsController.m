@interface NPKPassbookBridgeSettingsController
+ (BOOL)shouldShowUpdateRequired;
- (BOOL)_shouldPresentOrPushViewController;
- (BOOL)isPresentingViewController;
- (BOOL)prepareHandlingURLForSpecifierID:(id)a3 resourceDictionary:(id)a4 animatePush:(BOOL *)a5;
- (Class)tableViewClass;
- (NPKPassbookBridgeSettingsController)init;
- (id)localizedMirroringDetailFooter;
- (id)localizedPaneTitle;
- (id)presentingViewControllerForPendingTransactionHandler:(id)a3;
- (id)specifiers;
- (void)_endPreflightBackgroundTaskIfNecessary;
- (void)_handleApplicationDidBecomeActiveNotification:(id)a3;
- (void)_handleCompanionPassesChanged:(id)a3;
- (void)_handleDatabaseChanged:(id)a3;
- (void)_handleDefaultCardChanged:(id)a3;
- (void)_handleDidEnterBackgroundNotification:(id)a3;
- (void)_handlePaymentPassDetailAppearedNotification:(id)a3;
- (void)_handlePeerPaymentWebServiceChanged:(id)a3;
- (void)_handlePreferencesChanged:(id)a3;
- (void)_handleWillEnterForegroundNotification:(id)a3;
- (void)_launchBridgeInForegroundWithCompletion:(id)a3;
- (void)_promptUserAboutGymKitConflictWithPass:(id)a3 visibleViewController:(id)a4 completion:(id)a5;
- (void)_settingsController:(id)a3 requestsDetailViewControllerForPass:(id)a4 animated:(BOOL)a5 completion:(id)a6;
- (void)_setupPendingTransactionHandlerForPassWithUniqueID:(id)a3;
- (void)_startPreflightBackgroundTaskIfNecessary;
- (void)allowEnableExpressGymKitWithVisibleViewController:(id)a3 completion:(id)a4;
- (void)dealloc;
- (void)handleURL:(id)a3 withCompletion:(id)a4;
- (void)pendingTransactionHandlerDidComplete:(id)a3;
- (void)registerTableCellClass:(Class)a3 forCellReuseIdentifier:(id)a4;
- (void)settingsController:(id)a3 requestShowPeerPaymentAssociatedAccountsFlowWithController:(id)a4 withPresentationContext:(id)a5;
- (void)settingsController:(id)a3 requestsAddCardPreflightWithCompletion:(id)a4;
- (void)settingsController:(id)a3 requestsAddLocalCardPreflightWithCompletion:(id)a4;
- (void)settingsController:(id)a3 requestsAuthenticationChallengeForAppleAccountInformation:(id)a4 completion:(id)a5;
- (void)settingsController:(id)a3 requestsPresentAuthorizationFlowWithRedirectURL:(id)a4 animated:(BOOL)a5 completion:(id)a6;
- (void)settingsController:(id)a3 requestsPresentInboxMessage:(id)a4 animated:(BOOL)a5 completion:(id)a6;
- (void)settingsController:(id)a3 requestsPresentViewController:(id)a4 animated:(BOOL)a5 completion:(id)a6;
- (void)settingsControllerRequestsPresentPrivacyWithPresenter:(id)a3;
- (void)viewDidLoad;
@end

@implementation NPKPassbookBridgeSettingsController

+ (BOOL)shouldShowUpdateRequired
{
  v2 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.nanopassbook"];
  v3 = [v2 BOOLForKey:@"InFailForward"];
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8[0] = 67109120;
      v8[1] = v3;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Notice: Show update required: %d", v8, 8u);
    }
  }

  return v3;
}

- (NPKPassbookBridgeSettingsController)init
{
  v32.receiver = self;
  v32.super_class = NPKPassbookBridgeSettingsController;
  v2 = [(NPKPassbookBridgeSettingsController *)&v32 init];
  if (v2)
  {
    v3 = +[NPKPassbookPaymentSetupDelegate sharedSetupDelegate];
    [(NPKPassbookBridgeSettingsController *)v2 setPaymentSetupDelegate:v3];

    v4 = [(NPKPassbookBridgeSettingsController *)v2 paymentSetupDelegate];
    v5 = [v4 companionAgentConnection];

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:v2 selector:"_handleDatabaseChanged:" name:NPKCompanionAgentConnectionPaymentPassesChanged object:v5];
    [v6 addObserver:v2 selector:"_handleDefaultCardChanged:" name:NPKCompanionAgentConnectionDefaultCardChanged object:v5];
    v7 = +[PKPassLibrary sharedInstance];
    [v6 addObserver:v2 selector:"_handleCompanionPassesChanged:" name:PKPassLibraryDidChangeNotification object:v7];

    [v6 addObserver:v2 selector:"_handlePreferencesChanged:" name:PKPreferencesDidChangeNotification object:0];
    v8 = NPKNotificationForSyncedSettingsChange();
    [v6 addObserver:v2 selector:"_handlePreferencesChanged:" name:v8 object:0];

    [v6 addObserver:v2 selector:"_handlePeerPaymentWebServiceChanged:" name:NPKSharedPeerPaymentWebServiceDidChangeNotification object:0];
    [v6 addObserver:v2 selector:"_handlePaymentPassDetailAppearedNotification:" name:PKPaymentPassDetailVCDidAppearNotification object:0];
    [v6 addObserver:v2 selector:"_handleWillEnterForegroundNotification:" name:UIApplicationWillEnterForegroundNotification object:0];
    [v6 addObserver:v2 selector:"_handleDidEnterBackgroundNotification:" name:UIApplicationDidEnterBackgroundNotification object:0];
    [v6 addObserver:v2 selector:"_handleApplicationDidBecomeActiveNotification:" name:UIApplicationDidBecomeActiveNotification object:0];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_22F4;
    block[3] = &unk_2C6C0;
    v9 = v2;
    v31 = v9;
    if (qword_34CF0 != -1)
    {
      dispatch_once(&qword_34CF0, block);
    }

    v10 = +[NPKPassbookPaymentSetupDelegate sharedSetupDelegate];
    [(NPKPassbookBridgeSettingsController *)v9 setPaymentSetupDelegate:v10];

    v11 = [(NPKPassbookBridgeSettingsController *)v9 paymentSetupDelegate];
    [v11 loadWebService];

    v12 = [NPKStockholmProvisioningController alloc];
    v13 = [(NPKPassbookBridgeSettingsController *)v9 paymentSetupDelegate];
    v14 = [(NPKStockholmProvisioningController *)v12 initWithPaymentSetupDelegate:v13];
    [(NPKPassbookBridgeSettingsController *)v9 setProvisioningController:v14];

    v15 = pk_Payment_log();
    LODWORD(v13) = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

    if (v13)
    {
      v16 = pk_Payment_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [(NPKPassbookBridgeSettingsController *)v9 paymentSetupDelegate];
        v18 = [(NPKPassbookBridgeSettingsController *)v9 provisioningController];
        *buf = 138412546;
        v34 = v17;
        v35 = 2112;
        v36 = v18;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "Notice: Payment setup delegate: %@, provisioning controller: %@", buf, 0x16u);
      }
    }

    v19 = [PKPassbookSettingsController alloc];
    v20 = [(NPKPassbookBridgeSettingsController *)v9 provisioningController];
    v21 = [v19 initWithDelegate:v9 dataSource:v20 context:1];
    [(NPKPassbookBridgeSettingsController *)v9 setSettingsController:v21];

    v22 = [(NPKPassbookBridgeSettingsController *)v9 provisioningController];
    [v22 updateRegionSupportIfNecessary];

    [(NPKPassbookBridgeSettingsController *)v9 setBackgroundPreflightingTaskIdentifier:UIBackgroundTaskInvalid];
    -[NPKPassbookBridgeSettingsController setShowUpdateRequired:](v9, "setShowUpdateRequired:", [objc_opt_class() shouldShowUpdateRequired]);
    v23 = objc_alloc_init(PKPassLibrary);
    v24 = [v23 _remoteLibrary];

    v25 = [[PKGroupsController alloc] initWithPassLibrary:v24];
    [(NPKPassbookBridgeSettingsController *)v9 setGroupsController:v25];

    v26 = [(NPKPassbookBridgeSettingsController *)v9 groupsController];
    [v26 loadGroupsWithCompletion:&stru_2C700];

    v27 = +[UIApplication sharedApplication];
    v28 = [v27 applicationState];

    if (v28 != &dword_0 + 2)
    {
      [PKAnalyticsReporter beginSubjectReporting:PKAnalyticsSubjectBridge];
    }
  }

  return v2;
}

- (void)dealloc
{
  [PKAnalyticsReporter endSubjectReporting:PKAnalyticsSubjectBridge];
  v3 = [(NPKPassbookBridgeSettingsController *)self settingsController];
  [v3 setDelegate:0];

  v4.receiver = self;
  v4.super_class = NPKPassbookBridgeSettingsController;
  [(NPKPassbookBridgeSettingsController *)&v4 dealloc];
}

- (id)localizedPaneTitle
{
  v2 = [(NPKPassbookBridgeSettingsController *)self provisioningController];
  v3 = [v2 isRegistrationSupported];

  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = v4;
  if (v3)
  {
    v6 = @"PASSBOOK_PANE_TITLE";
  }

  else
  {
    v6 = @"PASSBOOK_PANE_TITLE_NO_PAYMENTS";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_2D300 table:@"NanoPassbookBridgeSettings"];

  return v7;
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  if (!*&self->BPSNotificationAppController_opaque[OBJC_IVAR___PSListController__specifiers])
  {
    if ([(NPKPassbookBridgeSettingsController *)self showUpdateRequired])
    {
      v4 = +[NSArray array];
      v5 = *&self->BPSNotificationAppController_opaque[v3];
      *&self->BPSNotificationAppController_opaque[v3] = v4;
    }

    else
    {
      v31.receiver = self;
      v31.super_class = NPKPassbookBridgeSettingsController;
      v6 = [(NPKPassbookBridgeSettingsController *)&v31 specifiers];
      v7 = v6;
      if (v6)
      {
        v8 = v6;
      }

      else
      {
        v8 = +[NSArray array];
      }

      v9 = v8;

      v10 = +[NSArray array];
      v11 = [(NPKPassbookBridgeSettingsController *)self suppressMirrorOption];
      if (v11)
      {
        v12 = @"CUSTOM_RADIO_GROUP_ID";
      }

      else
      {
        v12 = @"MIRROR_RADIO_GROUP_ID";
      }

      v13 = [v9 specifierForID:v12];
      if (v11 && [(NPKPassbookBridgeSettingsController *)self mirrorSettings])
      {
        v14 = objc_opt_respondsToSelector();
        v15 = pk_General_log();
        v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

        if (v14)
        {
          if (v16)
          {
            v17 = pk_General_log();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              *v30 = 0;
              _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "Notice: Should not mirror notification settings, making sure is disabled", v30, 2u);
            }
          }

          [(NPKPassbookBridgeSettingsController *)self setMirrorSettings:0];
        }

        else if (v16)
        {
          v18 = pk_General_log();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *v30 = 0;
            _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "Warning: Should not mirror notification settings, but we can't disable it", v30, 2u);
          }
        }
      }

      if (![(NPKPassbookBridgeSettingsController *)self settingsMode])
      {
        v19 = [NSBundle bundleForClass:objc_opt_class()];
        v20 = [v19 localizedStringForKey:@"NOTIFICATIONS_GROUP_HEADER" value:&stru_2D300 table:@"NanoPassbookBridgeSettings"];
        [v13 setName:v20];

        v21 = [(NPKPassbookBridgeSettingsController *)self settingsController];
        v22 = [v21 specifiers];
        v23 = v22;
        if (v22)
        {
          v24 = v22;
        }

        else
        {
          v24 = +[NSArray array];
        }

        v25 = v24;

        v10 = v25;
      }

      v26 = [v10 arrayByAddingObjectsFromArray:v9];

      v27 = *&self->BPSNotificationAppController_opaque[v3];
      *&self->BPSNotificationAppController_opaque[v3] = v26;
    }
  }

  v28 = *&self->BPSNotificationAppController_opaque[v3];

  return v28;
}

- (id)localizedMirroringDetailFooter
{
  v3 = +[NSBundle mainBundle];
  if ([(NPKPassbookBridgeSettingsController *)self showAlerts])
  {
    v4 = @"SHOW_ALERTS_FOOTER";
  }

  else
  {
    v4 = @"DONT_SHOW_ALERTS_FOOTER";
  }

  v5 = [v3 localizedStringForKey:v4 value:&stru_2D300 table:@"Settings"];

  return v5;
}

- (Class)tableViewClass
{
  if ([(NPKPassbookBridgeSettingsController *)self showUpdateRequired])
  {
    v3 = objc_opt_class();
  }

  else
  {
    v5.receiver = self;
    v5.super_class = NPKPassbookBridgeSettingsController;
    v3 = [(NPKPassbookBridgeSettingsController *)&v5 tableViewClass];
  }

  return v3;
}

- (BOOL)prepareHandlingURLForSpecifierID:(id)a3 resourceDictionary:(id)a4 animatePush:(BOOL *)a5
{
  v6 = a3;
  v7 = a4;
  v8 = pk_Payment_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412546;
      v13 = v7;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Notice: prepare handling URL: %@ with specifier: %@@", &v12, 0x16u);
    }
  }

  return 1;
}

- (void)handleURL:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v81 = a4;
  v7 = pk_Payment_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = pk_Payment_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_retainBlock(v81);
      *buf = 138412546;
      v91 = v6;
      v92 = 2112;
      v93 = v10;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Notice: handling URL: %@ withCompletion: %@", buf, 0x16u);
    }
  }

  v11 = [(NPKPassbookBridgeSettingsController *)self settingsController];
  [v11 willHandleURL];

  v83 = [v6 objectForKeyedSubscript:@"action"];
  if ([v83 isEqualToString:@"ADD_CARD"])
  {
    v12 = [v6 objectForKeyedSubscript:@"passTypeIdentifier"];
    v13 = [v6 objectForKeyedSubscript:@"passSerialNumber"];
    v14 = v13;
    v15 = 0;
    if (v12 && v13)
    {
      v15 = PKGeneratePassUniqueID();
    }

    v16 = pk_Payment_log();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

    if (v17)
    {
      v18 = pk_Payment_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v91 = v12;
        v92 = 2112;
        v93 = v14;
        v94 = 2112;
        v95 = v15;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "Notice: type ID %@ serial number %@ unique ID %@", buf, 0x20u);
      }
    }

    v19 = +[UIApplication sharedApplication];
    v20 = [v19 applicationState];
    if (v15 && (-[NPKPassbookBridgeSettingsController paymentSetupDelegate](self, "paymentSetupDelegate"), v21 = objc_claimAutoreleasedReturnValue(), v22 = [v21 hasPaymentPassWithUniqueID:v15], v21, v22))
    {
      v23 = v20 != &dword_0 + 2;
      v24 = [(NPKPassbookBridgeSettingsController *)self paymentSetupDelegate];
      v25 = [v24 passWithUniqueID:v15];
      v26 = [v25 paymentPass];

      v27 = [(NPKPassbookBridgeSettingsController *)self settingsController];
      [(NPKPassbookBridgeSettingsController *)self settingsController:v27 requestsDetailViewControllerForPass:v26 animated:v23];

      if (v82)
      {
        v82[2]();
      }
    }

    else
    {
      if (v20 == &dword_0 + 2)
      {
        [(NPKPassbookBridgeSettingsController *)self _startPreflightBackgroundTaskIfNecessary];
        [(NPKPassbookBridgeSettingsController *)self setPerformingBackgroundPreflight:1];
      }

      v36 = [(NPKPassbookBridgeSettingsController *)self settingsController];
      v37 = v36;
      if (v15)
      {
        [v36 refreshPasses];

        objc_initWeak(buf, self);
        v38 = [(NPKPassbookBridgeSettingsController *)self settingsController];
        v87[0] = _NSConcreteStackBlock;
        v87[1] = 3221225472;
        v87[2] = sub_3704;
        v87[3] = &unk_2C728;
        objc_copyWeak(&v89, buf);
        v88 = v82;
        [v38 addCardTappedForPaymentPassWithUniqueID:v15 withCompletion:v87];

        objc_destroyWeak(&v89);
        objc_destroyWeak(buf);
      }

      else
      {
        [v36 addCardTapped];

        if (v82)
        {
          v82[2]();
        }
      }
    }

    goto LABEL_37;
  }

  if ([v83 isEqualToString:@"ACCEPT_PP_TC"])
  {
    v28 = [(NPKPassbookBridgeSettingsController *)self paymentSetupDelegate];
    v29 = [v28 peerPaymentPassUniqueID];

    v30 = [(NPKPassbookBridgeSettingsController *)self paymentSetupDelegate];
    v31 = [v30 passWithUniqueID:v29];
    v32 = [v31 paymentPass];

    if (v32)
    {
      v33 = +[UIApplication sharedApplication];
      v34 = [v33 applicationState] != &dword_0 + 2;

      [(NPKPassbookBridgeSettingsController *)self setShouldNavigateToTermsAndConditions:1];
      v35 = [(NPKPassbookBridgeSettingsController *)self settingsController];
      [(NPKPassbookBridgeSettingsController *)self settingsController:v35 requestsDetailViewControllerForPass:v32 animated:v34];
    }

    if (v82)
    {
      v82[2]();
    }

    goto LABEL_37;
  }

  if ([v83 isEqualToString:@"ACCOUNT_PASS_REPROVISION"])
  {
    v39 = pk_Payment_log();
    v40 = os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT);

    if (v40)
    {
      v41 = pk_Payment_log();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v41, OS_LOG_TYPE_DEFAULT, "Notice: (account-pass-provisioning) handling account pass reprovision", buf, 2u);
      }
    }

    v42 = +[NSNotificationCenter defaultCenter];
    [v42 postNotificationName:@"PKRestartAccountPassProvisioningRequested" object:0];

    goto LABEL_37;
  }

  if ([v83 isEqualToString:@"DETAILS"])
  {
    v43 = pk_Payment_log();
    v44 = os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT);

    if (v44)
    {
      v45 = pk_Payment_log();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v45, OS_LOG_TYPE_DEFAULT, "Notice: Handling pass details presentation request", buf, 2u);
      }
    }

    v46 = [v6 objectForKeyedSubscript:@"passTypeIdentifier"];
    v47 = [v6 objectForKeyedSubscript:@"passSerialNumber"];
    v48 = v47;
    if (v46 && v47 && (PKGeneratePassUniqueID(), (v49 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v50 = [(NPKPassbookBridgeSettingsController *)self paymentSetupDelegate];
      v51 = [v50 hasPaymentPassWithUniqueID:v49];

      if (v51)
      {
        v52 = +[UIApplication sharedApplication];
        v53 = [v52 applicationState] != &dword_0 + 2;

        v54 = [(NPKPassbookBridgeSettingsController *)self paymentSetupDelegate];
        v55 = [v54 passWithUniqueID:v49];
        v56 = [v55 paymentPass];

        v57 = [(NPKPassbookBridgeSettingsController *)self settingsController];
        [(NPKPassbookBridgeSettingsController *)self settingsController:v57 requestsDetailViewControllerForPass:v56 animated:v53];
      }

      else
      {
        v74 = pk_Payment_log();
        v75 = os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT);

        if (!v75)
        {
          goto LABEL_71;
        }

        v56 = pk_Payment_log();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v91 = v49;
          _os_log_impl(&dword_0, v56, OS_LOG_TYPE_DEFAULT, "Notice: Unable to complete pass details presentation request for %@ as no matching pass was found.", buf, 0xCu);
        }
      }
    }

    else
    {
      v70 = pk_Payment_log();
      v71 = os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT);

      if (!v71)
      {
        v49 = 0;
        goto LABEL_71;
      }

      v56 = pk_Payment_log();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v56, OS_LOG_TYPE_DEFAULT, "Notice: Skipped handling pass details presentation request because there is no valid passUniqueID.", buf, 2u);
      }

      v49 = 0;
    }

LABEL_71:
    if (v82)
    {
      v82[2]();
    }

    goto LABEL_37;
  }

  if (![v83 isEqualToString:@"HANDLE_PENDING_TRANSACTION"])
  {
    v84.receiver = self;
    v84.super_class = NPKPassbookBridgeSettingsController;
    [(NPKPassbookBridgeSettingsController *)&v84 handleURL:v6 withCompletion:v82];
    goto LABEL_37;
  }

  v58 = pk_Payment_log();
  v59 = os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT);

  if (v59)
  {
    v60 = pk_Payment_log();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v60, OS_LOG_TYPE_DEFAULT, "Notice: [BarcodeEvent] Handling pending transaction authentication pass.", buf, 2u);
    }
  }

  v61 = [v6 objectForKeyedSubscript:@"passTypeIdentifier"];
  v62 = [v6 objectForKeyedSubscript:@"passSerialNumber"];
  v63 = v62;
  if (v61 && v62 && (PKGeneratePassUniqueID(), (v64 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v65 = [(NPKPassbookBridgeSettingsController *)self pendingTransactionHandler];
    v66 = v65 == 0;

    if (v66)
    {
      v76 = +[UIApplication sharedApplication];
      v77 = [v76 applicationState] != &dword_0 + 2;

      v78 = [(NPKPassbookBridgeSettingsController *)self paymentSetupDelegate];
      v79 = [v78 passWithUniqueID:v64];
      v69 = [v79 paymentPass];

      v80 = [(NPKPassbookBridgeSettingsController *)self settingsController];
      v85[0] = _NSConcreteStackBlock;
      v85[1] = 3221225472;
      v85[2] = sub_3784;
      v85[3] = &unk_2C750;
      v85[4] = self;
      v64 = v64;
      v86 = v64;
      [(NPKPassbookBridgeSettingsController *)self _settingsController:v80 requestsDetailViewControllerForPass:v69 animated:v77 completion:v85];

LABEL_79:
      goto LABEL_80;
    }

    v67 = pk_Payment_log();
    v68 = os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT);

    if (v68)
    {
      v69 = pk_Payment_log();
      if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v69, OS_LOG_TYPE_DEFAULT, "Notice: [BarcodeEvent] Skipped handling pending transaction because there is an on-going session.", buf, 2u);
      }

      goto LABEL_79;
    }
  }

  else
  {
    v72 = pk_Payment_log();
    v73 = os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT);

    if (v73)
    {
      v69 = pk_Payment_log();
      if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v69, OS_LOG_TYPE_DEFAULT, "Notice: [BarcodeEvent] Skipped handling pending transaction because there is no valid passUniqueID.", buf, 2u);
      }

      v64 = 0;
      goto LABEL_79;
    }

    v64 = 0;
  }

LABEL_80:
  if (v82)
  {
    v82[2]();
  }

LABEL_37:
}

- (void)_handlePaymentPassDetailAppearedNotification:(id)a3
{
  if ([(NPKPassbookBridgeSettingsController *)self shouldNavigateToTermsAndConditions])
  {
    v4 = [(NPKPassbookBridgeSettingsController *)self navigationController];
    v5 = [v4 topViewController];

    if (objc_opt_respondsToSelector())
    {
      [v5 presentTermsAndConditions];
    }

    [(NPKPassbookBridgeSettingsController *)self setShouldNavigateToTermsAndConditions:0];
  }
}

- (void)_handleDatabaseChanged:(id)a3
{
  v4 = a3;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v4 name];
      v11 = 138412290;
      v12 = v8;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Notice: Database changed, refreshing passes... (notification name = %@)", &v11, 0xCu);
    }
  }

  v9 = [(NPKPassbookBridgeSettingsController *)self settingsController];
  [v9 refreshPasses];

  v10 = +[NSNotificationCenter defaultCenter];
  [v10 postNotificationName:PKPassLibraryDidChangeNotification object:0];
}

- (void)_handleDefaultCardChanged:(id)a3
{
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Notice: Refreshing default card...", v8, 2u);
    }
  }

  v7 = [(NPKPassbookBridgeSettingsController *)self settingsController];
  [v7 refreshDefaultCard];
}

- (void)_handleCompanionPassesChanged:(id)a3
{
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Notice: Companion pass library changed, refreshing passes", buf, 2u);
    }
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_3AFC;
  block[3] = &unk_2C6C0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_handlePreferencesChanged:(id)a3
{
  v4 = [(NPKPassbookBridgeSettingsController *)self paymentSetupDelegate];
  v5 = [v4 isSettingsControllerReloadNecessary];

  v6 = [(NPKPassbookBridgeSettingsController *)self provisioningController];
  v7 = [v6 isSettingsControllerReloadNecessary];

  v8 = pk_Payment_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11[0] = 67109376;
      v11[1] = v5;
      v12 = 1024;
      v13 = v7;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Notice: Preferences changed… delegate wants refresh %d, provisioning controller wants refresh %d", v11, 0xEu);
    }
  }

  if ((v5 | v7))
  {
    [(NPKPassbookBridgeSettingsController *)self reloadSpecifiers];
  }
}

- (void)_handlePeerPaymentWebServiceChanged:(id)a3
{
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Notice: Peer payment web service changed; refreshing status", v8, 2u);
    }
  }

  v7 = [(NPKPassbookBridgeSettingsController *)self settingsController];
  [v7 refreshPeerPaymentStatus];
}

- (void)_handleWillEnterForegroundNotification:(id)a3
{
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Notice: Got will enter foreground notification; reloading passes", buf, 2u);
    }
  }

  v7 = [(NPKPassbookBridgeSettingsController *)self paymentSetupDelegate];
  v8 = [v7 companionAgentConnection];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_3E30;
  v9[3] = &unk_2C6C0;
  v9[4] = self;
  [v8 reloadPaymentPassesWithCompletion:v9];

  [PKAnalyticsReporter beginSubjectReporting:PKAnalyticsSubjectBridge];
}

- (void)_handleDidEnterBackgroundNotification:(id)a3
{
  v3 = pk_Payment_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_Payment_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Notice: Got did enter background notification", v6, 2u);
    }
  }

  [PKAnalyticsReporter endSubjectReporting:PKAnalyticsSubjectBridge];
}

- (void)_handleApplicationDidBecomeActiveNotification:(id)a3
{
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Notice: Got application did become active notification", v8, 2u);
    }
  }

  v7 = [(NPKPassbookBridgeSettingsController *)self settingsController];
  [v7 applicationDidBecomeActive];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = NPKPassbookBridgeSettingsController;
  [(NPKPassbookBridgeSettingsController *)&v6 viewDidLoad];
  v3 = [(NPKPassbookBridgeSettingsController *)self settingsController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(NPKPassbookBridgeSettingsController *)self settingsController];
    [v5 performSelector:"viewDidLoad"];
  }
}

- (void)settingsController:(id)a3 requestsAddCardPreflightWithCompletion:(id)a4
{
  v5 = a4;
  [(NPKPassbookBridgeSettingsController *)self _startPreflightBackgroundTaskIfNecessary];
  v6 = [(NPKPassbookBridgeSettingsController *)self provisioningController];
  [v6 preflightWithCompletion:v5];
}

- (void)settingsController:(id)a3 requestsAddLocalCardPreflightWithCompletion:(id)a4
{
  v5 = a4;
  [(NPKPassbookBridgeSettingsController *)self _startPreflightBackgroundTaskIfNecessary];
  v6 = [(NPKPassbookBridgeSettingsController *)self provisioningController];
  [v6 preflightForLocalPassWithCompletion:v5];
}

- (BOOL)isPresentingViewController
{
  v2 = [(NPKPassbookBridgeSettingsController *)self presentedViewController];
  v3 = v2 != 0;

  return v3;
}

- (void)settingsController:(id)a3 requestsPresentViewController:(id)a4 animated:(BOOL)a5 completion:(id)a6
{
  LODWORD(v7) = a5;
  v9 = a4;
  v10 = a6;
  v11 = pk_Payment_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = pk_Payment_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v30 = v9;
      v31 = 1024;
      v32 = v7;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Notice: Bridge settings controller requested to present view controller %@ animated %d", buf, 0x12u);
    }
  }

  v14 = [(NPKPassbookBridgeSettingsController *)self _shouldPresentOrPushViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = v9;
    v16 = [v15 title];
    v17 = [v15 message];
    v18 = objc_alloc_init(NSMutableDictionary);
    v19 = v18;
    if (v16)
    {
      [v18 setObject:v16 forKeyedSubscript:NSLocalizedFailureReasonErrorKey];
    }

    if (v17)
    {
      [v19 setObject:v17 forKeyedSubscript:NSLocalizedRecoverySuggestionErrorKey];
    }

    v20 = [NSError errorWithDomain:PKDisplayableErrorDomain code:0 userInfo:v19];
    v21 = ![(NPKPassbookBridgeSettingsController *)self _handleProvisioningPreflightFinishedWithSuccess:0 displayableError:v20]& v14;

    if ((v21 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (!v14)
  {
LABEL_11:
    [(NPKPassbookBridgeSettingsController *)self _handleProvisioningPreflightFinishedWithSuccess:0 displayableError:0];
    if (v10)
    {
      v10[2](v10);
    }

    goto LABEL_18;
  }

  v22 = +[UIApplication sharedApplication];
  v23 = [v22 applicationState];

  if (v23 == &dword_0 + 2)
  {
    v7 = 0;
  }

  else
  {
    v7 = v7;
  }

  v24 = [(NPKPassbookBridgeSettingsController *)self splitViewController];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_4614;
  v25[3] = &unk_2C778;
  v26 = v9;
  v27 = self;
  v28 = v10;
  [v24 presentViewController:v26 animated:v7 completion:v25];

LABEL_18:
}

- (void)registerTableCellClass:(Class)a3 forCellReuseIdentifier:(id)a4
{
  v6 = a4;
  v7 = [(NPKPassbookBridgeSettingsController *)self table];
  [v7 registerClass:a3 forCellReuseIdentifier:v6];
}

- (void)_settingsController:(id)a3 requestsDetailViewControllerForPass:(id)a4 animated:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (v11 && [(NPKPassbookBridgeSettingsController *)self _shouldPresentOrPushViewController])
  {
    v44 = v10;
    v13 = [(NPKPassbookBridgeSettingsController *)self groupsController];
    v43 = v11;
    v14 = [v11 uniqueID];
    v15 = [v13 groupIndexForPassUniqueID:v14];

    v42 = v12;
    v41 = v7;
    if (v15 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v45 = 0;
    }

    else
    {
      v20 = [(NPKPassbookBridgeSettingsController *)self groupsController];
      v45 = [v20 groupAtIndex:v15];
    }

    v21 = [PKPaymentPassDetailViewController alloc];
    v22 = [(NPKPassbookBridgeSettingsController *)self groupsController];
    v23 = [(NPKPassbookBridgeSettingsController *)self paymentSetupDelegate];
    v24 = [v23 webService];
    v25 = [(NPKPassbookBridgeSettingsController *)self paymentSetupDelegate];
    v26 = [v25 peerPaymentWebService];
    v27 = [(NPKPassbookBridgeSettingsController *)self paymentSetupDelegate];
    v28 = [(NPKPassbookBridgeSettingsController *)self provisioningController];
    v11 = v43;
    v29 = [v21 initWithPass:v43 group:v45 groupsController:v22 webService:v24 peerPaymentWebService:v26 style:2 passLibraryDataProvider:v27 paymentServiceDataProvider:v28];

    v30 = [(NPKPassbookBridgeSettingsController *)self paymentSetupDelegate];
    [v29 setDeleteOverrider:v30];

    v31 = +[PSListController appearance];
    v32 = [v31 textColor];
    [v29 setPrimaryTextColor:v32];

    v33 = +[PSListController appearance];
    v34 = [v33 altTextColor];
    [v29 setDetailTextColor:v34];

    v35 = +[PSListController appearance];
    v36 = [v35 buttonTextColor];
    [v29 setLinkTextColor:v36];

    v37 = +[UIColor systemRedColor];
    [v29 setWarningTextColor:v37];

    v38 = +[PSListController appearance];
    v39 = [v38 cellHighlightColor];
    [v29 setHighlightColor:v39];

    +[CATransaction begin];
    v40 = [(NPKPassbookBridgeSettingsController *)self settingsController];
    [(NPKPassbookBridgeSettingsController *)self settingsController:v40 requestsPushViewController:v29 animated:v41];

    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_5174;
    v46[3] = &unk_2C7A0;
    v12 = v42;
    v47 = v42;
    [CATransaction setCompletionBlock:v46];
    +[CATransaction commit];

    v10 = v44;
  }

  else
  {
    v16 = pk_Payment_log();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

    if (v17)
    {
      v18 = pk_Payment_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [v11 uniqueID];
        *buf = 138412290;
        v49 = v19;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "Notice: Unable to push pass detail view controller for pass: %@", buf, 0xCu);
      }
    }

    if (v12)
    {
      v12[2](v12);
    }
  }
}

- (BOOL)_shouldPresentOrPushViewController
{
  v3 = [(NPKPassbookBridgeSettingsController *)self navigationController];
  v4 = [v3 topViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 childViewControllers];
    v6 = [v5 containsObject:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)settingsControllerRequestsPresentPrivacyWithPresenter:(id)a3
{
  v5 = a3;
  if ([(NPKPassbookBridgeSettingsController *)self _shouldPresentOrPushViewController])
  {
    v4 = [(NPKPassbookBridgeSettingsController *)self splitViewController];
    [v5 setPresentingViewController:v4];

    [v5 present];
  }
}

- (void)settingsController:(id)a3 requestsAuthenticationChallengeForAppleAccountInformation:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = objc_alloc_init(AKAppleIDAuthenticationInAppContext);
  [v9 setPresentingViewController:self];
  v10 = [v8 appleID];
  [v9 setUsername:v10];

  v11 = [v8 aaAlternateDSID];

  [v9 setAltDSID:v11];
  [v9 setIsUsernameEditable:0];
  [v9 setShouldPromptForPasswordOnly:1];
  [v9 setAuthenticationType:2];
  v12 = objc_alloc_init(AKAppleIDAuthenticationController);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_53E8;
  v14[3] = &unk_2C7F0;
  v14[4] = self;
  v15 = v7;
  v13 = v7;
  [v12 authenticateWithContext:v9 completion:v14];
}

- (void)settingsController:(id)a3 requestShowPeerPaymentAssociatedAccountsFlowWithController:(id)a4 withPresentationContext:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(NPKPassbookBridgeSettingsController *)self navigationController];
  [v8 presentAssociatedAccountsFlowWithPresentationContext:v7 fromNavigationController:v9];
}

- (void)settingsController:(id)a3 requestsPresentInboxMessage:(id)a4 animated:(BOOL)a5 completion:(id)a6
{
  if (a6)
  {
    (*(a6 + 2))(a6);
  }
}

- (void)settingsController:(id)a3 requestsPresentAuthorizationFlowWithRedirectURL:(id)a4 animated:(BOOL)a5 completion:(id)a6
{
  v6 = a6;
  v7 = pk_Payment_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = pk_Payment_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Warning: Unhandled call to settingsController:requestsPresentInboxMessage:animated:completion:", v10, 2u);
    }
  }

  if (v6)
  {
    v6[2](v6);
  }
}

- (void)_startPreflightBackgroundTaskIfNecessary
{
  if ([(NPKPassbookBridgeSettingsController *)self backgroundPreflightingTaskIdentifier]== UIBackgroundTaskInvalid)
  {
    +[UIApplication sharedApplication];
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_59D4;
    v9[3] = &unk_2C818;
    v9[4] = self;
    v3 = v11 = &v12;
    v10 = v3;
    v4 = [v3 beginBackgroundTaskWithName:@"Apple Pay preflight" expirationHandler:v9];
    v13[3] = v4;
    [(NPKPassbookBridgeSettingsController *)self setBackgroundPreflightingTaskIdentifier:v4];
    v5 = pk_Payment_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (v6)
    {
      v7 = pk_Payment_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v13[3];
        *buf = 134217984;
        v17 = v8;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Notice: Began preflight background task: %lu", buf, 0xCu);
      }
    }

    _Block_object_dispose(&v12, 8);
  }
}

- (void)_endPreflightBackgroundTaskIfNecessary
{
  v3 = [(NPKPassbookBridgeSettingsController *)self backgroundPreflightingTaskIdentifier];
  if (v3 != UIBackgroundTaskInvalid)
  {
    v4 = v3;
    v5 = pk_Payment_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (v6)
    {
      v7 = pk_Payment_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 134217984;
        v10 = v4;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Notice: Ending preflight background task: %lu", &v9, 0xCu);
      }
    }

    v8 = +[UIApplication sharedApplication];
    [v8 endBackgroundTask:v4];

    [(NPKPassbookBridgeSettingsController *)self setBackgroundPreflightingTaskIdentifier:UIBackgroundTaskInvalid];
  }
}

- (void)_launchBridgeInForegroundWithCompletion:(id)a3
{
  v3 = a3;
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Notice: Bringing Bridge to the foreground", buf, 2u);
    }
  }

  v7 = +[FBSOpenApplicationService serviceWithDefaultShellEndpoint];
  v8 = +[NSBundle mainBundle];
  v9 = [v8 bundleIdentifier];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_604C;
  v11[3] = &unk_2C890;
  v12 = v3;
  v10 = v3;
  [v7 openApplication:v9 withOptions:0 completion:v11];
}

- (void)allowEnableExpressGymKitWithVisibleViewController:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = pk_Payment_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v38 = self;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Notice: NPKPassbookBridgeSettingsController: requested allow enable GymKit with view controller: %@", buf, 0xCu);
    }
  }

  if (v6 && v7)
  {
    v11 = [(NPKPassbookBridgeSettingsController *)self provisioningController];
    v12 = [v11 expressPassConfigurations];

    v13 = pk_Payment_log();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

    if (v14)
    {
      v15 = pk_Payment_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [v12 count];
        *buf = 134217984;
        v38 = v16;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "Notice: NPKPassbookBridgeSettingsController: found %lu express passes.", buf, 0xCu);
      }
    }

    if ([v12 count]== &dword_0 + 1)
    {
      v17 = [v12 anyObject];
      v18 = [v17 passInformation];
      v19 = [v18 npk_hasImmediateAutomaticSelectionCriterion];

      if (v19)
      {
        if (v17)
        {
          v20 = [v17 passUniqueIdentifier];
          v21 = [(NPKPassbookBridgeSettingsController *)self provisioningController];
          v22 = [v21 passLibraryDataProvider];
          v23 = [v22 passWithUniqueID:v20];

          v24 = pk_Payment_log();
          v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);

          if (v23)
          {
            if (v25)
            {
              v26 = pk_Payment_log();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v38 = v20;
                _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "Notice: NPKPassbookBridgeSettingsController: found one pass with unique ID %@ that conflicts with GymKit", buf, 0xCu);
              }
            }

            v33[0] = _NSConcreteStackBlock;
            v33[1] = 3221225472;
            v33[2] = sub_65CC;
            v33[3] = &unk_2C8E0;
            v33[4] = self;
            v34 = v20;
            v35 = v6;
            v36 = v7;
            [(NPKPassbookBridgeSettingsController *)self _promptUserAboutGymKitConflictWithPass:v23 visibleViewController:v35 completion:v33];
          }

          else
          {
            if (v25)
            {
              v32 = pk_Payment_log();
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v38 = v20;
                _os_log_impl(&dword_0, v32, OS_LOG_TYPE_DEFAULT, "Warning: NPKPassbookBridgeSettingsController: have express pass information for a conflicting pass with unique ID %@, but no pass on the device", buf, 0xCu);
              }
            }

            (*(v7 + 2))(v7, 1, 0);
          }

LABEL_29:
          goto LABEL_30;
        }
      }

      else
      {
      }
    }

    v29 = pk_Payment_log();
    v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);

    if (v30)
    {
      v31 = pk_Payment_log();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEFAULT, "Notice: NPKPassbookBridgeSettingsController: no passes that conflict with GymKit", buf, 2u);
      }
    }

    (*(v7 + 2))(v7, 1, 0);
    goto LABEL_29;
  }

  v27 = pk_Payment_log();
  v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);

  if (v28)
  {
    v12 = pk_Payment_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Notice: NPKPassbookBridgeSettingsController: missing completion block or view controller", buf, 2u);
    }

    goto LABEL_29;
  }

LABEL_30:
}

- (void)_promptUserAboutGymKitConflictWithPass:(id)a3 visibleViewController:(id)a4 completion:(id)a5
{
  v30 = a5;
  v31 = a4;
  v7 = a3;
  v8 = [v7 uniqueID];
  v9 = pk_Payment_log();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v11 = pk_Payment_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v39 = v8;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Notice: NPKPassbookBridgeSettingsController: prompting user about disabling express mode for conflicting pass with unique ID %@", buf, 0xCu);
    }
  }

  v27 = v8;
  v12 = [NSBundle bundleForClass:objc_opt_class()];
  v29 = [v12 localizedStringForKey:@"EXPRESS_GYMKIT_CONFLICT_TITLE" value:&stru_2D300 table:@"NanoPassbookBridgeSettings-Companion_ICE"];

  v13 = [NSBundle bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"EXPRESS_GYMKIT_CONFLICT_MESSAGE" value:&stru_2D300 table:@"NanoPassbookBridgeSettings-Companion_ICE"];
  v15 = [v7 localizedDescription];

  v28 = [NSString stringWithFormat:v14, v15];

  v16 = [UIAlertController alertControllerWithTitle:v29 message:v28 preferredStyle:1];
  v17 = [NSBundle bundleForClass:objc_opt_class()];
  v18 = [v17 localizedStringForKey:@"EXPRESS_GYMKIT_CONFLICT_ERROR_ACKNOWLEDGE_BUTTON_TITLE" value:&stru_2D300 table:@"NanoPassbookBridgeSettings-Companion_ICE"];
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_6BF8;
  v35[3] = &unk_2C908;
  v19 = v27;
  v36 = v19;
  v20 = v30;
  v37 = v20;
  v21 = [UIAlertAction actionWithTitle:v18 style:1 handler:v35];
  [v16 addAction:v21];

  v22 = [NSBundle bundleForClass:objc_opt_class()];
  v23 = [v22 localizedStringForKey:@"EXPRESS_GYMKIT_CONFLICT_ERROR_CANCEL_BUTTON_TITLE" value:&stru_2D300 table:@"NanoPassbookBridgeSettings-Companion_ICE"];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_6CDC;
  v32[3] = &unk_2C908;
  v33 = v19;
  v34 = v20;
  v24 = v20;
  v25 = v19;
  v26 = [UIAlertAction actionWithTitle:v23 style:0 handler:v32];
  [v16 addAction:v26];

  [v31 presentViewController:v16 animated:1 completion:0];
}

- (void)_setupPendingTransactionHandlerForPassWithUniqueID:(id)a3
{
  v4 = a3;
  v5 = [NPKBridgePendingTransactionHandler alloc];
  v6 = [(NPKPassbookBridgeSettingsController *)self paymentSetupDelegate];
  v7 = [v6 companionAgentConnection];
  v8 = [(NPKBridgePendingTransactionHandler *)v5 initWithPassUniqueID:v4 companionAgentConnection:v7];

  [(NPKBridgePendingTransactionHandler *)v8 setDelegate:self];
  [(NPKPassbookBridgeSettingsController *)self setPendingTransactionHandler:v8];
}

- (id)presentingViewControllerForPendingTransactionHandler:(id)a3
{
  v4 = a3;
  v5 = [(NPKPassbookBridgeSettingsController *)self pendingTransactionHandler];

  if (v5 == v4)
  {
    v6 = [(NPKPassbookBridgeSettingsController *)self pkui_frontMostViewController];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)pendingTransactionHandlerDidComplete:(id)a3
{
  v4 = a3;
  v5 = [(NPKPassbookBridgeSettingsController *)self pendingTransactionHandler];

  if (v5 == v4)
  {

    [(NPKPassbookBridgeSettingsController *)self setPendingTransactionHandler:0];
  }
}

@end