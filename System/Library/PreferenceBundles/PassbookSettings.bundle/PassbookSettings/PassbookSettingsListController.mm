@interface PassbookSettingsListController
- (BOOL)isPresentingViewController;
- (Class)tableViewClass;
- (PassbookSettingsListController)init;
- (id)_appleCardUpsellAlertWithAccount:(id)account;
- (id)_passDetailsViewControllerForPass:(id)pass;
- (id)peerPaymentPass;
- (id)specifiers;
- (void)_checkManateeCapabilityForFeatureApplication:(id)application completion:(id)completion;
- (void)_presentAccountUserInvitation:(id)invitation animated:(BOOL)animated completion:(id)completion;
- (void)_presentManateeUpgradeForFeatureApplication:(id)application completion:(id)completion;
- (void)_refreshPasses;
- (void)dealloc;
- (void)handleDeepLinkResourceDictionary:(id)dictionary withCompletion:(id)completion;
- (void)openDailyCashForDateComponents:(id)components feature:(unint64_t)feature;
- (void)openDailyCashForDateComponents:(id)components onPass:(id)pass;
- (void)presentAccountForFeature:(unint64_t)feature destination:(unint64_t)destination fundingSourceIdentifier:(id)identifier animated:(BOOL)animated;
- (void)presentAccountUserDetailsWithPass:(id)pass presentationStyle:(int64_t)style forAccountUserAltDSID:(id)d animated:(BOOL)animated;
- (void)presentAccountUserInvitationForPass:(id)pass presentationStyle:(int64_t)style withStatementIdentifier:(id)identifier animated:(BOOL)animated;
- (void)presentAuthorizationFlowAnimated:(BOOL)animated completion:(id)completion;
- (void)presentCreditPaymentPassNumbersViewControllerForPass:(id)pass presentationStyle:(int64_t)style animated:(BOOL)animated;
- (void)presentImportFPANCardConsentAnimated:(BOOL)animated completion:(id)completion;
- (void)presentPeerPaymentTransferToBankWithPass:(id)pass;
- (void)presentStatementDetailsViewControllerForPass:(id)pass presentationStyle:(int64_t)style withIdentifier:(id)identifier animated:(BOOL)animated;
- (void)presentTransactionDetailsForTransaction:(id)transaction transactionSourceType:(unint64_t)type confirmPaymentOfferPlan:(BOOL)plan;
- (void)registerTableCellClass:(Class)class forCellReuseIdentifier:(id)identifier;
- (void)requestResetToRootWithSettingsController:(id)controller;
- (void)settingsController:(id)controller requestShowPeerPaymentAssociatedAccountsFlowWithController:(id)withController withPresentationContext:(id)context;
- (void)settingsController:(id)controller requestsAddCardPreflightWithCompletion:(id)completion;
- (void)settingsController:(id)controller requestsAuthenticationChallengeForAppleAccountInformation:(id)information completion:(id)completion;
- (void)settingsController:(id)controller requestsPresentAuthorizationFlowWithRedirectURL:(id)l animated:(BOOL)animated completion:(id)completion;
- (void)settingsController:(id)controller requestsPresentAutofillInformationWithSpecifier:(id)specifier cardDescriptors:(id)descriptors authentication:(id)authentication;
- (void)settingsController:(id)controller requestsPresentSecurityRepairFlowWithSecurityCapabilities:(unint64_t)capabilities completion:(id)completion;
- (void)settingsControllerRequestsPresentPrivacyWithPresenter:(id)presenter;
- (void)viewDidLoad;
- (void)willMoveToParentViewController:(id)controller;
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

