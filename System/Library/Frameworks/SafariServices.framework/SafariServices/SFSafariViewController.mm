@interface SFSafariViewController
+ (BOOL)_eligibleForPlatformConventions;
+ (SFSafariViewControllerPrewarmingToken)prewarmConnectionsToURLs:(NSArray *)URLs;
- (SFSafariViewController)initWithCoder:(NSCoder *)aDecoder;
- (SFSafariViewController)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil;
- (SFSafariViewController)initWithURL:(NSURL *)URL;
- (SFSafariViewController)initWithURL:(NSURL *)URL configuration:(SFSafariViewControllerConfiguration *)configuration;
- (SFSafariViewController)initWithURL:(NSURL *)URL entersReaderIfAvailable:(BOOL)entersReaderIfAvailable;
- (SFSafariViewControllerConfiguration)configuration;
- (SFServiceViewControllerProtocol)serviceProxy;
- (id)_defaultPreviewActionItems;
- (id)_fetchCustomActivitiesForURL:(void *)a3 title:;
- (id)_fetchExcludedActivityTypesForURL:(id)a3 title:(id)a4;
- (id)delegate;
- (id)previewActionItems;
- (uint64_t)_addLaunchPlaceholderView;
- (uint64_t)_addRemoteViewControllerIfNeeded;
- (uint64_t)_removeRemoteViewController;
- (uint64_t)_updatePreviewViewControllerWithLinkPreviewEnabled:(int)a3 animated:;
- (void)_addLaunchPlaceholderView;
- (void)_addRemoteView;
- (void)_addRemoteViewControllerIfNeeded;
- (void)_boundingPathMayHaveChangedForView:(id)a3 relativeToBoundsOriginOnly:(BOOL)a4;
- (void)_connectToService;
- (void)_determinePlatformConventions;
- (void)_didLoadRemoteViewController:(uint64_t)a1;
- (void)_dismiss;
- (void)_forwardNotificationToViewService:(id)a3;
- (void)_handleURLExternallyIfApplicableBypassingVisibilityCheck:(uint64_t)a1;
- (void)_initializeViewService;
- (void)_notifyServiceOfUpdatedTintColors;
- (void)_removeLaunchPlaceholderView;
- (void)_restartServiceViewController;
- (void)_setEdgeSwipeDismissalEnabled:(id *)a1;
- (void)_setShowingLinkPreview:(BOOL)a3;
- (void)_setShowingLinkPreviewWithMinimalUI:(BOOL)a3;
- (void)_setUpWithURL:(void *)a3 configuration:;
- (void)_updateLinkPreviewHitTestView;
- (void)_updateScrollViewIndicatorInsets;
- (void)dealloc;
- (void)interactiveDismissControllerDidEnd:(id)a3;
- (void)loadView;
- (void)remoteViewController:(id)a3 didFinishInitialLoad:(BOOL)a4;
- (void)remoteViewController:(id)a3 executeCustomActivityProxyID:(id)a4;
- (void)remoteViewController:(id)a3 fetchActivityViewControllerInfoForURL:(id)a4 title:(id)a5;
- (void)remoteViewController:(id)a3 hostApplicationOpenURL:(id)a4;
- (void)remoteViewController:(id)a3 initialLoadDidRedirectToURL:(id)a4;
- (void)remoteViewController:(id)a3 viewServiceDidTerminateWithError:(id)a4;
- (void)remoteViewControllerDidLoadWebView:(id)a3;
- (void)remoteViewControllerWillDismiss:(id)a3;
- (void)remoteViewControllerWillOpenCurrentPageInBrowser:(id)a3;
- (void)serviceProxyWillQueueInvocation:(id)a3;
- (void)setDismissButtonStyle:(SFSafariViewControllerDismissButtonStyle)dismissButtonStyle;
- (void)setModalPresentationStyle:(int64_t)a3;
- (void)setPreferredBarTintColor:(UIColor *)preferredBarTintColor;
- (void)setPreferredControlTintColor:(UIColor *)preferredControlTintColor;
- (void)setTransitioningDelegate:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillAppearImpl;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation SFSafariViewController

