@interface AKASAuthorizationProvider
- (AKASAuthorizationProvider)initWithAppName:(id)name teamIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier authorizationRequest:(id)request;
- (BOOL)_shouldContinueWithPasswordForError:(id)error;
- (BOOL)alertHandlerShowAlert:(id)alert primaryAction:(id)action altAction:(id)altAction;
- (_ASAuthenticationPresentationProvider)presentationProvider;
- (_ASAuthenticationProviderLoginRowData)loginRowData;
- (id)_accountNameForLoginChoice:(id)choice;
- (id)_detailTextForLoginChoice:(id)choice;
- (id)_iconImageForLoginChoice:(id)choice;
- (id)_paneTitleForLoginChoice:(id)choice;
- (id)loginRowDataForLoginChoice:(id)choice;
- (void)_handleAuthorizationError:(id)error;
- (void)_performAuthorizationWithCompletionHandler:(id)handler;
- (void)_showPasswordAuthenticationViewController;
- (void)passwordAuthenticationCompletedWithResults:(id)results error:(id)error;
- (void)performAuthorizationWithCompletionHandler:(id)handler;
- (void)performAuthorizationWithLoginChoice:(id)choice completionHandler:(id)handler;
@end

@implementation AKASAuthorizationProvider

- (AKASAuthorizationProvider)initWithAppName:(id)name teamIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier authorizationRequest:(id)request
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, name);
  v34 = 0;
  objc_storeStrong(&v34, identifier);
  v33 = 0;
  objc_storeStrong(&v33, bundleIdentifier);
  v32 = 0;
  objc_storeStrong(&v32, request);
  v6 = selfCopy;
  selfCopy = 0;
  v31.receiver = v6;
  v31.super_class = AKASAuthorizationProvider;
  v25 = [(AKASAuthorizationProvider *)&v31 init];
  selfCopy = v25;
  objc_storeStrong(&selfCopy, v25);
  if (v25)
  {
    v29 = objc_alloc_init(MEMORY[0x277CF02B0]);
    [v29 setTeamID:v34];
    [v29 setBundleID:v33];
    [v29 setShouldSkipAuthorizationUI:1];
    v7 = [objc_alloc(MEMORY[0x277CF0210]) initWithProxiedClientContext:v29];
    v8 = *(selfCopy + 1);
    *(selfCopy + 1) = v7;
    *&v9 = MEMORY[0x277D82BD8](v8).n128_u64[0];
    authkitAccount = [v32 authkitAccount];
    v10 = MEMORY[0x277D82BD8](authkitAccount).n128_u64[0];
    if (!authkitAccount)
    {
      v28 = _AKLogSystem();
      v27 = 16;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        log = v28;
        type = v27;
        __os_log_helper_16_0_0(v26);
        _os_log_error_impl(&dword_222379000, log, type, "Request did not contain a preset account. Attempting to set the account.", v26, 2u);
      }

      objc_storeStrong(&v28, 0);
      mEMORY[0x277CF0130] = [MEMORY[0x277CF0130] sharedInstance];
      authKitAccountRequestingAuthorization = [mEMORY[0x277CF0130] authKitAccountRequestingAuthorization];
      [v32 setAuthkitAccount:?];
      MEMORY[0x277D82BD8](authKitAccountRequestingAuthorization);
      v10 = MEMORY[0x277D82BD8](mEMORY[0x277CF0130]).n128_u64[0];
    }

    [*(selfCopy + 1) setAuthorizationRequest:{v32, *&v10}];
    v14 = v33;
    authorizationRequest = [*(selfCopy + 1) authorizationRequest];
    [authorizationRequest setClientID:v14];
    MEMORY[0x277D82BD8](authorizationRequest);
    objc_storeStrong(selfCopy + 4, location[0]);
    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.AuthKit.AKASAuthorizationProvider", v16);
    v12 = *(selfCopy + 2);
    *(selfCopy + 2) = v11;
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](v16);
    v37 = MEMORY[0x277D82BE0](selfCopy);
    v30 = 1;
    objc_storeStrong(&v29, 0);
  }

  else
  {
    v37 = 0;
    v30 = 1;
  }

  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v37;
}

- (void)performAuthorizationWithCompletionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, handler);
  queue = selfCopy->_requestQueue;
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __71__AKASAuthorizationProvider_performAuthorizationWithCompletionHandler___block_invoke;
  v8 = &unk_2784A63C8;
  v9 = MEMORY[0x277D82BE0](selfCopy);
  v10 = MEMORY[0x277D82BE0](location[0]);
  dispatch_async(queue, &v4);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __71__AKASAuthorizationProvider_performAuthorizationWithCompletionHandler___block_invoke(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  if (*(*(a1 + 32) + 24))
  {
    location[0] = _AKLogSystem();
    v15 = 16;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_ERROR))
    {
      log = location[0];
      type = v15;
      __os_log_helper_16_0_0(v14);
      _os_log_error_impl(&dword_222379000, log, type, "Authentication provider cannot perform request because there is already a request being processed.", v14, 2u);
    }

    objc_storeStrong(location, 0);
  }

  else
  {
    v1 = MEMORY[0x223DB6C90](*(a1 + 40));
    v2 = *(a1 + 32);
    v3 = *(v2 + 24);
    *(v2 + 24) = v1;
    if ([*(*(a1 + 32) + 8) _requirePassword] & 1) != 0 || (*(*(a1 + 32) + 40))
    {
      [*(a1 + 32) _showPasswordAuthenticationViewController];
    }

    else
    {
      v4 = *(a1 + 32);
      v8 = MEMORY[0x277D85DD0];
      v9 = -1073741824;
      v10 = 0;
      v11 = __71__AKASAuthorizationProvider_performAuthorizationWithCompletionHandler___block_invoke_28;
      v12 = &unk_2784A6CB0;
      v13 = MEMORY[0x277D82BE0](*(a1 + 32));
      [v4 _performAuthorizationWithCompletionHandler:&v8];
      objc_storeStrong(&v13, 0);
    }
  }
}

void __71__AKASAuthorizationProvider_performAuthorizationWithCompletionHandler___block_invoke_28(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v14 = 0;
  objc_storeStrong(&v14, a3);
  v13[1] = a1;
  queue = *(a1[4] + 16);
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __71__AKASAuthorizationProvider_performAuthorizationWithCompletionHandler___block_invoke_2;
  v10 = &unk_2784A6360;
  v11 = MEMORY[0x277D82BE0](location[0]);
  v12 = MEMORY[0x277D82BE0](a1[4]);
  v13[0] = MEMORY[0x277D82BE0](v14);
  dispatch_async(queue, &v6);
  objc_storeStrong(v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

void __71__AKASAuthorizationProvider_performAuthorizationWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    if (*(*(a1 + 40) + 24))
    {
      v1 = *(a1 + 32);
      v2 = *(a1 + 48);
      (*(*(*(a1 + 40) + 24) + 16))();
    }

    v3 = *(a1 + 40);
    v4 = *(v3 + 24);
    *(v3 + 24) = 0;
    MEMORY[0x277D82BD8](v4);
  }

  else
  {
    [*(a1 + 40) _handleAuthorizationError:*(a1 + 48)];
  }
}

- (void)performAuthorizationWithLoginChoice:(id)choice completionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, choice);
  v16 = 0;
  objc_storeStrong(&v16, handler);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = _AKLogSiwa();
    v14 = 2;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      log = v15;
      type = v14;
      __os_log_helper_16_0_0(v13);
      _os_log_debug_impl(&dword_222379000, log, type, "Selected shared account from credential picker", v13, 2u);
    }

    objc_storeStrong(&v15, 0);
    v12 = MEMORY[0x277D82BE0](location[0]);
    sharedAccount = [v12 sharedAccount];
    authorizationRequest = [(AKCredentialRequestContext *)selfCopy->_requestContext authorizationRequest];
    [authorizationRequest set_sharedAccount:sharedAccount];
    MEMORY[0x277D82BD8](authorizationRequest);
    *&v4 = MEMORY[0x277D82BD8](sharedAccount).n128_u64[0];
    authorizationRequest2 = [(AKCredentialRequestContext *)selfCopy->_requestContext authorizationRequest];
    [authorizationRequest2 set_isAuthorizingUsingSharedAccount:1];
    MEMORY[0x277D82BD8](authorizationRequest2);
    objc_storeStrong(&v12, 0);
  }

  [(AKASAuthorizationProvider *)selfCopy performAuthorizationWithCompletionHandler:v16, &v16];
  objc_storeStrong(v5, 0);
  objc_storeStrong(location, 0);
}

