@interface ServiceReviewRemoteAlertViewController
+ (int64_t)convertInterfaceOrientation:(unint64_t)orientation;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)prepareForActivationWithContext:(id)context completion:(id)completion;
@end

@implementation ServiceReviewRemoteAlertViewController

+ (int64_t)convertInterfaceOrientation:(unint64_t)orientation
{
  if (orientation - 1 >= 4)
  {
    return 0;
  }

  else
  {
    return orientation;
  }
}

- (void)configureWithContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  contextCopy = context;
  _remoteViewControllerProxy = [(ServiceReviewRemoteAlertViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy setAllowsMenuButtonDismissal:1];
  [_remoteViewControllerProxy setAllowsAlertStacking:1];
  userInfo = [contextCopy userInfo];
  v10 = [userInfo objectForKeyedSubscript:@"orientation"];

  [_remoteViewControllerProxy setLaunchingInterfaceOrientation:{+[ServiceReviewRemoteAlertViewController convertInterfaceOrientation:](ServiceReviewRemoteAlertViewController, "convertInterfaceOrientation:", v10)}];
  v11 = objc_alloc_init(ServiceReviewViewController);
  v26[0] = SKUIServiceReviewSandboxMode;
  userInfo2 = [contextCopy userInfo];
  v13 = [userInfo2 objectForKeyedSubscript:@"sandboxed"];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = &__kCFBooleanTrue;
  }

  v26[1] = @"bundleID";
  v27[0] = v15;
  userInfo3 = [contextCopy userInfo];

  v17 = [userInfo3 objectForKeyedSubscript:@"bundleIdentifier"];
  v18 = v17;
  if (!v17)
  {
    v18 = +[NSNull null];
  }

  v27[1] = v18;
  v19 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:2];
  [(ServiceReviewViewController *)v11 setupWithParameters:v19];

  if (!v17)
  {
  }

  [(ServiceReviewRemoteAlertViewController *)self setChildViewController:v11];
  childViewController = [(ServiceReviewRemoteAlertViewController *)self childViewController];
  [(ServiceReviewRemoteAlertViewController *)self addChildViewController:childViewController];

  childViewController2 = [(ServiceReviewRemoteAlertViewController *)self childViewController];
  view = [childViewController2 view];

  view2 = [(ServiceReviewRemoteAlertViewController *)self view];
  [view2 bounds];
  [view setFrame:?];

  view3 = [(ServiceReviewRemoteAlertViewController *)self view];
  [view3 addSubview:view];

  childViewController3 = [(ServiceReviewRemoteAlertViewController *)self childViewController];
  [childViewController3 didMoveToParentViewController:self];

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)prepareForActivationWithContext:(id)context completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion);
  }
}

@end