@interface SFBrowserRemoteViewController
+ (id)requestViewControllerWithConnectionHandler:(id)a3;
+ (id)serviceViewControllerInterface;
- (BOOL)isOnScreenForVolumeDisplay;
- (SFBrowserRemoteViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (SFBrowserRemoteViewControllerDelegate)delegate;
- (UIWindowScene)windowSceneForVolumeDisplay;
- (void)_determineVisibilityIfNeeded;
- (void)_sf_sceneDidEnterBackground:(id)a3;
- (void)_sf_sceneWillEnterForeground:(id)a3;
- (void)destroyScene;
- (void)didChangeFullScreen:(BOOL)a3;
- (void)didDecideCookieSharingForURL:(id)a3 shouldCancel:(BOOL)a4 withError:(id)a5;
- (void)didDecideShouldShowLinkPreviews:(BOOL)a3;
- (void)didFinishInitialLoad:(BOOL)a3;
- (void)didMoveToParentViewController:(id)a3;
- (void)didResolveRedirectionWithURL:(id)a3 appLink:(id)a4;
- (void)executeCustomActivityProxyID:(id)a3;
- (void)fetchActivityViewControllerInfoForURL:(id)a3 title:(id)a4;
- (void)initialLoadDidRedirectToURL:(id)a3;
- (void)setRemoteSwipeGestureEnabled:(BOOL)a3;
- (void)suspendApplication;
- (void)viewDidLayoutSubviews;
- (void)viewServiceDidTerminateWithError:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)willDismissServiceViewController;
- (void)willMoveToParentViewController:(id)a3;
- (void)willOpenCurrentPageInBrowser;
- (void)willOpenURLInHostApplication:(id)a3;
@end

@implementation SFBrowserRemoteViewController

+ (id)requestViewControllerWithConnectionHandler:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() requestViewController:@"SFBrowserServiceViewController" fromServiceWithBundleIdentifier:@"com.apple.SafariViewService" connectionHandler:v3];

  return v4;
}

+ (id)serviceViewControllerInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F50801E0];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_requestPrewarmingWithTokens_ argumentIndex:0 ofReply:0];

  return v2;
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SFBrowserRemoteViewController;
  [(_UIRemoteViewController *)&v4 viewWillAppear:a3];
  self->_shouldDetermineVisibilityOnNextLayout = !self->_hasBeenDisplayedAtLeastOnce;
  self->_hasBeenDisplayedAtLeastOnce = 1;
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = SFBrowserRemoteViewController;
  [(SFBrowserRemoteViewController *)&v3 viewDidLayoutSubviews];
  if (self->_shouldDetermineVisibilityOnNextLayout)
  {
    [(SFBrowserRemoteViewController *)self _determineVisibilityIfNeeded];
  }
}

- (void)willMoveToParentViewController:(id)a3
{
  v6.receiver = self;
  v6.super_class = SFBrowserRemoteViewController;
  [(SFBrowserRemoteViewController *)&v6 willMoveToParentViewController:?];
  if (a3)
  {
    v5 = [MEMORY[0x1E6970A38] sharedInstance];
    [v5 addVolumeDisplay:self];
  }
}

- (void)didMoveToParentViewController:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v5 = [MEMORY[0x1E6970A38] sharedInstance];
    [v5 removeVolumeDisplay:self];
  }

  v6.receiver = self;
  v6.super_class = SFBrowserRemoteViewController;
  [(_UIRemoteViewController *)&v6 didMoveToParentViewController:v4];
}

- (void)_determineVisibilityIfNeeded
{
  if (self->_didLoadWebView)
  {
    v8 = v2;
    v9 = v3;
    if (self->_hasBeenDisplayedAtLeastOnce)
    {
      self->_shouldDetermineVisibilityOnNextLayout = 0;
      v7 = 0;
      if (SFViewControllerViewIsVisible(self, &v7))
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained remoteViewControllerDidLoadWebView:self];

        if (v7 != 1)
        {
          return;
        }

        v6 = [(_UIRemoteViewController *)self serviceViewControllerProxy];
        [v6 didDetectUserInteractionFromHostApp];
      }

      else
      {
        v6 = [(_UIRemoteViewController *)self serviceViewControllerProxy];
        [v6 didDetectRemoteViewControllerViewIsHidden];
      }
    }
  }
}

- (void)willDismissServiceViewController
{
  v3 = WBS_LOG_CHANNEL_PREFIXUserInterface();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1D4644000, v3, OS_LOG_TYPE_DEFAULT, "Safari View Controller will be dismissed", v7, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained remoteViewControllerWillDismiss:self];
  }

  else
  {
    v6 = WBS_LOG_CHANNEL_PREFIXUserInterface();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(SFBrowserRemoteViewController *)v6 willDismissServiceViewController];
    }
  }
}

