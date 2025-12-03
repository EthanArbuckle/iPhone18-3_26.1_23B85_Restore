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
- (id)_fetchCustomActivitiesForURL:(void *)l title:;
- (id)_fetchExcludedActivityTypesForURL:(id)l title:(id)title;
- (id)delegate;
- (id)previewActionItems;
- (uint64_t)_addLaunchPlaceholderView;
- (uint64_t)_addRemoteViewControllerIfNeeded;
- (uint64_t)_removeRemoteViewController;
- (uint64_t)_updatePreviewViewControllerWithLinkPreviewEnabled:(int)enabled animated:;
- (void)_addLaunchPlaceholderView;
- (void)_addRemoteView;
- (void)_addRemoteViewControllerIfNeeded;
- (void)_boundingPathMayHaveChangedForView:(id)view relativeToBoundsOriginOnly:(BOOL)only;
- (void)_connectToService;
- (void)_determinePlatformConventions;
- (void)_didLoadRemoteViewController:(uint64_t)controller;
- (void)_dismiss;
- (void)_forwardNotificationToViewService:(id)service;
- (void)_handleURLExternallyIfApplicableBypassingVisibilityCheck:(uint64_t)check;
- (void)_initializeViewService;
- (void)_notifyServiceOfUpdatedTintColors;
- (void)_removeLaunchPlaceholderView;
- (void)_restartServiceViewController;
- (void)_setEdgeSwipeDismissalEnabled:(id *)enabled;
- (void)_setShowingLinkPreview:(BOOL)preview;
- (void)_setShowingLinkPreviewWithMinimalUI:(BOOL)i;
- (void)_setUpWithURL:(void *)l configuration:;
- (void)_updateLinkPreviewHitTestView;
- (void)_updateScrollViewIndicatorInsets;
- (void)dealloc;
- (void)interactiveDismissControllerDidEnd:(id)end;
- (void)loadView;
- (void)remoteViewController:(id)controller didFinishInitialLoad:(BOOL)load;
- (void)remoteViewController:(id)controller executeCustomActivityProxyID:(id)d;
- (void)remoteViewController:(id)controller fetchActivityViewControllerInfoForURL:(id)l title:(id)title;
- (void)remoteViewController:(id)controller hostApplicationOpenURL:(id)l;
- (void)remoteViewController:(id)controller initialLoadDidRedirectToURL:(id)l;
- (void)remoteViewController:(id)controller viewServiceDidTerminateWithError:(id)error;
- (void)remoteViewControllerDidLoadWebView:(id)view;
- (void)remoteViewControllerWillDismiss:(id)dismiss;
- (void)remoteViewControllerWillOpenCurrentPageInBrowser:(id)browser;
- (void)serviceProxyWillQueueInvocation:(id)invocation;
- (void)setDismissButtonStyle:(SFSafariViewControllerDismissButtonStyle)dismissButtonStyle;
- (void)setModalPresentationStyle:(int64_t)style;
- (void)setPreferredBarTintColor:(UIColor *)preferredBarTintColor;
- (void)setPreferredControlTintColor:(UIColor *)preferredControlTintColor;
- (void)setTransitioningDelegate:(id)delegate;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillAppearImpl;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
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

