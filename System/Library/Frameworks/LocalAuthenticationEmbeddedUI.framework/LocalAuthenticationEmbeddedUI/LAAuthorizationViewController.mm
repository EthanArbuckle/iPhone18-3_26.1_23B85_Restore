@interface LAAuthorizationViewController
- (LAAuthorizationViewController)initWithConfiguration:(id)configuration completion:(id)completion;
- (LAAuthorizationViewControllerDelegate)delegate;
- (int64_t)modalPresentationStyle;
- (int64_t)preferredStatusBarStyle;
- (uint64_t)_finishWithError:(uint64_t)error;
- (uint64_t)dismissFromContainerViewController;
- (void)_applicationDidEnterBackground:(id)background;
- (void)_prepareHostedSceneWithCompletion:(void *)completion;
- (void)_prepareRemoteUI;
- (void)_prepareRemoteViewServiceWithCompletion:(void *)completion;
- (void)_presentRemoteView;
- (void)_startRemoteView;
- (void)didProvideAuthorizationRequirementWithReply:(id)reply;
- (void)dismiss;
- (void)loadView;
- (void)presentInContainerViewController:(id)controller;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation LAAuthorizationViewController

- (LAAuthorizationViewController)initWithConfiguration:(id)configuration completion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
  v15.receiver = self;
  v15.super_class = LAAuthorizationViewController;
  v9 = [(LAAuthorizationViewController *)&v15 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_configuration, configuration);
    v11 = MEMORY[0x23EE74B30](completionCopy);
    completion = v10->_completion;
    v10->_completion = v11;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v10 selector:sel__applicationDidEnterBackground_ name:*MEMORY[0x277D76660] object:0];
  }

  return v10;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v8.receiver = self;
  v8.super_class = LAAuthorizationViewController;
  [(LAAuthorizationViewController *)&v8 viewWillTransitionToSize:coordinator withTransitionCoordinator:?];
  view = [(LAAuthorizationViewController *)self view];
  [view setFrame:{0.0, 0.0, width, height}];
}

- (int64_t)modalPresentationStyle
{
  if ([(LACUIAuthenticatorServiceConfiguration *)self->_configuration style])
  {
    return 0;
  }

  else
  {
    return 6;
  }
}

- (int64_t)preferredStatusBarStyle
{
  if ([(LACUIAuthenticatorServiceConfiguration *)self->_configuration style])
  {
    return 0;
  }

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  v2 = [currentDevice userInterfaceIdiom] != 1;

  return v2;
}

- (void)loadView
{
  v3 = objc_opt_new();
  [(LAAuthorizationViewController *)self setView:v3];

  [(LAAuthorizationViewController *)self _prepareRemoteUI];
}