- (SFSafariViewController)initWithURL:(NSURL *)URL configuration:(SFSafariViewControllerConfiguration *)configuration
{
  v6 = URL;
  v7 = configuration;
  if (([(NSURL *)v6 safari_isHTTPFamilyURL]& 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The specified URL has an unsupported scheme. Only HTTP and HTTPS URLs are supported."];
  }

  v12.receiver = self;
  v12.super_class = SFSafariViewController;
  v8 = [(SFSafariViewController *)&v12 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    [(SFSafariViewController *)v8 _setUpWithURL:v6 configuration:v7];
    if ([MEMORY[0x1E69C8880] isSolariumEnabled])
    {
      v9->_dismissButtonStyle = 1;
    }

    v10 = v9;
  }

  return v9;
}

- (void)_setUpWithURL:(void *)a3 configuration:
{
  v26[1] = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (a1)
  {
    v9 = [v7 copy];
    v10 = *(a1 + 1000);
    *(a1 + 1000) = v9;

    objc_storeStrong((a1 + 1264), a2);
    v11 = [v6 absoluteString];
    *(a1 + 1024) = [v11 safari_looksLikeWillRedirectToURLStringAfterAuthentication:0];

    if ([objc_opt_class() _eligibleForPlatformConventions])
    {
      if (*(a1 + 1025))
      {
        v12 = 2;
      }

      else
      {
        v12 = 5;
      }

      [a1 setModalPresentationStyle:v12];
    }

    else if (__UIApplicationLinkedOnOrAfter())
    {
      [a1 setModalPresentationStyle:0];
      v13 = objc_alloc_init(SFInteractiveDismissController);
      v14 = *(a1 + 1096);
      *(a1 + 1096) = v13;

      [*(a1 + 1096) setViewControllerToBeDismissed:a1];
      v15 = *(a1 + 1096);
      v25.receiver = a1;
      v25.super_class = SFSafariViewController;
      objc_msgSendSuper2(&v25, sel_setTransitioningDelegate_, v15);
      [*(a1 + 1096) setDelegate:a1];
    }

    *(a1 + 1120) = invalidScrollViewInsets;
    *(a1 + 1136) = unk_1D47DE7C0;
    *(a1 + 1152) = invalidScrollViewInsets;
    *(a1 + 1168) = unk_1D47DE7C0;
    v16 = [[SFQueueingServiceViewControllerProxy alloc] initWithProtocol:&unk_1F50801E0];
    v17 = *(a1 + 1048);
    *(a1 + 1048) = v16;

    [*(a1 + 1048) setDelegate:a1];
    if ([*(a1 + 1000) _isPerformingAccountSecurityUpgrade])
    {
      [a1 setModalInPresentation:1];
    }

    [*(a1 + 1048) setConfiguration:*(a1 + 1000)];
    v18 = [MEMORY[0x1E69DD1B8] systemTraitsAffectingColorAppearance];
    v19 = [a1 registerForTraitChanges:v18 withTarget:a1 action:sel__notifyServiceOfUpdatedTintColors];

    objc_initWeak(&location, a1);
    v26[0] = objc_opt_class();
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __54__SFSafariViewController__setUpWithURL_configuration___block_invoke;
    v22[3] = &unk_1E84938C8;
    objc_copyWeak(&v23, &location);
    v21 = [a1 registerForTraitChanges:v20 withHandler:v22];

    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }
}

- (SFSafariViewController)initWithURL:(NSURL *)URL entersReaderIfAvailable:(BOOL)entersReaderIfAvailable
{
  v4 = entersReaderIfAvailable;
  v6 = URL;
  if (([(NSURL *)v6 safari_isHTTPFamilyURL]& 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The specified URL has an unsupported scheme. Only HTTP and HTTPS URLs are supported."];
  }

  v11.receiver = self;
  v11.super_class = SFSafariViewController;
  v7 = [(SFSafariViewController *)&v11 initWithNibName:0 bundle:0];
  if (v7)
  {
    v8 = objc_alloc_init(SFSafariViewControllerConfiguration);
    [(SFSafariViewControllerConfiguration *)v8 setEntersReaderIfAvailable:v4];
    [(SFSafariViewController *)v7 _setUpWithURL:v6 configuration:v8];
    if ([MEMORY[0x1E69C8880] isSolariumEnabled])
    {
      v7->_dismissButtonStyle = 1;
    }

    v9 = v7;
  }

  return v7;
}

- (SFSafariViewController)initWithURL:(NSURL *)URL
{
  v4 = URL;
  v5 = objc_alloc_init(SFSafariViewControllerConfiguration);
  v6 = [(SFSafariViewController *)self initWithURL:v4 configuration:v5];

  return v6;
}

- (SFSafariViewController)initWithCoder:(NSCoder *)aDecoder
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"Misuse of SFSafariViewController interface. Use -initWithURL: or -initWithURL:configuration: instead."];

  return 0;
}

- (SFSafariViewController)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"Misuse of SFSafariViewController interface. Use -initWithURL: or -initWithURL:configuration: instead."];

  return 0;
}

void __54__SFSafariViewController__setUpWithURL_configuration___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = [v8 traitCollection];
    v5 = [v4 horizontalSizeClass];

    if (v5 == 1)
    {
      v6 = [WeakRetained activePresentationController];
      v7 = [v6 presentationStyle];

      if ((v7 + 2) <= 0xA)
      {
        [WeakRetained setModalPresentationStyle:v7];
      }
    }
  }
}

- (void)dealloc
{
  v3 = [(SFSafariViewController *)self view];
  [v3 _removeBoundingPathChangeObserver:self];

  [(SFSafariViewController *)self removeChildViewController:self->_remoteViewController];
  v4.receiver = self;
  v4.super_class = SFSafariViewController;
  [(SFSafariViewController *)&v4 dealloc];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SFSafariViewController;
  [(SFSafariViewController *)&v4 viewWillAppear:a3];
  if ((performViewWillAppearInLoadView() & 1) == 0)
  {
    [(SFSafariViewController *)self viewWillAppearImpl];
  }
}

- (void)_addLaunchPlaceholderView
{
  [*(a1 + 1016) setAutoresizingMask:18];
  [a2 bounds];
  [OUTLINED_FUNCTION_6_0() setFrame:?];
  [OUTLINED_FUNCTION_6_0() updateBarTintColor:*(a1 + 1240)];
  [OUTLINED_FUNCTION_6_0() updateControlTintColor:*(a1 + 1248)];
  [OUTLINED_FUNCTION_6_0() updateDismissButtonStyle:*(a1 + 1256)];
  [a2 addSubview:*(a1 + 1016)];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SFSafariViewController;
  [(SFSafariViewController *)&v5 viewWillDisappear:a3];
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self];

  if ((([(SFSafariViewController *)self isBeingDismissed]& 1) != 0 || [(SFSafariViewController *)self isMovingFromParentViewController]) && SFViewControllerViewEmbeddedByPreviewController(self))
  {
    if (self->_textPreviewViewController)
    {
      [(SFSafariViewController *)self _updatePreviewViewControllerWithLinkPreviewEnabled:0 animated:?];
    }

    [(SFSafariViewController *)self _setShowingLinkPreview:0];
  }
}

- (void)setModalPresentationStyle:(int64_t)a3
{
  if (a3)
  {
    v5 = [(SFSafariViewController *)self transitioningDelegate];
    interactiveDismissController = self->_interactiveDismissController;

    if (v5 == interactiveDismissController)
    {
      [(SFSafariViewController *)self setTransitioningDelegate:0];
      v7 = self->_interactiveDismissController;
      self->_interactiveDismissController = 0;
    }
  }

  [(SFServiceViewControllerProtocol *)self->_serviceProxy setHostAppModalPresentationStyle:a3];
  v8.receiver = self;
  v8.super_class = SFSafariViewController;
  [(SFSafariViewController *)&v8 setModalPresentationStyle:a3];
}

