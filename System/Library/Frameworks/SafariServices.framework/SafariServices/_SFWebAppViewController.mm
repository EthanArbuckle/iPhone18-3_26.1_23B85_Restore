@interface _SFWebAppViewController
+ (id)requestViewControllerWithConnectionHandler:(id)handler;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (_SFWebAppViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_SFWebAppViewControllerDelegate)delegate;
- (void)_sf_sceneDidBecomeActive:(id)active;
- (void)_sf_sceneDidEnterBackground:(id)background;
- (void)_sf_sceneWillEnterForeground:(id)foreground;
- (void)_sf_sceneWillResignActive:(id)active;
- (void)cancelKeyPressed;
- (void)destroyScene;
- (void)didChangeLoadingState:(BOOL)state;
- (void)didFinishInitialLoad:(BOOL)load;
- (void)fetchActivityViewControllerInfoForURL:(id)l title:(id)title;
- (void)handlePushNotificationActivation:(id)activation;
- (void)loadWebAppWithIdentifier:(id)identifier;
- (void)navigateBackKeyPressed;
- (void)navigateForwardKeyPressed;
- (void)processWebPushForWebAppWithIdentifier:(id)identifier;
- (void)reloadFromOriginKeyPressed;
- (void)reloadKeyPressed;
- (void)setShouldKeepScreenAwake:(BOOL)awake;
- (void)suspendApplication;
- (void)viewServiceDidTerminateWithError:(id)error;
@end

@implementation _SFWebAppViewController

+ (id)requestViewControllerWithConnectionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = [objc_opt_class() requestViewController:@"_SFWebAppServiceViewController" fromServiceWithBundleIdentifier:@"com.apple.SafariViewService" connectionHandler:handlerCopy];

  return v4;
}

- (void)loadWebAppWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  serviceViewControllerProxy = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  [serviceViewControllerProxy loadWebAppWithIdentifier:identifierCopy];
}

- (void)processWebPushForWebAppWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  serviceViewControllerProxy = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  [serviceViewControllerProxy processWebPushForWebAppWithIdentifier:identifierCopy];
}

- (void)handlePushNotificationActivation:(id)activation
{
  activationCopy = activation;
  serviceViewControllerProxy = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  [serviceViewControllerProxy handlePushNotificationActivation:activationCopy];
}

- (_SFWebAppViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v8.receiver = self;
  v8.super_class = _SFWebAppViewController;
  v4 = [(_SFWebAppViewController *)&v8 initWithNibName:name bundle:bundle];
  if (v4)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel__sf_sceneWillEnterForeground_ name:*MEMORY[0x1E69DE360] object:0];
    [defaultCenter addObserver:v4 selector:sel__sf_sceneDidEnterBackground_ name:*MEMORY[0x1E69DE348] object:0];
    [defaultCenter addObserver:v4 selector:sel__sf_sceneDidBecomeActive_ name:*MEMORY[0x1E69DE338] object:0];
    MEMORY[0x1DA6DCDD0]([defaultCenter addObserver:v4 selector:sel__sf_sceneWillResignActive_ name:*MEMORY[0x1E69DE358] object:0]);
    v6 = v4;
  }

  return v4;
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  if (sel_navigateForwardKeyPressed == action)
  {
    v8 = 1017;
LABEL_6:
    v7 = *(&self->super.super.super.super.isa + v8);
    goto LABEL_7;
  }

  if (sel_navigateBackKeyPressed == action)
  {
    v8 = 1016;
    goto LABEL_6;
  }

  v10.receiver = self;
  v10.super_class = _SFWebAppViewController;
  v7 = [(_SFWebAppViewController *)&v10 canPerformAction:action withSender:senderCopy];
LABEL_7:

  return v7 & 1;
}

- (void)didChangeLoadingState:(BOOL)state
{
  stateCopy = state;
  delegate = [(_SFWebAppViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate webAppViewController:self didChangeLoadingState:stateCopy];
  }
}