- (void)_setUpWithURL:(void *)l configuration:
{
  v26[1] = *MEMORY[0x1E69E9840];
  v6 = a2;
  lCopy = l;
  v8 = lCopy;
  if (self)
  {
    v9 = [lCopy copy];
    v10 = *(self + 1000);
    *(self + 1000) = v9;

    objc_storeStrong((self + 1264), a2);
    absoluteString = [v6 absoluteString];
    *(self + 1024) = [absoluteString safari_looksLikeWillRedirectToURLStringAfterAuthentication:0];

    if ([objc_opt_class() _eligibleForPlatformConventions])
    {
      if (*(self + 1025))
      {
        v12 = 2;
      }

      else
      {
        v12 = 5;
      }

      [self setModalPresentationStyle:v12];
    }

    else if (__UIApplicationLinkedOnOrAfter())
    {
      [self setModalPresentationStyle:0];
      v13 = objc_alloc_init(SFInteractiveDismissController);
      v14 = *(self + 1096);
      *(self + 1096) = v13;

      [*(self + 1096) setViewControllerToBeDismissed:self];
      v15 = *(self + 1096);
      v25.receiver = self;
      v25.super_class = SFSafariViewController;
      objc_msgSendSuper2(&v25, sel_setTransitioningDelegate_, v15);
      [*(self + 1096) setDelegate:self];
    }

    *(self + 1120) = invalidScrollViewInsets;
    *(self + 1136) = unk_1D47DE7C0;
    *(self + 1152) = invalidScrollViewInsets;
    *(self + 1168) = unk_1D47DE7C0;
    v16 = [[SFQueueingServiceViewControllerProxy alloc] initWithProtocol:&unk_1F50801E0];
    v17 = *(self + 1048);
    *(self + 1048) = v16;

    [*(self + 1048) setDelegate:self];
    if ([*(self + 1000) _isPerformingAccountSecurityUpgrade])
    {
      [self setModalInPresentation:1];
    }

    [*(self + 1048) setConfiguration:*(self + 1000)];
    systemTraitsAffectingColorAppearance = [MEMORY[0x1E69DD1B8] systemTraitsAffectingColorAppearance];
    v19 = [self registerForTraitChanges:systemTraitsAffectingColorAppearance withTarget:self action:sel__notifyServiceOfUpdatedTintColors];

    objc_initWeak(&location, self);
    v26[0] = objc_opt_class();
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __54__SFSafariViewController__setUpWithURL_configuration___block_invoke;
    v22[3] = &unk_1E84938C8;
    objc_copyWeak(&v23, &location);
    v21 = [self registerForTraitChanges:v20 withHandler:v22];

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
  view = [(SFSafariViewController *)self view];
  [view _removeBoundingPathChangeObserver:self];

  [(SFSafariViewController *)self removeChildViewController:self->_remoteViewController];
  v4.receiver = self;
  v4.super_class = SFSafariViewController;
  [(SFSafariViewController *)&v4 dealloc];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = SFSafariViewController;
  [(SFSafariViewController *)&v4 viewWillAppear:appear];
  if ((performViewWillAppearInLoadView() & 1) == 0)
  {
    [(SFSafariViewController *)self viewWillAppearImpl];
  }
}

- (void)_addLaunchPlaceholderView
{
  [*(self + 1016) setAutoresizingMask:18];
  [a2 bounds];
  [OUTLINED_FUNCTION_6_0() setFrame:?];
  [OUTLINED_FUNCTION_6_0() updateBarTintColor:*(self + 1240)];
  [OUTLINED_FUNCTION_6_0() updateControlTintColor:*(self + 1248)];
  [OUTLINED_FUNCTION_6_0() updateDismissButtonStyle:*(self + 1256)];
  [a2 addSubview:*(self + 1016)];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = SFSafariViewController;
  [(SFSafariViewController *)&v5 viewWillDisappear:disappear];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  if ((([(SFSafariViewController *)self isBeingDismissed]& 1) != 0 || [(SFSafariViewController *)self isMovingFromParentViewController]) && SFViewControllerViewEmbeddedByPreviewController(self))
  {
    if (self->_textPreviewViewController)
    {
      [(SFSafariViewController *)self _updatePreviewViewControllerWithLinkPreviewEnabled:0 animated:?];
    }

    [(SFSafariViewController *)self _setShowingLinkPreview:0];
  }
}

- (void)setModalPresentationStyle:(int64_t)style
{
  if (style)
  {
    transitioningDelegate = [(SFSafariViewController *)self transitioningDelegate];
    interactiveDismissController = self->_interactiveDismissController;

    if (transitioningDelegate == interactiveDismissController)
    {
      [(SFSafariViewController *)self setTransitioningDelegate:0];
      v7 = self->_interactiveDismissController;
      self->_interactiveDismissController = 0;
    }
  }

  [(SFServiceViewControllerProtocol *)self->_serviceProxy setHostAppModalPresentationStyle:style];
  v8.receiver = self;
  v8.super_class = SFSafariViewController;
  [(SFSafariViewController *)&v8 setModalPresentationStyle:style];
}

- (void)setTransitioningDelegate:(id)delegate
{
  if (delegate)
  {
    v5.receiver = self;
    v5.super_class = SFSafariViewController;
    [(SFSafariViewController *)&v5 setTransitioningDelegate:?];
    interactiveDismissController = self->_interactiveDismissController;
    self->_interactiveDismissController = 0;
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = SFSafariViewController;
  coordinatorCopy = coordinator;
  [(SFSafariViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  self->_viewSizeIsTransitioning = 1;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __77__SFSafariViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v8[3] = &unk_1E848F860;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:&__block_literal_global_44 completion:v8];
}

- (void)_notifyServiceOfUpdatedTintColors
{
  traitCollection = [(SFSafariViewController *)self traitCollection];
  v3 = [(UIColor *)self->_preferredBarTintColor resolvedColorWithTraitCollection:traitCollection];
  v4 = [(UIColor *)self->_preferredControlTintColor resolvedColorWithTraitCollection:traitCollection];
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
    bOOLValue = [(NSNumber *)adoptsPlatformConventions BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  if (self->_remoteViewController && ![(SFSafariViewController *)self defersAddingRemoteViewController]&& !((self->_remoteViewControllerHasBeenAdded | bOOLValue) & 1 | (textPreviewViewController != 0)))
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
  isSolariumEnabled = [MEMORY[0x1E69C8880] isSolariumEnabled];
  v6 = v12;
  if ((isSolariumEnabled & 1) == 0)
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
          traitCollection = [(SFSafariViewController *)self traitCollection];
          serviceProxy = self->_serviceProxy;
          v11 = [(UIColor *)v12 resolvedColorWithTraitCollection:traitCollection];
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
  isSolariumEnabled = [MEMORY[0x1E69C8880] isSolariumEnabled];
  v6 = v12;
  if ((isSolariumEnabled & 1) == 0)
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
          traitCollection = [(SFSafariViewController *)self traitCollection];
          v11 = [(UIColor *)v12 resolvedColorWithTraitCollection:traitCollection];
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

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"DebugSafariViewControllerAdoptsPlatformConventions"];

  if (!v3)
  {
    return 0;
  }

  standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v5 = [standardUserDefaults2 BOOLForKey:@"DebugSafariViewControllerAdoptsPlatformConventions"];

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

- (void)_setShowingLinkPreview:(BOOL)preview
{
  if (self->_displayMode != preview)
  {
    previewCopy = preview;
    self->_displayMode = preview;
    [(SFServiceViewControllerProtocol *)self->_serviceProxy setDisplayMode:?];
    [(SFSafariLaunchPlaceholderView *)self->_launchPlaceholderView setHidden:previewCopy];

    [(SFSafariViewController *)&self->super.super.super.isa _updateLinkPreviewHitTestView];
  }
}

- (void)_setShowingLinkPreviewWithMinimalUI:(BOOL)i
{
  iCopy = i;
  if (i)
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

    [(SFSafariLaunchPlaceholderView *)launchPlaceholderView setHidden:iCopy];
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
    array = [MEMORY[0x1E695DF70] array];
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
          title = [v7 title];
          v15[0] = MEMORY[0x1E69E9820];
          v15[1] = 3221225472;
          v15[2] = __44__SFSafariViewController_previewActionItems__block_invoke;
          v15[3] = &unk_1E8494438;
          v15[4] = v7;
          v15[5] = self;
          v10 = [v8 actionWithTitle:title style:0 handler:v15];

          if (objc_opt_respondsToSelector())
          {
            v11 = [MEMORY[0x1E69853E0] imageForElementActionType:{objc_msgSend(v7, "type")}];
            [v10 setImage:v11];
          }

          [array addObject:v10];
        }

        v4 = [(NSArray *)obj countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v4);
    }
  }

  else
  {
    array = [(SFSafariViewController *)self _defaultPreviewActionItems];
  }

  return array;
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

- (void)_boundingPathMayHaveChangedForView:(id)view relativeToBoundsOriginOnly:(BOOL)only
{
  if (!only)
  {
    self->_verticalScrollIndicatorBaseInsets = *invalidScrollViewInsets;
    self->_horizontalScrollIndicatorBaseInsets = *invalidScrollViewInsets;
    if (!self->_viewSizeIsTransitioning)
    {
      [(SFSafariViewController *)self _updateScrollViewIndicatorInsets];
    }
  }
}

- (void)remoteViewControllerDidLoadWebView:(id)view
{
  [(SFServiceViewControllerProtocol *)self->_serviceProxy loadURL:self->_initialURL];
  eventAttribution = [(SFSafariViewControllerConfiguration *)self->_configuration eventAttribution];
  toUISClickAttribution = [eventAttribution toUISClickAttribution];
  if (toUISClickAttribution && [(NSURL *)self->_initialURL safari_isHTTPSURL])
  {
    [(SFServiceViewControllerProtocol *)self->_serviceProxy addClickAttribution:toUISClickAttribution];
  }
}

- (void)remoteViewControllerWillDismiss:(id)dismiss
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
  topLayoutGuide = [(SFSafariViewController *)self topLayoutGuide];
  [topLayoutGuide length];
  [(SFSafariLaunchPlaceholderView *)self->_launchPlaceholderView setTopLayoutGuideInset:?];
}

- (void)_restartServiceViewController
{
  self->_hasRestartedViewService = 1;
  serviceProxy = [(SFSafariViewController *)self serviceProxy];
  initialURL = [(SFSafariViewController *)self initialURL];
  [serviceProxy loadURL:initialURL];

  [serviceProxy setConfiguration:self->_configuration];
  [serviceProxy setHostAppModalPresentationStyle:{-[SFSafariViewController modalPresentationStyle](self, "modalPresentationStyle")}];
  preferredBarTintColor = self->_preferredBarTintColor;
  if (preferredBarTintColor)
  {
    traitCollection = [(SFSafariViewController *)self traitCollection];
    v6 = [(UIColor *)preferredBarTintColor resolvedColorWithTraitCollection:traitCollection];
    [serviceProxy setPreferredBarTintColor:v6];
  }

  preferredControlTintColor = self->_preferredControlTintColor;
  if (preferredControlTintColor)
  {
    traitCollection2 = [(SFSafariViewController *)self traitCollection];
    v9 = [(UIColor *)preferredControlTintColor resolvedColorWithTraitCollection:traitCollection2];
    [serviceProxy setPreferredControlTintColor:v9];
  }

  v10 = serviceProxy;
  if (self->_dismissButtonStyle)
  {
    [serviceProxy setDismissButtonStyle:?];
    v10 = serviceProxy;
  }
}

- (void)remoteViewController:(id)controller viewServiceDidTerminateWithError:(id)error
{
  controllerCopy = controller;
  errorCopy = error;
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

- (void)remoteViewController:(id)controller fetchActivityViewControllerInfoForURL:(id)l title:(id)title
{
  titleCopy = title;
  lCopy = l;
  v10 = [(SFSafariViewController *)self _fetchCustomActivitiesForURL:lCopy title:titleCopy];
  v9 = [(SFSafariViewController *)self _fetchExcludedActivityTypesForURL:lCopy title:titleCopy];

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

- (id)_fetchExcludedActivityTypesForURL:(id)l title:(id)title
{
  lCopy = l;
  titleCopy = title;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v9 = [WeakRetained safariViewController:self excludedActivityTypesForURL:lCopy title:titleCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)remoteViewController:(id)controller didFinishInitialLoad:(BOOL)load
{
  if (!self->_hasNotifiedDelegateAboutInitialLoadCompleted)
  {
    loadCopy = load;
    self->_hasNotifiedDelegateAboutInitialLoadCompleted = 1;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained safariViewController:self didCompleteInitialLoad:loadCopy];
    }
  }
}

- (void)remoteViewController:(id)controller executeCustomActivityProxyID:(id)d
{
  v6 = [(NSMutableDictionary *)self->_activitiesMap objectForKey:d];
  [v6 prepareWithActivityItems:self->_activityItemsForCustomActivities];
  activityViewController = [v6 activityViewController];
  if (activityViewController)
  {
    [(SFSafariViewController *)self presentViewController:activityViewController animated:1 completion:0];
  }

  else
  {
    [v6 performActivity];
  }
}

- (void)remoteViewController:(id)controller hostApplicationOpenURL:(id)l
{
  v19[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  _appAdoptsUISceneLifecycle = [mEMORY[0x1E69DC668] _appAdoptsUISceneLifecycle];

  if (_appAdoptsUISceneLifecycle)
  {
    view = [(SFSafariViewController *)self view];
    window = [view window];
    windowScene = [window windowScene];

    delegate = [windowScene delegate];
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
      v14 = [objc_alloc(MEMORY[0x1E69DCD08]) initWithURL:lCopy options:v13];
      v15 = [MEMORY[0x1E695DFD8] setWithObject:v14];
      [delegate scene:windowScene openURLContexts:v15];
    }
  }

  else
  {
    v16 = *MEMORY[0x1E69DDB20];
    v17 = @"com.apple.SafariViewService";
    windowScene = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    delegate = [objc_alloc(MEMORY[0x1E69DCD00]) initWithURL:lCopy];
    [*MEMORY[0x1E69DDA98] _applicationOpenURLAction:delegate payload:windowScene origin:0];
  }
}

- (void)remoteViewController:(id)controller initialLoadDidRedirectToURL:(id)l
{
  lCopy = l;
  if (!self->_hasRestartedViewService)
  {
    v7 = lCopy;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained safariViewController:self initialLoadDidRedirectToURL:v7];
    }

    lCopy = v7;
  }
}