- (void)setTransitioningDelegate:(id)a3
{
  if (a3)
  {
    v5.receiver = self;
    v5.super_class = SFSafariViewController;
    [(SFSafariViewController *)&v5 setTransitioningDelegate:?];
    interactiveDismissController = self->_interactiveDismissController;
    self->_interactiveDismissController = 0;
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = SFSafariViewController;
  v7 = a4;
  [(SFSafariViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  self->_viewSizeIsTransitioning = 1;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __77__SFSafariViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v8[3] = &unk_1E848F860;
  v8[4] = self;
  [v7 animateAlongsideTransition:&__block_literal_global_44 completion:v8];
}

- (void)_notifyServiceOfUpdatedTintColors
{
  v5 = [(SFSafariViewController *)self traitCollection];
  v3 = [(UIColor *)self->_preferredBarTintColor resolvedColorWithTraitCollection:v5];
  v4 = [(UIColor *)self->_preferredControlTintColor resolvedColorWithTraitCollection:v5];
  [(SFServiceViewControllerProtocol *)self->_serviceProxy setPreferredBarTintColor:v3 controlTintColor:v4];
}

void __43__SFSafariViewController__connectToService__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 1040);
  *(v7 + 1040) = 0;

  if (v5)
  {
    [(SFSafariViewController *)*(a1 + 32) _didLoadRemoteViewController:v5];
  }

  else
  {
    v9 = WBS_LOG_CHANNEL_PREFIXViewService();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __43__SFSafariViewController__connectToService__block_invoke_cold_1(v9);
    }
  }
}

- (void)_addRemoteViewControllerIfNeeded
{
  textPreviewViewController = self->_textPreviewViewController;
  adoptsPlatformConventions = self->_adoptsPlatformConventions;
  if (adoptsPlatformConventions)
  {
    v5 = [(NSNumber *)adoptsPlatformConventions BOOLValue];
  }

  else
  {
    v5 = 1;
  }

  if (self->_remoteViewController && ![(SFSafariViewController *)self defersAddingRemoteViewController]&& !((self->_remoteViewControllerHasBeenAdded | v5) & 1 | (textPreviewViewController != 0)))
  {
    [(SFSafariViewController *)&self->_remoteViewController _addRemoteViewControllerIfNeeded];
  }
}

void __51__SFSafariViewController__addLaunchPlaceholderView__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(SFSafariViewController *)WeakRetained _handleURLExternallyIfApplicableBypassingVisibilityCheck:?];
}

- (SFSafariViewControllerConfiguration)configuration
{
  v2 = [(SFSafariViewControllerConfiguration *)self->_configuration copy];

  return v2;
}

- (void)setPreferredBarTintColor:(UIColor *)preferredBarTintColor
{
  v12 = preferredBarTintColor;
  v5 = [MEMORY[0x1E69C8880] isSolariumEnabled];
  v6 = v12;
  if ((v5 & 1) == 0)
  {
    v7 = self->_preferredBarTintColor;
    if (v7 != v12)
    {
      v8 = [(UIColor *)v7 isEqual:v12];
      v6 = v12;
      if ((v8 & 1) == 0)
      {
        objc_storeStrong(&self->_preferredBarTintColor, preferredBarTintColor);
        v6 = v12;
        if (!self->_hasBeenDisplayedAtLeastOnce)
        {
          v9 = [(SFSafariViewController *)self traitCollection];
          serviceProxy = self->_serviceProxy;
          v11 = [(UIColor *)v12 resolvedColorWithTraitCollection:v9];
          [(SFServiceViewControllerProtocol *)serviceProxy setPreferredBarTintColor:v11];

          [(SFSafariLaunchPlaceholderView *)self->_launchPlaceholderView updateBarTintColor:v12];
          v6 = v12;
        }
      }
    }
  }
}

- (void)setPreferredControlTintColor:(UIColor *)preferredControlTintColor
{
  v12 = preferredControlTintColor;
  v5 = [MEMORY[0x1E69C8880] isSolariumEnabled];
  v6 = v12;
  if ((v5 & 1) == 0)
  {
    v7 = self->_preferredControlTintColor;
    if (v7 != v12)
    {
      v8 = [(UIColor *)v7 isEqual:v12];
      v6 = v12;
      if ((v8 & 1) == 0)
      {
        objc_storeStrong(&self->_preferredControlTintColor, preferredControlTintColor);
        v6 = v12;
        if (!self->_hasBeenDisplayedAtLeastOnce)
        {
          serviceProxy = self->_serviceProxy;
          v10 = [(SFSafariViewController *)self traitCollection];
          v11 = [(UIColor *)v12 resolvedColorWithTraitCollection:v10];
          [(SFServiceViewControllerProtocol *)serviceProxy setPreferredControlTintColor:v11];

          v6 = v12;
        }
      }
    }
  }
}

- (void)setDismissButtonStyle:(SFSafariViewControllerDismissButtonStyle)dismissButtonStyle
{
  if (self->_dismissButtonStyle != dismissButtonStyle)
  {
    self->_dismissButtonStyle = dismissButtonStyle;
    [(SFServiceViewControllerProtocol *)self->_serviceProxy setDismissButtonStyle:?];
  }
}

+ (SFSafariViewControllerPrewarmingToken)prewarmConnectionsToURLs:(NSArray *)URLs
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = URLs;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    v7 = *MEMORY[0x1E695D940];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if (([*(*(&v12 + 1) + 8 * i) safari_isHTTPFamilyURL] & 1) == 0)
        {
          [MEMORY[0x1E695DF30] raise:v7 format:@"The specified URL has an unsupported scheme. Only HTTP and HTTPS URLs are supported."];
        }
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v9 = +[_SFSafariViewControllerPrewarmingSession sharedSession];
  v10 = [v9 prewarmConnectionsToURLs:v3];

  return v10;
}

+ (BOOL)_eligibleForPlatformConventions
{
  if (!os_variant_has_internal_ui())
  {
    return 0;
  }

  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 objectForKey:@"DebugSafariViewControllerAdoptsPlatformConventions"];

  if (!v3)
  {
    return 0;
  }

  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  v5 = [v4 BOOLForKey:@"DebugSafariViewControllerAdoptsPlatformConventions"];

  return v5;
}

void __83__SFSafariViewController__handleURLExternallyIfApplicableBypassingVisibilityCheck___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (*(v3 + 1025) == 1)
  {
    WeakRetained = objc_loadWeakRetained((v3 + 1232));
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained safariViewController:*(a1 + 32) didCompleteInitialLoad:a2];
    }
  }
}

- (void)_setShowingLinkPreview:(BOOL)a3
{
  if (self->_displayMode != a3)
  {
    v4 = a3;
    self->_displayMode = a3;
    [(SFServiceViewControllerProtocol *)self->_serviceProxy setDisplayMode:?];
    [(SFSafariLaunchPlaceholderView *)self->_launchPlaceholderView setHidden:v4];

    [(SFSafariViewController *)&self->super.super.super.isa _updateLinkPreviewHitTestView];
  }
}

