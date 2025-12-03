@interface NPKPassbookBridgeSettingsController
+ (BOOL)shouldShowUpdateRequired;
- (BOOL)_shouldPresentOrPushViewController;
- (BOOL)isPresentingViewController;
- (BOOL)prepareHandlingURLForSpecifierID:(id)d resourceDictionary:(id)dictionary animatePush:(BOOL *)push;
- (Class)tableViewClass;
- (NPKPassbookBridgeSettingsController)init;
- (id)localizedMirroringDetailFooter;
- (id)localizedPaneTitle;
- (id)presentingViewControllerForPendingTransactionHandler:(id)handler;
- (id)specifiers;
- (void)_endPreflightBackgroundTaskIfNecessary;
- (void)_handleApplicationDidBecomeActiveNotification:(id)notification;
- (void)_handleCompanionPassesChanged:(id)changed;
- (void)_handleDatabaseChanged:(id)changed;
- (void)_handleDefaultCardChanged:(id)changed;
- (void)_handleDidEnterBackgroundNotification:(id)notification;
- (void)_handlePaymentPassDetailAppearedNotification:(id)notification;
- (void)_handlePeerPaymentWebServiceChanged:(id)changed;
- (void)_handlePreferencesChanged:(id)changed;
- (void)_handleWillEnterForegroundNotification:(id)notification;
- (void)_launchBridgeInForegroundWithCompletion:(id)completion;
- (void)_promptUserAboutGymKitConflictWithPass:(id)pass visibleViewController:(id)controller completion:(id)completion;
- (void)_settingsController:(id)controller requestsDetailViewControllerForPass:(id)pass animated:(BOOL)animated completion:(id)completion;
- (void)_setupPendingTransactionHandlerForPassWithUniqueID:(id)d;
- (void)_startPreflightBackgroundTaskIfNecessary;
- (void)allowEnableExpressGymKitWithVisibleViewController:(id)controller completion:(id)completion;
- (void)dealloc;
- (void)handleURL:(id)l withCompletion:(id)completion;
- (void)pendingTransactionHandlerDidComplete:(id)complete;
- (void)registerTableCellClass:(Class)class forCellReuseIdentifier:(id)identifier;
- (void)settingsController:(id)controller requestShowPeerPaymentAssociatedAccountsFlowWithController:(id)withController withPresentationContext:(id)context;
- (void)settingsController:(id)controller requestsAddCardPreflightWithCompletion:(id)completion;
- (void)settingsController:(id)controller requestsAddLocalCardPreflightWithCompletion:(id)completion;
- (void)settingsController:(id)controller requestsAuthenticationChallengeForAppleAccountInformation:(id)information completion:(id)completion;
- (void)settingsController:(id)controller requestsPresentAuthorizationFlowWithRedirectURL:(id)l animated:(BOOL)animated completion:(id)completion;
- (void)settingsController:(id)controller requestsPresentInboxMessage:(id)message animated:(BOOL)animated completion:(id)completion;
- (void)settingsController:(id)controller requestsPresentViewController:(id)viewController animated:(BOOL)animated completion:(id)completion;
- (void)settingsControllerRequestsPresentPrivacyWithPresenter:(id)presenter;
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

    paymentSetupDelegate = [(NPKPassbookBridgeSettingsController *)v2 paymentSetupDelegate];
    companionAgentConnection = [paymentSetupDelegate companionAgentConnection];

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:v2 selector:"_handleDatabaseChanged:" name:NPKCompanionAgentConnectionPaymentPassesChanged object:companionAgentConnection];
    [v6 addObserver:v2 selector:"_handleDefaultCardChanged:" name:NPKCompanionAgentConnectionDefaultCardChanged object:companionAgentConnection];
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

    paymentSetupDelegate2 = [(NPKPassbookBridgeSettingsController *)v9 paymentSetupDelegate];
    [paymentSetupDelegate2 loadWebService];

    v12 = [NPKStockholmProvisioningController alloc];
    paymentSetupDelegate3 = [(NPKPassbookBridgeSettingsController *)v9 paymentSetupDelegate];
    v14 = [(NPKStockholmProvisioningController *)v12 initWithPaymentSetupDelegate:paymentSetupDelegate3];
    [(NPKPassbookBridgeSettingsController *)v9 setProvisioningController:v14];

    v15 = pk_Payment_log();
    LODWORD(paymentSetupDelegate3) = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

    if (paymentSetupDelegate3)
    {
      v16 = pk_Payment_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        paymentSetupDelegate4 = [(NPKPassbookBridgeSettingsController *)v9 paymentSetupDelegate];
        provisioningController = [(NPKPassbookBridgeSettingsController *)v9 provisioningController];
        *buf = 138412546;
        v34 = paymentSetupDelegate4;
        v35 = 2112;
        v36 = provisioningController;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "Notice: Payment setup delegate: %@, provisioning controller: %@", buf, 0x16u);
      }
    }

    v19 = [PKPassbookSettingsController alloc];
    provisioningController2 = [(NPKPassbookBridgeSettingsController *)v9 provisioningController];
    v21 = [v19 initWithDelegate:v9 dataSource:provisioningController2 context:1];
    [(NPKPassbookBridgeSettingsController *)v9 setSettingsController:v21];

    provisioningController3 = [(NPKPassbookBridgeSettingsController *)v9 provisioningController];
    [provisioningController3 updateRegionSupportIfNecessary];

    [(NPKPassbookBridgeSettingsController *)v9 setBackgroundPreflightingTaskIdentifier:UIBackgroundTaskInvalid];
    -[NPKPassbookBridgeSettingsController setShowUpdateRequired:](v9, "setShowUpdateRequired:", [objc_opt_class() shouldShowUpdateRequired]);
    v23 = objc_alloc_init(PKPassLibrary);
    _remoteLibrary = [v23 _remoteLibrary];

    v25 = [[PKGroupsController alloc] initWithPassLibrary:_remoteLibrary];
    [(NPKPassbookBridgeSettingsController *)v9 setGroupsController:v25];

    groupsController = [(NPKPassbookBridgeSettingsController *)v9 groupsController];
    [groupsController loadGroupsWithCompletion:&stru_2C700];

    v27 = +[UIApplication sharedApplication];
    applicationState = [v27 applicationState];

    if (applicationState != &dword_0 + 2)
    {
      [PKAnalyticsReporter beginSubjectReporting:PKAnalyticsSubjectBridge];
    }
  }

  return v2;
}