- (void)viewServiceDidTerminateWithError:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained remoteViewController:self viewServiceDidTerminateWithError:v4];
}

- (void)setRemoteSwipeGestureEnabled:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained remoteViewController:self setSwipeGestureEnabled:v3];
}

- (void)didFinishInitialLoad:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained remoteViewController:self didFinishInitialLoad:v3];
}

- (void)fetchActivityViewControllerInfoForURL:(id)a3 title:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained remoteViewController:self fetchActivityViewControllerInfoForURL:v7 title:v6];
}

- (void)executeCustomActivityProxyID:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained remoteViewController:self executeCustomActivityProxyID:v4];
}

- (void)willOpenURLInHostApplication:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained remoteViewController:self hostApplicationOpenURL:v4];
}

- (void)didDecideCookieSharingForURL:(id)a3 shouldCancel:(BOOL)a4 withError:(id)a5
{
  v6 = a4;
  v10 = a3;
  v8 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained remoteViewController:self didDecideCookieSharingForURL:v10 shouldCancel:v6 withError:v8];
  }
}

- (void)initialLoadDidRedirectToURL:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained remoteViewController:self initialLoadDidRedirectToURL:v4];
}

- (void)didChangeFullScreen:(BOOL)a3
{
  self->_isInFullScreen = a3;
  v3 = [MEMORY[0x1E6970A38] sharedInstance];
  [v3 setNeedsUpdate];
}

- (void)didResolveRedirectionWithURL:(id)a3 appLink:(id)a4
{
  v8 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained remoteViewController:self didResolveRedirectionWithURL:v8 appLink:v6];
  }
}

- (void)didDecideShouldShowLinkPreviews:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained remoteViewController:self didDecideShouldShowLinkPreviews:v3];
  }
}

- (void)willOpenCurrentPageInBrowser
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained remoteViewControllerWillOpenCurrentPageInBrowser:self];
  }
}

- (void)_sf_sceneWillEnterForeground:(id)a3
{
  v4 = a3;
  v5 = [(SFBrowserRemoteViewController *)self viewIfLoaded];
  v6 = [v5 window];
  v7 = [v6 windowScene];
  v8 = [v4 object];

  if (v7 == v8)
  {
    v9 = [(_UIRemoteViewController *)self serviceViewControllerProxy];
    [v9 beginDigitalHealthTracking];
  }
}

- (void)_sf_sceneDidEnterBackground:(id)a3
{
  v4 = a3;
  v5 = [(SFBrowserRemoteViewController *)self viewIfLoaded];
  v6 = [v5 window];
  v7 = [v6 windowScene];
  v8 = [v4 object];

  if (v7 == v8)
  {
    v9 = [(_UIRemoteViewController *)self serviceViewControllerProxy];
    [v9 stopDigitalHealthTrackingWithCompletionHandler:&__block_literal_global_37];
  }
}

- (void)suspendApplication
{
  v8 = [objc_alloc(MEMORY[0x1E69DC958]) initWithInfo:0 responder:0];
  v3 = [(SFBrowserRemoteViewController *)self viewIfLoaded];
  v4 = [v3 window];
  v5 = [v4 windowScene];
  v6 = [v5 _FBSScene];
  v7 = [MEMORY[0x1E695DFD8] setWithObject:v8];
  [v6 sendActions:v7];
}

- (void)destroyScene
{
  v4 = [(SFBrowserRemoteViewController *)self viewIfLoaded];
  v2 = [v4 window];
  v3 = [v2 windowScene];
  [v3 _sf_destroyScene];
}

- (BOOL)isOnScreenForVolumeDisplay
{
  if (!self->_isInFullScreen)
  {
    return 0;
  }

  v2 = [(SFBrowserRemoteViewController *)self viewIfLoaded];
  v3 = [v2 window];
  v4 = v3 != 0;

  return v4;
}

- (UIWindowScene)windowSceneForVolumeDisplay
{
  v2 = [(SFBrowserRemoteViewController *)self viewIfLoaded];
  v3 = [v2 window];
  v4 = [v3 windowScene];

  return v4;
}

- (SFBrowserRemoteViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v8.receiver = self;
  v8.super_class = SFBrowserRemoteViewController;
  v4 = [(SFBrowserRemoteViewController *)&v8 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 addObserver:v4 selector:sel__sf_sceneWillEnterForeground_ name:*MEMORY[0x1E69DE360] object:0];
    [v5 addObserver:v4 selector:sel__sf_sceneDidEnterBackground_ name:*MEMORY[0x1E69DE348] object:0];
    v6 = v4;
  }

  return v4;
}

- (SFBrowserRemoteViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end