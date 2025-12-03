@interface AAUIFamilySetupViewController
- (AAUIFamilySetupViewController)initWithAccount:(id)account grandSlamSigner:(id)signer familyEligibilityResponse:(id)response;
- (AAUIFamilySetupViewController)initWithAccount:(id)account store:(id)store;
- (BOOL)_isRunningInSettings;
- (BOOL)remoteUIController:(id)controller shouldLoadRequest:(id)request redirectResponse:(id)response;
- (id)_createCloseButton;
- (id)_initWithAccount:(id)account grandSlamSigner:(id)signer rootViewController:(id)controller;
- (id)_urlForLaunchingSettings;
- (id)initTrimmedFlowWithAccount:(id)account grandSlamSigner:(id)signer;
- (void)_closeButtonWasTapped:(id)tapped;
- (void)_hideActivitySpinnerInNavigationBar;
- (void)_loadRemoteUIPages;
- (void)_remoteUIDidCancel;
- (void)_sendUserToiTunesSettings;
- (void)_showActivitySpinnerInNavigationBar;
- (void)dealloc;
- (void)familySetupPage:(id)page didCompleteWithSuccess:(BOOL)success;
- (void)remoteUIController:(id)controller didReceiveHTTPResponse:(id)response;
- (void)remoteUIController:(id)controller willPresentObjectModel:(id)model modally:(BOOL)modally;
- (void)remoteUIControllerDidDismiss:(id)dismiss;
- (void)viewDidLoad;
@end

@implementation AAUIFamilySetupViewController

- (AAUIFamilySetupViewController)initWithAccount:(id)account store:(id)store
{
  storeCopy = store;
  accountCopy = account;
  v8 = [storeCopy aa_grandSlamAccountForiCloudAccount:accountCopy];
  v9 = objc_alloc(MEMORY[0x1E698B8D0]);
  v10 = [v9 initWithAccountStore:storeCopy grandSlamAccount:v8 appTokenID:*MEMORY[0x1E698B7C0]];

  v11 = [(AAUIFamilySetupViewController *)self initWithAccount:accountCopy grandSlamSigner:v10 familyEligibilityResponse:0];
  return v11;
}

- (AAUIFamilySetupViewController)initWithAccount:(id)account grandSlamSigner:(id)signer familyEligibilityResponse:(id)response
{
  responseCopy = response;
  signerCopy = signer;
  accountCopy = account;
  v11 = objc_alloc(getFAFamilySetupGetStartedViewControllerClass());
  accountStore = [signerCopy accountStore];
  v13 = [v11 initWithAccount:accountCopy store:accountStore familyEligibilityResponse:responseCopy];

  v14 = [(AAUIFamilySetupViewController *)self _initWithAccount:accountCopy grandSlamSigner:signerCopy rootViewController:v13];
  return v14;
}

- (id)initTrimmedFlowWithAccount:(id)account grandSlamSigner:(id)signer
{
  signerCopy = signer;
  accountCopy = account;
  v8 = objc_alloc(getFAFamilySetupOrganizerViewControllerClass());
  accountStore = [signerCopy accountStore];
  v10 = [v8 initWithAccount:accountCopy store:accountStore];

  v11 = [(AAUIFamilySetupViewController *)self _initWithAccount:accountCopy grandSlamSigner:signerCopy rootViewController:v10];
  return v11;
}

- (id)_initWithAccount:(id)account grandSlamSigner:(id)signer rootViewController:(id)controller
{
  accountCopy = account;
  signerCopy = signer;
  controllerCopy = controller;
  v18.receiver = self;
  v18.super_class = AAUIFamilySetupViewController;
  v12 = [(AAUIFamilySetupViewController *)&v18 initWithRootViewController:controllerCopy];
  if (v12)
  {
    [controllerCopy setDelegate:v12];
    navigationItem = [controllerCopy navigationItem];
    _createCloseButton = [(AAUIFamilySetupViewController *)v12 _createCloseButton];
    [navigationItem setRightBarButtonItem:_createCloseButton];

    objc_storeStrong(&v12->_account, account);
    accountStore = [signerCopy accountStore];
    accountStore = v12->_accountStore;
    v12->_accountStore = accountStore;

    objc_storeStrong(&v12->_grandSlamSigner, signer);
  }

  return v12;
}