- (void)_showPasswordAuthenticationViewController
{
  selfCopy = self;
  v9[1] = a2;
  v9[0] = objc_alloc_init(AKAuthorizationPasswordAuthenticationViewController);
  v3 = objc_alloc(MEMORY[0x277CF01A8]);
  authorizationRequest = [(AKCredentialRequestContext *)selfCopy->_requestContext authorizationRequest];
  authkitAccount = [authorizationRequest authkitAccount];
  username = [authkitAccount username];
  v8 = [v3 initWithUsername:?];
  MEMORY[0x277D82BD8](username);
  MEMORY[0x277D82BD8](authkitAccount);
  *&v2 = MEMORY[0x277D82BD8](authorizationRequest).n128_u64[0];
  [v9[0] setPresentationContext:{v8, v2}];
  [v9[0] setDelegate:selfCopy];
  WeakRetained = objc_loadWeakRetained(&selfCopy->_presentationProvider);
  [WeakRetained authenticationProvider:selfCopy showViewController:v9[0]];
  MEMORY[0x277D82BD8](WeakRetained);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(v9, 0);
}

- (void)_performAuthorizationWithCompletionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, handler);
  v11 = objc_alloc_init(MEMORY[0x277CF01A0]);
  v4 = v11;
  requestContext = selfCopy->_requestContext;
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __72__AKASAuthorizationProvider__performAuthorizationWithCompletionHandler___block_invoke;
  v9 = &unk_2784A6CD8;
  v10 = MEMORY[0x277D82BE0](location[0]);
  [v4 performAuthorizationWithContext:requestContext completion:?];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

void __72__AKASAuthorizationProvider__performAuthorizationWithCompletionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  (*(a1[4] + 16))();
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)_handleAuthorizationError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  if ([(AKASAuthorizationProvider *)selfCopy _shouldContinueWithPasswordForError:location[0]])
  {
    selfCopy->_didFailWithErrorRequiringPasswordAuth = 1;
  }

  mEMORY[0x277CF0150] = [MEMORY[0x277CF0150] sharedInstance];
  [mEMORY[0x277CF0150] setUiProvider:selfCopy];
  v4 = mEMORY[0x277CF0150];
  v3 = location[0];
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __55__AKASAuthorizationProvider__handleAuthorizationError___block_invoke;
  v9 = &unk_2784A6D00;
  v10 = MEMORY[0x277D82BE0](selfCopy);
  [v4 showAlertForError:v3 withCompletion:&v5];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&mEMORY[0x277CF0150], 0);
  objc_storeStrong(location, 0);
}

void __55__AKASAuthorizationProvider__handleAuthorizationError___block_invoke(void *a1, char a2, id obj)
{
  v19 = a1;
  v18 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v16[1] = a1;
  v14 = [location userInfo];
  v16[0] = [v14 mutableCopy];
  *&v3 = MEMORY[0x277D82BD8](v14).n128_u64[0];
  if (v18)
  {
    [v16[0] setValue:MEMORY[0x277CBEC38] forKey:{@"AKErrorAlertShouldDismissUIAfterPresentationKey", v3}];
  }

  v15 = 0;
  if (location)
  {
    v11 = MEMORY[0x277CCA9B8];
    v12 = [location domain];
    v4 = [v11 errorWithDomain:v12 code:objc_msgSend(location userInfo:{"code"), v16[0]}];
    v5 = v15;
    v15 = v4;
    MEMORY[0x277D82BD8](v5);
    v6 = MEMORY[0x277D82BD8](v12);
  }

  else
  {
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CEFF48] code:-7001 userInfo:{v16[0], v3}];
    v8 = v15;
    v15 = v7;
    v6 = MEMORY[0x277D82BD8](v8);
  }

  if (*(a1[4] + 24))
  {
    (*(*(a1[4] + 24) + 16))(v6);
  }

  v9 = a1[4];
  v10 = *(v9 + 24);
  *(v9 + 24) = 0;
  MEMORY[0x277D82BD8](v10);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(v16, 0);
  objc_storeStrong(&location, 0);
}

