@interface PassbookSettingsListController
- (BOOL)isPresentingViewController;
- (Class)tableViewClass;
- (PassbookSettingsListController)init;
- (id)_appleCardUpsellAlertWithAccount:(id)a3;
- (id)_passDetailsViewControllerForPass:(id)a3;
- (id)peerPaymentPass;
- (id)specifiers;
- (void)_checkManateeCapabilityForFeatureApplication:(id)a3 completion:(id)a4;
- (void)_presentAccountUserInvitation:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)_presentManateeUpgradeForFeatureApplication:(id)a3 completion:(id)a4;
- (void)_refreshPasses;
- (void)dealloc;
- (void)handleDeepLinkResourceDictionary:(id)a3 withCompletion:(id)a4;
- (void)openDailyCashForDateComponents:(id)a3 feature:(unint64_t)a4;
- (void)openDailyCashForDateComponents:(id)a3 onPass:(id)a4;
- (void)presentAccountForFeature:(unint64_t)a3 destination:(unint64_t)a4 fundingSourceIdentifier:(id)a5 animated:(BOOL)a6;
- (void)presentAccountUserDetailsWithPass:(id)a3 presentationStyle:(int64_t)a4 forAccountUserAltDSID:(id)a5 animated:(BOOL)a6;
- (void)presentAccountUserInvitationForPass:(id)a3 presentationStyle:(int64_t)a4 withStatementIdentifier:(id)a5 animated:(BOOL)a6;
- (void)presentAuthorizationFlowAnimated:(BOOL)a3 completion:(id)a4;
- (void)presentCreditPaymentPassNumbersViewControllerForPass:(id)a3 presentationStyle:(int64_t)a4 animated:(BOOL)a5;
- (void)presentImportFPANCardConsentAnimated:(BOOL)a3 completion:(id)a4;
- (void)presentPeerPaymentTransferToBankWithPass:(id)a3;
- (void)presentStatementDetailsViewControllerForPass:(id)a3 presentationStyle:(int64_t)a4 withIdentifier:(id)a5 animated:(BOOL)a6;
- (void)presentTransactionDetailsForTransaction:(id)a3 transactionSourceType:(unint64_t)a4 confirmPaymentOfferPlan:(BOOL)a5;
- (void)registerTableCellClass:(Class)a3 forCellReuseIdentifier:(id)a4;
- (void)requestResetToRootWithSettingsController:(id)a3;
- (void)settingsController:(id)a3 requestShowPeerPaymentAssociatedAccountsFlowWithController:(id)a4 withPresentationContext:(id)a5;
- (void)settingsController:(id)a3 requestsAddCardPreflightWithCompletion:(id)a4;
- (void)settingsController:(id)a3 requestsAuthenticationChallengeForAppleAccountInformation:(id)a4 completion:(id)a5;
- (void)settingsController:(id)a3 requestsPresentAuthorizationFlowWithRedirectURL:(id)a4 animated:(BOOL)a5 completion:(id)a6;
- (void)settingsController:(id)a3 requestsPresentAutofillInformationWithSpecifier:(id)a4 cardDescriptors:(id)a5 authentication:(id)a6;
- (void)settingsController:(id)a3 requestsPresentSecurityRepairFlowWithSecurityCapabilities:(unint64_t)a4 completion:(id)a5;
- (void)settingsControllerRequestsPresentPrivacyWithPresenter:(id)a3;
- (void)viewDidLoad;
- (void)willMoveToParentViewController:(id)a3;
@end

@implementation PassbookSettingsListController

