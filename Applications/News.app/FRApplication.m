@interface FRApplication
- (FRApplication)init;
- (void)registerPlatformSpecificLaunchOptions:(id)a3 transitionContext:(id)a4;
- (void)sendEvent:(id)a3;
- (void)workspace:(id)a3 didCreateScene:(id)a4 withTransitionContext:(id)a5 completion:(id)a6;
@end

@implementation FRApplication

- (FRApplication)init
{
  v10.receiver = self;
  v10.super_class = FRApplication;
  v2 = [(FRApplication *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v2->shouldChangeWindowFrameSize = 0;
    v4 = NewsCoreUserDefaults();
    v5 = [v4 objectForKey:@"news.ppt.extendedLaunchURL"];

    if (v5)
    {
      v6 = [NSURL URLWithString:v5];
      v7 = [[UIOpenURLAction alloc] initWithURL:v6];
      launchURLAction = v3->_launchURLAction;
      v3->_launchURLAction = v7;
    }
  }

  return v3;
}

- (void)sendEvent:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = FRApplication;
  [(FRApplication *)&v8 sendEvent:v4];
  v5 = [(FRApplication *)self delegate];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [(FRApplication *)self delegate];
    [v7 application:self didSendEvent:v4];
  }
}

- (void)workspace:(id)a3 didCreateScene:(id)a4 withTransitionContext:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(FRApplication *)self launchURLAction];

  if (v14)
  {
    v15 = [(FRApplication *)self launchURLAction];
    v16 = [NSSet setWithObject:v15];
    [v12 setActions:v16];
  }

  if ([UIApplication instancesRespondToSelector:"workspace:didCreateScene:withTransitionContext:completion:"])
  {
    v17.receiver = self;
    v17.super_class = FRApplication;
    [(FRApplication *)&v17 workspace:v10 didCreateScene:v11 withTransitionContext:v12 completion:v13];
  }
}

- (void)registerPlatformSpecificLaunchOptions:(id)a3 transitionContext:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [(FRApplication *)self launchURLAction];

  if (v7)
  {
    v8 = [(FRApplication *)self launchURLAction];
    v9 = [v8 url];
    v12[2](v12, v9, UIApplicationLaunchOptionsURLKey);

    v10 = [(FRApplication *)self launchURLAction];
    v11 = [NSSet setWithObject:v10];
    [v6 setActions:v11];
  }
}

@end