@interface QLRemoteItemViewController
- (BOOL)canShowNavBar;
- (BOOL)canShowToolBar;
- (BOOL)presenterShouldHandleLoadingView:(id)a3 readyToDisplay:(id)a4;
- (QLRemoteItemViewController)init;
- (id)fullscreenBackgroundColor;
- (id)printer;
- (void)_loadRemoteViewControllerForContext:(id)a3;
- (void)_performLoadHandlerIfNeeded;
- (void)_performSetUpWithRemoteViewController:(id)a3 extension:(id)a4 request:(id)a5 hostContext:(id)a6;
- (void)_registerLoadingHandler:(id)a3;
- (void)dealloc;
- (void)dismissQuickLook;
- (void)forwardMessageToHostOfCustomViewController:(id)a3 completionHandler:(id)a4;
- (void)getFrameWithCompletionBlock:(id)a3;
- (void)loadPreviewControllerWithContents:(id)a3 context:(id)a4 completionHandler:(id)a5;
- (void)presentShareSheetWithPopoverTracker:(id)a3 customSharedURL:(id)a4 dismissCompletion:(id)a5;
- (void)previewControllerDidUpdatePreferredContentSize:(id)a3;
- (void)previewControllerDidUpdateTitle:(id)a3;
- (void)viewServiceDidTerminateWithError:(id)a3;
@end

@implementation QLRemoteItemViewController

- (QLRemoteItemViewController)init
{
  v9.receiver = self;
  v9.super_class = QLRemoteItemViewController;
  v2 = [(QLItemViewController *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(QLRemoteItemViewController *)v2 view];
    [v4 setAccessibilityIdentifier:@"QLRemoteItemViewControllerHostViewAccessibilityIdentifier"];

    v5 = objc_opt_new();
    hostViewControllerProxy = v3->_hostViewControllerProxy;
    v3->_hostViewControllerProxy = v5;

    [(QLCustomItemViewControllerHostProxy *)v3->_hostViewControllerProxy setDelegate:v3];
    v3->_needsSetup = 1;
    v3->_readyToLoad = 0;
    v7 = v3;
  }

  return v3;
}

void __53__QLRemoteItemViewController_setAppearance_animated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appearance];
  [v2 topInset];
  [*(*(a1 + 32) + 1152) setConstant:?];

  v3 = [*(a1 + 32) appearance];
  [v3 bottomInset];
  [*(*(a1 + 32) + 1160) setConstant:?];

  v4 = [*(a1 + 32) view];
  [v4 setNeedsLayout];
}

- (BOOL)canShowNavBar
{
  extension = self->_extension;
  if (extension)
  {
    return [(NSExtension *)extension ql_isPreviewExtensionThatHaveCustomPresentationView]^ 1;
  }

  else
  {
    return 1;
  }
}

- (BOOL)canShowToolBar
{
  extension = self->_extension;
  if (extension)
  {
    return [(NSExtension *)extension ql_isPreviewExtensionThatHaveCustomPresentationView]^ 1;
  }

  else
  {
    return 1;
  }
}

- (void)loadPreviewControllerWithContents:(id)a3 context:(id)a4 completionHandler:(id)a5
{
  v7 = a4;
  [(QLRemoteItemViewController *)self _registerLoadingHandler:a5];
  [(QLRemoteItemViewController *)self _loadRemoteViewControllerForContext:v7];
}

- (void)_loadRemoteViewControllerForContext:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_needsSetup)
  {
    self->_needsSetup = 0;
    v6 = [v4 item];
    v7 = [v6 fetcher];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v5 item];
      v9 = [v8 fetcher];
    }

    else
    {
      v9 = 0;
    }

    objc_initWeak(&location, self);
    v10 = [MEMORY[0x277D43E98] sharedManager];
    if (v9)
    {
      v11 = [v9 info];
      v12 = [v11 applicationBundleIdentifier];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __66__QLRemoteItemViewController__loadRemoteViewControllerForContext___block_invoke;
      v16[3] = &unk_278B58E88;
      v13 = &v17;
      objc_copyWeak(&v17, &location);
      [v10 remoteViewControllerForContentType:0 applicationBundleIdentifier:v12 extensionType:0 generatonType:2 withCompletionHandler:v16];
    }

    else
    {
      v11 = [v5 contentType];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __66__QLRemoteItemViewController__loadRemoteViewControllerForContext___block_invoke_2;
      v14[3] = &unk_278B58E88;
      v13 = &v15;
      objc_copyWeak(&v15, &location);
      [v10 remoteViewControllerForContentType:v11 applicationBundleIdentifier:0 extensionType:0 generatonType:1 withCompletionHandler:v14];
    }

    objc_destroyWeak(v13);
    objc_destroyWeak(&location);
  }
}

