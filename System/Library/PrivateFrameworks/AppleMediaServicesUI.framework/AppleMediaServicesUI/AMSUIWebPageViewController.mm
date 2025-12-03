@interface AMSUIWebPageViewController
- (AMSUIWebClientContext)context;
- (AMSUIWebPageViewController)initWithContext:(id)context dataProvider:(id)provider;
- (AMSUIWebPageViewControllerDelegate)delegate;
- (CGSize)contentSize;
- (id)_appOverlayTransitioning;
- (id)contentScrollViewForEdge:(unint64_t)edge;
- (id)dismissAppOverlay;
- (id)loadRequest:(id)request;
- (id)presentAppOverlayWithAdamID:(id)d;
- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController;
- (void)_applyAppearance;
- (void)_didEncodeRequest:(id)request;
- (void)_downloadHTMLForRequest:(id)request completion:(id)completion;
- (void)_updateLayout;
- (void)_updateToolbarButtonItems;
- (void)_willEncodeRequest:(id)request;
- (void)loadView;
- (void)viewWillLayoutSubviews;
- (void)willPresentPageModel:(id)model appearance:(id)appearance;
@end

@implementation AMSUIWebPageViewController

- (AMSUIWebPageViewController)initWithContext:(id)context dataProvider:(id)provider
{
  contextCopy = context;
  providerCopy = provider;
  v13.receiver = self;
  v13.super_class = AMSUIWebPageViewController;
  v8 = [(AMSUIWebPageViewController *)&v13 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_context, contextCopy);
    createWebView = [providerCopy createWebView];
    webView = v9->_webView;
    v9->_webView = createWebView;
  }

  return v9;
}

- (void)loadView
{
  v6.receiver = self;
  v6.super_class = AMSUIWebPageViewController;
  [(AMSUICommonViewController *)&v6 loadView];
  v3 = +[AMSUIWebAppearance defaultPlatformBackgroundColor];
  [(UIViewController *)self ams_setBackgroundColor:v3];

  view = [(AMSUICommonViewController *)self view];
  webView = [(AMSUIWebPageViewController *)self webView];
  [view addSubview:webView];
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = AMSUIWebPageViewController;
  [(AMSUIWebPageViewController *)&v3 viewWillLayoutSubviews];
  [(AMSUIWebPageViewController *)self _updateLayout];
}

- (id)loadRequest:(id)request
{
  requestCopy = request;
  objc_initWeak(&location, self);
  context = [(AMSUIWebPageViewController *)self context];
  loadUsingWebKit = [context loadUsingWebKit];

  if (loadUsingWebKit)
  {
    v7 = [requestCopy mutableCopy];
    [(AMSUIWebPageViewController *)self _willEncodeRequest:v7];
    [(AMSUIWebPageViewController *)self _didEncodeRequest:v7];
    webView = [(AMSUIWebPageViewController *)self webView];
    v9 = [webView loadRequest:v7];
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x1E698C7F0]);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __42__AMSUIWebPageViewController_loadRequest___block_invoke;
    v12[3] = &unk_1E7F269D0;
    objc_copyWeak(&v15, &location);
    v9 = v10;
    v13 = v9;
    v14 = requestCopy;
    [(AMSUIWebPageViewController *)self _downloadHTMLForRequest:v14 completion:v12];

    objc_destroyWeak(&v15);
  }

  objc_destroyWeak(&location);

  return v9;
}

void __42__AMSUIWebPageViewController_loadRequest___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained;
  if (v5)
  {
    [*(a1 + 32) finishWithError:v5];
  }

  else
  {
    v8 = [WeakRetained webView];
    v9 = [v15 task];
    v10 = [v9 currentRequest];
    v11 = v10;
    if (!v10)
    {
      v11 = *(a1 + 40);
    }

    v12 = [v15 response];
    v13 = [v15 data];
    v14 = [v8 loadRequest:v11 response:v12 responseData:v13];

    [*(a1 + 32) finishWithPromise:v14];
  }
}

- (id)dismissAppOverlay
{
  v3 = objc_opt_new();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__AMSUIWebPageViewController_dismissAppOverlay__block_invoke;
  v8[3] = &unk_1E7F243C0;
  v8[4] = self;
  v4 = v3;
  v9 = v4;
  [(AMSUIWebPageViewController *)self dismissViewControllerAnimated:1 completion:v8];
  v5 = v9;
  v6 = v4;

  return v4;
}

uint64_t __47__AMSUIWebPageViewController_dismissAppOverlay__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAppOverlayViewController:0];
  v2 = *(a1 + 40);

  return [v2 finishWithSuccess];
}