- (PassbookSettingsListController)init
{
  v13.receiver = self;
  v13.super_class = PassbookSettingsListController;
  v2 = [(PassbookSettingsListController *)&v13 init];
  if (v2)
  {
    v3 = objc_alloc_init(PKPassbookSettingsDefaultBehavior);
    defaultBehavior = v2->_defaultBehavior;
    v2->_defaultBehavior = v3;

    v5 = [[PKPassbookSettingsController alloc] initWithDelegate:v2 dataSource:v2->_defaultBehavior context:0];
    settingsController = v2->_settingsController;
    v2->_settingsController = v5;

    v7 = [[PKSettingsDeepLinkController alloc] initWithDataSource:v2 delegate:v2];
    deepLinkController = v2->_deepLinkController;
    v2->_deepLinkController = v7;

    v2->_showUpdateRequired = +[PKSecureElement isInFailForward];
    v9 = +[PKAccountService sharedInstance];
    accountService = v2->_accountService;
    v2->_accountService = v9;

    v11 = +[NSNotificationCenter defaultCenter];
    [v11 addObserver:v2 selector:"_refreshPasses" name:PKPassLibraryDidChangeNotification object:0];
  }

  return v2;
}

- (void)dealloc
{
  [(PKPassbookSettingsController *)self->_settingsController setDelegate:0];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PassbookSettingsListController;
  [(PassbookSettingsListController *)&v4 dealloc];
}

- (void)willMoveToParentViewController:(id)a3
{
  v4.receiver = self;
  v4.super_class = PassbookSettingsListController;
  [(PassbookSettingsListController *)&v4 willMoveToParentViewController:a3];
  if (self->_startedReporting)
  {
    self->_startedReporting = 0;
    [PKAnalyticsReporter endSubjectReporting:PKAnalyticsSubjectWallet];
  }
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = PassbookSettingsListController;
  [(PassbookSettingsListController *)&v3 viewDidLoad];
  [(PKPassbookSettingsController *)self->_settingsController viewDidLoad];
}

- (Class)tableViewClass
{
  if (self->_showUpdateRequired)
  {
    v2 = PKSoftwareUpdateTableView_ptr;
  }

  else
  {
    v2 = UITableView_ptr;
  }

  v3 = *v2;
  v4 = objc_opt_class();

  return v4;
}

- (void)handleDeepLinkResourceDictionary:(id)a3 withCompletion:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = v6;
  if (self->_showUpdateRequired)
  {
    if (v6)
    {
      (*(v6 + 2))(v6);
    }
  }

  else
  {
    [(PKPassbookSettingsController *)self->_settingsController willHandleURL];
    [(PKSettingsDeepLinkController *)self->_deepLinkController handleDeepLinkResourceDictionary:v8 withCompletion:v7];
  }
}

- (id)_appleCardUpsellAlertWithAccount:(id)a3
{
  v4 = [a3 feature];
  v5 = PKLocalizedFeatureString();
  v6 = PKLocalizedFeatureString();
  v7 = [UIAlertController alertControllerWithTitle:v5 message:v6 preferredStyle:1];

  v8 = PKLocalizedPaymentString(@"ADD_CARD");
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_3C94;
  v13[3] = &unk_14858;
  v13[4] = self;
  v13[5] = v4;
  v9 = [UIAlertAction actionWithTitle:v8 style:0 handler:v13];

  v10 = PKLocalizedString(@"CANCEL");
  v11 = [UIAlertAction actionWithTitle:v10 style:1 handler:0];

  PKApplyDefaultIconToAlertController();
  [v7 addAction:v9];
  [v7 addAction:v11];

  return v7;
}

- (id)specifiers
{
  v2 = OBJC_IVAR___PSListController__specifiers;
  v3 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v5 = objc_alloc_init(NSMutableArray);
    v6 = *&self->PSListController_opaque[v2];
    *&self->PSListController_opaque[v2] = v5;

    v3 = *&self->PSListController_opaque[v2];
    if (!self->_showUpdateRequired)
    {
      v7 = [(PKPassbookSettingsController *)self->_settingsController specifiers];
      v8 = [v3 arrayByAddingObjectsFromArray:v7];
      v9 = *&self->PSListController_opaque[v2];
      *&self->PSListController_opaque[v2] = v8;

      v3 = *&self->PSListController_opaque[v2];
    }
  }

  return v3;
}