void __66__QLRemoteItemViewController__loadRemoteViewControllerForContext___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _performSetUpWithRemoteViewController:v11 extension:v12 request:v10 hostContext:v9];
}

void __66__QLRemoteItemViewController__loadRemoteViewControllerForContext___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _performSetUpWithRemoteViewController:v11 extension:v12 request:v10 hostContext:v9];
}

- (void)_performSetUpWithRemoteViewController:(id)a3 extension:(id)a4 request:(id)a5 hostContext:(id)a6
{
  v48[2] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a6;
  objc_storeStrong(&self->_extension, a4);
  v14 = a5;
  objc_storeStrong(&self->_remoteViewController, a3);
  objc_storeStrong(&self->_hostContext, a6);
  [(QLPreviewExtensionHostContext *)self->_hostContext setRemoteItemViewController:self];
  [(QLRemotePreviewHostViewController *)self->_remoteViewController setRemoteItemViewController:self];
  [(QLRemotePreviewHostViewController *)self->_remoteViewController setExtension:v12];
  [(QLRemotePreviewHostViewController *)self->_remoteViewController setRequest:v14];

  remoteViewController = self->_remoteViewController;
  if (remoteViewController && self->_hostContext)
  {
    v47 = v11;
    v16 = [(QLRemotePreviewHostViewController *)remoteViewController parentViewController];

    if (v16)
    {
      [(QLRemotePreviewHostViewController *)self->_remoteViewController willMoveToParentViewController:0];
      v17 = [(QLRemotePreviewHostViewController *)self->_remoteViewController view];
      [v17 removeFromSuperview];

      [(QLRemotePreviewHostViewController *)self->_remoteViewController removeFromParentViewController];
    }

    [(QLRemoteItemViewController *)self addChildViewController:self->_remoteViewController];
    v18 = [(QLRemoteItemViewController *)self view];
    v19 = [(QLRemotePreviewHostViewController *)self->_remoteViewController view];
    [v18 addSubview:v19];

    [(_UIRemoteViewController *)self->_remoteViewController didMoveToParentViewController:self];
    v20 = [(QLRemotePreviewHostViewController *)self->_remoteViewController view];
    [v20 setTranslatesAutoresizingMaskIntoConstraints:0];

    v21 = [(QLRemotePreviewHostViewController *)self->_remoteViewController view];
    v22 = [v21 leftAnchor];
    v23 = [(QLRemoteItemViewController *)self view];
    v24 = [v23 leftAnchor];
    v25 = [v22 constraintEqualToAnchor:v24];
    [v25 setActive:1];

    v26 = [(QLRemotePreviewHostViewController *)self->_remoteViewController view];
    v27 = [v26 rightAnchor];
    v28 = [(QLRemoteItemViewController *)self view];
    v29 = [v28 rightAnchor];
    v30 = [v27 constraintEqualToAnchor:v29];
    [v30 setActive:1];

    v31 = MEMORY[0x277CCAAD0];
    v32 = [(QLRemotePreviewHostViewController *)self->_remoteViewController view];
    v33 = [(QLRemoteItemViewController *)self view];
    v34 = [v31 constraintWithItem:v32 attribute:3 relatedBy:0 toItem:v33 attribute:3 multiplier:1.0 constant:0.0];
    topConstraint = self->_topConstraint;
    self->_topConstraint = v34;

    v36 = MEMORY[0x277CCAAD0];
    v37 = [(QLRemoteItemViewController *)self view];
    v38 = [(QLRemotePreviewHostViewController *)self->_remoteViewController view];
    v39 = [v36 constraintWithItem:v37 attribute:4 relatedBy:0 toItem:v38 attribute:4 multiplier:1.0 constant:0.0];
    bottomConstraint = self->_bottomConstraint;
    self->_bottomConstraint = v39;

    v41 = [(QLRemoteItemViewController *)self view];
    v42 = self->_bottomConstraint;
    v48[0] = self->_topConstraint;
    v48[1] = v42;
    v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:2];
    [v41 addConstraints:v43];

    [(QLPreviewExtensionHostContext *)self->_hostContext setHostViewControllerProxy:self->_hostViewControllerProxy];
    if (self->_isAppearing)
    {
      [(QLPreviewExtensionHostContext *)self->_hostContext previewWillAppear:0];
    }

    v11 = v47;
    if (self->_isVisible)
    {
      [(QLPreviewExtensionHostContext *)self->_hostContext previewDidAppear:0];
    }
  }

  readyToDisplay = self->_readyToDisplay;
  if (readyToDisplay)
  {
    readyToDisplay[2]();
    v45 = self->_readyToDisplay;
    self->_readyToDisplay = 0;
  }

  self->_readyToLoad = 1;
  [(QLRemoteItemViewController *)self _performLoadHandlerIfNeeded];

  v46 = *MEMORY[0x277D85DE8];
}