- (void)remoteViewControllerWillOpenCurrentPageInBrowser:(id)browser
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained safariViewControllerWillOpenInBrowser:self];
  }
}

- (void)_forwardNotificationToViewService:(id)service
{
  serviceProxy = self->_serviceProxy;
  name = [service name];
  [(SFServiceViewControllerProtocol *)serviceProxy repostNotificationInViewService:name];
}

- (void)interactiveDismissControllerDidEnd:(id)end
{
  [(SFServiceViewControllerProtocol *)self->_serviceProxy setIsRunningTransitionAnimation:0];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained safariViewControllerDidFinish:self];
  }
}

- (void)serviceProxyWillQueueInvocation:(id)invocation
{
  invocationCopy = invocation;
  if (!self->_cancelViewServiceRequest && self->_adoptsPlatformConventions)
  {
    v5 = invocationCopy;
    [(SFSafariViewController *)self _connectToService];
    invocationCopy = v5;
  }
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_initializeViewService
{
  if (self && (*(self + 1184) & 1) == 0)
  {
    *(self + 1184) = 1;
    v4 = +[_SFSafariViewControllerPrewarmingSession sharedSessionIfExists];
    if ([objc_opt_class() _supportsPrewarming] && (objc_msgSend(*(self + 1000), "_isEphemeral") & 1) == 0 && (objc_msgSend(v4, "remoteViewController"), v2 = objc_claimAutoreleasedReturnValue(), v2, v2))
    {
      [v4 remoteViewController];
      objc_claimAutoreleasedReturnValue();
      v3 = OUTLINED_FUNCTION_2();
      [(SFSafariViewController *)v3 _didLoadRemoteViewController:v2];

      [v4 restart];
    }

    else
    {
      [(SFSafariViewController *)self _connectToService];
    }

    MEMORY[0x1DA6DCDD0]();
  }
}

- (void)_didLoadRemoteViewController:(uint64_t)controller
{
  v4 = a2;
  if (controller)
  {
    objc_storeStrong((controller + 1032), a2);
    serviceViewControllerProxy = [v4 serviceViewControllerProxy];
    [*(controller + 1048) setTarget:serviceViewControllerProxy];

    [v4 setDelegate:controller];
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_45();
    v8 = __55__SFSafariViewController__didLoadRemoteViewController___block_invoke;
    v9 = &unk_1E848F810;
    controllerCopy = controller;
    [v6 prepareForDisplayWithCompletionHandler:v7];
  }
}

- (void)_connectToService
{
  if (self)
  {
    invoke = [*(self + 1040) invoke];
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_45();
    v6 = __43__SFSafariViewController__connectToService__block_invoke;
    v7 = &unk_1E8492C38;
    selfCopy = self;
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
  if (!self)
  {
    return;
  }

  [(SFSafariViewController *)self _determinePlatformConventions];
  if ([*(self + 992) BOOLValue])
  {
    if (*(self + 1025) != 1)
    {
      goto LABEL_8;
    }

    [(SFSafariViewController *)self _removeRemoteViewController];
  }

  else if (*(self + 1032))
  {
    [self _addRemoteViewControllerIfNeeded];
    goto LABEL_8;
  }

  [(SFSafariViewController *)self _addLaunchPlaceholderView];
LABEL_8:
  if ([*(self + 992) BOOLValue])
  {
    goto LABEL_9;
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__forwardNotificationToViewService_ name:*MEMORY[0x1E69DDBC8] object:0];
  [defaultCenter addObserver:self selector:sel__forwardNotificationToViewService_ name:*MEMORY[0x1E69DDAB0] object:0];
  if ((([self isBeingPresented] & 1) != 0 || objc_msgSend(self, "isMovingToParentViewController")) && SFViewControllerViewEmbeddedByPreviewController(self))
  {
    [self _setShowingLinkPreview:1];
    v5 = _SFShouldShowLinkPreviews();
LABEL_20:
    [(SFSafariViewController *)self _updatePreviewViewControllerWithLinkPreviewEnabled:v5 animated:0];
    goto LABEL_21;
  }

  if (*(self + 1192))
  {
    v5 = 0;
    goto LABEL_20;
  }

LABEL_21:
  [(SFSafariViewController *)self _updateScrollViewIndicatorInsets];

LABEL_9:
  *(self + 1009) = 1;
  activePresentationController = [self activePresentationController];
  presentationStyle = [activePresentationController presentationStyle];

  if ((presentationStyle + 2) <= 0xA)
  {

    [self setModalPresentationStyle:presentationStyle];
  }
}

- (void)_determinePlatformConventions
{
  if (self)
  {
    if (([self _showingLinkPreview] & 1) != 0 || (objc_msgSend(self, "_showingLinkPreviewWithMinimalUI") & 1) != 0 || SFViewControllerViewEmbeddedByPreviewController(self))
    {
      v2 = 0;
      *(self + 1025) = 0;
    }

    else
    {
      v2 = 1;
    }

    v3 = v2 & [objc_opt_class() _eligibleForPlatformConventions];
    v4 = *(self + 992);
    if (!v4 || ([v4 BOOLValue] & 1) == 0 && ((v3 ^ 1) & 1) == 0)
    {
      v5 = [MEMORY[0x1E696AD98] numberWithBool:v3];
      OUTLINED_FUNCTION_35(v5, 992);
    }

    if (([*(self + 992) BOOLValue] & 1) == 0)
    {

      [(SFSafariViewController *)self _initializeViewService];
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
      view = [*(v1 + 1032) view];
      [view removeFromSuperview];

      result = [*(v1 + 1032) didMoveToParentViewController:0];
      *(v1 + 1056) = 0;
    }
  }

  return result;
}

- (uint64_t)_updatePreviewViewControllerWithLinkPreviewEnabled:(int)enabled animated:
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
        view = [OUTLINED_FUNCTION_2_3() view];
        [view removeFromSuperview];

        [OUTLINED_FUNCTION_2_3() didMoveToParentViewController:0];
        v7 = *(v5 + 1192);
        *(v5 + 1192) = 0;

        if (*(v5 + 1032))
        {
          [v5 _addRemoteViewControllerIfNeeded];
          [*(v5 + 1048) loadURL:*(v5 + 1264)];
        }

        if (enabled)
        {
          goto LABEL_9;
        }
      }

      else
      {
        [(SFSafariViewController *)v5 _removeRemoteViewController];
        OUTLINED_FUNCTION_35([[_SFURLTextPreviewViewController alloc] initWithURL:*(v5 + 1264)], 1192);
        view2 = [v5 view];
        view3 = [OUTLINED_FUNCTION_2_3() view];
        [view2 addSubview:view3];

        view4 = [v5 view];
        [view4 bounds];
        v13 = v12;
        v15 = v14;
        v17 = v16;
        v19 = v18;
        view5 = [OUTLINED_FUNCTION_2_3() view];
        [view5 setFrame:{v13, v15, v17, v19}];

        [v5 addChildViewController:*(v5 + 1192)];
        [OUTLINED_FUNCTION_2_3() didMoveToParentViewController:v5];
        view6 = [OUTLINED_FUNCTION_2_3() view];
        [view6 layoutIfNeeded];

        _previewHeader = [OUTLINED_FUNCTION_2_3() _previewHeader];
        [_previewHeader setDelegate:v5];

        if (enabled)
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
  if (self)
  {
    view = [self view];
    [MEMORY[0x1E69DCEF8] _sf_baseInsetsForVerticalScrollIndicatorInScrollViewContainerView:view];
    v20 = v3;
    v21 = v2;
    v18 = v5;
    v19 = v4;
    [MEMORY[0x1E69DCEF8] _sf_baseInsetsForHorizontalScrollIndicatorInScrollViewContainerView:view];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = (self + 1120);
    v14.f64[0] = v21;
    v14.f64[1] = v20;
    v15.f64[0] = v19;
    v15.f64[1] = v18;
    if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v14, *(self + 1120)), vceqq_f64(v15, *(self + 1136))))) & 1) == 0 || (v16.f64[0] = v8, v16.f64[1] = v6, v17.f64[0] = v10, v17.f64[1] = v12, (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v16, *(self + 1152)), vceqq_f64(v17, *(self + 1168))))) & 1) == 0))
    {
      *v13 = v21;
      *(self + 1128) = v20;
      *(self + 1136) = v19;
      *(self + 1144) = v18;
      *(self + 1152) = v8;
      *(self + 1160) = v6;
      *(self + 1168) = v10;
      *(self + 1176) = v12;
      [*(self + 1048) updateScrollViewIndicatorVerticalInsets:*v13 horizontalInsets:{*(self + 1128), *(self + 1136), *(self + 1144)}];
    }
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = SFSafariViewController;
  [(SFSafariViewController *)&v5 viewDidAppear:appear];
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
  if (self)
  {
    [self dismissViewControllerAnimated:1 completion:0];
    WeakRetained = objc_loadWeakRetained(self + 154);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained safariViewControllerDidFinish:self];
    }
  }
}

