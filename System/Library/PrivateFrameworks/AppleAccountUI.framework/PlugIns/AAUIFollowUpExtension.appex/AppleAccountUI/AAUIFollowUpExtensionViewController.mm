@interface AAUIFollowUpExtensionViewController
- (AAUIFollowUpExtensionViewController)init;
- (BOOL)_BOOLeanForKey:(id)a3 inFollowUpItem:(id)a4;
- (BOOL)_shouldContinueRecoveryKeyMismatchRepair;
- (id)_followUpController;
- (id)accountsForAccountManager:(id)a3;
- (void)_beginCustodianAccountRecoveryFlowWithInfo:(id)a3 sessionID:(id)a4 altDSID:(id)a5 completion:(id)a6;
- (void)_beginRecoveryContactGenerationFlowForWalrusUser:(BOOL)a3;
- (void)_beginRecoveryKeyGenerationFlow;
- (void)_beginRecoveryKeyGenerationFlowOnClient;
- (void)_beginTurnOffRecoveryKeyFlow;
- (void)_beginTurnOffRecoveryKeyFlowOnClient;
- (void)_beginVerifyRecoveryKeyFlow;
- (void)_continueDismissingRenewCredentialsFollowUpForCDP;
- (void)_continueSettingupCustodianForFollowUpItem:(id)a3;
- (void)_dismissRecoveryKeyMismatchCFU;
- (void)_dismissRecoveryKeyMismatchRepairCFU;
- (void)_displayCustodianAddNotAllowedAlert;
- (void)_displayRatchetGenericErrorAlert;
- (void)_embargoEndHandlerForFollowUpItem:(id)a3;
- (void)_embargoEndHandlerForFollowUpItem:(id)a3 completion:(id)a4;
- (void)_presentAgeMigrationFlow;
- (void)_presentRecoveryFactorOptionsSheetForFollowUpItem:(id)a3;
- (void)_presentSignInControllerForChildAccount:(BOOL)a3;
- (void)_presentWalrusRecoveryFactorOptionsSheetForFollowUpItem:(id)a3;
- (void)_processRecoveryFactorsMissingFollowUpAction:(id)a3 selectedAction:(id)a4;
- (void)_recoveryKeyMismatchForFollowUpItem:(id)a3 selectedAction:(id)a4;
- (void)_renewCredentialsForFollowUpItem:(id)a3;
- (void)_renewCredentialsForFollowUpItem:(id)a3 completion:(id)a4;
- (void)_reviewCustodiansForFollowUpItem:(id)a3;
- (void)_sendCFUClickedEventWithTelemetryFlowID:(id)a3 altDSID:(id)a4 identifier:(id)a5;
- (void)_setupCustodianForFollowUpItem:(id)a3;
- (void)_setupCustodianSetupFlowController;
- (void)_showAccountRecoveryScreen:(id)a3;
- (void)_showBeneficiariesForFollowUpItem:(id)a3;
- (void)_showBeneficiaryInvitationUIForFollowUpItem:(id)a3;
- (void)_showCustodianInvitationUIForFollowUpItem:(id)a3;
- (void)_showGenericTermsUI;
- (void)custodianSetupFlowControllerDidFinish:(id)a3;
- (void)custodianSetupFlowControllerRecoveryContactInviteSent;
- (void)finishProcessing;
- (void)followUpPerformUpdateWithCompletionHandler:(id)a3;
- (void)genericTermsRemoteUI:(id)a3 didFinishWithSuccess:(BOOL)a4 serverInfo:(id)a5;
- (void)processAuthenticationResults:(id)a3 error:(id)a4 forContext:(id)a5 completion:(id)a6;
- (void)processFollowUpItem:(id)a3 selectedAction:(id)a4 completion:(id)a5;
- (void)remoteUIRequestComplete:(id)a3 error:(id)a4;
- (void)signInController:(id)a3 didCompleteWithSuccess:(BOOL)a4 error:(id)a5;
- (void)signInControllerDidCancel:(id)a3;
- (void)viewDidLoad;
@end

@implementation AAUIFollowUpExtensionViewController

- (AAUIFollowUpExtensionViewController)init
{
  v12.receiver = self;
  v12.super_class = AAUIFollowUpExtensionViewController;
  v2 = [(AAUIFollowUpExtensionViewController *)&v12 init];
  if (v2)
  {
    v3 = +[ACAccountStore defaultStore];
    v4 = [[AIDAServiceOwnersManager alloc] initWithAccountStore:v3];
    serviceOwnersManager = v2->_serviceOwnersManager;
    v2->_serviceOwnersManager = v4;

    v6 = [[AIDAAccountManager alloc] initWithAccountStore:v3];
    accountManager = v2->_accountManager;
    v2->_accountManager = v6;

    [(AIDAAccountManager *)v2->_accountManager setDelegate:v2];
    [(AAUIFollowUpExtensionViewController *)v2 _setupActivityIndicator];
    v8 = objc_alloc_init(AKBiometricRatchetController);
    v9 = [[AAUIDTOHelper alloc] initWithDTOController:v8];
    dtoHelper = v2->dtoHelper;
    v2->dtoHelper = v9;
  }

  return v2;
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = AAUIFollowUpExtensionViewController;
  [(AAUIFollowUpExtensionViewController *)&v2 viewDidLoad];
}

