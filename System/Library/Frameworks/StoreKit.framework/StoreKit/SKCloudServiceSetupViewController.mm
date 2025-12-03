@interface SKCloudServiceSetupViewController
- (SKCloudServiceSetupViewController)initWithConfiguration:(id)configuration;
- (SKCloudServiceSetupViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)_errorWithCode:(int64_t)code errorDescriptionLocalizationKey:(id)key;
- (id)_subscriptionOfferOptionsWithAction:(id)action messageIdentifier:(id)identifier;
- (id)delegate;
- (void)_didReceiveRemoteViewController:(id)controller;
- (void)_dismissCloudServiceSetupViewControllerWithAnimation:(BOOL)animation completion:(id)completion;
- (void)_reloadWithActiveCloudServiceSetupReloadContext;
- (void)_remoteViewControllerExtensionWasInterrupted;
- (void)_reportCompletionForInlineOfferUnsupported;
- (void)_reportErrorForMissingSystemMusicApplication;
- (void)_requestRemoteViewController;
- (void)cloudServiceSetupRemoteViewController:(id)controller didFinishLoadingWithSuccess:(BOOL)success error:(id)error;
- (void)cloudServiceSetupRemoteViewController:(id)controller requestsDismissingSafariViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)cloudServiceSetupRemoteViewController:(id)controller requestsPresentingSafariViewControllerWithURL:(id)l animated:(BOOL)animated completion:(id)completion;
- (void)dealloc;
- (void)handleSafariScriptURL:(id)l;
- (void)loadWithOptions:(NSDictionary *)options completionHandler:(void *)completionHandler;
- (void)overrideCreditCardPresentationWithCompletion:(id)completion;
- (void)overrideRedeemCameraPerformAction:(int64_t)action withObject:(id)object;
- (void)reloadWithContext:(id)context;
- (void)safariViewController:(id)controller didCompleteInitialLoad:(BOOL)load;
- (void)safariViewControllerDidFinish:(id)finish;
- (void)setModalInPresentation:(BOOL)presentation;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation SKCloudServiceSetupViewController

- (SKCloudServiceSetupViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v5 = objc_alloc_init(SKCloudServiceSetupConfiguration);
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  infoDictionary = [mainBundle infoDictionary];

  v8 = [infoDictionary objectForKey:@"CFBundleIdentifier"];
  [(SKCloudServiceSetupConfiguration *)v5 setApplicationIdentifier:v8];

  v9 = [infoDictionary objectForKey:@"CFBundleVersion"];
  [(SKCloudServiceSetupConfiguration *)v5 setApplicationVersion:v9];

  [(SKCloudServiceSetupConfiguration *)v5 setTargetsFinanceApplication:1];
  [(SKCloudServiceSetupConfiguration *)v5 setForPublicSDK:1];
  v10 = [(SKCloudServiceSetupViewController *)self initWithConfiguration:v5];

  return v10;
}

- (SKCloudServiceSetupViewController)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v13.receiver = self;
  v13.super_class = SKCloudServiceSetupViewController;
  v5 = [(SKCloudServiceSetupViewController *)&v13 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = [configurationCopy copy];
    configuration = v5->_configuration;
    v5->_configuration = v6;

    [(SKCloudServiceSetupViewController *)v5 setModalPresentationStyle:2];
    if ([get_MusicSubscriptionOfferViewControllerClass() shouldUseModernSubscriptionOffer])
    {
      v8 = objc_alloc_init(get_MusicSubscriptionOfferViewControllerClass());
      subscriptionOfferViewController = v5->_subscriptionOfferViewController;
      v5->_subscriptionOfferViewController = v8;

      [(_MusicSubscriptionOfferViewController *)v5->_subscriptionOfferViewController setDelegate:v5];
      [(SKCloudServiceSetupViewController *)v5 addChildViewController:v5->_subscriptionOfferViewController];
      if ([(SKCloudServiceSetupViewController *)v5 isViewLoaded])
      {
        view = [(SKCloudServiceSetupViewController *)v5 view];
        view2 = [(_MusicSubscriptionOfferViewController *)v5->_subscriptionOfferViewController view];
        [view addSubview:view2];
      }

      [(_MusicSubscriptionOfferViewController *)v5->_subscriptionOfferViewController didMoveToParentViewController:v5];
    }

    else
    {
      [(SKCloudServiceSetupViewController *)v5 _requestRemoteViewController];
    }
  }

  return v5;
}

