@interface AAUIAppleAccountViewController
+ (BOOL)_isSplitView;
- (AAUIAppleAccountViewController)init;
- (BOOL)_activeFaceTimeCall;
- (BOOL)_handleAuthKitURLWithPendingDictionary:(id)a3;
- (BOOL)_handleDeeplinkBySpecifierProviderWithAction:(id)a3 pendingDictionary:(id)a4;
- (BOOL)_handleDeeplinkWithAction:(id)a3 pendingDictionary:(id)a4;
- (BOOL)_isBeneficiaryAccount;
- (BOOL)_isDemoAccount;
- (BOOL)_isEnabledForAccount:(id)a3;
- (BOOL)_isPasswordRequiredToValidateAppleAccount:(id)a3;
- (BOOL)_isRestoringFromiCloud;
- (BOOL)_isSingleAccount;
- (BOOL)_setupForNetworkActivity;
- (BOOL)_shouldShowDeleteAccountButton;
- (BOOL)_shouldShowStoreSettings;
- (BOOL)remoteUIController:(id)a3 shouldLoadRequest:(id)a4 redirectResponse:(id)a5;
- (BOOL)shouldShowRecoveryContactUpsellTip;
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (id)_RUITableViewSectionForDevice:(id)a3 inPage:(id)a4 delegate:(id)a5;
- (id)_accountAutoVerifier;
- (id)_accountForService:(id)a3 matchingAltDSID:(id)a4 DSID:(id)a5;
- (id)_activeAccount;
- (id)_appleAccount;
- (id)_authController;
- (id)_backupStatusString;
- (id)_cloudSpecifierForAccount:(id)a3;
- (id)_deviceSpecificLocalizedStringKey:(id)a3;
- (id)_familySpecifierProvider;
- (id)_fmipStatusString;
- (id)_gameCenterAccount;
- (id)_grandSlamAccount;
- (id)_grandSlamSigner;
- (id)_headerViewController;
- (id)_loadRemoteRequest:(id)a3 withIdentifier:(id)a4 preparation:(id)a5 completion:(id)a6;
- (id)_messageForError:(id)a3 account:(id)a4;
- (id)_passcodeValueFromPage:(id)a3 withFieldIdentifier:(id)a4;
- (id)_paymentSpecifierProvider;
- (id)_personNameComponents;
- (id)_personNameComponentsForAccountCollection:(id)a3;
- (id)_profilePictureStore;
- (id)_recoveryContactUpsellViewController;
- (id)_shouldRestrictSignoutMessage;
- (id)_siwaSpecifierForAccount:(id)a3;
- (id)_specifiersForAccountGroup;
- (id)_specifiersForDevicesGroup;
- (id)_specifiersForFamily;
- (id)_specifiersForFollowupGroup;
- (id)_specifiersForServicesGroup;
- (id)_specifiersForSignoutGroup;
- (id)_specifiersForStore;
- (id)_storeAccount;
- (id)_storeSpecifier;
- (id)_storeSpecifierForAccount:(id)a3;
- (id)_storeSpecifierProvider;
- (id)_titleForError:(id)a3 account:(id)a4;
- (id)_valueForCloudSpecifier:(id)a3;
- (id)_valueForPaymentSpecifier:(id)a3;
- (id)_valueForServiceSpecifier:(id)a3;
- (id)accountsForAccountManager:(id)a3;
- (id)remoteUIController:(id)a3 createPageWithName:(id)a4 attributes:(id)a5;
- (id)specifierForID:(id)a3;
- (id)specifiers;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (unint64_t)_reloadOptionsForChangesFromAccounts:(id)a3 toAccounts:(id)a4;
- (void)_accountEmailBecameVerified;
- (void)_addHeadersToRequest:(id)a3;
- (void)_attemptSignInForServiceType:(id)a3;
- (void)_attemptUpdateAuthControllerWithActionableResponse:(id)a3;
- (void)_autoVerifyAccount;
- (void)_beginObservingCallStatusChanges;
- (void)_beginObservingEmailVerificationStatus;
- (void)_beginObservingProfilePictureStoreDidChangeNotification;
- (void)_beginObservingiCloudRestoreStatus;
- (void)_beginValidationForAccount:(id)a3;
- (void)_checkNetworkReachabilityAndValidateAccount;
- (void)_cleanupFromNetworkActivity;
- (void)_clearCachedSpecifierValues;
- (void)_cloudSpecifierWasTapped:(id)a3;
- (void)_contactSpecifierWasTapped:(id)a3;
- (void)_deleteButtonTapped:(id)a3;
- (void)_deviceLocatorStateDidChange:(id)a3;
- (void)_didFinishSecondaryAuthentication;
- (void)_enableAllProvisionedDataclasses;
- (void)_forgetSpecifiers;
- (void)_generateLoginCode;
- (void)_getServerUILoadDelegateWithCompletion:(id)a3;
- (void)_handleAccountAutoVerificationCompletionWithSuccess:(BOOL)a3 error:(id)a4;
- (void)_handleAccountBeneficiaryURL:(id)a3;
- (void)_handleAccountRecoveryURL:(id)a3;
- (void)_handleAccountRegistrationCompletionWithResult:(BOOL)a3 error:(id)a4;
- (void)_handleAccountRevalidationCompletionWithValidatedAccount:(id)a3 success:(BOOL)a4 error:(id)a5;
- (void)_handleAuthActionURL:(id)a3;
- (void)_handleAuthkitFollowUpServerUI:(id)a3;
- (void)_handleCDPActionURL:(id)a3;
- (void)_handleChangePasswordActionURL:(id)a3;
- (void)_handleOONAddressVettingActionURL:(id)a3;
- (void)_handlePaymentMethodSummaryResponse:(id)a3;
- (void)_handleResourcesDictionaryDidChange:(id)a3;
- (void)_handleSecondaryAuthenticationResponse:(id)a3 baseURL:(id)a4 completion:(id)a5;
- (void)_handleUpgradeSecurityLevelActionURL:(id)a3;
- (void)_handleiForgotActionURL:(id)a3;
- (void)_imageControlTapped;
- (void)_issueFindMyiPhonePromptWithTitle:(id)a3 andMessage:(id)a4;
- (void)_layoutHeader;
- (void)_layoutTableHeaderView;
- (void)_loadCloudKitSettingsBundleIfNeeded;
- (void)_loadCloudStorageSummary;
- (void)_loadPaymentMethodSummary;
- (void)_loadRemoteRequest:(id)a3 withIdentifier:(id)a4 specifier:(id)a5;
- (void)_paymentSpecifierWasTapped:(id)a3;
- (void)_performNetworkValidation;
- (void)_postCDPRepairFollowUp;
- (void)_presentFirstAlertIfNecessary;
- (void)_presentValidationErrorAlert:(id)a3 account:(id)a4;
- (void)_profilePictureStoreDidChange:(id)a3;
- (void)_promptForAccountSignOutAppleAccount:(id)a3 storeAccount:(id)a4 completion:(id)a5;
- (void)_promptUserToEnableFindMyiPhoneIfPossible;
- (void)_pushSecondaryAuthenticationRemoteUI:(id)a3 baseURL:(id)a4 withCompletion:(id)a5;
- (void)_reachabilityChanged:(BOOL)a3;
- (void)_refreshAppleIDSettingsTokensWithCompletion:(id)a3;
- (void)_registerAccount;
- (void)_reloadSignoutGroupSpecifiersForName:(id)a3;
- (void)_requestSecondaryAuthenticationIfNecessaryWithGSToken:(id)a3 completion:(id)a4;
- (void)_retryRequest:(id)a3 inRemoteUIController:(id)a4 completion:(id)a5;
- (void)_revalidateAccount;
- (void)_securitySpecifierWasTapped:(id)a3;
- (void)_setSignOutInProgressForAppleAccount:(id)a3;
- (void)_setSignOutNotInProgressForAppleAccount:(id)a3;
- (void)_setupAppleAccountHeader;
- (void)_setupHeader;
- (void)_setupNavigationBarButtons;
- (void)_showAccountDetailsUnavailableAlert;
- (void)_showAlertWithTitle:(id)a3 message:(id)a4;
- (void)_showGenericTermsUI;
- (void)_siwaSpecifierWasTapped:(id)a3;
- (void)_startMonitoringReachability;
- (void)_startObservingAccountStoreChanges;
- (void)_startObservingDeviceLocatorStateChanges;
- (void)_startObservingPresentCustodianSetupNotification;
- (void)_startObservingQuotaChangeNotifications;
- (void)_startObservingRCUpsellTipDismissedNotification;
- (void)_startSpinnerInSpecifier:(id)a3;
- (void)_stopMonitoringReachability;
- (void)_stopObservingCallStatusChanges;
- (void)_stopObservingDeviceLocatorStateChanges;
- (void)_stopObservingPresentCustodianSetupNotification;
- (void)_stopObservingProfilePictureStoreDidChangeNotification;
- (void)_stopObservingQuotaChangeNotifications;
- (void)_stopObservingRCUpsellTipDismissedNotification;
- (void)_stopSpinnerInActiveSpecifier;
- (void)_storeSpecifierWasTapped:(id)a3;
- (void)_subscriptionsSpecifierWasTapped:(id)a3;
- (void)_updateLocalAccountInformationFromClientInfo:(id)a3;
- (void)custodianSetupFlowControllerRecoveryContactInviteSent;
- (void)dealloc;
- (void)documentPicker:(id)a3 didPickDocumentsAtURLs:(id)a4;
- (void)documentPickerWasCancelled:(id)a3;
- (void)endUpdates;
- (void)genericTermsRemoteUI:(id)a3 didFinishWithSuccess:(BOOL)a4;
- (void)handleURL:(id)a3 withCompletion:(id)a4;
- (void)insertSpecifier:(id)a3 afterSpecifierNamed:(id)a4 animated:(BOOL)a5;
- (void)operationsHelper:(id)a3 willSaveAccount:(id)a4;
- (void)presentCustodianSetupFlow:(id)a3;
- (void)refreshDetailTextForTableCellWithTag:(int64_t)a3;
- (void)reloadSpecifierForProvider:(id)a3 identifier:(id)a4;
- (void)remoteUIController:(id)a3 didDismissModalNavigationWithObjectModels:(id)a4;
- (void)remoteUIController:(id)a3 didReceiveHTTPResponse:(id)a4;
- (void)remoteUIController:(id)a3 didReceiveObjectModel:(id)a4 actionSignal:(unint64_t *)a5;
- (void)remoteUIController:(id)a3 didRefreshObjectModel:(id)a4;
- (void)remoteUIController:(id)a3 willPresentModalNavigationController:(id)a4;
- (void)remoteUIControllerDidDismiss:(id)a3;
- (void)setDeferredURL:(id)a3;
- (void)setSpecifier:(id)a3;
- (void)signInController:(id)a3 didCompleteWithSuccess:(BOOL)a4 error:(id)a5;
- (void)signInControllerDidCancel:(id)a3;
- (void)specifierProvider:(id)a3 didFinishLoadingSpecifier:(id)a4;
- (void)specifierProvider:(id)a3 showViewController:(id)a4;
- (void)specifierProvider:(id)a3 willBeginLoadingSpecifier:(id)a4;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willMoveToParentViewController:(id)a3;
@end

@implementation AAUIAppleAccountViewController

- (void)dealloc
{
  v3 = _AAUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "AAUIAppleAccountViewController dealloc", buf, 2u);
  }

  [(AAUIAppleAccountViewController *)self _stopObservingiCloudRestoreStatus];
  [(NSMutableDictionary *)self->_objectModelDecorators removeAllObjects];
  [(AAUIAppleAccountViewController *)self _stopObservingDeviceLocatorStateChanges];
  [(AAUIAppleAccountViewController *)self _stopObservingEmailVerificationStatus];
  [(AAUIAppleAccountViewController *)self _stopObservingAccountStoreChanges];
  [(AAUIAppleAccountViewController *)self _stopObservingProfilePictureStoreDidChangeNotification];
  [(AAUIAppleAccountViewController *)self _stopMonitoringReachability];
  [(AAUIAppleAccountViewController *)self _stopObservingPresentCustodianSetupNotification];
  [(AAUIAppleAccountViewController *)self _stopObservingRCUpsellTipDismissedNotification];
  [(AAUIAppleAccountViewController *)self _stopObservingQuotaChangeNotifications];
  [(AAUIAppleAccountViewController *)self _stopObservingCallStatusChanges];
  [(NSOperationQueue *)self->_networkActivityQueue cancelAllOperations];
  [(AAUIAppleAccountViewController *)self na_removeNotificationBlockObserver:self->_resourcesDictionaryObserver];
  resourcesDictionaryObserver = self->_resourcesDictionaryObserver;
  self->_resourcesDictionaryObserver = 0;

  v5.receiver = self;
  v5.super_class = AAUIAppleAccountViewController;
  [(AAUIAppleAccountViewController *)&v5 dealloc];
}

- (void)willMoveToParentViewController:(id)a3
{
  v6.receiver = self;
  v6.super_class = AAUIAppleAccountViewController;
  [(AAUIAppleAccountViewController *)&v6 willMoveToParentViewController:a3];
  v4 = [(AAUIRemoteUIController *)self->_activeRemoteUIController loader];
  [v4 cancel];

  [(AAUIRemoteUIController *)self->_activeRemoteUIController setNavigationController:0];
  activeRemoteUIController = self->_activeRemoteUIController;
  self->_activeRemoteUIController = 0;
}

- (id)_deviceSpecificLocalizedStringKey:(id)a3
{
  v3 = a3;
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [UIDevice modelSpecificLocalizedStringKeyForKey:v3];

  v6 = [v4 localizedStringForKey:v5 value:&stru_5A5F0 table:@"Localizable"];

  return v6;
}

- (AAUIAppleAccountViewController)init
{
  v23.receiver = self;
  v23.super_class = AAUIAppleAccountViewController;
  v2 = [(AAUIAppleAccountViewController *)&v23 init];
  v3 = v2;
  if (v2)
  {
    v2->_allowAccountRevalidation = 1;
    v2->_iCloudRestoreToken = -1;
    v4 = objc_alloc_init(NSMutableDictionary);
    objectModelDecorators = v3->_objectModelDecorators;
    v3->_objectModelDecorators = v4;

    v3->_emailVerificationToken = -1;
    v6 = objc_alloc_init(NSLock);
    accountValidationLock = v3->_accountValidationLock;
    v3->_accountValidationLock = v6;

    [(NSLock *)v3->_accountValidationLock setName:@"AAAccountValidationLock"];
    v8 = +[ACAccountStore defaultStore];
    v9 = [[AIDAServiceOwnersManager alloc] initWithAccountStore:v8];
    serviceOwnersManager = v3->_serviceOwnersManager;
    v3->_serviceOwnersManager = v9;

    v11 = [[AIDAAccountManager alloc] initWithAccountStore:v8];
    accountManager = v3->_accountManager;
    v3->_accountManager = v11;

    [(AIDAAccountManager *)v3->_accountManager setDelegate:v3];
    v13 = +[AAUIDeviceLocatorService sharedInstance];
    deviceLocatorService = v3->_deviceLocatorService;
    v3->_deviceLocatorService = v13;

    [(AAUIAppleAccountViewController *)v3 _startObservingDeviceLocatorStateChanges];
    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_create("com.apple.appleaccountsettings.accountwork", v15);
    accountWorkQueue = v3->_accountWorkQueue;
    v3->_accountWorkQueue = v16;

    v18 = objc_alloc_init(NSOperationQueue);
    networkActivityQueue = v3->_networkActivityQueue;
    v3->_networkActivityQueue = v18;

    v20 = v3->_networkActivityQueue;
    v21 = dispatch_get_global_queue(33, 0);
    [(NSOperationQueue *)v20 setUnderlyingQueue:v21];

    [(AAUIAppleAccountViewController *)v3 _beginObservingiCloudRestoreStatus];
    [(AAUIAppleAccountViewController *)v3 _beginObservingEmailVerificationStatus];
    [(AAUIAppleAccountViewController *)v3 _startObservingAccountStoreChanges];
    [(AAUIAppleAccountViewController *)v3 _startMonitoringReachability];
    if ([(AAUIAppleAccountViewController *)v3 shouldShowRecoveryContactUpsellTip])
    {
      [(AAUIAppleAccountViewController *)v3 _startObservingPresentCustodianSetupNotification];
      [(AAUIAppleAccountViewController *)v3 _startObservingRCUpsellTipDismissedNotification];
    }

    [(AAUIAppleAccountViewController *)v3 _beginObservingCallStatusChanges];
    v3->_shouldIgnoreQuotaCache = 1;
    [(AAUIAppleAccountViewController *)v3 _startObservingQuotaChangeNotifications];
  }

  return v3;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = AAUIAppleAccountViewController;
  [(AAUIAppleAccountViewController *)&v7 viewDidLoad];
  v3 = [(AAUIAppleAccountViewController *)self _appleAccount];
  v4 = @"APPLEID_TITLE_REBRAND";
  if ([v3 aa_isManagedAppleID] && objc_msgSend(v3, "aa_isRemotelyManaged"))
  {
    v4 = @"APPLEID_TITLE_MANAGED_REBRAND";
  }

  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:v4 value:&stru_5A5F0 table:@"Localizable"];
  [(AAUIAppleAccountViewController *)self setTitle:v6];

  [(AAUIAppleAccountViewController *)self _setupNavigationBarButtons];
}

- (BOOL)shouldShowRecoveryContactUpsellTip
{
  if (!+[AAUIFeatureFlags isRecoveryContactUpsellTipEnabled])
  {
    return 0;
  }

  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.appleaccount"];
  v3 = [v2 valueForKey:@"RecoveryContactUpsellTipAction"];
  v4 = v3 == 0;

  return v4;
}

- (void)_setupNavigationBarButtons
{
  v3 = [(AAUIAppleAccountViewController *)self navigationItem];
  if (([(AAUIAppleAccountViewController *)self isPresentedAsModalSheet]& 1) == 0)
  {
    [v3 setRightBarButtonItem:0];
  }

  [(AAUIAppleAccountViewController *)self setCancelButton:0];
  [v3 setLeftBarButtonItem:0];
  [v3 setHidesBackButton:0];
}

- (void)_setupAppleAccountHeader
{
  v3 = _AAUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_33C90();
  }

  v4 = [(AAUIAppleAccountViewController *)self _appleAccount];
  v5 = [(AAUIAppleAccountViewController *)self _storeAccount];
  v6 = v5;
  if (v4 | v5)
  {
    if (v4)
    {
      v9 = v4;
    }

    else
    {
      v9 = v5;
    }

    v10 = v9;
    v11 = [(AAUIAppleAccountViewController *)self _profilePictureStore];
    v8 = [v11 profilePictureForAccountOwner];

    v12 = [v10 aa_formattedUsername];

    v13 = [[AAUIAppleAccountHeaderView alloc] initWithLabelInsets:3.0, 24.8013163, 3.0, 24.8013163];
    accountHeaderView = self->_accountHeaderView;
    self->_accountHeaderView = v13;

    [(AAUIAppleAccountHeaderView *)self->_accountHeaderView setDelegate:self];
    v15 = [(AAUIAppleAccountHeaderView *)self->_accountHeaderView imageControl];
    [v15 setEnabled:v4 != 0];

    v16 = [(AAUIAppleAccountHeaderView *)self->_accountHeaderView imageControl];
    v17 = [v16 imageView];
    [v17 setImage:v8];

    v18 = [(AAUIAppleAccountHeaderView *)self->_accountHeaderView accountHeaderLabel];
    v19 = [(AAUIAppleAccountViewController *)self _personNameComponents];
    v20 = [NSPersonNameComponentsFormatter localizedStringFromPersonNameComponents:v19 style:2 options:0];
    [v18 setText:v20];

    v21 = [(AAUIAppleAccountHeaderView *)self->_accountHeaderView accountHeaderSublabel];
    [v21 setText:v12];

    v22 = [(AAUIAppleAccountViewController *)self table];
    [v22 setTableHeaderView:self->_accountHeaderView];

    [(AAUIAppleAccountViewController *)self _layoutTableHeaderView];
  }

  else
  {
    v7 = _AAUILogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_33CCC();
    }

    v8 = [(AAUIAppleAccountViewController *)self table];
    [v8 setTableHeaderView:0];
  }
}

- (id)_recoveryContactUpsellViewController
{
  recoveryContactUpsellController = self->_recoveryContactUpsellController;
  if (!recoveryContactUpsellController)
  {
    v4 = +[AAUIRecoveryContactUpsellFactory createRecoveryContactUpsellTipView];
    v5 = self->_recoveryContactUpsellController;
    self->_recoveryContactUpsellController = v4;

    recoveryContactUpsellController = self->_recoveryContactUpsellController;
  }

  return recoveryContactUpsellController;
}

- (id)_headerViewController
{
  headerViewController = self->_headerViewController;
  if (!headerViewController)
  {
    if (self->_meCard)
    {
      v4 = [(AAUIAppleAccountViewController *)self _activeAccount];
      v5 = [AAUIAppleAccountHeaderViewFactory createAppleAccountHeaderViewFromContact:self->_meCard account:v4 showAccountDetails:1 showChangeButton:0];
      v6 = self->_headerViewController;
      self->_headerViewController = v5;

      headerViewController = self->_headerViewController;
    }

    else
    {
      headerViewController = 0;
    }
  }

  return headerViewController;
}

- (void)_setupHeader
{
  v3 = _AAUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_33D08();
  }

  objc_initWeak(&location, self);
  v4 = [(AAUIAppleAccountViewController *)self _profilePictureStore];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1308C;
  v5[3] = &unk_59820;
  objc_copyWeak(&v6, &location);
  v5[4] = self;
  [v4 meCardWithVisualIdentity:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = AAUIAppleAccountViewController;
  [(AAUIAppleAccountViewController *)&v3 viewWillLayoutSubviews];
  [(AAUIAppleAccountViewController *)self _layoutHeader];
}

