@interface SFBrowserRemoteViewController
+ (id)requestViewControllerWithConnectionHandler:(id)handler;
+ (id)serviceViewControllerInterface;
- (BOOL)isOnScreenForVolumeDisplay;
- (SFBrowserRemoteViewController)initWithNibName:(id)name bundle:(id)bundle;
- (SFBrowserRemoteViewControllerDelegate)delegate;
- (UIWindowScene)windowSceneForVolumeDisplay;
- (void)_determineVisibilityIfNeeded;
- (void)_sf_sceneDidEnterBackground:(id)background;
- (void)_sf_sceneWillEnterForeground:(id)foreground;
- (void)destroyScene;
- (void)didChangeFullScreen:(BOOL)screen;
- (void)didDecideCookieSharingForURL:(id)l shouldCancel:(BOOL)cancel withError:(id)error;
- (void)didDecideShouldShowLinkPreviews:(BOOL)previews;
- (void)didFinishInitialLoad:(BOOL)load;
- (void)didMoveToParentViewController:(id)controller;
- (void)didResolveRedirectionWithURL:(id)l appLink:(id)link;
- (void)executeCustomActivityProxyID:(id)d;
- (void)fetchActivityViewControllerInfoForURL:(id)l title:(id)title;
- (void)initialLoadDidRedirectToURL:(id)l;
- (void)setRemoteSwipeGestureEnabled:(BOOL)enabled;
- (void)suspendApplication;
- (void)viewDidLayoutSubviews;
- (void)viewServiceDidTerminateWithError:(id)error;
- (void)viewWillAppear:(BOOL)appear;
- (void)willDismissServiceViewController;
- (void)willMoveToParentViewController:(id)controller;
- (void)willOpenCurrentPageInBrowser;
- (void)willOpenURLInHostApplication:(id)application;
@end

@implementation SFBrowserRemoteViewController

+ (id)requestViewControllerWithConnectionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = [objc_opt_class() requestViewController:@"SFBrowserServiceViewController" fromServiceWithBundleIdentifier:@"com.apple.SafariViewService" connectionHandler:handlerCopy];

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

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = SFBrowserRemoteViewController;
  [(_UIRemoteViewController *)&v4 viewWillAppear:appear];
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

- (void)willMoveToParentViewController:(id)controller
{
  v6.receiver = self;
  v6.super_class = SFBrowserRemoteViewController;
  [(SFBrowserRemoteViewController *)&v6 willMoveToParentViewController:?];
  if (controller)
  {
    mEMORY[0x1E6970A38] = [MEMORY[0x1E6970A38] sharedInstance];
    [mEMORY[0x1E6970A38] addVolumeDisplay:self];
  }
}

- (void)didMoveToParentViewController:(id)controller
{
  controllerCopy = controller;
  if (!controllerCopy)
  {
    mEMORY[0x1E6970A38] = [MEMORY[0x1E6970A38] sharedInstance];
    [mEMORY[0x1E6970A38] removeVolumeDisplay:self];
  }

  v6.receiver = self;
  v6.super_class = SFBrowserRemoteViewController;
  [(_UIRemoteViewController *)&v6 didMoveToParentViewController:controllerCopy];
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

        serviceViewControllerProxy = [(_UIRemoteViewController *)self serviceViewControllerProxy];
        [serviceViewControllerProxy didDetectUserInteractionFromHostApp];
      }

      else
      {
        serviceViewControllerProxy = [(_UIRemoteViewController *)self serviceViewControllerProxy];
        [serviceViewControllerProxy didDetectRemoteViewControllerViewIsHidden];
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

- (void)viewServiceDidTerminateWithError:(id)error
{
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained remoteViewController:self viewServiceDidTerminateWithError:errorCopy];
}

- (void)setRemoteSwipeGestureEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained remoteViewController:self setSwipeGestureEnabled:enabledCopy];
}

- (void)didFinishInitialLoad:(BOOL)load
{
  loadCopy = load;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained remoteViewController:self didFinishInitialLoad:loadCopy];
}

- (void)fetchActivityViewControllerInfoForURL:(id)l title:(id)title
{
  titleCopy = title;
  lCopy = l;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained remoteViewController:self fetchActivityViewControllerInfoForURL:lCopy title:titleCopy];
}

- (void)executeCustomActivityProxyID:(id)d
{
  dCopy = d;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained remoteViewController:self executeCustomActivityProxyID:dCopy];
}