- (void)_addRemoteView
{
  if (self && *(self + 1032) && (*(self + 1056) & 1) == 0)
  {
    if ((__UIApplicationLinkedOnOrAfter() & 1) == 0)
    {
      v2 = *(self + 1048);
      view = [self view];
      tintColor = [view tintColor];
      [v2 setPreferredControlTintColor:tintColor];
    }

    view2 = [*(self + 1032) view];
    v5 = *(self + 1200);
    view3 = [self view];
    v7 = view3;
    if (v5)
    {
      [view3 insertSubview:view2 belowSubview:*(self + 1200)];
    }

    else
    {
      [view3 addSubview:view2];
    }

    view4 = [self view];
    [view4 bounds];
    [view2 setFrame:?];

    [view2 setAutoresizingMask:18];
    *(self + 1056) = 1;
  }
}

- (void)_setEdgeSwipeDismissalEnabled:(id *)enabled
{
  v21[4] = *MEMORY[0x1E69E9840];
  if (enabled)
  {
    v3 = enabled[137];
    if (v3)
    {
      edgeSwipeView = [v3 edgeSwipeView];
      if (a2)
      {
        if (!edgeSwipeView)
        {
          edgeSwipeView = objc_alloc_init(MEMORY[0x1E69DD250]);
          layer = [edgeSwipeView layer];
          [layer setHitTestsAsOpaque:1];

          [enabled[137] setEdgeSwipeView:edgeSwipeView];
        }

        view = [enabled view];
        [enabled[129] view];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_2() insertSubview:edgeSwipeView aboveSubview:enabled];

        [edgeSwipeView setTranslatesAutoresizingMaskIntoConstraints:0];
        v17 = MEMORY[0x1E696ACD8];
        if ([view _sf_usesLeftToRightLayout])
        {
          [edgeSwipeView leftAnchor];
          objc_claimAutoreleasedReturnValue();
          [OUTLINED_FUNCTION_2() leftAnchor];
        }

        else
        {
          [edgeSwipeView rightAnchor];
          objc_claimAutoreleasedReturnValue();
          [OUTLINED_FUNCTION_2() rightAnchor];
        }
        v18 = ;
        enabledCopy = enabled;
        v16 = [enabled constraintEqualToAnchor:?];
        v21[0] = v16;
        topAnchor = [edgeSwipeView topAnchor];
        topAnchor2 = [view topAnchor];
        v9 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:64.0];
        v21[1] = v9;
        bottomAnchor = [edgeSwipeView bottomAnchor];
        bottomAnchor2 = [view bottomAnchor];
        v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
        v21[2] = v12;
        widthAnchor = [edgeSwipeView widthAnchor];
        v14 = [widthAnchor constraintEqualToConstant:24.0];
        v21[3] = v14;
        v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:4];
        [v17 activateConstraints:v15];
      }

      else
      {
        [edgeSwipeView removeFromSuperview];
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
  if (self)
  {
    [*(self + 1016) removeFromSuperview];
    v2 = *(self + 1016);
    *(self + 1016) = 0;
  }
}