- (void)_layoutTableHeaderView
{
  v3 = _AAUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_33E34();
  }

  v4 = [(AAUIAppleAccountViewController *)self table];
  v5 = [v4 tableHeaderView];

  [v5 systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
  v7 = v6;
  v8 = [(AAUIAppleAccountViewController *)self table];
  v9 = [v8 tableHeaderView];
  [v9 frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;

  [v5 setFrame:{v11, v13, v15, v7}];
  [UIView setAnimationsEnabled:0];
  v16 = [(AAUIAppleAccountViewController *)self table];
  [v16 beginUpdates];

  v17 = [(AAUIAppleAccountViewController *)self table];
  [v17 endUpdates];

  [UIView setAnimationsEnabled:1];
}

- (void)_layoutHeader
{
  v3 = _AAUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_33E70();
  }

  v4 = [(AAUIAppleAccountViewController *)self table];
  v5 = [v4 tableHeaderView];

  [v5 setNeedsLayout];
  [v5 layoutIfNeeded];
  [v5 intrinsicContentSize];
  v7 = v6;
  v8 = [(AAUIAppleAccountViewController *)self table];
  [v8 setSectionHeaderHeight:UITableViewAutomaticDimension];

  v9 = [(AAUIAppleAccountViewController *)self table];
  [v9 setEstimatedSectionHeaderHeight:v7];

  v10 = [(AAUIAppleAccountViewController *)self table];
  v11 = [v10 tableHeaderView];
  [v11 frame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  if (v19 != v7)
  {
    [v5 setFrame:{v13, v15, v17, v7}];
  }

  v20 = [(AAUIAppleAccountViewController *)self table];
  [v20 layoutSubviews];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = AAUIAppleAccountViewController;
  v7 = a4;
  [(AAUIAppleAccountViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_136D0;
  v8[3] = &unk_59888;
  v8[4] = self;
  [v7 animateAlongsideTransition:&stru_59860 completion:v8];
}

+ (BOOL)_isSplitView
{
  v2 = +[UIDevice currentDevice];
  if ([v2 userInterfaceIdiom] == &dword_0 + 1)
  {
    v3 = 1;
  }

  else
  {
    v4 = +[UIDevice currentDevice];
    v3 = [v4 userInterfaceIdiom] == &dword_4 + 2;
  }

  return v3;
}

- (id)_appleAccount
{
  v2 = [(AIDAAccountManager *)self->_accountManager accounts];
  v3 = [v2 objectForKeyedSubscript:AIDAServiceTypeCloud];

  return v3;
}

- (id)_storeAccount
{
  v2 = [(AIDAAccountManager *)self->_accountManager accounts];
  v3 = [v2 objectForKeyedSubscript:AIDAServiceTypeStore];

  return v3;
}

- (id)_gameCenterAccount
{
  v2 = [(AIDAAccountManager *)self->_accountManager accounts];
  v3 = [v2 objectForKeyedSubscript:AIDAServiceTypeGameCenter];

  return v3;
}

- (id)_activeAccount
{
  v3 = [(AAUIAppleAccountViewController *)self _appleAccount];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(AAUIAppleAccountViewController *)self _storeAccount];
  }

  v6 = v5;

  return v6;
}

- (BOOL)_shouldShowStoreSettings
{
  v3 = [(AAUIAppleAccountViewController *)self _appleAccount];
  if (v3)
  {
  }

  else
  {
    v6 = [(AAUIAppleAccountViewController *)self _storeAccount];

    if (v6)
    {
      return 1;
    }
  }

  v4 = [(AAUIAppleAccountViewController *)self _appleAccount];
  if (([v4 aa_isManagedAppleID] & 1) != 0 || -[AAUIAppleAccountViewController _isBeneficiaryAccount](self, "_isBeneficiaryAccount"))
  {
    v5 = 0;
  }

  else
  {
    v7 = [(AAUIAppleAccountViewController *)self _appleAccount];
    v5 = [v7 aa_isAccountClass:AAAccountClassPrimary];
  }

  return v5;
}

- (BOOL)_isBeneficiaryAccount
{
  v2 = [(AAUIAppleAccountViewController *)self _appleAccount];
  v3 = [v2 aa_altDSID];

  if (v3)
  {
    v4 = +[AKAccountManager sharedInstance];
    v5 = [v4 authKitAccountWithAltDSID:v3];

    v6 = +[AKAccountManager sharedInstance];
    v7 = [v6 isBeneficiaryForAccount:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_isDemoAccount
{
  v2 = [(AAUIAppleAccountViewController *)self _appleAccount];
  v3 = [v2 aa_altDSID];

  if (v3)
  {
    v4 = +[AKAccountManager sharedInstance];
    v5 = [v4 authKitAccountWithAltDSID:v3];

    v6 = +[AKAccountManager sharedInstance];
    v7 = [v6 demoAccountForAccount:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_grandSlamAccount
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_13DE0;
  block[3] = &unk_59680;
  block[4] = self;
  if (self->_grandSlamAccountOnceToken != -1)
  {
    dispatch_once(&self->_grandSlamAccountOnceToken, block);
  }

  return self->_grandSlamAccount;
}

- (id)_grandSlamSigner
{
  grandSlamSigner = self->_grandSlamSigner;
  if (!grandSlamSigner)
  {
    v4 = [AAGrandSlamSigner alloc];
    v5 = [(AAUIAppleAccountViewController *)self _accountStore];
    v6 = [(AAUIAppleAccountViewController *)self _grandSlamAccount];
    v7 = [v4 initWithAccountStore:v5 grandSlamAccount:v6 appTokenID:AAGrandSlamAppTokenIDiCloudSettings];
    v8 = self->_grandSlamSigner;
    self->_grandSlamSigner = v7;

    grandSlamSigner = self->_grandSlamSigner;
  }

  return grandSlamSigner;
}

- (BOOL)_isSingleAccount
{
  v3 = [(AAUIAppleAccountViewController *)self _appleAccount];
  v4 = [(AAUIAppleAccountViewController *)self _storeAccount];
  v5 = v4;
  v6 = 1;
  if (v3 && v4)
  {
    v7 = AIDAServiceTypeCloud;
    v8 = [(AIDAServiceOwnerProtocol *)self->_serviceOwnersManager altDSIDForAccount:v3 service:AIDAServiceTypeCloud];
    v9 = AIDAServiceTypeStore;
    v10 = [(AIDAServiceOwnerProtocol *)self->_serviceOwnersManager altDSIDForAccount:v5 service:AIDAServiceTypeStore];
    if ([v8 length] && objc_msgSend(v10, "length"))
    {
      v6 = [v8 isEqualToString:v10];
    }

    else
    {
      v11 = _AAUILogSystem();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_33EE8();
      }

      v12 = [(AIDAServiceOwnerProtocol *)self->_serviceOwnersManager DSIDForAccount:v3 service:v7];
      v13 = [(AIDAServiceOwnerProtocol *)self->_serviceOwnersManager DSIDForAccount:v5 service:v9];
      v6 = [v12 isEqualToString:v13];
    }
  }

  return v6;
}

- (id)_personNameComponentsForAccountCollection:(id)a3
{
  v4 = a3;
  v5 = AIDAServiceTypeCloud;
  v6 = [v4 objectForKeyedSubscript:AIDAServiceTypeCloud];
  if (v6)
  {
    v7 = [(AIDAServiceOwnerProtocol *)self->_serviceOwnersManager nameComponentsForAccount:v6 service:v5];
  }

  else
  {
    v8 = AIDAServiceTypeStore;
    v9 = [v4 objectForKeyedSubscript:AIDAServiceTypeStore];
    if (v9)
    {
      v7 = [(AIDAServiceOwnerProtocol *)self->_serviceOwnersManager nameComponentsForAccount:v9 service:v8];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)_personNameComponents
{
  v3 = [(AIDAAccountManager *)self->_accountManager accounts];
  v4 = [(AAUIAppleAccountViewController *)self _personNameComponentsForAccountCollection:v3];

  return v4;
}

- (id)_profilePictureStore
{
  profilePictureStore = self->_profilePictureStore;
  if (!profilePictureStore)
  {
    v4 = _AAUIPPSLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Loading Profile Picture Store", v10, 2u);
    }

    [(AAUIAppleAccountViewController *)self _stopObservingProfilePictureStoreDidChangeNotification];
    v5 = [AAUIProfilePictureStore alloc];
    v6 = [(AAUIAppleAccountViewController *)self _grandSlamSigner];
    v7 = [v5 initWithGrandSlamSigner:v6];
    v8 = self->_profilePictureStore;
    self->_profilePictureStore = v7;

    [(AAUIProfilePictureStore *)self->_profilePictureStore setPictureDiameter:80.0];
    [(AAUIAppleAccountViewController *)self _beginObservingProfilePictureStoreDidChangeNotification];
    profilePictureStore = self->_profilePictureStore;
  }

  return profilePictureStore;
}

- (id)specifierForID:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = AAUIAppleAccountViewController;
  v5 = [(AAUIAppleAccountViewController *)&v8 specifierForID:v4];
  if (!v5)
  {
    if ([v4 isEqualToString:@"SIWA_SERVICE"])
    {
      v7.receiver = self;
      v7.super_class = AAUIAppleAccountViewController;
      v5 = [(AAUIAppleAccountViewController *)&v7 specifierForID:@"PASSWORD_AND_SECURITY"];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)setSpecifier:(id)a3
{
  v4 = a3;
  v5 = _AAUILogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_33F6C();
  }

  [v4 setName:0];
  v6 = [v4 objectForKeyedSubscript:AAUIAppleAccountDeferredURLKey];
  [(AAUIAppleAccountViewController *)self setDeferredURL:v6];

  v7.receiver = self;
  v7.super_class = AAUIAppleAccountViewController;
  [(AAUIAppleAccountViewController *)&v7 setSpecifier:v4];
}

- (void)setDeferredURL:(id)a3
{
  v5 = a3;
  v6 = _AAUILogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_33FA8();
  }

  if (self->_resourcesDictionaryObserver)
  {
    [(AAUIAppleAccountViewController *)self na_removeNotificationBlockObserver:?];
    resourcesDictionaryObserver = self->_resourcesDictionaryObserver;
    self->_resourcesDictionaryObserver = 0;
  }

  objc_storeStrong(&self->_deferredURL, a3);
  if (v5)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_146F8;
    v10[3] = &unk_598B0;
    v10[4] = self;
    v8 = [(AAUIAppleAccountViewController *)self na_addNotificationBlockObserverForObject:v5 keyPath:@"resourcesDictionary" options:7 usingBlock:v10];
    v9 = self->_resourcesDictionaryObserver;
    self->_resourcesDictionaryObserver = v8;
  }
}

- (void)_handleResourcesDictionaryDidChange:(id)a3
{
  v4 = a3;
  self->_loadedViaURL = 1;
  v5 = [v4 copy];
  cachedResourceDictionary = self->_cachedResourceDictionary;
  self->_cachedResourceDictionary = v5;

  v7 = [v4 objectForKeyedSubscript:@"aaaction"];
  v8 = _AAUILogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v7;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "_handleResourcesDictionaryDidChange action - %@", &v12, 0xCu);
  }

  if ([(AAUIAppleAccountViewController *)self _handleDeeplinkWithAction:v7 pendingDictionary:v4])
  {
    v9 = _AAUILogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_34100();
    }
  }

  else if ([(AAUIAppleAccountViewController *)self _handleDeeplinkBySpecifierProviderWithAction:v7 pendingDictionary:v4])
  {
    v9 = _AAUILogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_34090();
    }
  }

  else
  {
    v10 = [(AAUIAppleAccountViewController *)self _handleAuthKitURLWithPendingDictionary:v4];
    v11 = _AAUILogSystem();
    v9 = v11;
    if (v10)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        sub_34054();
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_33FE4();
    }
  }
}

- (BOOL)_handleDeeplinkWithAction:(id)a3 pendingDictionary:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isEqual:@"auth"])
  {
    [(AAUIAppleAccountViewController *)self _handleAuthActionURL:v7];
LABEL_21:
    v8 = 1;
    goto LABEL_22;
  }

  if ([v6 isEqual:@"resetPassword"])
  {
    [(AAUIAppleAccountViewController *)self _handleiForgotActionURL:v7];
    goto LABEL_21;
  }

  if ([v6 isEqual:@"changePassword"])
  {
    [(AAUIAppleAccountViewController *)self _handleChangePasswordActionURL:v7];
    goto LABEL_21;
  }

  if ([v6 isEqual:@"CDP"])
  {
    [(AAUIAppleAccountViewController *)self _handleCDPActionURL:v7];
    goto LABEL_21;
  }

  if ([v6 isEqual:@"accountRecovery"])
  {
    [(AAUIAppleAccountViewController *)self _handleAccountRecoveryURL:v7];
    goto LABEL_21;
  }

  if ([v6 isEqual:@"accountBeneficiary"])
  {
    [(AAUIAppleAccountViewController *)self _handleAccountBeneficiaryURL:v7];
    goto LABEL_21;
  }

  if ([v6 isEqual:@"accountContactDetails"])
  {
    [(AAUIAppleAccountViewController *)self _contactSpecifierWasTapped:0];
    goto LABEL_21;
  }

  if ([v6 isEqualToString:@"IDMSUrl"])
  {
    [(AAUIAppleAccountViewController *)self _handleAuthkitFollowUpServerUI:v7];
    goto LABEL_21;
  }

  if ([v6 isEqual:@"oonAddressVetting"])
  {
    [(AAUIAppleAccountViewController *)self _handleOONAddressVettingActionURL:v7];
    goto LABEL_21;
  }

  if ([v6 isEqual:@"upgradeSecurityLevel"])
  {
    [(AAUIAppleAccountViewController *)self _handleUpgradeSecurityLevelActionURL:v7];
    goto LABEL_21;
  }

  v10 = _AAUILogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_34170();
  }

  v8 = 0;
LABEL_22:

  return v8;
}

- (BOOL)_handleDeeplinkBySpecifierProviderWithAction:(id)a3 pendingDictionary:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AAUIAppleAccountViewController *)self _familySpecifierProvider];
  v9 = [v8 handleURL:v7];

  if (v9)
  {
    v10 = _AAUILogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v6;
      v11 = "AAUIAppleAccountViewController Family specifier provider handled: %@";
LABEL_10:
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, v11, &v16, 0xCu);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  if ([(AAUISpecifierProvider *)self->_dmcReauthSpecifierProvider handleURL:v7])
  {
    v10 = _AAUILogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v6;
      v11 = "AAUIAppleAccountViewController DMC Reauth specifier provider handled: %@";
      goto LABEL_10;
    }

LABEL_11:
    v14 = 1;
    goto LABEL_12;
  }

  v12 = [(AAUIAppleAccountViewController *)self _storeSpecifierProvider];
  v13 = [v12 handleURL:v7];

  if (v13)
  {
    v10 = _AAUILogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v6;
      v11 = "SKAccountPageSpecifierProvider specifier provider handled: %@";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (self->_tuiOptInSpecifierProvider && (objc_opt_respondsToSelector() & 1) != 0 && [(AAUISpecifierProvider *)self->_tuiOptInSpecifierProvider handleURL:v7])
  {
    v10 = _AAUILogSystem();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v16 = 138412290;
    v17 = v6;
    v11 = "TUIOptInSpecifierProvider specifier provider handled: %@";
    goto LABEL_10;
  }

  v10 = _AAUILogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_341E0();
  }

  v14 = 0;
LABEL_12:

  return v14;
}

- (BOOL)_handleAuthKitURLWithPendingDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"notifyAuthKit"];

  if (v5)
  {
    v6 = objc_alloc_init(AAUIAuthKitURLHandler);
    v7 = _AAUILogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_34250(v4);
    }

    [(AAUIAuthKitURLHandler *)v6 handleAuthKitURLWithResourceDictionary:v4 presentingViewController:self];
  }

  return v5 != 0;
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  if (*&self->ACUIAccountConfigurationViewController_opaque[OBJC_IVAR___PSListController__specifiers])
  {
    goto LABEL_26;
  }

  v4 = _AAUILogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "AAUIAppleAccountViewController is loading specifiers.", &buf, 2u);
  }

  v5 = [*&self->ACUIAccountConfigurationViewController_opaque[OBJC_IVAR___PSViewController__specifier] userInfo];
  v6 = objc_alloc_init(NSMutableArray);
  v7 = [(AAUIAppleAccountViewController *)self _specifiersForFollowupGroup];
  [v6 addObjectsFromArray:v7];

  dmcReauthSpecifierProvider = self->_dmcReauthSpecifierProvider;
  if (!dmcReauthSpecifierProvider)
  {
    v9 = [[DMCReauthSpecifierProvider alloc] initWithAccountManager:self->_accountManager presenter:self];
    v10 = self->_dmcReauthSpecifierProvider;
    self->_dmcReauthSpecifierProvider = v9;

    [(AAUISpecifierProvider *)self->_dmcReauthSpecifierProvider setDelegate:self];
    dmcReauthSpecifierProvider = self->_dmcReauthSpecifierProvider;
  }

  v11 = [(AAUISpecifierProvider *)dmcReauthSpecifierProvider specifiers];
  [v6 addObjectsFromArray:v11];

  if (![(AAUIAppleAccountViewController *)self _isBeneficiaryAccount])
  {
    v12 = [(AAUIAppleAccountViewController *)self _specifiersForAccountGroup];
    [v6 addObjectsFromArray:v12];
  }

  mdmDetailsSpecifierProvider = self->_mdmDetailsSpecifierProvider;
  if (!mdmDetailsSpecifierProvider)
  {
    v14 = [[DMCMDMDetailsSpecifierProvider alloc] initWithAccountManager:self->_accountManager];
    v15 = self->_mdmDetailsSpecifierProvider;
    self->_mdmDetailsSpecifierProvider = v14;

    [(AAUISpecifierProvider *)self->_mdmDetailsSpecifierProvider setDelegate:self];
    mdmDetailsSpecifierProvider = self->_mdmDetailsSpecifierProvider;
  }

  v16 = [(AAUISpecifierProvider *)mdmDetailsSpecifierProvider specifiers];
  [v6 addObjectsFromArray:v16];

  v17 = [(AAUIAppleAccountViewController *)self _specifiersForServicesGroup];
  [v6 addObjectsFromArray:v17];

  if (![(AAUIAppleAccountViewController *)self _isBeneficiaryAccount])
  {
    v18 = [(AAUIAppleAccountViewController *)self _specifiersForDevicesGroup];
    [v6 addObjectsFromArray:v18];
  }

  if (_os_feature_enabled_impl() && ![(AAUIAppleAccountViewController *)self _isDemoAccount]&& ![(AAUIAppleAccountViewController *)self _isBeneficiaryAccount])
  {
    v19 = [(AAUIAppleAccountViewController *)self _appleAccount];
    if (![v19 aa_isAccountClass:AAAccountClassPrimary])
    {
LABEL_22:

      goto LABEL_23;
    }

    v20 = [(AAUIAppleAccountViewController *)self _appleAccount];
    v21 = [v20 aa_isManagedAppleID];

    if ((v21 & 1) == 0)
    {
      tuiOptInSpecifierProvider = self->_tuiOptInSpecifierProvider;
      if (!tuiOptInSpecifierProvider)
      {
        v38 = 0;
        v39 = &v38;
        v40 = 0x2050000000;
        v23 = qword_6A208;
        v41 = qword_6A208;
        if (!qword_6A208)
        {
          *&buf = _NSConcreteStackBlock;
          *(&buf + 1) = 3221225472;
          v43 = sub_28CC4;
          v44 = &unk_59380;
          v45 = &v38;
          sub_28CC4(&buf);
          v23 = v39[3];
        }

        v24 = v23;
        _Block_object_dispose(&v38, 8);
        v25 = [v23 alloc];
        v26 = [v25 initWithAccountManager:{self->_accountManager, v38}];
        v27 = self->_tuiOptInSpecifierProvider;
        self->_tuiOptInSpecifierProvider = v26;

        [(AAUISpecifierProvider *)self->_tuiOptInSpecifierProvider setDelegate:self];
        tuiOptInSpecifierProvider = self->_tuiOptInSpecifierProvider;
      }

      v19 = [(AAUISpecifierProvider *)tuiOptInSpecifierProvider specifiers];
      [v6 addObjectsFromArray:v19];
      goto LABEL_22;
    }
  }

LABEL_23:
  managedAccountsSpecifierProvider = self->_managedAccountsSpecifierProvider;
  if (!managedAccountsSpecifierProvider)
  {
    v29 = [[DMCManagedAccountsSpecifierProvider alloc] initWithAccountManager:self->_accountManager];
    v30 = self->_managedAccountsSpecifierProvider;
    self->_managedAccountsSpecifierProvider = v29;

    [(AAUISpecifierProvider *)self->_managedAccountsSpecifierProvider setDelegate:self];
    managedAccountsSpecifierProvider = self->_managedAccountsSpecifierProvider;
  }

  v31 = [(AAUISpecifierProvider *)managedAccountsSpecifierProvider specifiers];
  [v6 addObjectsFromArray:v31];

  v32 = [(AAUIAppleAccountViewController *)self _specifiersForSignoutGroup];
  [v6 addObjectsFromArray:v32];

  v33 = *&self->ACUIAccountConfigurationViewController_opaque[v3];
  *&self->ACUIAccountConfigurationViewController_opaque[v3] = v6;

LABEL_26:
  v34 = _AAUILogSystem();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    v35 = *&self->ACUIAccountConfigurationViewController_opaque[v3];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v35;
    _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "AAUIAppleAccountViewController specifiers: returning %@", &buf, 0xCu);
  }

  v36 = *&self->ACUIAccountConfigurationViewController_opaque[v3];

  return v36;
}

- (void)_forgetSpecifiers
{
  userInfoForSpecifiers = self->_userInfoForSpecifiers;
  self->_userInfoForSpecifiers = 0;

  followupGroupSpecifiers = self->_followupGroupSpecifiers;
  self->_followupGroupSpecifiers = 0;

  accountGroupSpecifiers = self->_accountGroupSpecifiers;
  self->_accountGroupSpecifiers = 0;

  servicesGroupSpecifiers = self->_servicesGroupSpecifiers;
  self->_servicesGroupSpecifiers = 0;

  storeSpecifier = self->_storeSpecifier;
  self->_storeSpecifier = 0;

  [(AAUIDeviceSpecifierProvider *)self->_deviceSpecifierProvider setSpecifiers:0];
  signoutGroupSpecifiers = self->_signoutGroupSpecifiers;
  self->_signoutGroupSpecifiers = 0;

  [(AAUISpecifierProvider *)self->_familySpecifierProvider setSpecifiers:0];
  [(AAUISpecifierProvider *)self->_dmcReauthSpecifierProvider setSpecifiers:0];
  [(AAUISpecifierProvider *)self->_mdmDetailsSpecifierProvider setSpecifiers:0];
  [(AAUISpecifierProvider *)self->_mdmSignoutSpecifierProvider setSpecifiers:0];
  [(AAUISpecifierProvider *)self->_managedAccountsSpecifierProvider setSpecifiers:0];
  [(AAUISpecifierProvider *)self->_paymentSpecifierProvider setSpecifiers:0];
  fmfSpecifierProvider = self->_fmfSpecifierProvider;

  [(AAUISpecifierProvider *)fmfSpecifierProvider setSpecifiers:0];
}

- (void)_clearCachedSpecifierValues
{
  [(AAUIDeviceSpecifierProvider *)self->_deviceSpecifierProvider refreshDeviceList];
  [(AAUISpecifierProvider *)self->_familySpecifierProvider setSpecifiers:0];
  [(AAUISpecifierProvider *)self->_dmcReauthSpecifierProvider setSpecifiers:0];
  [(AAUISpecifierProvider *)self->_mdmDetailsSpecifierProvider setSpecifiers:0];
  [(AAUISpecifierProvider *)self->_mdmSignoutSpecifierProvider setSpecifiers:0];
  managedAccountsSpecifierProvider = self->_managedAccountsSpecifierProvider;
  self->_managedAccountsSpecifierProvider = 0;

  [(AAUISpecifierProvider *)self->_paymentSpecifierProvider setSpecifiers:0];
  fmfSpecifierProvider = self->_fmfSpecifierProvider;

  [(AAUISpecifierProvider *)fmfSpecifierProvider setSpecifiers:0];
}

- (id)_specifiersForFollowupGroup
{
  followupGroupSpecifiers = self->_followupGroupSpecifiers;
  self->_followupGroupSpecifiers = 0;

  v4 = [(AAUIAppleAccountViewController *)self _appleAccount];
  v5 = [v4 aa_isAccountClass:AAAccountClassPrimary];

  if (v5)
  {
    followUpController = self->_followUpController;
    if (!followUpController)
    {
      v7 = objc_alloc_init(FLPreferencesController);
      v8 = self->_followUpController;
      self->_followUpController = v7;

      [(FLPreferencesController *)self->_followUpController setListViewController:self];
      objc_initWeak(&location, self);
      v9 = self->_followUpController;
      v17 = _NSConcreteStackBlock;
      v18 = 3221225472;
      v19 = sub_15740;
      v20 = &unk_59540;
      objc_copyWeak(&v21, &location);
      [(FLPreferencesController *)v9 setItemChangeObserver:&v17];
      objc_destroyWeak(&v21);
      objc_destroyWeak(&location);
      followUpController = self->_followUpController;
    }

    v10 = [(FLPreferencesController *)followUpController spyglassSpecifiers:v17];
    if ([v10 count])
    {
      v11 = objc_alloc_init(NSMutableArray);
      v12 = self->_followupGroupSpecifiers;
      self->_followupGroupSpecifiers = v11;

      v13 = self->_followupGroupSpecifiers;
      v14 = [PSSpecifier groupSpecifierWithID:@"FOLLOWUP_GROUP"];
      [(NSMutableArray *)v13 addObject:v14];

      [(NSMutableArray *)self->_followupGroupSpecifiers addObjectsFromArray:v10];
    }
  }

  v15 = self->_followupGroupSpecifiers;

  return v15;
}