- (void)dealloc
{
  p_subscriptionOfferViewController = &self->_subscriptionOfferViewController;
  subscriptionOfferViewController = self->_subscriptionOfferViewController;
  if (subscriptionOfferViewController)
  {
    [(_MusicSubscriptionOfferViewController *)subscriptionOfferViewController willMoveToParentViewController:0];
    if (([(_MusicSubscriptionOfferViewController *)*p_subscriptionOfferViewController isViewLoaded]& 1) != 0)
    {
LABEL_3:
      view = [(_MusicSubscriptionOfferViewController *)*p_subscriptionOfferViewController view];
      [view removeFromSuperview];
    }
  }

  else
  {
    p_subscriptionOfferViewController = &self->_remoteViewContainerViewController;
    remoteViewContainerViewController = self->_remoteViewContainerViewController;
    if (!remoteViewContainerViewController)
    {
      goto LABEL_5;
    }

    [(_UIResilientRemoteViewContainerViewController *)remoteViewContainerViewController willMoveToParentViewController:0];
    if ([(_MusicSubscriptionOfferViewController *)*p_subscriptionOfferViewController isViewLoaded])
    {
      goto LABEL_3;
    }
  }

  [(_MusicSubscriptionOfferViewController *)*p_subscriptionOfferViewController removeFromParentViewController];
LABEL_5:
  v7.receiver = self;
  v7.super_class = SKCloudServiceSetupViewController;
  [(SKCloudServiceSetupViewController *)&v7 dealloc];
}

- (void)setModalInPresentation:(BOOL)presentation
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  NSLog(&cfstr_ChangingTheVal.isa, v4);
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = SKCloudServiceSetupViewController;
  [(SKCloudServiceSetupViewController *)&v7 viewDidLoad];
  view = [(SKCloudServiceSetupViewController *)self view];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [view setBackgroundColor:systemBackgroundColor];

  subscriptionOfferViewController = self->_subscriptionOfferViewController;
  if (subscriptionOfferViewController || (subscriptionOfferViewController = self->_remoteViewContainerViewController) != 0)
  {
    view2 = [(_MusicSubscriptionOfferViewController *)subscriptionOfferViewController view];
    [view bounds];
    [view2 setFrame:?];
    [view2 setAutoresizingMask:18];
    [view addSubview:view2];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = SKCloudServiceSetupViewController;
  [(SKCloudServiceSetupViewController *)&v5 viewDidAppear:appear];
  self->_isFullyAppeared = 1;
  alertController = self->_alertController;
  if (alertController)
  {
    [(SKCloudServiceSetupViewController *)self presentViewController:alertController animated:1 completion:0];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = SKCloudServiceSetupViewController;
  [(SKCloudServiceSetupViewController *)&v6 viewWillAppear:appear];
  if (self->_alertController)
  {
    view = [(SKCloudServiceSetupViewController *)self view];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [view setBackgroundColor:clearColor];

    [view setOpaque:0];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = SKCloudServiceSetupViewController;
  [(SKCloudServiceSetupViewController *)&v4 viewWillDisappear:disappear];
  self->_isFullyAppeared = 0;
}

- (void)safariViewController:(id)controller didCompleteInitialLoad:(BOOL)load
{
  mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
  shouldLog = [mEMORY[0x1E69D4938] shouldLog];
  if ([mEMORY[0x1E69D4938] shouldLogToDisk])
  {
    v6 = shouldLog | 2;
  }

  else
  {
    v6 = shouldLog;
  }

  oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v6;
  }

  else
  {
    v8 = v6 & 2;
  }

  if (!v8)
  {
    goto LABEL_10;
  }

  v11[0] = 0;
  LODWORD(v10) = 2;
  v9 = _os_log_send_and_compose_impl();

  if (v9)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:{4, v11, v10}];
    free(v9);
    SSFileLog();
LABEL_10:
  }
}

- (void)safariViewControllerDidFinish:(id)finish
{
  mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
  shouldLog = [mEMORY[0x1E69D4938] shouldLog];
  if ([mEMORY[0x1E69D4938] shouldLogToDisk])
  {
    v6 = shouldLog | 2;
  }

  else
  {
    v6 = shouldLog;
  }

  oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v6;
  }

  else
  {
    v8 = v6 & 2;
  }

  if (!v8)
  {
    goto LABEL_10;
  }

  v12[0] = 0;
  LODWORD(v11) = 2;
  v9 = _os_log_send_and_compose_impl();

  if (v9)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:{4, v12, v11}];
    free(v9);
    SSFileLog();
LABEL_10:
  }

  safariViewController = self->_safariViewController;
  self->_safariViewController = 0;
}

- (void)cloudServiceSetupRemoteViewController:(id)controller didFinishLoadingWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  errorCopy = error;
  v7 = _Block_copy(self->_loadCompletionHandler);
  if (v7)
  {
    loadCompletionHandler = self->_loadCompletionHandler;
    self->_loadCompletionHandler = 0;

    v9 = errorCopy;
    if (!errorCopy && !successCopy)
    {
      v9 = [(SKCloudServiceSetupViewController *)self _errorWithCode:0 errorDescriptionLocalizationKey:@"UNKNOWN_ERROR"];
    }

    errorCopy = v9;
    v7[2](v7, successCopy);
  }
}