- (void)dealloc
{
  remoteUIController = self->_remoteUIController;
  if (remoteUIController)
  {
    [(RemoteUIController *)remoteUIController setDelegate:0];
  }

  v4.receiver = self;
  v4.super_class = AAUIFamilySetupViewController;
  [(AAUIFamilySetupViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = AAUIFamilySetupViewController;
  [(AAUIBleachedNavigationController *)&v5 viewDidLoad];
  navigationBar = [(AAUIFamilySetupViewController *)self navigationBar];
  systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
  [navigationBar setTintColor:systemBlueColor];
}

- (void)familySetupPage:(id)page didCompleteWithSuccess:(BOOL)success
{
  pageCopy = page;
  if (!success)
  {
    delegate = [(AAUIFamilySetupViewController *)self delegate];
    [delegate familySetupViewController:self didCompleteWithSuccess:0];
LABEL_6:

    goto LABEL_7;
  }

  getFAFamilySetupGetStartedViewControllerClass();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([(AAUIFamilySetupViewController *)self _isRunningInSettings])
    {
      delegate = [objc_alloc(getFAFamilySetupOrganizerViewControllerClass()) initWithAccount:self->_account store:self->_accountStore];
      [delegate setDelegate:self];
      [(UINavigationController *)self aaui_pushViewController:delegate animated:1];
    }

    else
    {
      delegate2 = [(AAUIFamilySetupViewController *)self delegate];
      [delegate2 familySetupViewController:self didCompleteWithSuccess:1];

      delegate = [MEMORY[0x1E6963608] defaultWorkspace];
      _urlForLaunchingSettings = [(AAUIFamilySetupViewController *)self _urlForLaunchingSettings];
      [delegate openSensitiveURL:_urlForLaunchingSettings withOptions:0];
    }

    goto LABEL_6;
  }

  getFAFamilySetupOrganizerViewControllerClass();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(AAUIFamilySetupViewController *)self _loadRemoteUIPages];
  }

LABEL_7:
}

- (BOOL)_isRunningInSettings
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v4 = [bundleIdentifier isEqualToString:@"com.apple.Preferences"];

  return v4;
}

- (id)_urlForLaunchingSettings
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"prefs:root=APPLE_ACCOUNT&path=ICLOUD_SERVICE&%@=%@", @"aaaction", @"setupFamily"];
  v3 = [MEMORY[0x1E695DFF8] URLWithString:v2];

  return v3;
}

- (id)_createCloseButton
{
  v3 = objc_alloc(MEMORY[0x1E69DC708]);
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"CLOSE_BUTTON_TITLE" value:&stru_1F447F790 table:@"Localizable"];
  v6 = [v3 initWithTitle:v5 style:0 target:self action:sel__closeButtonWasTapped_];

  return v6;
}

- (void)_closeButtonWasTapped:(id)tapped
{
  topViewController = [(AAUIFamilySetupViewController *)self topViewController];
  [(AAUIFamilySetupViewController *)self familySetupPage:topViewController didCompleteWithSuccess:0];
}

- (void)_showActivitySpinnerInNavigationBar
{
  v17 = *MEMORY[0x1E69E9840];
  if (!self->_spinnerView)
  {
    v3 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    spinnerView = self->_spinnerView;
    self->_spinnerView = v3;

    [(UIActivityIndicatorView *)self->_spinnerView setHidesWhenStopped:1];
  }

  if (self->_isShowingSpinner)
  {
    navigationItemShowingSpinner = self->_navigationItemShowingSpinner;
    topViewController = [(AAUIFamilySetupViewController *)self topViewController];
    navigationItem = [topViewController navigationItem];

    if (navigationItemShowingSpinner != navigationItem)
    {
      v8 = _AAUILogSystem();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v16 = objc_opt_class();
        _os_log_impl(&dword_1C5355000, v8, OS_LOG_TYPE_DEFAULT, "%@ changed navigation item for spinner!", buf, 0xCu);
      }
    }
  }

  else
  {
    [(UIActivityIndicatorView *)self->_spinnerView startAnimating];
    v14 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:self->_spinnerView];
    topViewController2 = [(AAUIFamilySetupViewController *)self topViewController];
    navigationItem2 = [topViewController2 navigationItem];
    v11 = self->_navigationItemShowingSpinner;
    self->_navigationItemShowingSpinner = navigationItem2;

    rightBarButtonItems = [(UINavigationItem *)self->_navigationItemShowingSpinner rightBarButtonItems];
    originalRightBarButtonItems = self->_originalRightBarButtonItems;
    self->_originalRightBarButtonItems = rightBarButtonItems;

    [(UINavigationItem *)self->_navigationItemShowingSpinner setRightBarButtonItem:v14];
    self->_isShowingSpinner = 1;
  }
}