- (void)_refreshPasses
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_3E4C;
  block[3] = &unk_14750;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)presentCreditPaymentPassNumbersViewControllerForPass:(id)a3 presentationStyle:(int64_t)a4 animated:(BOOL)a5
{
  v5 = [(PassbookSettingsListController *)self _presentPassDetailsViewControllerForPass:a3 presentationStyle:2 animated:0];
  [v5 presentCardNumbers];
}

- (void)presentStatementDetailsViewControllerForPass:(id)a3 presentationStyle:(int64_t)a4 withIdentifier:(id)a5 animated:(BOOL)a6
{
  v8 = a5;
  v9 = [(PassbookSettingsListController *)self _presentPassDetailsViewControllerForPass:a3 presentationStyle:2 animated:0];
  [v9 showStatementDetailsWithIdentifier:v8];
}

- (void)presentAccountUserDetailsWithPass:(id)a3 presentationStyle:(int64_t)a4 forAccountUserAltDSID:(id)a5 animated:(BOOL)a6
{
  v8 = a5;
  v9 = [(PassbookSettingsListController *)self _presentPassDetailsViewControllerForPass:a3 presentationStyle:2 animated:0];
  [v9 presentAccountUserDetailsForAccountUserAltDSID:v8];
}

- (void)presentAccountUserInvitationForPass:(id)a3 presentationStyle:(int64_t)a4 withStatementIdentifier:(id)a5 animated:(BOOL)a6
{
  v8 = a5;
  v9 = [(PassbookSettingsListController *)self _presentPassDetailsViewControllerForPass:a3 presentationStyle:2 animated:0];
  [v9 presentAccountUserInvitationWithIdentifier:v8];
}

- (void)openDailyCashForDateComponents:(id)a3 onPass:(id)a4
{
  v7 = a3;
  v6 = [(PassbookSettingsListController *)self _passDetailsViewControllerForPass:a4];
  if (v6)
  {
    [(PassbookSettingsListController *)self showController:v6 animate:1];
    [v6 presentDailyCashForDateComponents:v7];
  }
}

- (void)openDailyCashForDateComponents:(id)a3 feature:(unint64_t)a4
{
  v6 = a3;
  if (a4 == 5)
  {
    objc_initWeak(location, self);
    accountService = self->_accountService;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_43E4;
    v9[3] = &unk_148A8;
    objc_copyWeak(&v11, location);
    v10 = v6;
    [(PKAccountService *)accountService defaultAccountForFeature:5 completion:v9];

    objc_destroyWeak(&v11);
    objc_destroyWeak(location);
  }

  else
  {
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Attempted to present daily cash for an unsupported feature", location, 2u);
    }
  }
}

- (void)presentImportFPANCardConsentAnimated:(BOOL)a3 completion:(id)a4
{
  v5 = a4;
  settingsController = self->_settingsController;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_4628;
  v8[3] = &unk_147C8;
  v9 = v5;
  v7 = v5;
  [(PKPassbookSettingsController *)settingsController presentFPANAdditionFlowWithPreflight:0 selectedCredentials:0 withCompletion:v8];
}