- (id)presentAppOverlayWithAdamID:(id)d
{
  dCopy = d;
  v5 = [AMSUIWebAppOverlayViewController alloc];
  context = [(AMSUIWebPageViewController *)self context];
  clientInfo = [context clientInfo];
  bundleIdentifier = [clientInfo bundleIdentifier];
  v9 = [(AMSUIWebAppOverlayViewController *)v5 initWithAppAdamID:dCopy hostBundleIdentifier:bundleIdentifier];

  [(AMSUIWebAppOverlayViewController *)v9 setModalPresentationStyle:4];
  [(AMSUIWebAppOverlayViewController *)v9 setTransitioningDelegate:self];
  [(AMSUIWebAppOverlayViewController *)v9 setViewRespectsSystemMinimumLayoutMargins:0];
  [(AMSUIWebPageViewController *)self setAppOverlayViewController:v9];
  preload = [(AMSUIWebAppOverlayViewController *)v9 preload];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __58__AMSUIWebPageViewController_presentAppOverlayWithAdamID___block_invoke;
  v14[3] = &unk_1E7F269F8;
  v14[4] = self;
  v15 = v9;
  v11 = v9;
  v12 = [preload thenWithBlock:v14];

  return v12;
}

id __58__AMSUIWebPageViewController_presentAppOverlayWithAdamID___block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__AMSUIWebPageViewController_presentAppOverlayWithAdamID___block_invoke_2;
  v7[3] = &unk_1E7F242D0;
  v5 = v2;
  v8 = v5;
  [v4 presentViewController:v3 animated:1 completion:v7];

  return v5;
}

- (id)contentScrollViewForEdge:(unint64_t)edge
{
  webView = [(AMSUIWebPageViewController *)self webView];
  underlyingWebView = [webView underlyingWebView];
  scrollView = [underlyingWebView scrollView];

  return scrollView;
}

- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController
{
  viewControllerCopy = viewController;
  controllerCopy = controller;
  v8 = [[AMSUIToastPresentationController alloc] initWithPresentedViewController:controllerCopy presentingViewController:viewControllerCopy];

  [(AMSUIToastPresentationController *)v8 setDismissDelayTimeInterval:0.0];

  return v8;
}

- (void)willPresentPageModel:(id)model appearance:(id)appearance
{
  v22 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  appearanceCopy = appearance;
  v8 = modelCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    objc_storeStrong(&self->_model, v9);
    objc_storeStrong(&self->_appearance, appearance);
    [(AMSUIWebPageViewController *)self _applyAppearance];
    [(AMSUIWebPageViewController *)self _updateLayout];
    [(AMSUIWebPageViewController *)self _updateToolbarButtonItems];
  }

  else
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      context = [(AMSUIWebPageViewController *)self context];
      logKey = [context logKey];
      v16 = 138543874;
      v17 = v12;
      v18 = 2114;
      v19 = logKey;
      v20 = 2114;
      v21 = v8;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Invalid browser page model: %{public}@", &v16, 0x20u);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_applyAppearance
{
  appearance = [(AMSUIWebPageViewController *)self appearance];
  v3 = +[AMSUIWebAppearance defaultPlatformBackgroundColor];
  backgroundColor = [appearance backgroundColor];
  v5 = backgroundColor;
  if (backgroundColor)
  {
    v6 = backgroundColor;
  }

  else
  {
    v6 = v3;
  }

  [(UIViewController *)self ams_setBackgroundColor:v6];

  backgroundColor2 = [appearance backgroundColor];
  v8 = backgroundColor2;
  if (backgroundColor2)
  {
    v9 = backgroundColor2;
  }

  else
  {
    v9 = v3;
  }

  webView = [(AMSUIWebPageViewController *)self webView];
  [webView ams_setBackgroundColor:v9];

  backgroundColor3 = [appearance backgroundColor];
  v12 = backgroundColor3;
  if (backgroundColor3)
  {
    v13 = backgroundColor3;
  }

  else
  {
    v13 = v3;
  }

  webView2 = [(AMSUIWebPageViewController *)self webView];
  underlyingWebView = [webView2 underlyingWebView];
  [underlyingWebView ams_setBackgroundColor:v13];
}

- (id)_appOverlayTransitioning
{
  IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
  v3 = off_1E7F22A50;
  if (!IsReduceMotionEnabled)
  {
    v3 = off_1E7F22AB0;
  }

  v4 = objc_alloc_init(*v3);

  return v4;
}

- (void)_didEncodeRequest:(id)request
{
  requestCopy = request;
  delegate = [(AMSUIWebPageViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(AMSUIWebPageViewController *)self delegate];
    [delegate2 webPageViewController:self didEncodeNetworkRequest:requestCopy];
  }
}

