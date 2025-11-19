@interface SecureIntentViewController
+ (BOOL)isEnrolledWithRequestSource:(unint64_t)a3;
+ (int64_t)authStorageKeyForRequestSource:(unint64_t)a3;
- (SecureIntentViewController)initWithSource:(unint64_t)a3 context:(id)a4 delegate:(id)a5;
- (SecureIntentViewControllerDelegate)intentDelegate;
- (id)_details;
- (id)_errorMessage;
- (id)_logger;
- (id)_title;
- (id)authStorageKeyDescription:(int64_t)a3;
- (id)presentationWindowForPaymentAuthorizationController:(id)a3;
- (id)requestSourceDescription;
- (void)_cancelEnrollment;
- (void)_continueEnrollment;
- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5;
- (void)paymentAuthorizationController:(id)a3 didAuthorizeContextWithHandler:(id)a4;
- (void)paymentAuthorizationControllerDidFinish:(id)a3;
- (void)viewDidLoad;
@end

@implementation SecureIntentViewController

- (SecureIntentViewController)initWithSource:(unint64_t)a3 context:(id)a4 delegate:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = SecureIntentViewController;
  v11 = [(SecureIntentViewController *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(SecureIntentViewController *)v11 setDelegate:v11];
    v12->_requestSource = a3;
    objc_storeWeak(&v12->_intentDelegate, v10);
    objc_storeStrong(&v12->_context, a4);
  }

  return v12;
}

- (void)viewDidLoad
{
  v15.receiver = self;
  v15.super_class = SecureIntentViewController;
  [(SecureIntentViewController *)&v15 viewDidLoad];
  v3 = [OBWelcomeController alloc];
  v4 = [(SecureIntentViewController *)self _title];
  v5 = [(SecureIntentViewController *)self _details];
  v6 = [v3 initWithTitle:v4 detailText:v5 icon:0];

  v7 = +[OBBoldTrayButton boldButton];
  v8 = settingsLocString(@"CONTINUE", @"Accessibility");
  [v7 setTitle:v8 forState:0];

  [v7 addTarget:self action:"_continueEnrollment" forControlEvents:64];
  v9 = [v6 buttonTray];
  [v9 addButton:v7];

  v10 = +[OBLinkTrayButton linkButton];
  v11 = settingsLocString(@"SECURE_INTENT_NOT_NOW", @"Accessibility");
  [v10 setTitle:v11 forState:0];

  [v10 addTarget:self action:"_cancelEnrollment" forControlEvents:64];
  v12 = [v6 buttonTray];
  [v12 addButton:v10];

  v13 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"_cancelEnrollment"];
  v14 = [v6 navigationItem];
  [v14 setLeftBarButtonItem:v13];

  [(SecureIntentViewController *)self pushViewController:v6 animated:1];
}

- (void)_cancelEnrollment
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = __47__SecureIntentViewController__cancelEnrollment__block_invoke;
  v2[3] = &unk_2553B0;
  v2[4] = self;
  [(SecureIntentViewController *)self dismissViewControllerAnimated:1 completion:v2];
}

void __47__SecureIntentViewController__cancelEnrollment__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  [WeakRetained secureIntentViewControllerDidCancel:*(a1 + 32)];
}

