@interface ServiceReviewRemoteAlertViewController
+ (int64_t)convertInterfaceOrientation:(unint64_t)a3;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4;
@end

@implementation ServiceReviewRemoteAlertViewController

+ (int64_t)convertInterfaceOrientation:(unint64_t)a3
{
  if (a3 - 1 >= 4)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ServiceReviewRemoteAlertViewController *)self _remoteViewControllerProxy];
  [v8 setAllowsMenuButtonDismissal:1];
  [v8 setAllowsAlertStacking:1];
  v9 = [v7 userInfo];
  v10 = [v9 objectForKeyedSubscript:@"orientation"];

  [v8 setLaunchingInterfaceOrientation:{+[ServiceReviewRemoteAlertViewController convertInterfaceOrientation:](ServiceReviewRemoteAlertViewController, "convertInterfaceOrientation:", v10)}];
  v11 = objc_alloc_init(ServiceReviewViewController);
  v26[0] = SKUIServiceReviewSandboxMode;
  v12 = [v7 userInfo];
  v13 = [v12 objectForKeyedSubscript:@"sandboxed"];
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
  v16 = [v7 userInfo];

  v17 = [v16 objectForKeyedSubscript:@"bundleIdentifier"];
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
  v20 = [(ServiceReviewRemoteAlertViewController *)self childViewController];
  [(ServiceReviewRemoteAlertViewController *)self addChildViewController:v20];

  v21 = [(ServiceReviewRemoteAlertViewController *)self childViewController];
  v22 = [v21 view];

  v23 = [(ServiceReviewRemoteAlertViewController *)self view];
  [v23 bounds];
  [v22 setFrame:?];

  v24 = [(ServiceReviewRemoteAlertViewController *)self view];
  [v24 addSubview:v22];

  v25 = [(ServiceReviewRemoteAlertViewController *)self childViewController];
  [v25 didMoveToParentViewController:self];

  if (v6)
  {
    v6[2](v6);
  }
}

- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4);
  }
}

@end