- (void)dealloc
{
  [PKAnalyticsReporter endSubjectReporting:PKAnalyticsSubjectBridge];
  settingsController = [(NPKPassbookBridgeSettingsController *)self settingsController];
  [settingsController setDelegate:0];

  v4.receiver = self;
  v4.super_class = NPKPassbookBridgeSettingsController;
  [(NPKPassbookBridgeSettingsController *)&v4 dealloc];
}

- (id)localizedPaneTitle
{
  provisioningController = [(NPKPassbookBridgeSettingsController *)self provisioningController];
  isRegistrationSupported = [provisioningController isRegistrationSupported];

  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = v4;
  if (isRegistrationSupported)
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
      specifiers = [(NPKPassbookBridgeSettingsController *)&v31 specifiers];
      v7 = specifiers;
      if (specifiers)
      {
        v8 = specifiers;
      }

      else
      {
        v8 = +[NSArray array];
      }

      v9 = v8;

      v10 = +[NSArray array];
      suppressMirrorOption = [(NPKPassbookBridgeSettingsController *)self suppressMirrorOption];
      if (suppressMirrorOption)
      {
        v12 = @"CUSTOM_RADIO_GROUP_ID";
      }

      else
      {
        v12 = @"MIRROR_RADIO_GROUP_ID";
      }

      v13 = [v9 specifierForID:v12];
      if (suppressMirrorOption && [(NPKPassbookBridgeSettingsController *)self mirrorSettings])
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

        settingsController = [(NPKPassbookBridgeSettingsController *)self settingsController];
        specifiers2 = [settingsController specifiers];
        v23 = specifiers2;
        if (specifiers2)
        {
          v24 = specifiers2;
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
    tableViewClass = objc_opt_class();
  }

  else
  {
    v5.receiver = self;
    v5.super_class = NPKPassbookBridgeSettingsController;
    tableViewClass = [(NPKPassbookBridgeSettingsController *)&v5 tableViewClass];
  }

  return tableViewClass;
}

- (BOOL)prepareHandlingURLForSpecifierID:(id)d resourceDictionary:(id)dictionary animatePush:(BOOL *)push
{
  dCopy = d;
  dictionaryCopy = dictionary;
  v8 = pk_Payment_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412546;
      v13 = dictionaryCopy;
      v14 = 2112;
      v15 = dCopy;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Notice: prepare handling URL: %@ with specifier: %@@", &v12, 0x16u);
    }
  }

  return 1;
}