- (void)_continueEnrollment
{
  if (self->_pkController)
  {
    v2 = AXLogSettings();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      [(SecureIntentViewController *)v2 _continueEnrollment];
    }
  }

  else
  {
    requestSource = self->_requestSource;
    if (requestSource > 2)
    {
      v2 = &stru_25D420;
    }

    else
    {
      v2 = settingsLocString(off_257E00[requestSource], @"Accessibility");
    }

    v5 = objc_alloc_init(PKPaymentSummaryItem);
    [v5 setLabel:v2];
    v6 = settingsLocString(@"SECURE_INTENT_ENABLE_TITLE", @"Accessibility");
    [v5 setLocalizedTitle:v6];

    v7 = objc_alloc_init(PKPaymentRequest);
    [v7 setRequestType:6];
    [v7 setConfirmationStyle:1];
    v8 = [(LAContext *)self->_context externalizedContext];
    [v7 setExternalizedContext:v8];

    v13 = v5;
    v9 = [NSArray arrayWithObjects:&v13 count:1];
    [v7 setPaymentSummaryItems:v9];

    v10 = [(SecureIntentViewController *)self _errorMessage];
    [v7 setLocalizedErrorMessage:v10];

    v11 = [[PKPaymentAuthorizationController alloc] initWithPaymentRequest:v7];
    pkController = self->_pkController;
    self->_pkController = v11;

    [(PKPaymentAuthorizationController *)self->_pkController setDelegate:self];
    [(PKPaymentAuthorizationController *)self->_pkController setPrivateDelegate:self];
    [(PKPaymentAuthorizationController *)self->_pkController presentWithCompletion:&__block_literal_global_43];
  }
}

void __49__SecureIntentViewController__continueEnrollment__block_invoke(id a1, BOOL a2)
{
  v3 = AXLogSettings();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __49__SecureIntentViewController__continueEnrollment__block_invoke_cold_1(a2, v3);
  }
}

- (id)_title
{
  requestSource = self->_requestSource;
  if (requestSource > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = settingsLocString(off_257E18[requestSource], @"Accessibility");
  }

  return v4;
}

- (id)_details
{
  requestSource = self->_requestSource;
  switch(requestSource)
  {
    case 2uLL:
      v5 = AXLocStringKeyForModel();
      v4 = settingsLocString(v5, @"Accessibility");

      break;
    case 1uLL:
      v3 = @"SECURE_INTENT_AST_DETAIL";
      goto LABEL_6;
    case 0uLL:
      v3 = @"SECURE_INTENT_SC_DETAIL";
LABEL_6:
      v4 = settingsLocString(v3, @"Accessibility");
      break;
    default:
      v4 = 0;
      break;
  }

  return v4;
}

- (id)_errorMessage
{
  requestSource = self->_requestSource;
  if (requestSource > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = settingsLocString(off_257E30[requestSource], @"Accessibility");
  }

  return v4;
}

- (id)_logger
{
  if (self->_requestSource == 2)
  {
    AXLogUltronKShot();
  }

  else
  {
    AXLogSettings();
  }
  v2 = ;

  return v2;
}

+ (int64_t)authStorageKeyForRequestSource:(unint64_t)a3
{
  if (a3 > 2)
  {
    return 0;
  }

  else
  {
    return qword_1DA8E0[a3];
  }
}

