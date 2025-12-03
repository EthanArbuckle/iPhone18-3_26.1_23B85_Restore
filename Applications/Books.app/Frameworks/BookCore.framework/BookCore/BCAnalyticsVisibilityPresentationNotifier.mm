@interface BCAnalyticsVisibilityPresentationNotifier
+ (BCAnalyticsVisibilityPresentationNotifier)sharedInstance;
- (BCAnalyticsVisibilityPresentationNotifier)init;
- (id)_viewControllerClassesToIgnore;
- (void)_dismissalTransitionDidEnd:(id)end;
- (void)_presentationTransitionDidEnd:(id)end;
@end

@implementation BCAnalyticsVisibilityPresentationNotifier

- (BCAnalyticsVisibilityPresentationNotifier)init
{
  v6.receiver = self;
  v6.super_class = BCAnalyticsVisibilityPresentationNotifier;
  v2 = [(BCAnalyticsVisibilityPresentationNotifier *)&v6 init];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"_presentationTransitionDidEnd:" name:UIPresentationControllerPresentationTransitionDidEndNotification object:0];

    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v2 selector:"_dismissalTransitionDidEnd:" name:UIPresentationControllerDismissalTransitionDidEndNotification object:0];
  }

  return v2;
}

+ (BCAnalyticsVisibilityPresentationNotifier)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_5918;
  block[3] = &unk_2C7CA8;
  block[4] = self;
  if (qword_3420C8 != -1)
  {
    dispatch_once(&qword_3420C8, block);
  }

  v2 = qword_3420C0;

  return v2;
}

- (void)_presentationTransitionDidEnd:(id)end
{
  endCopy = end;
  objc_opt_class();
  object = [endCopy object];
  v6 = BUDynamicCast();

  _viewControllerClassesToIgnore = [(BCAnalyticsVisibilityPresentationNotifier *)self _viewControllerClassesToIgnore];
  LOBYTE(object) = [_viewControllerClassesToIgnore containsObject:objc_opt_class()];

  if ((object & 1) == 0)
  {
    userInfo = [endCopy userInfo];
    v9 = [userInfo objectForKeyedSubscript:UIPresentationControllerPresentationTransitionDidEndCompletedKey];
    bOOLValue = [v9 BOOLValue];

    if (bOOLValue)
    {
      if ([v6 bc_analyticsVisibilityIsObscuredWhenSubtreePresented])
      {
        presentingViewController = [v6 presentingViewController];
        [presentingViewController bc_analyticsVisibilitySubtreeWillDisappear];
        [presentingViewController bc_analyticsVisibilitySubtreeDidDisappear];
      }

      transitionCoordinator = [v6 transitionCoordinator];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_5AE0;
      v13[3] = &unk_2C7CD0;
      v14 = v6;
      [transitionCoordinator animateAlongsideTransition:0 completion:v13];
    }
  }
}

- (void)_dismissalTransitionDidEnd:(id)end
{
  endCopy = end;
  objc_opt_class();
  object = [endCopy object];
  v6 = BUDynamicCast();

  _viewControllerClassesToIgnore = [(BCAnalyticsVisibilityPresentationNotifier *)self _viewControllerClassesToIgnore];
  LOBYTE(object) = [_viewControllerClassesToIgnore containsObject:objc_opt_class()];

  if ((object & 1) == 0)
  {
    presentingViewController = [v6 presentingViewController];
    userInfo = [endCopy userInfo];
    v10 = [userInfo objectForKeyedSubscript:UIPresentationControllerDismissalTransitionDidEndCompletedKey];
    bOOLValue = [v10 BOOLValue];

    if (bOOLValue)
    {
      [v6 bc_analyticsVisibilitySubtreeWillDisappear];
      [v6 bc_analyticsVisibilitySubtreeDidDisappear];
      transitionCoordinator = [v6 transitionCoordinator];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_5C70;
      v13[3] = &unk_2C7CD0;
      v14 = presentingViewController;
      [transitionCoordinator animateAlongsideTransition:0 completion:v13];
    }
  }
}

- (id)_viewControllerClassesToIgnore
{
  if (qword_3420D8 != -1)
  {
    sub_1E4308();
  }

  v3 = qword_3420D0;

  return v3;
}

@end