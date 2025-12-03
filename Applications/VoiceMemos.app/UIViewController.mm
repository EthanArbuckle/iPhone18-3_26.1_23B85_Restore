@interface UIViewController
- (BOOL)rc_canAnimate;
- (BOOL)rc_isDescendantOfViewController:(id)controller;
- (BOOL)rc_isPrimaryLayoutAxis:(int64_t)axis;
- (BOOL)rc_screenUpdatesDisabled;
- (BOOL)rc_shouldAutoDisableUpdatesWhenInBackground;
- (id)_recursiveDescriptionWithInset:(id)inset;
- (id)rc_navigationItemForPresentingNavigationItem:(id)item forViewController:(id)controller;
- (void)rc_addChildViewWithViewController:(id)controller;
- (void)rc_addChildViewWithViewController:(id)controller toView:(id)view;
- (void)rc_applicationDidEnterBackground;
- (void)rc_applicationWillEnterForeground;
- (void)rc_automaticallyUpdateScreenUpdatesDisabled;
- (void)rc_configurePopoverControllerWithSource:(id)source;
- (void)rc_ensureIsInterfaceOrientationMask:(unint64_t)mask preferredOrientation:(int64_t)orientation doneEnsuringBlock:(id)block;
- (void)rc_loadViewIfNecessary;
- (void)rc_setScreenUpdatesDisabled:(BOOL)disabled;
@end

@implementation UIViewController

- (void)rc_addChildViewWithViewController:(id)controller
{
  controllerCopy = controller;
  view = [(UIViewController *)self view];
  [(UIViewController *)self rc_addChildViewWithViewController:controllerCopy toView:view];
}

- (void)rc_addChildViewWithViewController:(id)controller toView:(id)view
{
  viewCopy = view;
  controllerCopy = controller;
  view = [controllerCopy view];
  [viewCopy addSubview:view];

  [(UIViewController *)self addChildViewController:controllerCopy];
  [controllerCopy didMoveToParentViewController:self];
}

- (BOOL)rc_canAnimate
{
  view = [(UIViewController *)self view];
  rc_canAnimate = [view rc_canAnimate];

  return rc_canAnimate;
}

- (BOOL)rc_isPrimaryLayoutAxis:(int64_t)axis
{
  view = [(UIViewController *)self view];
  [view frame];
  v6 = v5;
  v8 = v7;

  return v6 > v8 && axis == 0;
}

- (void)rc_loadViewIfNecessary
{
  view = [(UIViewController *)self view];
}

- (id)rc_navigationItemForPresentingNavigationItem:(id)item forViewController:(id)controller
{
  itemCopy = item;
  controllerCopy = controller;
  if (+[UIApplication shouldMakeUIForDefaultPNG])
  {
    v8 = [[UINavigationItem alloc] initWithTitle:&stru_100295BB8];
  }

  else
  {
    parentViewController = [(UIViewController *)self parentViewController];

    if (parentViewController)
    {
      parentViewController2 = [(UIViewController *)self parentViewController];
      v11 = [parentViewController2 rc_navigationItemForPresentingNavigationItem:itemCopy forViewController:controllerCopy];

      goto LABEL_7;
    }

    v8 = itemCopy;
  }

  v11 = v8;
LABEL_7:

  return v11;
}

- (BOOL)rc_isDescendantOfViewController:(id)controller
{
  if (self == controller)
  {
    return 1;
  }

  controllerCopy = controller;
  parentViewController = [(UIViewController *)self parentViewController];
  v6 = [parentViewController rc_isDescendantOfViewController:controllerCopy];

  return v6;
}