- (id)_specifiersForAccountGroup
{
  if (!self->_accountGroupSpecifiers)
  {
    v3 = objc_alloc_init(NSMutableArray);
    accountGroupSpecifiers = self->_accountGroupSpecifiers;
    self->_accountGroupSpecifiers = v3;

    if ([(AAUIAppleAccountViewController *)self shouldShowRecoveryContactUpsellTip])
    {
      v5 = [PSSpecifier groupSpecifierWithID:@"PERSONAL_INFORMATION_GROUP"];
      [(NSMutableArray *)self->_accountGroupSpecifiers addObject:v5];
      v6 = [(AAUIAppleAccountViewController *)self _appleAccount];
      v7 = [v6 aa_isManagedAppleID];

      v8 = [AAUISpyglassSpecifierFactory specifierForPersonalInformationWithAppleIDType:v7];
      contactSpecifier = self->_contactSpecifier;
      self->_contactSpecifier = v8;

      objc_storeWeak((self->_contactSpecifier + OBJC_IVAR___PSSpecifier_target), self);
      [(PSSpecifier *)self->_contactSpecifier setControllerLoadAction:"_contactSpecifierWasTapped:"];
      [(NSMutableArray *)self->_accountGroupSpecifiers addObject:self->_contactSpecifier];
      v10 = self->_accountGroupSpecifiers;
      v11 = [PSSpecifier groupSpecifierWithID:@"ACCOUNT_GROUP"];
      [(NSMutableArray *)v10 addObject:v11];
    }

    else
    {
      v12 = self->_accountGroupSpecifiers;
      v13 = [PSSpecifier groupSpecifierWithID:@"ACCOUNT_GROUP"];
      [(NSMutableArray *)v12 addObject:v13];

      v14 = [(AAUIAppleAccountViewController *)self _appleAccount];
      v15 = [v14 aa_isManagedAppleID];

      v16 = [AAUISpyglassSpecifierFactory specifierForPersonalInformationWithAppleIDType:v15];
      v17 = self->_contactSpecifier;
      self->_contactSpecifier = v16;

      objc_storeWeak((self->_contactSpecifier + OBJC_IVAR___PSSpecifier_target), self);
      [(PSSpecifier *)self->_contactSpecifier setControllerLoadAction:"_contactSpecifierWasTapped:"];
      [(NSMutableArray *)self->_accountGroupSpecifiers addObject:self->_contactSpecifier];
    }

    v18 = +[AAUISpyglassSpecifierFactory specifierForSignInAndSecurity];
    securitySpecifier = self->_securitySpecifier;
    self->_securitySpecifier = v18;

    objc_storeWeak((self->_securitySpecifier + OBJC_IVAR___PSSpecifier_target), self);
    [(PSSpecifier *)self->_securitySpecifier setControllerLoadAction:"_securitySpecifierWasTapped:"];
    [(NSMutableArray *)self->_accountGroupSpecifiers addObject:self->_securitySpecifier];
    if ([(AAUIAppleAccountViewController *)self _shouldShowStoreSettings])
    {
      v20 = [(AAUIAppleAccountViewController *)self _paymentSpecifierProvider];
      v21 = v20;
      if (v20)
      {
        v22 = [v20 specifiers];
        v23 = [v22 firstObject];
        paymentSpecifier = self->_paymentSpecifier;
        self->_paymentSpecifier = v23;
      }

      v25 = [AAUISpyglassSpecifierFactory specifierForPaymentAndShipping:self->_paymentSpecifier isPaymentSpecifierProviderNil:v21 == 0];
      v26 = self->_paymentSpecifier;
      self->_paymentSpecifier = v25;

      if (!v21)
      {
        objc_storeWeak((self->_paymentSpecifier + OBJC_IVAR___PSSpecifier_target), self);
        [(PSSpecifier *)self->_paymentSpecifier setControllerLoadAction:"_paymentSpecifierWasTapped:"];
        *(self->_paymentSpecifier + OBJC_IVAR___PSSpecifier_getter) = "_valueForPaymentSpecifier:";
      }

      [(NSMutableArray *)self->_accountGroupSpecifiers addObject:self->_paymentSpecifier];
    }

    if ([(AAUIAppleAccountViewController *)self _shouldShowStoreSettings])
    {
      v27 = [[AMSUIManageSubsriptionSpecifierProvider alloc] initWithAccountManager:self->_accountManager];
      manageSubscriptionSpecifier = self->_manageSubscriptionSpecifier;
      self->_manageSubscriptionSpecifier = v27;

      [(AAUISpecifierProvider *)self->_manageSubscriptionSpecifier setDelegate:self];
      v29 = [(AAUISpecifierProvider *)self->_manageSubscriptionSpecifier specifiers];
      v30 = [AAUISpyglassSpecifierFactory specifierForSubscriptions:v29];

      [(NSMutableArray *)self->_accountGroupSpecifiers addObjectsFromArray:v30];
    }
  }

  v31 = [(AAUIAppleAccountViewController *)self _appleAccount];
  if (v31)
  {
    v32 = v31;
    v33 = [(AAUIAppleAccountViewController *)self _appleAccount];
    v34 = [v33 aa_isPrimaryEmailVerified];

    if ((v34 & 1) == 0)
    {
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v35 = self->_accountGroupSpecifiers;
      v36 = [(NSMutableArray *)v35 countByEnumeratingWithState:&v46 objects:v50 count:16];
      if (v36)
      {
        v37 = v36;
        v38 = *v47;
        v39 = PSEnabledKey;
        do
        {
          for (i = 0; i != v37; i = i + 1)
          {
            if (*v47 != v38)
            {
              objc_enumerationMutation(v35);
            }

            [*(*(&v46 + 1) + 8 * i) setProperty:&__kCFBooleanFalse forKey:{v39, v46}];
          }

          v37 = [(NSMutableArray *)v35 countByEnumeratingWithState:&v46 objects:v50 count:16];
        }

        while (v37);
      }
    }
  }

  v41 = +[AKNetworkObserver sharedNetworkObserver];
  v42 = [v41 isNetworkReachable];

  if ((v42 & 1) == 0)
  {
    v43 = PSEnabledKey;
    [(PSSpecifier *)self->_contactSpecifier setProperty:&__kCFBooleanFalse forKey:PSEnabledKey];
    [(PSSpecifier *)self->_paymentSpecifier setProperty:&__kCFBooleanFalse forKey:v43];
  }

  v44 = self->_accountGroupSpecifiers;

  return v44;
}

- (id)_specifiersForServicesGroup
{
  servicesGroupSpecifiers = self->_servicesGroupSpecifiers;
  if (servicesGroupSpecifiers)
  {
    goto LABEL_40;
  }

  v4 = [(AAUIAppleAccountViewController *)self _appleAccount];
  v54 = [(AAUIAppleAccountViewController *)self _storeAccount];
  v5 = [(AAUIAppleAccountViewController *)self _isSingleAccount];
  v6 = objc_alloc_init(NSMutableArray);
  v7 = self->_servicesGroupSpecifiers;
  self->_servicesGroupSpecifiers = v6;

  v8 = [PSSpecifier groupSpecifierWithID:@"GROUP_SERVICES"];
  servicesGroupSpecifier = self->_servicesGroupSpecifier;
  self->_servicesGroupSpecifier = v8;

  [(NSMutableArray *)self->_servicesGroupSpecifiers addObject:self->_servicesGroupSpecifier];
  v10 = [(AAUIAppleAccountViewController *)self _cloudSpecifierForAccount:v4];
  [(NSMutableArray *)self->_servicesGroupSpecifiers addObject:v10];
  v11 = [(AAUIAppleAccountViewController *)self _appleAccount];
  v12 = [NSNumber numberWithBool:[(AAUIAppleAccountViewController *)self _isEnabledForAccount:v11]];
  v13 = PSEnabledKey;
  [v10 setProperty:v12 forKey:PSEnabledKey];

  if (![(AAUIAppleAccountViewController *)self _isBeneficiaryAccount])
  {
    v14 = [(AAUIAppleAccountViewController *)self _appleAccount];
    v15 = [v14 aa_isAccountClass:AAAccountClassPrimary];

    if (v15)
    {
      v16 = [(AAUIAppleAccountViewController *)self _appleAccount];
      v17 = [v16 aa_isFamilyEligible];

      if (v17)
      {
        v18 = self->_servicesGroupSpecifiers;
        v19 = [(AAUIAppleAccountViewController *)self _specifiersForFamily];
        [(NSMutableArray *)v18 addObjectsFromArray:v19];
      }

      fmfSpecifierProvider = self->_fmfSpecifierProvider;
      if (!fmfSpecifierProvider)
      {
        v21 = [[FMFSpecifierProvider alloc] initWithAccountManager:self->_accountManager];
        v22 = self->_fmfSpecifierProvider;
        self->_fmfSpecifierProvider = v21;

        [(AAUISpecifierProvider *)self->_fmfSpecifierProvider setDelegate:self];
        fmfSpecifierProvider = self->_fmfSpecifierProvider;
      }

      v23 = self->_servicesGroupSpecifiers;
      v24 = [(AAUISpecifierProvider *)fmfSpecifierProvider specifiers];
      [(NSMutableArray *)v23 addObjectsFromArray:v24];
    }
  }

  v25 = v54;
  if ([(AAUIAppleAccountViewController *)self _shouldShowStoreSettings])
  {
    v26 = [(AAUIAppleAccountViewController *)self _specifiersForStore];
    v27 = [v26 firstObject];

    if (!v27)
    {
      v27 = [(AAUIAppleAccountViewController *)self _storeSpecifierForAccount:v54];
      if ((v5 & 1) == 0)
      {
        [v27 setProperty:objc_opt_class() forKey:PSCellClassKey];
        v28 = [UIApp preferredContentSizeCategory];
        IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v28);
        v30 = UITableViewAutomaticDimension;
        if (!IsAccessibilityCategory)
        {
          v30 = 58.0;
        }

        v31 = [NSNumber numberWithDouble:v30];
        [v27 setProperty:v31 forKey:PSTableCellHeightKey];

        v32 = [v54 aa_formattedUsername];
        [v27 setProperty:v32 forKey:PSTableCellSubtitleTextKey];
      }
    }

    if ((+[AADeviceInfo isMultiUserMode]& 1) == 0 && v27)
    {
      [(NSMutableArray *)self->_servicesGroupSpecifiers addObject:v27];
    }

    v33 = [(AAUIAppleAccountViewController *)self _storeAccount];
    v34 = [NSNumber numberWithBool:[(AAUIAppleAccountViewController *)self _isEnabledForAccount:v33]];
    [v27 setProperty:v34 forKey:v13];
  }

  v35 = +[AKAccountManager sharedInstance];
  v36 = [v4 aa_altDSID];
  v37 = [v35 authKitAccountWithAltDSID:v36];

  if (v37)
  {
    if (([v35 securityLevelForAccount:v37] & 0xFFFFFFFFFFFFFFFELL) == 4)
    {
      if (![v35 userUnderAgeForAccount:v37])
      {
        goto LABEL_25;
      }

      v38 = [v35 authorizationUsedForAccount:v37];
      v39 = _AAUILogSystem();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        sub_34320();
      }

      if (v38)
      {
LABEL_25:
        v40 = self->_servicesGroupSpecifiers;
        v41 = [(AAUIAppleAccountViewController *)self _siwaSpecifierForAccount:v4];
        [(NSMutableArray *)v40 addObject:v41];

        goto LABEL_29;
      }

      v42 = _AAUILogSystem();
      if (!os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_28;
      }
    }

    else
    {
      v42 = _AAUILogSystem();
      if (!os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
LABEL_28:

        goto LABEL_29;
      }
    }

    sub_342E4();
    goto LABEL_28;
  }

LABEL_29:
  v43 = [(AAUIAppleAccountViewController *)self _appleAccount];
  if (v43)
  {
    v44 = v43;
    v45 = [(AAUIAppleAccountViewController *)self _appleAccount];
    v46 = [v45 aa_isPrimaryEmailVerified];

    if ((v46 & 1) == 0)
    {
      v53 = v4;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v47 = self->_servicesGroupSpecifiers;
      v48 = [(NSMutableArray *)v47 countByEnumeratingWithState:&v55 objects:v59 count:16];
      if (v48)
      {
        v49 = v48;
        v50 = *v56;
        do
        {
          for (i = 0; i != v49; i = i + 1)
          {
            if (*v56 != v50)
            {
              objc_enumerationMutation(v47);
            }

            [*(*(&v55 + 1) + 8 * i) setProperty:&__kCFBooleanFalse forKey:{v13, v53}];
          }

          v49 = [(NSMutableArray *)v47 countByEnumeratingWithState:&v55 objects:v59 count:16];
        }

        while (v49);
      }

      v4 = v53;
      v25 = v54;
    }
  }

  servicesGroupSpecifiers = self->_servicesGroupSpecifiers;
LABEL_40:

  return servicesGroupSpecifiers;
}

- (id)_specifiersForDevicesGroup
{
  deviceSpecifierProvider = self->_deviceSpecifierProvider;
  if (!deviceSpecifierProvider)
  {
    v4 = [[AAUIDeviceSpecifierProvider alloc] initWithAccountManager:self->_accountManager];
    v5 = self->_deviceSpecifierProvider;
    self->_deviceSpecifierProvider = v4;

    [(AAUIDeviceSpecifierProvider *)self->_deviceSpecifierProvider setDelegate:self];
    deviceSpecifierProvider = self->_deviceSpecifierProvider;
  }

  v6 = [(AAUIDeviceSpecifierProvider *)deviceSpecifierProvider specifiers];
  v7 = +[AKNetworkObserver sharedNetworkObserver];
  v8 = [v7 isNetworkReachable];

  if ((v8 & 1) == 0)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      v13 = PSEnabledKey;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v16 + 1) + 8 * i) setProperty:&__kCFBooleanFalse forKey:{v13, v16}];
        }

        v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v11);
    }
  }

  return v6;
}

- (id)_valueForServiceSpecifier:(id)a3
{
  v3 = [a3 userInfo];
  v4 = [v3 objectForKeyedSubscript:@"account"];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [v6 localizedStringForKey:@"SET_UP" value:&stru_5A5F0 table:@"Localizable"];
  }

  return v5;
}

- (id)_valueForCloudSpecifier:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"account"];

  if (v5)
  {
    if (self->_totalStorageString)
    {
      v6 = [NSString stringWithFormat:@"%@", self->_totalStorageString];
    }

    else
    {
      [(AAUIAppleAccountViewController *)self _loadCloudStorageSummary];
      v6 = 0;
    }
  }

  else
  {
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v7 localizedStringForKey:@"SET_UP" value:&stru_5A5F0 table:@"Localizable"];
  }

  return v6;
}

- (void)_loadCloudStorageSummary
{
  v3 = [(AAUIAppleAccountViewController *)self _appleAccount];
  if (v3)
  {
    if (!self->_isStorageSummaryRequestInProgress)
    {
      self->_isStorageSummaryRequestInProgress = 1;
      *buf = 0;
      v8 = buf;
      v9 = 0x3032000000;
      v10 = sub_16804;
      v11 = sub_16814;
      v12 = [[ICSHomeDataController alloc] initWithAccount:v3];
      v5 = *(v8 + 5);
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_1681C;
      v6[3] = &unk_598D8;
      v6[4] = self;
      v6[5] = buf;
      [v5 fetchCloudStorage:0 completion:v6];
      _Block_object_dispose(buf, 8);

      goto LABEL_9;
    }

    v4 = _AAUILogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Storage summary request is already in progress. Bailing.", buf, 2u);
    }
  }

  else
  {
    v4 = _AAUILogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_34398();
    }
  }

LABEL_9:
}

- (id)_cloudSpecifierForAccount:(id)a3
{
  v4 = a3;
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"APPLEID_SERVICES_ICLOUD_CELL_TITLE" value:&stru_5A5F0 table:@"Localizable"];
  v7 = [PSSpecifier preferenceSpecifierNamed:v6 target:self set:0 get:"_valueForCloudSpecifier:" detail:0 cell:2 edit:0];

  [v7 setControllerLoadAction:"_cloudSpecifierWasTapped:"];
  [v7 setIdentifier:@"ICLOUD_SERVICE"];
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"APPLEID_SERVICES_ICLOUD_CELL_TITLE" value:&stru_5A5F0 table:@"Localizable"];
  [v7 setProperty:v9 forKey:PSTitleKey];

  [v7 setObject:&__kCFBooleanTrue forKeyedSubscript:PSLazyIconLoading];
  [v7 setObject:@"com.apple.application-icon.icloud" forKeyedSubscript:PSIconUTTypeIdentifierKey];
  if (v4)
  {
    v12 = @"account";
    v13 = v4;
    v10 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    [v7 setUserInfo:v10];
  }

  return v7;
}

- (id)_paymentSpecifierProvider
{
  paymentSpecifierProvider = self->_paymentSpecifierProvider;
  if (!paymentSpecifierProvider)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2050000000;
    v4 = qword_6A218;
    v14 = qword_6A218;
    if (!qword_6A218)
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_28E7C;
      v10[3] = &unk_59380;
      v10[4] = &v11;
      sub_28E7C(v10);
      v4 = v12[3];
    }

    v5 = v4;
    _Block_object_dispose(&v11, 8);
    v6 = [[v4 alloc] initWithAccountManager:self->_accountManager];
    [v6 setDelegate:self];
    v7 = [(AAUIAppleAccountViewController *)self _valueForPaymentSpecifier:self->_paymentSpecifier];
    if (v7)
    {
      [v6 setPaymentSummaryDescription:v7];
    }

    v8 = self->_paymentSpecifierProvider;
    self->_paymentSpecifierProvider = v6;

    paymentSpecifierProvider = self->_paymentSpecifierProvider;
  }

  return paymentSpecifierProvider;
}

- (id)_storeSpecifierForAccount:(id)a3
{
  v4 = a3;
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"APPLEID_SERVICES_STORE_CELL_TITLE" value:&stru_5A5F0 table:@"Localizable"];
  v7 = [PSSpecifier preferenceSpecifierNamed:v6 target:self set:0 get:"_valueForServiceSpecifier:" detail:0 cell:2 edit:0];

  [v7 setControllerLoadAction:"_storeSpecifierWasTapped:"];
  [v7 setIdentifier:@"STORE_SERVICE"];
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"APPLEID_SERVICES_STORE_CELL_TITLE" value:&stru_5A5F0 table:@"Localizable"];
  [v7 setProperty:v9 forKey:PSTitleKey];

  [v7 setProperty:&__kCFBooleanTrue forKey:PSBundleIsControllerKey];
  [v7 setProperty:@"MobileStoreSettings" forKey:PSBundlePathKey];
  v10 = PSBundlePathForPreferenceBundle();
  [v7 setProperty:v10 forKey:PSLazilyLoadedBundleKey];

  [v7 setProperty:&__kCFBooleanTrue forKey:PSLazyIconLoading];
  [v7 setProperty:@"com.apple.AppStore" forKey:PSLazyIconAppID];
  if (v4)
  {
    v13 = @"account";
    v14 = v4;
    v11 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    [v7 setUserInfo:v11];
  }

  return v7;
}

- (id)_siwaSpecifierForAccount:(id)a3
{
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"APPLEID_SERVICES_SIWA_CELL_TITLE" value:&stru_5A5F0 table:@"Localizable"];
  v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:0 get:0 detail:0 cell:2 edit:0];

  [v6 setControllerLoadAction:"_siwaSpecifierWasTapped:"];
  [v6 setIdentifier:@"SIWA_SERVICE"];
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"APPLEID_SERVICES_SIWA_CELL_TITLE" value:&stru_5A5F0 table:@"Localizable"];
  [v6 setObject:v8 forKeyedSubscript:PSTitleKey];

  [v6 setObject:&__kCFBooleanTrue forKeyedSubscript:PSLazyIconLoading];
  [v6 setObject:@"com.apple.application-icon.sign-in-with-apple" forKeyedSubscript:PSIconUTTypeIdentifierKey];

  return v6;
}

- (BOOL)_shouldShowDeleteAccountButton
{
  if ((+[AADeviceInfo isMultiUserMode]& 1) != 0)
  {
    return 0;
  }

  v4 = [(AAUIAppleAccountViewController *)self _appleAccount];
  v5 = [v4 aa_isUnremovableRemotelyManagedAccount];

  return v5 ^ 1;
}

- (id)_shouldRestrictSignoutMessage
{
  v3 = [(AAUIAppleAccountViewController *)self _appleAccount];
  v4 = [v3 aa_isAccountClass:AAAccountClassPrimary];

  if (v4)
  {
    if (+[AADeviceInfo aas_hasiCloudSignOutRestriction])
    {
      v5 = [NSBundle bundleForClass:objc_opt_class()];
      v6 = v5;
      v7 = @"SIGNOUT_RESTRICTED_FOOTER";
LABEL_4:
      v8 = [v5 localizedStringForKey:v7 value:&stru_5A5F0 table:@"Localizable"];

      goto LABEL_10;
    }

    if ([(AAUIAppleAccountViewController *)self _isRestoringFromiCloud])
    {
      v8 = [(AAUIAppleAccountViewController *)self _deviceSpecificLocalizedStringKey:@"DELETE_ACCOUNT_RESTORE_WARNING_REBRAND"];
      goto LABEL_10;
    }

    if ([(AAUIAppleAccountViewController *)self _activeFaceTimeCall])
    {
      v5 = [NSBundle bundleForClass:objc_opt_class()];
      v6 = v5;
      v7 = @"SIGNOUT_FACETIME_IN_PROGRESS_FOOTER";
      goto LABEL_4;
    }
  }

  v8 = 0;
LABEL_10:

  return v8;
}

- (id)_specifiersForSignoutGroup
{
  if (![(AAUIAppleAccountViewController *)self _shouldShowDeleteAccountButton])
  {
    v12 = 0;
    goto LABEL_38;
  }

  signoutGroupSpecifiers = self->_signoutGroupSpecifiers;
  if (!signoutGroupSpecifiers)
  {
    v4 = [(AAUIAppleAccountViewController *)self _appleAccount];
    v5 = [v4 aa_isRemotelyManaged];

    if (v5)
    {
      mdmSignoutSpecifierProvider = self->_mdmSignoutSpecifierProvider;
      if (!mdmSignoutSpecifierProvider)
      {
        v7 = [[DMCMDMSignoutSpecifierProvider alloc] initWithAccountManager:self->_accountManager];
        v8 = self->_mdmSignoutSpecifierProvider;
        self->_mdmSignoutSpecifierProvider = v7;

        [(AAUISpecifierProvider *)self->_mdmSignoutSpecifierProvider setDelegate:self];
        mdmSignoutSpecifierProvider = self->_mdmSignoutSpecifierProvider;
      }

      v9 = [(AAUISpecifierProvider *)mdmSignoutSpecifierProvider specifiers];
      v10 = [v9 mutableCopy];
      v11 = self->_signoutGroupSpecifiers;
      self->_signoutGroupSpecifiers = v10;

      goto LABEL_36;
    }

    v13 = objc_alloc_init(NSMutableArray);
    v14 = self->_signoutGroupSpecifiers;
    self->_signoutGroupSpecifiers = v13;

    v9 = [PSSpecifier groupSpecifierWithID:@"GROUP_SIGNOUT"];
    [(NSMutableArray *)self->_signoutGroupSpecifiers addObject:v9];
    v15 = [NSBundle bundleForClass:objc_opt_class()];
    v16 = [v15 localizedStringForKey:@"APPLEID_SIGNOUT_CELL_TITLE" value:&stru_5A5F0 table:@"Localizable"];
    v17 = [PSSpecifier deleteButtonSpecifierWithName:v16 target:self action:"_deleteButtonTapped:"];

    [v17 setProperty:@"AAUIDeleteButtonSpecifierID" forKey:PSIDKey];
    [(NSMutableArray *)self->_signoutGroupSpecifiers addObject:v17];
    v18 = [(AAUIAppleAccountViewController *)self _shouldRestrictSignoutMessage];
    v19 = [(AAUIAppleAccountViewController *)self _appleAccount];
    v20 = [v19 aa_isAccountClass:AAAccountClassPrimary];

    v21 = +[AKNetworkObserver sharedNetworkObserver];
    v22 = [v21 isNetworkReachable];

    if (v20)
    {
      v23 = [(AAUIDeviceLocatorService *)self->_deviceLocatorService isChangingState];
      v24 = [(AAUIAppleAccountViewController *)self _isRestoringFromiCloud];
      v25 = +[AADeviceInfo isMultiUserMode];
      v26 = [(AAUIAppleAccountViewController *)self _activeFaceTimeCall];
      if (!v22 || (v23 & 1) != 0 || (v24 & 1) != 0 || v18 || (v25 & 1) != 0 || v26)
      {
        v27 = _AAUILogSystem();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          sub_343D4();
        }

        v28 = _AAUILogSystem();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          sub_34410();
        }

        v29 = _AAUILogSystem();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          sub_34490();
        }

        v30 = _AAUILogSystem();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          sub_34518();
        }

        v31 = _AAUILogSystem();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          sub_345A0();
        }

        v32 = _AAUILogSystem();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          sub_34628();
        }

        v33 = _AAUILogSystem();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          sub_346B0();
        }

        goto LABEL_31;
      }
    }

    else if ((v22 & 1) == 0)
    {
LABEL_31:
      v34 = _AAUILogSystem();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        sub_34738();
      }

      [v17 setProperty:&__kCFBooleanFalse forKey:PSEnabledKey];
      if (v18)
      {
        [v9 setProperty:v18 forKey:PSFooterTextGroupKey];
      }
    }