- (void)_performLoadHandlerIfNeeded
{
  if (self->_readyToLoad)
  {
    loadHandler = self->_loadHandler;
    if (loadHandler)
    {
      loadHandler[2](loadHandler, a2);
      v4 = self->_loadHandler;
      self->_loadHandler = 0;
    }
  }
}

- (void)_registerLoadingHandler:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__QLRemoteItemViewController__registerLoadingHandler___block_invoke;
  aBlock[3] = &unk_278B58B88;
  objc_copyWeak(&v10, &location);
  v5 = v4;
  v9 = v5;
  v6 = _Block_copy(aBlock);
  loadHandler = self->_loadHandler;
  self->_loadHandler = v6;

  [(QLRemoteItemViewController *)self _performLoadHandlerIfNeeded];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __54__QLRemoteItemViewController__registerLoadingHandler___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (WeakRetained[152] && (v4 = WeakRetained[142]) != 0)
    {
      v5 = [WeakRetained contents];
      v6 = [v3 context];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __54__QLRemoteItemViewController__registerLoadingHandler___block_invoke_315;
      v15[3] = &unk_278B58ED8;
      v16 = v3;
      v17 = *(a1 + 32);
      [v4 loadPreviewControllerWithContents:v5 context:v6 completionHandler:v15];

      v7 = v16;
    }

    else
    {
      v8 = MEMORY[0x277D43EF8];
      v9 = *MEMORY[0x277D43EF8];
      if (!*MEMORY[0x277D43EF8])
      {
        QLSInitLogging();
        v9 = *v8;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        v10 = v9;
        v11 = [v3 context];
        v12 = [v11 contentType];
        *buf = 138412290;
        v19 = v12;
        _os_log_impl(&dword_23A714000, v10, OS_LOG_TYPE_FAULT, "Failed to get an extension for QuickLook (contentType %@) #Remote", buf, 0xCu);
      }

      v13 = *(a1 + 32);
      v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.quicklook.QLRemoteItemViewController" code:1 userInfo:0];
      (*(v13 + 16))(v13, v7);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __54__QLRemoteItemViewController__registerLoadingHandler___block_invoke_315(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = v7[142];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __54__QLRemoteItemViewController__registerLoadingHandler___block_invoke_2;
  v11[3] = &unk_278B58EB0;
  v12 = v7;
  v13 = v5;
  v14 = v6;
  v15 = *(a1 + 40);
  v9 = v6;
  v10 = v5;
  [v8 getPrinterProxyWithCompletionHandler:v11];
}

void __54__QLRemoteItemViewController__registerLoadingHandler___block_invoke_2(id *a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_storeStrong(a1[4] + 146, a2);
  if (a1[5])
  {
    v5 = MEMORY[0x277D43EF8];
    v6 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v6 = *v5;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = a1[5];
      *buf = 138412290;
      v14 = v7;
      _os_log_impl(&dword_23A714000, v6, OS_LOG_TYPE_ERROR, "Error while trying to get printer proxy: %@ #Remote", buf, 0xCu);
    }
  }

  else
  {
    objc_storeStrong(a1[4] + 143, a1[6]);
  }

  v8 = [*(a1[4] + 143) objectForKeyedSubscript:@"preferredContentSize"];
  [v8 CGSizeValue];
  [a1[4] setPreferredContentSize:?];

  v9 = [*(a1[4] + 143) objectForKeyedSubscript:@"title"];
  [a1[4] setTitle:v9];

  v12 = a1[7];
  v11 = a1[5];
  QLRunInMainThread();

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __54__QLRemoteItemViewController__registerLoadingHandler___block_invoke_316(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)dealloc
{
  [(QLPreviewExtensionHostContext *)self->_hostContext invalidateServiceWithCompletionHandler:&__block_literal_global_318];
  v3.receiver = self;
  v3.super_class = QLRemoteItemViewController;
  [(QLRemoteItemViewController *)&v3 dealloc];
}

- (id)printer
{
  if (!self->_printer)
  {
    self = 0;
  }

  return self;
}

- (void)viewServiceDidTerminateWithError:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(QLRemotePreviewHostViewController *)self->_remoteViewController willMoveToParentViewController:0];
  v5 = [(QLRemotePreviewHostViewController *)self->_remoteViewController view];
  [v5 removeFromSuperview];

  [(QLRemotePreviewHostViewController *)self->_remoteViewController removeFromParentViewController];
  extension = self->_extension;
  self->_extension = 0;

  remoteViewController = self->_remoteViewController;
  self->_remoteViewController = 0;

  hostContext = self->_hostContext;
  self->_hostContext = 0;

  v9 = [v4 domain];
  if ([v9 isEqualToString:*MEMORY[0x277D77620]])
  {
    v10 = [v4 code];

    if (v10 == 1)
    {
      v11 = MEMORY[0x277D43EF8];
      v12 = *MEMORY[0x277D43EF8];
      if (!*MEMORY[0x277D43EF8])
      {
        QLSInitLogging();
        v12 = *v11;
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v17 = 138412290;
        v18 = v4;
        _os_log_impl(&dword_23A714000, v12, OS_LOG_TYPE_INFO, "Quick Look extension view service did terminate normally (error: %@). #Remote", &v17, 0xCu);
      }

      goto LABEL_13;
    }
  }

  else
  {
  }

  v13 = MEMORY[0x277D43EF8];
  v14 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v14 = *v13;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v17 = 138412290;
    v18 = v4;
    _os_log_impl(&dword_23A714000, v14, OS_LOG_TYPE_ERROR, "Quick Look extension view service did terminate with error: %@ #Remote", &v17, 0xCu);
  }

  [(QLItemViewController *)self notifyDelegatesDidFailWithError:v4];
  v15 = [(QLItemViewController *)self delegate];
  [v15 previewItemViewControllerWantsUpdateOverlay:self animated:1];