- (BOOL)_shouldContinueWithPasswordForError:(id)error
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  domain = [location[0] domain];
  v7 = [domain isEqualToString:*MEMORY[0x277CEFF48]];
  *&v3 = MEMORY[0x277D82BD8](domain).n128_u64[0];
  if (v7)
  {
    v9 = 0;
  }

  else
  {
    v5 = 1;
    if ([location[0] code] != -7006)
    {
      v5 = [location[0] code] == -7075;
    }

    v9 = v5;
  }

  objc_storeStrong(location, 0);
  return v9;
}

- (_ASAuthenticationProviderLoginRowData)loginRowData
{
  selfCopy = self;
  v9[1] = a2;
  v9[0] = [(AKASAuthorizationProvider *)self _accountNameForLoginChoice:?];
  v8 = [(AKASAuthorizationProvider *)selfCopy _paneTitleForLoginChoice:0];
  v7 = [(AKASAuthorizationProvider *)selfCopy _detailTextForLoginChoice:0];
  v6 = [(AKASAuthorizationProvider *)selfCopy _iconImageForLoginChoice:0];
  v4 = [AKLoginRowData alloc];
  if (([(AKCredentialRequestContext *)selfCopy->_requestContext _requirePassword]& 1) != 0)
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  v5 = [(AKLoginRowData *)v4 initWithIconImage:v6 paneTitleText:v8 titleText:v9[0] detailText:v7 authenticationType:v2];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(v9, 0);

  return v5;
}

- (id)loginRowDataForLoginChoice:(id)choice
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, choice);
  v10 = [(AKASAuthorizationProvider *)selfCopy _accountNameForLoginChoice:location[0]];
  v9 = [(AKASAuthorizationProvider *)selfCopy _paneTitleForLoginChoice:location[0]];
  v8 = [(AKASAuthorizationProvider *)selfCopy _detailTextForLoginChoice:location[0]];
  v7 = [(AKASAuthorizationProvider *)selfCopy _iconImageForLoginChoice:location[0]];
  v5 = [AKLoginRowData alloc];
  if (([(AKCredentialRequestContext *)selfCopy->_requestContext _requirePassword]& 1) != 0)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  v6 = [(AKLoginRowData *)v5 initWithIconImage:v7 paneTitleText:v9 titleText:v10 detailText:v8 authenticationType:v3];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);

  return v6;
}

- (id)_accountNameForLoginChoice:(id)choice
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, choice);
  v18 = 0;
  if (location[0])
  {
    user = [location[0] user];
    v4 = v18;
    v18 = user;
    MEMORY[0x277D82BD8](v4);
  }

  else
  {
    v17 = objc_alloc_init(MEMORY[0x277CCAC00]);
    mEMORY[0x277CF0130] = [MEMORY[0x277CF0130] sharedInstance];
    authorizationRequest = [(AKCredentialRequestContext *)selfCopy->_requestContext authorizationRequest];
    authkitAccount = [authorizationRequest authkitAccount];
    v7 = [mEMORY[0x277CF0130] familyNameForAccount:?];
    [v17 setFamilyName:?];
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](authkitAccount);
    MEMORY[0x277D82BD8](authorizationRequest);
    mEMORY[0x277CF0130]2 = [MEMORY[0x277CF0130] sharedInstance];
    authorizationRequest2 = [(AKCredentialRequestContext *)selfCopy->_requestContext authorizationRequest];
    authkitAccount2 = [authorizationRequest2 authkitAccount];
    v11 = [mEMORY[0x277CF0130]2 givenNameForAccount:?];
    [v17 setGivenName:?];
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](authkitAccount2);
    MEMORY[0x277D82BD8](authorizationRequest2);
    MEMORY[0x277D82BD8](mEMORY[0x277CF0130]2);
    v16 = objc_alloc_init(MEMORY[0x277CCAC08]);
    v15 = [v16 stringFromPersonNameComponents:v17];
    objc_storeStrong(&v18, v15);
    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v16, 0);
    objc_storeStrong(&v17, 0);
  }

  v6 = MEMORY[0x277D82BE0](v18);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);

  return v6;
}