- (void)willMoveToParentViewController:(id)controller
{
  v4.receiver = self;
  v4.super_class = PassbookSettingsListController;
  [(PassbookSettingsListController *)&v4 willMoveToParentViewController:controller];
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

- (void)handleDeepLinkResourceDictionary:(id)dictionary withCompletion:(id)completion
{
  dictionaryCopy = dictionary;
  completionCopy = completion;
  v7 = completionCopy;
  if (self->_showUpdateRequired)
  {
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy);
    }
  }

  else
  {
    [(PKPassbookSettingsController *)self->_settingsController willHandleURL];
    [(PKSettingsDeepLinkController *)self->_deepLinkController handleDeepLinkResourceDictionary:dictionaryCopy withCompletion:v7];
  }
}

- (id)_appleCardUpsellAlertWithAccount:(id)account
{
  feature = [account feature];
  v5 = PKLocalizedFeatureString();
  v6 = PKLocalizedFeatureString();
  v7 = [UIAlertController alertControllerWithTitle:v5 message:v6 preferredStyle:1];

  v8 = PKLocalizedPaymentString(@"ADD_CARD");
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_3C94;
  v13[3] = &unk_14858;
  v13[4] = self;
  v13[5] = feature;
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
      specifiers = [(PKPassbookSettingsController *)self->_settingsController specifiers];
      v8 = [v3 arrayByAddingObjectsFromArray:specifiers];
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

- (void)presentCreditPaymentPassNumbersViewControllerForPass:(id)pass presentationStyle:(int64_t)style animated:(BOOL)animated
{
  v5 = [(PassbookSettingsListController *)self _presentPassDetailsViewControllerForPass:pass presentationStyle:2 animated:0];
  [v5 presentCardNumbers];
}

- (void)presentStatementDetailsViewControllerForPass:(id)pass presentationStyle:(int64_t)style withIdentifier:(id)identifier animated:(BOOL)animated
{
  identifierCopy = identifier;
  v9 = [(PassbookSettingsListController *)self _presentPassDetailsViewControllerForPass:pass presentationStyle:2 animated:0];
  [v9 showStatementDetailsWithIdentifier:identifierCopy];
}

- (void)presentAccountUserDetailsWithPass:(id)pass presentationStyle:(int64_t)style forAccountUserAltDSID:(id)d animated:(BOOL)animated
{
  dCopy = d;
  v9 = [(PassbookSettingsListController *)self _presentPassDetailsViewControllerForPass:pass presentationStyle:2 animated:0];
  [v9 presentAccountUserDetailsForAccountUserAltDSID:dCopy];
}

- (void)presentAccountUserInvitationForPass:(id)pass presentationStyle:(int64_t)style withStatementIdentifier:(id)identifier animated:(BOOL)animated
{
  identifierCopy = identifier;
  v9 = [(PassbookSettingsListController *)self _presentPassDetailsViewControllerForPass:pass presentationStyle:2 animated:0];
  [v9 presentAccountUserInvitationWithIdentifier:identifierCopy];
}

- (void)openDailyCashForDateComponents:(id)components onPass:(id)pass
{
  componentsCopy = components;
  v6 = [(PassbookSettingsListController *)self _passDetailsViewControllerForPass:pass];
  if (v6)
  {
    [(PassbookSettingsListController *)self showController:v6 animate:1];
    [v6 presentDailyCashForDateComponents:componentsCopy];
  }
}

- (void)openDailyCashForDateComponents:(id)components feature:(unint64_t)feature
{
  componentsCopy = components;
  if (feature == 5)
  {
    objc_initWeak(location, self);
    accountService = self->_accountService;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_43E4;
    v9[3] = &unk_148A8;
    objc_copyWeak(&v11, location);
    v10 = componentsCopy;
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

- (void)presentImportFPANCardConsentAnimated:(BOOL)animated completion:(id)completion
{
  completionCopy = completion;
  settingsController = self->_settingsController;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_4628;
  v8[3] = &unk_147C8;
  v9 = completionCopy;
  v7 = completionCopy;
  [(PKPassbookSettingsController *)settingsController presentFPANAdditionFlowWithPreflight:0 selectedCredentials:0 withCompletion:v8];
}

- (void)presentTransactionDetailsForTransaction:(id)transaction transactionSourceType:(unint64_t)type confirmPaymentOfferPlan:(BOOL)plan
{
  transactionCopy = transaction;
  v9 = +[PKPaymentService paymentService];
  if (type > 1)
  {
    if (type == 2)
    {
      accountIdentifier = [transactionCopy accountIdentifier];
      altDSID = [transactionCopy altDSID];
      if (altDSID)
      {
        objc_initWeak(location, self);
        accountService = self->_accountService;
        v26[0] = _NSConcreteStackBlock;
        v26[1] = 3221225472;
        v26[2] = sub_51DC;
        v26[3] = &unk_148A8;
        objc_copyWeak(&v28, location);
        v27 = transactionCopy;
        [(PKAccountService *)accountService accountWithIdentifier:accountIdentifier completion:v26];

        objc_destroyWeak(&v28);
        objc_destroyWeak(location);
      }

      else
      {
        v22 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(location[0]) = 138412290;
          *(location + 4) = transactionCopy;
          _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "There is no altDSID defined for account user on tranasction %@", location, 0xCu);
        }
      }
    }

    else if (type == 3)
    {
      accountIdentifier2 = [transactionCopy accountIdentifier];
      objc_initWeak(location, self);
      v17 = self->_accountService;
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_5374;
      v23[3] = &unk_148A8;
      objc_copyWeak(&v25, location);
      v24 = transactionCopy;
      [(PKAccountService *)v17 accountWithIdentifier:accountIdentifier2 completion:v23];

      objc_destroyWeak(&v25);
      objc_destroyWeak(location);
    }
  }

  else if (type)
  {
    if (type == 1)
    {
      accountIdentifier3 = [transactionCopy accountIdentifier];
      v11 = +[PKPeerPaymentService sharedInstance];
      account = [v11 account];

      v13 = [account peerPaymentAccountWithIdentifier:accountIdentifier3];
      v14 = v13;
      if (v13)
      {
        v29[0] = _NSConcreteStackBlock;
        v29[1] = 3221225472;
        v29[2] = sub_4DD4;
        v29[3] = &unk_14948;
        v30 = v13;
        selfCopy = self;
        v32 = transactionCopy;
        [v9 familyMembersWithCompletion:v29];

        v15 = v30;
      }

      else
      {
        v15 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(location[0]) = 138412290;
          *(location + 4) = transactionCopy;
          _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "Cannot find a peer payment account for transaction %@", location, 0xCu);
        }
      }
    }
  }

  else
  {
    objc_initWeak(location, self);
    identifier = [transactionCopy identifier];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_4C48;
    v33[3] = &unk_148F8;
    objc_copyWeak(&v35, location);
    planCopy = plan;
    v34 = transactionCopy;
    [v9 passUniqueIdentifierForTransactionWithIdentifier:identifier completion:v33];

    objc_destroyWeak(&v35);
    objc_destroyWeak(location);
  }
}