- (void)_setShowingLinkPreviewWithMinimalUI:(BOOL)a3
{
  v3 = a3;
  if (a3)
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  if (self->_displayMode != v4)
  {
    self->_displayMode = v4;
    [(SFServiceViewControllerProtocol *)self->_serviceProxy setDisplayMode:?];
    launchPlaceholderView = self->_launchPlaceholderView;

    [(SFSafariLaunchPlaceholderView *)launchPlaceholderView setHidden:v3];
  }
}

uint64_t __86__SFSafariViewController__updatePreviewViewControllerWithLinkPreviewEnabled_animated___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1192) preferredContentSize];
  v2 = *(a1 + 32);

  return [v2 setPreferredContentSize:?];
}

- (id)previewActionItems
{
  v21 = *MEMORY[0x1E69E9840];
  if ([(NSArray *)self->_previewActions count])
  {
    v14 = [MEMORY[0x1E695DF70] array];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    obj = self->_previewActions;
    v3 = [(NSArray *)obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v17;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v17 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v16 + 1) + 8 * i);
          v8 = MEMORY[0x1E69DCE00];
          v9 = [v7 title];
          v15[0] = MEMORY[0x1E69E9820];
          v15[1] = 3221225472;
          v15[2] = __44__SFSafariViewController_previewActionItems__block_invoke;
          v15[3] = &unk_1E8494438;
          v15[4] = v7;
          v15[5] = self;
          v10 = [v8 actionWithTitle:v9 style:0 handler:v15];

          if (objc_opt_respondsToSelector())
          {
            v11 = [MEMORY[0x1E69853E0] imageForElementActionType:{objc_msgSend(v7, "type")}];
            [v10 setImage:v11];
          }

          [v14 addObject:v10];
        }

        v4 = [(NSArray *)obj countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v4);
    }
  }

  else
  {
    v14 = [(SFSafariViewController *)self _defaultPreviewActionItems];
  }

  return v14;
}

void __52__SFSafariViewController__defaultPreviewActionItems__block_invoke(uint64_t a1)
{
  v2 = +[SSReadingList defaultReadingList];
  [v2 addReadingListItemWithURL:*(*(a1 + 32) + 1264) title:0 previewText:0 error:0];
}

void __52__SFSafariViewController__defaultPreviewActionItems__block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DCD50] generalPasteboard];
  [v2 setURL:*(*(a1 + 32) + 1264)];
}

- (void)_boundingPathMayHaveChangedForView:(id)a3 relativeToBoundsOriginOnly:(BOOL)a4
{
  if (!a4)
  {
    self->_verticalScrollIndicatorBaseInsets = *invalidScrollViewInsets;
    self->_horizontalScrollIndicatorBaseInsets = *invalidScrollViewInsets;
    if (!self->_viewSizeIsTransitioning)
    {
      [(SFSafariViewController *)self _updateScrollViewIndicatorInsets];
    }
  }
}

- (void)remoteViewControllerDidLoadWebView:(id)a3
{
  [(SFServiceViewControllerProtocol *)self->_serviceProxy loadURL:self->_initialURL];
  v5 = [(SFSafariViewControllerConfiguration *)self->_configuration eventAttribution];
  v4 = [v5 toUISClickAttribution];
  if (v4 && [(NSURL *)self->_initialURL safari_isHTTPSURL])
  {
    [(SFServiceViewControllerProtocol *)self->_serviceProxy addClickAttribution:v4];
  }
}

- (void)remoteViewControllerWillDismiss:(id)a3
{
  [(SFSafariViewController *)self dismissViewControllerAnimated:1 completion:0];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained safariViewControllerDidFinish:self];
  }
}

- (void)viewWillLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = SFSafariViewController;
  [(SFSafariViewController *)&v4 viewWillLayoutSubviews];
  v3 = [(SFSafariViewController *)self topLayoutGuide];
  [v3 length];
  [(SFSafariLaunchPlaceholderView *)self->_launchPlaceholderView setTopLayoutGuideInset:?];
}

- (void)_restartServiceViewController
{
  self->_hasRestartedViewService = 1;
  v11 = [(SFSafariViewController *)self serviceProxy];
  v3 = [(SFSafariViewController *)self initialURL];
  [v11 loadURL:v3];

  [v11 setConfiguration:self->_configuration];
  [v11 setHostAppModalPresentationStyle:{-[SFSafariViewController modalPresentationStyle](self, "modalPresentationStyle")}];
  preferredBarTintColor = self->_preferredBarTintColor;
  if (preferredBarTintColor)
  {
    v5 = [(SFSafariViewController *)self traitCollection];
    v6 = [(UIColor *)preferredBarTintColor resolvedColorWithTraitCollection:v5];
    [v11 setPreferredBarTintColor:v6];
  }

  preferredControlTintColor = self->_preferredControlTintColor;
  if (preferredControlTintColor)
  {
    v8 = [(SFSafariViewController *)self traitCollection];
    v9 = [(UIColor *)preferredControlTintColor resolvedColorWithTraitCollection:v8];
    [v11 setPreferredControlTintColor:v9];
  }

  v10 = v11;
  if (self->_dismissButtonStyle)
  {
    [v11 setDismissButtonStyle:?];
    v10 = v11;
  }
}

- (void)remoteViewController:(id)a3 viewServiceDidTerminateWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  [(SFServiceViewControllerProtocol *)self->_serviceProxy setTarget:0];
  [(SFSafariViewController *)self _removeRemoteViewController];
  remoteViewController = self->_remoteViewController;
  self->_remoteViewController = 0;

  [(SFSafariViewController *)self _addLaunchPlaceholderView];
  v9 = dispatch_time(0, 1500000000);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __80__SFSafariViewController_remoteViewController_viewServiceDidTerminateWithError___block_invoke;
  v10[3] = &unk_1E848F8F0;
  objc_copyWeak(&v11, &location);
  dispatch_after(v9, MEMORY[0x1E69E96A0], v10);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __80__SFSafariViewController_remoteViewController_viewServiceDidTerminateWithError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _restartServiceViewController];
}