- (void)cloudServiceSetupRemoteViewController:(id)controller requestsPresentingSafariViewControllerWithURL:(id)l animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  lCopy = l;
  completionCopy = completion;
  if (self->_safariViewController)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __141__SKCloudServiceSetupViewController_cloudServiceSetupRemoteViewController_requestsPresentingSafariViewControllerWithURL_animated_completion___block_invoke;
    v17[3] = &unk_1E7B28768;
    v17[4] = self;
    v18 = controllerCopy;
    v19 = lCopy;
    v21 = animatedCopy;
    v20 = completionCopy;
    [(SKCloudServiceSetupViewController *)self cloudServiceSetupRemoteViewController:v18 requestsDismissingSafariViewControllerAnimated:0 completion:v17];
  }

  else
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x2050000000;
    v13 = getSFSafariViewControllerClass_softClass;
    v26 = getSFSafariViewControllerClass_softClass;
    if (!getSFSafariViewControllerClass_softClass)
    {
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __getSFSafariViewControllerClass_block_invoke;
      v22[3] = &unk_1E7B279A8;
      v22[4] = &v23;
      __getSFSafariViewControllerClass_block_invoke(v22);
      v13 = v24[3];
    }

    v14 = v13;
    _Block_object_dispose(&v23, 8);
    v15 = [[v13 alloc] initWithURL:lCopy];
    safariViewController = self->_safariViewController;
    self->_safariViewController = v15;

    [(SFSafariViewController *)self->_safariViewController setDelegate:self];
    [(SFSafariViewController *)self->_safariViewController setModalPresentationStyle:3];
    [(SKCloudServiceSetupViewController *)self presentViewController:self->_safariViewController animated:animatedCopy completion:completionCopy];
  }
}

- (void)cloudServiceSetupRemoteViewController:(id)controller requestsDismissingSafariViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  completionCopy = completion;
  v10 = completionCopy;
  safariViewController = self->_safariViewController;
  if (safariViewController)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __133__SKCloudServiceSetupViewController_cloudServiceSetupRemoteViewController_requestsDismissingSafariViewControllerAnimated_completion___block_invoke;
    v12[3] = &unk_1E7B28438;
    v12[4] = self;
    v13 = completionCopy;
    [(SFSafariViewController *)safariViewController dismissViewControllerAnimated:animatedCopy completion:v12];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

uint64_t __133__SKCloudServiceSetupViewController_cloudServiceSetupRemoteViewController_requestsDismissingSafariViewControllerAnimated_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 1048);
  *(v2 + 1048) = 0;

  result = *(a1 + 40);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

- (void)overrideCreditCardPresentationWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __82__SKCloudServiceSetupViewController_overrideCreditCardPresentationWithCompletion___block_invoke;
  v6[3] = &unk_1E7B27B30;
  v6[4] = self;
  v7 = completionCopy;
  v5 = completionCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __82__SKCloudServiceSetupViewController_overrideCreditCardPresentationWithCompletion___block_invoke(uint64_t a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v2 = getSUCreditCardReaderViewControllerClass_softClass_0;
  v10 = getSUCreditCardReaderViewControllerClass_softClass_0;
  if (!getSUCreditCardReaderViewControllerClass_softClass_0)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __getSUCreditCardReaderViewControllerClass_block_invoke_0;
    v6[3] = &unk_1E7B279A8;
    v6[4] = &v7;
    __getSUCreditCardReaderViewControllerClass_block_invoke_0(v6);
    v2 = v8[3];
  }

  v3 = v2;
  _Block_object_dispose(&v7, 8);
  v4 = objc_alloc_init(v2);
  v5 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v4];
  [v4 setCompletionBlock:*(a1 + 40)];
  [v5 setModalPresentationStyle:0];
  [*(a1 + 32) presentViewController:v5 animated:1 completion:0];
}

- (void)overrideRedeemCameraPerformAction:(int64_t)action withObject:(id)object
{
  objectCopy = object;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__SKCloudServiceSetupViewController_overrideRedeemCameraPerformAction_withObject___block_invoke;
  block[3] = &unk_1E7B27B80;
  v9 = objectCopy;
  actionCopy = action;
  block[4] = self;
  v7 = objectCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __82__SKCloudServiceSetupViewController_overrideRedeemCameraPerformAction_withObject___block_invoke(uint64_t a1)
{
  if (*(a1 + 48) == 1 && (v2 = objc_loadWeakRetained((*(a1 + 32) + 1000)), v2, !v2))
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2050000000;
    v4 = getSURedeemCameraViewControllerClass_softClass_0;
    v15 = getSURedeemCameraViewControllerClass_softClass_0;
    if (!getSURedeemCameraViewControllerClass_softClass_0)
    {
      location[0] = MEMORY[0x1E69E9820];
      location[1] = 3221225472;
      location[2] = __getSURedeemCameraViewControllerClass_block_invoke_0;
      location[3] = &unk_1E7B279A8;
      location[4] = &v12;
      __getSURedeemCameraViewControllerClass_block_invoke_0(location);
      v4 = v13[3];
    }

    v5 = v4;
    _Block_object_dispose(&v12, 8);
    v6 = objc_alloc_init(v4);
    objc_initWeak(location, *(a1 + 32));
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __82__SKCloudServiceSetupViewController_overrideRedeemCameraPerformAction_withObject___block_invoke_2;
    v9[3] = &unk_1E7B27B58;
    objc_copyWeak(&v10, location);
    [v6 setCodeHandler:v9];
    v7 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v6];
    [v7 setModalPresentationStyle:0];
    [*(a1 + 32) presentViewController:v7 animated:1 completion:0];
    objc_storeWeak((*(a1 + 32) + 1000), v6);

    objc_destroyWeak(&v10);
    objc_destroyWeak(location);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1000));

    if (WeakRetained)
    {
      v8 = objc_loadWeakRetained((*(a1 + 32) + 1000));
      [v8 performAction:*(a1 + 48) withObject:*(a1 + 40)];
    }
  }
}