void __51__SFSafariViewController__addLaunchPlaceholderView__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(SFSafariViewController *)WeakRetained _dismiss];
}

- (void)_handleURLExternallyIfApplicableBypassingVisibilityCheck:(uint64_t)check
{
  if (check && (*(check + 1008) & 1) == 0 && [*(check + 992) BOOLValue])
  {
    view = [check view];
    window = [view window];
    windowScene = [window windowScene];
    v7 = windowScene;
    if (windowScene)
    {
      windowScene2 = windowScene;
    }

    else
    {
      presentingViewController = [check presentingViewController];
      view2 = [presentingViewController view];
      window2 = [view2 window];
      windowScene2 = [window2 windowScene];
    }

    if (windowScene2)
    {
      if ((a2 & 1) != 0 || (performViewWillAppearInLoadView() & 1) != 0 || (eligibleForSlideInPresentation() & 1) != 0 || SFViewControllerViewIsVisible(check, 0))
      {
        *(check + 1008) = 1;
        OUTLINED_FUNCTION_0_2();
        OUTLINED_FUNCTION_45();
        [windowScene2 openURL:? options:? completionHandler:?];
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
  if (self)
  {
    _showingLinkPreview = [self _showingLinkPreview];
    v4 = self[150];
    if (_showingLinkPreview)
    {
      if (v4)
      {
        return;
      }

      v5 = objc_alloc(MEMORY[0x1E69DD250]);
      view = [OUTLINED_FUNCTION_2() view];
      [view bounds];
      UIRectInset();
      OUTLINED_FUNCTION_35([v1 initWithFrame:?], 1200);

      layer = [self[150] layer];
      [layer setHitTestsAsOpaque:1];

      view2 = [self view];
      [view2 addSubview:self[150]];
      v8 = view2;
    }

    else
    {
      if (!v4)
      {
        return;
      }

      [v4 removeFromSuperview];
      v8 = self[150];
      self[150] = 0;
    }
  }
}

- (id)_defaultPreviewActionItems
{
  v27[3] = *MEMORY[0x1E69E9840];
  if (self)
  {
    v2 = MEMORY[0x1E69DCE00];
    v3 = _WBSLocalizedString();
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __52__SFSafariViewController__defaultPreviewActionItems__block_invoke;
    v26[3] = &unk_1E8494460;
    v26[4] = self;
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
    selfCopy = self;
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
    selfCopy2 = self;
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

- (id)_fetchCustomActivitiesForURL:(void *)l title:
{
  v28[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  lCopy = l;
  if (self)
  {
    v7 = *(self + 1072);
    *(self + 1072) = 0;

    v8 = *(self + 1080);
    *(self + 1080) = 0;

    WeakRetained = objc_loadWeakRetained((self + 1232));
    v10 = 0;
    if (objc_opt_respondsToSelector())
    {
      v11 = [WeakRetained safariViewController:self activityItemsForURL:v5 title:lCopy];
      v28[0] = v5;
      v28[1] = lCopy;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
      OUTLINED_FUNCTION_1_5();
      v24 = 3221225472;
      v25 = __61__SFSafariViewController__fetchCustomActivitiesForURL_title___block_invoke;
      v26 = &unk_1E8494488;
      v13 = v12;
      v27 = v13;
      v14 = [v11 indexesOfObjectsPassingTest:v23];
      v15 = [v11 objectsAtIndexes:v14];

      objc_storeStrong((self + 1080), v12);
      if ([v15 count])
      {
        dictionary = [MEMORY[0x1E695DF90] dictionary];
        v17 = *(self + 1072);
        *(self + 1072) = dictionary;

        v18 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v15, "count")}];
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __61__SFSafariViewController__fetchCustomActivitiesForURL_title___block_invoke_2;
        v20[3] = &unk_1E84944B0;
        v10 = v18;
        v21 = v10;
        selfCopy = self;
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
  if ([self _showingLinkPreview] & 1) != 0 || (objc_msgSend(self, "_showingLinkPreviewWithMinimalUI") & 1) != 0 || (result = objc_msgSend(*(self + 992), "BOOLValue"), (result) && (*(self + 1025) & 1) == 0)
  {
    v3 = *(self + 1016);

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
  [a2 addChildViewController:*self];
  [(SFSafariViewController *)a2 _addRemoteView];
  [(SFSafariViewController *)a2 _removeLaunchPlaceholderView];
  v4 = *self;

  return [v4 didMoveToParentViewController:a2];
}

@end