- (void)remoteViewController:(id)a3 fetchActivityViewControllerInfoForURL:(id)a4 title:(id)a5
{
  v7 = a5;
  v8 = a4;
  v10 = [(SFSafariViewController *)self _fetchCustomActivitiesForURL:v8 title:v7];
  v9 = [(SFSafariViewController *)self _fetchExcludedActivityTypesForURL:v8 title:v7];

  [(SFServiceViewControllerProtocol *)self->_serviceProxy didFetchCustomActivities:v10 excludedActivityTypes:v9];
}

void __61__SFSafariViewController__fetchCustomActivitiesForURL_title___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = [[SFCustomActivityProxy alloc] initWithActivity:v3];
  [*(a1 + 32) addObject:v6];
  v4 = *(*(a1 + 40) + 1072);
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[SFCustomActivityProxy activityProxyID](v6, "activityProxyID")}];
  [v4 setObject:v3 forKey:v5];
}

- (id)_fetchExcludedActivityTypesForURL:(id)a3 title:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v9 = [WeakRetained safariViewController:self excludedActivityTypesForURL:v6 title:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)remoteViewController:(id)a3 didFinishInitialLoad:(BOOL)a4
{
  if (!self->_hasNotifiedDelegateAboutInitialLoadCompleted)
  {
    v5 = a4;
    self->_hasNotifiedDelegateAboutInitialLoadCompleted = 1;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained safariViewController:self didCompleteInitialLoad:v5];
    }
  }
}

- (void)remoteViewController:(id)a3 executeCustomActivityProxyID:(id)a4
{
  v6 = [(NSMutableDictionary *)self->_activitiesMap objectForKey:a4];
  [v6 prepareWithActivityItems:self->_activityItemsForCustomActivities];
  v5 = [v6 activityViewController];
  if (v5)
  {
    [(SFSafariViewController *)self presentViewController:v5 animated:1 completion:0];
  }

  else
  {
    [v6 performActivity];
  }
}

- (void)remoteViewController:(id)a3 hostApplicationOpenURL:(id)a4
{
  v19[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [MEMORY[0x1E69DC668] sharedApplication];
  v7 = [v6 _appAdoptsUISceneLifecycle];

  if (v7)
  {
    v8 = [(SFSafariViewController *)self view];
    v9 = [v8 window];
    v10 = [v9 windowScene];

    v11 = [v10 delegate];
    v18 = *MEMORY[0x1E69DDB20];
    v19[0] = @"com.apple.SafariViewService";
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    if (objc_opt_respondsToSelector())
    {
      if (objc_opt_respondsToSelector())
      {
        [MEMORY[0x1E69DCEA0] _optionsFromPayload:v12 sourceProcessHandle:0];
      }

      else
      {
        [MEMORY[0x1E69DCEA0] _optionsFromDictionary:v12];
      }
      v13 = ;
      v14 = [objc_alloc(MEMORY[0x1E69DCD08]) initWithURL:v5 options:v13];
      v15 = [MEMORY[0x1E695DFD8] setWithObject:v14];
      [v11 scene:v10 openURLContexts:v15];
    }
  }

  else
  {
    v16 = *MEMORY[0x1E69DDB20];
    v17 = @"com.apple.SafariViewService";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v11 = [objc_alloc(MEMORY[0x1E69DCD00]) initWithURL:v5];
    [*MEMORY[0x1E69DDA98] _applicationOpenURLAction:v11 payload:v10 origin:0];
  }
}

- (void)remoteViewController:(id)a3 initialLoadDidRedirectToURL:(id)a4
{
  v5 = a4;
  if (!self->_hasRestartedViewService)
  {
    v7 = v5;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained safariViewController:self initialLoadDidRedirectToURL:v7];
    }

    v5 = v7;
  }
}

- (void)remoteViewControllerWillOpenCurrentPageInBrowser:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained safariViewControllerWillOpenInBrowser:self];
  }
}

- (void)_forwardNotificationToViewService:(id)a3
{
  serviceProxy = self->_serviceProxy;
  v4 = [a3 name];
  [(SFServiceViewControllerProtocol *)serviceProxy repostNotificationInViewService:v4];
}

- (void)interactiveDismissControllerDidEnd:(id)a3
{
  [(SFServiceViewControllerProtocol *)self->_serviceProxy setIsRunningTransitionAnimation:0];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained safariViewControllerDidFinish:self];
  }
}