- (void)handleURL:(id)l withCompletion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  v7 = pk_Payment_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = pk_Payment_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_retainBlock(completionCopy);
      *buf = 138412546;
      v91 = lCopy;
      v92 = 2112;
      v93 = v10;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Notice: handling URL: %@ withCompletion: %@", buf, 0x16u);
    }
  }

  settingsController = [(NPKPassbookBridgeSettingsController *)self settingsController];
  [settingsController willHandleURL];

  v83 = [lCopy objectForKeyedSubscript:@"action"];
  if ([v83 isEqualToString:@"ADD_CARD"])
  {
    v12 = [lCopy objectForKeyedSubscript:@"passTypeIdentifier"];
    v13 = [lCopy objectForKeyedSubscript:@"passSerialNumber"];
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
    applicationState = [v19 applicationState];
    if (v15 && (-[NPKPassbookBridgeSettingsController paymentSetupDelegate](self, "paymentSetupDelegate"), v21 = objc_claimAutoreleasedReturnValue(), v22 = [v21 hasPaymentPassWithUniqueID:v15], v21, v22))
    {
      v23 = applicationState != &dword_0 + 2;
      paymentSetupDelegate = [(NPKPassbookBridgeSettingsController *)self paymentSetupDelegate];
      v25 = [paymentSetupDelegate passWithUniqueID:v15];
      paymentPass = [v25 paymentPass];

      settingsController2 = [(NPKPassbookBridgeSettingsController *)self settingsController];
      [(NPKPassbookBridgeSettingsController *)self settingsController:settingsController2 requestsDetailViewControllerForPass:paymentPass animated:v23];

      if (v82)
      {
        v82[2]();
      }
    }

    else
    {
      if (applicationState == &dword_0 + 2)
      {
        [(NPKPassbookBridgeSettingsController *)self _startPreflightBackgroundTaskIfNecessary];
        [(NPKPassbookBridgeSettingsController *)self setPerformingBackgroundPreflight:1];
      }

      settingsController3 = [(NPKPassbookBridgeSettingsController *)self settingsController];
      v37 = settingsController3;
      if (v15)
      {
        [settingsController3 refreshPasses];

        objc_initWeak(buf, self);
        settingsController4 = [(NPKPassbookBridgeSettingsController *)self settingsController];
        v87[0] = _NSConcreteStackBlock;
        v87[1] = 3221225472;
        v87[2] = sub_3704;
        v87[3] = &unk_2C728;
        objc_copyWeak(&v89, buf);
        v88 = v82;
        [settingsController4 addCardTappedForPaymentPassWithUniqueID:v15 withCompletion:v87];

        objc_destroyWeak(&v89);
        objc_destroyWeak(buf);
      }

      else
      {
        [settingsController3 addCardTapped];

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
    paymentSetupDelegate2 = [(NPKPassbookBridgeSettingsController *)self paymentSetupDelegate];
    peerPaymentPassUniqueID = [paymentSetupDelegate2 peerPaymentPassUniqueID];

    paymentSetupDelegate3 = [(NPKPassbookBridgeSettingsController *)self paymentSetupDelegate];
    v31 = [paymentSetupDelegate3 passWithUniqueID:peerPaymentPassUniqueID];
    paymentPass2 = [v31 paymentPass];

    if (paymentPass2)
    {
      v33 = +[UIApplication sharedApplication];
      v34 = [v33 applicationState] != &dword_0 + 2;

      [(NPKPassbookBridgeSettingsController *)self setShouldNavigateToTermsAndConditions:1];
      settingsController5 = [(NPKPassbookBridgeSettingsController *)self settingsController];
      [(NPKPassbookBridgeSettingsController *)self settingsController:settingsController5 requestsDetailViewControllerForPass:paymentPass2 animated:v34];
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

    v46 = [lCopy objectForKeyedSubscript:@"passTypeIdentifier"];
    v47 = [lCopy objectForKeyedSubscript:@"passSerialNumber"];
    v48 = v47;
    if (v46 && v47 && (PKGeneratePassUniqueID(), (v49 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      paymentSetupDelegate4 = [(NPKPassbookBridgeSettingsController *)self paymentSetupDelegate];
      v51 = [paymentSetupDelegate4 hasPaymentPassWithUniqueID:v49];

      if (v51)
      {
        v52 = +[UIApplication sharedApplication];
        v53 = [v52 applicationState] != &dword_0 + 2;

        paymentSetupDelegate5 = [(NPKPassbookBridgeSettingsController *)self paymentSetupDelegate];
        v55 = [paymentSetupDelegate5 passWithUniqueID:v49];
        paymentPass3 = [v55 paymentPass];

        settingsController6 = [(NPKPassbookBridgeSettingsController *)self settingsController];
        [(NPKPassbookBridgeSettingsController *)self settingsController:settingsController6 requestsDetailViewControllerForPass:paymentPass3 animated:v53];
      }

      else
      {
        v74 = pk_Payment_log();
        v75 = os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT);

        if (!v75)
        {
          goto LABEL_71;
        }

        paymentPass3 = pk_Payment_log();
        if (os_log_type_enabled(paymentPass3, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v91 = v49;
          _os_log_impl(&dword_0, paymentPass3, OS_LOG_TYPE_DEFAULT, "Notice: Unable to complete pass details presentation request for %@ as no matching pass was found.", buf, 0xCu);
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

      paymentPass3 = pk_Payment_log();
      if (os_log_type_enabled(paymentPass3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, paymentPass3, OS_LOG_TYPE_DEFAULT, "Notice: Skipped handling pass details presentation request because there is no valid passUniqueID.", buf, 2u);
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
    [(NPKPassbookBridgeSettingsController *)&v84 handleURL:lCopy withCompletion:v82];
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

  v61 = [lCopy objectForKeyedSubscript:@"passTypeIdentifier"];
  v62 = [lCopy objectForKeyedSubscript:@"passSerialNumber"];
  v63 = v62;
  if (v61 && v62 && (PKGeneratePassUniqueID(), (v64 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    pendingTransactionHandler = [(NPKPassbookBridgeSettingsController *)self pendingTransactionHandler];
    v66 = pendingTransactionHandler == 0;

    if (v66)
    {
      v76 = +[UIApplication sharedApplication];
      v77 = [v76 applicationState] != &dword_0 + 2;

      paymentSetupDelegate6 = [(NPKPassbookBridgeSettingsController *)self paymentSetupDelegate];
      v79 = [paymentSetupDelegate6 passWithUniqueID:v64];
      paymentPass4 = [v79 paymentPass];

      settingsController7 = [(NPKPassbookBridgeSettingsController *)self settingsController];
      v85[0] = _NSConcreteStackBlock;
      v85[1] = 3221225472;
      v85[2] = sub_3784;
      v85[3] = &unk_2C750;
      v85[4] = self;
      v64 = v64;
      v86 = v64;
      [(NPKPassbookBridgeSettingsController *)self _settingsController:settingsController7 requestsDetailViewControllerForPass:paymentPass4 animated:v77 completion:v85];

LABEL_79:
      goto LABEL_80;
    }

    v67 = pk_Payment_log();
    v68 = os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT);

    if (v68)
    {
      paymentPass4 = pk_Payment_log();
      if (os_log_type_enabled(paymentPass4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, paymentPass4, OS_LOG_TYPE_DEFAULT, "Notice: [BarcodeEvent] Skipped handling pending transaction because there is an on-going session.", buf, 2u);
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
      paymentPass4 = pk_Payment_log();
      if (os_log_type_enabled(paymentPass4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, paymentPass4, OS_LOG_TYPE_DEFAULT, "Notice: [BarcodeEvent] Skipped handling pending transaction because there is no valid passUniqueID.", buf, 2u);
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

- (void)_handlePaymentPassDetailAppearedNotification:(id)notification
{
  if ([(NPKPassbookBridgeSettingsController *)self shouldNavigateToTermsAndConditions])
  {
    navigationController = [(NPKPassbookBridgeSettingsController *)self navigationController];
    topViewController = [navigationController topViewController];

    if (objc_opt_respondsToSelector())
    {
      [topViewController presentTermsAndConditions];
    }

    [(NPKPassbookBridgeSettingsController *)self setShouldNavigateToTermsAndConditions:0];
  }
}

- (void)_handleDatabaseChanged:(id)changed
{
  changedCopy = changed;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      name = [changedCopy name];
      v11 = 138412290;
      v12 = name;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Notice: Database changed, refreshing passes... (notification name = %@)", &v11, 0xCu);
    }
  }

  settingsController = [(NPKPassbookBridgeSettingsController *)self settingsController];
  [settingsController refreshPasses];

  v10 = +[NSNotificationCenter defaultCenter];
  [v10 postNotificationName:PKPassLibraryDidChangeNotification object:0];
}

- (void)_handleDefaultCardChanged:(id)changed
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

  settingsController = [(NPKPassbookBridgeSettingsController *)self settingsController];
  [settingsController refreshDefaultCard];
}

- (void)_handleCompanionPassesChanged:(id)changed
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

- (void)_handlePreferencesChanged:(id)changed
{
  paymentSetupDelegate = [(NPKPassbookBridgeSettingsController *)self paymentSetupDelegate];
  isSettingsControllerReloadNecessary = [paymentSetupDelegate isSettingsControllerReloadNecessary];

  provisioningController = [(NPKPassbookBridgeSettingsController *)self provisioningController];
  isSettingsControllerReloadNecessary2 = [provisioningController isSettingsControllerReloadNecessary];

  v8 = pk_Payment_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11[0] = 67109376;
      v11[1] = isSettingsControllerReloadNecessary;
      v12 = 1024;
      v13 = isSettingsControllerReloadNecessary2;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Notice: Preferences changed… delegate wants refresh %d, provisioning controller wants refresh %d", v11, 0xEu);
    }
  }

  if ((isSettingsControllerReloadNecessary | isSettingsControllerReloadNecessary2))
  {
    [(NPKPassbookBridgeSettingsController *)self reloadSpecifiers];
  }
}

- (void)_handlePeerPaymentWebServiceChanged:(id)changed
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

  settingsController = [(NPKPassbookBridgeSettingsController *)self settingsController];
  [settingsController refreshPeerPaymentStatus];
}

- (void)_handleWillEnterForegroundNotification:(id)notification
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

  paymentSetupDelegate = [(NPKPassbookBridgeSettingsController *)self paymentSetupDelegate];
  companionAgentConnection = [paymentSetupDelegate companionAgentConnection];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_3E30;
  v9[3] = &unk_2C6C0;
  v9[4] = self;
  [companionAgentConnection reloadPaymentPassesWithCompletion:v9];

  [PKAnalyticsReporter beginSubjectReporting:PKAnalyticsSubjectBridge];
}

- (void)_handleDidEnterBackgroundNotification:(id)notification
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

- (void)_handleApplicationDidBecomeActiveNotification:(id)notification
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

  settingsController = [(NPKPassbookBridgeSettingsController *)self settingsController];
  [settingsController applicationDidBecomeActive];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = NPKPassbookBridgeSettingsController;
  [(NPKPassbookBridgeSettingsController *)&v6 viewDidLoad];
  settingsController = [(NPKPassbookBridgeSettingsController *)self settingsController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    settingsController2 = [(NPKPassbookBridgeSettingsController *)self settingsController];
    [settingsController2 performSelector:"viewDidLoad"];
  }
}

- (void)settingsController:(id)controller requestsAddCardPreflightWithCompletion:(id)completion
{
  completionCopy = completion;
  [(NPKPassbookBridgeSettingsController *)self _startPreflightBackgroundTaskIfNecessary];
  provisioningController = [(NPKPassbookBridgeSettingsController *)self provisioningController];
  [provisioningController preflightWithCompletion:completionCopy];
}

- (void)settingsController:(id)controller requestsAddLocalCardPreflightWithCompletion:(id)completion
{
  completionCopy = completion;
  [(NPKPassbookBridgeSettingsController *)self _startPreflightBackgroundTaskIfNecessary];
  provisioningController = [(NPKPassbookBridgeSettingsController *)self provisioningController];
  [provisioningController preflightForLocalPassWithCompletion:completionCopy];
}

- (BOOL)isPresentingViewController
{
  presentedViewController = [(NPKPassbookBridgeSettingsController *)self presentedViewController];
  v3 = presentedViewController != 0;

  return v3;
}

- (void)settingsController:(id)controller requestsPresentViewController:(id)viewController animated:(BOOL)animated completion:(id)completion
{
  LODWORD(v7) = animated;
  viewControllerCopy = viewController;
  completionCopy = completion;
  v11 = pk_Payment_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = pk_Payment_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v30 = viewControllerCopy;
      v31 = 1024;
      v32 = v7;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Notice: Bridge settings controller requested to present view controller %@ animated %d", buf, 0x12u);
    }
  }

  _shouldPresentOrPushViewController = [(NPKPassbookBridgeSettingsController *)self _shouldPresentOrPushViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = viewControllerCopy;
    title = [v15 title];
    message = [v15 message];
    v18 = objc_alloc_init(NSMutableDictionary);
    v19 = v18;
    if (title)
    {
      [v18 setObject:title forKeyedSubscript:NSLocalizedFailureReasonErrorKey];
    }

    if (message)
    {
      [v19 setObject:message forKeyedSubscript:NSLocalizedRecoverySuggestionErrorKey];
    }

    v20 = [NSError errorWithDomain:PKDisplayableErrorDomain code:0 userInfo:v19];
    v21 = ![(NPKPassbookBridgeSettingsController *)self _handleProvisioningPreflightFinishedWithSuccess:0 displayableError:v20]& _shouldPresentOrPushViewController;

    if ((v21 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (!_shouldPresentOrPushViewController)
  {
LABEL_11:
    [(NPKPassbookBridgeSettingsController *)self _handleProvisioningPreflightFinishedWithSuccess:0 displayableError:0];
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }

    goto LABEL_18;
  }

  v22 = +[UIApplication sharedApplication];
  applicationState = [v22 applicationState];

  if (applicationState == &dword_0 + 2)
  {
    v7 = 0;
  }

  else
  {
    v7 = v7;
  }

  splitViewController = [(NPKPassbookBridgeSettingsController *)self splitViewController];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_4614;
  v25[3] = &unk_2C778;
  v26 = viewControllerCopy;
  selfCopy = self;
  v28 = completionCopy;
  [splitViewController presentViewController:v26 animated:v7 completion:v25];

LABEL_18:
}

- (void)registerTableCellClass:(Class)class forCellReuseIdentifier:(id)identifier
{
  identifierCopy = identifier;
  table = [(NPKPassbookBridgeSettingsController *)self table];
  [table registerClass:class forCellReuseIdentifier:identifierCopy];
}

- (void)_settingsController:(id)controller requestsDetailViewControllerForPass:(id)pass animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  passCopy = pass;
  completionCopy = completion;
  if (passCopy && [(NPKPassbookBridgeSettingsController *)self _shouldPresentOrPushViewController])
  {
    v44 = controllerCopy;
    groupsController = [(NPKPassbookBridgeSettingsController *)self groupsController];
    v43 = passCopy;
    uniqueID = [passCopy uniqueID];
    v15 = [groupsController groupIndexForPassUniqueID:uniqueID];

    v42 = completionCopy;
    v41 = animatedCopy;
    if (v15 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v45 = 0;
    }

    else
    {
      groupsController2 = [(NPKPassbookBridgeSettingsController *)self groupsController];
      v45 = [groupsController2 groupAtIndex:v15];
    }

    v21 = [PKPaymentPassDetailViewController alloc];
    groupsController3 = [(NPKPassbookBridgeSettingsController *)self groupsController];
    paymentSetupDelegate = [(NPKPassbookBridgeSettingsController *)self paymentSetupDelegate];
    webService = [paymentSetupDelegate webService];
    paymentSetupDelegate2 = [(NPKPassbookBridgeSettingsController *)self paymentSetupDelegate];
    peerPaymentWebService = [paymentSetupDelegate2 peerPaymentWebService];
    paymentSetupDelegate3 = [(NPKPassbookBridgeSettingsController *)self paymentSetupDelegate];
    provisioningController = [(NPKPassbookBridgeSettingsController *)self provisioningController];
    passCopy = v43;
    v29 = [v21 initWithPass:v43 group:v45 groupsController:groupsController3 webService:webService peerPaymentWebService:peerPaymentWebService style:2 passLibraryDataProvider:paymentSetupDelegate3 paymentServiceDataProvider:provisioningController];

    paymentSetupDelegate4 = [(NPKPassbookBridgeSettingsController *)self paymentSetupDelegate];
    [v29 setDeleteOverrider:paymentSetupDelegate4];

    v31 = +[PSListController appearance];
    textColor = [v31 textColor];
    [v29 setPrimaryTextColor:textColor];

    v33 = +[PSListController appearance];
    altTextColor = [v33 altTextColor];
    [v29 setDetailTextColor:altTextColor];

    v35 = +[PSListController appearance];
    buttonTextColor = [v35 buttonTextColor];
    [v29 setLinkTextColor:buttonTextColor];

    v37 = +[UIColor systemRedColor];
    [v29 setWarningTextColor:v37];

    v38 = +[PSListController appearance];
    cellHighlightColor = [v38 cellHighlightColor];
    [v29 setHighlightColor:cellHighlightColor];

    +[CATransaction begin];
    settingsController = [(NPKPassbookBridgeSettingsController *)self settingsController];
    [(NPKPassbookBridgeSettingsController *)self settingsController:settingsController requestsPushViewController:v29 animated:v41];

    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_5174;
    v46[3] = &unk_2C7A0;
    completionCopy = v42;
    v47 = v42;
    [CATransaction setCompletionBlock:v46];
    +[CATransaction commit];

    controllerCopy = v44;
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
        uniqueID2 = [passCopy uniqueID];
        *buf = 138412290;
        v49 = uniqueID2;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "Notice: Unable to push pass detail view controller for pass: %@", buf, 0xCu);
      }
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }
}

- (BOOL)_shouldPresentOrPushViewController
{
  navigationController = [(NPKPassbookBridgeSettingsController *)self navigationController];
  topViewController = [navigationController topViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    childViewControllers = [topViewController childViewControllers];
    v6 = [childViewControllers containsObject:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)settingsControllerRequestsPresentPrivacyWithPresenter:(id)presenter
{
  presenterCopy = presenter;
  if ([(NPKPassbookBridgeSettingsController *)self _shouldPresentOrPushViewController])
  {
    splitViewController = [(NPKPassbookBridgeSettingsController *)self splitViewController];
    [presenterCopy setPresentingViewController:splitViewController];

    [presenterCopy present];
  }
}

- (void)settingsController:(id)controller requestsAuthenticationChallengeForAppleAccountInformation:(id)information completion:(id)completion
{
  completionCopy = completion;
  informationCopy = information;
  v9 = objc_alloc_init(AKAppleIDAuthenticationInAppContext);
  [v9 setPresentingViewController:self];
  appleID = [informationCopy appleID];
  [v9 setUsername:appleID];

  aaAlternateDSID = [informationCopy aaAlternateDSID];

  [v9 setAltDSID:aaAlternateDSID];
  [v9 setIsUsernameEditable:0];
  [v9 setShouldPromptForPasswordOnly:1];
  [v9 setAuthenticationType:2];
  v12 = objc_alloc_init(AKAppleIDAuthenticationController);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_53E8;
  v14[3] = &unk_2C7F0;
  v14[4] = self;
  v15 = completionCopy;
  v13 = completionCopy;
  [v12 authenticateWithContext:v9 completion:v14];
}

- (void)settingsController:(id)controller requestShowPeerPaymentAssociatedAccountsFlowWithController:(id)withController withPresentationContext:(id)context
{
  contextCopy = context;
  withControllerCopy = withController;
  navigationController = [(NPKPassbookBridgeSettingsController *)self navigationController];
  [withControllerCopy presentAssociatedAccountsFlowWithPresentationContext:contextCopy fromNavigationController:navigationController];
}

- (void)settingsController:(id)controller requestsPresentInboxMessage:(id)message animated:(BOOL)animated completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion);
  }
}

- (void)settingsController:(id)controller requestsPresentAuthorizationFlowWithRedirectURL:(id)l animated:(BOOL)animated completion:(id)completion
{
  completionCopy = completion;
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

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
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
  backgroundPreflightingTaskIdentifier = [(NPKPassbookBridgeSettingsController *)self backgroundPreflightingTaskIdentifier];
  if (backgroundPreflightingTaskIdentifier != UIBackgroundTaskInvalid)
  {
    v4 = backgroundPreflightingTaskIdentifier;
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

- (void)_launchBridgeInForegroundWithCompletion:(id)completion
{
  completionCopy = completion;
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
  bundleIdentifier = [v8 bundleIdentifier];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_604C;
  v11[3] = &unk_2C890;
  v12 = completionCopy;
  v10 = completionCopy;
  [v7 openApplication:bundleIdentifier withOptions:0 completion:v11];
}

- (void)allowEnableExpressGymKitWithVisibleViewController:(id)controller completion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  v8 = pk_Payment_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Notice: NPKPassbookBridgeSettingsController: requested allow enable GymKit with view controller: %@", buf, 0xCu);
    }
  }

  if (controllerCopy && completionCopy)
  {
    provisioningController = [(NPKPassbookBridgeSettingsController *)self provisioningController];
    expressPassConfigurations = [provisioningController expressPassConfigurations];

    v13 = pk_Payment_log();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

    if (v14)
    {
      v15 = pk_Payment_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [expressPassConfigurations count];
        *buf = 134217984;
        selfCopy = v16;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "Notice: NPKPassbookBridgeSettingsController: found %lu express passes.", buf, 0xCu);
      }
    }

    if ([expressPassConfigurations count]== &dword_0 + 1)
    {
      anyObject = [expressPassConfigurations anyObject];
      passInformation = [anyObject passInformation];
      npk_hasImmediateAutomaticSelectionCriterion = [passInformation npk_hasImmediateAutomaticSelectionCriterion];

      if (npk_hasImmediateAutomaticSelectionCriterion)
      {
        if (anyObject)
        {
          passUniqueIdentifier = [anyObject passUniqueIdentifier];
          provisioningController2 = [(NPKPassbookBridgeSettingsController *)self provisioningController];
          passLibraryDataProvider = [provisioningController2 passLibraryDataProvider];
          v23 = [passLibraryDataProvider passWithUniqueID:passUniqueIdentifier];

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
                selfCopy = passUniqueIdentifier;
                _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "Notice: NPKPassbookBridgeSettingsController: found one pass with unique ID %@ that conflicts with GymKit", buf, 0xCu);
              }
            }

            v33[0] = _NSConcreteStackBlock;
            v33[1] = 3221225472;
            v33[2] = sub_65CC;
            v33[3] = &unk_2C8E0;
            v33[4] = self;
            v34 = passUniqueIdentifier;
            v35 = controllerCopy;
            v36 = completionCopy;
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
                selfCopy = passUniqueIdentifier;
                _os_log_impl(&dword_0, v32, OS_LOG_TYPE_DEFAULT, "Warning: NPKPassbookBridgeSettingsController: have express pass information for a conflicting pass with unique ID %@, but no pass on the device", buf, 0xCu);
              }
            }

            (*(completionCopy + 2))(completionCopy, 1, 0);
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

    (*(completionCopy + 2))(completionCopy, 1, 0);
    goto LABEL_29;
  }

  v27 = pk_Payment_log();
  v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);

  if (v28)
  {
    expressPassConfigurations = pk_Payment_log();
    if (os_log_type_enabled(expressPassConfigurations, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, expressPassConfigurations, OS_LOG_TYPE_DEFAULT, "Notice: NPKPassbookBridgeSettingsController: missing completion block or view controller", buf, 2u);
    }

    goto LABEL_29;
  }