- (void)finishProcessing
{
  v3 = dispatch_get_global_queue(25, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001B14;
  block[3] = &unk_100010428;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_presentSignInControllerForChildAccount:(BOOL)a3
{
  v3 = a3;
  v5 = objc_alloc_init(AAUISignInController);
  [v5 setDelegate:self];
  v6 = +[UIDevice currentDevice];
  v7 = [v6 userInterfaceIdiom];

  if ((v7 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    [v5 setModalPresentationStyle:2];
    [v5 setModalTransitionStyle:0];
  }

  else if (v3)
  {
    [v5 setModalPresentationStyle:0];
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100001C64;
  v9[3] = &unk_100010450;
  v9[4] = self;
  v10 = v5;
  v8 = v5;
  [v8 prepareInViewController:self completion:v9];
}

- (void)_presentAgeMigrationFlow
{
  v3 = +[ACAccountStore defaultStore];
  v4 = [v3 aa_primaryAppleAccount];

  v5 = [AAUIAgeMigrationFlowPresenter alloc];
  v6 = [v4 aa_pendingDOB];
  v7 = [v5 initWithPendingDOB:v6 viewController:self];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100001DD0;
  v8[3] = &unk_100010478;
  v8[4] = self;
  [v7 presentAgeMigrationFlowWithCompletion:v8];
}

- (void)_presentRecoveryFactorOptionsSheetForFollowUpItem:(id)a3
{
  v26 = [(AAUIFollowUpExtensionViewController *)self _BOOLeanForKey:@"hasRecoveryContact" inFollowUpItem:a3];
  v4 = +[UIDevice currentDevice];
  v5 = [v4 userInterfaceIdiom];

  v6 = (v5 & 0xFFFFFFFFFFFFFFFBLL) == 1;
  v7 = [NSBundle bundleWithIdentifier:@"com.apple.AppleAccountUI"];
  v8 = v7;
  if (v26)
  {
    v9 = @"RECOVERY_KEY_REPAIR_SHEET_INFORMATIVE_HAS_RECOVERY_CONTACT";
  }

  else
  {
    v9 = @"RECOVERY_KEY_REPAIR_SHEET_INFORMATIVE_NO_RECOVERY_CONTACT";
  }

  v10 = [v7 localizedStringForKey:v9 value:&stru_100010AB0 table:@"Localizable"];

  v11 = [NSBundle bundleWithIdentifier:@"com.apple.AppleAccountUI"];
  v12 = [v11 localizedStringForKey:@"RECOVERY_KEY_REPAIR_SHEET_OTHER_OPTIONS_TITLE" value:&stru_100010AB0 table:@"Localizable"];
  v13 = [UIAlertController alertWithTitle:v12 message:v10];

  [v13 setPreferredStyle:v6];
  v14 = [NSBundle bundleWithIdentifier:@"com.apple.AppleAccountUI"];
  v15 = [v14 localizedStringForKey:@"RECOVERY_KEY_REPAIR_SHEET_CREATE_RK_ACTION" value:&stru_100010AB0 table:@"Localizable"];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100002228;
  v30[3] = &unk_1000104A0;
  v30[4] = self;
  v16 = [UIAlertAction actionWithTitle:v15 style:0 handler:v30];

  [v13 addAction:v16];
  if ((v26 & 1) == 0)
  {
    v17 = [NSBundle bundleWithIdentifier:@"com.apple.AppleAccountUI"];
    v18 = [v17 localizedStringForKey:@"RECOVERY_KEY_REPAIR_SHEET_REPLACE_WITH_RC_ACTION" value:&stru_100010AB0 table:@"Localizable"];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100002230;
    v29[3] = &unk_1000104A0;
    v29[4] = self;
    v19 = [UIAlertAction actionWithTitle:v18 style:0 handler:v29];

    [v13 addAction:v19];
  }

  v20 = [NSBundle bundleWithIdentifier:@"com.apple.AppleAccountUI"];
  v21 = [v20 localizedStringForKey:@"RECOVERY_KEY_REPAIR_SHEET_TURN_OFF_RK_ACTION" value:&stru_100010AB0 table:@"Localizable"];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10000223C;
  v28[3] = &unk_1000104A0;
  v28[4] = self;
  v22 = [UIAlertAction actionWithTitle:v21 style:2 handler:v28];
  [v13 addAction:v22];

  v23 = [NSBundle bundleWithIdentifier:@"com.apple.AppleAccountUI"];
  v24 = [v23 localizedStringForKey:@"CANCEL" value:&stru_100010AB0 table:@"Localizable"];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100002244;
  v27[3] = &unk_1000104A0;
  v27[4] = self;
  v25 = [UIAlertAction actionWithTitle:v24 style:1 handler:v27];
  [v13 addAction:v25];

  [(AAUIFollowUpExtensionViewController *)self presentViewController:v13 animated:1 completion:0];
}

- (void)_presentWalrusRecoveryFactorOptionsSheetForFollowUpItem:(id)a3
{
  v3 = +[UIDevice currentDevice];
  v4 = [v3 userInterfaceIdiom];

  v5 = [NSBundle bundleWithIdentifier:@"com.apple.AppleAccountUI"];
  v6 = [v5 localizedStringForKey:@"RECOVERY_KEY_REPAIR_ADP_SHEET_TITLE" value:&stru_100010AB0 table:@"Localizable"];
  v7 = [NSBundle bundleWithIdentifier:@"com.apple.AppleAccountUI"];
  v8 = [v7 localizedStringForKey:@"RECOVERY_KEY_REPAIR_ADP_SHEET_INFORMATIVE" value:&stru_100010AB0 table:@"Localizable"];
  v9 = [UIAlertController alertWithTitle:v6 message:v8];

  [v9 setPreferredStyle:(v4 & 0xFFFFFFFFFFFFFFFBLL) == 1];
  v10 = [NSBundle bundleWithIdentifier:@"com.apple.AppleAccountUI"];
  v11 = [v10 localizedStringForKey:@"RECOVERY_KEY_REPAIR_ADP_SHEET_CREATE_RK_ACTION" value:&stru_100010AB0 table:@"Localizable"];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000025B0;
  v22[3] = &unk_1000104A0;
  v22[4] = self;
  v12 = [UIAlertAction actionWithTitle:v11 style:0 handler:v22];

  [v9 addAction:v12];
  v13 = [NSBundle bundleWithIdentifier:@"com.apple.AppleAccountUI"];
  v14 = [v13 localizedStringForKey:@"RECOVERY_KEY_REPAIR_ADP_SHEET_ADD_RC_ACTION" value:&stru_100010AB0 table:@"Localizable"];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000025B8;
  v21[3] = &unk_1000104A0;
  v21[4] = self;
  v15 = [UIAlertAction actionWithTitle:v14 style:0 handler:v21];

  [v9 addAction:v15];
  v16 = [NSBundle bundleWithIdentifier:@"com.apple.AppleAccountUI"];
  v17 = [v16 localizedStringForKey:@"CANCEL" value:&stru_100010AB0 table:@"Localizable"];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000025C4;
  v20[3] = &unk_1000104A0;
  v20[4] = self;
  v18 = [UIAlertAction actionWithTitle:v17 style:1 handler:v20];
  [v9 addAction:v18];

  [(AAUIFollowUpExtensionViewController *)self presentViewController:v9 animated:1 completion:0];
}

- (BOOL)_BOOLeanForKey:(id)a3 inFollowUpItem:(id)a4
{
  v5 = a3;
  v6 = [a4 userInfo];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 objectForKeyedSubscript:v5];
    v9 = [v8 BOOLValue];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_beginVerifyRecoveryKeyFlow
{
  v3 = [[AAUIRecoveryFactorController alloc] initWithAccountManager:self->_accountManager presentingViewController:self];
  recoveryFactorController = self->_recoveryFactorController;
  self->_recoveryFactorController = v3;

  objc_initWeak(&location, self);
  v5 = self->_recoveryFactorController;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100002738;
  v6[3] = &unk_1000104C8;
  objc_copyWeak(&v7, &location);
  [(AAUIRecoveryFactorController *)v5 validateRecoveryKeyWithCompletion:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)_beginTurnOffRecoveryKeyFlow
{
  v3 = _AAUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Invoke RK turning off remote UI flow", buf, 2u);
  }

  v4 = +[AKURLBag sharedBag];
  v5 = [v4 urlAtKey:@"disableDataRecoveryKey"];

  if (v5)
  {
    v6 = [NSURLRequest requestWithURL:v5];
    v7 = [[AAUIGrandSlamRemoteUIPresenter alloc] initWithAccountManager:self->_accountManager presenter:self];
    remoteUIPresenter = self->_remoteUIPresenter;
    self->_remoteUIPresenter = v7;

    [(AAUIGrandSlamRemoteUIPresenter *)self->_remoteUIPresenter setDelegate:self];
    [(AAUIGrandSlamRemoteUIPresenter *)self->_remoteUIPresenter loadRequest:v6 completion:&stru_100010508];
  }

  else
  {
    v9 = _AAUILogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Unable to load RK turning off UI. We're missing the URL from the URL bag. Falling back to client side impl", v10, 2u);
    }

    [(AAUIFollowUpExtensionViewController *)self _beginTurnOffRecoveryKeyFlowOnClient];
  }
}

- (void)_beginTurnOffRecoveryKeyFlowOnClient
{
  v3 = [[AAUIRecoveryFactorController alloc] initWithAccountManager:self->_accountManager presentingViewController:self];
  recoveryFactorController = self->_recoveryFactorController;
  self->_recoveryFactorController = v3;

  objc_initWeak(&location, self);
  v5 = self->_recoveryFactorController;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100002B54;
  v6[3] = &unk_1000104C8;
  objc_copyWeak(&v7, &location);
  [(AAUIRecoveryFactorController *)v5 authenticateAndDeleteRecoveryKeyFromAllSystemsWithCompletion:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)_dismissRecoveryKeyMismatchCFU
{
  objc_initWeak(&location, self);
  v3 = [(AAUIFollowUpExtensionViewController *)self _followUpController];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100002D18;
  v4[3] = &unk_1000104C8;
  objc_copyWeak(&v5, &location);
  [v3 dismissFollowUpWithIdentifier:@"com.apple.AAFollowUpIdentifier.RecoveryKeyMismatch" completion:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_showGenericTermsUI
{
  v3 = [(FLFollowUpItem *)self->_followUpItem userInfo];
  v4 = [v3 objectForKeyedSubscript:AIDAAccountPropertyAltDSID];

  if ([v4 length])
  {
    v5 = +[ACAccountStore defaultStore];
    v6 = [v5 aa_appleAccountWithAltDSID:v4];
    v7 = [[AAUIGenericTermsRemoteUI alloc] initWithAccount:v6 inStore:v5];
    genericTermsRemoteUI = self->_genericTermsRemoteUI;
    self->_genericTermsRemoteUI = v7;

    v9 = [(FLFollowUpItem *)self->_followUpItem userInfo];
    v10 = [v9 objectForKeyedSubscript:AAFollowUpUserInfoTermsServerProvidedContext];
    [(AAUIGenericTermsRemoteUI *)self->_genericTermsRemoteUI setAdditionalHeaders:v10];

    [(AAUIGenericTermsRemoteUI *)self->_genericTermsRemoteUI setDelegate:self];
    [(AAUIGenericTermsRemoteUI *)self->_genericTermsRemoteUI presentFromViewController:self modal:1];
  }

  else
  {
    v11 = _AAUILogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000088BC();
    }

    [(AAUIFollowUpExtensionViewController *)self finishProcessing];
  }
}

- (void)_renewCredentialsForFollowUpItem:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100002F8C;
  v4[3] = &unk_100010450;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(AAUIFollowUpExtensionViewController *)v5 _renewCredentialsForFollowUpItem:v3 completion:v4];
}

- (void)_continueDismissingRenewCredentialsFollowUpForCDP
{
  v3 = [(AAUIFollowUpExtensionViewController *)self _followUpController];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100003264;
  v4[3] = &unk_100010530;
  v4[4] = self;
  [v3 dismissFollowUpWithIdentifier:AAFollowUpIdentifierRenewCredentials completion:v4];
}

- (void)_reviewCustodiansForFollowUpItem:(id)a3
{
  v4 = _AAUILogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Navigating to Account Recovery pane", v7, 2u);
  }

  v5 = [NSURL URLWithString:@"prefs:root=APPLE_ACCOUNT&aaaction=accountRecovery"];
  v6 = +[LSApplicationWorkspace defaultWorkspace];
  [v6 openSensitiveURL:v5 withOptions:0];

  [(AAUIFollowUpExtensionViewController *)self finishProcessing];
}

- (void)_renewCredentialsForFollowUpItem:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 userInfo];
  v9 = [v8 objectForKeyedSubscript:AAFollowUpUserInfoAccountIdentifier];

  if ([v9 length])
  {
    v10 = +[ACAccountStore defaultStore];
    v11 = [v10 accountWithIdentifier:v9 error:0];
    if (v11)
    {
      v12 = [v6 userInfo];
      v25 = [v12 objectForKeyedSubscript:AAFollowUpUserInfoClientName];

      v13 = [v6 userInfo];
      v14 = [v13 objectForKeyedSubscript:AAFollowUpUserInfoProxiedDeviceData];

      if (v14)
      {
        v15 = [AKDevice deviceWithSerializedData:v14];
      }

      else
      {
        v15 = 0;
      }

      v18 = objc_alloc_init(AKAppleIDAuthenticationInAppContext);
      [v18 setAuthenticationType:0];
      v19 = [v11 aa_altDSID];
      [v18 setAltDSID:v19];

      v20 = [v6 userInfo];
      [v18 setClientInfo:v20];

      v21 = [v11 normalizedDSID];
      [v18 setDSID:v21];

      [v18 setIsUsernameEditable:0];
      [v18 setPresentingViewController:self];
      [v18 setServiceType:1];
      v22 = [v11 username];
      [v18 setUsername:v22];

      [v18 _setProxiedAppName:v25];
      [v18 setProxiedDevice:v15];
      [v18 setShouldOfferSecurityUpgrade:1];
      [v18 setEnablePasscodeAuth:0];
      v32 = 0;
      v33 = &v32;
      v34 = 0x3032000000;
      v35 = sub_100003820;
      v36 = sub_100003830;
      v37 = objc_alloc_init(AKAppleIDAuthenticationController);
      [v33[5] setDelegate:self];
      v23 = v33[5];
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_100003838;
      v26[3] = &unk_1000105A8;
      v31 = &v32;
      v26[4] = self;
      v27 = v6;
      v28 = v11;
      v30 = v7;
      v24 = v15;
      v29 = v24;
      [v23 authenticateWithContext:v18 completion:v26];

      _Block_object_dispose(&v32, 8);
    }

    else
    {
      v17 = _AAUILogSystem();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_1000088F8();
      }

      (*(v7 + 2))(v7, 1, 0);
    }
  }

  else
  {
    v16 = _AAUILogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100008968();
    }

    (*(v7 + 2))(v7, 1, 0);
  }
}