- (void)_prepareRemoteUI
{
  if (val && !*(val + 124))
  {
    objc_initWeak(&location, val);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __49__LAAuthorizationViewController__prepareRemoteUI__block_invoke;
    v8[3] = &unk_278A65980;
    objc_copyWeak(&v9, &location);
    v2 = MEMORY[0x23EE74B30](v8);
    mEMORY[0x277D24068] = [MEMORY[0x277D24068] sharedInstance];
    featureFlagLaunchAngelEnabled = [mEMORY[0x277D24068] featureFlagLaunchAngelEnabled];

    if (featureFlagLaunchAngelEnabled)
    {
      v5 = v7;
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __49__LAAuthorizationViewController__prepareRemoteUI__block_invoke_8;
      v7[3] = &unk_278A659A8;
      v7[4] = v2;
      [(LAAuthorizationViewController *)val _prepareHostedSceneWithCompletion:v7];
    }

    else
    {
      v5 = v6;
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __49__LAAuthorizationViewController__prepareRemoteUI__block_invoke_2;
      v6[3] = &unk_278A659A8;
      v6[4] = v2;
      [(LAAuthorizationViewController *)val _prepareRemoteViewServiceWithCompletion:v6];
    }

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __49__LAAuthorizationViewController__prepareRemoteUI__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    if (v7)
    {
      v11 = LA_LOG_0();
      v12 = LALogTypeForInternalError();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = 138412290;
        v14 = v7;
        _os_log_impl(&dword_238BCD000, v11, v12, "Could not obtain remote VC %@", &v13, 0xCu);
      }

      [(LAAuthorizationViewController *)v9 _finishWithError:v7];
    }

    else
    {
      objc_storeStrong(WeakRetained + 124, a2);
      [*(v9 + 992) setDelegate:v9];
      [(LAAuthorizationViewController *)v9 _presentRemoteView];
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_prepareHostedSceneWithCompletion:(void *)completion
{
  v3 = a2;
  if (completion)
  {
    v4 = objc_alloc_init(MEMORY[0x277D241F0]);
    objc_initWeak(&location, completion);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __67__LAAuthorizationViewController__prepareHostedSceneWithCompletion___block_invoke;
    v5[3] = &unk_278A656D0;
    objc_copyWeak(&v6, &location);
    [v4 prepareRemoteSceneWithCompletion:v5];
    v3[2](v3, v4, 0);
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

- (void)_prepareRemoteViewServiceWithCompletion:(void *)completion
{
  v3 = a2;
  if (completion)
  {
    objc_initWeak(&location, completion);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __73__LAAuthorizationViewController__prepareRemoteViewServiceWithCompletion___block_invoke;
    v4[3] = &unk_278A659D0;
    objc_copyWeak(&v6, &location);
    v5 = v3;
    [_AuthorizationRemoteViewControllerHost requestViewControllerWithConnectionHandler:v4];

    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

void __73__LAAuthorizationViewController__prepareRemoteViewServiceWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v5)
    {
      v7 = *(*(a1 + 32) + 16);
LABEL_6:
      v7();
      goto LABEL_7;
    }

    if ([v10 conformsToProtocol:&unk_284B94A70])
    {
      WeakRetained[1000] = 1;
      v7 = *(*(a1 + 32) + 16);
      goto LABEL_6;
    }

    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Received remote VC has unexpected type %@", v10];
    v9 = [MEMORY[0x277D24060] errorWithCode:*MEMORY[0x277D23E88] debugDescription:v8];
    (*(*(a1 + 32) + 16))();
  }

LABEL_7:
}

void __67__LAAuthorizationViewController__prepareHostedSceneWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (v3)
    {
      v6 = LACLogUI();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __67__LAAuthorizationViewController__prepareHostedSceneWithCompletion___block_invoke_cold_1(v3, v6);
      }
    }

    else
    {
      *(WeakRetained + 1000) = 1;
      [(LAAuthorizationViewController *)WeakRetained _startRemoteView];
    }
  }
}

- (void)_startRemoteView
{
  if (val)
  {
    if (*(val + 1000) == 1)
    {
      objc_initWeak(&location, val);
      v2 = val[124];
      v3 = val[127];
      v4[0] = MEMORY[0x277D85DD0];
      v4[1] = 3221225472;
      v4[2] = __49__LAAuthorizationViewController__startRemoteView__block_invoke;
      v4[3] = &unk_278A656D0;
      objc_copyWeak(&v5, &location);
      [v2 startWithConfiguration:v3 reply:v4];
      objc_destroyWeak(&v5);
      objc_destroyWeak(&location);
    }
  }
}

void __51__LAAuthorizationViewController__presentRemoteView__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [LAAuthorizationViewController _presentRemoteView];
    WeakRetained = v2;
  }
}

void __49__LAAuthorizationViewController__startRemoteView__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (v3 && WeakRetained)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __49__LAAuthorizationViewController__startRemoteView__block_invoke_2;
    v6[3] = &unk_278A65688;
    objc_copyWeak(&v8, (a1 + 32));
    v7 = v3;
    dispatch_async(MEMORY[0x277D85CD0], v6);

    objc_destroyWeak(&v8);
  }
}