- (void)serviceProxyWillQueueInvocation:(id)a3
{
  v4 = a3;
  if (!self->_cancelViewServiceRequest && self->_adoptsPlatformConventions)
  {
    v5 = v4;
    [(SFSafariViewController *)self _connectToService];
    v4 = v5;
  }
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_initializeViewService
{
  if (a1 && (*(a1 + 1184) & 1) == 0)
  {
    *(a1 + 1184) = 1;
    v4 = +[_SFSafariViewControllerPrewarmingSession sharedSessionIfExists];
    if ([objc_opt_class() _supportsPrewarming] && (objc_msgSend(*(a1 + 1000), "_isEphemeral") & 1) == 0 && (objc_msgSend(v4, "remoteViewController"), v2 = objc_claimAutoreleasedReturnValue(), v2, v2))
    {
      [v4 remoteViewController];
      objc_claimAutoreleasedReturnValue();
      v3 = OUTLINED_FUNCTION_2();
      [(SFSafariViewController *)v3 _didLoadRemoteViewController:v2];

      [v4 restart];
    }

    else
    {
      [(SFSafariViewController *)a1 _connectToService];
    }

    MEMORY[0x1DA6DCDD0]();
  }
}

- (void)_didLoadRemoteViewController:(uint64_t)a1
{
  v4 = a2;
  if (a1)
  {
    objc_storeStrong((a1 + 1032), a2);
    v5 = [v4 serviceViewControllerProxy];
    [*(a1 + 1048) setTarget:v5];

    [v4 setDelegate:a1];
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_45();
    v8 = __55__SFSafariViewController__didLoadRemoteViewController___block_invoke;
    v9 = &unk_1E848F810;
    v10 = a1;
    [v6 prepareForDisplayWithCompletionHandler:v7];
  }
}

- (void)_connectToService
{
  if (a1)
  {
    v2 = [*(a1 + 1040) invoke];
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_45();
    v6 = __43__SFSafariViewController__connectToService__block_invoke;
    v7 = &unk_1E8492C38;
    v8 = a1;
    v4 = [v3 requestViewControllerWithConnectionHandler:v5];
    OUTLINED_FUNCTION_35(v4, 1040);
  }
}

- (void)loadView
{
  v3 = objc_alloc_init(SFSafariView);
  [(SFSafariView *)v3 _addBoundingPathChangeObserver:self];
  [(SFSafariViewController *)self setView:v3];
  if (performViewWillAppearInLoadView())
  {
    [(SFSafariViewController *)self viewWillAppearImpl];
    if (self)
    {
      [(SFSafariViewController *)self _handleURLExternallyIfApplicableBypassingVisibilityCheck:?];
    }
  }

  [(SFSafariViewController *)self setHidesBottomBarWhenPushed:1];
}

- (void)viewWillAppearImpl
{
  if (!a1)
  {
    return;
  }

  [(SFSafariViewController *)a1 _determinePlatformConventions];
  if ([*(a1 + 992) BOOLValue])
  {
    if (*(a1 + 1025) != 1)
    {
      goto LABEL_8;
    }

    [(SFSafariViewController *)a1 _removeRemoteViewController];
  }

  else if (*(a1 + 1032))
  {
    [a1 _addRemoteViewControllerIfNeeded];
    goto LABEL_8;
  }

  [(SFSafariViewController *)a1 _addLaunchPlaceholderView];
LABEL_8:
  if ([*(a1 + 992) BOOLValue])
  {
    goto LABEL_9;
  }

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 addObserver:a1 selector:sel__forwardNotificationToViewService_ name:*MEMORY[0x1E69DDBC8] object:0];
  [v4 addObserver:a1 selector:sel__forwardNotificationToViewService_ name:*MEMORY[0x1E69DDAB0] object:0];
  if ((([a1 isBeingPresented] & 1) != 0 || objc_msgSend(a1, "isMovingToParentViewController")) && SFViewControllerViewEmbeddedByPreviewController(a1))
  {
    [a1 _setShowingLinkPreview:1];
    v5 = _SFShouldShowLinkPreviews();
LABEL_20:
    [(SFSafariViewController *)a1 _updatePreviewViewControllerWithLinkPreviewEnabled:v5 animated:0];
    goto LABEL_21;
  }

  if (*(a1 + 1192))
  {
    v5 = 0;
    goto LABEL_20;
  }

LABEL_21:
  [(SFSafariViewController *)a1 _updateScrollViewIndicatorInsets];

LABEL_9:
  *(a1 + 1009) = 1;
  v2 = [a1 activePresentationController];
  v3 = [v2 presentationStyle];

  if ((v3 + 2) <= 0xA)
  {

    [a1 setModalPresentationStyle:v3];
  }
}

- (void)_determinePlatformConventions
{
  if (a1)
  {
    if (([a1 _showingLinkPreview] & 1) != 0 || (objc_msgSend(a1, "_showingLinkPreviewWithMinimalUI") & 1) != 0 || SFViewControllerViewEmbeddedByPreviewController(a1))
    {
      v2 = 0;
      *(a1 + 1025) = 0;
    }

    else
    {
      v2 = 1;
    }

    v3 = v2 & [objc_opt_class() _eligibleForPlatformConventions];
    v4 = *(a1 + 992);
    if (!v4 || ([v4 BOOLValue] & 1) == 0 && ((v3 ^ 1) & 1) == 0)
    {
      v5 = [MEMORY[0x1E696AD98] numberWithBool:v3];
      OUTLINED_FUNCTION_35(v5, 992);
    }

    if (([*(a1 + 992) BOOLValue] & 1) == 0)
    {

      [(SFSafariViewController *)a1 _initializeViewService];
    }
  }
}

- (uint64_t)_removeRemoteViewController
{
  if (result)
  {
    v1 = result;
    if (*(result + 1056) == 1)
    {
      [result removeChildViewController:*(result + 1032)];
      v2 = [*(v1 + 1032) view];
      [v2 removeFromSuperview];

      result = [*(v1 + 1032) didMoveToParentViewController:0];
      *(v1 + 1056) = 0;
    }
  }

  return result;
}

- (uint64_t)_updatePreviewViewControllerWithLinkPreviewEnabled:(int)a3 animated:
{
  if (result)
  {
    v5 = result;
    result = [result _showingLinkPreview];
    if ((result & 1) != 0 || *(v5 + 1192))
    {
      if (a2)
      {
        result = OUTLINED_FUNCTION_2_3();
        if (!result)
        {
          return result;
        }

        [result removeFromParentViewController];
        v6 = [OUTLINED_FUNCTION_2_3() view];
        [v6 removeFromSuperview];

        [OUTLINED_FUNCTION_2_3() didMoveToParentViewController:0];
        v7 = *(v5 + 1192);
        *(v5 + 1192) = 0;

        if (*(v5 + 1032))
        {
          [v5 _addRemoteViewControllerIfNeeded];
          [*(v5 + 1048) loadURL:*(v5 + 1264)];
        }

        if (a3)
        {
          goto LABEL_9;
        }
      }

      else
      {
        [(SFSafariViewController *)v5 _removeRemoteViewController];
        OUTLINED_FUNCTION_35([[_SFURLTextPreviewViewController alloc] initWithURL:*(v5 + 1264)], 1192);
        v9 = [v5 view];
        v10 = [OUTLINED_FUNCTION_2_3() view];
        [v9 addSubview:v10];

        v11 = [v5 view];
        [v11 bounds];
        v13 = v12;
        v15 = v14;
        v17 = v16;
        v19 = v18;
        v20 = [OUTLINED_FUNCTION_2_3() view];
        [v20 setFrame:{v13, v15, v17, v19}];

        [v5 addChildViewController:*(v5 + 1192)];
        [OUTLINED_FUNCTION_2_3() didMoveToParentViewController:v5];
        v21 = [OUTLINED_FUNCTION_2_3() view];
        [v21 layoutIfNeeded];

        v22 = [OUTLINED_FUNCTION_2_3() _previewHeader];
        [v22 setDelegate:v5];

        if (a3)
        {
LABEL_9:
          OUTLINED_FUNCTION_0_2();
          OUTLINED_FUNCTION_45();
          v24 = __86__SFSafariViewController__updatePreviewViewControllerWithLinkPreviewEnabled_animated___block_invoke;
          v25 = &unk_1E848F810;
          v26 = v5;
          return [v8 animateWithDuration:v23 animations:0.25];
        }
      }

      [OUTLINED_FUNCTION_2_3() preferredContentSize];

      return [v5 setPreferredContentSize:?];
    }
  }

  return result;
}