LABEL_30:
}

- (void)_promptUserAboutGymKitConflictWithPass:(id)pass visibleViewController:(id)controller completion:(id)completion
{
  completionCopy = completion;
  controllerCopy = controller;
  passCopy = pass;
  uniqueID = [passCopy uniqueID];
  v9 = pk_Payment_log();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v11 = pk_Payment_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v39 = uniqueID;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Notice: NPKPassbookBridgeSettingsController: prompting user about disabling express mode for conflicting pass with unique ID %@", buf, 0xCu);
    }
  }

  v27 = uniqueID;
  v12 = [NSBundle bundleForClass:objc_opt_class()];
  v29 = [v12 localizedStringForKey:@"EXPRESS_GYMKIT_CONFLICT_TITLE" value:&stru_2D300 table:@"NanoPassbookBridgeSettings-Companion_ICE"];

  v13 = [NSBundle bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"EXPRESS_GYMKIT_CONFLICT_MESSAGE" value:&stru_2D300 table:@"NanoPassbookBridgeSettings-Companion_ICE"];
  localizedDescription = [passCopy localizedDescription];

  v28 = [NSString stringWithFormat:v14, localizedDescription];

  v16 = [UIAlertController alertControllerWithTitle:v29 message:v28 preferredStyle:1];
  v17 = [NSBundle bundleForClass:objc_opt_class()];
  v18 = [v17 localizedStringForKey:@"EXPRESS_GYMKIT_CONFLICT_ERROR_ACKNOWLEDGE_BUTTON_TITLE" value:&stru_2D300 table:@"NanoPassbookBridgeSettings-Companion_ICE"];
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_6BF8;
  v35[3] = &unk_2C908;
  v19 = v27;
  v36 = v19;
  v20 = completionCopy;
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

  [controllerCopy presentViewController:v16 animated:1 completion:0];
}