void __49__LAAuthorizationViewController__startRemoteView__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = *(a1 + 32);
    v3 = (a1 + 32);
    if (v4)
    {
      __49__LAAuthorizationViewController__startRemoteView__block_invoke_2_cold_1(v3, WeakRetained);
    }
  }
}

- (void)dismiss
{
  if ([(LAAuthorizationViewController *)self active])
  {
    objc_initWeak(location, self);
    remoteVC = self->_remoteVC;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __40__LAAuthorizationViewController_dismiss__block_invoke;
    v5[3] = &unk_278A656D0;
    objc_copyWeak(&v6, location);
    [(LACUIAuthenticatorUI *)remoteVC stopWithReply:v5];
    objc_destroyWeak(&v6);
    objc_destroyWeak(location);
  }

  else
  {
    v4 = LA_LOG_0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&dword_238BCD000, v4, OS_LOG_TYPE_DEFAULT, "Ignoring dismiss request for inactive sheet", location, 2u);
    }
  }
}

void __40__LAAuthorizationViewController_dismiss__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.LocalAuthentication.ui.dismissed", 0, 0, 1u);
  if (v3 && WeakRetained)
  {
    __40__LAAuthorizationViewController_dismiss__block_invoke_cold_1(v3, WeakRetained);
  }
}

- (void)presentInContainerViewController:(id)controller
{
  controllerCopy = controller;
  if ([(LAAuthorizationViewController *)self active])
  {
    [controllerCopy presentViewController:self animated:1 completion:&__block_literal_global_3];
  }

  else
  {
    v5 = LA_LOG_0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_238BCD000, v5, OS_LOG_TYPE_DEFAULT, "Ignoring presentation request for inactive sheet", v6, 2u);
    }
  }
}

- (void)didProvideAuthorizationRequirementWithReply:(id)reply
{
  replyCopy = reply;
  delegate = [(LAAuthorizationViewController *)self delegate];
  if (delegate && (v5 = delegate, [(LAAuthorizationViewController *)self delegate], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_opt_respondsToSelector(), v6, v5, (v7 & 1) != 0))
  {
    delegate2 = [(LAAuthorizationViewController *)self delegate];
    [delegate2 authorizationController:self didProvideAuthorizationRequirementWithReply:replyCopy];
  }

  else
  {
    delegate2 = [MEMORY[0x277CD47F0] internalErrorWithMessage:@"Password validation not available"];
    replyCopy[2](replyCopy, delegate2);
  }
}

