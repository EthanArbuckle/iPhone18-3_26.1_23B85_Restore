@interface AXSBUIAudiographRootViewController
- (void)_setupRemoteProxy;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)dismiss;
- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4;
- (void)selectedSeriesChanged:(id)a3;
- (void)toggleAudiographPlaybackState:(id)a3;
- (void)viewDidLoad;
@end

@implementation AXSBUIAudiographRootViewController

- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4);
  }
}

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v10 = a4;
  v6 = [a3 userInfo];
  if (v6)
  {
    v7 = [[AXMChartDescriptor alloc] initWithDictionary:v6];
    [(AXSBUIAudiographRootViewController *)self setChartDescriptor:v7];
  }

  else
  {
    [(AXSBUIAudiographRootViewController *)self setChartDescriptor:0];
  }

  v8 = [(AXSBUIAudiographRootViewController *)self chartDescriptor];
  v9 = [AXAudiographExplorerProvider makeAudiographExplorerView:v8];
  [(AXSBUIAudiographRootViewController *)self setHostingController:v9];

  if (v10)
  {
    v10[2]();
  }
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = AXSBUIAudiographRootViewController;
  [(AXSBUIAudiographRootViewController *)&v5 viewDidLoad];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"selectedSeriesChanged:" name:@"AudiographExplorerSelectedSeriesChanged" object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"toggleAudiographPlaybackState:" name:@"ToggleAudiographPlaybackState" object:0];
}

- (void)selectedSeriesChanged:(id)a3
{
  v3 = [a3 userInfo];
  argument = [v3 objectForKeyedSubscript:@"seriesIndex"];

  v4 = argument;
  if (argument)
  {
    UIAccessibilityPostNotification(0x432u, argument);
    v4 = argument;
  }
}

- (void)toggleAudiographPlaybackState:(id)a3
{
  v3 = [a3 userInfo];
  argument = [v3 objectForKeyedSubscript:@"shouldPlay"];

  v4 = argument;
  if (argument)
  {
    UIAccessibilityPostNotification(0x433u, argument);
    v4 = argument;
  }
}

- (void)dismiss
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100011B8C;
  v2[3] = &unk_100028758;
  v2[4] = self;
  [(AXSBUIAudiographRootViewController *)self dismissViewControllerAnimated:0 completion:v2];
}

- (void)_setupRemoteProxy
{
  v2 = [(AXSBUIAudiographRootViewController *)self _remoteViewControllerProxy];
  [v2 setOrientationChangedEventsEnabled:0];
  [v2 setAllowsMenuButtonDismissal:1];
  [v2 setWallpaperTunnelActive:1];
  [v2 setWallpaperStyle:4 withDuration:0.3];
  [v2 setStatusBarHidden:1 withDuration:0.3];
}

@end