void __82__SKCloudServiceSetupViewController_overrideRedeemCameraPerformAction_withObject___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained[126] remoteViewController];
    v6 = [v5 serviceViewControllerProxy];
    [v6 redeemCameraCodeDetected:v7];
  }
}

- (void)loadWithOptions:(NSDictionary *)options completionHandler:(void *)completionHandler
{
  v6 = options;
  v7 = completionHandler;
  v8 = _Block_copy(self->_loadCompletionHandler);
  if (v8)
  {
    loadCompletionHandler = self->_loadCompletionHandler;
    self->_loadCompletionHandler = 0;

    v10 = [(SKCloudServiceSetupViewController *)self _errorWithCode:0 errorDescriptionLocalizationKey:@"CLOUD_SERVICE_SETUP_VIEW_CONTROLLER_LOAD_PREEMPTED"];
    v8[2](v8, 0, v10);
  }

  if (+[SKCloudServiceController authorizationStatus]== SKCloudServiceAuthorizationStatusAuthorized)
  {
    if (self->_isUnableToLoadRemoteViewController)
    {
      v11 = [v7 copy];
      v12 = self->_loadCompletionHandler;
      self->_loadCompletionHandler = v11;

      [(SKCloudServiceSetupViewController *)self _reportErrorForMissingSystemMusicApplication];
      goto LABEL_61;
    }

    if (self->_isInlineOfferUnsupported)
    {
      v14 = [v7 copy];
      v15 = self->_loadCompletionHandler;
      self->_loadCompletionHandler = v14;

      [(SKCloudServiceSetupViewController *)self _reportCompletionForInlineOfferUnsupported];
      goto LABEL_61;
    }

    v16 = [(NSDictionary *)v6 objectForKey:@"SKCloudServiceSetupOptionsActionKey"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v20 = [(SKCloudServiceSetupViewController *)self _errorWithCode:0 errorDescriptionLocalizationKey:@"CLOUD_SERVICE_SETUP_VIEW_CONTROLLER_REQUIRES_ACTION"];
      (*(v7 + 2))(v7, 0, v20);

LABEL_60:
      goto LABEL_61;
    }

    v57 = v16;
    v17 = [(NSDictionary *)v6 mutableCopy];
    [v17 removeObjectForKey:@"SKCloudServiceSetupOptionsActionKey"];
    v18 = [(NSDictionary *)v6 objectForKey:@"adamId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", objc_msgSend(v18, "unsignedLongLongValue")];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v56 = 0;
        goto LABEL_18;
      }

      v19 = v18;
    }

    v56 = v19;