- (void)_recoveryKeyMismatchForFollowUpItem:(id)a3 selectedAction:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(AAUIFollowUpExtensionViewController *)self _shouldContinueRecoveryKeyMismatchRepair])
  {
    v8 = [(AAUIFollowUpExtensionViewController *)self _BOOLeanForKey:@"hasWalrusEnabled" inFollowUpItem:v6];
    v9 = [v7 userInfo];
    v10 = [v9 objectForKeyedSubscript:@"type"];

    if ([v10 isEqualToString:@"recoveryKeyMismatchOtherOption"])
    {
      if (v8)
      {
        [(AAUIFollowUpExtensionViewController *)self _presentWalrusRecoveryFactorOptionsSheetForFollowUpItem:v6];
      }

      else
      {
        [(AAUIFollowUpExtensionViewController *)self _presentRecoveryFactorOptionsSheetForFollowUpItem:v6];
      }
    }

    else if ([v10 isEqualToString:@"verifyRecoveryKey"])
    {
      [(AAUIFollowUpExtensionViewController *)self _beginVerifyRecoveryKeyFlow];
    }

    else if ([v10 isEqualToString:@"addRecoveryContact"])
    {
      [(AAUIFollowUpExtensionViewController *)self _beginRecoveryContactGenerationFlowForWalrusUser:v8];
    }

    else if ([v10 isEqualToString:@"addRecoveryKey"])
    {
      [(AAUIFollowUpExtensionViewController *)self _beginRecoveryKeyGenerationFlow];
    }

    else if ([v10 isEqualToString:@"turnOffRecoveryKey"])
    {
      [(AAUIFollowUpExtensionViewController *)self _beginTurnOffRecoveryKeyFlow];
    }

    else
    {
      v11 = _AAUILogSystem();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Unrecognized action type sent to AAUIFollowUpExtensionViewController for handling", v12, 2u);
      }

      [(AAUIFollowUpExtensionViewController *)self finishProcessing];
    }
  }

  else
  {
    [(AAUIFollowUpExtensionViewController *)self _dismissRecoveryKeyMismatchRepairCFU];
    [(AAUIFollowUpExtensionViewController *)self finishProcessing];
  }
}