- (void)_updateScrollViewIndicatorInsets
{
  if (a1)
  {
    v22 = [a1 view];
    [MEMORY[0x1E69DCEF8] _sf_baseInsetsForVerticalScrollIndicatorInScrollViewContainerView:v22];
    v20 = v3;
    v21 = v2;
    v18 = v5;
    v19 = v4;
    [MEMORY[0x1E69DCEF8] _sf_baseInsetsForHorizontalScrollIndicatorInScrollViewContainerView:v22];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = (a1 + 1120);
    v14.f64[0] = v21;
    v14.f64[1] = v20;
    v15.f64[0] = v19;
    v15.f64[1] = v18;
    if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v14, *(a1 + 1120)), vceqq_f64(v15, *(a1 + 1136))))) & 1) == 0 || (v16.f64[0] = v8, v16.f64[1] = v6, v17.f64[0] = v10, v17.f64[1] = v12, (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v16, *(a1 + 1152)), vceqq_f64(v17, *(a1 + 1168))))) & 1) == 0))
    {
      *v13 = v21;
      *(a1 + 1128) = v20;
      *(a1 + 1136) = v19;
      *(a1 + 1144) = v18;
      *(a1 + 1152) = v8;
      *(a1 + 1160) = v6;
      *(a1 + 1168) = v10;
      *(a1 + 1176) = v12;
      [*(a1 + 1048) updateScrollViewIndicatorVerticalInsets:*v13 horizontalInsets:{*(a1 + 1128), *(a1 + 1136), *(a1 + 1144)}];
    }
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SFSafariViewController;
  [(SFSafariViewController *)&v5 viewDidAppear:a3];
  if (self)
  {
    [(SFSafariViewController *)self _handleURLExternallyIfApplicableBypassingVisibilityCheck:?];
  }

  if (!self->_didHandlerURLExternally)
  {
    [(SFSafariLaunchPlaceholderView *)self->_launchPlaceholderView setShowContinueButton:1];
  }

  if ([(NSNumber *)self->_adoptsPlatformConventions BOOLValue]&& !self->_usesCompatibilityPlaceholder)
  {
    [(SFSafariViewController *)self dismissViewControllerAnimated:0 completion:0];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained safariViewControllerDidFinish:self];
    }
  }
}

- (void)_dismiss
{
  if (a1)
  {
    [a1 dismissViewControllerAnimated:1 completion:0];
    WeakRetained = objc_loadWeakRetained(a1 + 154);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained safariViewControllerDidFinish:a1];
    }
  }
}

- (void)_addRemoteView
{
  if (a1 && *(a1 + 1032) && (*(a1 + 1056) & 1) == 0)
  {
    if ((__UIApplicationLinkedOnOrAfter() & 1) == 0)
    {
      v2 = *(a1 + 1048);
      v3 = [a1 view];
      v4 = [v3 tintColor];
      [v2 setPreferredControlTintColor:v4];
    }

    v9 = [*(a1 + 1032) view];
    v5 = *(a1 + 1200);
    v6 = [a1 view];
    v7 = v6;
    if (v5)
    {
      [v6 insertSubview:v9 belowSubview:*(a1 + 1200)];
    }

    else
    {
      [v6 addSubview:v9];
    }

    v8 = [a1 view];
    [v8 bounds];
    [v9 setFrame:?];

    [v9 setAutoresizingMask:18];
    *(a1 + 1056) = 1;
  }
}

- (void)_setEdgeSwipeDismissalEnabled:(id *)a1
{
  v21[4] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = a1[137];
    if (v3)
    {
      v20 = [v3 edgeSwipeView];
      if (a2)
      {
        if (!v20)
        {
          v20 = objc_alloc_init(MEMORY[0x1E69DD250]);
          v5 = [v20 layer];
          [v5 setHitTestsAsOpaque:1];

          [a1[137] setEdgeSwipeView:v20];
        }

        v6 = [a1 view];
        [a1[129] view];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_2() insertSubview:v20 aboveSubview:a1];

        [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
        v17 = MEMORY[0x1E696ACD8];
        if ([v6 _sf_usesLeftToRightLayout])
        {
          [v20 leftAnchor];
          objc_claimAutoreleasedReturnValue();
          [OUTLINED_FUNCTION_2() leftAnchor];
        }

        else
        {
          [v20 rightAnchor];
          objc_claimAutoreleasedReturnValue();
          [OUTLINED_FUNCTION_2() rightAnchor];
        }
        v18 = ;
        v19 = a1;
        v16 = [a1 constraintEqualToAnchor:?];
        v21[0] = v16;
        v7 = [v20 topAnchor];
        v8 = [v6 topAnchor];
        v9 = [v7 constraintEqualToAnchor:v8 constant:64.0];
        v21[1] = v9;
        v10 = [v20 bottomAnchor];
        v11 = [v6 bottomAnchor];
        v12 = [v10 constraintEqualToAnchor:v11];
        v21[2] = v12;
        v13 = [v20 widthAnchor];
        v14 = [v13 constraintEqualToConstant:24.0];
        v21[3] = v14;
        v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:4];
        [v17 activateConstraints:v15];
      }

      else
      {
        [v20 removeFromSuperview];
      }
    }
  }
}

- (SFServiceViewControllerProtocol)serviceProxy
{
  [(SFSafariViewController *)self _initializeViewService];
  serviceProxy = self->_serviceProxy;

  return serviceProxy;
}

- (void)_removeLaunchPlaceholderView
{
  if (a1)
  {
    [*(a1 + 1016) removeFromSuperview];
    v2 = *(a1 + 1016);
    *(a1 + 1016) = 0;
  }
}

void __51__SFSafariViewController__addLaunchPlaceholderView__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(SFSafariViewController *)WeakRetained _dismiss];
}