LABEL_13:
  v16 = *MEMORY[0x277D85DE8];
}

- (void)previewControllerDidUpdateTitle:(id)a3
{
  [(QLRemoteItemViewController *)self setTitle:a3];
  v4 = [(QLItemViewController *)self delegate];
  [v4 previewItemViewControllerDidUpdateTitle:self];
}

- (void)previewControllerDidUpdatePreferredContentSize:(id)a3
{
  [a3 CGSizeValue];
  [(QLRemoteItemViewController *)self setPreferredContentSize:?];
  v4 = [(QLItemViewController *)self delegate];
  [v4 previewItemViewControllerDidUpdatePreferredContentSize:self];
}

- (BOOL)presenterShouldHandleLoadingView:(id)a3 readyToDisplay:(id)a4
{
  v6 = a4;
  v7 = [MEMORY[0x277D43E98] ql_isPreviewExtensionThatHaveCustomPresentationViewForItem:a3];
  v8 = v7;
  if (v6 && v7)
  {
    if (self->_remoteViewController)
    {
      v6[2](v6);
    }

    else
    {
      v9 = _Block_copy(v6);
      readyToDisplay = self->_readyToDisplay;
      self->_readyToDisplay = v9;
    }
  }

  return v8 ^ 1;
}

- (id)fullscreenBackgroundColor
{
  if ([(NSExtension *)self->_extension ql_isPreviewExtensionThatHaveCustomPresentationView])
  {
    v3 = [MEMORY[0x277D75348] clearColor];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = QLRemoteItemViewController;
    v3 = [(QLItemViewController *)&v5 fullscreenBackgroundColor];
  }

  return v3;
}

- (void)presentShareSheetWithPopoverTracker:(id)a3 customSharedURL:(id)a4 dismissCompletion:(id)a5
{
  objc_storeStrong(&self->_popoverTracker, a3);
  v8 = a5;
  v9 = a4;
  v10 = [(QLItemViewController *)self delegate];
  [v10 previewItemViewController:self wantsToShowShareSheetWithPopoverTracker:self customSharedURL:v9 dismissCompletion:v8];
}

- (void)dismissQuickLook
{
  v3 = [(QLItemViewController *)self delegate];
  [v3 previewItemViewControllerWantsToDismissQuickLook:self];
}

- (void)forwardMessageToHostOfCustomViewController:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v8 = a4;
  v6 = v8;
  v7 = v5;
  QLRunInMainThread();
}

void __91__QLRemoteItemViewController_forwardMessageToHostOfCustomViewController_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 previewItemViewController:*(a1 + 32) wantsToForwardMessageToHost:*(a1 + 40) completionHandler:*(a1 + 48)];
}

- (void)getFrameWithCompletionBlock:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  popoverTracker = self->_popoverTracker;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __58__QLRemoteItemViewController_getFrameWithCompletionBlock___block_invoke;
  v12[3] = &unk_278B58D18;
  v6 = v4;
  v13 = v6;
  v7 = [(QLRemotePopoverTracker *)popoverTracker synchronousRemoteObjectProxyWithErrorHandler:v12];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__QLRemoteItemViewController_getFrameWithCompletionBlock___block_invoke_2;
  v9[3] = &unk_278B58F00;
  v8 = v6;
  v10 = v8;
  objc_copyWeak(&v11, &location);
  [v7 getFrameWithCompletionBlock:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __58__QLRemoteItemViewController_getFrameWithCompletionBlock___block_invoke_2(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v10 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = [WeakRetained view];
  v12 = objc_loadWeakRetained((a1 + 40));
  v13 = [v12 remoteViewController];
  v14 = [v13 view];
  [v11 convertRect:v14 fromView:{a2, a3, a4, a5}];
  (*(v10 + 16))(v10);
}

@end