LABEL_18:
    [v17 removeObjectForKey:@"adamId"];
    v21 = [(NSDictionary *)v6 objectForKey:@"at"];
    v51 = v18;
    if (v21)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        v21 = 0;
      }
    }

    v22 = v17;
    [v17 removeObjectForKey:@"at"];
    v23 = [(NSDictionary *)v6 objectForKey:@"ct"];
    if (v23)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        v23 = 0;
      }
    }

    [v17 removeObjectForKey:@"ct"];
    v24 = [(NSDictionary *)v6 objectForKey:@"messageId"];
    if (v24)
    {
      v25 = v24;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v55 = v25;
LABEL_29:
        [v22 removeObjectForKey:@"messageId"];
        v26 = [(NSDictionary *)v6 objectForKey:@"_SKCloudServiceSetupOptionsUserInfoKey"];
        objc_opt_class();
        v50 = v26;
        if (objc_opt_isKindOfClass())
        {
          v27 = v26;
        }

        else
        {
          v27 = 0;
        }

        v52 = v23;
        [v22 removeObjectForKey:@"_SKCloudServiceSetupOptionsUserInfoKey"];
        v28 = [(NSDictionary *)v6 objectForKey:@"_SKCloudServiceSetupOptionsAudioAccessorySerialNumberKey"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v54 = v28;
          v28 = [v27 mutableCopy];
          if (!v28)
          {
            v28 = objc_alloc_init(MEMORY[0x1E695DF90]);
          }

          [v28 setObject:v54 forKey:@"audioAccessorySerialNumber"];
          v29 = [v28 copy];

          v27 = v29;
        }

        else
        {
          v54 = 0;
        }

        v30 = v22;
        [v22 removeObjectForKey:@"_SKCloudServiceSetupOptionsAudioAccessorySerialNumberKey"];
        v31 = [(NSDictionary *)v6 objectForKey:@"_SKCloudServiceSetupOptionsAudioAccessoryUniqueDeviceIdentifierKey"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v53 = v31;
          v31 = [v27 mutableCopy];
          if (!v31)
          {
            v31 = objc_alloc_init(MEMORY[0x1E695DF90]);
          }

          [v31 setObject:v53 forKey:@"audioAccessoryGUID"];
          v32 = [v31 copy];

          v49 = v32;
        }

        else
        {
          v49 = v27;
          v53 = 0;
        }

        [v30 removeObjectForKey:@"_SKCloudServiceSetupOptionsAudioAccessoryUniqueDeviceIdentifierKey"];
        v47 = v21;
        v48 = v30;
        if (self->_subscriptionOfferViewController)
        {
          v33 = [(SKCloudServiceSetupViewController *)self _subscriptionOfferOptionsWithAction:v57 messageIdentifier:v55];
          [(SKCloudServiceSetupReloadContext *)v33 setItemID:v56];
          [(SKCloudServiceSetupReloadContext *)v33 setAffiliateToken:v21];
          [(SKCloudServiceSetupReloadContext *)v33 setCampaignToken:v52];
          v34 = v54;
          [(SKCloudServiceSetupReloadContext *)v33 setHomePodSerialNumber:v54];
          v35 = v53;
          [(SKCloudServiceSetupReloadContext *)v33 setHomePodUniqueDeviceIdentifier:v53];
          v36 = v30;
          v37 = v52;
          [(SKCloudServiceSetupReloadContext *)v33 setOtherOptions:v36];
          subscriptionOfferViewController = self->_subscriptionOfferViewController;
          v60[0] = MEMORY[0x1E69E9820];
          v60[1] = 3221225472;
          v60[2] = __71__SKCloudServiceSetupViewController_loadWithOptions_completionHandler___block_invoke;
          v60[3] = &unk_1E7B28790;
          v60[4] = self;
          v39 = v56;
          v61 = v7;
          v40 = subscriptionOfferViewController;
          v41 = v55;
          [(_MusicSubscriptionOfferViewController *)v40 loadWithOptions:v33 completionHandler:v60];

          v42 = v49;
        }

        else
        {
          v33 = objc_alloc_init(SKCloudServiceSetupReloadContext);
          [(SKCloudServiceSetupReloadContext *)v33 setAction:v57];
          if (v56)
          {
            [v30 setObject:v56 forKey:@"adamId"];
          }

          v41 = v55;
          if (v21)
          {
            [v30 setObject:v21 forKey:@"at"];
          }

          if (v52)
          {
            [v30 setObject:v52 forKey:@"ct"];
          }

          if (v55)
          {
            [v30 setObject:v55 forKey:@"messageId"];
          }

          if ([(SKCloudServiceSetupConfiguration *)self->_configuration forPublicSDK])
          {
            [v30 setObject:@"true" forKey:@"sdk"];
          }

          v43 = objc_alloc_init(MEMORY[0x1E695DF70]);
          if ([v30 count])
          {
            v58[0] = MEMORY[0x1E69E9820];
            v58[1] = 3221225472;
            v58[2] = __71__SKCloudServiceSetupViewController_loadWithOptions_completionHandler___block_invoke_101;
            v58[3] = &unk_1E7B27D18;
            v44 = v43;
            v59 = v44;
            [v30 enumerateKeysAndObjectsUsingBlock:v58];
            if ([v44 count])
            {
              [(SKCloudServiceSetupReloadContext *)v33 setQueryItems:v44];
            }

            v41 = v55;
          }

          v42 = v49;
          [(SKCloudServiceSetupReloadContext *)v33 setUserInfo:v49];
          v45 = [v7 copy];
          v46 = self->_loadCompletionHandler;
          self->_loadCompletionHandler = v45;

          [(SKCloudServiceSetupViewController *)self reloadWithContext:v33];
          v39 = v56;
          v37 = v52;
          v35 = v53;
          v34 = v54;
        }

        v16 = v57;
        goto LABEL_60;
      }
    }

    v55 = 0;
    goto LABEL_29;
  }

  if (v7)
  {
    v13 = [(SKCloudServiceSetupViewController *)self _errorWithCode:6 errorDescriptionLocalizationKey:@"PERMISSION_DENIED"];
    (*(v7 + 2))(v7, 0, v13);
  }

LABEL_61:
}

void __71__SKCloudServiceSetupViewController_loadWithOptions_completionHandler___block_invoke(uint64_t a1, int a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E69D4938] sharedConfig];
  v7 = [v6 shouldLog];
  if ([v6 shouldLogToDisk])
  {
    v8 = v7 | 2;
  }

  else
  {
    v8 = v7;
  }

  v9 = [v6 OSLogObject];
  if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v8 &= 2u;
  }

  if (!v8)
  {
    goto LABEL_9;
  }

  *v13 = 138543874;
  *&v13[4] = objc_opt_class();
  *&v13[12] = 1024;
  *&v13[14] = a2;
  *&v13[18] = 2114;
  *&v13[20] = v5;
  v10 = *&v13[4];
  LODWORD(v12) = 28;
  v11 = _os_log_send_and_compose_impl();

  if (v11)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithCString:v11 encoding:{4, v13, v12, *v13, *&v13[16]}];
    free(v11);
    SSFileLog();