+ (BOOL)isEnrolledWithRequestSource:(unint64_t)a3
{
  v4 = [[LAStorage alloc] initWithDomain:0 authenticationContext:0];
  v5 = [SecureIntentViewController authStorageKeyForRequestSource:a3];
  if (v5)
  {
    v6 = [v4 BOOLForKey:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5
{
  v6 = a4;
  v8 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"_cancelEnrollment"];
  v7 = [v6 navigationItem];

  [v7 setLeftBarButtonItem:v8];
}

- (void)paymentAuthorizationControllerDidFinish:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  pkController = self->_pkController;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __70__SecureIntentViewController_paymentAuthorizationControllerDidFinish___block_invoke;
  v6[3] = &unk_255818;
  objc_copyWeak(&v7, &location);
  v6[4] = self;
  [(PKPaymentAuthorizationController *)pkController dismissWithCompletion:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __70__SecureIntentViewController_paymentAuthorizationControllerDidFinish___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = WeakRetained[2];
  WeakRetained[2] = 0;

  AXPerformBlockOnMainThread();
}

id __70__SecureIntentViewController_paymentAuthorizationControllerDidFinish___block_invoke_2(uint64_t a1)
{
  if (*(*(a1 + 32) + 8) <= 1uLL)
  {
    _AXSAccessibilitySetSecureIntentProvider();
  }

  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = __70__SecureIntentViewController_paymentAuthorizationControllerDidFinish___block_invoke_3;
  v3[3] = &unk_255538;
  return [*(a1 + 32) dismissViewControllerAnimated:1 completion:v3];
}

void __70__SecureIntentViewController_paymentAuthorizationControllerDidFinish___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  [WeakRetained secureIntentViewControllerDidFinish:*(a1 + 40)];
}

- (id)presentationWindowForPaymentAuthorizationController:(id)a3
{
  v3 = [(SecureIntentViewController *)self view];
  v4 = [v3 window];

  return v4;
}

- (id)authStorageKeyDescription:(int64_t)a3
{
  v3 = @"LAStorageKeySoundEnrollment";
  if (a3 != 17)
  {
    v3 = 0;
  }

  if (a3 == 1)
  {
    return @"LAStorageKeyDoublePressDisabled";
  }

  else
  {
    return v3;
  }
}

- (id)requestSourceDescription
{
  requestSource = self->_requestSource;
  v3 = @"SecureIntentRequestSourceSwitchControl";
  if (requestSource == 1)
  {
    v3 = @"SecureIntentRequestSourceAssistiveTouch";
  }

  if (requestSource == 2)
  {
    return @"SecureIntentRequestSourceCustomSoundRecognition";
  }

  else
  {
    return v3;
  }
}

- (void)paymentAuthorizationController:(id)a3 didAuthorizeContextWithHandler:(id)a4
{
  v5 = a4;
  v6 = [(SecureIntentViewController *)self _authStorageKey];
  if (v6)
  {
    v7 = v6;
    v8 = [[LAStorage alloc] initWithDomain:0 authenticationContext:self->_context];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = __92__SecureIntentViewController_paymentAuthorizationController_didAuthorizeContextWithHandler___block_invoke;
    v10[3] = &unk_257DE0;
    v10[4] = self;
    v12 = v7;
    v11 = v5;
    [v8 setBool:1 forKey:v7 completionHandler:v10];
  }

  else
  {
    v9 = [(SecureIntentViewController *)self _logger];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SecureIntentViewController paymentAuthorizationController:v9 didAuthorizeContextWithHandler:?];
    }

    v8 = [[PKPaymentAuthorizationResult alloc] initWithStatus:0 errors:0];
    (*(v5 + 2))(v5, v8);
  }
}

void __92__SecureIntentViewController_paymentAuthorizationController_didAuthorizeContextWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _logger];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v11 = [*(a1 + 32) authStorageKeyDescription:*(a1 + 48)];
      v12 = [*(a1 + 32) requestSourceDescription];
      *buf = 138412802;
      v15 = v11;
      v16 = 2112;
      v17 = v12;
      v18 = 2112;
      v19 = v3;
      _os_log_error_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "SecureIntent: Unable to set LAStorageKey: %@ for request source: %@. Error: %@", buf, 0x20u);
    }

    v6 = [PKPaymentAuthorizationResult alloc];
    v13 = v3;
    v7 = [NSArray arrayWithObjects:&v13 count:1];
    v8 = [v6 initWithStatus:1 errors:v7];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 32) authStorageKeyDescription:*(a1 + 48)];
      v10 = [*(a1 + 32) requestSourceDescription];
      *buf = 138412546;
      v15 = v9;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "SecureIntent: Successfully set LAStorageKey: %@ for request source: %@.", buf, 0x16u);
    }

    v8 = [[PKPaymentAuthorizationResult alloc] initWithStatus:0 errors:0];
  }

  (*(*(a1 + 40) + 16))();
}

- (SecureIntentViewControllerDelegate)intentDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_intentDelegate);

  return WeakRetained;
}

void __49__SecureIntentViewController__continueEnrollment__block_invoke_cold_1(char a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1 & 1;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "Showing Controller: %d", v2, 8u);
}

- (void)paymentAuthorizationController:(NSObject *)a1 didAuthorizeContextWithHandler:.cold.1(NSObject *a1)
{
  v2 = [NSNumber numberWithInteger:0];
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_0, a1, OS_LOG_TYPE_ERROR, "SecureIntent: Not supported. Receieved storage key: %@. Bypassing the payment sheet.", &v3, 0xCu);
}

@end