LABEL_36:
    signoutGroupSpecifiers = self->_signoutGroupSpecifiers;
  }

  v12 = signoutGroupSpecifiers;
LABEL_38:

  return v12;
}

- (void)_reloadSignoutGroupSpecifiersForName:(id)a3
{
  v4 = a3;
  v5 = _AAUILogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Reloading sign out specifiers for %@", &v7, 0xCu);
  }

  signoutGroupSpecifiers = self->_signoutGroupSpecifiers;
  self->_signoutGroupSpecifiers = 0;

  [(AAUIAppleAccountViewController *)self reloadSpecifiers];
}

- (BOOL)_activeFaceTimeCall
{
  v2 = +[TUCallCenter sharedInstance];
  v3 = [v2 anyCallPassesTest:&stru_59918];

  return v3;
}

- (void)_beginObservingCallStatusChanges
{
  objc_initWeak(&location, self);
  v3 = +[NSNotificationCenter defaultCenter];
  v4 = +[NSOperationQueue mainQueue];
  v5 = TUCallCenterCallStatusChangedNotification;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_17A24;
  v15[3] = &unk_59940;
  objc_copyWeak(&v16, &location);
  v6 = [v3 addObserverForName:v5 object:0 queue:v4 usingBlock:v15];
  callStatusNotificationObserver = self->_callStatusNotificationObserver;
  self->_callStatusNotificationObserver = v6;

  v8 = +[NSNotificationCenter defaultCenter];
  v9 = +[NSOperationQueue mainQueue];
  v10 = TUCallCenterVideoCallStatusChangedNotification;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_17A9C;
  v13[3] = &unk_59940;
  objc_copyWeak(&v14, &location);
  v11 = [v8 addObserverForName:v10 object:0 queue:v9 usingBlock:v13];
  videoCallStatusNotificationObserver = self->_videoCallStatusNotificationObserver;
  self->_videoCallStatusNotificationObserver = v11;

  objc_destroyWeak(&v14);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)_stopObservingCallStatusChanges
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self->_callStatusNotificationObserver name:TUCallCenterCallStatusChangedNotification object:0];
  [v3 removeObserver:self->_videoCallStatusNotificationObserver name:TUCallCenterVideoCallStatusChangedNotification object:0];
}

- (void)_contactSpecifierWasTapped:(id)a3
{
  if (a3)
  {
    [(AAUIAppleAccountViewController *)self _startSpinnerInSpecifier:?];
  }

  v4 = [AAPersonalInfoUIRequest alloc];
  v5 = [(AAUIAppleAccountViewController *)self _grandSlamAccount];
  v6 = [(AAUIAppleAccountViewController *)self _accountStore];
  v7 = [v4 initWithGrandSlamAccount:v5 accountStore:v6];

  v8 = [v7 urlRequest];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_17CC4;
  v11[3] = &unk_59968;
  v11[4] = self;
  v9 = [(AAUIAppleAccountViewController *)self _loadRemoteRequest:v8 withIdentifier:@"_AAUIRemotePageIdentifierPersonalInfo" preparation:v11 completion:0];
  activeRemoteUIController = self->_activeRemoteUIController;
  self->_activeRemoteUIController = v9;
}

- (void)_securitySpecifierWasTapped:(id)a3
{
  [(AAUIAppleAccountViewController *)self _startSpinnerInSpecifier:a3];
  v4 = dispatch_get_global_queue(33, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_17E14;
  block[3] = &unk_59680;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)remoteUIController:(id)a3 willPresentModalNavigationController:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v6;
    v9 = [v8 identifier];
    v10 = [v9 isEqualToString:@"_AAUIRemotePageIdentifierSecurity"];

    if (v10)
    {
      v11 = _AAUILogSystem();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412290;
        v13 = v8;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Presenting modal for security controller: %@", &v12, 0xCu);
      }

      [(AAUIServerUIHookHandler *)self->_serverHookHandler setPresentingControllerOverride:v7];
    }
  }
}

- (void)remoteUIController:(id)a3 didDismissModalNavigationWithObjectModels:(id)a4
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [v6 identifier];
    v8 = [v7 isEqualToString:@"_AAUIRemotePageIdentifierSecurity"];

    if (v8)
    {
      v9 = _AAUILogSystem();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v21 = v6;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Dismissing modal for security controller: %@", buf, 0xCu);
      }

      [(AAUIServerUIHookHandler *)self->_serverHookHandler setPresentingControllerOverride:0];
    }

    if (self->_didCompleteHSA2)
    {
      self->_didCompleteHSA2 = 0;
      v10 = [AAUICDPHelper helperWithPresenter:self];
      v11 = [v10 cdpStateControllerForPrimaryAccount];
      v12 = _AAUILogSystem();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        sub_347C0(self);
      }

      v13 = [v11 context];
      [v13 setNewPassword:self->_newPassword oldPassword:self->_oldPassword];

      v14 = [v11 context];
      [v14 setType:13];

      currentObjectModel = self->_currentObjectModel;
      v16 = [NSBundle bundleForClass:objc_opt_class()];
      v17 = [v16 localizedStringForKey:@"STINGRAY_TITLE_VERIFYING" value:&stru_5A5F0 table:@"Localizable"];
      [(RUIObjectModel *)currentObjectModel startNavigationBarSpinnerWithTitle:v17];

      v18 = _AAUILogSystem();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        sub_3487C(v11);
      }

      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_18514;
      v19[3] = &unk_599B8;
      v19[4] = self;
      [v11 repairCloudDataProtectionStateWithCompletion:v19];
    }
  }
}

- (id)_loadRemoteRequest:(id)a3 withIdentifier:(id)a4 preparation:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = a4;
  v14 = [(AAUIAppleAccountViewController *)self _activeAccount];
  v15 = [[AAUIRemoteUIController alloc] initWithIdentifier:v13 account:v14];

  [v15 setDelegate:self];
  v16 = [(AAUIAppleAccountViewController *)self navigationController];
  [v15 setNavigationController:v16];

  if (v11)
  {
    v11[2](v11, v15);
  }

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_187AC;
  v23[3] = &unk_59A30;
  v26 = v12;
  v17 = v15;
  v24 = v17;
  v25 = v10;
  v18 = v10;
  v19 = v12;
  [(AAUIAppleAccountViewController *)self _getServerUILoadDelegateWithCompletion:v23];
  v20 = v25;
  v21 = v17;

  return v17;
}

- (void)_loadRemoteRequest:(id)a3 withIdentifier:(id)a4 specifier:(id)a5
{
  v8 = a4;
  v9 = a3;
  [(AAUIAppleAccountViewController *)self _startSpinnerInSpecifier:a5];
  v10 = [(AAUIAppleAccountViewController *)self _loadRemoteRequest:v9 withIdentifier:v8 preparation:0 completion:0];

  activeRemoteUIController = self->_activeRemoteUIController;
  self->_activeRemoteUIController = v10;
}

- (void)_paymentSpecifierWasTapped:(id)a3
{
  v4 = a3;
  v5 = _AAUILogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "html payment and shipping page (on by default)", buf, 2u);
  }

  v6 = [NSURL URLWithString:SKAccountPagePaymentsShippingURLString];
  v7 = [[SKAccountPageViewController alloc] initWithAccountURL:v6];
  v8 = objc_opt_respondsToSelector();
  p_super = _AAUILogSystem();
  v10 = os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      cachedResourceDictionary = self->_cachedResourceDictionary;
      *buf = 138412290;
      v17 = cachedResourceDictionary;
      _os_log_impl(&dword_0, p_super, OS_LOG_TYPE_DEFAULT, "Passing cached resource dictionary %@", buf, 0xCu);
    }

    [v7 setClientData:self->_cachedResourceDictionary];
    p_super = &self->_cachedResourceDictionary->super;
    self->_cachedResourceDictionary = 0;
  }

  else if (v10)
  {
    *buf = 0;
    _os_log_impl(&dword_0, p_super, OS_LOG_TYPE_DEFAULT, "SKAccountPageViewController does not respond to setClientData:", buf, 2u);
  }

  v12 = [(AAUIAppleAccountViewController *)self _grandSlamAccount];
  [v7 setAccount:v12];

  [(AAUIAppleAccountViewController *)self _startSpinnerInSpecifier:v4];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_18D04;
  v14[3] = &unk_594A0;
  v14[4] = self;
  v15 = v7;
  v13 = v7;
  [v13 loadWithCompletionBlock:v14];
}

- (void)_cloudSpecifierWasTapped:(id)a3
{
  v9 = a3;
  [(AAUIAppleAccountViewController *)self _startSpinnerInSpecifier:?];
  v4 = [(AAUIAppleAccountViewController *)self _appleAccount];

  if (!v4)
  {
    [(AAUIAppleAccountViewController *)self _attemptSignInForServiceType:AIDAServiceTypeCloud];
    goto LABEL_9;
  }

  [v9 setObject:self->_accountManager forKeyedSubscript:@"icloudAccountManager"];
  [v9 setControllerLoadAction:0];
  v5 = [(AAUIAppleAccountViewController *)self _appleAccount];
  if ([v5 aa_isAccountClass:AAAccountClassPrimary])
  {
  }

  else
  {
    v6 = [(AAUIAppleAccountViewController *)self _appleAccount];
    v7 = [v6 aa_isManagedAppleID];

    if (!v7)
    {
      v8 = +[ICSViewBuilder iCloudHomeViewControllerClassLegacy];
      goto LABEL_8;
    }
  }

  v8 = objc_opt_class();
LABEL_8:
  [v9 setDetailControllerClass:v8];
LABEL_9:
  [(AAUIAppleAccountViewController *)self _stopSpinnerInActiveSpecifier];
}

- (void)_attemptSignInForServiceType:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(AAUISignInController);
  [v5 setDelegate:self];
  v13 = v4;
  v6 = [NSArray arrayWithObjects:&v13 count:1];
  [v5 setServiceTypes:v6];

  [v5 _setShouldForceOperation:1];
  if (PSIsiPad())
  {
    [v5 setModalPresentationStyle:2];
    [v5 setModalTransitionStyle:0];
  }

  v7 = _AAUILogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = v4;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Preflighting sign in controller for service: %{public}@", buf, 0xCu);
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_19008;
  v9[3] = &unk_59720;
  v9[4] = self;
  v10 = v5;
  v8 = v5;
  [v8 prepareInViewController:self completion:v9];
}

- (void)_storeSpecifierWasTapped:(id)a3
{
  v18 = a3;
  [(AAUIAppleAccountViewController *)self _startSpinnerInSpecifier:v18];
  v4 = [(AAUIAppleAccountViewController *)self _storeAccount];

  if (!v4)
  {
    [(AAUIAppleAccountViewController *)self _attemptSignInForServiceType:AIDAServiceTypeStore];
    goto LABEL_17;
  }

  v5 = PSLazilyLoadedBundleKey;
  v6 = [v18 propertyForKey:PSLazilyLoadedBundleKey];
  if (v6)
  {
    v7 = [NSBundle bundleWithPath:v6];
    v8 = [v18 propertyForKey:PSBundleOverridePrincipalClassKey];
    v9 = [v8 BOOLValue];

    if (v9)
    {
      v10 = [v18 propertyForKey:PSDetailControllerClassKey];
      if (v10)
      {
        v11 = v10;
        v12 = NSClassFromString(v10);
        if (v12)
        {
          v13 = v12;

LABEL_11:
          v14 = v18;
          *&v18[OBJC_IVAR___PSSpecifier_detailControllerClass] = v13;
          if (!*&v18[OBJC_IVAR___PSSpecifier_editPaneClass])
          {
            v15 = [v18 propertyForKey:PSEditPaneClassKey];
            v16 = [v7 classNamed:v15];
            *&v18[OBJC_IVAR___PSSpecifier_editPaneClass] = v16;

            v14 = v18;
          }

          [v14 setControllerLoadAction:0];
          [v18 removePropertyForKey:v5];
          v17 = *&v18[OBJC_IVAR___PSSpecifier_detailControllerClass];
          if (objc_opt_respondsToSelector())
          {
            [*&v18[OBJC_IVAR___PSSpecifier_detailControllerClass] validateSpecifier:?];
          }

          [(AAUIAppleAccountViewController *)self _stopSpinnerInActiveSpecifier];

          goto LABEL_16;
        }

        [v7 load];
        v13 = NSClassFromString(v11);

        if (v13)
        {
          goto LABEL_11;
        }
      }
    }

    v13 = [v7 principalClass];
    goto LABEL_11;
  }

  [v18 setControllerLoadAction:0];
LABEL_16:

LABEL_17:
}

- (void)_siwaSpecifierWasTapped:(id)a3
{
  v4 = a3;
  v5 = [AASignInWithAppleManagementUIRequest alloc];
  v6 = [(AAUIAppleAccountViewController *)self _grandSlamAccount];
  v7 = [(AAUIAppleAccountViewController *)self accountStore];
  v9 = [v5 initWithGrandSlamAccount:v6 accountStore:v7];

  v8 = [v9 urlRequest];
  [(AAUIAppleAccountViewController *)self _loadRemoteRequest:v8 withIdentifier:@"_AAUIRemotePageIdentifierSIWAManagement" specifier:v4];

  [(AAUIRemoteUIController *)self->_activeRemoteUIController registerSIWASharingTipView];
}

- (void)_deleteButtonTapped:(id)a3
{
  v37 = a3;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v39 = _os_activity_create(&dword_0, "appleaccount/sign-out", &_os_activity_current, OS_ACTIVITY_FLAG_DETACHED);
  os_activity_scope_enter(v39, &state);
  objc_initWeak(&location, self);
  [(AAUIAppleAccountViewController *)self _stopObservingAccountStoreChanges];
  v63 = 0;
  v64 = &v63;
  v65 = 0x3032000000;
  v66 = sub_16804;
  v67 = sub_16814;
  v68 = [[AAUISignOutFlowControllerDelegate alloc] initWithPresentingViewController:self];
  [v64[5] setAccountManager:self->_accountManager];
  [v64[5] setClientID:@"spyglassSignOut"];
  v61[0] = _NSConcreteStackBlock;
  v61[1] = 3221225472;
  v61[2] = sub_19FE8;
  v61[3] = &unk_59A80;
  objc_copyWeak(&v62, &location);
  v61[4] = &v63;
  v41 = objc_retainBlock(v61);
  v4 = [(AAUIAppleAccountViewController *)self _appleAccount];
  v5 = [(AAUIAppleAccountViewController *)self _storeAccount];
  v6 = +[AKAccountManager sharedInstance];
  v7 = [v4 aa_altDSID];
  v42 = [v6 authKitAccountWithAltDSID:v7];

  v8 = objc_alloc_init(AIDAMutableServiceContext);
  [v8 setViewController:self];
  v9 = AIDAServiceTypeCloud;
  v10 = v64[5];
  v72 = AIDAServiceTypeCloud;
  v73 = v10;
  v11 = [NSDictionary dictionaryWithObjects:&v73 forKeys:&v72 count:1];
  [v8 setSignOutContexts:v11];

  if (v4 && v5)
  {
    objc_initWeak(from, self);
    v12 = _AAUISignOutLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "User signed in to iCloud & Store, prompting for clarification...", buf, 2u);
    }

    v53[0] = _NSConcreteStackBlock;
    v53[1] = 3221225472;
    v53[2] = sub_1A2A0;
    v53[3] = &unk_59B70;
    objc_copyWeak(&v59, from);
    v54 = v42;
    v55 = v8;
    v58 = v41;
    v56 = v5;
    v57 = v4;
    [(AAUIAppleAccountViewController *)self _promptForAccountSignOutAppleAccount:v57 storeAccount:v56 completion:v53, v37, v39];

    objc_destroyWeak(&v59);
    objc_destroyWeak(from);
  }

  else if (v4)
  {
    v13 = [(AAUIAppleAccountViewController *)self _appleAccount:v37];
    v14 = [v13 aa_isAccountClass:AAAccountClassPrimary];

    if (v14)
    {
      v15 = _AAUISignOutLogSystem();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(from[0]) = 138412290;
        *(from + 4) = v42;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "Signing out user from iCloud service for account %@", from, 0xCu);
      }

      [(AAUIAppleAccountViewController *)self _setSignOutInProgressForAppleAccount:v42];
      objc_initWeak(from, self);
      serviceOwnersManager = self->_serviceOwnersManager;
      v17 = [v8 copy];
      v45[0] = _NSConcreteStackBlock;
      v45[1] = 3221225472;
      v45[2] = sub_1AE58;
      v45[3] = &unk_59BC0;
      objc_copyWeak(&v50, from);
      v46 = v42;
      v49 = v41;
      v47 = v4;
      v48 = v8;
      [(AIDAServiceOwnerProtocol *)serviceOwnersManager signOutService:v9 withContext:v17 completion:v45];

      objc_destroyWeak(&v50);
      objc_destroyWeak(from);
    }

    else
    {
      v22 = [NSBundle bundleForClass:objc_opt_class()];
      v23 = [v22 localizedStringForKey:@"DELETE_ACCOUNT" value:&stru_5A5F0 table:@"Localizable"];
      v24 = [NSBundle bundleForClass:objc_opt_class()];
      v25 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"DELETE_ACCOUNT_WARNING_FORMAT"];
      v26 = [v24 localizedStringForKey:v25 value:&stru_5A5F0 table:@"Localizable"];
      v27 = [UIAlertController alertWithTitle:v23 message:v26];

      v28 = [NSBundle bundleForClass:objc_opt_class()];
      v29 = [v28 localizedStringForKey:@"DELETE_ACCOUNT" value:&stru_5A5F0 table:@"Localizable"];
      v51[0] = _NSConcreteStackBlock;
      v51[1] = 3221225472;
      v51[2] = sub_1AE04;
      v51[3] = &unk_59B98;
      v51[4] = self;
      v52 = v4;
      v30 = [UIAlertAction actionWithTitle:v29 style:2 handler:v51];

      v31 = [NSBundle bundleForClass:objc_opt_class()];
      v32 = [v31 localizedStringForKey:@"CANCEL" value:&stru_5A5F0 table:@"Localizable"];
      v33 = [UIAlertAction actionWithTitle:v32 style:1 handler:0];

      [v27 addAction:v30];
      [v27 addAction:v33];
      v34 = [(AAUIAppleAccountViewController *)self navigationController];
      [v34 presentViewController:v27 animated:1 completion:0];
    }
  }

  else if (v5)
  {
    v18 = _AAUILogSystem();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(from[0]) = 138412290;
      *(from + 4) = 0;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "Signing out user from iTunes service for account %@", from, 0xCu);
    }

    v19 = self->_serviceOwnersManager;
    v20 = [v8 copy];
    v21 = AIDAServiceTypeStore;
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_1B134;
    v43[3] = &unk_59B48;
    v44 = v41;
    [(AIDAServiceOwnerProtocol *)v19 signOutService:v21 withContext:v20 completion:v43];
  }

  else
  {
    v35 = _AAUISignOutLogSystem();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(from[0]) = 0;
      _os_log_impl(&dword_0, v35, OS_LOG_TYPE_DEFAULT, "User attempted to sign out but isn't signed in!", from, 2u);
    }

    v36 = [NSError aa_errorWithCode:-1, v37, v39];
    (v41[2])(v41, 0, v36);
  }

  objc_destroyWeak(&v62);
  _Block_object_dispose(&v63, 8);

  objc_destroyWeak(&location);
  os_activity_scope_leave(&state);
}

- (void)_setSignOutInProgressForAppleAccount:(id)a3
{
  v4 = a3;
  v5 = _AAUISignOutLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_34AA4();
  }

  v6 = +[AKAccountManager sharedInstance];
  [v6 setSignOutInProgress:&__kCFBooleanTrue forAccount:v4];

  v7 = [(AAUIAppleAccountViewController *)self _accountStore];
  [v7 saveVerifiedAccount:v4 withCompletionHandler:&stru_59C00];
}

- (void)_setSignOutNotInProgressForAppleAccount:(id)a3
{
  v4 = a3;
  v5 = _AAUISignOutLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_34B8C();
  }

  v6 = +[AKAccountManager sharedInstance];
  [v6 setSignOutInProgress:&__kCFBooleanFalse forAccount:v4];

  v7 = [(AAUIAppleAccountViewController *)self _accountStore];
  [v7 saveVerifiedAccount:v4 withCompletionHandler:&stru_59C20];
}