LABEL_9:
  }

  (*(*(a1 + 40) + 16))();
}

void __71__SKCloudServiceSetupViewController_loadWithOptions_completionHandler___block_invoke_101(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [MEMORY[0x1E696AF60] queryItemWithName:v7 value:v5];
      if (v6)
      {
        [*(a1 + 32) addObject:v6];
      }
    }
  }
}

- (void)reloadWithContext:(id)context
{
  contextCopy = context;
  activeCloudServiceSetupReloadContext = self->_activeCloudServiceSetupReloadContext;
  if (activeCloudServiceSetupReloadContext != contextCopy)
  {
    v8 = contextCopy;
    activeCloudServiceSetupReloadContext = [activeCloudServiceSetupReloadContext isEqual:contextCopy];
    contextCopy = v8;
    if ((activeCloudServiceSetupReloadContext & 1) == 0)
    {
      v6 = [v8 copy];
      v7 = self->_activeCloudServiceSetupReloadContext;
      self->_activeCloudServiceSetupReloadContext = v6;

      activeCloudServiceSetupReloadContext = [(SKCloudServiceSetupViewController *)self _reloadWithActiveCloudServiceSetupReloadContext];
      contextCopy = v8;
    }
  }

  MEMORY[0x1EEE66BB8](activeCloudServiceSetupReloadContext, contextCopy);
}

- (void)handleSafariScriptURL:(id)l
{
  remoteViewContainerViewController = self->_remoteViewContainerViewController;
  lCopy = l;
  remoteViewController = [(_UIResilientRemoteViewContainerViewController *)remoteViewContainerViewController remoteViewController];
  serviceViewControllerProxy = [remoteViewController serviceViewControllerProxy];

  [serviceViewControllerProxy handleSafariScriptURL:lCopy];
}

- (id)_errorWithCode:(int64_t)code errorDescriptionLocalizationKey:(id)key
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AAE8];
  keyCopy = key;
  v7 = [v5 bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:keyCopy value:&stru_1F29BCE20 table:0];

  if (v8)
  {
    v12 = *MEMORY[0x1E696A578];
    v13[0] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  }

  else
  {
    v9 = 0;
  }

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SKErrorDomain" code:code userInfo:v9];

  return v10;
}

- (void)_reportErrorForMissingSystemMusicApplication
{
  v3 = _Block_copy(self->_loadCompletionHandler);
  if (v3)
  {
    loadCompletionHandler = self->_loadCompletionHandler;
    self->_loadCompletionHandler = 0;
    v6 = v3;

    v5 = [(SKCloudServiceSetupViewController *)self _errorWithCode:0 errorDescriptionLocalizationKey:@"CLOUD_SERVICE_SETUP_VIEW_CONTROLLER_MISSING_SYSTEM_MUSIC_APPLICATION"];
    v6[2](v6, 0, v5);

    v3 = v6;
  }
}

- (void)_reportCompletionForInlineOfferUnsupported
{
  v3 = _Block_copy(self->_loadCompletionHandler);
  if (v3)
  {
    loadCompletionHandler = self->_loadCompletionHandler;
    self->_loadCompletionHandler = 0;
    v5 = v3;

    v5[2](v5, 1, 0);
    v3 = v5;
  }
}