- (void)presentTransactionDetailsForTransaction:(id)a3 transactionSourceType:(unint64_t)a4 confirmPaymentOfferPlan:(BOOL)a5
{
  v8 = a3;
  v9 = +[PKPaymentService paymentService];
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      v19 = [v8 accountIdentifier];
      v20 = [v8 altDSID];
      if (v20)
      {
        objc_initWeak(location, self);
        accountService = self->_accountService;
        v26[0] = _NSConcreteStackBlock;
        v26[1] = 3221225472;
        v26[2] = sub_51DC;
        v26[3] = &unk_148A8;
        objc_copyWeak(&v28, location);
        v27 = v8;
        [(PKAccountService *)accountService accountWithIdentifier:v19 completion:v26];

        objc_destroyWeak(&v28);
        objc_destroyWeak(location);
      }

      else
      {
        v22 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(location[0]) = 138412290;
          *(location + 4) = v8;
          _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "There is no altDSID defined for account user on tranasction %@", location, 0xCu);
        }
      }
    }

    else if (a4 == 3)
    {
      v16 = [v8 accountIdentifier];
      objc_initWeak(location, self);
      v17 = self->_accountService;
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_5374;
      v23[3] = &unk_148A8;
      objc_copyWeak(&v25, location);
      v24 = v8;
      [(PKAccountService *)v17 accountWithIdentifier:v16 completion:v23];

      objc_destroyWeak(&v25);
      objc_destroyWeak(location);
    }
  }

  else if (a4)
  {
    if (a4 == 1)
    {
      v10 = [v8 accountIdentifier];
      v11 = +[PKPeerPaymentService sharedInstance];
      v12 = [v11 account];

      v13 = [v12 peerPaymentAccountWithIdentifier:v10];
      v14 = v13;
      if (v13)
      {
        v29[0] = _NSConcreteStackBlock;
        v29[1] = 3221225472;
        v29[2] = sub_4DD4;
        v29[3] = &unk_14948;
        v30 = v13;
        v31 = self;
        v32 = v8;
        [v9 familyMembersWithCompletion:v29];

        v15 = v30;
      }

      else
      {
        v15 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(location[0]) = 138412290;
          *(location + 4) = v8;
          _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "Cannot find a peer payment account for transaction %@", location, 0xCu);
        }
      }
    }
  }

  else
  {
    objc_initWeak(location, self);
    v18 = [v8 identifier];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_4C48;
    v33[3] = &unk_148F8;
    objc_copyWeak(&v35, location);
    v36 = a5;
    v34 = v8;
    [v9 passUniqueIdentifierForTransactionWithIdentifier:v18 completion:v33];

    objc_destroyWeak(&v35);
    objc_destroyWeak(location);
  }
}

- (void)presentPeerPaymentTransferToBankWithPass:(id)a3
{
  v4 = [(PassbookSettingsListController *)self _passDetailsViewControllerForPass:a3];
  if (v4)
  {
    v5 = v4;
    [(PassbookSettingsListController *)self showController:v4 animate:0];
    [v5 presentTransferToBank];
  }

  _objc_release_x1();
}

- (void)presentAccountForFeature:(unint64_t)a3 destination:(unint64_t)a4 fundingSourceIdentifier:(id)a5 animated:(BOOL)a6
{
  v9 = a5;
  if (a3 == 5)
  {
    *buf = 0;
    v25 = buf;
    v26 = 0x3032000000;
    v27 = sub_5930;
    v28 = sub_5940;
    v29 = 0;
    v22[0] = 0;
    v22[1] = v22;
    v22[2] = 0x3032000000;
    v22[3] = sub_5930;
    v22[4] = sub_5940;
    v23 = 0;
    v10 = objc_alloc_init(PKAsyncUnaryOperationComposer);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_5948;
    v21[3] = &unk_14998;
    v21[5] = buf;
    v21[6] = 5;
    v21[4] = self;
    [v10 addOperation:v21];
    if ([v9 length])
    {
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_5AA8;
      v17[3] = &unk_149E8;
      v17[4] = self;
      v18 = v9;
      v19 = buf;
      v20 = v22;
      [v10 addOperation:v17];
    }

    objc_initWeak(&location, self);
    v11 = +[NSNull null];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_5C18;
    v14[3] = &unk_14A38;
    objc_copyWeak(v15, &location);
    v15[1] = a4;
    v14[4] = buf;
    v14[5] = v22;
    v12 = [v10 evaluateWithInput:v11 completion:v14];

    objc_destroyWeak(v15);
    objc_destroyWeak(&location);

    _Block_object_dispose(v22, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v13 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Attempted to present an unsupported feature", buf, 2u);
    }
  }
}