- (void)_promptForAccountSignOutAppleAccount:(id)a3 storeAccount:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = AIDAServiceTypeCloud;
  v12 = [(AIDAServiceOwnerProtocol *)self->_serviceOwnersManager altDSIDForAccount:v8 service:AIDAServiceTypeCloud];
  v13 = AIDAServiceTypeStore;
  v14 = [(AIDAServiceOwnerProtocol *)self->_serviceOwnersManager altDSIDForAccount:v9 service:AIDAServiceTypeStore];
  if ([v12 isEqualToString:v14])
  {
    v15 = _AAUISignOutLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "Apple account and store account have matching altDSIDs!", buf, 2u);
    }

    v10[2](v10, 1, 1);
  }

  else
  {
    v16 = [(AIDAServiceOwnerProtocol *)self->_serviceOwnersManager DSIDForAccount:v8 service:v11];
    v17 = [(AIDAServiceOwnerProtocol *)self->_serviceOwnersManager DSIDForAccount:v9 service:v13];
    if ([v16 isEqualToString:v17])
    {
      v18 = _AAUISignOutLogSystem();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "Apple account and store account have matching DSIDs!", buf, 2u);
      }

      v10[2](v10, 1, 1);
    }

    else
    {
      PSIsiPad();
      [NSBundle bundleForClass:objc_opt_class()];
      v19 = v38 = v16;
      [v19 localizedStringForKey:@"MULTIPLE_SERVICES_MESSAGE" value:&stru_5A5F0 table:@"Localizable"];
      v20 = v37 = v17;
      v39 = [UIAlertController alertWithTitle:v20 message:0];

      v21 = [NSBundle bundleForClass:objc_opt_class()];
      v22 = [v21 localizedStringForKey:@"MULTIPLE_SERVICES_SIGN_OUT_BOTH" value:&stru_5A5F0 table:@"Localizable"];
      v46[0] = _NSConcreteStackBlock;
      v46[1] = 3221225472;
      v46[2] = sub_1BAA4;
      v46[3] = &unk_59C48;
      v23 = v10;
      v47 = v23;
      v24 = [UIAlertAction actionWithTitle:v22 style:2 handler:v46];
      [v39 addAction:v24];

      v25 = [NSBundle bundleForClass:objc_opt_class()];
      v26 = [v25 localizedStringForKey:@"MULTIPLE_SERVICES_SIGN_OUT_CLOUD" value:&stru_5A5F0 table:@"Localizable"];
      v44[0] = _NSConcreteStackBlock;
      v44[1] = 3221225472;
      v44[2] = sub_1BB28;
      v44[3] = &unk_59C48;
      v27 = v23;
      v45 = v27;
      v28 = [UIAlertAction actionWithTitle:v26 style:2 handler:v44];
      [v39 addAction:v28];

      v29 = [NSBundle bundleForClass:objc_opt_class()];
      v30 = [v29 localizedStringForKey:@"MULTIPLE_SERVICES_SIGN_OUT_STORE" value:&stru_5A5F0 table:@"Localizable"];
      v42[0] = _NSConcreteStackBlock;
      v42[1] = 3221225472;
      v42[2] = sub_1BBAC;
      v42[3] = &unk_59C48;
      v31 = v27;
      v43 = v31;
      v32 = [UIAlertAction actionWithTitle:v30 style:2 handler:v42];
      [v39 addAction:v32];

      v33 = [NSBundle bundleForClass:objc_opt_class()];
      v34 = [v33 localizedStringForKey:@"MULTIPLE_SERVICES_CANCEL" value:&stru_5A5F0 table:@"Localizable"];
      v40[0] = _NSConcreteStackBlock;
      v40[1] = 3221225472;
      v40[2] = sub_1BC30;
      v40[3] = &unk_59C48;
      v35 = v31;
      v16 = v38;
      v41 = v35;
      v36 = [UIAlertAction actionWithTitle:v34 style:1 handler:v40];
      [v39 addAction:v36];

      v17 = v37;
      [(AAUIAppleAccountViewController *)self presentViewController:v39 animated:1 completion:0];
    }
  }
}

- (void)_subscriptionsSpecifierWasTapped:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&dword_0, "appleaccountui/load-subscription-page", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v6 = _AAUILogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Subscription Specifier tapped", buf, 2u);
  }

  v7 = [NSURL URLWithString:SKAccountPageManageSubscriptionsURLString];
  v8 = [[SKAccountPageViewController alloc] initWithAccountURL:v7];
  [(AAUIAppleAccountViewController *)self _startSpinnerInSpecifier:v4];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1BE44;
  v10[3] = &unk_594A0;
  v10[4] = self;
  v9 = v8;
  v11 = v9;
  [v9 loadWithCompletionBlock:v10];

  os_activity_scope_leave(&state);
}

- (void)signInController:(id)a3 didCompleteWithSuccess:(BOOL)a4 error:(id)a5
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1BF34;
  v5[3] = &unk_59680;
  v5[4] = self;
  [(AAUIAppleAccountViewController *)self dismissViewControllerAnimated:1 completion:v5, a5];
}

- (void)signInControllerDidCancel:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1BFAC;
  v3[3] = &unk_59680;
  v3[4] = self;
  [(AAUIAppleAccountViewController *)self dismissViewControllerAnimated:1 completion:v3];
}

- (void)_startSpinnerInSpecifier:(id)a3
{
  v5 = a3;
  if (v5 && !self->_activelyLoadingSpecifier && [v5 aaui_startSpinner])
  {
    objc_storeStrong(&self->_activelyLoadingSpecifier, a3);
  }

  _objc_release_x1();
}

- (void)_stopSpinnerInActiveSpecifier
{
  activelyLoadingSpecifier = self->_activelyLoadingSpecifier;
  if (activelyLoadingSpecifier)
  {
    [(PSSpecifier *)activelyLoadingSpecifier aaui_stopSpinner];
    v4 = self->_activelyLoadingSpecifier;
    self->_activelyLoadingSpecifier = 0;
  }
}

- (void)endUpdates
{
  v3.receiver = self;
  v3.super_class = AAUIAppleAccountViewController;
  [(AAUIAppleAccountViewController *)&v3 endUpdates];
  [(AAUIAppleAccountViewController *)self handlePendingURL];
}

- (id)_valueForPaymentSpecifier:(id)a3
{
  paymentSpecifierValue = self->_paymentSpecifierValue;
  if (!paymentSpecifierValue)
  {
    [(AAUIAppleAccountViewController *)self _loadPaymentMethodSummary];
    paymentSpecifierValue = self->_paymentSpecifierValue;
  }

  return paymentSpecifierValue;
}

- (void)_loadPaymentMethodSummary
{
  if (!self->_didAttemptToFetchPaymentMethodSummary)
  {
    self->_didAttemptToFetchPaymentMethodSummary = 1;
    v3 = dispatch_get_global_queue(25, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1C1EC;
    block[3] = &unk_59680;
    block[4] = self;
    dispatch_async(v3, block);
  }
}

- (void)_handlePaymentMethodSummaryResponse:(id)a3
{
  v4 = a3;
  v5 = [v4 error];

  if (v5)
  {
    v6 = _AAUILogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v4 error];
      v12 = 138412290;
      v13 = v7;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Failed to fetch payment method summary with error: %@", &v12, 0xCu);
    }
  }

  else if ([v4 numberOfCards])
  {
    v8 = [v4 description];
    paymentSpecifierValue = self->_paymentSpecifierValue;
    self->_paymentSpecifierValue = v8;

    v10 = [(AAUIAppleAccountViewController *)self _paymentSpecifierProvider];
    v11 = v10;
    if (v10)
    {
      [v10 setPaymentSummaryDescription:self->_paymentSpecifierValue];
    }

    else
    {
      [(AAUIAppleAccountViewController *)self reloadSpecifier:self->_paymentSpecifier];
    }
  }
}

- (id)_specifiersForFamily
{
  v2 = [(AAUIAppleAccountViewController *)self _familySpecifierProvider];
  v3 = [v2 specifiers];

  return v3;
}

- (id)_familySpecifierProvider
{
  familySpecifierProvider = self->_familySpecifierProvider;
  if (!familySpecifierProvider)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v4 = qword_6A228;
    v13 = qword_6A228;
    if (!qword_6A228)
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_28FF0;
      v9[3] = &unk_59380;
      v9[4] = &v10;
      sub_28FF0(v9);
      v4 = v11[3];
    }

    v5 = v4;
    _Block_object_dispose(&v10, 8);
    v6 = [[v4 alloc] initWithAccountManager:self->_accountManager presenter:self];
    v7 = self->_familySpecifierProvider;
    self->_familySpecifierProvider = v6;

    [(AAUISpecifierProvider *)self->_familySpecifierProvider setDelegate:self];
    familySpecifierProvider = self->_familySpecifierProvider;
  }

  return familySpecifierProvider;
}

- (id)_specifiersForStore
{
  v3 = [(AAUIAppleAccountViewController *)self _storeSpecifier];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(AAUIAppleAccountViewController *)self _storeSpecifier];
    v5 = [v4 specifiers];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_storeSpecifierProvider
{
  v2 = [(AAUIAppleAccountViewController *)self _storeSpecifier];
  if ([v2 conformsToProtocol:&OBJC_PROTOCOL___AAUISpecifierProvider] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_storeSpecifier
{
  if (!self->_storeSpecifier)
  {
    v3 = NSClassFromString(@"SKAccountPageSpecifierProvider");
    v4 = [(AAUIAppleAccountViewController *)self _storeAccount];

    if (v4)
    {
      if (v3)
      {
        v5 = [[v3 alloc] initWithAccountManager:self->_accountManager];
        storeSpecifier = self->_storeSpecifier;
        self->_storeSpecifier = v5;

        [(AAUISpecifierProvider *)self->_storeSpecifier setDelegate:self];
      }
    }
  }

  v7 = self->_storeSpecifier;

  return v7;
}

- (void)custodianSetupFlowControllerRecoveryContactInviteSent
{
  v2 = _AALogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_34C74();
  }
}

- (BOOL)remoteUIController:(id)a3 shouldLoadRequest:(id)a4 redirectResponse:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(AKAppleIDServerResourceLoadDelegate *)self->_serverUILoadDelegate processResponse:v10];
  v11 = [NSSet setWithObjects:@"fmip1", @"prefs", @"itms", 0];
  v12 = [v9 URL];
  v13 = [v12 scheme];
  v14 = [v11 containsObject:v13];

  if (v14)
  {
    v15 = +[LSApplicationWorkspace defaultWorkspace];
    v16 = [v9 URL];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1CC6C;
    v27[3] = &unk_59CC0;
    v28 = v9;
    [v15 openURL:v16 configuration:0 completionHandler:v27];

LABEL_5:
    v20 = 0;
    goto LABEL_17;
  }

  v17 = [v9 URL];
  v18 = [v17 absoluteString];
  v19 = [v18 isEqualToString:@"code:generate"];

  if (v19)
  {
    [(AAUIAppleAccountViewController *)self _generateLoginCode];
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(AAUIAppleAccountViewController *)self _attemptUpdateAuthControllerWithActionableResponse:v10];
  }

  [(AAUIAppleAccountViewController *)self _addHeadersToRequest:v9];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = [v8 redirectResponse];
    v22 = v21;
    if (v21)
    {
      v23 = [v21 allHeaderFields];
      v24 = [v23 objectForKey:@"X-Apple-2SV-Authenticate"];

      if (v24)
      {
        objc_storeStrong(&self->_secondaryToken, v24);
      }
    }
  }

  secondaryToken = self->_secondaryToken;
  if (secondaryToken)
  {
    [v9 setValue:secondaryToken forHTTPHeaderField:@"X-Apple-2SV-Authenticate"];
  }

  v20 = 1;
LABEL_17:

  return v20;
}

- (void)_generateLoginCode
{
  v3 = objc_alloc_init(AAUITwoFactorCodeHook);
  [v3 generateLoginCodeWithPresenter:self completion:0];
}

- (id)remoteUIController:(id)a3 createPageWithName:(id)a4 attributes:(id)a5
{
  v5 = objc_alloc_init(AAUIRemotePage);
  [v5 setHidesBottomBarWhenPushed:1];

  return v5;
}

- (void)remoteUIController:(id)a3 didRefreshObjectModel:(id)a4
{
  v7 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(AAUIAppleAccountViewController *)self _handleObjectModelChangeForController:v7 objectModel:v6 isModal:0];
  }
}

- (void)_updateLocalAccountInformationFromClientInfo:(id)a3
{
  v4 = a3;
  v5 = [v4 allKeys];
  v6 = [NSSet setWithArray:v5];

  v7 = [NSSet setWithObjects:@"firstName", @"middleName", @"lastName", @"accountName", @"primaryEmailAddress", 0];
  if ([v6 intersectsSet:v7])
  {
    v17 = self;
    v8 = [(AAUIAppleAccountViewController *)self _appleAccount];
    v9 = [v8 copy];

    [v9 reload];
    v10 = sub_1DAEC(v4, @"firstName");
    if ([v10 length])
    {
      [v9 aa_setFirstName:v10];
    }

    v11 = sub_1DAEC(v4, @"middleName");
    if ([v11 length])
    {
      [v9 aa_setMiddleName:v11];
    }

    v12 = sub_1DAEC(v4, @"lastName");
    if ([v12 length])
    {
      [v9 aa_setLastName:v12];
    }

    v13 = sub_1DAEC(v4, @"accountName");
    if ([v13 length])
    {
      [v9 _aa_setAppleID:v13];
    }

    v14 = sub_1DAEC(v4, @"primaryEmailAddress");
    if ([v14 length])
    {
      [v9 _aa_setPrimaryEmail:v14];
    }

    if ([v9 isDirty])
    {
      v15 = _AAUILogSystem();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "Server returned updated contact information, updating account...", buf, 2u);
      }

      v16 = [(AAUIAppleAccountViewController *)v17 _accountStore];
      [v16 saveVerifiedAccount:v9 withCompletionHandler:&stru_59D08];
    }
  }
}

- (id)_RUITableViewSectionForDevice:(id)a3 inPage:(id)a4 delegate:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [RUITableViewSection alloc];
  v12 = objc_alloc_init(NSDictionary);
  v13 = [v10 tableViewOM];

  v14 = [v11 initWithAttributes:v12 parent:v13];
  if ([v8 showFMIPRow])
  {
    v15 = [(AAUIAppleAccountViewController *)self _appleAccount];
    v16 = [AAUIRUITableViewCellFactory ruiTableViewForRowType:0 device:v8 section:v14 delegate:v9 appleAccount:v15];

    [v14 addRow:v16];
  }

  if ([v8 showBackupRow])
  {
    v17 = [(AAUIAppleAccountViewController *)self _appleAccount];
    v18 = [v17 aa_isAccountClass:AAAccountClassPrimary];

    if (v18)
    {
      v19 = [(AAUIAppleAccountViewController *)self _appleAccount];
      v20 = [AAUIRUITableViewCellFactory ruiTableViewForRowType:1 device:v8 section:v14 delegate:v9 appleAccount:v19];

      [v14 addRow:v20];
    }
  }

  if ([v8 showAppleCareRow])
  {
    v21 = [(AAUIAppleAccountViewController *)self _appleAccount];
    v22 = [v21 aa_isAccountClass:AAAccountClassPrimary];

    if (v22)
    {
      v23 = [(AAUIAppleAccountViewController *)self _appleAccount];
      v24 = [AAUIRUITableViewCellFactory ruiTableViewForRowType:2 device:v8 section:v14 delegate:v9 appleAccount:v23];

      [v14 addRow:v24];
    }
  }

  return v14;
}

- (id)_fmipStatusString
{
  v2 = +[AAUIDeviceLocatorService sharedInstance];
  v3 = [v2 isEnabled];

  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = v4;
  if (v3)
  {
    v6 = @"ON";
  }

  else
  {
    v6 = @"OFF";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_5A5F0 table:@"Localizable"];

  return v7;
}

- (id)_backupStatusString
{
  v2 = [(AAUIAppleAccountViewController *)self _appleAccount];
  v3 = [v2 isEnabledForDataclass:kAccountDataclassBackup];

  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = v4;
  if (v3)
  {
    v6 = @"ON";
  }

  else
  {
    v6 = @"OFF";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_5A5F0 table:@"Localizable"];

  return v7;
}

- (void)remoteUIController:(id)a3 didReceiveObjectModel:(id)a4 actionSignal:(unint64_t *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = _AAUILogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *a5;
    v29 = 138412802;
    v30 = v8;
    v31 = 2112;
    v32 = v9;
    v33 = 2048;
    v34 = v11;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "AAUIAppleAccountViewController (%@) did receieve objectModel (%@) with actionSignal (%lu)", &v29, 0x20u);
  }

  v12 = [(AAUIServerUIHookHandler *)v9 clientInfo];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 objectForKey:AAUIClientInfoActionKey];
    if ([v14 isEqualToString:@"update:trustedDevicesSummary"])
    {
      v15 = _AAUILogSystem();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v29) = 0;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "Server request client to update trusted devices list", &v29, 2u);
      }

      [(AAUIDeviceSpecifierProvider *)self->_deviceSpecifierProvider refreshDeviceList];
    }
  }

  if (!*a5)
  {
    v16 = [(AAUIServerUIHookHandler *)v9 allPages];
    v17 = [v16 count];

    if (!v17)
    {
      v18 = _AAUILogSystem();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        serverHookHandler = self->_serverHookHandler;
        v29 = 138412546;
        v30 = v9;
        v31 = 2112;
        v32 = serverHookHandler;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "AAUIAppleAccountViewController: Undefined action signal and no page, not displaying modally! Processing objectModel (%@) with handler (%@)", &v29, 0x16u);
      }

      v20 = self->_serverHookHandler;
      if (!v20)
      {
        v21 = _AAUILogSystem();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v29) = 0;
          _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "_serverHookHandler is nil", &v29, 2u);
        }

        v22 = objc_opt_new();
        v23 = [v22 hooksFor:1 accountManager:self->_accountManager];
        v24 = [[AAUIServerUIHookHandler alloc] initWithRemoteUIController:v8 hooks:v23];
        v25 = self->_serverHookHandler;
        self->_serverHookHandler = v24;

        v26 = _AAUILogSystem();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = self->_serverHookHandler;
          activeRemoteUIController = self->_activeRemoteUIController;
          v29 = 138412546;
          v30 = v27;
          v31 = 2112;
          v32 = activeRemoteUIController;
          _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "_serverHookHandler is %@, remoteController: %@", &v29, 0x16u);
        }

        v20 = self->_serverHookHandler;
      }

      [(AAUIServerUIHookHandler *)v20 processObjectModel:v9 isModal:0];
    }
  }
}

- (void)_postCDPRepairFollowUp
{
  v2 = objc_alloc_init(CDPFollowUpController);
  v3 = +[CDPFollowUpContext contextForStateRepair];
  [v3 setRepairType:2];
  v6 = 0;
  [v2 postFollowUpWithContext:v3 error:&v6];
  if (v6)
  {
    v4 = _AAUILogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Failed to post CDP repair follow up", v5, 2u);
    }
  }
}

- (void)remoteUIController:(id)a3 didReceiveHTTPResponse:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(AAUIServerUIHookHandler *)self->_serverHookHandler processServerResponse:v7];
  [(AKAppleIDServerResourceLoadDelegate *)self->_serverUILoadDelegate processResponse:v7];
  [(AAUIAppleAccountViewController *)self _attemptUpdateAuthControllerWithActionableResponse:v7];
  v8 = [v7 allHeaderFields];
  obj = [v8 objectForKey:@"X-Apple-2SV-Authenticate"];

  if (obj)
  {
    objc_storeStrong(&self->_secondaryToken, obj);
  }

  if ([v7 statusCode] == &stru_158.reloff + 1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v6 currentRequest];
    }

    else
    {
      v9 = 0;
    }

    v10 = _AAUILogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Got a 401 response from BuddyML request.", buf, 2u);
    }

    objc_initWeak(buf, self);
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_1EA94;
    v38[3] = &unk_59D30;
    objc_copyWeak(&v41, buf);
    v11 = v9;
    v39 = v11;
    v40 = v6;
    [(AAUIAppleAccountViewController *)self _refreshAppleIDSettingsTokensWithCompletion:v38];

    objc_destroyWeak(&v41);
    objc_destroyWeak(buf);
  }

  else if ([v7 statusCode] == stru_B8.segname)
  {
    [(AAUIAppleAccountViewController *)self _stopSpinnerInActiveSpecifier];
  }

  else
  {
    v12 = _AAUILogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v7 statusCode]);
      *buf = 138412290;
      v43 = v13;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "unexpected HTTP response for BuddyML request: %@", buf, 0xCu);
    }

    v14 = [NSBundle bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"ICLOUD_UNREACHABLE_TITLE" value:&stru_5A5F0 table:@"Localizable"];
    v16 = [NSBundle bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:@"OK" value:&stru_5A5F0 table:@"Localizable"];
    v18 = [UIAlertController alertWithTitle:v15 message:0 buttonTitle:v17 actionHandler:0];

    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_1EBDC;
    v37[3] = &unk_59680;
    v37[4] = self;
    [(AAUIAppleAccountViewController *)self presentViewController:v18 animated:1 completion:v37];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = v6;
    v20 = [v19 identifier];
    v21 = [v20 isEqualToString:@"_AAUIRemotePageIdentifierSecurity"];

    if (v21)
    {
      v22 = [(AKAppleIDServerResourceLoadDelegate *)self->_serverUILoadDelegate isResponseFinalForHSA2ServerFlow:v7];
      self->_didCompleteHSA2 = v22;
      if (v22)
      {
        v23 = _AAUILogSystem();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "Completed HSA2 flow", buf, 2u);
        }
      }
    }
  }

  v24 = [(RUIObjectModel *)self->_currentObjectModel clientInfo];
  v25 = [v24 objectForKey:@"currentPasswordRowId"];

  if (v25)
  {
    v26 = _AAUILogSystem();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "Detected old password identifier, attempting to harvest...", buf, 2u);
    }

    v27 = [(RUIObjectModel *)self->_currentObjectModel displayedPages];
    v28 = [v27 firstObject];
    v29 = [(AAUIAppleAccountViewController *)self _passcodeValueFromPage:v28 withFieldIdentifier:v25];

    if (v29)
    {
      objc_storeStrong(&self->_oldPassword, v29);
    }
  }

  v30 = [(RUIObjectModel *)self->_currentObjectModel clientInfo];
  v31 = [v30 objectForKey:@"newPasswordRowId"];

  if (v31)
  {
    v32 = _AAUILogSystem();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v32, OS_LOG_TYPE_DEFAULT, "Detected new password identifier, attempting to harvest...", buf, 2u);
    }

    v33 = +[NSMutableDictionary dictionary];
    [(RUIObjectModel *)self->_currentObjectModel populatePostbackDictionary:v33];
    v34 = [v33 objectForKey:v31];
    if (v34)
    {
      v35 = _AAUILogSystem();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v43 = v31;
        _os_log_impl(&dword_0, v35, OS_LOG_TYPE_DEFAULT, "Harvested a new password with identifier: %@", buf, 0xCu);
      }

      objc_storeStrong(&self->_newPassword, v34);
    }
  }
}

- (id)_passcodeValueFromPage:(id)a3 withFieldIdentifier:(id)a4
{
  v5 = a4;
  v6 = [a3 passcodeViewOM];
  if (v6)
  {
    v7 = _AAUILogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v6 attributes];
      v9 = [v8 objectForKeyedSubscript:@"id"];
      v16 = 138412290;
      v17 = v9;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Found a passcode OM with ID: %@", &v16, 0xCu);
    }
  }

  v10 = [v6 attributes];
  v11 = [v10 objectForKeyedSubscript:@"id"];
  v12 = [v11 isEqual:v5];

  if (v12)
  {
    v13 = _AAUILogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v5;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Harvesting passcode with for identifier: %@", &v16, 0xCu);
    }

    v14 = [v6 submittedPIN];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)_retryRequest:(id)a3 inRemoteUIController:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = _AAUILogSystem();
  v11 = v10;
  if (v7)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v7 URL];
      *buf = 138477827;
      v16 = v12;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Retrying request to %{private}@...", buf, 0xCu);
    }

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1EF30;
    v13[3] = &unk_59B48;
    v14 = v9;
    [v8 loadRequest:v7 completion:v13];
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_34D48();
    }

    (*(v9 + 2))(v9, 0, 0);
  }
}

- (void)remoteUIControllerDidDismiss:(id)a3
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v6 identifier];
    v5 = [v4 isEqualToString:@"_AAUIRemotePageIdentifierSecondaryAuth"];

    if (v5)
    {
      [(AAUIAppleAccountViewController *)self _didFinishSecondaryAuthentication];
    }

    [(NSMutableDictionary *)self->_objectModelDecorators removeAllObjects];
  }

  _objc_release_x1();
}

- (void)_addHeadersToRequest:(id)a3
{
  v4 = a3;
  v5 = _AAUILogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Appending headers to page request %@...", &v11, 0xCu);
  }

  v6 = [(AAUIAppleAccountViewController *)self _grandSlamAccount];
  v7 = [(AAUIAppleAccountViewController *)self _accountStore];
  v8 = [v7 credentialForAccount:v6 serviceID:AAGrandSlamAppTokenIDAppleIDSettings];

  v9 = [v8 token];
  [(AKAppleIDServerResourceLoadDelegate *)self->_serverUILoadDelegate setServiceToken:v9];
  [(AKAppleIDServerResourceLoadDelegate *)self->_serverUILoadDelegate signRequest:v4];
  v10 = [v6 aida_dsid];
  [v4 aa_addDeviceProvisioningInfoHeadersWithDSID:v10];
}