- (void)rc_ensureIsInterfaceOrientationMask:(unint64_t)mask preferredOrientation:(int64_t)orientation doneEnsuringBlock:(id)block
{
  blockCopy = block;
  if (((1 << [(UIViewController *)self interfaceOrientation]) & mask) != 0)
  {
    if (blockCopy)
    {
      blockCopy[2](blockCopy);
    }
  }

  else
  {
    v9 = +[UIApplication sharedApplication];
    delegate = [v9 delegate];
    window = [delegate window];
    rootViewController = [window rootViewController];
    view = [rootViewController view];
    [view setUserInteractionEnabled:0];

    v14 = +[UIDevice currentDevice];
    [v14 setOrientation:orientation animated:1];

    [(UIViewController *)self setNeedsUpdateOfSupportedInterfaceOrientations];
    v15 = dispatch_time(0, 330000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006D474;
    block[3] = &unk_10028A510;
    v17 = blockCopy;
    dispatch_after(v15, &_dispatch_main_q, block);
  }
}

- (void)rc_automaticallyUpdateScreenUpdatesDisabled
{
  v3 = objc_getAssociatedObject(self, "_RCUIViewControllerNoticationObserver");
  if (!v3)
  {
    value = objc_alloc_init(RCUIViewControllerNoticationObserver);
    [(RCUIViewControllerNoticationObserver *)value setViewController:self];
    objc_setAssociatedObject(self, "_RCUIViewControllerNoticationObserver", value, 0x301);
    v3 = value;
  }
}

- (void)rc_setScreenUpdatesDisabled:(BOOL)disabled
{
  disabledCopy = disabled;
  if ([(UIViewController *)self rc_screenUpdatesDisabled]!= disabled)
  {
    v5 = [NSNumber numberWithBool:disabledCopy];
    objc_setAssociatedObject(self, "_RCUIViewControllerScreenUpdateDisabled", v5, 0x301);

    [(UIViewController *)self rc_screenUpdatesDisabledDidChange];
  }
}

- (BOOL)rc_screenUpdatesDisabled
{
  v3 = objc_getAssociatedObject(self, "_RCUIViewControllerScreenUpdateDisabled");
  bOOLValue = [v3 BOOLValue];

  if (bOOLValue)
  {
    return 1;
  }

  parentViewController = [(UIViewController *)self parentViewController];
  v7 = parentViewController;
  if (parentViewController)
  {
    rc_screenUpdatesDisabled = [parentViewController rc_screenUpdatesDisabled];
  }

  else
  {
    rc_screenUpdatesDisabled = 0;
  }

  return rc_screenUpdatesDisabled;
}

- (BOOL)rc_shouldAutoDisableUpdatesWhenInBackground
{
  parentViewController = [(UIViewController *)self parentViewController];

  if (!parentViewController)
  {
    return 1;
  }

  parentViewController2 = [(UIViewController *)self parentViewController];
  rc_shouldAutoDisableUpdatesWhenInBackground = [parentViewController2 rc_shouldAutoDisableUpdatesWhenInBackground];

  return rc_shouldAutoDisableUpdatesWhenInBackground;
}

- (void)rc_applicationDidEnterBackground
{
  if ([(UIViewController *)self rc_shouldAutoDisableUpdatesWhenInBackground])
  {

    [(UIViewController *)self rc_setScreenUpdatesDisabled:1];
  }
}

- (void)rc_applicationWillEnterForeground
{
  if ([(UIViewController *)self rc_shouldAutoDisableUpdatesWhenInBackground])
  {

    [(UIViewController *)self rc_setScreenUpdatesDisabled:0];
  }
}

- (void)rc_configurePopoverControllerWithSource:(id)source
{
  sourceCopy = source;
  if (sourceCopy)
  {
    v4 = +[UIDevice currentDevice];
    if ([v4 userInterfaceIdiom] == 1)
    {
    }

    else
    {
      v5 = +[UIDevice currentDevice];
      userInterfaceIdiom = [v5 userInterfaceIdiom];

      if (userInterfaceIdiom)
      {
        goto LABEL_10;
      }
    }

    popoverPresentationController = [(UIViewController *)self popoverPresentationController];
    [popoverPresentationController _setIgnoreBarButtonItemSiblings:1];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      popoverPresentationController2 = [(UIViewController *)self popoverPresentationController];
      [popoverPresentationController2 setBarButtonItem:sourceCopy];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_10;
      }

      v9 = sourceCopy;
      popoverPresentationController3 = [(UIViewController *)self popoverPresentationController];
      [popoverPresentationController3 setSourceView:v9];

      [v9 bounds];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;

      popoverPresentationController2 = [(UIViewController *)self popoverPresentationController];
      [popoverPresentationController2 setSourceRect:{v12, v14, v16, v18}];
    }
  }

LABEL_10:
}

- (id)_recursiveDescriptionWithInset:(id)inset
{
  insetCopy = inset;
  v5 = +[NSMutableArray array];
  insetCopy = [NSString stringWithFormat:@"%@    ", insetCopy];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  childViewControllers = [(UIViewController *)self childViewControllers];
  v8 = [childViewControllers countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(childViewControllers);
        }

        v12 = [*(*(&v20 + 1) + 8 * i) _recursiveDescriptionWithInset:insetCopy];
        [v5 addObject:v12];
      }

      v9 = [childViewControllers countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  v13 = [(UIViewController *)self description];
  view = [(UIViewController *)self view];
  v15 = [view description];
  v16 = [NSString stringWithFormat:@"%@%@ view:%@", insetCopy, v13, v15];

  if ([v5 count])
  {
    v17 = [v5 componentsJoinedByString:@"\n"];
    v18 = [NSString stringWithFormat:@"%@\n%@", v16, v17];
  }

  else
  {
    v18 = v16;
  }

  return v18;
}

@end