- (void)_downloadHTMLForRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  v6 = [request mutableCopy];
  [(AMSUIWebPageViewController *)self _willEncodeRequest:v6];
  context = [(AMSUIWebPageViewController *)self context];
  uRLSession = [context URLSession];

  v9 = objc_alloc(MEMORY[0x1E698CB88]);
  context2 = [(AMSUIWebPageViewController *)self context];
  v11 = [context2 bag];
  v12 = [v9 initWithBag:v11];

  context3 = [(AMSUIWebPageViewController *)self context];
  account = [context3 account];
  [v12 setAccount:account];

  context4 = [(AMSUIWebPageViewController *)self context];
  clientInfo = [context4 clientInfo];
  [v12 setClientInfo:clientInfo];

  context5 = [(AMSUIWebPageViewController *)self context];
  logKey = [context5 logKey];
  [v12 setLogUUID:logKey];

  context6 = [(AMSUIWebPageViewController *)self context];
  mescalSession = [context6 mescalSession];

  if (!mescalSession)
  {
    [v12 setMescalType:1];
  }

  context7 = [(AMSUIWebPageViewController *)self context];
  [v12 setUrlKnownToBeTrusted:{objc_msgSend(context7, "disableTrustedDomains")}];

  v22 = objc_alloc_init(MEMORY[0x1E698C948]);
  [v22 setPurpose:1];
  [v22 setStyle:{objc_msgSend(MEMORY[0x1E698C948], "preferredAttestationStyle")}];
  [v12 setKeychainOptions:v22];
  v23 = [v12 requestByEncodingRequest:v6 parameters:0];
  if (mescalSession)
  {
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __65__AMSUIWebPageViewController__downloadHTMLForRequest_completion___block_invoke;
    v35[3] = &unk_1E7F25780;
    v36 = mescalSession;
    selfCopy = self;
    v24 = [v23 thenWithBlock:v35];

    v23 = v24;
  }

  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __65__AMSUIWebPageViewController__downloadHTMLForRequest_completion___block_invoke_2_28;
  v33[3] = &unk_1E7F25780;
  v33[4] = self;
  v34 = uRLSession;
  v25 = uRLSession;
  v26 = [v23 thenWithBlock:v33];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __65__AMSUIWebPageViewController__downloadHTMLForRequest_completion___block_invoke_3_29;
  v30[3] = &unk_1E7F26A20;
  v30[4] = self;
  v31 = mescalSession;
  v32 = completionCopy;
  v27 = completionCopy;
  v28 = mescalSession;
  [v26 addFinishBlock:v30];
}

id __65__AMSUIWebPageViewController__downloadHTMLForRequest_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x1E695DEF0] data];
  v6 = [v4 primeSignatureForData:v5];

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __65__AMSUIWebPageViewController__downloadHTMLForRequest_completion___block_invoke_2;
  v18[3] = &unk_1E7F267F0;
  v7 = v3;
  v19 = v7;
  [v6 addSuccessBlock:v18];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __65__AMSUIWebPageViewController__downloadHTMLForRequest_completion___block_invoke_3;
  v17[3] = &unk_1E7F24410;
  v17[4] = *(a1 + 40);
  [v6 addErrorBlock:v17];
  v8 = objc_alloc_init(MEMORY[0x1E698CAD0]);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __65__AMSUIWebPageViewController__downloadHTMLForRequest_completion___block_invoke_25;
  v14[3] = &unk_1E7F26818;
  v9 = v8;
  v15 = v9;
  v16 = v7;
  v10 = v7;
  [v6 addFinishBlock:v14];
  v11 = v16;
  v12 = v9;

  return v9;
}

void __65__AMSUIWebPageViewController__downloadHTMLForRequest_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 base64EncodedStringWithOptions:0];
  [v2 setValue:v3 forHTTPHeaderField:*MEMORY[0x1E698C5E8]];
}

