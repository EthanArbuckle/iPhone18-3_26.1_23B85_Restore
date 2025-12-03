@interface UIViewController
+ (void)as_activatePresentationHack;
- (CGSize)pageContainerSize;
- (_TtP18ASMessagesProvider20PageTraitEnvironment_)snapshotPageTraitEnvironment;
- (double)pageMarginInsets;
- (id)as_viewControllersForVisibilityCallbackForwarding;
- (void)as_dismissalTransitionDidEnd:(id)end;
- (void)as_presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)as_viewDidBecomeFullyVisible;
- (void)as_viewDidBecomePartiallyVisible;
- (void)as_viewWillBecomeFullyVisible;
- (void)as_viewWillBecomePartiallyVisible;
@end

@implementation UIViewController

+ (void)as_activatePresentationHack
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_3BDC;
  block[3] = &unk_87D570;
  block[4] = self;
  if (qword_9652C0 != -1)
  {
    dispatch_once(&qword_9652C0, block);
  }
}

- (void)as_presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  completionCopy = completion;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    [(UIViewController *)self as_viewWillBecomePartiallyVisible];
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_3E3C;
  v14[3] = &unk_87D598;
  v16 = (isKindOfClass & 1) == 0;
  v14[4] = self;
  v15 = completionCopy;
  v11 = completionCopy;
  [(UIViewController *)self as_presentViewController:controllerCopy animated:animatedCopy completion:v14];
  v12 = +[NSNotificationCenter defaultCenter];
  [v12 addObserver:self selector:"as_dismissalTransitionWillBegin:" name:UIPresentationControllerDismissalTransitionWillBeginNotification object:controllerCopy];

  v13 = +[NSNotificationCenter defaultCenter];
  [v13 addObserver:self selector:"as_dismissalTransitionDidEnd:" name:UIPresentationControllerDismissalTransitionDidEndNotification object:controllerCopy];
}

- (void)as_dismissalTransitionDidEnd:(id)end
{
  endCopy = end;
  userInfo = [endCopy userInfo];
  v5 = [userInfo objectForKeyedSubscript:UIPresentationControllerDismissalTransitionDidEndCompletedKey];
  bOOLValue = [v5 BOOLValue];

  if (bOOLValue)
  {
    [(UIViewController *)self as_viewDidBecomeFullyVisible];
    v7 = +[NSNotificationCenter defaultCenter];
    v8 = UIPresentationControllerDismissalTransitionWillBeginNotification;
    object = [endCopy object];
    [v7 removeObserver:self name:v8 object:object];

    v10 = +[NSNotificationCenter defaultCenter];
    v11 = UIPresentationControllerDismissalTransitionDidEndNotification;
    object2 = [endCopy object];
    [v10 removeObserver:self name:v11 object:object2];
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
    selectedViewController = [(UIViewController *)self selectedViewController];
    if (selectedViewController)
    {
      selectedViewController2 = [(UIViewController *)self selectedViewController];
      v9 = selectedViewController2;
      v5 = &v9;
LABEL_7:
      childViewControllers = [NSArray arrayWithObjects:v5 count:1];

LABEL_9:
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selectedViewController = [(UIViewController *)self topViewController];
    if (selectedViewController)
    {
      selectedViewController2 = [(UIViewController *)self topViewController];
      v8 = selectedViewController2;
      v5 = &v8;
      goto LABEL_7;
    }

LABEL_8:
    childViewControllers = &__NSArray0__struct;
    goto LABEL_9;
  }

  childViewControllers = [(UIViewController *)self childViewControllers];
LABEL_11:

  return childViewControllers;
}

- (void)as_viewWillBecomeFullyVisible
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  as_viewControllersForVisibilityCallbackForwarding = [(UIViewController *)self as_viewControllersForVisibilityCallbackForwarding];
  v3 = [as_viewControllersForVisibilityCallbackForwarding countByEnumeratingWithState:&v7 objects:v11 count:16];
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
          objc_enumerationMutation(as_viewControllersForVisibilityCallbackForwarding);
        }

        [*(*(&v7 + 1) + 8 * v6) as_viewWillBecomeFullyVisible];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [as_viewControllersForVisibilityCallbackForwarding countByEnumeratingWithState:&v7 objects:v11 count:16];
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
  as_viewControllersForVisibilityCallbackForwarding = [(UIViewController *)self as_viewControllersForVisibilityCallbackForwarding];
  v3 = [as_viewControllersForVisibilityCallbackForwarding countByEnumeratingWithState:&v7 objects:v11 count:16];
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
          objc_enumerationMutation(as_viewControllersForVisibilityCallbackForwarding);
        }

        [*(*(&v7 + 1) + 8 * v6) as_viewDidBecomeFullyVisible];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [as_viewControllersForVisibilityCallbackForwarding countByEnumeratingWithState:&v7 objects:v11 count:16];
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
  as_viewControllersForVisibilityCallbackForwarding = [(UIViewController *)self as_viewControllersForVisibilityCallbackForwarding];
  v3 = [as_viewControllersForVisibilityCallbackForwarding countByEnumeratingWithState:&v7 objects:v11 count:16];
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
          objc_enumerationMutation(as_viewControllersForVisibilityCallbackForwarding);
        }

        [*(*(&v7 + 1) + 8 * v6) as_viewWillBecomePartiallyVisible];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [as_viewControllersForVisibilityCallbackForwarding countByEnumeratingWithState:&v7 objects:v11 count:16];
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
  as_viewControllersForVisibilityCallbackForwarding = [(UIViewController *)self as_viewControllersForVisibilityCallbackForwarding];
  v3 = [as_viewControllersForVisibilityCallbackForwarding countByEnumeratingWithState:&v7 objects:v11 count:16];
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
          objc_enumerationMutation(as_viewControllersForVisibilityCallbackForwarding);
        }

        [*(*(&v7 + 1) + 8 * v6) as_viewDidBecomePartiallyVisible];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [as_viewControllersForVisibilityCallbackForwarding countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (double)pageMarginInsets
{
  selfCopy = self;
  sub_4FED78();

  return 0.0;
}

- (CGSize)pageContainerSize
{
  selfCopy = self;
  view = [(UIViewController *)selfCopy view];
  if (view)
  {
    v6 = view;
    [(UIView *)view bounds];
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

- (_TtP18ASMessagesProvider20PageTraitEnvironment_)snapshotPageTraitEnvironment
{
  selfCopy = self;
  [(UIViewController *)selfCopy pageContainerSize];
  v4 = v3;
  v6 = v5;
  traitCollection = [(UIViewController *)selfCopy traitCollection];
  v8 = type metadata accessor for SnapshotPageTraitEnvironment();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR____TtC18ASMessagesProvider28SnapshotPageTraitEnvironment_pageContainerSize];
  *v10 = v4;
  *(v10 + 1) = v6;
  *&v9[OBJC_IVAR____TtC18ASMessagesProvider28SnapshotPageTraitEnvironment_traitCollection] = traitCollection;
  v14.receiver = v9;
  v14.super_class = v8;
  v11 = traitCollection;
  v12 = [(UIViewController *)&v14 init];

  return v12;
}

@end