- (BOOL)_shouldContinueRecoveryKeyMismatchRepair
{
  v2 = [AAUICDPHelper helperWithPresenter:self];
  v3 = [v2 cdpStateControllerForPrimaryAccount];
  v15 = 0;
  v4 = [v3 shouldPerformRepairWithOptionForceFetch:1 error:&v15];
  v5 = v15;
  if (v4)
  {
    v6 = _AAUILogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "not proceeding with recoveryKeyMismatchRepair with Error: %@", buf, 0xCu);
    }

    goto LABEL_13;
  }

  v14 = 0;
  [v3 verifyRecoveryKeyObservingSystemsHaveMatchingStateWithError:&v14];
  v7 = v14;
  v6 = v7;
  if (!v7)
  {
    v9 = _AAUILogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v10 = "not proceeding with recoveryKeyMismatchRepair because no mismatch exists";
      v11 = v9;
      v12 = 2;
LABEL_11:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
    }

LABEL_12:

LABEL_13:
    v8 = 0;
    goto LABEL_14;
  }

  if ([v7 code]!= -5317)
  {
    v9 = _AAUILogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v6;
      v10 = "not proceeding with recoveryKeyMismatchRepair with error: %@";
      v11 = v9;
      v12 = 12;
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v8 = 1;
LABEL_14:

  return v8;
}