void __65__AMSUIWebPageViewController__downloadHTMLForRequest_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v4)
  {
    v4 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = objc_opt_class();
    v8 = [*(a1 + 32) context];
    v9 = [v8 logKey];
    v11 = 138543874;
    v12 = v7;
    v13 = 2114;
    v14 = v9;
    v15 = 2114;
    v16 = v3;
    _os_log_impl(&dword_1BB036000, v5, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to prime sign: %{public}@", &v11, 0x20u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

id __65__AMSUIWebPageViewController__downloadHTMLForRequest_completion___block_invoke_2_28(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 _didEncodeRequest:v4];
  v5 = [*(a1 + 40) dataTaskPromiseWithRequest:v4];

  return v5;
}

void __65__AMSUIWebPageViewController__downloadHTMLForRequest_completion___block_invoke_3_29(uint64_t a1, void *a2, void *a3)
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v8 = [*(a1 + 32) context];
  v9 = [v8 account];
  [v9 ams_addCookiesForResult:v6];

  v10 = [*(a1 + 32) context];
  v11 = [v10 versionNumber];
  v12 = v11;
  if (!v11)
  {
    v3 = [v6 responseHeaders];
    v12 = [v3 objectForKeyedSubscript:*MEMORY[0x1E698C5F0]];
  }

  v13 = [*(a1 + 32) context];
  [v13 setVersionNumber:v12];

  if (!v11)
  {
  }

  v14 = [v6 responseHeaders];
  v15 = [v14 objectForKeyedSubscript:*MEMORY[0x1E698C5E8]];

  if (*(a1 + 40) && [v15 length])
  {
    v16 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v15 options:0];
    v17 = [*(a1 + 40) verifyPrimeSignature:v16];
    v36 = 0;
    v18 = [v17 resultWithError:&v36];
    v19 = v36;

    v20 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    v21 = v20;
    if (v18)
    {
      if (!v20)
      {
        v21 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v22 = [v21 OSLogObject];
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_17;
      }

      v23 = *(a1 + 32);
      v33 = v17;
      v24 = v19;
      v25 = objc_opt_class();
      [*(a1 + 32) context];
      v26 = v35 = v16;
      v27 = [v26 logKey];
      *buf = 138543618;
      v38 = v25;
      v19 = v24;
      v17 = v33;
      v39 = 2114;
      v40 = v27;
      _os_log_impl(&dword_1BB036000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Verify prime finished.", buf, 0x16u);
    }

    else
    {
      if (!v20)
      {
        v21 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v22 = [v21 OSLogObject];
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }

      v28 = *(a1 + 32);
      v29 = objc_opt_class();
      v34 = [*(a1 + 32) context];
      v35 = v16;
      [v34 logKey];
      v31 = v30 = v19;
      *buf = 138543874;
      v38 = v29;
      v39 = 2114;
      v40 = v31;
      v41 = 2114;
      v42 = v30;
      _os_log_impl(&dword_1BB036000, v22, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Verify prime failed: %{public}@", buf, 0x20u);

      v19 = v30;
    }

    v16 = v35;
LABEL_17:
  }

  if (!v6 || v7)
  {
    if (!v7)
    {
      v7 = AMSError();
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }

  v32 = *MEMORY[0x1E69E9840];
}

- (void)_updateToolbarButtonItems
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  model = [(AMSUIWebPageViewController *)self model];
  toolbar = [model toolbar];

  leftButton = [toolbar leftButton];
  v7 = MEMORY[0x1E69DC708];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __55__AMSUIWebPageViewController__updateToolbarButtonItems__block_invoke;
  v22[3] = &unk_1E7F242D0;
  v8 = leftButton;
  v23 = v8;
  v9 = [v7 barButtonItemWithWebButtonModel:v8 navigationBarModel:0 actionBlock:v22];
  v10 = v9;
  if (v9)
  {
    [v9 setAccessibilityIdentifier:@"left_bar_button_item"];
    [v3 addObject:v10];
  }

  rightButton = [toolbar rightButton];
  v12 = MEMORY[0x1E69DC708];
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __55__AMSUIWebPageViewController__updateToolbarButtonItems__block_invoke_2;
  v20 = &unk_1E7F242D0;
  v13 = rightButton;
  v21 = v13;
  v14 = [v12 barButtonItemWithWebButtonModel:v13 navigationBarModel:0 actionBlock:&v17];
  v15 = v14;
  if (v14)
  {
    [v14 setAccessibilityIdentifier:{@"right_bar_button_item", v17, v18, v19, v20}];
    v16 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:5 target:0 action:0];
    [v3 addObject:v16];

    [v3 addObject:v15];
  }

  [(AMSUIWebPageViewController *)self setToolbarItems:v3, v17, v18, v19, v20];
}

void __55__AMSUIWebPageViewController__updateToolbarButtonItems__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) action];
  v1 = [v2 runAction];
}

void __55__AMSUIWebPageViewController__updateToolbarButtonItems__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) action];
  v1 = [v2 runAction];
}

- (void)_updateLayout
{
  view = [(AMSUICommonViewController *)self view];
  [view bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  webView = [(AMSUIWebPageViewController *)self webView];
  [webView setFrame:{v4, v6, v8, v10}];
}

- (void)_willEncodeRequest:(id)request
{
  requestCopy = request;
  context = [(AMSUIWebPageViewController *)self context];
  additionalHeaders = [context additionalHeaders];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__AMSUIWebPageViewController__willEncodeRequest___block_invoke;
  v8[3] = &unk_1E7F25A18;
  v9 = requestCopy;
  v7 = requestCopy;
  [additionalHeaders enumerateKeysAndObjectsUsingBlock:v8];
}

- (AMSUIWebPageViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (AMSUIWebClientContext)context
{
  WeakRetained = objc_loadWeakRetained(&self->_context);

  return WeakRetained;
}

- (CGSize)contentSize
{
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end