- (id)_iconImageForLoginChoice:(id)choice
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, choice);
  +[AKAuthorizationSubPaneMetrics scopeImageViewSize];
  v16 = v3;
  v15 = 0;
  if (location[0])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = MEMORY[0x277D82BE0](location[0]);
      sharedAccount = [v14 sharedAccount];
      shareInfo = [sharedAccount shareInfo];
      participantHandle = [shareInfo participantHandle];
      MEMORY[0x277D82BD8](shareInfo);
      MEMORY[0x277D82BD8](sharedAccount);
      v18 = [AKSignInWithAppleAvatarManager avatarImageForUserHandle:participantHandle diameter:v16];
      objc_storeStrong(&participantHandle, 0);
      objc_storeStrong(&v14, 0);
    }

    else
    {
      v18 = [AKSignInWithAppleAvatarManager avatarImageForPrimaryAccountOwnerWithDiameter:v16];
    }
  }

  else
  {
    CGSizeMake_4();
    v10 = [AKIcon iconWithName:@"blackLogo" size:v4, v5];
    automaskedImage = [(AKIcon *)v10 automaskedImage];
    v7 = v15;
    v15 = automaskedImage;
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v10);
    v18 = MEMORY[0x277D82BE0](v15);
  }

  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  v8 = v18;

  return v8;
}

- (id)_paneTitleForLoginChoice:(id)choice
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, choice);
  if (location[0] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = MEMORY[0x277CCACA8];
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v12 localizedStringForKey:@"CREDENTIAL_PICKER_SHARED_ACCOUNT" value:&stru_28358EF68 table:@"Localizable"];
    appName = selfCopy->_appName;
    v10 = [(AKASAuthorizationProvider *)selfCopy _accountNameForLoginChoice:location[0]];
    v15 = [v9 stringWithFormat:v11, appName, v10];
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](v12);
  }

  else
  {
    v5 = MEMORY[0x277CCACA8];
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v7 localizedStringForKey:@"AUTHORIZE_APPLE_ACCOUNT_WELCOME_BACK_APPNAME_FORMAT" value:&stru_28358EF68 table:@"Localizable"];
    v15 = [v5 stringWithFormat:selfCopy->_appName];
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v7);
  }

  objc_storeStrong(location, 0);
  v3 = v15;

  return v3;
}

- (id)_detailTextForLoginChoice:(id)choice
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, choice);
  if (location[0])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = MEMORY[0x277CCACA8];
      v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v14 = [v15 localizedStringForKey:@"SIGN_IN_WITH_APPLE_PICKER" value:? table:?];
      v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v12 = [v13 localizedStringForKey:@"AUTHORIZE_SHARED_ACCOUNT_LOGIN_CHOICE_SUBTITLE" value:&stru_28358EF68 table:@"Localizable"];
      v17 = [v11 stringWithFormat:@"%@ — %@", v14, v12];
      MEMORY[0x277D82BD8](v12);
      MEMORY[0x277D82BD8](v13);
      MEMORY[0x277D82BD8](v14);
      MEMORY[0x277D82BD8](v15);
    }

    else
    {
      v6 = MEMORY[0x277CCACA8];
      v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v9 = [v10 localizedStringForKey:@"SIGN_IN_WITH_APPLE_PICKER" value:? table:?];
      v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v7 = [v8 localizedStringForKey:@"AUTHORIZE_EXISTING_ACCOUNT_LOGIN_CHOICE_SUBTITLE" value:&stru_28358EF68 table:@"Localizable"];
      v17 = [v6 stringWithFormat:@"%@ — %@", v9, v7];
      MEMORY[0x277D82BD8](v7);
      MEMORY[0x277D82BD8](v8);
      MEMORY[0x277D82BD8](v9);
      MEMORY[0x277D82BD8](v10);
    }
  }

  else
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v17 = [v5 localizedStringForKey:@"SIGN_IN_WITH_APPLE_PICKER" value:&stru_28358EF68 table:@"Localizable"];
    MEMORY[0x277D82BD8](v5);
  }

  objc_storeStrong(location, 0);
  v3 = v17;

  return v3;
}