- (void)setShouldKeepScreenAwake:(BOOL)awake
{
  awakeCopy = awake;
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  [mEMORY[0x1E69DC668] _setIdleTimerDisabled:awakeCopy forReason:@"WebApp SleepDisabler"];
}

- (void)didFinishInitialLoad:(BOOL)load
{
  delegate = [(_SFWebAppViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate webAppViewControllerDidFinishInitialLoad:self];
  }
}

- (void)fetchActivityViewControllerInfoForURL:(id)l title:(id)title
{
  v4 = [(_UIRemoteViewController *)self serviceViewControllerProxy:l];
  [v4 didFetchCustomActivities:0 excludedActivityTypes:0];
}

- (void)suspendApplication
{
  v8 = [objc_alloc(MEMORY[0x1E69DC958]) initWithInfo:0 responder:0];
  viewIfLoaded = [(_SFWebAppViewController *)self viewIfLoaded];
  window = [viewIfLoaded window];
  windowScene = [window windowScene];
  _FBSScene = [windowScene _FBSScene];
  v7 = [MEMORY[0x1E695DFD8] setWithObject:v8];
  [_FBSScene sendActions:v7];
}

- (void)destroyScene
{
  viewIfLoaded = [(_SFWebAppViewController *)self viewIfLoaded];
  window = [viewIfLoaded window];
  windowScene = [window windowScene];
  [windowScene _sf_destroyScene];
}

- (void)viewServiceDidTerminateWithError:(id)error
{
  errorCopy = error;
  delegate = [(_SFWebAppViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate webAppViewController:self viewServiceDidTerminateWithError:errorCopy];
  }
}

- (void)_sf_sceneWillEnterForeground:(id)foreground
{
  foregroundCopy = foreground;
  viewIfLoaded = [(_SFWebAppViewController *)self viewIfLoaded];
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
  viewIfLoaded = [(_SFWebAppViewController *)self viewIfLoaded];
  window = [viewIfLoaded window];
  windowScene = [window windowScene];
  object = [backgroundCopy object];

  if (windowScene == object)
  {
    serviceViewControllerProxy = [(_UIRemoteViewController *)self serviceViewControllerProxy];
    [serviceViewControllerProxy stopDigitalHealthTrackingWithCompletionHandler:&__block_literal_global_34];
  }
}

- (void)_sf_sceneDidBecomeActive:(id)active
{
  activeCopy = active;
  viewIfLoaded = [(_SFWebAppViewController *)self viewIfLoaded];
  window = [viewIfLoaded window];
  windowScene = [window windowScene];
  object = [activeCopy object];

  if (windowScene == object)
  {
    serviceViewControllerProxy = [(_UIRemoteViewController *)self serviceViewControllerProxy];
    [serviceViewControllerProxy webAppDidBecomeActive];
  }
}

- (void)_sf_sceneWillResignActive:(id)active
{
  activeCopy = active;
  viewIfLoaded = [(_SFWebAppViewController *)self viewIfLoaded];
  window = [viewIfLoaded window];
  windowScene = [window windowScene];
  object = [activeCopy object];

  if (windowScene == object)
  {
    serviceViewControllerProxy = [(_UIRemoteViewController *)self serviceViewControllerProxy];
    [serviceViewControllerProxy webAppWillResignActive];
  }
}

- (void)navigateForwardKeyPressed
{
  serviceViewControllerProxy = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  [serviceViewControllerProxy navigateForwardKeyPressed];
}

- (void)navigateBackKeyPressed
{
  serviceViewControllerProxy = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  [serviceViewControllerProxy navigateBackKeyPressed];
}

- (void)cancelKeyPressed
{
  serviceViewControllerProxy = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  [serviceViewControllerProxy cancelKeyPressed];
}

- (void)reloadKeyPressed
{
  serviceViewControllerProxy = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  [serviceViewControllerProxy reloadKeyPressed];
}

- (void)reloadFromOriginKeyPressed
{
  serviceViewControllerProxy = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  [serviceViewControllerProxy reloadFromOriginKeyPressed];
}

- (_SFWebAppViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end