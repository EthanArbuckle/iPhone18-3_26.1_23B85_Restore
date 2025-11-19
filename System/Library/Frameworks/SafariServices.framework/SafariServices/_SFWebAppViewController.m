@interface _SFWebAppViewController
+ (id)requestViewControllerWithConnectionHandler:(id)a3;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (_SFWebAppViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_SFWebAppViewControllerDelegate)delegate;
- (void)_sf_sceneDidBecomeActive:(id)a3;
- (void)_sf_sceneDidEnterBackground:(id)a3;
- (void)_sf_sceneWillEnterForeground:(id)a3;
- (void)_sf_sceneWillResignActive:(id)a3;
- (void)cancelKeyPressed;
- (void)destroyScene;
- (void)didChangeLoadingState:(BOOL)a3;
- (void)didFinishInitialLoad:(BOOL)a3;
- (void)fetchActivityViewControllerInfoForURL:(id)a3 title:(id)a4;
- (void)handlePushNotificationActivation:(id)a3;
- (void)loadWebAppWithIdentifier:(id)a3;
- (void)navigateBackKeyPressed;
- (void)navigateForwardKeyPressed;
- (void)processWebPushForWebAppWithIdentifier:(id)a3;
- (void)reloadFromOriginKeyPressed;
- (void)reloadKeyPressed;
- (void)setShouldKeepScreenAwake:(BOOL)a3;
- (void)suspendApplication;
- (void)viewServiceDidTerminateWithError:(id)a3;
@end

@implementation _SFWebAppViewController

+ (id)requestViewControllerWithConnectionHandler:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() requestViewController:@"_SFWebAppServiceViewController" fromServiceWithBundleIdentifier:@"com.apple.SafariViewService" connectionHandler:v3];

  return v4;
}

- (void)loadWebAppWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  [v5 loadWebAppWithIdentifier:v4];
}

- (void)processWebPushForWebAppWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  [v5 processWebPushForWebAppWithIdentifier:v4];
}

- (void)handlePushNotificationActivation:(id)a3
{
  v4 = a3;
  v5 = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  [v5 handlePushNotificationActivation:v4];
}

- (_SFWebAppViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v8.receiver = self;
  v8.super_class = _SFWebAppViewController;
  v4 = [(_SFWebAppViewController *)&v8 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 addObserver:v4 selector:sel__sf_sceneWillEnterForeground_ name:*MEMORY[0x1E69DE360] object:0];
    [v5 addObserver:v4 selector:sel__sf_sceneDidEnterBackground_ name:*MEMORY[0x1E69DE348] object:0];
    [v5 addObserver:v4 selector:sel__sf_sceneDidBecomeActive_ name:*MEMORY[0x1E69DE338] object:0];
    MEMORY[0x1DA6DCDD0]([v5 addObserver:v4 selector:sel__sf_sceneWillResignActive_ name:*MEMORY[0x1E69DE358] object:0]);
    v6 = v4;
  }

  return v4;
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  if (sel_navigateForwardKeyPressed == a3)
  {
    v8 = 1017;
LABEL_6:
    v7 = *(&self->super.super.super.super.isa + v8);
    goto LABEL_7;
  }

  if (sel_navigateBackKeyPressed == a3)
  {
    v8 = 1016;
    goto LABEL_6;
  }

  v10.receiver = self;
  v10.super_class = _SFWebAppViewController;
  v7 = [(_SFWebAppViewController *)&v10 canPerformAction:a3 withSender:v6];
LABEL_7:

  return v7 & 1;
}

- (void)didChangeLoadingState:(BOOL)a3
{
  v3 = a3;
  v5 = [(_SFWebAppViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 webAppViewController:self didChangeLoadingState:v3];
  }
}

- (void)setShouldKeepScreenAwake:(BOOL)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E69DC668] sharedApplication];
  [v4 _setIdleTimerDisabled:v3 forReason:@"WebApp SleepDisabler"];
}

- (void)didFinishInitialLoad:(BOOL)a3
{
  v4 = [(_SFWebAppViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 webAppViewControllerDidFinishInitialLoad:self];
  }
}

- (void)fetchActivityViewControllerInfoForURL:(id)a3 title:(id)a4
{
  v4 = [(_UIRemoteViewController *)self serviceViewControllerProxy:a3];
  [v4 didFetchCustomActivities:0 excludedActivityTypes:0];
}

- (void)suspendApplication
{
  v8 = [objc_alloc(MEMORY[0x1E69DC958]) initWithInfo:0 responder:0];
  v3 = [(_SFWebAppViewController *)self viewIfLoaded];
  v4 = [v3 window];
  v5 = [v4 windowScene];
  v6 = [v5 _FBSScene];
  v7 = [MEMORY[0x1E695DFD8] setWithObject:v8];
  [v6 sendActions:v7];
}

- (void)destroyScene
{
  v4 = [(_SFWebAppViewController *)self viewIfLoaded];
  v2 = [v4 window];
  v3 = [v2 windowScene];
  [v3 _sf_destroyScene];
}

- (void)viewServiceDidTerminateWithError:(id)a3
{
  v5 = a3;
  v4 = [(_SFWebAppViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 webAppViewController:self viewServiceDidTerminateWithError:v5];
  }
}

- (void)_sf_sceneWillEnterForeground:(id)a3
{
  v4 = a3;
  v5 = [(_SFWebAppViewController *)self viewIfLoaded];
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
  v5 = [(_SFWebAppViewController *)self viewIfLoaded];
  v6 = [v5 window];
  v7 = [v6 windowScene];
  v8 = [v4 object];

  if (v7 == v8)
  {
    v9 = [(_UIRemoteViewController *)self serviceViewControllerProxy];
    [v9 stopDigitalHealthTrackingWithCompletionHandler:&__block_literal_global_34];
  }
}

- (void)_sf_sceneDidBecomeActive:(id)a3
{
  v4 = a3;
  v5 = [(_SFWebAppViewController *)self viewIfLoaded];
  v6 = [v5 window];
  v7 = [v6 windowScene];
  v8 = [v4 object];

  if (v7 == v8)
  {
    v9 = [(_UIRemoteViewController *)self serviceViewControllerProxy];
    [v9 webAppDidBecomeActive];
  }
}

- (void)_sf_sceneWillResignActive:(id)a3
{
  v4 = a3;
  v5 = [(_SFWebAppViewController *)self viewIfLoaded];
  v6 = [v5 window];
  v7 = [v6 windowScene];
  v8 = [v4 object];

  if (v7 == v8)
  {
    v9 = [(_UIRemoteViewController *)self serviceViewControllerProxy];
    [v9 webAppWillResignActive];
  }
}

- (void)navigateForwardKeyPressed
{
  v2 = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  [v2 navigateForwardKeyPressed];
}

- (void)navigateBackKeyPressed
{
  v2 = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  [v2 navigateBackKeyPressed];
}

- (void)cancelKeyPressed
{
  v2 = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  [v2 cancelKeyPressed];
}

- (void)reloadKeyPressed
{
  v2 = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  [v2 reloadKeyPressed];
}

- (void)reloadFromOriginKeyPressed
{
  v2 = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  [v2 reloadFromOriginKeyPressed];
}

- (_SFWebAppViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end