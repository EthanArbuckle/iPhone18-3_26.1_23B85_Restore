@interface AXSBUIOnboardingRootViewController
- (void)_setupRemoteProxy;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)dismiss;
- (void)prepareForActivationWithContext:(id)context completion:(id)completion;
- (void)viewDidLoad;
@end

@implementation AXSBUIOnboardingRootViewController

- (void)prepareForActivationWithContext:(id)context completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion);
  }
}

- (void)configureWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v8 = NSClassFromString(@"AXOnboardingObjC");
  if (v8)
  {
    v9 = v8;
    if (objc_opt_respondsToSelector())
    {
      objc_initWeak(&location, self);
      userInfo = [contextCopy userInfo];
      v11 = [userInfo objectForKeyedSubscript:@"type"];
      v12 = [v11 isEqualToString:@"voicecontrol"];

      if (v12)
      {
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_100011F70;
        v20[3] = &unk_100028870;
        v13 = &v21;
        objc_copyWeak(&v21, &location);
        v14 = [(objc_class *)v9 viewControllerForType:0 onDismiss:v20];
        [(AXSBUIOnboardingRootViewController *)self setHostingController:v14];
      }

      else
      {
        userInfo2 = [contextCopy userInfo];
        v16 = [userInfo2 objectForKeyedSubscript:@"type"];
        v17 = [v16 isEqualToString:@"voiceover"];

        if (!v17)
        {
LABEL_8:
          objc_destroyWeak(&location);
          goto LABEL_9;
        }

        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_100011FB0;
        v18[3] = &unk_100028870;
        v13 = &v19;
        objc_copyWeak(&v19, &location);
        v14 = [(objc_class *)v9 viewControllerForType:1 onDismiss:v18];
        [(AXSBUIOnboardingRootViewController *)self setHostingController:v14];
      }

      objc_destroyWeak(v13);
      goto LABEL_8;
    }
  }

LABEL_9:
  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = AXSBUIOnboardingRootViewController;
  [(AXSBUIOnboardingRootViewController *)&v2 viewDidLoad];
}

- (void)dismiss
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000121A0;
  v2[3] = &unk_100028758;
  v2[4] = self;
  [(AXSBUIOnboardingRootViewController *)self dismissViewControllerAnimated:1 completion:v2];
}

- (void)_setupRemoteProxy
{
  _remoteViewControllerProxy = [(AXSBUIOnboardingRootViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy setDismissalAnimationStyle:2];
  [_remoteViewControllerProxy setOrientationChangedEventsEnabled:0];
  [_remoteViewControllerProxy setAllowsMenuButtonDismissal:1];
  [_remoteViewControllerProxy setWallpaperTunnelActive:0];
}

@end