- (void)_embargoEndHandlerForFollowUpItem:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100004154;
  v3[3] = &unk_1000105D0;
  v3[4] = self;
  [(AAUIFollowUpExtensionViewController *)self _embargoEndHandlerForFollowUpItem:a3 completion:v3];
}

- (void)_embargoEndHandlerForFollowUpItem:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 userInfo];
  v9 = [v8 objectForKeyedSubscript:AAFollowUpUserInfoAltDSID];

  if ([v9 length])
  {
    v10 = [v6 userInfo];
    v11 = [v10 objectForKeyedSubscript:AAFollowUpUserInfoCustodianSessionID];

    if ([v11 length])
    {
      v12 = objc_alloc_init(AACustodianController);
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100004554;
      v15[3] = &unk_1000105F8;
      v18 = v7;
      v15[4] = self;
      v16 = v11;
      v17 = v9;
      [v12 fetchCustodianPasswordResetInformationWithSessionID:v16 completion:v15];
    }

    else
    {
      v14 = _AAUILogSystem();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_100008A88();
      }

      (*(v7 + 2))(v7, 1);
    }
  }

  else
  {
    v13 = _AAUILogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100008AC4();
    }

    (*(v7 + 2))(v7, 1);
  }
}

- (void)_beginCustodianAccountRecoveryFlowWithInfo:(id)a3 sessionID:(id)a4 altDSID:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_alloc_init(AKAppleIDAuthenticationInAppContext);
  [v14 setAuthenticationType:2];
  [v14 setAltDSID:v12];
  v15 = [v10 ownerAppleID];
  [v14 setUsername:v15];

  v16 = [v10 custodianRecoveryToken];
  [v14 setCustodianRecoveryToken:v16];

  [v14 setIsUsernameEditable:0];
  [v14 setPresentingViewController:self];
  [v14 setServiceType:1];
  [v14 setNeedsCredentialRecovery:1];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_100003820;
  v26 = sub_100003830;
  v27 = objc_alloc_init(AKAppleIDAuthenticationController);
  v17 = v23[5];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100004834;
  v19[3] = &unk_100010670;
  v21 = &v22;
  v19[4] = self;
  v18 = v13;
  v20 = v18;
  [v17 authenticateWithContext:v14 completion:v19];

  _Block_object_dispose(&v22, 8);
}

- (void)_showCustodianInvitationUIForFollowUpItem:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:AAFollowUpTrustedContactInvitationURL];
  v6 = [NSURL URLWithString:v5];

  v7 = _AAUILogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 absoluteString];
    *buf = 138412290;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Showing Custodian invitation with URL - %@", buf, 0xCu);
  }

  v9 = +[LSApplicationWorkspace defaultWorkspace];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100004D28;
  v10[3] = &unk_100010698;
  v10[4] = self;
  [v9 openURL:v6 configuration:0 completionHandler:v10];
}

- (void)_setupCustodianForFollowUpItem:(id)a3
{
  v4 = a3;
  v5 = [(AIDAAccountManager *)self->_accountManager accounts];
  v6 = [v5 objectForKeyedSubscript:AIDAServiceTypeCloud];

  if (v6)
  {
    dtoHelper = self->dtoHelper;
    v8 = [v6 aa_altDSID];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100004E64;
    v10[3] = &unk_1000106E8;
    v10[4] = self;
    v11 = v4;
    [(AAUIDTOHelper *)dtoHelper shouldGateUsingRatchetForAltDSID:v8 completion:v10];
  }

  else
  {
    v9 = _AAUILogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_100008BE0();
    }
  }
}

- (void)_continueSettingupCustodianForFollowUpItem:(id)a3
{
  v4 = _AAUILogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Showing Custodian Setup flow UI...", buf, 2u);
  }

  [(AAUIFollowUpExtensionViewController *)self _setupCustodianSetupFlowController];
  v5 = _AAUILogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Already checked DTO, no need to go through the first time setup!", v7, 2u);
  }

  [(AAUICustodianSetupFlowController *)self->_custodianSetupFlowController startWithoutFirstTimeSetup];
  v6 = [(AAUICustodianSetupFlowController *)self->_custodianSetupFlowController navigationController];
  [(AAUIFollowUpExtensionViewController *)self presentViewController:v6 animated:1 completion:0];
}

- (void)_setupCustodianSetupFlowController
{
  v3 = [[AAUICustodianSetupFlowController alloc] initWithAccountManager:self->_accountManager];
  custodianSetupFlowController = self->_custodianSetupFlowController;
  self->_custodianSetupFlowController = v3;

  [(AAUICustodianSetupFlowController *)self->_custodianSetupFlowController setDelegate:self];
  [(AAUICustodianSetupFlowController *)self->_custodianSetupFlowController setUiVersion:1];
  [(AAUICustodianSetupFlowController *)self->_custodianSetupFlowController setIsSettingsFlow:1];
  v5 = _AAUILogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Updating to the new settings flow!", v6, 2u);
  }
}

- (void)_showAccountRecoveryScreen:(id)a3
{
  v3 = _AAUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Showing Account Recovery UI...", v6, 2u);
  }

  v4 = [NSURL URLWithString:@"prefs:root=APPLE_ACCOUNT&aaaction=accountRecovery"];
  v5 = +[LSApplicationWorkspace defaultWorkspace];
  [v5 openSensitiveURL:v4 withOptions:0];
}

- (void)custodianSetupFlowControllerDidFinish:(id)a3
{
  v4 = a3;
  v5 = _AAUILogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Custodian Setup did finish. Dismissing the Custodian Removed CFU...", buf, 2u);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100005544;
  v6[3] = &unk_100010428;
  v6[4] = self;
  [v4 dismissViewControllerAnimated:1 completion:v6];
}