- (id)_passDetailsViewControllerForPass:(id)a3
{
  if (a3)
  {
    settingsController = self->_settingsController;
    v5 = a3;
    v6 = [(PKPassbookSettingsController *)settingsController rendererStateForPaymentPass:v5];
    v7 = [PKPaymentPassDetailViewController alloc];
    v8 = +[PKPaymentWebService sharedService];
    v9 = [(PKPassbookSettingsDefaultBehavior *)self->_defaultBehavior peerPaymentDataSource];
    v10 = [v9 peerPaymentWebService];
    v11 = [(PKPassbookSettingsDefaultBehavior *)self->_defaultBehavior passLibraryDataProvider];
    v12 = [(PKPassbookSettingsDefaultBehavior *)self->_defaultBehavior paymentDataProvider];
    v13 = [v7 initWithPass:v5 group:0 groupsController:0 webService:v8 peerPaymentWebService:v10 style:1 passLibraryDataProvider:v11 paymentServiceDataProvider:v12 rendererState:v6 context:0];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)peerPaymentPass
{
  v3 = [(PKPassbookSettingsDefaultBehavior *)self->_defaultBehavior peerPaymentDataSource];
  v4 = [v3 peerPaymentWebService];
  v5 = [v4 peerPaymentService];
  v6 = [v5 account];
  v7 = [v6 associatedPassUniqueID];

  v8 = [(PKPassbookSettingsController *)self->_settingsController passWithUniqueIdentifier:v7];

  return v8;
}

- (void)settingsController:(id)a3 requestsAddCardPreflightWithCompletion:(id)a4
{
  v4 = a4;
  v5 = +[PKPaymentWebService sharedService];
  v6 = [[PKPaymentProvisioningController alloc] initWithWebService:v5];
  [v6 setAllowProductsInUnsupportedRegion:1];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_611C;
  v9[3] = &unk_14A60;
  v10 = v6;
  v11 = v4;
  v7 = v6;
  v8 = v4;
  [v7 preflightWithCompletion:v9];
}

- (BOOL)isPresentingViewController
{
  v2 = [(PassbookSettingsListController *)self presentedViewController];
  v3 = v2 != 0;

  return v3;
}

- (void)settingsControllerRequestsPresentPrivacyWithPresenter:(id)a3
{
  v4 = a3;
  [v4 setPresentingViewController:self];
  if ([(PassbookSettingsListController *)self pkui_userInterfaceIdiomSupportsLargeLayouts])
  {
    [v4 setModalPresentationStyle:2];
  }

  [v4 present];
}

- (void)settingsController:(id)a3 requestsPresentSecurityRepairFlowWithSecurityCapabilities:(unint64_t)a4 completion:(id)a5
{
  v7 = a5;
  v11 = [[PKSecurityCapabilitiesController alloc] initWithRequirements:a4 feature:1 context:3];
  v8 = [(PassbookSettingsListController *)self navigationController];
  if (v8)
  {
    v9 = [(PassbookSettingsListController *)self navigationController];
  }

  else
  {
    v9 = self;
  }

  v10 = v9;

  [v11 presentSecurityRepairFlowWithPresentingViewController:v10 completion:v7];
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
  v14[2] = sub_6554;
  v14[3] = &unk_14AD8;
  v14[4] = self;
  v15 = v7;
  v13 = v7;
  [v12 authenticateWithContext:v9 completion:v14];
}

- (void)registerTableCellClass:(Class)a3 forCellReuseIdentifier:(id)a4
{
  v6 = a4;
  v7 = [(PassbookSettingsListController *)self table];
  [v7 registerClass:a3 forCellReuseIdentifier:v6];
}

- (void)requestResetToRootWithSettingsController:(id)a3
{
  v4 = [(PassbookSettingsListController *)self navigationController];
  if ([v4 pk_settings_useStateDrivenNavigation])
  {
    [v4 pk_settings_popToRootViewController];
  }

  else
  {
    v3 = [v4 popToRootViewControllerAnimated:1];
  }
}

- (void)settingsController:(id)a3 requestShowPeerPaymentAssociatedAccountsFlowWithController:(id)a4 withPresentationContext:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(PassbookSettingsListController *)self navigationController];
  [v8 presentAssociatedAccountsFlowWithPresentationContext:v7 fromNavigationController:v9];
}

