@interface UIViewController
- (BOOL)rc_canAnimate;
- (BOOL)rc_isDescendantOfViewController:(id)a3;
- (BOOL)rc_isPrimaryLayoutAxis:(int64_t)a3;
- (BOOL)rc_screenUpdatesDisabled;
- (BOOL)rc_shouldAutoDisableUpdatesWhenInBackground;
- (id)_recursiveDescriptionWithInset:(id)a3;
- (id)rc_navigationItemForPresentingNavigationItem:(id)a3 forViewController:(id)a4;
- (void)rc_addChildViewWithViewController:(id)a3;
- (void)rc_addChildViewWithViewController:(id)a3 toView:(id)a4;
- (void)rc_applicationDidEnterBackground;
- (void)rc_applicationWillEnterForeground;
- (void)rc_automaticallyUpdateScreenUpdatesDisabled;
- (void)rc_configurePopoverControllerWithSource:(id)a3;
- (void)rc_ensureIsInterfaceOrientationMask:(unint64_t)a3 preferredOrientation:(int64_t)a4 doneEnsuringBlock:(id)a5;
- (void)rc_loadViewIfNecessary;
- (void)rc_setScreenUpdatesDisabled:(BOOL)a3;
@end

@implementation UIViewController

- (void)rc_addChildViewWithViewController:(id)a3
{
  v4 = a3;
  v5 = [(UIViewController *)self view];
  [(UIViewController *)self rc_addChildViewWithViewController:v4 toView:v5];
}

- (void)rc_addChildViewWithViewController:(id)a3 toView:(id)a4
{
  v6 = a4;
  v8 = a3;
  v7 = [v8 view];
  [v6 addSubview:v7];

  [(UIViewController *)self addChildViewController:v8];
  [v8 didMoveToParentViewController:self];
}

- (BOOL)rc_canAnimate
{
  v2 = [(UIViewController *)self view];
  v3 = [v2 rc_canAnimate];

  return v3;
}

- (BOOL)rc_isPrimaryLayoutAxis:(int64_t)a3
{
  v4 = [(UIViewController *)self view];
  [v4 frame];
  v6 = v5;
  v8 = v7;

  return v6 > v8 && a3 == 0;
}

- (void)rc_loadViewIfNecessary
{
  v2 = [(UIViewController *)self view];
}

- (id)rc_navigationItemForPresentingNavigationItem:(id)a3 forViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (+[UIApplication shouldMakeUIForDefaultPNG])
  {
    v8 = [[UINavigationItem alloc] initWithTitle:&stru_100295BB8];
  }

  else
  {
    v9 = [(UIViewController *)self parentViewController];

    if (v9)
    {
      v10 = [(UIViewController *)self parentViewController];
      v11 = [v10 rc_navigationItemForPresentingNavigationItem:v6 forViewController:v7];

      goto LABEL_7;
    }

    v8 = v6;
  }

  v11 = v8;
LABEL_7:

  return v11;
}

- (BOOL)rc_isDescendantOfViewController:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  v4 = a3;
  v5 = [(UIViewController *)self parentViewController];
  v6 = [v5 rc_isDescendantOfViewController:v4];

  return v6;
}

- (void)rc_ensureIsInterfaceOrientationMask:(unint64_t)a3 preferredOrientation:(int64_t)a4 doneEnsuringBlock:(id)a5
{
  v8 = a5;
  if (((1 << [(UIViewController *)self interfaceOrientation]) & a3) != 0)
  {
    if (v8)
    {
      v8[2](v8);
    }
  }

  else
  {
    v9 = +[UIApplication sharedApplication];
    v10 = [v9 delegate];
    v11 = [v10 window];
    v12 = [v11 rootViewController];
    v13 = [v12 view];
    [v13 setUserInteractionEnabled:0];

    v14 = +[UIDevice currentDevice];
    [v14 setOrientation:a4 animated:1];

    [(UIViewController *)self setNeedsUpdateOfSupportedInterfaceOrientations];
    v15 = dispatch_time(0, 330000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006D474;
    block[3] = &unk_10028A510;
    v17 = v8;
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

- (void)rc_setScreenUpdatesDisabled:(BOOL)a3
{
  v3 = a3;
  if ([(UIViewController *)self rc_screenUpdatesDisabled]!= a3)
  {
    v5 = [NSNumber numberWithBool:v3];
    objc_setAssociatedObject(self, "_RCUIViewControllerScreenUpdateDisabled", v5, 0x301);

    [(UIViewController *)self rc_screenUpdatesDisabledDidChange];
  }
}

- (BOOL)rc_screenUpdatesDisabled
{
  v3 = objc_getAssociatedObject(self, "_RCUIViewControllerScreenUpdateDisabled");
  v4 = [v3 BOOLValue];

  if (v4)
  {
    return 1;
  }

  v6 = [(UIViewController *)self parentViewController];
  v7 = v6;
  if (v6)
  {
    v5 = [v6 rc_screenUpdatesDisabled];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)rc_shouldAutoDisableUpdatesWhenInBackground
{
  v3 = [(UIViewController *)self parentViewController];

  if (!v3)
  {
    return 1;
  }

  v4 = [(UIViewController *)self parentViewController];
  v5 = [v4 rc_shouldAutoDisableUpdatesWhenInBackground];

  return v5;
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

- (void)rc_configurePopoverControllerWithSource:(id)a3
{
  v19 = a3;
  if (v19)
  {
    v4 = +[UIDevice currentDevice];
    if ([v4 userInterfaceIdiom] == 1)
    {
    }

    else
    {
      v5 = +[UIDevice currentDevice];
      v6 = [v5 userInterfaceIdiom];

      if (v6)
      {
        goto LABEL_10;
      }
    }

    v7 = [(UIViewController *)self popoverPresentationController];
    [v7 _setIgnoreBarButtonItemSiblings:1];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [(UIViewController *)self popoverPresentationController];
      [v8 setBarButtonItem:v19];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_10;
      }

      v9 = v19;
      v10 = [(UIViewController *)self popoverPresentationController];
      [v10 setSourceView:v9];

      [v9 bounds];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;

      v8 = [(UIViewController *)self popoverPresentationController];
      [v8 setSourceRect:{v12, v14, v16, v18}];
    }
  }

LABEL_10:
}

- (id)_recursiveDescriptionWithInset:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v6 = [NSString stringWithFormat:@"%@    ", v4];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = [(UIViewController *)self childViewControllers];
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v20 + 1) + 8 * i) _recursiveDescriptionWithInset:v6];
        [v5 addObject:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  v13 = [(UIViewController *)self description];
  v14 = [(UIViewController *)self view];
  v15 = [v14 description];
  v16 = [NSString stringWithFormat:@"%@%@ view:%@", v4, v13, v15];

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