- (void)custodianSetupFlowControllerRecoveryContactInviteSent
{
  v3 = [[AAUIRecoveryFactorController alloc] initWithAccountManager:self->_accountManager presentingViewController:self];
  recoveryFactorController = self->_recoveryFactorController;
  self->_recoveryFactorController = v3;

  v5 = self->_recoveryFactorController;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000055FC;
  v6[3] = &unk_100010530;
  v6[4] = self;
  [(AAUIRecoveryFactorController *)v5 deleteRecoveryKeyFromAllSystems:v6];
}

- (void)_dismissRecoveryKeyMismatchRepairCFU
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000570C;
  v3[3] = &unk_100010730;
  v4 = @"com.apple.AAFollowUpIdentifier.RecoveryKeyMismatch";
  v5 = objc_alloc_init(AAFollowUpController);
  v2 = v5;
  [v2 pendingFollowUpWithIdentifier:@"com.apple.AAFollowUpIdentifier.RecoveryKeyMismatch" completion:v3];
}

- (void)_beginRecoveryContactGenerationFlowForWalrusUser:(BOOL)a3
{
  v5 = [(AIDAAccountManager *)self->_accountManager accounts];
  v6 = [v5 objectForKeyedSubscript:AIDAServiceTypeCloud];

  if (v6)
  {
    dtoHelper = self->dtoHelper;
    v8 = [v6 aa_altDSID];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10000590C;
    v10[3] = &unk_1000107A8;
    v10[4] = self;
    v11 = a3;
    [(AAUIDTOHelper *)dtoHelper shouldGateUsingRatchetForAltDSID:v8 completion:v10];
  }

  else
  {
    v9 = _AAUILogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_100008BE0();
    }
  }
}

- (void)_displayCustodianAddNotAllowedAlert
{
  v3 = [(AAUIDTOHelper *)self->dtoHelper makeCustodianAddOpNotAllowedAlert];
  [(AAUIFollowUpExtensionViewController *)self presentViewController:v3 animated:1 completion:0];
}

- (void)_displayRatchetGenericErrorAlert
{
  v4 = [(AAUIDTOHelper *)self->dtoHelper makeGenericRatchetFailedAlert];
  v3 = [(AAUIFollowUpExtensionViewController *)self presentingViewController];
  [v3 presentViewController:v4 animated:1 completion:0];
}

- (void)_processRecoveryFactorsMissingFollowUpAction:(id)a3 selectedAction:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [v6 userInfo];
  v8 = [v7 objectForKeyedSubscript:@"type"];
  v9 = [v8 isEqualToString:@"addRecoveryKey"];

  if (v9)
  {
    [(AAUIFollowUpExtensionViewController *)self _beginRecoveryKeyGenerationFlow];
  }

  else
  {
    v10 = [v6 userInfo];
    v11 = [v10 objectForKeyedSubscript:@"type"];
    v12 = [v11 isEqualToString:@"addRecoveryContact"];

    if (v12)
    {
      [(AAUIFollowUpExtensionViewController *)self _beginRecoveryContactGenerationFlowForWalrusUser:[(AAUIFollowUpExtensionViewController *)self _BOOLeanForKey:@"hasWalrusEnabled" inFollowUpItem:v13]];
    }
  }
}

- (void)_beginRecoveryKeyGenerationFlow
{
  v3 = _AAUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Invoke RK generation remote UI flow", buf, 2u);
  }

  v4 = +[AKURLBag sharedBag];
  v5 = [v4 urlAtKey:@"enableDataRecoveryKey"];

  if (v5)
  {
    v6 = [NSURLRequest requestWithURL:v5];
    v7 = [[AAUIGrandSlamRemoteUIPresenter alloc] initWithAccountManager:self->_accountManager presenter:self];
    remoteUIPresenter = self->_remoteUIPresenter;
    self->_remoteUIPresenter = v7;

    [(AAUIGrandSlamRemoteUIPresenter *)self->_remoteUIPresenter setDelegate:self];
    [(AAUIGrandSlamRemoteUIPresenter *)self->_remoteUIPresenter loadRequest:v6 completion:&stru_1000107C8];
  }

  else
  {
    v9 = _AAUILogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Unable to load RK generation UI. We're missing the URL from the URL bag. Falling back to client side impl", v10, 2u);
    }

    [(AAUIFollowUpExtensionViewController *)self _beginRecoveryKeyGenerationFlowOnClient];
  }
}

- (void)_beginRecoveryKeyGenerationFlowOnClient
{
  v3 = [[AAUIRecoveryFactorController alloc] initWithAccountManager:self->_accountManager presentingViewController:self];
  recoveryFactorController = self->_recoveryFactorController;
  self->_recoveryFactorController = v3;

  v5 = self->_recoveryFactorController;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100006278;
  v6[3] = &unk_100010530;
  v6[4] = self;
  [(AAUIRecoveryFactorController *)v5 authenticateAndGenerateNewRecoveryKeyWithCompletion:v6];
}

- (void)_showBeneficiaryInvitationUIForFollowUpItem:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:AAFollowUpTrustedContactInvitationURL];
  v6 = [NSURL URLWithString:v5];

  v7 = _AAUILogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 absoluteString];
    *buf = 138412290;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Showing Beneficiary invitation with URL - %@", buf, 0xCu);
  }

  v9 = +[LSApplicationWorkspace defaultWorkspace];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100006544;
  v10[3] = &unk_100010698;
  v10[4] = self;
  [v9 openURL:v6 configuration:0 completionHandler:v10];
}

- (void)_showBeneficiariesForFollowUpItem:(id)a3
{
  v4 = _AALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Navigating to trusted contacts settings", buf, 2u);
  }

  v5 = [NSURL URLWithString:@"prefs:root=APPLE_ACCOUNT&aaaction=accountBeneficiary"];
  v6 = +[LSApplicationWorkspace defaultWorkspace];
  [v6 openSensitiveURL:v5 withOptions:0];

  v7 = [(AAUIFollowUpExtensionViewController *)self _followUpController];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100006674;
  v8[3] = &unk_100010530;
  v8[4] = self;
  [v7 dismissFollowUpWithIdentifier:AAFollowUpIdentifierBeneficiaryRemoved completion:v8];
}