- (void)settingsController:(id)a3 requestsPresentAutofillInformationWithSpecifier:(id)a4 cardDescriptors:(id)a5 authentication:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a3;
  v12 = [(PassbookSettingsListController *)self traitCollection];
  [PKPassbookSettingsNavigationPathBuilder appendAutofillViewNavigationPathToTraitCollection:v12 descriptors:v10 authentication:v9 settingsController:v11];
}

- (void)settingsController:(id)a3 requestsPresentAuthorizationFlowWithRedirectURL:(id)a4 animated:(BOOL)a5 completion:(id)a6
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_6B08;
  v10[3] = &unk_14B00;
  v11 = a4;
  v12 = a6;
  v8 = v12;
  v9 = v11;
  [(PassbookSettingsListController *)self presentAuthorizationFlowAnimated:1 completion:v10];
}

- (void)presentAuthorizationFlowAnimated:(BOOL)a3 completion:(id)a4
{
  v6 = a4;
  objc_initWeak(&location, self);
  v7 = objc_alloc_init(off_19560());
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_6C70;
  v9[3] = &unk_14B50;
  v8 = v6;
  v10 = v8;
  objc_copyWeak(&v11, &location);
  v12 = a3;
  [v7 authorizationSessionWithCompletion:v9];
  objc_destroyWeak(&v11);

  objc_destroyWeak(&location);
}

- (void)_presentAccountUserInvitation:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_7540;
  v17[3] = &unk_14C68;
  v17[4] = self;
  v10 = v8;
  v20 = a4;
  v18 = v10;
  v19 = v9;
  v11 = v9;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_7950;
  v14[3] = &unk_14C90;
  v15 = v10;
  v16 = objc_retainBlock(v17);
  v14[4] = self;
  v12 = v10;
  v13 = v16;
  [(PassbookSettingsListController *)self _checkManateeCapabilityForFeatureApplication:v12 completion:v14];
}

- (void)_checkManateeCapabilityForFeatureApplication:(id)a3 completion:(id)a4
{
  v6 = a4;
  if (v6)
  {
    v7 = a3;
    v8 = [PKSecurityCapabilitiesController alloc];
    v9 = [v7 feature];

    v10 = [v8 initWithRequirements:8 feature:v9 context:3];
    securityCapabilitiesController = self->_securityCapabilitiesController;
    self->_securityCapabilitiesController = v10;

    v12 = self->_securityCapabilitiesController;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_7C4C;
    v13[3] = &unk_14CE0;
    v14 = v6;
    [(PKSecurityCapabilitiesController *)v12 isEnabledForSecuirtyRequirementsWithCompletion:v13];
  }
}

- (void)_presentManateeUpgradeForFeatureApplication:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if (v7)
  {
    v8 = [[PKSecurityCapabilitiesController alloc] initWithRequirements:8 feature:objc_msgSend(v6 context:{"feature"), 3}];
    securityCapabilitiesController = self->_securityCapabilitiesController;
    self->_securityCapabilitiesController = v8;

    v10 = [(PassbookSettingsListController *)self navigationController];
    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Presenting hsa2 flow for account user invitation", buf, 2u);
    }

    v12 = self->_securityCapabilitiesController;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_7E74;
    v13[3] = &unk_14D30;
    v13[4] = self;
    v14 = v6;
    v15 = v7;
    [(PKSecurityCapabilitiesController *)v12 presentSecurityRepairFlowWithPresentingViewController:v10 completion:v13];
  }
}

@end