@interface UIViewController
+ (void)as_activatePresentationHack;
- (CGSize)pageContainerSize;
- (_TtP8AppStore20PageTraitEnvironment_)snapshotPageTraitEnvironment;
- (double)pageMarginInsets;
- (id)as_viewControllersForVisibilityCallbackForwarding;
- (void)as_dismissalTransitionDidEnd:(id)a3;
- (void)as_presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)as_viewDidBecomeFullyVisible;
- (void)as_viewDidBecomePartiallyVisible;
- (void)as_viewWillBecomeFullyVisible;
- (void)as_viewWillBecomePartiallyVisible;
- (void)ppt_pageRenderMetricsPresenterPageLoaded:(id)a3;
@end

@implementation UIViewController

+ (void)as_activatePresentationHack
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004A28;
  block[3] = &unk_1008AE540;
  block[4] = a1;
  if (qword_100996A80[0] != -1)
  {
    dispatch_once(qword_100996A80, block);
  }
}

- (double)pageMarginInsets
{
  v1 = a1;
  sub_100041888();

  return 0.0;
}

- (void)as_presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    [(UIViewController *)self as_viewWillBecomePartiallyVisible];
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100023300;
  v14[3] = &unk_1008AE568;
  v16 = (isKindOfClass & 1) == 0;
  v14[4] = self;
  v15 = v9;
  v11 = v9;
  [(UIViewController *)self as_presentViewController:v8 animated:v6 completion:v14];
  v12 = +[NSNotificationCenter defaultCenter];
  [v12 addObserver:self selector:"as_dismissalTransitionWillBegin:" name:UIPresentationControllerDismissalTransitionWillBeginNotification object:v8];

  v13 = +[NSNotificationCenter defaultCenter];
  [v13 addObserver:self selector:"as_dismissalTransitionDidEnd:" name:UIPresentationControllerDismissalTransitionDidEndNotification object:v8];
}

- (void)as_dismissalTransitionDidEnd:(id)a3
{
  v13 = a3;
  v4 = [v13 userInfo];
  v5 = [v4 objectForKeyedSubscript:UIPresentationControllerDismissalTransitionDidEndCompletedKey];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    [(UIViewController *)self as_viewDidBecomeFullyVisible];
    v7 = +[NSNotificationCenter defaultCenter];
    v8 = UIPresentationControllerDismissalTransitionWillBeginNotification;
    v9 = [v13 object];
    [v7 removeObserver:self name:v8 object:v9];

    v10 = +[NSNotificationCenter defaultCenter];
    v11 = UIPresentationControllerDismissalTransitionDidEndNotification;
    v12 = [v13 object];
    [v10 removeObserver:self name:v11 object:v12];
  }

  else
  {
    [(UIViewController *)self as_viewDidBecomePartiallyVisible];
  }
}

- (id)as_viewControllersForVisibilityCallbackForwarding
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [(UIViewController *)self selectedViewController];
    if (v3)
    {
      v4 = [(UIViewController *)self selectedViewController];
      v9 = v4;
      v5 = &v9;
LABEL_7:
      v6 = [NSArray arrayWithObjects:v5 count:1];

LABEL_9:
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [(UIViewController *)self topViewController];
    if (v3)
    {
      v4 = [(UIViewController *)self topViewController];
      v8 = v4;
      v5 = &v8;
      goto LABEL_7;
    }

LABEL_8:
    v6 = &__NSArray0__struct;
    goto LABEL_9;
  }

  v6 = [(UIViewController *)self childViewControllers];
LABEL_11:

  return v6;
}

- (void)as_viewWillBecomeFullyVisible
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(UIViewController *)self as_viewControllersForVisibilityCallbackForwarding];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) as_viewWillBecomeFullyVisible];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)as_viewDidBecomeFullyVisible
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(UIViewController *)self as_viewControllersForVisibilityCallbackForwarding];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) as_viewDidBecomeFullyVisible];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)as_viewWillBecomePartiallyVisible
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(UIViewController *)self as_viewControllersForVisibilityCallbackForwarding];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) as_viewWillBecomePartiallyVisible];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)as_viewDidBecomePartiallyVisible
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(UIViewController *)self as_viewControllersForVisibilityCallbackForwarding];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) as_viewDidBecomePartiallyVisible];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (CGSize)pageContainerSize
{
  v2 = self;
  v3 = [(UIViewController *)v2 view];
  if (v3)
  {
    v6 = v3;
    [(UIView *)v3 bounds];
    v8 = v7;
    v10 = v9;

    v4 = v8;
    v5 = v10;
  }

  else
  {
    __break(1u);
  }

  result.height = v5;
  result.width = v4;
  return result;
}

- (_TtP8AppStore20PageTraitEnvironment_)snapshotPageTraitEnvironment
{
  v2 = self;
  [(UIViewController *)v2 pageContainerSize];
  v4 = v3;
  v6 = v5;
  v7 = [(UIViewController *)v2 traitCollection];
  v8 = type metadata accessor for SnapshotPageTraitEnvironment();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_pageContainerSize];
  *v10 = v4;
  *(v10 + 1) = v6;
  *&v9[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_traitCollection] = v7;
  v14.receiver = v9;
  v14.super_class = v8;
  v11 = v7;
  v12 = [(UIViewController *)&v14 init];

  return v12;
}

- (void)ppt_pageRenderMetricsPresenterPageLoaded:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  sub_10021D938();

  (*(v5 + 8))(v7, v4);
}

@end