- (id)_followUpController
{
  followUpController = self->_followUpController;
  if (!followUpController)
  {
    v4 = objc_alloc_init(AAFollowUpController);
    v5 = self->_followUpController;
    self->_followUpController = v4;

    followUpController = self->_followUpController;
  }

  return followUpController;
}

- (void)_sendCFUClickedEventWithTelemetryFlowID:(id)a3 altDSID:(id)a4 identifier:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v12 = objc_alloc_init(AAAFollowUpAnalyticsInfo);
  [v12 setFlowID:v9];

  [v12 setCfuType:v7];
  v10 = [AAFAnalyticsEvent analyticsEventWithName:kAAFClickFollowupEvent eventCategory:kCDPRTCEventCategoryAccountDataAccessRecovery followupAnalyticsData:v12 altDSID:v8];

  v11 = +[AAAnalyticsRTCReporter reporter];
  [v11 sendEvent:v10];
}

- (void)signInController:(id)a3 didCompleteWithSuccess:(BOOL)a4 error:(id)a5
{
  v5 = a4;
  v7 = a5;
  v8 = _AAUILogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"NO";
    if (v5)
    {
      v9 = @"YES";
    }

    *buf = 138543618;
    v13 = v9;
    v14 = 2114;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Sign in controller completed with success: %{public}@, error: %{public}@.", buf, 0x16u);
  }

  if (v5)
  {
    v10 = [(AAUIFollowUpExtensionViewController *)self _followUpController];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000069C0;
    v11[3] = &unk_100010530;
    v11[4] = self;
    [v10 dismissFollowUpWithIdentifier:AAFollowUpIdentifierStartUsing completion:v11];
  }

  else
  {
    [(AAUIFollowUpExtensionViewController *)self finishProcessing];
  }
}

- (void)signInControllerDidCancel:(id)a3
{
  v4 = _AAUILogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Sign in controller canceled.", v5, 2u);
  }

  [(AAUIFollowUpExtensionViewController *)self finishProcessing];
}

- (void)processFollowUpItem:(id)a3 selectedAction:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v9 userInfo];
  v13 = [v12 objectForKeyedSubscript:AAFollowUpUserInfoAltDSID];

  v14 = _AAUILogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138478339;
    v32 = v9;
    v33 = 2113;
    v34 = v10;
    v35 = 2113;
    v36 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Processing follow up item: %{private}@, for selected action: %{private}@ for altDSID:%{private}@", buf, 0x20u);
  }

  v15 = +[NSUUID UUID];
  v16 = [v15 UUIDString];

  v17 = [v9 uniqueIdentifier];
  [(AAUIFollowUpExtensionViewController *)self _sendCFUClickedEventWithTelemetryFlowID:v16 altDSID:v13 identifier:v17];

  v18 = [v10 identifier];
  v19 = [v18 isEqualToString:AAFollowUpActionDismiss];

  if (v19)
  {
    v20 = [v9 uniqueIdentifier];
    if ([v20 isEqualToString:AAFollowUpIdentifierCustodianWalrusRemoved])
    {
LABEL_7:

LABEL_8:
      v22 = _AAUILogSystem();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Action is dismiss but this is a persisting CFU, not clearing it.", buf, 2u);
      }

      v11[2](v11, 1);
      goto LABEL_14;
    }

    v21 = [v9 uniqueIdentifier];
    if ([v21 isEqualToString:AAFollowUpIdentifierWalrusUserRecoveryFactorsMissing])
    {

      goto LABEL_7;
    }

    v24 = [v9 uniqueIdentifier];
    v25 = [v24 isEqualToString:@"com.apple.AAFollowUpIdentifier.adpUserMissingHealthyCustodian"];

    if (v25)
    {
      goto LABEL_8;
    }

    v26 = _AAUILogSystem();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Action is dismiss, marking the follow up as handled.", buf, 2u);
    }

    v27 = [(AAUIFollowUpExtensionViewController *)self _followUpController];
    v28 = [v9 uniqueIdentifier];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100006E1C;
    v29[3] = &unk_1000107F0;
    v30 = v11;
    [v27 dismissFollowUpWithIdentifier:v28 completion:v29];
  }

  else
  {
    objc_storeStrong(&self->_followUpItem, a3);
    objc_storeStrong(&self->_followUpAction, a4);
    v23 = _AAUILogSystem();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Action could not be handled silently, asking for UI...", buf, 2u);
    }

    v11[2](v11, 0);
  }

LABEL_14:
}

- (void)genericTermsRemoteUI:(id)a3 didFinishWithSuccess:(BOOL)a4 serverInfo:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = _AAUILogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"NO";
    if (v6)
    {
      v11 = @"YES";
    }

    *buf = 138412290;
    v35 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "AAUIFollowUpExtension generic terms callback with success: %@", buf, 0xCu);
  }

  if (v6)
  {
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1000070EC;
    v31[3] = &unk_1000106C0;
    v12 = v8;
    v32 = v12;
    v33 = self;
    v13 = objc_retainBlock(v31);
    v14 = [v12 account];
    if (v14)
    {
      v23 = _NSConcreteStackBlock;
      v24 = 3221225472;
      v25 = sub_1000075F8;
      v26 = &unk_100010840;
      v27 = self;
      v15 = v12;
      v28 = v15;
      v16 = v14;
      v29 = v16;
      v30 = v13;
      v17 = objc_retainBlock(&v23);
      v18 = [v15 accountStore];
      v19 = objc_opt_respondsToSelector();

      v20 = [v15 accountStore];
      v21 = v20;
      if (v19)
      {
        [v20 aa_updatePropertiesForAppleAccount:v16 options:0 serverInfo:v9 completion:v17];
      }

      else
      {
        [v20 aa_updatePropertiesForAppleAccount:v16 completion:v17];
      }
    }

    else
    {
      v22 = _AAUILogSystem();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_100008F90();
      }

      (v13[2])(v13);
    }
  }

  else
  {
    [(AAUIFollowUpExtensionViewController *)self finishProcessing];
  }
}