- (id)_authController
{
  authController = self->_authController;
  if (!authController)
  {
    v4 = objc_alloc_init(AKAppleIDAuthenticationController);
    v5 = self->_authController;
    self->_authController = v4;

    authController = self->_authController;
  }

  return authController;
}

- (void)_getServerUILoadDelegateWithCompletion:(id)a3
{
  v4 = a3;
  serverUILoadDelegate = self->_serverUILoadDelegate;
  v6 = _AAUILogSystem();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (serverUILoadDelegate)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "AKAppleIDServerResourceLoadDelegate cache available", buf, 2u);
    }

    if (v4)
    {
      v4[2](v4, self->_serverUILoadDelegate, 0);
    }
  }

  else
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Starting to fetch AKAppleIDServerResourceLoadDelegate", buf, 2u);
    }

    v8 = [(AAUIAppleAccountViewController *)self _grandSlamAccount];
    v9 = objc_alloc_init(AKAppleIDAuthenticationContext);
    v10 = [v8 aida_alternateDSID];
    [v9 setAltDSID:v10];

    [v9 setAnticipateEscrowAttempt:1];
    v11 = [(AAUIAppleAccountViewController *)self _authController];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1F47C;
    v12[3] = &unk_59D80;
    v12[4] = self;
    v13 = v4;
    [v11 getServerUILoadDelegateWithContext:v9 completion:v12];
  }
}

- (void)_attemptUpdateAuthControllerWithActionableResponse:(id)a3
{
  v4 = a3;
  if ([(AKAppleIDServerResourceLoadDelegate *)self->_serverUILoadDelegate isResponseActionable:v4])
  {
    v5 = _AAUILogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Final Apple ID settings UI server response! Informing AuthKit...", buf, 2u);
    }

    v6 = [(AAUIAppleAccountViewController *)self _grandSlamAccount];
    v7 = objc_alloc_init(AKAppleIDAuthenticationContext);
    v8 = [v6 aida_alternateDSID];
    [v7 setAltDSID:v8];

    [v7 setAnticipateEscrowAttempt:1];
    v9 = [v6 username];
    [v7 setUsername:v9];

    v10 = dispatch_semaphore_create(0);
    v11 = [(AAUIAppleAccountViewController *)self _authController];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1F7F4;
    v13[3] = &unk_599B8;
    v14 = v10;
    v12 = v10;
    [v11 updateStateWithExternalAuthenticationResponse:v4 forContext:v7 completion:v13];

    dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
  }
}

- (void)_imageControlTapped
{
  v3 = _AAUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "User opted to edit profile picture...", buf, 2u);
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1F9CC;
  v5[3] = &unk_59DA8;
  v5[4] = self;
  v4 = [AAUIImagePickerAlertController alertControllerWithSelectionHandler:v5];
  [(AAUIAppleAccountViewController *)self presentViewController:v4 animated:1 completion:0];
}

- (void)_beginObservingProfilePictureStoreDidChangeNotification
{
  objc_initWeak(&location, self);
  v3 = +[NSNotificationCenter defaultCenter];
  v4 = +[NSOperationQueue mainQueue];
  v5 = AAUIProfilePictureStoreDidChangeNotification;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1FBB4;
  v8[3] = &unk_59940;
  objc_copyWeak(&v9, &location);
  v6 = [v3 addObserverForName:v5 object:0 queue:v4 usingBlock:v8];
  profilePictureStoreDidChangeObserver = self->_profilePictureStoreDidChangeObserver;
  self->_profilePictureStoreDidChangeObserver = v6;

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_profilePictureStoreDidChange:(id)a3
{
  v4 = _AAUIPPSLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "AAUIAppleAccountViewController updating profile photo", v9, 2u);
  }

  v5 = [(AAUIAppleAccountViewController *)self _profilePictureStore];
  v6 = [v5 profilePictureForAccountOwner];

  [(AAUIAppleAccountViewController *)self _setupHeader];
  v7 = [(AAUIAppleAccountHeaderView *)self->_accountHeaderView imageControl];
  v8 = [v7 imageView];
  [v8 setImage:v6];
}

- (void)_stopObservingProfilePictureStoreDidChangeNotification
{
  if (self->_profilePictureStoreDidChangeObserver)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 removeObserver:self->_profilePictureStoreDidChangeObserver];

    profilePictureStoreDidChangeObserver = self->_profilePictureStoreDidChangeObserver;
    self->_profilePictureStoreDidChangeObserver = 0;
  }
}

- (void)documentPicker:(id)a3 didPickDocumentsAtURLs:(id)a4
{
  v5 = a4;
  [(AAUIAppleAccountViewController *)self dismissViewControllerAnimated:1 completion:&stru_59DC8];
  v6 = [v5 firstObject];

  v7 = [NSData dataWithContentsOfURL:v6 options:0 error:0];

  if (v7)
  {
    v8 = [[UIImagePickerController alloc] _initWithSourceImageData:v7 cropRect:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v9 = [v8 _properties];
    v10 = [NSMutableDictionary dictionaryWithDictionary:v9];

    v12[0] = UIImagePickerControllerAllowsEditing;
    v12[1] = _UIImagePickerControllerUseTelephonyUI;
    v13[0] = &__kCFBooleanTrue;
    v13[1] = &__kCFBooleanTrue;
    v12[2] = _UIImagePickerControllerAllowAnySuperview;
    v12[3] = _UIImagePickerControllerForceNativeScreenScale;
    v13[2] = &__kCFBooleanTrue;
    v13[3] = &__kCFBooleanTrue;
    v12[4] = _UIImagePickerController1XCroppedImage;
    v13[4] = &__kCFBooleanTrue;
    v11 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:5];
    [v10 addEntriesFromDictionary:v11];

    [v8 _setProperties:v10];
    [v8 setDelegate:self];
    [(AAUIAppleAccountViewController *)self presentViewController:v8 animated:1 completion:0];
  }
}

- (void)documentPickerWasCancelled:(id)a3
{
  v4 = _AAUILogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "User cancelled document picker view controller.", v5, 2u);
  }

  [(AAUIAppleAccountViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)_refreshAppleIDSettingsTokensWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(AAUIAppleAccountViewController *)self _grandSlamAccount];

  if (v5)
  {
    v18[0] = &__kCFBooleanTrue;
    v17[0] = kACRenewCredentialsShouldForceKey;
    v17[1] = kACRenewCredentialsServicesKey;
    v16 = AAGrandSlamAppTokenIDAppleIDSettings;
    v6 = [NSArray arrayWithObjects:&v16 count:1];
    v18[1] = v6;
    v7 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];

    v8 = [(AAUIAppleAccountViewController *)self _accountStore];
    v9 = [(AAUIAppleAccountViewController *)self _grandSlamAccount];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_20228;
    v14[3] = &unk_59E40;
    v14[4] = self;
    v15 = v4;
    [v8 renewCredentialsForAccount:v9 options:v7 completion:v14];
  }

  else
  {
    v10 = [NSBundle bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"SERVER_NO_CREDENTIALS_TITLE" value:&stru_5A5F0 table:@"Localizable"];
    v12 = [NSBundle bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"SERVER_NO_CREDENTIALS_MESSAGE" value:&stru_5A5F0 table:@"Localizable"];
    [(AAUIAppleAccountViewController *)self _showAlertWithTitle:v11 message:v13];

    (*(v4 + 2))(v4, 0);
  }
}

- (void)_requestSecondaryAuthenticationIfNecessaryWithGSToken:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(AAUIAppleAccountViewController *)self _grandSlamAccount];
  v9 = [AASecondaryAuthenticationRequest alloc];
  v10 = [v8 aida_alternateDSID];
  v11 = [v9 initWithDSID:v10 primaryToken:v7];

  v12 = [v11 urlRequest];
  v13 = [v12 URL];

  v14 = [NSURL URLWithString:@"/" relativeToURL:v13];
  v15 = [v14 absoluteURL];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_20814;
  v18[3] = &unk_59E90;
  v18[4] = self;
  v19 = v15;
  v20 = v6;
  v16 = v6;
  v17 = v15;
  [v11 performRequestWithHandler:v18];
}

- (void)_handleSecondaryAuthenticationResponse:(id)a3 baseURL:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _AAUILogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134217984;
    v14 = [v8 statusCode];
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Secondary Auth response code: %lu", &v13, 0xCu);
  }

  if ([v8 statusCode] == &stru_158.reloff + 3)
  {
    v12 = [v8 buddyML];
    [(AAUIAppleAccountViewController *)self _pushSecondaryAuthenticationRemoteUI:v12 baseURL:v9 withCompletion:v10];
  }

  else
  {
    v10[2](v10);
  }
}

- (void)_pushSecondaryAuthenticationRemoteUI:(id)a3 baseURL:(id)a4 withCompletion:(id)a5
{
  v8 = a4;
  v9 = a3;
  v10 = objc_retainBlock(a5);
  secondaryAuthCompletion = self->_secondaryAuthCompletion;
  self->_secondaryAuthCompletion = v10;

  v12 = objc_alloc_init(PSSetupController);
  [v12 setParentController:self];
  [v12 setModalPresentationStyle:2];
  v13 = [[AAUIRemoteUIController alloc] initWithIdentifier:@"_AAUIRemotePageIdentifierSecondaryAuth"];
  [v13 setDelegate:self];
  [v13 setNavigationController:v12];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_20B70;
  v15[3] = &unk_599B8;
  v16 = v13;
  v14 = v13;
  [v14 setLoadCompletion:v15];
  [v14 loadData:v9 baseURL:v8];

  [(AAUIAppleAccountViewController *)self presentViewController:v12 animated:1 completion:0];
}

- (void)_didFinishSecondaryAuthentication
{
  secondaryAuthCompletion = self->_secondaryAuthCompletion;
  if (secondaryAuthCompletion)
  {
    secondaryAuthCompletion[2](secondaryAuthCompletion, a2);
    v4 = self->_secondaryAuthCompletion;
    self->_secondaryAuthCompletion = 0;
  }

  self->_hasShownSecondaryAuthFirstPage = 0;
}

- (void)_showAccountDetailsUnavailableAlert
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"ACCOUNT_DETAILS_UNAVAILABLE_TITLE" value:&stru_5A5F0 table:@"Localizable"];
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"ACCOUNT_DETAILS_UNAVAILABLE_MESSAGE" value:&stru_5A5F0 table:@"Localizable"];
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"OK" value:&stru_5A5F0 table:@"Localizable"];
  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"GET_VERIFICATION_CODE_BUTTON" value:&stru_5A5F0 table:@"Localizable"];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_20E48;
  v12[3] = &unk_59EB8;
  v12[4] = self;
  v11 = [UIAlertController alertWithTitle:v4 message:v6 cancelButtonTitle:v8 defaultButtonTitle:v10 actionHandler:v12];

  [(AAUIAppleAccountViewController *)self presentViewController:v11 animated:1 completion:0];
}

- (void)_showAlertWithTitle:(id)a3 message:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"OK" value:&stru_5A5F0 table:@"Localizable"];
  v10 = [UIAlertController alertWithTitle:v7 message:v6 buttonTitle:v9];

  [(AAUIAppleAccountViewController *)self presentViewController:v10 animated:1 completion:0];
}

- (void)_presentFirstAlertIfNecessary
{
  v22 = [(AAUIAppleAccountViewController *)self _appleAccount];
  v3 = [v22 aa_accountFirstDisplayAlert];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"identifier"];
    v6 = [v5 stringValue];

    v7 = AAPrefsDomain;
    v8 = CFPreferencesCopyAppValue(@"AAMobileMeAccountAlerts", AAPrefsDomain);
    if (!v8)
    {
      goto LABEL_5;
    }

    v9 = [v22 identifier];
    v10 = [v8 objectForKey:v9];

    if (!v10 || ([v10 objectForKey:v6], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "BOOLValue"), v11, v10, (v12 & 1) == 0))
    {
LABEL_5:
      v13 = [v4 objectForKeyedSubscript:@"title"];
      v14 = [v4 objectForKeyedSubscript:@"message"];
      [(AAUIAppleAccountViewController *)self _showAlertWithTitle:v13 message:v14];

      v15 = [v8 mutableCopy];
      if (!v15)
      {
        v15 = objc_alloc_init(NSMutableDictionary);
      }

      v16 = [v22 identifier];
      v17 = [v15 objectForKey:v16];
      v18 = [v17 mutableCopy];

      if (!v18)
      {
        v18 = objc_alloc_init(NSMutableDictionary);
      }

      v19 = [v4 objectForKeyedSubscript:@"identifier"];
      v20 = [v19 stringValue];

      if (v20)
      {
        [v18 setValue:&__kCFBooleanTrue forKey:v20];
      }

      v21 = [v22 identifier];
      [v15 setObject:v18 forKey:v21];

      CFPreferencesSetAppValue(@"AAMobileMeAccountAlerts", v15, v7);
      CFPreferencesSynchronize(v7, kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
    }
  }
}

- (unint64_t)_reloadOptionsForChangesFromAccounts:(id)a3 toAccounts:(id)a4
{
  v6 = AIDAServiceTypeCloud;
  v7 = a4;
  v8 = a3;
  v9 = [v8 objectForKeyedSubscript:v6];
  v10 = AIDAServiceTypeStore;
  v11 = [v8 objectForKeyedSubscript:AIDAServiceTypeStore];
  v12 = [(AAUIAppleAccountViewController *)self _personNameComponentsForAccountCollection:v8];

  v13 = [v7 objectForKeyedSubscript:v6];
  v14 = [v7 objectForKeyedSubscript:v10];
  v64 = [(AAUIAppleAccountViewController *)self _personNameComponentsForAccountCollection:v7];

  if (v9 && ([v9 aa_isPrimaryEmailVerified] & 1) == 0 && objc_msgSend(v13, "aa_isPrimaryEmailVerified"))
  {
    v15 = _AAUILogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "_reloadOptionsForChangesFromAccounts:toAccounts: Apple Account primary email address became verified.", buf, 2u);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_217BC;
    block[3] = &unk_59680;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }

  v16 = [v9 username];
  v65 = v13;
  v17 = [v13 username];
  if (v16 | v17 && ![v16 isEqual:v17])
  {
    v20 = 0;
    v21 = v64;
  }

  else
  {
    v18 = [v11 username];
    v19 = [v14 username];
    if (v18 | v19)
    {
      v20 = [v18 isEqual:v19];
    }

    else
    {
      v20 = 1;
    }

    v21 = v64;
  }

  if (v12 | v21)
  {
    v22 = [v12 isEqual:v21];
  }

  else
  {
    v22 = 1;
  }

  v61 = v14;
  if (v11 || !v14)
  {
    if (v11)
    {
      v24 = v14 == 0;
    }

    else
    {
      v24 = 0;
    }

    v23 = v24;
  }

  else
  {
    v23 = 1;
  }

  v62 = v11;
  v60 = v12;
  if (v9 || !v65)
  {
    if (v9)
    {
      v26 = v65 == 0;
    }

    else
    {
      v26 = 0;
    }

    v25 = v26;
  }

  else
  {
    v25 = 1;
  }

  v57 = v22;
  v58 = v20 & v22;
  v59 = v20;
  v27 = [v65 aa_needsToVerifyTerms];
  v28 = [v9 aa_needsToVerifyTerms];
  v29 = [v65 aa_suspensionInfo];
  v30 = [v29 isiCloudSuspended];
  v31 = [v9 aa_suspensionInfo];
  v32 = v9;
  v33 = [v31 isiCloudSuspended];

  v34 = [v65 aa_suspensionInfo];
  v35 = [v34 isFamilySuspended];
  v63 = v32;
  v36 = [v32 aa_suspensionInfo];
  v37 = [v36 isFamilySuspended];

  v38 = 1;
  if (((v23 | v25) & 1) == 0 && ((v27 ^ v28) & 1) == 0)
  {
    v38 = v30 ^ v33 | v35 ^ v37;
  }

  v39 = kAccountDataclassBackup;
  v40 = v63;
  v41 = [v63 isEnabledForDataclass:kAccountDataclassBackup];
  v42 = [v65 isEnabledForDataclass:v39];
  if (v58)
  {
    v43 = 0;
    goto LABEL_48;
  }

  if ((v59 & 1) == 0)
  {
    v44 = _AAUILogSystem();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
    {
      v53 = [v63 username];
      v54 = [v65 username];
      v55 = [v62 username];
      v56 = [v61 username];
      *buf = 138413058;
      v68 = v53;
      v69 = 2112;
      v70 = v54;
      v71 = 2112;
      v72 = v55;
      v73 = 2112;
      v74 = v56;
      _os_log_debug_impl(&dword_0, v44, OS_LOG_TYPE_DEBUG, "AAUI Username change: AppleAccount: %@/%@ (old/new)  StoreAccount: %@/%@ (old/new)", buf, 0x2Au);

      v40 = v63;
    }

    goto LABEL_46;
  }

  if ((v57 & 1) == 0)
  {
    v44 = _AAUILogSystem();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
    {
      sub_34D84();
    }

LABEL_46:
  }

  v43 = 1;
LABEL_48:
  v45 = v41 ^ v42;
  if ((v38 & 1) == 0)
  {
    v47 = v62;
    v48 = v60;
    v49 = v65;
    if (!v45)
    {
      goto LABEL_57;
    }

    goto LABEL_54;
  }

  v46 = _AAUILogSystem();
  v47 = v62;
  v48 = v60;
  v49 = v65;
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v46, OS_LOG_TYPE_DEFAULT, "Account authentication state changed. Will reload specifiers.", buf, 2u);
  }

  v43 |= 2uLL;
  if (v45)
  {
LABEL_54:
    v50 = _AAUILogSystem();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v50, OS_LOG_TYPE_DEFAULT, "Account backup dataclass changed", buf, 2u);
    }

    v43 |= 4uLL;
  }

LABEL_57:
  if (v40 && !v49)
  {
    v51 = _AAUILogSystem();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v51, OS_LOG_TYPE_DEFAULT, "AppleAccount signed out", buf, 2u);
    }

    v43 |= 8uLL;
  }

  return v43;
}

- (void)operationsHelper:(id)a3 willSaveAccount:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = _AAUILogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = v6;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Operations helper will save account: %@", buf, 0xCu);
  }

  if (self->_shouldAttemptToEnableDataclasses)
  {
    self->_shouldAttemptToEnableDataclasses = 0;
  }

  [(AAUIAppleAccountViewController *)self _stopObservingAccountStoreChanges];
  v9.receiver = self;
  v9.super_class = AAUIAppleAccountViewController;
  [(AAUIAppleAccountViewController *)&v9 operationsHelper:v7 willSaveAccount:v6];
}

- (void)_issueFindMyiPhonePromptWithTitle:(id)a3 andMessage:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"OK" value:&stru_5A5F0 table:@"Localizable"];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_21BF0;
  v11[3] = &unk_59680;
  v11[4] = self;
  v10 = [UIAlertController alertWithTitle:v7 message:v6 buttonTitle:v9 actionHandler:v11];

  [(AAUIAppleAccountViewController *)self presentViewController:v10 animated:0 completion:0];
}

- (void)_promptUserToEnableFindMyiPhoneIfPossible
{
  v3 = [(AAUIAppleAccountViewController *)self _appleAccount];
  if ([v3 aa_isPrimaryEmailVerified] && objc_msgSend(v3, "isProvisionedForDataclass:", kAccountDataclassDeviceLocator) && objc_msgSend(v3, "aa_isPrimaryAccount"))
  {
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"DEVICE_LOCATOR_TITLE"];
    v6 = [v4 localizedStringForKey:v5 value:&stru_5A5F0 table:@"Localizable"];

    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"ENABLE_DEVICE_LOCATOR_MESSAGE_REBRAND"];
    v9 = [v7 localizedStringForKey:v8 value:&stru_5A5F0 table:@"Localizable"];

    v10 = +[NRPairedDeviceRegistry sharedInstance];
    v11 = [v10 getActivePairedDevice];

    v12 = [[NSUUID alloc] initWithUUIDString:@"02168E84-5DD8-4B19-9204-A79F04B33A32"];
    v13 = [v11 supportsCapability:v12];

    if (v13)
    {
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_21EB8;
      v14[3] = &unk_59EE0;
      v14[4] = self;
      v15 = v6;
      [AAUIDeviceLocatorConfirmationUtilities checkIfWatchHasAppleIDAccount:v14];
    }

    else
    {
      [(AAUIAppleAccountViewController *)self _issueFindMyiPhonePromptWithTitle:v6 andMessage:v9];
    }
  }
}

- (void)_startObservingDeviceLocatorStateChanges
{
  if (!self->_deviceLocatorStateDidChangeObserver)
  {
    objc_initWeak(&location, self);
    v3 = +[NSNotificationCenter defaultCenter];
    v4 = AAUIDeviceLocatorStateDidChangeNotification;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_22124;
    v7[3] = &unk_59940;
    objc_copyWeak(&v8, &location);
    v5 = [v3 addObserverForName:v4 object:0 queue:0 usingBlock:v7];
    deviceLocatorStateDidChangeObserver = self->_deviceLocatorStateDidChangeObserver;
    self->_deviceLocatorStateDidChangeObserver = v5;

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

- (void)_stopObservingDeviceLocatorStateChanges
{
  if (self->_deviceLocatorStateDidChangeObserver)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 removeObserver:self->_deviceLocatorStateDidChangeObserver];

    deviceLocatorStateDidChangeObserver = self->_deviceLocatorStateDidChangeObserver;
    self->_deviceLocatorStateDidChangeObserver = 0;
  }
}

- (void)_deviceLocatorStateDidChange:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_222B4;
  block[3] = &unk_59680;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)refreshDetailTextForTableCellWithTag:(int64_t)a3
{
  v8 = [(AAUIFMIPHeaderDeviceInfoPageSurrogate *)self->_deviceSurrogate cellWithTag:?];
  if (a3 == 1002)
  {
    v5 = [(AAUIAppleAccountViewController *)self _backupStatusString];
    goto LABEL_5;
  }

  if (a3 == 1001)
  {
    v5 = [(AAUIAppleAccountViewController *)self _fmipStatusString];
LABEL_5:
    v6 = v5;
    goto LABEL_7;
  }

  v6 = 0;
LABEL_7:
  v7 = [v8 detailTextLabel];
  [v7 setText:v6];
}

- (void)_startObservingPresentCustodianSetupNotification
{
  objc_initWeak(&location, self);
  if (!self->_presentAddRecoveryContactNotificationObserver)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_225A4;
    v6[3] = &unk_59940;
    objc_copyWeak(&v7, &location);
    v4 = [v3 addObserverForName:@"AAUIPresentCustodianSetupNotification" object:0 queue:0 usingBlock:v6];
    presentAddRecoveryContactNotificationObserver = self->_presentAddRecoveryContactNotificationObserver;
    self->_presentAddRecoveryContactNotificationObserver = v4;

    objc_destroyWeak(&v7);
  }

  objc_destroyWeak(&location);
}

- (void)_stopObservingPresentCustodianSetupNotification
{
  if (self->_presentAddRecoveryContactNotificationObserver)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 removeObserver:self->_presentAddRecoveryContactNotificationObserver];

    presentAddRecoveryContactNotificationObserver = self->_presentAddRecoveryContactNotificationObserver;
    self->_presentAddRecoveryContactNotificationObserver = 0;
  }
}

- (void)_startObservingRCUpsellTipDismissedNotification
{
  objc_initWeak(&location, self);
  if (!self->_rcUpsellTipDismissedNotificationObserver)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_227B8;
    v6[3] = &unk_59940;
    objc_copyWeak(&v7, &location);
    v4 = [v3 addObserverForName:@"AAUIRecoveryContactUpsellTipDismissed" object:0 queue:0 usingBlock:v6];
    rcUpsellTipDismissedNotificationObserver = self->_rcUpsellTipDismissedNotificationObserver;
    self->_rcUpsellTipDismissedNotificationObserver = v4;

    objc_destroyWeak(&v7);
  }

  objc_destroyWeak(&location);
}

