@interface FRApplication
- (FRApplication)init;
- (void)registerPlatformSpecificLaunchOptions:(id)options transitionContext:(id)context;
- (void)sendEvent:(id)event;
- (void)workspace:(id)workspace didCreateScene:(id)scene withTransitionContext:(id)context completion:(id)completion;
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

- (void)sendEvent:(id)event
{
  eventCopy = event;
  v8.receiver = self;
  v8.super_class = FRApplication;
  [(FRApplication *)&v8 sendEvent:eventCopy];
  delegate = [(FRApplication *)self delegate];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    delegate2 = [(FRApplication *)self delegate];
    [delegate2 application:self didSendEvent:eventCopy];
  }
}

- (void)workspace:(id)workspace didCreateScene:(id)scene withTransitionContext:(id)context completion:(id)completion
{
  workspaceCopy = workspace;
  sceneCopy = scene;
  contextCopy = context;
  completionCopy = completion;
  launchURLAction = [(FRApplication *)self launchURLAction];

  if (launchURLAction)
  {
    launchURLAction2 = [(FRApplication *)self launchURLAction];
    v16 = [NSSet setWithObject:launchURLAction2];
    [contextCopy setActions:v16];
  }

  if ([UIApplication instancesRespondToSelector:"workspace:didCreateScene:withTransitionContext:completion:"])
  {
    v17.receiver = self;
    v17.super_class = FRApplication;
    [(FRApplication *)&v17 workspace:workspaceCopy didCreateScene:sceneCopy withTransitionContext:contextCopy completion:completionCopy];
  }
}

- (void)registerPlatformSpecificLaunchOptions:(id)options transitionContext:(id)context
{
  optionsCopy = options;
  contextCopy = context;
  launchURLAction = [(FRApplication *)self launchURLAction];

  if (launchURLAction)
  {
    launchURLAction2 = [(FRApplication *)self launchURLAction];
    v9 = [launchURLAction2 url];
    optionsCopy[2](optionsCopy, v9, UIApplicationLaunchOptionsURLKey);

    launchURLAction3 = [(FRApplication *)self launchURLAction];
    v11 = [NSSet setWithObject:launchURLAction3];
    [contextCopy setActions:v11];
  }
}

@end