- (void)_setupPendingTransactionHandlerForPassWithUniqueID:(id)d
{
  dCopy = d;
  v5 = [NPKBridgePendingTransactionHandler alloc];
  paymentSetupDelegate = [(NPKPassbookBridgeSettingsController *)self paymentSetupDelegate];
  companionAgentConnection = [paymentSetupDelegate companionAgentConnection];
  v8 = [(NPKBridgePendingTransactionHandler *)v5 initWithPassUniqueID:dCopy companionAgentConnection:companionAgentConnection];

  [(NPKBridgePendingTransactionHandler *)v8 setDelegate:self];
  [(NPKPassbookBridgeSettingsController *)self setPendingTransactionHandler:v8];
}

- (id)presentingViewControllerForPendingTransactionHandler:(id)handler
{
  handlerCopy = handler;
  pendingTransactionHandler = [(NPKPassbookBridgeSettingsController *)self pendingTransactionHandler];

  if (pendingTransactionHandler == handlerCopy)
  {
    pkui_frontMostViewController = [(NPKPassbookBridgeSettingsController *)self pkui_frontMostViewController];
  }

  else
  {
    pkui_frontMostViewController = 0;
  }

  return pkui_frontMostViewController;
}

- (void)pendingTransactionHandlerDidComplete:(id)complete
{
  completeCopy = complete;
  pendingTransactionHandler = [(NPKPassbookBridgeSettingsController *)self pendingTransactionHandler];

  if (pendingTransactionHandler == completeCopy)
  {

    [(NPKPassbookBridgeSettingsController *)self setPendingTransactionHandler:0];
  }
}

@end