- (void)_stopObservingRCUpsellTipDismissedNotification
{
  if (self->_rcUpsellTipDismissedNotificationObserver)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 removeObserver:self->_rcUpsellTipDismissedNotificationObserver];

    rcUpsellTipDismissedNotificationObserver = self->_rcUpsellTipDismissedNotificationObserver;
    self->_rcUpsellTipDismissedNotificationObserver = 0;
  }
}

- (void)presentCustodianSetupFlow:(id)a3
{
  v4 = [[AAUICustodianSetupFlowController alloc] initWithAccountManager:self->_accountManager];
  custodianSetupFlowController = self->_custodianSetupFlowController;
  self->_custodianSetupFlowController = v4;

  [(AAUICustodianSetupFlowController *)self->_custodianSetupFlowController setDelegate:self];
  [(AAUICustodianSetupFlowController *)self->_custodianSetupFlowController start];
  v6 = [(AAUICustodianSetupFlowController *)self->_custodianSetupFlowController navigationController];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_22980;
  v7[3] = &unk_59680;
  v7[4] = self;
  [(AAUIAppleAccountViewController *)self presentViewController:v6 animated:1 completion:v7];
}

- (void)_beginObservingEmailVerificationStatus
{
  if (self->_emailVerificationToken == -1)
  {
    objc_initWeak(&location, self);
    v3 = [AKEmailVerificationCompletedNotificationKey UTF8String];
    v4 = &_dispatch_main_q;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_22AD8;
    v5[3] = &unk_59F08;
    objc_copyWeak(&v6, &location);
    notify_register_dispatch(v3, &self->_emailVerificationToken, &_dispatch_main_q, v5);

    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

- (void)_beginObservingiCloudRestoreStatus
{
  if (self->_iCloudRestoreToken == -1)
  {
    objc_initWeak(&location, self);
    v3 = [kMBManagerRestoreStateChangedNotification UTF8String];
    v4 = &_dispatch_main_q;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_22C7C;
    v5[3] = &unk_59F08;
    objc_copyWeak(&v6, &location);
    notify_register_dispatch(v3, &self->_iCloudRestoreToken, &_dispatch_main_q, v5);

    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

- (BOOL)_isRestoringFromiCloud
{
  state64 = 0;
  notify_get_state(self->_iCloudRestoreToken, &state64);
  return state64 - 1 < 2;
}

- (BOOL)_setupForNetworkActivity
{
  v3 = [(NSLock *)self->_accountValidationLock tryLock];
  if (v3)
  {
    self->_performingUpdate = 1;
    v4 = _AAUILogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Enabling task completion", buf, 2u);
    }

    [(AAUIAppleAccountViewController *)self setTaskCompletionAssertionEnabled:1];
    v5 = +[UIApplication sharedApplication];
    [v5 setNetworkActivityIndicatorVisible:1];
  }

  else
  {
    v5 = _AAUILogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Failed to grab validation lock.", v7, 2u);
    }
  }

  return v3;
}

- (void)_cleanupFromNetworkActivity
{
  self->_performingUpdate = 0;
  v3 = self->_accountValidationLock;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_22F78;
  block[3] = &unk_59680;
  v4 = v3;
  v9 = v4;
  dispatch_async(&_dispatch_main_q, block);
  v5 = +[UIApplication sharedApplication];
  [v5 setNetworkActivityIndicatorVisible:0];

  [(AAUIAppleAccountViewController *)self setTaskCompletionAssertionEnabled:0];
  v6 = _AAUILogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 0;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Disabling task completion", &v7, 2u);
  }
}

- (void)_checkNetworkReachabilityAndValidateAccount
{
  v3 = _AAUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Attempting to revalidate account", buf, 2u);
  }

  v4 = +[AKNetworkObserver sharedNetworkObserver];
  v5 = [v4 isNetworkReachable];

  performedUpdate = self->_performedUpdate;
  v7 = _AAUILogSystem();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (performedUpdate)
  {
    if (v8)
    {
      *v9 = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Revaidation already complete, skipping", v9, 2u);
    }
  }

  else if (v5)
  {
    if (v8)
    {
      *v11 = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Performing network revalidation of account", v11, 2u);
    }

    [(AAUIAppleAccountViewController *)self _performNetworkValidation];
  }

  else
  {
    if (v8)
    {
      *v10 = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "We are offline, starting to wait for reachability...", v10, 2u);
    }

    self->_monitoringReachability = 1;
  }
}

- (void)_performNetworkValidation
{
  v3 = [(AAUIAppleAccountViewController *)self _appleAccount];
  v4 = v3;
  if (v3)
  {
    if ([v3 aa_needsRegistration] && (objc_msgSend(v4, "aa_isSyncedAccount") & 1) == 0)
    {
      v6 = _AAUILogSystem();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "The account has no dataclass properties and needs to be registered", v7, 2u);
      }

      [(AAUIAppleAccountViewController *)self _registerAccount];
    }

    else
    {
      [(AAUIAppleAccountViewController *)self _revalidateAccount];
    }
  }

  else
  {
    v5 = _AAUILogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Not signed in to an iCloud account, unable to perform network validation", buf, 2u);
    }
  }
}

- (void)_startMonitoringReachability
{
  v3 = +[AKNetworkObserver sharedNetworkObserver];
  [v3 addNetworkReachableObserver:self selector:"_reachabilityChanged:"];
}

- (void)_stopMonitoringReachability
{
  v3 = +[AKNetworkObserver sharedNetworkObserver];
  [v3 removeNetworkReachableObserver:self];
}

- (void)_reachabilityChanged:(BOOL)a3
{
  v3 = a3;
  v5 = _AAUILogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (v3)
    {
      v6 = @"YES";
    }

    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Network reachability changed to: %@", &v8, 0xCu);
  }

  if (self->_monitoringReachability && v3)
  {
    [(AAUIAppleAccountViewController *)self _performNetworkValidation];
    self->_monitoringReachability = 0;
  }

  [(AAUIAppleAccountViewController *)self _forgetSpecifiers];
  [(AAUIAppleAccountViewController *)self reloadSpecifiers];
}

- (void)_registerAccount
{
  [(AAUIAppleAccountViewController *)self _setupForNetworkActivity];
  v3 = [(AAUIAppleAccountViewController *)self _accountStore];
  v4 = [(AAUIAppleAccountViewController *)self _appleAccount];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_23484;
  v5[3] = &unk_599B8;
  v5[4] = self;
  [v3 aa_registerAppleAccount:v4 withCompletion:v5];
}

- (void)_handleAccountRegistrationCompletionWithResult:(BOOL)a3 error:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = v6;
  self->_performedUpdate = 1;
  if (v4)
  {
    v8 = [(AAUIAppleAccountViewController *)self _accountStore];
    v9 = [(AAUIAppleAccountViewController *)self _appleAccount];
    [v8 saveAccount:v9 withCompletionHandler:&stru_59F28];

    [(AAUIAppleAccountViewController *)self _cleanupFromNetworkActivity];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_236B4;
    block[3] = &unk_59680;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }

  else if (v6)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_236F8;
    v10[3] = &unk_594A0;
    v10[4] = self;
    v11 = v6;
    dispatch_async(&_dispatch_main_q, v10);
  }

  else
  {
    [(AAUIAppleAccountViewController *)self _cleanupFromNetworkActivity];
  }
}

- (void)_revalidateAccount
{
  v3 = [(AAUIAppleAccountViewController *)self _appleAccount];
  if (!v3)
  {
    v5 = _AAUILogSystem();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v8 = "User not signed in to AppleAccount, will not perform revalidation";
LABEL_14:
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, v8, buf, 2u);
    goto LABEL_17;
  }

  allowAccountRevalidation = self->_allowAccountRevalidation;
  v5 = _AAUILogSystem();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (!allowAccountRevalidation)
  {
    if (!v6)
    {
      goto LABEL_17;
    }

    *buf = 0;
    v8 = "Hold off account revalidation, we're probably displaying a dialog";
    goto LABEL_14;
  }

  if (v6)
  {
    *buf = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Revalidating Account", buf, 2u);
  }

  if (![(AAUIAppleAccountViewController *)self _setupForNetworkActivity])
  {
    v5 = _AAUILogSystem();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v8 = "Network setup failed, aborting update";
    goto LABEL_14;
  }

  if ([v3 aa_isPrimaryEmailVerified])
  {
    v7 = -32768;
  }

  else
  {
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"VERIFYING" value:&stru_5A5F0 table:@"Localizable"];
    [(AAUIAppleAccountViewController *)self startValidationWithPrompt:v10 userInteraction:1];

    v7 = 2;
  }

  v11 = [v3 copy];
  v12 = dispatch_get_global_queue(v7, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_23A78;
  block[3] = &unk_59F78;
  block[4] = self;
  v14 = v3;
  v15 = v11;
  v5 = v11;
  dispatch_async(v12, block);

LABEL_17:
}

- (BOOL)_isPasswordRequiredToValidateAppleAccount:(id)a3
{
  v3 = a3;
  v4 = [v3 aa_authToken];
  if (v4)
  {
  }

  else
  {
    v5 = [v3 aa_password];

    if (!v5)
    {
      v6 = _AAUILogSystem();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        v10 = "No iCloud auth token and no password. Need to do password auth.";
        v11 = v16;
        goto LABEL_16;
      }

LABEL_17:
      v9 = 1;
      goto LABEL_18;
    }
  }

  if (CFPreferencesGetAppBooleanValue(@"AAUISuppressFire", @"com.apple.Preferences", 0) == 1)
  {
    v6 = _AAUILogSystem();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
LABEL_8:
      v9 = 0;
LABEL_18:

      goto LABEL_19;
    }

    *buf = 0;
    v7 = "AAUISuppressFire is on. Will not check for Lilac Mode.";
    v8 = buf;
LABEL_7:
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
    goto LABEL_8;
  }

  if (([v3 isAuthenticated] & 1) == 0)
  {
    v6 = _AAUILogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 0;
      v10 = "Account is marked as unauthenticated. Need to do password auth.";
      v11 = &v14;
LABEL_16:
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, v10, v11, 2u);
      goto LABEL_17;
    }

    goto LABEL_17;
  }

  if (([v3 aa_isPrimaryEmailVerified] & 1) == 0)
  {
    v6 = _AAUILogSystem();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_8;
    }

    v13 = 0;
    v7 = "iCloud account is still unverified. Skipping Lilac Mode check.";
    v8 = &v13;
    goto LABEL_7;
  }

  v9 = 0;
LABEL_19:

  return v9;
}

- (void)_beginValidationForAccount:(id)a3
{
  v4 = a3;
  v5 = [(AAUIAppleAccountViewController *)self _accountStore];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_23EA0;
  v7[3] = &unk_59720;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 aa_updatePropertiesForAppleAccount:v6 completion:v7];
}

- (void)_handleAccountRevalidationCompletionWithValidatedAccount:(id)a3 success:(BOOL)a4 error:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = [(AAUIAppleAccountViewController *)self _appleAccount];
  v11 = [v10 aa_serviceUnavailable];
  v12 = [v8 aa_serviceUnavailable];
  v13 = [v10 aa_isPrimaryEmailVerified];
  v14 = [v8 aa_isPrimaryEmailVerified];
  if (v9 || !v6)
  {
    if (!v9 || v6)
    {
      v24 = _AAUILogSystem();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "validation operations canceled", buf, 2u);
      }

      self->_performedUpdate = 1;
    }

    else
    {
      self->_performedUpdate = 1;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_24534;
      block[3] = &unk_59FC8;
      block[4] = self;
      v33 = v9;
      v34 = v10;
      v35 = v8;
      dispatch_async(&_dispatch_main_q, block);
    }

    goto LABEL_27;
  }

  v15 = v14;
  v30 = v11;
  v31 = v13;
  v29 = v12;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v16 = [v8 provisionedDataclasses];
  v17 = [v16 countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v40;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v40 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v39 + 1) + 8 * i);
        v22 = [v10 isEnabledForDataclass:v21];
        if (v22 != [v8 isEnabledForDataclass:v21])
        {
          [v8 setEnabled:v22 forDataclass:v21];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v18);
  }

  if (v31 & 1 | ((v15 & 1) == 0) && ((v30 ^ 1 | v29) & 1) != 0)
  {
    if ((v15 & 1) == 0)
    {
      [(AAUIAppleAccountViewController *)self _autoVerifyAccount];
      v23 = 0;
      goto LABEL_26;
    }
  }

  else
  {
    v25 = _AAUILogSystem();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "Account became verified", buf, 2u);
    }

    v26 = [NSBundle bundleForClass:objc_opt_class()];
    v27 = [v26 localizedStringForKey:@"APPLEID_TITLE" value:&stru_5A5F0 table:@"Localizable"];
    [(AAUIAppleAccountViewController *)self stopValidationWithPrompt:v27 showButtons:0];

    [(AAUIAppleAccountViewController *)self _accountEmailBecameVerified];
  }

  v23 = 1;
LABEL_26:
  self->_performedUpdate = 1;
  [(AAUIAppleAccountViewController *)self _presentFirstAlertIfNecessary];
  v28 = dispatch_get_global_queue(0, 0);
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_24464;
  v36[3] = &unk_594A0;
  v36[4] = self;
  v37 = v8;
  dispatch_async(v28, v36);

  v9 = 0;
  if (v23)
  {
LABEL_27:
    [(AAUIAppleAccountViewController *)self _cleanupFromNetworkActivity];
  }
}

- (void)_accountEmailBecameVerified
{
  [(AAUIAppleAccountViewController *)self _enableAllProvisionedDataclasses];
  [(AAUIAppleAccountViewController *)self _forgetSpecifiers];

  [(AAUIAppleAccountViewController *)self reloadSpecifiers];
}

- (void)_enableAllProvisionedDataclasses
{
  v3 = _AAUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Attempting to enable all provisioned dataclasses", buf, 2u);
  }

  v4 = [(AAUIAppleAccountViewController *)self _appleAccount];
  v5 = v4;
  if (v4)
  {
    *buf = 0;
    v17 = buf;
    v18 = 0x2020000000;
    v19 = 0;
    accountWorkQueue = self->_accountWorkQueue;
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_248B0;
    v13 = &unk_59FF0;
    v7 = v4;
    v14 = v7;
    v15 = buf;
    dispatch_sync(accountWorkQueue, &v10);
    if (v17[24] == 1)
    {
      [(AAUIAppleAccountViewController *)self _stopObservingAccountStoreChanges:v10];
      v8 = [(AAUIAppleAccountViewController *)self accountOperationsHelper];
      [v8 saveAccount:v7 requireVerification:0];
    }

    else if (!self->_accountWasPromoted)
    {
      [(AAUIAppleAccountViewController *)self _promptUserToEnableFindMyiPhoneIfPossible:v10];
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v9 = _AAUILogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "User not signed in to an AppleAccount, will not enable all provisioned dataclasses", buf, 2u);
    }
  }
}

- (BOOL)_isEnabledForAccount:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    LOBYTE(v8) = 1;
    goto LABEL_9;
  }

  v5 = [v3 accountType];
  v6 = [v5 identifier];
  v7 = [v6 isEqualToString:ACAccountTypeIdentifierAppleAccount];

  if (!v7)
  {
    v9 = [v4 accountType];
    v8 = [v9 identifier];
    [v8 isEqualToString:ACAccountTypeIdentifieriTunesStore];

    LOBYTE(v8) = 1;
LABEL_8:

    goto LABEL_9;
  }

  if (([v4 aa_needsToVerifyTerms] & 1) == 0)
  {
    v9 = [v4 aa_suspensionInfo];
    LODWORD(v8) = [v9 isiCloudSuspended] ^ 1;
    goto LABEL_8;
  }

  LOBYTE(v8) = 0;
LABEL_9:

  return v8;
}

- (void)_showGenericTermsUI
{
  if (!self->_isPresentingUpdateSheet)
  {
    self->_isPresentingUpdateSheet = 1;
    v4 = [AAUIGenericTermsRemoteUI alloc];
    v5 = [(AAUIAppleAccountViewController *)self _appleAccount];
    v6 = [(AAUIAppleAccountViewController *)self _accountStore];
    v7 = [v4 initWithAccount:v5 inStore:v6];
    genericTermsRemoteUI = self->_genericTermsRemoteUI;
    self->_genericTermsRemoteUI = v7;

    [(AAUIGenericTermsRemoteUI *)self->_genericTermsRemoteUI setDelegate:self];
    v9 = self->_genericTermsRemoteUI;

    [(AAUIGenericTermsRemoteUI *)v9 presentFromViewController:self modal:1];
  }
}

- (void)genericTermsRemoteUI:(id)a3 didFinishWithSuccess:(BOOL)a4
{
  v4 = a4;
  self->_isPresentingUpdateSheet = 0;
  genericTermsRemoteUI = self->_genericTermsRemoteUI;
  self->_genericTermsRemoteUI = 0;

  if (v4)
  {

    [(AAUIAppleAccountViewController *)self _revalidateAccount];
  }

  else
  {
    v7 = _AAUILogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(AAUIAppleAccountViewController *)self _appleAccount];
      v9 = [v8 aa_needsToVerifyTerms];
      v10 = @"NO";
      if (v9)
      {
        v10 = @"YES";
      }

      *buf = 138412290;
      v14 = v10;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Terms have not been agreed to, are we in gray mode like we should? %@, let's save.", buf, 0xCu);
    }

    [(AAUIAppleAccountViewController *)self _forgetSpecifiers];
    [(AAUIAppleAccountViewController *)self reloadSpecifiers];
    v11 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_24D7C;
    block[3] = &unk_59680;
    block[4] = self;
    dispatch_async(v11, block);
  }
}

- (id)_accountAutoVerifier
{
  accountVerifier = self->_accountVerifier;
  if (!accountVerifier)
  {
    v4 = [AAAutoAccountVerifier alloc];
    v5 = [(AAUIAppleAccountViewController *)self _appleAccount];
    v6 = [v4 initWithAccount:v5];
    v7 = self->_accountVerifier;
    self->_accountVerifier = v6;

    accountVerifier = self->_accountVerifier;
  }

  return accountVerifier;
}

- (void)_autoVerifyAccount
{
  v3 = _AAUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Auto-verifying account", buf, 2u);
  }

  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"VERIFYING" value:&stru_5A5F0 table:@"Localizable"];
  [(AAUIAppleAccountViewController *)self startValidationWithPrompt:v5 userInteraction:1];

  v6 = [(AAUIAppleAccountViewController *)self _accountAutoVerifier];
  [v6 sendVerificationEmail];

  v7 = [(AAUIAppleAccountViewController *)self _accountAutoVerifier];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_250A8;
  v8[3] = &unk_599B8;
  v8[4] = self;
  [v7 verifyWithHandler:v8];
}

- (void)_handleAccountAutoVerificationCompletionWithSuccess:(BOOL)a3 error:(id)a4
{
  v6 = a4;
  if (a3)
  {
    v7 = [(AAUIAppleAccountViewController *)self _accountStore];
    v8 = [(AAUIAppleAccountViewController *)self _appleAccount];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_2528C;
    v12[3] = &unk_599B8;
    v12[4] = self;
    [v7 aa_updatePropertiesForAppleAccount:v8 completion:v12];
LABEL_5:

    goto LABEL_6;
  }

  v7 = _AAUILogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 localizedDescription];
    *buf = 138412290;
    v14 = v8;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Verification failed: %@", buf, 0xCu);
    goto LABEL_5;
  }

LABEL_6:

  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"APPLEID_TITLE_REBRAND" value:&stru_5A5F0 table:@"Localizable"];
  [(AAUIAppleAccountViewController *)self stopValidationWithPrompt:v10 showButtons:0];

  v11 = [(AAUIAppleAccountViewController *)self navigationItem];
  [v11 setLeftBarButtonItem:0];

  [(AAUIAppleAccountViewController *)self _cleanupFromNetworkActivity];
}