- (void)_requestRemoteViewController
{
  v3 = [MEMORY[0x1E696ABD0] extensionWithIdentifier:@"com.apple.Music.StoreFlowExtension" error:0];
  if (v3)
  {
    objc_initWeak(&location, self);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __65__SKCloudServiceSetupViewController__requestRemoteViewController__block_invoke;
    v11[3] = &unk_1E7B287B8;
    objc_copyWeak(&v12, &location);
    [v3 setRequestInterruptionBlock:v11];
    [(SKCloudServiceSetupViewController *)self _beginDelayingPresentation:&__block_literal_global_9 cancellationHandler:3.0];
    v4 = MEMORY[0x1E69DD678];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __65__SKCloudServiceSetupViewController__requestRemoteViewController__block_invoke_2;
    v9[3] = &unk_1E7B28800;
    objc_copyWeak(&v10, &location);
    v5 = [v4 instantiateWithExtension:v3 completion:v9];
    remoteViewContainerViewController = self->_remoteViewContainerViewController;
    self->_remoteViewContainerViewController = v5;

    [(SKCloudServiceSetupViewController *)self addChildViewController:self->_remoteViewContainerViewController];
    if ([(SKCloudServiceSetupViewController *)self isViewLoaded])
    {
      view = [(SKCloudServiceSetupViewController *)self view];
      view2 = [(_UIResilientRemoteViewContainerViewController *)self->_remoteViewContainerViewController view];
      [view addSubview:view2];
    }

    [(_UIResilientRemoteViewContainerViewController *)self->_remoteViewContainerViewController didMoveToParentViewController:self];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  else
  {
    self->_isUnableToLoadRemoteViewController = 1;
    [(SKCloudServiceSetupViewController *)self _reportErrorForMissingSystemMusicApplication];
  }
}

void __65__SKCloudServiceSetupViewController__requestRemoteViewController__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = [MEMORY[0x1E69D4938] sharedConfig];
    v3 = [v2 shouldLog];
    if ([v2 shouldLogToDisk])
    {
      v4 = v3 | 2;
    }

    else
    {
      v4 = v3;
    }

    v5 = [v2 OSLogObject];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v4;
    }

    else
    {
      v6 = v4 & 2;
    }

    if (v6)
    {
      v9[0] = 0;
      LODWORD(v8) = 2;
      v7 = _os_log_send_and_compose_impl();

      if (!v7)
      {
LABEL_12:

        [WeakRetained _remoteViewControllerExtensionWasInterrupted];
        goto LABEL_13;
      }

      v5 = [MEMORY[0x1E696AEC0] stringWithCString:v7 encoding:{4, v9, v8}];
      free(v7);
      SSFileLog();
    }

    goto LABEL_12;
  }

LABEL_13:
}

void __65__SKCloudServiceSetupViewController__requestRemoteViewController__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didReceiveRemoteViewController:v4];
}

- (void)_didReceiveRemoteViewController:(id)controller
{
  [controller setDelegate:self];
  [(SKCloudServiceSetupViewController *)self _endDelayingPresentation];
  self->_isRemoteViewControllerReady = 1;

  [(SKCloudServiceSetupViewController *)self _reloadWithActiveCloudServiceSetupReloadContext];
}

- (void)_reloadWithActiveCloudServiceSetupReloadContext
{
  if (self->_isRemoteViewControllerReady && self->_activeCloudServiceSetupReloadContext)
  {
    remoteViewController = [(_UIResilientRemoteViewContainerViewController *)self->_remoteViewContainerViewController remoteViewController];
    serviceViewControllerProxy = [remoteViewController serviceViewControllerProxy];

    if (!self->_hasInitializedServiceViewController)
    {
      [serviceViewControllerProxy applyConfiguration:self->_configuration];
      self->_hasInitializedServiceViewController = 1;
    }

    [serviceViewControllerProxy reloadWithContext:self->_activeCloudServiceSetupReloadContext];
  }
}

- (void)_dismissCloudServiceSetupViewControllerWithAnimation:(BOOL)animation completion:(id)completion
{
  animationCopy = animation;
  v20 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  parentViewController = [(SKCloudServiceSetupViewController *)self parentViewController];
  if (parentViewController)
  {
    mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog = [mEMORY[0x1E69D4938] shouldLog];
    if ([mEMORY[0x1E69D4938] shouldLogToDisk])
    {
      v10 = shouldLog | 2;
    }

    else
    {
      v10 = shouldLog;
    }

    oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v10;
    }

    else
    {
      v12 = v10 & 2;
    }

    if (v12)
    {
      v16 = 138543618;
      selfCopy = self;
      v18 = 2114;
      v19 = parentViewController;
      LODWORD(v15) = 22;
      v13 = _os_log_send_and_compose_impl();

      if (!v13)
      {
LABEL_12:

        goto LABEL_14;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v13 encoding:{4, &v16, v15}];
      free(v13);
      SSFileLog();
    }

    goto LABEL_12;
  }

  [(SKCloudServiceSetupViewController *)self dismissViewControllerAnimated:animationCopy completion:completionCopy];