- (void)willOpenURLInHostApplication:(id)application
{
  applicationCopy = application;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained remoteViewController:self hostApplicationOpenURL:applicationCopy];
}

- (void)didDecideCookieSharingForURL:(id)l shouldCancel:(BOOL)cancel withError:(id)error
{
  cancelCopy = cancel;
  lCopy = l;
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained remoteViewController:self didDecideCookieSharingForURL:lCopy shouldCancel:cancelCopy withError:errorCopy];
  }
}

- (void)initialLoadDidRedirectToURL:(id)l
{
  lCopy = l;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained remoteViewController:self initialLoadDidRedirectToURL:lCopy];
}

- (void)didChangeFullScreen:(BOOL)screen
{
  self->_isInFullScreen = screen;
  mEMORY[0x1E6970A38] = [MEMORY[0x1E6970A38] sharedInstance];
  [mEMORY[0x1E6970A38] setNeedsUpdate];
}

- (void)didResolveRedirectionWithURL:(id)l appLink:(id)link
{
  lCopy = l;
  linkCopy = link;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained remoteViewController:self didResolveRedirectionWithURL:lCopy appLink:linkCopy];
  }
}

- (void)didDecideShouldShowLinkPreviews:(BOOL)previews
{
  previewsCopy = previews;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained remoteViewController:self didDecideShouldShowLinkPreviews:previewsCopy];
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

- (void)_sf_sceneWillEnterForeground:(id)foreground
{
  foregroundCopy = foreground;
  viewIfLoaded = [(SFBrowserRemoteViewController *)self viewIfLoaded];
  window = [viewIfLoaded window];
  windowScene = [window windowScene];
  object = [foregroundCopy object];

  if (windowScene == object)
  {
    serviceViewControllerProxy = [(_UIRemoteViewController *)self serviceViewControllerProxy];
    [serviceViewControllerProxy beginDigitalHealthTracking];
  }
}

- (void)_sf_sceneDidEnterBackground:(id)background
{
  backgroundCopy = background;
  viewIfLoaded = [(SFBrowserRemoteViewController *)self viewIfLoaded];
  window = [viewIfLoaded window];
  windowScene = [window windowScene];
  object = [backgroundCopy object];

  if (windowScene == object)
  {
    serviceViewControllerProxy = [(_UIRemoteViewController *)self serviceViewControllerProxy];
    [serviceViewControllerProxy stopDigitalHealthTrackingWithCompletionHandler:&__block_literal_global_37];
  }
}

- (void)suspendApplication
{
  v8 = [objc_alloc(MEMORY[0x1E69DC958]) initWithInfo:0 responder:0];
  viewIfLoaded = [(SFBrowserRemoteViewController *)self viewIfLoaded];
  window = [viewIfLoaded window];
  windowScene = [window windowScene];
  _FBSScene = [windowScene _FBSScene];
  v7 = [MEMORY[0x1E695DFD8] setWithObject:v8];
  [_FBSScene sendActions:v7];
}

- (void)destroyScene
{
  viewIfLoaded = [(SFBrowserRemoteViewController *)self viewIfLoaded];
  window = [viewIfLoaded window];
  windowScene = [window windowScene];
  [windowScene _sf_destroyScene];
}

- (BOOL)isOnScreenForVolumeDisplay
{
  if (!self->_isInFullScreen)
  {
    return 0;
  }

  viewIfLoaded = [(SFBrowserRemoteViewController *)self viewIfLoaded];
  window = [viewIfLoaded window];
  v4 = window != 0;

  return v4;
}

- (UIWindowScene)windowSceneForVolumeDisplay
{
  viewIfLoaded = [(SFBrowserRemoteViewController *)self viewIfLoaded];
  window = [viewIfLoaded window];
  windowScene = [window windowScene];

  return windowScene;
}

- (SFBrowserRemoteViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v8.receiver = self;
  v8.super_class = SFBrowserRemoteViewController;
  v4 = [(SFBrowserRemoteViewController *)&v8 initWithNibName:name bundle:bundle];
  if (v4)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel__sf_sceneWillEnterForeground_ name:*MEMORY[0x1E69DE360] object:0];
    [defaultCenter addObserver:v4 selector:sel__sf_sceneDidEnterBackground_ name:*MEMORY[0x1E69DE348] object:0];
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