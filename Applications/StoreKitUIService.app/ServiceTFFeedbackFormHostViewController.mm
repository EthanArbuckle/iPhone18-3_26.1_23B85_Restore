@interface ServiceTFFeedbackFormHostViewController
- (unint64_t)supportedInterfaceOrientations;
- (void)_dismissViewService;
- (void)_presentFormViewControllerForSession:(id)session;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)handleButtonActions:(id)actions;
- (void)prepareForActivationWithContext:(id)context completion:(id)completion;
@end

@implementation ServiceTFFeedbackFormHostViewController

- (unint64_t)supportedInterfaceOrientations
{
  v2 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v2 userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)configureWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  _remoteViewControllerProxy = [(ServiceTFFeedbackFormHostViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy setDesiredHardwareButtonEvents:16];
  [_remoteViewControllerProxy setAllowsMenuButtonDismissal:1];
  [_remoteViewControllerProxy setWallpaperTunnelActive:0];
  [_remoteViewControllerProxy setAllowsAlertStacking:1];
  [_remoteViewControllerProxy setDismissalAnimationStyle:2];
  [_remoteViewControllerProxy setReachabilityDisabled:1];
  [_remoteViewControllerProxy setSwipeDismissalStyle:1];
  v8 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v8 userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v10 = +[UIApplication sharedApplication];
    statusBarOrientation = [v10 statusBarOrientation];

    [_remoteViewControllerProxy setLaunchingInterfaceOrientation:statusBarOrientation];
  }

  userInfo = [contextCopy userInfo];
  v13 = [TFFeedbackHandleConfiguration configurationFromUserInfo:userInfo];

  incidentId = [v13 incidentId];
  LODWORD(userInfo) = incidentId != 0;

  v15 = [TFFeedbackSession alloc];
  bundleIdentifier = [v13 bundleIdentifier];
  v17 = [v15 initForContext:2 * userInfo betaApplicationIdentifier:bundleIdentifier];
  [(ServiceTFFeedbackFormHostViewController *)self setHostedFeedbackSession:v17];

  hostedFeedbackSession = [(ServiceTFFeedbackFormHostViewController *)self hostedFeedbackSession];
  [hostedFeedbackSession setDelegate:self];

  hostedFeedbackSession2 = [(ServiceTFFeedbackFormHostViewController *)self hostedFeedbackSession];
  [hostedFeedbackSession2 initiateFeedbackSnapshot];

  hostedFeedbackSession3 = [(ServiceTFFeedbackFormHostViewController *)self hostedFeedbackSession];
  incidentId2 = [v13 incidentId];
  [hostedFeedbackSession3 associateIncidentId:incidentId2];

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

- (void)handleButtonActions:(id)actions
{
  actionsCopy = actions;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [actionsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(actionsCopy);
        }

        if (([*(*(&v9 + 1) + 8 * v8) events] & 0x10) != 0)
        {
          [(ServiceTFFeedbackFormHostViewController *)self _dismissViewService];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [actionsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_presentFormViewControllerForSession:(id)session
{
  sessionCopy = session;
  view = [(ServiceTFFeedbackFormHostViewController *)self view];
  window = [view window];
  _rootSheetPresentationController = [window _rootSheetPresentationController];
  [_rootSheetPresentationController _setShouldScaleDownBehindDescendantSheets:0];

  createFeedbackViewControllerForCurrentState = [sessionCopy createFeedbackViewControllerForCurrentState];

  v8 = [UIBarButtonItem alloc];
  v9 = [SKUIClientContext localizedStringForKey:@"CANCEL" inBundles:0];
  v10 = [v8 initWithTitle:v9 style:0 target:self action:"cancelButtonPressed:"];

  navigationItem = [createFeedbackViewControllerForCurrentState navigationItem];
  [navigationItem setLeftBarButtonItem:v10];

  v12 = [[UINavigationController alloc] initWithRootViewController:createFeedbackViewControllerForCurrentState];
  [v12 setModalPresentationStyle:1];
  presentationController = [v12 presentationController];
  [presentationController setDelegate:self];

  [(ServiceTFFeedbackFormHostViewController *)self presentViewController:v12 animated:1 completion:0];
}

- (void)_dismissViewService
{
  _remoteViewControllerProxy = [(ServiceTFFeedbackFormHostViewController *)self _remoteViewControllerProxy];
  presentedViewController = [(ServiceTFFeedbackFormHostViewController *)self presentedViewController];

  if (presentedViewController)
  {
    presentedViewController2 = [(ServiceTFFeedbackFormHostViewController *)self presentedViewController];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10000DADC;
    v6[3] = &unk_100051148;
    v7 = _remoteViewControllerProxy;
    [presentedViewController2 dismissViewControllerAnimated:1 completion:v6];
  }

  else
  {
    [_remoteViewControllerProxy dismiss];
  }
}

@end