- (void)processAuthenticationResults:(id)a3 error:(id)a4 forContext:(id)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  if (a4)
  {
    v12 = _AAUILogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10000903C();
    }

    v11[2](v11, 0);
  }

  else
  {
    v13 = [v9 objectForKeyedSubscript:AKAuthenticationPasswordKey];
    if ([v13 length])
    {
      v14 = [v9 objectForKeyedSubscript:AKAuthenticationUsernameKey];
      if ([v14 length] && objc_msgSend(v13, "length"))
      {
        v15 = _AAUILogSystem();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Attempt UCRT healing with credentials.", buf, 2u);
        }

        v41[0] = kFMDOptionsActivationLockUsername;
        v41[1] = kFMDOptionsActivationLockPET;
        v42[0] = v14;
        v42[1] = v13;
        v16 = [NSDictionary dictionaryWithObjects:v42 forKeys:v41 count:2];
        v17 = +[FMDFMIPManager sharedInstance];
        [v17 attemptUCRTHealing:v16 completion:&stru_100010860];
      }

      v18 = [v9 objectForKeyedSubscript:AKAuthenticationRawPasswordKey];
      if (![v18 length])
      {
        v19 = _AAUILogSystem();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Missing raw password", buf, 2u);
        }
      }

      v20 = [v10 clientInfo];
      v21 = [v20 objectForKeyedSubscript:AAFollowUpUserInfoAccountIdentifier];

      if ([v21 length])
      {
        v22 = +[ACAccountStore defaultStore];
        v23 = [v22 accountWithIdentifier:v21 error:0];
        if (v23)
        {
          v24 = [v10 proxiedDevice];

          if (v24)
          {
            [v23 setAuthenticated:0];
            v25 = [v23 credential];
            [v25 setPassword:v18];

            v26 = _AAUILogSystem();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Sending credentials to remote device", buf, 2u);
            }

            [v22 notifyRemoteDevicesOfUpdatedCredentials:v23];
            v11[2](v11, 1);
          }

          else
          {
            v30 = _AAUILogSystem();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138477827;
              v40 = v23;
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Updating PET on account %{private}@...", buf, 0xCu);
            }

            [v23 aa_setPassword:v13];
            [v23 _aa_setRawPassword:v18];
            v31 = _AAUILogSystem();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Calling out to verify credentials, will save if successful...", buf, 2u);
            }

            v37 = kACVerifyCredentialsShouldSaveKey;
            v38 = &__kCFBooleanTrue;
            v32 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
            v33[0] = _NSConcreteStackBlock;
            v33[1] = 3221225472;
            v33[2] = sub_100007EA8;
            v33[3] = &unk_100010888;
            v34 = v22;
            v36 = v11;
            v35 = v23;
            [v34 verifyCredentialsForAccount:v35 options:v32 completion:v33];
          }
        }

        else
        {
          v29 = _AAUILogSystem();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            sub_100009078();
          }

          v11[2](v11, 0);
        }
      }

      else
      {
        v28 = _AAUILogSystem();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          sub_1000090E8();
        }

        v11[2](v11, 0);
      }
    }

    else
    {
      v27 = _AAUILogSystem();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_100009124();
      }

      v11[2](v11, 0);
    }
  }
}

- (void)followUpPerformUpdateWithCompletionHandler:(id)a3
{
  v3 = a3;
  v4 = _AAUILogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100009294();
  }

  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100008334;
  v31[3] = &unk_1000108B0;
  v23 = v3;
  v32 = v23;
  v22 = objc_retainBlock(v31);
  v30 = 0;
  v24 = objc_alloc_init(FLFollowUpController);
  v5 = [v24 pendingFollowUpItems:&v30];
  v6 = v30;
  if (v6)
  {
    v7 = _AAUILogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000092C8();
    }
  }

  v21 = v6;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v26 objects:v38 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v27;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v26 + 1) + 8 * i);
        v15 = [v14 uniqueIdentifier];
        v16 = [v15 isEqualToString:AAFollowUpIdentifierRenewCredentials];

        if (v16)
        {
          v17 = [v14 userInfo];
          if (([AAFollowUpUtilities hasValidIDMSAccountForUserInfo:v17]& 1) != 0)
          {
            v18 = v11;
          }

          else
          {
            v37 = AAFollowUpIdentifierRenewCredentials;
            v19 = [NSArray arrayWithObjects:&v37 count:1];
            v25 = v11;
            [v24 clearPendingFollowUpItemsWithUniqueIdentifiers:v19 error:&v25];
            v18 = v25;

            if (v18)
            {
              v20 = _AAUILogSystem();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v34 = v14;
                v35 = 2112;
                v36 = v18;
                _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "AAUIFollowUpExtensionCleanup: failed to clear followup item %@ with error %@", buf, 0x16u);
              }
            }
          }

          v11 = v18;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v26 objects:v38 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  (v22[2])(v22, (v21 | v11) == 0);
}

- (id)accountsForAccountManager:(id)a3
{
  v4 = objc_opt_new();
  v5 = AIDAServiceTypeCloud;
  v6 = [(AIDAServiceOwnerProtocol *)self->_serviceOwnersManager accountForService:AIDAServiceTypeCloud];
  if (v6)
  {
    [v4 setObject:v6 forKeyedSubscript:v5];
  }

  v7 = [v4 copy];

  return v7;
}

- (void)remoteUIRequestComplete:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _AAUILogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = v6;
    v11 = 2114;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "remoteUI request %@ completed with error: %{public}@", &v9, 0x16u);
  }

  if (v7)
  {
    [(AAUIFollowUpExtensionViewController *)self finishProcessing];
  }

  else
  {
    [(AAUIFollowUpExtensionViewController *)self _dismissRecoveryKeyMismatchCFU];
  }
}

@end