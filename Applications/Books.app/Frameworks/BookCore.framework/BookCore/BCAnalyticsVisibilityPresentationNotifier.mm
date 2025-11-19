@interface BCAnalyticsVisibilityPresentationNotifier
+ (BCAnalyticsVisibilityPresentationNotifier)sharedInstance;
- (BCAnalyticsVisibilityPresentationNotifier)init;
- (id)_viewControllerClassesToIgnore;
- (void)_dismissalTransitionDidEnd:(id)a3;
- (void)_presentationTransitionDidEnd:(id)a3;
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
  block[4] = a1;
  if (qword_3420C8 != -1)
  {
    dispatch_once(&qword_3420C8, block);
  }

  v2 = qword_3420C0;

  return v2;
}

- (void)_presentationTransitionDidEnd:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 object];
  v6 = BUDynamicCast();

  v7 = [(BCAnalyticsVisibilityPresentationNotifier *)self _viewControllerClassesToIgnore];
  LOBYTE(v5) = [v7 containsObject:objc_opt_class()];

  if ((v5 & 1) == 0)
  {
    v8 = [v4 userInfo];
    v9 = [v8 objectForKeyedSubscript:UIPresentationControllerPresentationTransitionDidEndCompletedKey];
    v10 = [v9 BOOLValue];

    if (v10)
    {
      if ([v6 bc_analyticsVisibilityIsObscuredWhenSubtreePresented])
      {
        v11 = [v6 presentingViewController];
        [v11 bc_analyticsVisibilitySubtreeWillDisappear];
        [v11 bc_analyticsVisibilitySubtreeDidDisappear];
      }

      v12 = [v6 transitionCoordinator];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_5AE0;
      v13[3] = &unk_2C7CD0;
      v14 = v6;
      [v12 animateAlongsideTransition:0 completion:v13];
    }
  }
}

- (void)_dismissalTransitionDidEnd:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 object];
  v6 = BUDynamicCast();

  v7 = [(BCAnalyticsVisibilityPresentationNotifier *)self _viewControllerClassesToIgnore];
  LOBYTE(v5) = [v7 containsObject:objc_opt_class()];

  if ((v5 & 1) == 0)
  {
    v8 = [v6 presentingViewController];
    v9 = [v4 userInfo];
    v10 = [v9 objectForKeyedSubscript:UIPresentationControllerDismissalTransitionDidEndCompletedKey];
    v11 = [v10 BOOLValue];

    if (v11)
    {
      [v6 bc_analyticsVisibilitySubtreeWillDisappear];
      [v6 bc_analyticsVisibilitySubtreeDidDisappear];
      v12 = [v6 transitionCoordinator];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_5C70;
      v13[3] = &unk_2C7CD0;
      v14 = v8;
      [v12 animateAlongsideTransition:0 completion:v13];
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