- (void)_presentValidationErrorAlert:(id)a3 account:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 userInfo];
  v9 = [v6 userInfo];
  v10 = [v9 objectForKey:kAAProtocolErrorResponseDictionaryKey];

  if (v10)
  {
    v11 = [v10 objectForKey:kAAProtocolErrorMessageKey];
    v12 = [v10 objectForKey:kAAProtocolErrorTitleKey];
    v13 = [v10 objectForKey:kAAProtocolErrorCancelButtonTitleKey];
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = 0;
    v12 = 0;
    v11 = 0;
    if (v8)
    {
LABEL_3:
      v14 = [v8 objectForKey:kAAProtocolErrorKey];
      if (v12)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  v14 = 0;
  if (!v12)
  {
LABEL_4:
    v12 = [(AAUIAppleAccountViewController *)self _titleForError:v6 account:v7];
  }

LABEL_5:
  if (!v11)
  {
    v11 = [(AAUIAppleAccountViewController *)self _messageForError:v6 account:v7];
  }

  if ([v6 code] == &stru_158.reloff + 1)
  {
    v15 = [(AAUIAppleAccountViewController *)self _accountStore];
    v16 = [(AAUIAppleAccountViewController *)self _appleAccount];
    v17 = self;
    v18 = v12;
    v19 = v11;
    v20 = v13;
    v21 = v14;
    v22 = v8;
    v23 = v7;
    v24 = v16;
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_256BC;
    v33[3] = &unk_5A060;
    v33[4] = v17;
    [v15 renewCredentialsForAccount:v16 completion:v33];

    v7 = v23;
    v8 = v22;
    v14 = v21;
    v13 = v20;
    v11 = v19;
    v12 = v18;
  }

  else
  {
    if (!v13)
    {
      v25 = v14;
      v26 = v8;
      v27 = v7;
      v28 = [NSBundle bundleForClass:objc_opt_class()];
      v29 = [v28 localizedStringForKey:@"OK" value:&stru_5A5F0 table:@"Localizable"];

      v7 = v27;
      v8 = v26;
      v14 = v25;
      v13 = v29;
    }

    if ([v14 isEqualToString:kAAProtocolErrorMobileMeAccountMissingInfo])
    {
      v30 = 1;
    }

    else
    {
      v30 = [v14 isEqualToString:kAAProtocolErrorMobileMeTermsOfServiceUpdate];
    }

    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_25748;
    v31[3] = &unk_59990;
    v32 = v30;
    v31[4] = self;
    v15 = [UIAlertController alertWithTitle:v12 message:v11 buttonTitle:v13 actionHandler:v31];
    [(AAUIAppleAccountViewController *)self presentViewController:v15 animated:1 completion:0];
  }
}

- (id)_messageForError:(id)a3 account:(id)a4
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = v5;
  if (v5 && (v7 = kAAProtocolErrorKey, [v5 objectForKey:kAAProtocolErrorKey], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    v9 = [v6 objectForKey:v7];
    v10 = [NSBundle bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:v9 value:&stru_5A5F0 table:@"Localizable"];
  }

  else
  {
    v11 = [v4 localizedDescription];
  }

  return v11;
}

- (id)_titleForError:(id)a3 account:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 userInfo];
  v8 = v7;
  if (v7 && (v9 = kAAProtocolErrorKey, [v7 objectForKey:kAAProtocolErrorKey], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
  {
    v11 = [v8 objectForKey:v9];
  }

  else
  {
    v11 = 0;
  }

  v12 = [v5 code];
  if (v12 == &stru_158.reloff + 3)
  {
    if (!v11)
    {
LABEL_13:
      v13 = [NSBundle bundleForClass:objc_opt_class()];
      v14 = v13;
      v15 = @"VERIFICATION_FAILED_TITLE";
      goto LABEL_14;
    }

    if (![v11 isEqualToString:kAAProtocolErrorMobileMeAccountDisabled])
    {
      v14 = [NSBundle bundleForClass:objc_opt_class()];
      v18 = [v11 stringByAppendingString:@"_TITLE"];
      v16 = [v14 localizedStringForKey:v18 value:&stru_5A5F0 table:@"Localizable"];

      goto LABEL_15;
    }

LABEL_12:
    v16 = [v6 aa_displayName];
    goto LABEL_16;
  }

  if (v12 != &stru_158.reloff + 2)
  {
    if (v12 != &stru_158.reloff + 1)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v13 = [NSBundle bundleForClass:objc_opt_class()];
  v14 = v13;
  v15 = @"MOBILEME_PAID_ACCOUNT_LAPSED_TITLE";
LABEL_14:
  v16 = [v13 localizedStringForKey:v15 value:&stru_5A5F0 table:@"Localizable"];
LABEL_15:

LABEL_16:

  return v16;
}

- (void)handleURL:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AAUIAppleAccountViewController *)self viewIfLoaded];
  v9 = [v8 window];

  if (v9)
  {
    self->_loadedViaURL = 1;
    v10 = [v6 objectForKeyedSubscript:@"aaaction"];
    v11 = [v6 copy];
    cachedResourceDictionary = self->_cachedResourceDictionary;
    self->_cachedResourceDictionary = v11;

    v13 = _AAUILogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = v10;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "AAUIAppleAccountViewController handleURL action - %@", buf, 0xCu);
    }

    if ([v10 isEqual:@"auth"])
    {
      [(AAUIAppleAccountViewController *)self _handleAuthActionURL:v6];
      goto LABEL_43;
    }

    if ([v10 isEqual:@"resetPassword"])
    {
      [(AAUIAppleAccountViewController *)self _handleiForgotActionURL:v6];
      goto LABEL_43;
    }

    if ([v10 isEqual:@"changePassword"])
    {
      [(AAUIAppleAccountViewController *)self _handleChangePasswordActionURL:v6];
      goto LABEL_43;
    }

    if ([v10 isEqual:@"CDP"])
    {
      [(AAUIAppleAccountViewController *)self _handleCDPActionURL:v6];
      goto LABEL_43;
    }

    if ([v10 isEqual:@"accountRecovery"])
    {
      [(AAUIAppleAccountViewController *)self _handleAccountRecoveryURL:v6];
      goto LABEL_43;
    }

    if ([v10 isEqual:@"accountBeneficiary"])
    {
      [(AAUIAppleAccountViewController *)self _handleAccountBeneficiaryURL:v6];
      goto LABEL_43;
    }

    if ([v10 isEqual:@"accountContactDetails"])
    {
      [(AAUIAppleAccountViewController *)self _contactSpecifierWasTapped:0];
      goto LABEL_43;
    }

    if ([v10 isEqualToString:@"IDMSUrl"])
    {
      [(AAUIAppleAccountViewController *)self _handleAuthkitFollowUpServerUI:v6];
      goto LABEL_43;
    }

    if ([v10 isEqual:@"oonAddressVetting"])
    {
      [(AAUIAppleAccountViewController *)self _handleOONAddressVettingActionURL:v6];
      goto LABEL_43;
    }

    if ([v10 isEqual:@"upgradeSecurityLevel"])
    {
      [(AAUIAppleAccountViewController *)self _handleUpgradeSecurityLevelActionURL:v6];
      goto LABEL_43;
    }

    if ([(AAUIAppleAccountViewController *)self _handleAuthKitURLWithPendingDictionary:v6])
    {
      v18 = _AAUILogSystem();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        sub_34EF8();
      }

      goto LABEL_42;
    }

    v19 = [(AAUIAppleAccountViewController *)self _familySpecifierProvider];
    v20 = [v19 handleURL:v6];

    if (v20)
    {
      v18 = _AAUILogSystem();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v27 = v10;
        v21 = "AAUIAppleAccountViewController Family specifier provider handled: %@";
LABEL_41:
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, v21, buf, 0xCu);
      }
    }

    else if ([(AAUISpecifierProvider *)self->_dmcReauthSpecifierProvider handleURL:v6])
    {
      v18 = _AAUILogSystem();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v27 = v10;
        v21 = "AAUIAppleAccountViewController DMC Reauth specifier provider handled: %@";
        goto LABEL_41;
      }
    }

    else
    {
      v22 = [(AAUIAppleAccountViewController *)self _storeSpecifierProvider];
      v23 = [v22 handleURL:v6];

      if (!v23)
      {
        if (!self->_tuiOptInSpecifierProvider || (objc_opt_respondsToSelector() & 1) == 0 || ![(AAUISpecifierProvider *)self->_tuiOptInSpecifierProvider handleURL:v6])
        {
          v24 = _AAUILogSystem();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v27 = v10;
            v28 = 2112;
            v29 = v6;
            _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "Unknown action (%@) sent to AAUIAppleAccountViewController. %@", buf, 0x16u);
          }

          v25.receiver = self;
          v25.super_class = AAUIAppleAccountViewController;
          [(AAUIAppleAccountViewController *)&v25 handleURL:v6 withCompletion:v7];
          goto LABEL_45;
        }

        v18 = _AAUILogSystem();
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_42;
        }

        *buf = 138412290;
        v27 = v10;
        v21 = "TUIOptInSpecifierProvider specifier provider handled: %@";
        goto LABEL_41;
      }

      v18 = _AAUILogSystem();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v27 = v10;
        v21 = "SKAccountPageSpecifierProvider specifier provider handled: %@";
        goto LABEL_41;
      }
    }

LABEL_42:

LABEL_43:
    if (v7)
    {
      v7[2](v7);
    }

LABEL_45:

    goto LABEL_46;
  }

  v14 = _AAUILogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    sub_34F34();
  }

  deferredURL = self->_deferredURL;
  if (!deferredURL)
  {
    v16 = objc_alloc_init(AAUIAppleAccountDeferredURL);
    v17 = self->_deferredURL;
    self->_deferredURL = v16;

    deferredURL = self->_deferredURL;
  }

  [(AAUIAppleAccountDeferredURL *)deferredURL setResourcesDictionary:v6];
LABEL_46:
}

- (void)_handleUpgradeSecurityLevelActionURL:(id)a3
{
  v4 = [a3 objectForKey:AKClientBundleIDKey];
  v5 = [CDPStateController alloc];
  v6 = +[CDPAccount sharedInstance];
  v7 = [v6 contextForPrimaryAccount];
  v8 = [v5 initWithContext:v7];

  if (([v8 isManateeAvailable:0] & 1) == 0)
  {
    v10 = [[AAUISpinnerViewController alloc] initWithNibName:0 bundle:0];
    v11 = [[UINavigationController alloc] initWithRootViewController:v10];
    v12 = [CDPUIDeviceToDeviceEncryptionFlowContext alloc];
    v13 = +[CDPAccount sharedInstance];
    v14 = [v13 primaryAccountAltDSID];
    v15 = [v12 initWithAltDSID:v14];

    [v15 setSecurityUpgradeContext:AKSecurityUpgradeContextKeychainSync];
    [v15 setDeviceToDeviceEncryptionUpgradeUIStyle:1];
    [v15 setDeviceToDeviceEncryptionUpgradeType:0];
    [v15 setPresentingViewController:v11];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_26260;
    v19[3] = &unk_59FC8;
    v20 = [[CDPUIDeviceToDeviceEncryptionHelper alloc] initWithContext:v15];
    v21 = v11;
    v22 = self;
    v23 = v4;
    v16 = v11;
    v17 = v20;
    [(AAUIAppleAccountViewController *)self presentViewController:v16 animated:1 completion:v19];

    goto LABEL_7;
  }

  v9 = _AAUILogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v18 = 0;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "_handleUpgradeSecurityLevelActionURL called when Manatee is already available", v18, 2u);
  }

  if (v4)
  {
    v10 = +[LSApplicationWorkspace defaultWorkspace];
    [v10 openApplicationWithBundleID:v4];
LABEL_7:
  }
}

- (void)_handleAuthkitFollowUpServerUI:(id)a3
{
  v4 = a3;
  v5 = _AAUILogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_34F70();
  }

  v6 = [v4 objectForKeyedSubscript:@"urlKey"];
  if (v6)
  {
    v7 = objc_alloc_init(AKExtensionlessFollowUpHelperContext);
    v8 = [(AAUIAppleAccountViewController *)self _appleAccount];
    v9 = [v8 aa_altDSID];
    [v7 setAltDSID:v9];

    [v7 setPresentingViewController:self];
    v10 = [v4 objectForKeyedSubscript:@"id"];
    [v7 setUniqueItemIdentifier:v10];

    [v7 setUrlKey:v6];
    v11 = objc_alloc_init(AKAppleIDFollowUpServerUIPresenter);
    if (objc_opt_respondsToSelector())
    {
      v12 = _AAUILogSystem();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        sub_34FE0();
      }

      [v11 presentServerUIWithContext:v7 withCompletion:&stru_5A0A8];
    }
  }

  else
  {
    v7 = _AAUILogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_3501C();
    }
  }
}

- (void)_handleCDPActionURL:(id)a3
{
  v4 = a3;
  v5 = _AAUILogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Received a CDP URL action. Redirecting to CDP", buf, 2u);
  }

  v6 = [AAUICDPHelper helperWithPresenter:self];
  v7 = +[PSNavBarSpinnerManager sharedSpinnerManager];
  v8 = [(AAUIAppleAccountViewController *)self navigationItem];
  [v7 startAnimatingInNavItem:v8 forIdentifier:@"cdpAction" hideBackButton:1];

  v9 = [(AAUIAppleAccountViewController *)self view];
  [v9 setUserInteractionEnabled:0];

  v10 = [v6 cdpStateControllerForPrimaryAccount];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_2678C;
  v11[3] = &unk_599B8;
  v11[4] = self;
  [v10 handleURLActionWithInfo:v4 completion:v11];
}

- (void)_handleiForgotActionURL:(id)a3
{
  v4 = _AAUILogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Received an iForgot redirect action. Will call to akd now...", v10, 2u);
  }

  v5 = objc_alloc_init(AKAppleIDAuthenticationInAppContext);
  [v5 setNeedsCredentialRecovery:1];
  [v5 setPresentingViewController:self];
  v6 = [(AAUIAppleAccountViewController *)self _appleAccount];
  v7 = [v6 username];
  [v5 setUsername:v7];

  [v5 setTriggeredByNotification:1];
  v8 = objc_alloc_init(AKAppleIDAuthenticationController);
  authController = self->_authController;
  self->_authController = v8;

  [(AKAppleIDAuthenticationController *)self->_authController authenticateWithContext:v5 completion:&stru_5A0E8];
}

- (void)_handleChangePasswordActionURL:(id)a3
{
  v4 = _AAUILogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Received a change password redirect action. Will call to akd now...", v10, 2u);
  }

  v5 = objc_alloc_init(AKAppleIDAuthenticationInAppContext);
  [v5 setNeedsPasswordChange:1];
  [v5 setPresentingViewController:self];
  v6 = [(AAUIAppleAccountViewController *)self _appleAccount];
  v7 = [v6 username];
  [v5 setUsername:v7];

  v8 = objc_alloc_init(AKAppleIDAuthenticationController);
  authController = self->_authController;
  self->_authController = v8;

  [(AKAppleIDAuthenticationController *)self->_authController authenticateWithContext:v5 completion:&stru_5A108];
}

- (void)_handleAuthActionURL:(id)a3
{
  v4 = a3;
  v5 = _AAUILogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Received an authentication redirect. Will call to akd now...", v10, 2u);
  }

  v6 = objc_alloc_init(AKAppleIDAuthenticationInAppContext);
  v7 = [v4 objectForKeyedSubscript:@"u"];

  [v6 setUsername:v7];
  [v6 setPresentingViewController:self];
  v8 = objc_alloc_init(AKAppleIDAuthenticationController);
  authController = self->_authController;
  self->_authController = v8;

  [(AKAppleIDAuthenticationController *)self->_authController authenticateWithContext:v6 completion:&stru_5A128];
}

- (void)_handleAccountRecoveryURL:(id)a3
{
  v4 = a3;
  v5 = _AAUILogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Handling URL to show account recovery settings....", v9, 2u);
  }

  v6 = [v4 objectForKey:@"highlight"];

  if (v6)
  {
    v7 = [v4 objectForKey:@"highlight"];
    v8 = _AAUILogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_35058();
    }

    [AAUISettingsHelper showAccountRecoveryFromViewController:self accountManager:self->_accountManager highlightRowIdentifier:v7];
  }

  else
  {
    [AAUISettingsHelper showAccountRecoveryFromViewController:self accountManager:self->_accountManager];
  }
}

- (void)_handleAccountBeneficiaryURL:(id)a3
{
  v4 = a3;
  v5 = _AAUILogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Handling URL to show account beneficiary settings.", buf, 2u);
  }

  v6 = [[AAUID2DEncryptionFlowContext alloc] initWithType:3];
  v7 = [[AAUIManateeStateValidator alloc] initWithFlowContext:v6 withPresentingViewController:self];
  v8 = [AAUILegacyContactsViewFactory createViewModelWithAccountManager:self->_accountManager];
  objc_initWeak(buf, v8);

  objc_initWeak(&location, self);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_27014;
  v11[3] = &unk_5A150;
  v9 = v7;
  v12 = v9;
  objc_copyWeak(&v15, &location);
  objc_copyWeak(&v16, buf);
  v10 = v4;
  v13 = v10;
  v14 = self;
  [v9 verifyAndRepairManateeWithCompletion:v11];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&v15);

  objc_destroyWeak(&location);
  objc_destroyWeak(buf);
}

- (void)_handleOONAddressVettingActionURL:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"potentialMatches"];
  v6 = [v4 objectForKeyedSubscript:@"sharedItem"];
  v7 = [v4 objectForKeyedSubscript:@"shareURL"];
  if (v5)
  {
    v8 = _AAUILogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = v5;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Found matches in URL dictionary: %@", buf, 0xCu);
    }

    v9 = [(__CFString *)v5 componentsSeparatedByString:@", "];
    v10 = [v9 mutableCopy];

    if ([v10 count])
    {
      v11 = 0;
      do
      {
        v12 = [v10 objectAtIndexedSubscript:v11];
        v13 = [v12 componentsSeparatedByString:@":"];
        [v10 setObject:v13 atIndexedSubscript:v11];

        ++v11;
      }

      while (v11 < [v10 count]);
    }

    [(AAUIAppleAccountViewController *)self _loadCloudKitSettingsBundleIfNeeded];
    v14 = NSClassFromString(@"CKVettingAddressSelectionController");
    if (v14)
    {
      if (v6 && v7)
      {
        v15 = v14;
        v16 = [NSURL URLWithString:v7];
        v17 = v16;
        if (!v16)
        {
          v28 = _AAUILogSystem();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v31 = v7;
            _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEFAULT, "Invalid URL from rawShareURL: %@", buf, 0xCu);
          }

          goto LABEL_24;
        }

        v34[0] = v10;
        v34[1] = v6;
        v34[2] = v16;
        v18 = [NSArray arrayWithObjects:v34 count:3];
        v19 = objc_alloc_init(v15);
        v29 = v18;
        v20 = v18;
        v21 = v19;
        [v19 performSelector:"setParameters:" withObject:v20];
        if (v21)
        {
          v22 = [[UINavigationController alloc] initWithRootViewController:v21];
          [v22 setDelegate:self];
          v23 = +[UIDevice currentDevice];
          -[NSObject setModalPresentationStyle:](v22, "setModalPresentationStyle:", 2 * ([v23 userInterfaceIdiom] != 0));

          v24 = [(AAUIAppleAccountViewController *)self navigationController];
          [v24 presentViewController:v22 animated:1 completion:0];
        }

        else
        {
          v22 = _AAUILogSystem();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v31 = @"CKVettingAddressSelectionController";
            v32 = 2112;
            v28 = v29;
            v33 = v29;
            _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "Unable to instantiate class named %@ using params %@", buf, 0x16u);
LABEL_23:

LABEL_24:
            goto LABEL_25;
          }
        }

        v28 = v29;
        goto LABEL_23;
      }

      v17 = _AAUILogSystem();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v25 = "Unexpectedly found sharedItem or rawShareURL to be null.";
        v26 = v17;
        v27 = 2;
        goto LABEL_17;
      }
    }

    else
    {
      v17 = _AAUILogSystem();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v31 = @"CKVettingAddressSelectionController";
        v25 = "Unable to load class named %@, is CloudKit.bundle in place?";
        v26 = v17;
        v27 = 12;
LABEL_17:
        _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, v25, buf, v27);
      }
    }

LABEL_25:
  }
}

- (void)_loadCloudKitSettingsBundleIfNeeded
{
  v2 = UISystemRootDirectory();
  v3 = [v2 stringByAppendingPathComponent:@"System/Library/PreferenceBundles/AccountSettings"];

  v4 = [v3 stringByAppendingPathComponent:@"CloudKitSettings.bundle"];
  v5 = [NSBundle bundleWithPath:v4];
  if (([v5 isLoaded] & 1) == 0)
  {
    v6 = _AAUILogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "CloudKit settings bundle not loaded. Loading...", v7, 2u);
    }

    [v5 load];
  }
}

- (id)accountsForAccountManager:(id)a3
{
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = [(AAUIAppleAccountViewController *)self specifier];
  v6 = [v5 userInfo];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = [(AAUIAppleAccountViewController *)self specifier];
    v9 = [v8 userInfo];

    v10 = [v9 objectForKey:ACUIAccountKey];

    if (v10)
    {
      v11 = [(AAUIAppleAccountViewController *)self accountStore];
      v12 = [v10 aa_altDSID];
      v13 = [v11 aa_appleAccountWithAltDSID:v12];
      [v4 setObject:v13 forKeyedSubscript:AIDAServiceTypeCloud];
LABEL_12:

      goto LABEL_13;
    }
  }

  v14 = AIDAServiceTypeCloud;
  v10 = [(AIDAServiceOwnerProtocol *)self->_serviceOwnersManager accountForService:AIDAServiceTypeCloud];
  if (v10)
  {
    [v4 setObject:v10 forKeyedSubscript:v14];
  }

  v15 = AIDAServiceTypeStore;
  v11 = [(AIDAServiceOwnerProtocol *)self->_serviceOwnersManager accountForService:AIDAServiceTypeStore];
  if (v11)
  {
    [v4 setObject:v11 forKeyedSubscript:v15];
  }

  if (v10)
  {
    v12 = [(AIDAServiceOwnerProtocol *)self->_serviceOwnersManager altDSIDForAccount:v10 service:v14];
    v13 = [(AIDAServiceOwnerProtocol *)self->_serviceOwnersManager DSIDForAccount:v10 service:v14];
    v16 = AIDAServiceTypeGameCenter;
    v17 = [(AAUIAppleAccountViewController *)self _accountForService:AIDAServiceTypeGameCenter matchingAltDSID:v12 DSID:v13];
    if (v17)
    {
      [v4 setObject:v17 forKeyedSubscript:v16];
    }

    goto LABEL_12;
  }

LABEL_13:

  v18 = [v4 copy];

  return v18;
}

- (id)_accountForService:(id)a3 matchingAltDSID:(id)a4 DSID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(AIDAServiceOwnerProtocol *)self->_serviceOwnersManager accountForService:v8];
  if (v11)
  {
    v12 = [(AIDAServiceOwnerProtocol *)self->_serviceOwnersManager altDSIDForAccount:v11 service:v8];
    if ([v12 isEqualToString:v9])
    {
      v13 = v11;
    }

    else
    {
      v14 = [(AIDAServiceOwnerProtocol *)self->_serviceOwnersManager DSIDForAccount:v11 service:v8];
      if ([v14 isEqualToString:v10])
      {
        v13 = v11;
      }

      else
      {
        v13 = 0;
      }
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)specifierProvider:(id)a3 showViewController:(id)a4
{
  v7 = a3;
  v6 = a4;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || self->_storeSpecifier == v7)
  {
    [(AAUIAppleAccountViewController *)self presentViewController:v6 animated:1 completion:0];
  }

  else
  {
    [(AAUIAppleAccountViewController *)self showController:v6 animate:1];
  }
}

- (void)specifierProvider:(id)a3 willBeginLoadingSpecifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if ([(AAUIAppleAccountViewController *)self _hasActiveSpecifier])
  {
    v8 = _AAUILogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_351B0();
    }
  }

  else
  {
    [(AAUIAppleAccountViewController *)self _startSpinnerInSpecifier:v7];
  }
}

- (void)specifierProvider:(id)a3 didFinishLoadingSpecifier:(id)a4
{
  v5 = a3;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if ([(AAUIAppleAccountViewController *)self _hasActiveSpecifier])
  {
    [(AAUIAppleAccountViewController *)self _stopSpinnerInActiveSpecifier];
  }

  else
  {
    v6 = _AAUILogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_35220();
    }
  }
}

- (void)insertSpecifier:(id)a3 afterSpecifierNamed:(id)a4 animated:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v9 = _AAUILogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(AAUIAppleAccountViewController *)self specifierForID:v8];
    v16 = 138412546;
    v17 = v7;
    v18 = 2112;
    v19 = v10;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Inserting new specifier %@ after %@", &v16, 0x16u);
  }

  if ([*&self->ACUIAccountConfigurationViewController_opaque[OBJC_IVAR___PSListController__specifiers] containsObject:v7])
  {
    v11 = _AAUILogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      v12 = "Did not insert new specifier because it's already present";
      v13 = v11;
      v14 = 2;
LABEL_8:
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, v12, &v16, v14);
    }
  }

  else
  {
    v15 = [(AAUIAppleAccountViewController *)self specifierForID:v8];
    [(AAUIAppleAccountViewController *)self insertSpecifier:v7 afterSpecifier:v15 animated:1];

    v11 = _AAUILogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v7;
      v12 = "Inserted new specifier %@";
      v13 = v11;
      v14 = 12;
      goto LABEL_8;
    }
  }
}

- (void)reloadSpecifierForProvider:(id)a3 identifier:(id)a4
{
  v5 = a4;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v6 = _AAUILogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Reloading specifier with ID: %@", &v7, 0xCu);
  }

  [(AAUIAppleAccountViewController *)self reloadSpecifierID:v5];
}

- (void)_startObservingAccountStoreChanges
{
  objc_initWeak(&location, self);
  accountManager = self->_accountManager;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_280B4;
  v4[3] = &unk_5A178;
  objc_copyWeak(&v5, &location);
  [(AIDAAccountManager *)accountManager addAccountChangeObserver:self handler:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = [(AAUIAppleAccountViewController *)self shouldShowRecoveryContactUpsellTip];
  v7 = 0;
  if (a4 == 1 && v6)
  {
    v8 = [(AAUIAppleAccountViewController *)self _recoveryContactUpsellViewController];
    v7 = [v8 view];
  }

  return v7;
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(AAUIAppleAccountViewController *)self _hasActiveSpecifier])
  {
    v8 = 0;
  }

  else if ([-[AAUIAppleAccountViewController superclass](self "superclass")])
  {
    v10.receiver = self;
    v10.super_class = AAUIAppleAccountViewController;
    v8 = [(AAUIAppleAccountViewController *)&v10 tableView:v6 shouldHighlightRowAtIndexPath:v7];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)_startObservingQuotaChangeNotifications
{
  if (!self->_quotaChangeNotificationObserver)
  {
    objc_initWeak(&location, self);
    v3 = +[NSNotificationCenter defaultCenter];
    v4 = +[NSOperationQueue mainQueue];
    v5 = ICQQuotaDidChangeNotification;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_285DC;
    v8[3] = &unk_59940;
    objc_copyWeak(&v9, &location);
    v6 = [v3 addObserverForName:v5 object:0 queue:v4 usingBlock:v8];
    quotaChangeNotificationObserver = self->_quotaChangeNotificationObserver;
    self->_quotaChangeNotificationObserver = v6;

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

- (void)_stopObservingQuotaChangeNotifications
{
  if (self->_quotaChangeNotificationObserver)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 removeObserver:self->_quotaChangeNotificationObserver];

    quotaChangeNotificationObserver = self->_quotaChangeNotificationObserver;
    self->_quotaChangeNotificationObserver = 0;
  }
}

@end