LABEL_14:
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained cloudServiceSetupViewControllerDidDismiss:self];
  }

  if (completionCopy && parentViewController)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)_remoteViewControllerExtensionWasInterrupted
{
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    transitionCoordinator = [(SKCloudServiceSetupViewController *)self transitionCoordinator];
    if (transitionCoordinator)
    {
      v4 = transitionCoordinator;
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __81__SKCloudServiceSetupViewController__remoteViewControllerExtensionWasInterrupted__block_invoke_2;
      v5[3] = &unk_1E7B28828;
      v5[4] = self;
      [transitionCoordinator animateAlongsideTransition:0 completion:v5];
    }

    else if (self->_isFullyAppeared)
    {

      [(SKCloudServiceSetupViewController *)self _dismissCloudServiceSetupViewControllerWithAnimation:1 completion:0];
    }
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __81__SKCloudServiceSetupViewController__remoteViewControllerExtensionWasInterrupted__block_invoke;
    block[3] = &unk_1E7B27980;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (id)_subscriptionOfferOptionsWithAction:(id)action messageIdentifier:(id)identifier
{
  actionCopy = action;
  identifierCopy = identifier;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v7 = get_MusicSubscriptionOfferActionSubscribeSymbolLoc_ptr;
  v29 = get_MusicSubscriptionOfferActionSubscribeSymbolLoc_ptr;
  if (!get_MusicSubscriptionOfferActionSubscribeSymbolLoc_ptr)
  {
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __get_MusicSubscriptionOfferActionSubscribeSymbolLoc_block_invoke;
    v24 = &unk_1E7B279A8;
    v25 = &v26;
    v8 = _MusicKit_SwiftUILibrary();
    v27[3] = dlsym(v8, "_MusicSubscriptionOfferActionSubscribe");
    get_MusicSubscriptionOfferActionSubscribeSymbolLoc_ptr = *(v25[1] + 24);
    v7 = v27[3];
  }

  _Block_object_dispose(&v26, 8);
  if (!v7)
  {
    [SKCloudServiceSetupViewController _subscriptionOfferOptionsWithAction:messageIdentifier:];
    goto LABEL_23;
  }

  v9 = *v7;
  v10 = get_MusicSubscriptionOfferMessageIdentifierJoin();
  if (![identifierCopy isEqualToString:@"join"])
  {
    if ([identifierCopy isEqualToString:@"addMusic"])
    {
      v26 = 0;
      v27 = &v26;
      v28 = 0x2020000000;
      v12 = get_MusicSubscriptionOfferMessageIdentifierAddMusicSymbolLoc_ptr;
      v29 = get_MusicSubscriptionOfferMessageIdentifierAddMusicSymbolLoc_ptr;
      if (!get_MusicSubscriptionOfferMessageIdentifierAddMusicSymbolLoc_ptr)
      {
        v21 = MEMORY[0x1E69E9820];
        v22 = 3221225472;
        v23 = __get_MusicSubscriptionOfferMessageIdentifierAddMusicSymbolLoc_block_invoke;
        v24 = &unk_1E7B279A8;
        v25 = &v26;
        v13 = _MusicKit_SwiftUILibrary();
        v27[3] = dlsym(v13, "_MusicSubscriptionOfferMessageIdentifierAddMusic");
        get_MusicSubscriptionOfferMessageIdentifierAddMusicSymbolLoc_ptr = *(v25[1] + 24);
        v12 = v27[3];
      }

      _Block_object_dispose(&v26, 8);
      if (v12)
      {
LABEL_15:
        v11 = *v12;
        goto LABEL_16;
      }

      [SKCloudServiceSetupViewController _subscriptionOfferOptionsWithAction:messageIdentifier:];
    }

    if (![identifierCopy isEqualToString:@"playMusic"])
    {
      goto LABEL_17;
    }

    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v12 = get_MusicSubscriptionOfferMessageIdentifierPlayMusicSymbolLoc_ptr;
    v29 = get_MusicSubscriptionOfferMessageIdentifierPlayMusicSymbolLoc_ptr;
    if (!get_MusicSubscriptionOfferMessageIdentifierPlayMusicSymbolLoc_ptr)
    {
      v21 = MEMORY[0x1E69E9820];
      v22 = 3221225472;
      v23 = __get_MusicSubscriptionOfferMessageIdentifierPlayMusicSymbolLoc_block_invoke;
      v24 = &unk_1E7B279A8;
      v25 = &v26;
      v14 = _MusicKit_SwiftUILibrary();
      v27[3] = dlsym(v14, "_MusicSubscriptionOfferMessageIdentifierPlayMusic");
      get_MusicSubscriptionOfferMessageIdentifierPlayMusicSymbolLoc_ptr = *(v25[1] + 24);
      v12 = v27[3];
    }

    _Block_object_dispose(&v26, 8);
    if (v12)
    {
      goto LABEL_15;
    }

LABEL_23:
    v20 = [SKCloudServiceSetupViewController _subscriptionOfferOptionsWithAction:messageIdentifier:];
    _Block_object_dispose(&v26, 8);
    _Unwind_Resume(v20);
  }

  v11 = get_MusicSubscriptionOfferMessageIdentifierJoin();
LABEL_16:
  v15 = v11;

  v10 = v15;
LABEL_17:
  v26 = 0;
  v27 = &v26;
  v28 = 0x2050000000;
  v16 = get_MusicSubscriptionOfferOptionsClass_softClass;
  v29 = get_MusicSubscriptionOfferOptionsClass_softClass;
  if (!get_MusicSubscriptionOfferOptionsClass_softClass)
  {
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __get_MusicSubscriptionOfferOptionsClass_block_invoke;
    v24 = &unk_1E7B279A8;
    v25 = &v26;
    __get_MusicSubscriptionOfferOptionsClass_block_invoke(&v21);
    v16 = v27[3];
  }

  v17 = v16;
  _Block_object_dispose(&v26, 8);
  v18 = [[v16 alloc] initWithAction:v9 messageIdentifier:v10];

  return v18;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (uint64_t)_subscriptionOfferOptionsWithAction:messageIdentifier:.cold.1()
{
  dlerror();
  abort_report_np();
  return __get_MusicSubscriptionOfferViewControllerClass_block_invoke_cold_1();
}

@end