- (void)_handleURLExternallyIfApplicableBypassingVisibilityCheck:(uint64_t)a1
{
  if (a1 && (*(a1 + 1008) & 1) == 0 && [*(a1 + 992) BOOLValue])
  {
    v4 = [a1 view];
    v5 = [v4 window];
    v6 = [v5 windowScene];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v9 = [a1 presentingViewController];
      v10 = [v9 view];
      v11 = [v10 window];
      v8 = [v11 windowScene];
    }

    if (v8)
    {
      if ((a2 & 1) != 0 || (performViewWillAppearInLoadView() & 1) != 0 || (eligibleForSlideInPresentation() & 1) != 0 || SFViewControllerViewIsVisible(a1, 0))
      {
        *(a1 + 1008) = 1;
        OUTLINED_FUNCTION_0_2();
        OUTLINED_FUNCTION_45();
        [v8 openURL:? options:? completionHandler:?];
LABEL_14:

        return;
      }

      v12 = WBS_LOG_CHANNEL_PREFIXViewService();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }

      *buf = 0;
      v13 = "Ignoring call to handle URL externally because SFSafariViewController is not visible.";
    }

    else
    {
      v12 = WBS_LOG_CHANNEL_PREFIXViewService();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }

      *buf = 0;
      v13 = "Ignoring call to handle URL externally because there was no window to present from.";
    }

    _os_log_error_impl(&dword_1D4644000, v12, OS_LOG_TYPE_ERROR, v13, buf, 2u);
    goto LABEL_14;
  }
}

- (void)_updateLinkPreviewHitTestView
{
  if (a1)
  {
    v3 = [a1 _showingLinkPreview];
    v4 = a1[150];
    if (v3)
    {
      if (v4)
      {
        return;
      }

      v5 = objc_alloc(MEMORY[0x1E69DD250]);
      v6 = [OUTLINED_FUNCTION_2() view];
      [v6 bounds];
      UIRectInset();
      OUTLINED_FUNCTION_35([v1 initWithFrame:?], 1200);

      v7 = [a1[150] layer];
      [v7 setHitTestsAsOpaque:1];

      v9 = [a1 view];
      [v9 addSubview:a1[150]];
      v8 = v9;
    }

    else
    {
      if (!v4)
      {
        return;
      }

      [v4 removeFromSuperview];
      v8 = a1[150];
      a1[150] = 0;
    }
  }
}

- (id)_defaultPreviewActionItems
{
  v27[3] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = MEMORY[0x1E69DCE00];
    v3 = _WBSLocalizedString();
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __52__SFSafariViewController__defaultPreviewActionItems__block_invoke;
    v26[3] = &unk_1E8494460;
    v26[4] = a1;
    v4 = [v2 actionWithTitle:v3 style:0 handler:v26];

    if (objc_opt_respondsToSelector())
    {
      v5 = [MEMORY[0x1E69853E0] imageForElementActionType:4];
      [v4 setImage:v5];
    }

    v6 = MEMORY[0x1E69DCE00];
    v7 = _WBSLocalizedString();
    OUTLINED_FUNCTION_1_5();
    v22 = 3221225472;
    v23 = __52__SFSafariViewController__defaultPreviewActionItems__block_invoke_2;
    v24 = &unk_1E8494460;
    v25 = a1;
    v8 = [v6 actionWithTitle:v7 style:0 handler:v21];

    if (objc_opt_respondsToSelector())
    {
      v9 = [MEMORY[0x1E69853E0] imageForElementActionType:2];
      [v8 setImage:v9];
    }

    v10 = MEMORY[0x1E69DCE00];
    v11 = _WBSLocalizedString();
    OUTLINED_FUNCTION_0_2();
    v17 = 3221225472;
    v18 = __52__SFSafariViewController__defaultPreviewActionItems__block_invoke_3;
    v19 = &unk_1E8494460;
    v20 = a1;
    v12 = [v10 actionWithTitle:v11 style:0 handler:v16];

    if (objc_opt_respondsToSelector())
    {
      v13 = [MEMORY[0x1E69853E0] imageForElementActionType:5];
      [v12 setImage:v13];
    }

    v27[0] = v4;
    v27[1] = v8;
    v27[2] = v12;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:3];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)_fetchCustomActivitiesForURL:(void *)a3 title:
{
  v28[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = *(a1 + 1072);
    *(a1 + 1072) = 0;

    v8 = *(a1 + 1080);
    *(a1 + 1080) = 0;

    WeakRetained = objc_loadWeakRetained((a1 + 1232));
    v10 = 0;
    if (objc_opt_respondsToSelector())
    {
      v11 = [WeakRetained safariViewController:a1 activityItemsForURL:v5 title:v6];
      v28[0] = v5;
      v28[1] = v6;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
      OUTLINED_FUNCTION_1_5();
      v24 = 3221225472;
      v25 = __61__SFSafariViewController__fetchCustomActivitiesForURL_title___block_invoke;
      v26 = &unk_1E8494488;
      v13 = v12;
      v27 = v13;
      v14 = [v11 indexesOfObjectsPassingTest:v23];
      v15 = [v11 objectsAtIndexes:v14];

      objc_storeStrong((a1 + 1080), v12);
      if ([v15 count])
      {
        v16 = [MEMORY[0x1E695DF90] dictionary];
        v17 = *(a1 + 1072);
        *(a1 + 1072) = v16;

        v18 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v15, "count")}];
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __61__SFSafariViewController__fetchCustomActivitiesForURL_title___block_invoke_2;
        v20[3] = &unk_1E84944B0;
        v10 = v18;
        v21 = v10;
        v22 = a1;
        [v15 enumerateObjectsUsingBlock:v20];
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (uint64_t)_addLaunchPlaceholderView
{
  v2 = +[SFSafariLaunchPlaceholderView blankPlaceholder];
  OUTLINED_FUNCTION_35(v2, 1016);
  if ([a1 _showingLinkPreview] & 1) != 0 || (objc_msgSend(a1, "_showingLinkPreviewWithMinimalUI") & 1) != 0 || (result = objc_msgSend(*(a1 + 992), "BOOLValue"), (result) && (*(a1 + 1025) & 1) == 0)
  {
    v3 = *(a1 + 1016);

    return [v3 setHidden:1];
  }

  return result;
}

void __43__SFSafariViewController__connectToService__block_invoke_cold_1(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_2() safari_privacyPreservingDescription];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&dword_1D4644000, v1, OS_LOG_TYPE_ERROR, "Failed to get remote view controller with error: %{public}@", &v4, 0xCu);
}

- (uint64_t)_addRemoteViewControllerIfNeeded
{
  [a2 addChildViewController:*a1];
  [(SFSafariViewController *)a2 _addRemoteView];
  [(SFSafariViewController *)a2 _removeLaunchPlaceholderView];
  v4 = *a1;

  return [v4 didMoveToParentViewController:a2];
}

@end