- (LAAuthorizationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (uint64_t)_finishWithError:(uint64_t)error
{
  v3 = a2;
  v4 = v3;
  if (error)
  {
    v3 = *(error + 1008);
    if (v3)
    {
      v8 = v4;
      v5 = [v3 copy];
      v6 = *(error + 1008);
      *(error + 1008) = 0;

      [error dismissViewControllerAnimated:objc_msgSend(*(error + 1016) completion:{"style") == 1, &__block_literal_global_72}];
      (v5)[2](v5, v8);

      v4 = v8;
    }
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

- (void)_presentRemoteView
{
  if (self)
  {
    if ([MEMORY[0x277CCACC8] isMainThread])
    {
      if (self[124])
      {
        view = [self view];
        subviews = [view subviews];
        view2 = [OUTLINED_FUNCTION_1() view];
        v6 = [subviews containsObject:view2];

        if ((v6 & 1) == 0)
        {
          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.LocalAuthentication.ui.presented", 0, 0, 1u);
          v8 = LA_LOG_0();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
          {
            LOWORD(buf[0]) = 0;
            _os_log_impl(&dword_238BCD000, v8, OS_LOG_TYPE_INFO, "Presenting remote UI", buf, 2u);
          }

          view3 = [self view];
          view4 = [OUTLINED_FUNCTION_1() view];
          [view3 addSubview:view4];

          view5 = [OUTLINED_FUNCTION_1() view];
          [view5 setTranslatesAutoresizingMaskIntoConstraints:0];

          view6 = [OUTLINED_FUNCTION_1() view];
          [view6 topAnchor];
          objc_claimAutoreleasedReturnValue();
          view7 = [OUTLINED_FUNCTION_2() view];
          [view7 topAnchor];
          objc_claimAutoreleasedReturnValue();
          v14 = [OUTLINED_FUNCTION_0() constraintEqualToAnchor:?];
          OUTLINED_FUNCTION_4(v14, v15);

          view8 = [OUTLINED_FUNCTION_1() view];
          [view8 bottomAnchor];
          objc_claimAutoreleasedReturnValue();
          view9 = [OUTLINED_FUNCTION_2() view];
          [view9 bottomAnchor];
          objc_claimAutoreleasedReturnValue();
          v18 = [OUTLINED_FUNCTION_0() constraintEqualToAnchor:?];
          OUTLINED_FUNCTION_4(v18, v19);

          view10 = [OUTLINED_FUNCTION_1() view];
          [view10 leadingAnchor];
          objc_claimAutoreleasedReturnValue();
          view11 = [OUTLINED_FUNCTION_2() view];
          [view11 leadingAnchor];
          objc_claimAutoreleasedReturnValue();
          v22 = [OUTLINED_FUNCTION_0() constraintEqualToAnchor:?];
          OUTLINED_FUNCTION_4(v22, v23);

          view12 = [OUTLINED_FUNCTION_1() view];
          [view12 trailingAnchor];
          objc_claimAutoreleasedReturnValue();
          view13 = [OUTLINED_FUNCTION_2() view];
          [view13 trailingAnchor];
          objc_claimAutoreleasedReturnValue();
          v26 = [OUTLINED_FUNCTION_0() constraintEqualToAnchor:?];
          OUTLINED_FUNCTION_4(v26, v27);

          [self addChildViewController:self[124]];
          [(LAAuthorizationViewController *)self _startRemoteView];
        }
      }
    }

    else
    {
      objc_initWeak(buf, self);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __51__LAAuthorizationViewController__presentRemoteView__block_invoke;
      block[3] = &unk_278A657F0;
      objc_copyWeak(&v29, buf);
      dispatch_async(MEMORY[0x277D85CD0], block);
      objc_destroyWeak(&v29);
      objc_destroyWeak(buf);
    }
  }
}

- (uint64_t)dismissFromContainerViewController
{
  if (result)
  {
    v1 = result;
    v2 = [*(result + 1016) style] == 1;

    return [v1 dismissViewControllerAnimated:v2 completion:&__block_literal_global_72];
  }

  return result;
}

- (void)_applicationDidEnterBackground:(id)background
{
  v4 = [MEMORY[0x277CD47F0] errorWithCode:-4];
  [(LAAuthorizationViewController *)self _finishWithError:v4];
}

void __67__LAAuthorizationViewController__prepareHostedSceneWithCompletion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_238BCD000, a2, OS_LOG_TYPE_ERROR, "prepareRemoteSceneWithCompletion returned error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

uint64_t __49__LAAuthorizationViewController__startRemoteView__block_invoke_2_cold_1(void **a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = LA_LOG_0();
  v5 = LALogTypeForInternalError();
  if (os_log_type_enabled(v4, v5))
  {
    v14 = HIDWORD(*a1);
    OUTLINED_FUNCTION_3(&dword_238BCD000, v6, v7, "Failed to start with error (%@).", v8, v9, v10, v11, 2u);
  }

  result = [(LAAuthorizationViewController *)a2 _finishWithError:?];
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __40__LAAuthorizationViewController_dismiss__block_invoke_cold_1(void *a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = LA_LOG_0();
  v5 = LALogTypeForInternalError();
  if (os_log_type_enabled(v4, v5))
  {
    OUTLINED_FUNCTION_3(&dword_238BCD000, v6, v7, "Failed to dismiss with error (%@).", v8, v9, v10, v11, 2u);
  }

  result = [(LAAuthorizationViewController *)a2 _finishWithError:a1];
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

@end