- (void)presentPeerPaymentTransferToBankWithPass:(id)pass
{
  v4 = [(PassbookSettingsListController *)self _passDetailsViewControllerForPass:pass];
  if (v4)
  {
    v5 = v4;
    [(PassbookSettingsListController *)self showController:v4 animate:0];
    [v5 presentTransferToBank];
  }

  _objc_release_x1();
}

- (void)presentAccountForFeature:(unint64_t)feature destination:(unint64_t)destination fundingSourceIdentifier:(id)identifier animated:(BOOL)animated
{
  identifierCopy = identifier;
  if (feature == 5)
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
    if ([identifierCopy length])
    {
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_5AA8;
      v17[3] = &unk_149E8;
      v17[4] = self;
      v18 = identifierCopy;
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
    v15[1] = destination;
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

- (id)_passDetailsViewControllerForPass:(id)pass
{
  if (pass)
  {
    settingsController = self->_settingsController;
    passCopy = pass;
    v6 = [(PKPassbookSettingsController *)settingsController rendererStateForPaymentPass:passCopy];
    v7 = [PKPaymentPassDetailViewController alloc];
    v8 = +[PKPaymentWebService sharedService];
    peerPaymentDataSource = [(PKPassbookSettingsDefaultBehavior *)self->_defaultBehavior peerPaymentDataSource];
    peerPaymentWebService = [peerPaymentDataSource peerPaymentWebService];
    passLibraryDataProvider = [(PKPassbookSettingsDefaultBehavior *)self->_defaultBehavior passLibraryDataProvider];
    paymentDataProvider = [(PKPassbookSettingsDefaultBehavior *)self->_defaultBehavior paymentDataProvider];
    v13 = [v7 initWithPass:passCopy group:0 groupsController:0 webService:v8 peerPaymentWebService:peerPaymentWebService style:1 passLibraryDataProvider:passLibraryDataProvider paymentServiceDataProvider:paymentDataProvider rendererState:v6 context:0];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)peerPaymentPass
{
  peerPaymentDataSource = [(PKPassbookSettingsDefaultBehavior *)self->_defaultBehavior peerPaymentDataSource];
  peerPaymentWebService = [peerPaymentDataSource peerPaymentWebService];
  peerPaymentService = [peerPaymentWebService peerPaymentService];
  account = [peerPaymentService account];
  associatedPassUniqueID = [account associatedPassUniqueID];

  v8 = [(PKPassbookSettingsController *)self->_settingsController passWithUniqueIdentifier:associatedPassUniqueID];

  return v8;
}

- (void)settingsController:(id)controller requestsAddCardPreflightWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[PKPaymentWebService sharedService];
  v6 = [[PKPaymentProvisioningController alloc] initWithWebService:v5];
  [v6 setAllowProductsInUnsupportedRegion:1];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_611C;
  v9[3] = &unk_14A60;
  v10 = v6;
  v11 = completionCopy;
  v7 = v6;
  v8 = completionCopy;
  [v7 preflightWithCompletion:v9];
}

- (BOOL)isPresentingViewController
{
  presentedViewController = [(PassbookSettingsListController *)self presentedViewController];
  v3 = presentedViewController != 0;

  return v3;
}

- (void)settingsControllerRequestsPresentPrivacyWithPresenter:(id)presenter
{
  presenterCopy = presenter;
  [presenterCopy setPresentingViewController:self];
  if ([(PassbookSettingsListController *)self pkui_userInterfaceIdiomSupportsLargeLayouts])
  {
    [presenterCopy setModalPresentationStyle:2];
  }

  [presenterCopy present];
}

- (void)settingsController:(id)controller requestsPresentSecurityRepairFlowWithSecurityCapabilities:(unint64_t)capabilities completion:(id)completion
{
  completionCopy = completion;
  v11 = [[PKSecurityCapabilitiesController alloc] initWithRequirements:capabilities feature:1 context:3];
  navigationController = [(PassbookSettingsListController *)self navigationController];
  if (navigationController)
  {
    selfCopy = [(PassbookSettingsListController *)self navigationController];
  }

  else
  {
    selfCopy = self;
  }

  v10 = selfCopy;

  [v11 presentSecurityRepairFlowWithPresentingViewController:v10 completion:completionCopy];
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
  v14[2] = sub_6554;
  v14[3] = &unk_14AD8;
  v14[4] = self;
  v15 = completionCopy;
  v13 = completionCopy;
  [v12 authenticateWithContext:v9 completion:v14];
}

- (void)registerTableCellClass:(Class)class forCellReuseIdentifier:(id)identifier
{
  identifierCopy = identifier;
  table = [(PassbookSettingsListController *)self table];
  [table registerClass:class forCellReuseIdentifier:identifierCopy];
}

- (void)requestResetToRootWithSettingsController:(id)controller
{
  navigationController = [(PassbookSettingsListController *)self navigationController];
  if ([navigationController pk_settings_useStateDrivenNavigation])
  {
    [navigationController pk_settings_popToRootViewController];
  }

  else
  {
    v3 = [navigationController popToRootViewControllerAnimated:1];
  }
}

- (void)settingsController:(id)controller requestShowPeerPaymentAssociatedAccountsFlowWithController:(id)withController withPresentationContext:(id)context
{
  contextCopy = context;
  withControllerCopy = withController;
  navigationController = [(PassbookSettingsListController *)self navigationController];
  [withControllerCopy presentAssociatedAccountsFlowWithPresentationContext:contextCopy fromNavigationController:navigationController];
}

- (void)settingsController:(id)controller requestsPresentAutofillInformationWithSpecifier:(id)specifier cardDescriptors:(id)descriptors authentication:(id)authentication
{
  authenticationCopy = authentication;
  descriptorsCopy = descriptors;
  controllerCopy = controller;
  traitCollection = [(PassbookSettingsListController *)self traitCollection];
  [PKPassbookSettingsNavigationPathBuilder appendAutofillViewNavigationPathToTraitCollection:traitCollection descriptors:descriptorsCopy authentication:authenticationCopy settingsController:controllerCopy];
}

- (void)settingsController:(id)controller requestsPresentAuthorizationFlowWithRedirectURL:(id)l animated:(BOOL)animated completion:(id)completion
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_6B08;
  v10[3] = &unk_14B00;
  lCopy = l;
  completionCopy = completion;
  v8 = completionCopy;
  v9 = lCopy;
  [(PassbookSettingsListController *)self presentAuthorizationFlowAnimated:1 completion:v10];
}

- (void)presentAuthorizationFlowAnimated:(BOOL)animated completion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  v7 = objc_alloc_init(off_19560());
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_6C70;
  v9[3] = &unk_14B50;
  v8 = completionCopy;
  v10 = v8;
  objc_copyWeak(&v11, &location);
  animatedCopy = animated;
  [v7 authorizationSessionWithCompletion:v9];
  objc_destroyWeak(&v11);

  objc_destroyWeak(&location);
}