- (void)_hideActivitySpinnerInNavigationBar
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->_isShowingSpinner)
  {
    [(UIActivityIndicatorView *)self->_spinnerView stopAnimating];
    if (self->_originalRightBarButtonItems)
    {
      [(UINavigationItem *)self->_navigationItemShowingSpinner setRightBarButtonItems:?];
    }

    self->_isShowingSpinner = 0;
    originalRightBarButtonItems = self->_originalRightBarButtonItems;
    self->_originalRightBarButtonItems = 0;

    navigationItemShowingSpinner = self->_navigationItemShowingSpinner;
    self->_navigationItemShowingSpinner = 0;
  }

  else
  {
    v6 = _AAUILogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      Name = sel_getName(a2);
      _os_log_impl(&dword_1C5355000, v6, OS_LOG_TYPE_DEFAULT, "%s when there was no spinner", &v7, 0xCu);
    }
  }
}

- (void)_loadRemoteUIPages
{
  v23 = *MEMORY[0x1E69E9840];
  [(AAUIFamilySetupViewController *)self _showActivitySpinnerInNavigationBar];
  ams_sharedAccountStore = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
  ams_activeiTunesAccount = [ams_sharedAccountStore ams_activeiTunesAccount];

  v15 = 0;
  v16 = &v15;
  v17 = 0x2050000000;
  v5 = getFAFamilySetupBuddyMLRequestClass_softClass;
  v18 = getFAFamilySetupBuddyMLRequestClass_softClass;
  if (!getFAFamilySetupBuddyMLRequestClass_softClass)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v20 = __getFAFamilySetupBuddyMLRequestClass_block_invoke;
    v21 = &unk_1E820BE08;
    v22 = &v15;
    __getFAFamilySetupBuddyMLRequestClass_block_invoke(&buf);
    v5 = v16[3];
  }

  v6 = v5;
  _Block_object_dispose(&v15, 8);
  v7 = [v5 alloc];
  v8 = [v7 initWithGrandSlamSigner:{self->_grandSlamSigner, v15}];
  [v8 setiTunesAccount:ams_activeiTunesAccount];
  urlRequest = [v8 urlRequest];
  v10 = [urlRequest mutableCopy];
  startRemoteUIRequest = self->_startRemoteUIRequest;
  self->_startRemoteUIRequest = v10;

  v12 = _AAUILogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v8;
    _os_log_impl(&dword_1C5355000, v12, OS_LOG_TYPE_DEFAULT, "Will load Family Setup remote UI using request: %@", &buf, 0xCu);
  }

  v13 = objc_alloc_init(MEMORY[0x1E69C7048]);
  remoteUIController = self->_remoteUIController;
  self->_remoteUIController = v13;

  [(RemoteUIController *)self->_remoteUIController setDelegate:self];
  [(RemoteUIController *)self->_remoteUIController setNavigationController:self];
  [(RemoteUIController *)self->_remoteUIController loadRequest:self->_startRemoteUIRequest completion:&__block_literal_global_5];
}

void __51__AAUIFamilySetupViewController__loadRemoteUIPages__block_invoke(uint64_t a1, char a2, void *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    v5 = _AAUILogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_1C5355000, v5, OS_LOG_TYPE_DEFAULT, "Failed to load Family Setup remote UI: %@", &v6, 0xCu);
    }
  }
}

- (void)remoteUIController:(id)controller willPresentObjectModel:(id)model modally:(BOOL)modally
{
  v5 = MEMORY[0x1E69C7040];
  modelCopy = model;
  setupAssistantModalStyle = [v5 setupAssistantModalStyle];
  [setupAssistantModalStyle applyToObjectModel:modelCopy];
}