- (void)passwordAuthenticationCompletedWithResults:(id)results error:(id)error
{
  v20 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, results);
  v16 = 0;
  objc_storeStrong(&v16, error);
  if (v16)
  {
    if (![v16 ak_isUserCancelError])
    {
      v15 = _AKLogSystem();
      v14 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_64(v19, v16);
        _os_log_error_impl(&dword_222379000, v15, v14, "Password authentication failed in authentication provider with error: %@", v19, 0xCu);
      }

      objc_storeStrong(&v15, 0);
    }

    if (selfCopy->_completionHandlerForCurrentRequest)
    {
      (*(selfCopy->_completionHandlerForCurrentRequest + 2))();
    }

    completionHandlerForCurrentRequest = selfCopy->_completionHandlerForCurrentRequest;
    selfCopy->_completionHandlerForCurrentRequest = 0;
    MEMORY[0x277D82BD8](completionHandlerForCurrentRequest);
    v13 = 1;
  }

  else
  {
    v5 = selfCopy;
    v7 = MEMORY[0x277D85DD0];
    v8 = -1073741824;
    v9 = 0;
    v10 = __78__AKASAuthorizationProvider_passwordAuthenticationCompletedWithResults_error___block_invoke;
    v11 = &unk_2784A6CB0;
    v12 = MEMORY[0x277D82BE0](selfCopy);
    [(AKASAuthorizationProvider *)v5 _performAuthorizationWithCompletionHandler:&v7];
    objc_storeStrong(&v12, 0);
    v13 = 0;
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __78__AKASAuthorizationProvider_passwordAuthenticationCompletedWithResults_error___block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v14 = 0;
  objc_storeStrong(&v14, a3);
  v13[1] = a1;
  queue = *(a1[4] + 16);
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __78__AKASAuthorizationProvider_passwordAuthenticationCompletedWithResults_error___block_invoke_2;
  v10 = &unk_2784A6360;
  v11 = MEMORY[0x277D82BE0](a1[4]);
  v12 = MEMORY[0x277D82BE0](location[0]);
  v13[0] = MEMORY[0x277D82BE0](v14);
  dispatch_async(queue, &v6);
  objc_storeStrong(v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

uint64_t __78__AKASAuthorizationProvider_passwordAuthenticationCompletedWithResults_error___block_invoke_2(void *a1)
{
  if (*(a1[4] + 24))
  {
    v1 = a1[5];
    v2 = a1[6];
    (*(*(a1[4] + 24) + 16))();
  }

  v3 = a1[4];
  v4 = *(v3 + 24);
  *(v3 + 24) = 0;
  return MEMORY[0x277D82BD8](v4);
}

- (BOOL)alertHandlerShowAlert:(id)alert primaryAction:(id)action altAction:(id)altAction
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, alert);
  v10 = 0;
  objc_storeStrong(&v10, action);
  v9 = 0;
  objc_storeStrong(&v9, altAction);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_presentationProvider);
  [WeakRetained authenticationProvider:selfCopy presentAlert:location[0] primaryAction:v10 alternateAction:v9];
  MEMORY[0x277D82BD8](WeakRetained);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  return 1;
}

- (_ASAuthenticationPresentationProvider)presentationProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationProvider);

  return WeakRetained;
}

@end