- (void)_presentAccountUserInvitation:(id)invitation animated:(BOOL)animated completion:(id)completion
{
  invitationCopy = invitation;
  completionCopy = completion;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_7540;
  v17[3] = &unk_14C68;
  v17[4] = self;
  v10 = invitationCopy;
  animatedCopy = animated;
  v18 = v10;
  v19 = completionCopy;
  v11 = completionCopy;
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

- (void)_checkManateeCapabilityForFeatureApplication:(id)application completion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    applicationCopy = application;
    v8 = [PKSecurityCapabilitiesController alloc];
    feature = [applicationCopy feature];

    v10 = [v8 initWithRequirements:8 feature:feature context:3];
    securityCapabilitiesController = self->_securityCapabilitiesController;
    self->_securityCapabilitiesController = v10;

    v12 = self->_securityCapabilitiesController;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_7C4C;
    v13[3] = &unk_14CE0;
    v14 = completionCopy;
    [(PKSecurityCapabilitiesController *)v12 isEnabledForSecuirtyRequirementsWithCompletion:v13];
  }
}

- (void)_presentManateeUpgradeForFeatureApplication:(id)application completion:(id)completion
{
  applicationCopy = application;
  completionCopy = completion;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if (completionCopy)
  {
    v8 = [[PKSecurityCapabilitiesController alloc] initWithRequirements:8 feature:objc_msgSend(applicationCopy context:{"feature"), 3}];
    securityCapabilitiesController = self->_securityCapabilitiesController;
    self->_securityCapabilitiesController = v8;

    navigationController = [(PassbookSettingsListController *)self navigationController];
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
    v14 = applicationCopy;
    v15 = completionCopy;
    [(PKSecurityCapabilitiesController *)v12 presentSecurityRepairFlowWithPresentingViewController:navigationController completion:v13];
  }
}

@end