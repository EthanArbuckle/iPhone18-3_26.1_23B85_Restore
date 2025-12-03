@interface AXSBUIAudiographRootViewController
- (void)_setupRemoteProxy;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)dismiss;
- (void)prepareForActivationWithContext:(id)context completion:(id)completion;
- (void)selectedSeriesChanged:(id)changed;
- (void)toggleAudiographPlaybackState:(id)state;
- (void)viewDidLoad;
@end

@implementation AXSBUIAudiographRootViewController

- (void)prepareForActivationWithContext:(id)context completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion);
  }
}

- (void)configureWithContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  userInfo = [context userInfo];
  if (userInfo)
  {
    v7 = [[AXMChartDescriptor alloc] initWithDictionary:userInfo];
    [(AXSBUIAudiographRootViewController *)self setChartDescriptor:v7];
  }

  else
  {
    [(AXSBUIAudiographRootViewController *)self setChartDescriptor:0];
  }

  chartDescriptor = [(AXSBUIAudiographRootViewController *)self chartDescriptor];
  v9 = [AXAudiographExplorerProvider makeAudiographExplorerView:chartDescriptor];
  [(AXSBUIAudiographRootViewController *)self setHostingController:v9];

  if (completionCopy)
  {
    completionCopy[2]();
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

- (void)selectedSeriesChanged:(id)changed
{
  userInfo = [changed userInfo];
  argument = [userInfo objectForKeyedSubscript:@"seriesIndex"];

  v4 = argument;
  if (argument)
  {
    UIAccessibilityPostNotification(0x432u, argument);
    v4 = argument;
  }
}

- (void)toggleAudiographPlaybackState:(id)state
{
  userInfo = [state userInfo];
  argument = [userInfo objectForKeyedSubscript:@"shouldPlay"];

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
  _remoteViewControllerProxy = [(AXSBUIAudiographRootViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy setOrientationChangedEventsEnabled:0];
  [_remoteViewControllerProxy setAllowsMenuButtonDismissal:1];
  [_remoteViewControllerProxy setWallpaperTunnelActive:1];
  [_remoteViewControllerProxy setWallpaperStyle:4 withDuration:0.3];
  [_remoteViewControllerProxy setStatusBarHidden:1 withDuration:0.3];
}

@end