- (BOOL)remoteUIController:(id)controller shouldLoadRequest:(id)request redirectResponse:(id)response
{
  requestCopy = request;
  objc_storeStrong(&self->_currentRemoteUIRequest, request);
  if (self->_startRemoteUIRequest == requestCopy)
  {
    goto LABEL_8;
  }

  v8 = [(NSMutableURLRequest *)requestCopy URL];
  absoluteString = [v8 absoluteString];
  v10 = [absoluteString containsString:@"prefs:itunes"];

  if (!v10)
  {
    v11 = [(NSMutableURLRequest *)requestCopy URL];
    absoluteString2 = [v11 absoluteString];
    v13 = [absoluteString2 containsString:@"prefs:icloud"];

    if (v13)
    {
      [(AAUIFamilySetupViewController *)self _remoteUIDidCancel];
      goto LABEL_6;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __87__AAUIFamilySetupViewController_remoteUIController_shouldLoadRequest_redirectResponse___block_invoke;
    block[3] = &unk_1E820B8F0;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    [(NSMutableURLRequest *)requestCopy aa_addBasicAuthorizationHeaderWithAccount:self->_account preferUsingPassword:0];
    [(NSMutableURLRequest *)requestCopy aa_addLoggedInAppleIDHeaderWithAccount:self->_account];
    clientInfoHeader = [MEMORY[0x1E698B890] clientInfoHeader];
    [(NSMutableURLRequest *)requestCopy setValue:clientInfoHeader forHTTPHeaderField:@"X-MMe-Client-Info"];

    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    v17 = [currentLocale objectForKey:*MEMORY[0x1E695D978]];
    uppercaseString = [v17 uppercaseString];
    [(NSMutableURLRequest *)requestCopy setValue:uppercaseString forHTTPHeaderField:@"X-MMe-Country"];

    [(NSMutableURLRequest *)requestCopy aa_addDeviceInternalDevHeaderIfEnabled];
    [(NSMutableURLRequest *)requestCopy aa_addDeviceIDHeader];
    [(NSMutableURLRequest *)requestCopy aa_addLocationSharingAllowedHeader];
    [(AAGrandSlamSigner *)self->_grandSlamSigner signURLRequest:requestCopy isUserInitiated:1];
LABEL_8:
    [(NSMutableURLRequest *)requestCopy setValue:@"true" forHTTPHeaderField:@"X-MMe-Family-Setup"];
    v14 = 1;
    goto LABEL_9;
  }

  [(AAUIFamilySetupViewController *)self _sendUserToiTunesSettings];
LABEL_6:
  v14 = 0;
LABEL_9:

  return v14;
}

- (void)remoteUIController:(id)controller didReceiveHTTPResponse:(id)response
{
  responseCopy = response;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__AAUIFamilySetupViewController_remoteUIController_didReceiveHTTPResponse___block_invoke;
  block[3] = &unk_1E820B8F0;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  if ([responseCopy statusCode] == 401)
  {
    v6 = _AAUILogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1C5355000, v6, OS_LOG_TYPE_DEFAULT, "BML request returned 401. We need to re-auth...", v8, 2u);
    }

    [(ACAccountStore *)self->_accountStore renewCredentialsForAccount:self->_account force:1 reason:0 completion:&__block_literal_global_93];
  }

  else if ([(NSMutableURLRequest *)self->_currentRemoteUIRequest aa_addDeviceProvisioningInfoHeadersWithDSIDFromReponse:responseCopy])
  {
    v7 = _AAUILogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1C5355000, v7, OS_LOG_TYPE_DEFAULT, "Device is provisioned... Reissuing request...", v8, 2u);
    }

    [(RemoteUIController *)self->_remoteUIController loadRequest:self->_currentRemoteUIRequest completion:&__block_literal_global_96];
  }
}

void __75__AAUIFamilySetupViewController_remoteUIController_didReceiveHTTPResponse___block_invoke_90(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _AAUILogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134218242;
    v7 = a2;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_1C5355000, v5, OS_LOG_TYPE_DEFAULT, "Result of renewing credentials to continue BML flow: %ld. Error: %@", &v6, 0x16u);
  }
}

void __75__AAUIFamilySetupViewController_remoteUIController_didReceiveHTTPResponse___block_invoke_94(uint64_t a1, char a2, void *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    v5 = _AAUILogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_1C5355000, v5, OS_LOG_TYPE_DEFAULT, "Failed to load Family Setup remote UI: %@", &v6, 0xCu);
    }
  }
}

- (void)remoteUIControllerDidDismiss:(id)dismiss
{
  delegate = [(AAUIFamilySetupViewController *)self delegate];
  [delegate familySetupViewController:self didCompleteWithSuccess:1];
}

- (void)_remoteUIDidCancel
{
  delegate = [(AAUIFamilySetupViewController *)self delegate];
  [delegate familySetupViewController:self didCompleteWithSuccess:0];
}

- (void)_sendUserToiTunesSettings
{
  delegate = [(AAUIFamilySetupViewController *)self delegate];
  [delegate familySetupViewController:self didCompleteWithSuccess:0];

  v4 = dispatch_time(0, 500000000);
  v5 = MEMORY[0x1E69E96A0];

  dispatch_after(v4, v5, &__block_literal_global_98);
}

void __58__AAUIFamilySetupViewController__sendUserToiTunesSettings__block_invoke()
{
  v1 = [MEMORY[0x1E6963608] defaultWorkspace];
  v0 = [MEMORY[0x1E695DFF8] URLWithString:@"prefs:root=STORE"];
  [v1 openSensitiveURL:v0 withOptions:0];
}

@end