@interface UIViewController
+ (id)bc_presentingViewController;
- (BCCardStackViewController)cardStackViewController;
- (BCCardViewController)bc_cardViewController;
- (BCEngagementProvider)bc_effectiveEngagementProvider;
- (BCEngagementProvider)bc_engagementProvider;
- (BOOL)_bc_analyticsComputeVisibility;
- (BOOL)_bc_analyticsIsObscuredByPresentedViewController;
- (BOOL)_bc_analyticsNotifiedWillDisappear;
- (BOOL)_overridesShouldAutorotate;
- (BOOL)_overridesSupportedInterfaceOrientations;
- (BOOL)bc_analyticsVisibility;
- (BOOL)bc_analyticsVisibilityIsObscuredWhenSubtreePresented;
- (BOOL)bc_isModelTransitioning;
- (BOOL)bc_isPresentingCardStack;
- (BOOL)bc_navBarVisible;
- (BOOL)im_hasValidWidthAndHeightTraitCollection;
- (BOOL)im_isAncestorOfChildViewController:(id)a3;
- (BOOL)im_isCompactHeight;
- (BOOL)im_isCompactWidth;
- (BOOL)im_tabBarVisible;
- (BOOL)isSupportedInterfaceOrientation:(int64_t)a3;
- (BOOL)usesBrightonAutorotationAPI;
- (CGRect)im_frameEnvironmentBounds;
- (CGRect)im_frameEnvironmentFrame;
- (UIEdgeInsets)im_frameEnvironmentSafeAreaInsets;
- (_TtC13BookAnalytics9BATracker)ba_effectiveAnalyticsTracker;
- (id)_ba_effectiveViewControllerForAnalyticsTrackingIgnoringViewController:(id)a3;
- (id)_ba_effectiveViewControllerForEngagementProviderIgnoringViewController:(id)a3;
- (id)_bc_analyticsAncestorPresentedViewController;
- (id)ba_effectiveViewControllerForAnalyticsTracking;
- (id)ba_effectiveViewControllerForEngagementProvider;
- (id)ba_setupNewAnalyticsTrackerWithName:(id)a3;
- (id)bc_ancestorFullScreenPresentingViewController;
- (id)bc_ancestorViewControllerOfClass:(Class)a3 allowPresentingParent:(BOOL)a4;
- (id)bc_childPresentedViewController;
- (id)bc_contextualPresentedViewController;
- (id)bc_contextualPresentingViewController;
- (id)bc_deepestPresentedViewController;
- (id)bc_deepestVisibleChildViewControllerIncludePresented:(BOOL)a3;
- (id)bc_descendentPresentedViewController;
- (id)bc_effectiveAncestorOverrideCardPresentingViewController;
- (id)bc_effectiveCardPresentingViewController;
- (id)bc_effectiveViewControllerForNavBarVisibility;
- (id)bc_firstVisibleChildViewControllerOfClass:(Class)a3 includePresented:(BOOL)a4;
- (id)bc_windowForViewControllerWithFallbackToKeyWindow:(BOOL)a3;
- (id)im_ancestorConformingToProtocol:(id)a3;
- (id)im_ancestorFlowControllerConformingToProtocol:(id)a3;
- (id)im_ancestorValueForKey:(id)a3 conformingToProtocol:(id)a4 fromViewControllersConformingToProtocol:(id)a5;
- (id)im_ancestorViewControllerConformingToProtocol:(id)a3 includePresenting:(BOOL)a4;
- (id)im_bookshelfTheme;
- (id)im_childValueForKey:(id)a3 conformingToProtocol:(id)a4 fromViewControllersConformingToProtocol:(id)a5;
- (id)im_effectiveViewControllerForTabBarVisibility;
- (id)im_firstVisibleChildConformingToProtocol:(id)a3 stopIfDescendentConformsToProtocol:(id)a4 includePresented:(BOOL)a5 validateItem:(id)a6;
- (id)im_recursiveDescriptionVisibleTree:(BOOL)a3;
- (id)im_theme;
- (id)im_traitCollectionAdjustedForMedusaLevels:(id)a3;
- (id)im_visibleViewControllersConfirmingToProtocol:(id)a3;
- (id)p_setupStandardUISearchController;
- (id)rasterizedImage;
- (int64_t)IMDeviceOrientation;
- (int64_t)preferredInterfaceOrientationGivenOrientation:(int64_t)a3;
- (unint64_t)bc_currentLifeCycleState;
- (void)__im_enumerateChildrenConformingToProtocol:(id)a3 stop:(BOOL *)a4 block:(id)a5;
- (void)__im_enumerateVisibleChildrenConformingToProtocol:(id)a3 stop:(BOOL *)a4 block:(id)a5;
- (void)_bc_analyticsSetVisibility:(BOOL)a3;
- (void)_bc_analyticsUpdateVisibilityOfDescendants;
- (void)_bc_analyticsUpdateVisibilityOfSelf;
- (void)_bc_analyticsUpdateVisibilityOfSelfWithParent:(id)a3 parentVisibility:(BOOL)a4;
- (void)_setNotifiedAnalyticsVisibilityWillDisappear:(BOOL)a3;
- (void)bc_analyticsSubtreeForceEndSession;
- (void)bc_analyticsVisibilitySubtreeDidDisappear;
- (void)bc_analyticsVisibilitySubtreeWillDisappear;
- (void)bc_analyticsVisibilityUpdateSubtree;
- (void)bc_closeAssetWithCardStackViewController:(id)a3 completion:(id)a4;
- (void)bc_closeToAssetWithCardStackViewController:(id)a3 completion:(id)a4;
- (void)bc_dismissCardViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)bc_dismissIfSafeAnimated:(BOOL)a3;
- (void)bc_notifyLightLevelDidChange:(int64_t)a3;
- (void)bc_presentCardViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)bc_presentViewController:(id)a3 animated:(BOOL)a4 tintColor:(id)a5 completion:(id)a6;
- (void)bc_setCurrentLifeCycleState:(unint64_t)a3;
- (void)bc_setNavBarVisible:(BOOL)a3;
- (void)cleanupAfterTransition:(id)a3;
- (void)im_dismissAnimated:(BOOL)a3 immediate:(BOOL)a4;
- (void)im_enumerateChildrenConformingToProtocol:(id)a3 block:(id)a4;
- (void)im_enumerateVisibleChildrenConformingToProtocol:(id)a3 block:(id)a4;
- (void)im_finishOngoingModalTransitionAnimations:(id)a3;
- (void)im_notifyThemeDidChange;
- (void)im_setTabBarVisible:(BOOL)a3;
- (void)prepareForTransition:(id)a3;
- (void)refreshStatusBarAppearance;
- (void)setBc_isPresentingCardStack:(BOOL)a3;
@end

@implementation UIViewController

- (unint64_t)bc_currentLifeCycleState
{
  v2 = objc_getAssociatedObject(self, off_33D080);
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (void)bc_setCurrentLifeCycleState:(unint64_t)a3
{
  v7 = NSStringFromSelector("bc_currentLifeCycleState");
  [(UIViewController *)self willChangeValueForKey:v7];
  v5 = off_33D080;
  v6 = [NSNumber numberWithUnsignedInteger:a3];
  objc_setAssociatedObject(self, v5, v6, &dword_0 + 1);

  [(UIViewController *)self didChangeValueForKey:v7];
}

- (BOOL)bc_analyticsVisibility
{
  v3 = objc_getAssociatedObject(self, off_33D088);
  if (!v3)
  {
    v3 = &__kCFBooleanFalse;
    objc_setAssociatedObject(self, off_33D088, &__kCFBooleanFalse, &dword_0 + 1);
  }

  v4 = [v3 BOOLValue];

  return v4;
}

- (void)bc_analyticsVisibilityUpdateSubtree
{
  [(UIViewController *)self _bc_analyticsUpdateVisibilityOfSelf];

  [(UIViewController *)self _bc_analyticsUpdateVisibilityOfDescendants];
}

- (void)bc_analyticsVisibilitySubtreeWillDisappear
{
  v3 = [(UIViewController *)self bc_childPresentedViewController];
  [v3 bc_analyticsVisibilitySubtreeWillDisappear];
  if ([(UIViewController *)self bc_analyticsVisibility]&& ![(UIViewController *)self _bc_analyticsNotifiedWillDisappear])
  {
    [(UIViewController *)self _setNotifiedAnalyticsVisibilityWillDisappear:1];
    [(UIViewController *)self bc_analyticsVisibilityWillDisappear];
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = [(UIViewController *)self childViewControllers];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8) bc_analyticsVisibilitySubtreeWillDisappear];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)bc_analyticsVisibilitySubtreeDidDisappear
{
  [(UIViewController *)self _bc_analyticsSetVisibility:0];
  v3 = [(UIViewController *)self bc_childPresentedViewController];
  [v3 bc_analyticsVisibilitySubtreeDidDisappear];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = [(UIViewController *)self childViewControllers];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8) bc_analyticsVisibilitySubtreeDidDisappear];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)bc_analyticsSubtreeForceEndSession
{
  [(UIViewController *)self bc_analyticsForceEndSession];
  v3 = [(UIViewController *)self bc_childPresentedViewController];
  [v3 bc_analyticsSubtreeForceEndSession];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = [(UIViewController *)self childViewControllers];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8) bc_analyticsSubtreeForceEndSession];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (BOOL)bc_analyticsVisibilityIsObscuredWhenSubtreePresented
{
  if ([(UIViewController *)self bc_analyticsVisibilityIsObscuredWhenPresented])
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v4 = [(UIViewController *)self childViewControllers];
    v3 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v3)
    {
      v5 = *v9;
      while (2)
      {
        for (i = 0; i != v3; i = i + 1)
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(v4);
          }

          if ([*(*(&v8 + 1) + 8 * i) bc_analyticsVisibilityIsObscuredWhenSubtreePresented])
          {
            LOBYTE(v3) = 1;
            goto LABEL_13;
          }
        }

        v3 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
        if (v3)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  return v3;
}

- (void)_bc_analyticsSetVisibility:(BOOL)a3
{
  v3 = a3;
  if ([(UIViewController *)self bc_analyticsVisibility]!= a3)
  {
    v5 = off_33D088;
    v6 = [NSNumber numberWithBool:v3];
    objc_setAssociatedObject(self, v5, v6, &dword_0 + 1);

    if (v3)
    {
      [(UIViewController *)self _setNotifiedAnalyticsVisibilityWillDisappear:0];

      [(UIViewController *)self bc_analyticsVisibilityDidAppear];
    }

    else
    {

      [(UIViewController *)self bc_analyticsVisibilityDidDisappear];
    }
  }
}

- (BOOL)_bc_analyticsNotifiedWillDisappear
{
  v3 = objc_getAssociatedObject(self, off_33D090);
  if (!v3)
  {
    v3 = &__kCFBooleanFalse;
    objc_setAssociatedObject(self, off_33D090, &__kCFBooleanFalse, &dword_0 + 1);
  }

  v4 = [v3 BOOLValue];

  return v4;
}

- (void)_setNotifiedAnalyticsVisibilityWillDisappear:(BOOL)a3
{
  v4 = off_33D090;
  v5 = [NSNumber numberWithBool:a3];
  objc_setAssociatedObject(self, v4, v5, &dword_0 + 1);
}

- (BOOL)_bc_analyticsComputeVisibility
{
  v3 = [(UIViewController *)self viewIfLoaded];
  v4 = [v3 window];
  if (!v4 || ([v3 isHidden] & 1) != 0 || !-[UIViewController bc_analyticsVisibilityOfSelf](self, "bc_analyticsVisibilityOfSelf"))
  {
    goto LABEL_9;
  }

  v5 = [(UIViewController *)self _bc_analyticsIsObscuredByPresentedViewController];

  if ((v5 & 1) == 0)
  {
    v7 = [(UIViewController *)self parentViewController];
    v4 = v7;
    if (!v7)
    {
      v9 = [(UIViewController *)self presentingViewController];
      v10 = [v9 presentedViewController];

      if (v10 == self)
      {
        v6 = 1;
      }

      else
      {
        v11 = [v3 window];
        v12 = [v11 rootViewController];

        v6 = v12 == self;
      }

      goto LABEL_10;
    }

    if ([v7 bc_analyticsVisibilityOfChild:self])
    {
      v6 = [v4 _bc_analyticsComputeVisibility];
LABEL_10:

      goto LABEL_11;
    }

LABEL_9:
    v6 = 0;
    goto LABEL_10;
  }

  v6 = 0;
LABEL_11:

  return v6;
}

- (BOOL)_bc_analyticsIsObscuredByPresentedViewController
{
  v3 = [(UIViewController *)self presentedViewController];
  if (!v3)
  {
    v3 = [(UIViewController *)self _bc_analyticsAncestorPresentedViewController];
  }

  v4 = [v3 bc_analyticsVisibilityIsObscuredWhenPresented];

  return v4;
}

- (id)_bc_analyticsAncestorPresentedViewController
{
  v3 = [(UIViewController *)self parentViewController];
  v4 = [v3 presentedViewController];
  if (!v4)
  {
    v5 = [(UIViewController *)self presentingViewController];
    v4 = [v5 _bc_analyticsAncestorPresentedViewController];
  }

  return v4;
}

- (void)_bc_analyticsUpdateVisibilityOfSelf
{
  v3 = [(UIViewController *)self _bc_analyticsComputeVisibility];

  [(UIViewController *)self _bc_analyticsSetVisibility:v3];
}

- (void)_bc_analyticsUpdateVisibilityOfSelfWithParent:(id)a3 parentVisibility:(BOOL)a4
{
  if (a4 && [a3 bc_analyticsVisibilityOfChild:self])
  {
    v5 = [(UIViewController *)self viewIfLoaded];
    v6 = [v5 window];
    if (v6 && ([v5 isHidden] & 1) == 0 && -[UIViewController bc_analyticsVisibilityOfSelf](self, "bc_analyticsVisibilityOfSelf"))
    {
      v7 = [(UIViewController *)self _bc_analyticsIsObscuredByPresentedViewController]^ 1;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  [(UIViewController *)self _bc_analyticsSetVisibility:v7];
}

- (void)_bc_analyticsUpdateVisibilityOfDescendants
{
  v3 = [(UIViewController *)self bc_childPresentedViewController];
  [v3 bc_analyticsVisibilityUpdateSubtree];
  v4 = [(UIViewController *)self bc_analyticsVisibility];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(UIViewController *)self childViewControllers];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        [v10 _bc_analyticsUpdateVisibilityOfSelfWithParent:self parentVisibility:v4];
        [v10 _bc_analyticsUpdateVisibilityOfDescendants];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)prepareForTransition:(id)a3
{
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(UIViewController *)self childViewControllers];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9) prepareForTransition:v4];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)cleanupAfterTransition:(id)a3
{
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(UIViewController *)self childViewControllers];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9) cleanupAfterTransition:v4];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (int64_t)IMDeviceOrientation
{
  v2 = [(UIViewController *)self interfaceOrientation];
  v3 = +[UIDevice currentDevice];
  v4 = [v3 orientation];

  if ((v4 - 1) >= 4)
  {
    return v2;
  }

  else
  {
    return v4;
  }
}

- (BOOL)isSupportedInterfaceOrientation:(int64_t)a3
{
  v3 = a3;
  v4 = [(UIViewController *)self supportedInterfaceOrientations];
  return (v4 & (1 << v3)) != 0 || v4 == 0;
}

- (BOOL)_overridesShouldAutorotate
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v2 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v2, "shouldAutorotate");
  v4 = objc_opt_class();
  return InstanceMethod != class_getInstanceMethod(v4, "shouldAutorotate");
}

- (BOOL)_overridesSupportedInterfaceOrientations
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v2 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v2, "supportedInterfaceOrientations");
  v4 = objc_opt_class();
  return InstanceMethod != class_getInstanceMethod(v4, "supportedInterfaceOrientations");
}

- (BOOL)usesBrightonAutorotationAPI
{
  if ([(UIViewController *)self _overridesShouldAutorotate])
  {
    return 1;
  }

  return [(UIViewController *)self _overridesSupportedInterfaceOrientations];
}

- (int64_t)preferredInterfaceOrientationGivenOrientation:(int64_t)a3
{
  if (![(UIViewController *)self isSupportedInterfaceOrientation:?])
  {
    a3 = [(UIViewController *)self IMDeviceOrientation];
    if (![(UIViewController *)self isSupportedInterfaceOrientation:a3])
    {
      a3 = 1;
      if (![(UIViewController *)self isSupportedInterfaceOrientation:1])
      {
        a3 = 3;
        if (![(UIViewController *)self isSupportedInterfaceOrientation:3])
        {
          a3 = 4;
          if (![(UIViewController *)self isSupportedInterfaceOrientation:4])
          {
            if ([(UIViewController *)self isSupportedInterfaceOrientation:2])
            {
              return 2;
            }

            else
            {
              return 1;
            }
          }
        }
      }
    }
  }

  return a3;
}

- (void)refreshStatusBarAppearance
{
  v4 = [(UIViewController *)self view];
  v2 = [v4 window];
  v3 = [v2 rootViewController];
  [v3 setNeedsStatusBarAppearanceUpdate];
}

- (id)im_recursiveDescriptionVisibleTree:(BOOL)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_62788;
  v5[3] = &unk_2CA048;
  v6 = a3;
  v3 = [(UIViewController *)self im_recursiveDescriptionChildrenBlock:v5];

  return v3;
}

- (id)rasterizedImage
{
  v3 = [(UIViewController *)self view];
  [v3 bounds];
  v12.width = v4;
  v12.height = v5;
  UIGraphicsBeginImageContextWithOptions(v12, 1, 0.0);

  CurrentContext = UIGraphicsGetCurrentContext();
  v7 = [(UIViewController *)self view];
  v8 = [v7 layer];
  [v8 renderInContext:CurrentContext];

  v9 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v9;
}

- (BOOL)im_hasValidWidthAndHeightTraitCollection
{
  v2 = [(UIViewController *)self traitCollection];
  v3 = [v2 horizontalSizeClass];
  v4 = [v2 horizontalSizeClass];
  v5 = [v2 verticalSizeClass];
  v6 = [v2 verticalSizeClass];
  v7 = (v3 == &dword_0 + 1 || v4 == &dword_0 + 2) && (v5 == &dword_0 + 1 || v6 == &dword_0 + 2);

  return v7;
}

- (BOOL)im_isCompactWidth
{
  v2 = [(UIViewController *)self traitCollection];
  v3 = [v2 horizontalSizeClass];
  v4 = [v2 horizontalSizeClass];
  if (v3 != &dword_0 + 1 && v4 != &dword_0 + 2)
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    BCReportAssertionFailureWithMessage("/Library/Caches/com.apple.xbs/Sources/Alder/frameworks/BookCore/BookCore/ViewControllers/UIViewController+BCAdditions.m", 170, "[UIViewController(IMAdditions) im_isCompactWidth]", "NO", @"<%@: %p> has no trait information.", v7, v8, v9, v6);
  }

  return v3 == &dword_0 + 1;
}

- (BOOL)im_isCompactHeight
{
  v2 = [(UIViewController *)self traitCollection];
  v3 = [v2 verticalSizeClass];
  v4 = [v2 verticalSizeClass];
  if (v3 != &dword_0 + 1 && v4 != &dword_0 + 2)
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    BCReportAssertionFailureWithMessage("/Library/Caches/com.apple.xbs/Sources/Alder/frameworks/BookCore/BookCore/ViewControllers/UIViewController+BCAdditions.m", 190, "[UIViewController(IMAdditions) im_isCompactHeight]", "NO", @"<%@: %p> has no trait information.", v7, v8, v9, v6);
  }

  return v3 == &dword_0 + 1;
}

- (void)im_dismissAnimated:(BOOL)a3 immediate:(BOOL)a4
{
  v4 = a3;
  v6 = [(UIViewController *)self parentViewController:a3];

  if (v6)
  {
    v9 = [(UIViewController *)self parentViewController];
    [v9 im_dismissChildViewController:self animated:v4];
  }

  else
  {
    v7 = [(UIViewController *)self presentingViewController];
    v8 = [v7 presentedViewController];

    if (v8 == self)
    {

      [(UIViewController *)self dismissViewControllerAnimated:v4 completion:0];
    }
  }
}

- (id)bc_contextualPresentingViewController
{
  v3 = [(UIViewController *)self parentViewController];
  if (v3 || ([(UIViewController *)self presentingViewController], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
    v5 = [v3 bc_contextualPresentingViewController];
  }

  else
  {
    v5 = self;
  }

  return v5;
}

- (id)bc_contextualPresentedViewController
{
  v3 = [(UIViewController *)self presentedViewController];
  v4 = [(UIViewController *)self bc_contextualPresentingViewController];
  v5 = v4;
  if (v3)
  {
    if ([v4 im_isAncestorOfChildViewController:v3])
    {
      v6 = v3;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

- (id)bc_descendentPresentedViewController
{
  v3 = [(UIViewController *)self presentedViewController];
  if (v3)
  {
    if ([(UIViewController *)self im_isAncestorOfChildViewController:v3])
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (id)bc_childPresentedViewController
{
  v3 = [(UIViewController *)self presentedViewController];
  v4 = [v3 presentingViewController];
  if (v4 == self)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (BOOL)im_isAncestorOfChildViewController:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = 0;
  if (v4 != self && v4)
  {
    while (1)
    {
      v7 = [(UIViewController *)v5 parentViewController];
      v8 = v7;
      if (v7)
      {
        v9 = v7;
      }

      else
      {
        v9 = [(UIViewController *)v5 presentingViewController];
      }

      v10 = v9;

      if (v10 == self)
      {
        break;
      }

      v5 = v10;
      if (!v10)
      {
        v6 = 0;
        goto LABEL_10;
      }
    }

    v6 = 1;
  }

LABEL_10:

  return v6;
}

- (id)im_childValueForKey:(id)a3 conformingToProtocol:(id)a4 fromViewControllersConformingToProtocol:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(UIViewController *)self conformsToProtocol:v10])
  {
    [(UIViewController *)self valueForKey:v8];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v11 = v32 = 0u;
    v12 = [v11 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v30;
LABEL_4:
      v15 = 0;
      while (1)
      {
        if (*v30 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v29 + 1) + 8 * v15);
        if ([v16 conformsToProtocol:v9])
        {
          break;
        }

        if (v13 == ++v15)
        {
          v13 = [v11 countByEnumeratingWithState:&v29 objects:v34 count:16];
          if (v13)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v17 = v16;

      if (v17)
      {
        goto LABEL_22;
      }
    }

    else
    {
LABEL_10:
    }
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v18 = [(UIViewController *)self bc_childViewControllersForProtocolConformance];
  v19 = [v18 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v26;
LABEL_14:
    v22 = 0;
    while (1)
    {
      if (*v26 != v21)
      {
        objc_enumerationMutation(v18);
      }

      v23 = [*(*(&v25 + 1) + 8 * v22) im_childValueForKey:v8 conformingToProtocol:v9 fromViewControllersConformingToProtocol:v10];
      if (v23)
      {
        break;
      }

      if (v20 == ++v22)
      {
        v20 = [v18 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v20)
        {
          goto LABEL_14;
        }

        goto LABEL_20;
      }
    }
  }

  else
  {
LABEL_20:

    v18 = [(UIViewController *)self bc_childPresentedViewController];
    v23 = [v18 im_ancestorValueForKey:v8 conformingToProtocol:v9 fromViewControllersConformingToProtocol:v10];
  }

  v17 = v23;

LABEL_22:

  return v17;
}

- (id)im_ancestorValueForKey:(id)a3 conformingToProtocol:(id)a4 fromViewControllersConformingToProtocol:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(UIViewController *)self conformsToProtocol:v10])
  {
    [(UIViewController *)self valueForKey:v8];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v11 = v24 = 0u;
    v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v22;
LABEL_4:
      v15 = 0;
      while (1)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v21 + 1) + 8 * v15);
        if ([v16 conformsToProtocol:{v9, v21}])
        {
          break;
        }

        if (v13 == ++v15)
        {
          v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
          if (v13)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v17 = v16;

      if (v17)
      {
        goto LABEL_14;
      }
    }

    else
    {
LABEL_10:
    }
  }

  v18 = [(UIViewController *)self parentViewController];
  v17 = [v18 im_ancestorValueForKey:v8 conformingToProtocol:v9 fromViewControllersConformingToProtocol:v10];

  if (!v17)
  {
    v19 = [(UIViewController *)self presentingViewController];
    v17 = [v19 im_ancestorValueForKey:v8 conformingToProtocol:v9 fromViewControllersConformingToProtocol:v10];
  }

LABEL_14:

  return v17;
}

- (id)im_ancestorViewControllerConformingToProtocol:(id)a3 includePresenting:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([(UIViewController *)self conformsToProtocol:v6])
  {
    v7 = self;
    goto LABEL_10;
  }

  v8 = [(UIViewController *)self parentViewController];
  if (v8)
  {
    v9 = v8;
    v10 = v6;
    v11 = v4;
LABEL_5:
    v7 = [v8 im_ancestorViewControllerConformingToProtocol:v10 includePresenting:v11];

    goto LABEL_10;
  }

  if (v4)
  {
    v8 = [(UIViewController *)self presentingViewController];
    if (v8)
    {
      v9 = v8;
      v10 = v6;
      v11 = 1;
      goto LABEL_5;
    }
  }

  v7 = 0;
LABEL_10:

  return v7;
}

- (id)im_ancestorConformingToProtocol:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = [(UIViewController *)v5 parentViewController];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [(UIViewController *)v5 presentingViewController];
  }

  v9 = v8;

  v10 = 0;
  if (v5)
  {
    do
    {
      if ([(UIViewController *)v5 conformsToProtocol:v4])
      {
        v23 = v5;
        v20 = v23;
        goto LABEL_21;
      }

      v11 = [(UIViewController *)v5 viewIfLoaded];
      v12 = [v11 window];

      if (v12)
      {
        v13 = [(UIViewController *)v5 viewIfLoaded];
        v14 = [v13 window];

        v10 = v14;
      }

      v15 = v9;

      v16 = [(UIViewController *)v15 parentViewController];
      v17 = v16;
      if (v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = [(UIViewController *)v15 presentingViewController];
      }

      v9 = v18;

      v5 = v15;
    }

    while (v15);
    if (v10)
    {
      v19 = [v10 im_ancestorConformingToProtocol:v4];
      if (v19)
      {
        v20 = v19;
        goto LABEL_20;
      }
    }
  }

  v21 = +[UIApplication jsa_sharedApplicationIfNotExtension];
  v22 = [v21 delegate];

  if ([v22 conformsToProtocol:v4])
  {
    v20 = v22;
  }

  else
  {
    v20 = 0;
  }

LABEL_20:
  v23 = 0;
LABEL_21:
  v24 = v20;

  return v20;
}

- (id)im_ancestorFlowControllerConformingToProtocol:(id)a3
{
  v4 = a3;
  v5 = [(UIViewController *)self im_ancestorValueForKey:@"flowControllers" conformingToProtocol:v4 fromViewControllersConformingToProtocol:&OBJC_PROTOCOL___IMFlowControllerHosting];
  if (!v5)
  {
    v6 = [(UIViewController *)self viewIfLoaded];
    v7 = [v6 window];

    v8 = [v7 windowScene];
    v9 = [v8 delegate];
    objc_opt_class();
    v38 = BUDynamicCast();
    if ([v38 conformsToProtocol:&OBJC_PROTOCOL___IMFlowControllerHosting])
    {
      v34 = v8;
      v36 = v9;
      [v38 valueForKey:@"flowControllers"];
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v10 = v50 = 0u;
      v11 = [v10 countByEnumeratingWithState:&v47 objects:v53 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v48;
LABEL_5:
        v14 = v7;
        v15 = 0;
        while (1)
        {
          if (*v48 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v16 = *(*(&v47 + 1) + 8 * v15);
          if ([v16 conformsToProtocol:v4])
          {
            break;
          }

          if (v12 == ++v15)
          {
            v12 = [v10 countByEnumeratingWithState:&v47 objects:v53 count:16];
            v7 = v14;
            if (v12)
            {
              goto LABEL_5;
            }

            goto LABEL_11;
          }
        }

        v5 = v16;

        v7 = v14;
        v8 = v34;
        v9 = v36;
        if (v5)
        {
          goto LABEL_28;
        }
      }

      else
      {
LABEL_11:

        v8 = v34;
        v9 = v36;
      }
    }

    objc_opt_class();
    v17 = BUDynamicCast();
    v18 = [v17 controller];
    objc_opt_class();
    v19 = BUDynamicCast();
    if ([v19 conformsToProtocol:&OBJC_PROTOCOL___IMFlowControllerHosting])
    {
      [v19 valueForKey:@"flowControllers"];
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v20 = v46 = 0u;
      v5 = [v20 countByEnumeratingWithState:&v43 objects:v52 count:16];
      if (v5)
      {
        v35 = v7;
        v37 = v9;
        v21 = *v44;
        while (2)
        {
          for (i = 0; i != v5; i = i + 1)
          {
            if (*v44 != v21)
            {
              objc_enumerationMutation(v20);
            }

            v23 = *(*(&v43 + 1) + 8 * i);
            if ([v23 conformsToProtocol:v4])
            {
              v5 = v23;
              goto LABEL_25;
            }
          }

          v5 = [v20 countByEnumeratingWithState:&v43 objects:v52 count:16];
          if (v5)
          {
            continue;
          }

          break;
        }

LABEL_25:
        v7 = v35;
        v9 = v37;
      }
    }

    else
    {
      v5 = 0;
    }

LABEL_28:
    if (!v5)
    {
      v24 = +[UIApplication jsa_sharedApplicationIfNotExtension];
      v25 = [v24 delegate];

      objc_opt_class();
      v26 = BUDynamicCast();
      if ([v26 conformsToProtocol:&OBJC_PROTOCOL___IMFlowControllerHosting])
      {
        [v26 valueForKey:@"flowControllers"];
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v27 = v42 = 0u;
        v28 = [v27 countByEnumeratingWithState:&v39 objects:v51 count:16];
        if (v28)
        {
          v29 = v28;
          v30 = *v40;
          while (2)
          {
            for (j = 0; j != v29; j = j + 1)
            {
              if (*v40 != v30)
              {
                objc_enumerationMutation(v27);
              }

              v32 = *(*(&v39 + 1) + 8 * j);
              if ([v32 conformsToProtocol:v4])
              {
                v5 = v32;
                goto LABEL_41;
              }
            }

            v29 = [v27 countByEnumeratingWithState:&v39 objects:v51 count:16];
            if (v29)
            {
              continue;
            }

            break;
          }
        }

        v5 = 0;
LABEL_41:
      }

      else
      {
        v5 = 0;
      }
    }
  }

  return v5;
}

- (id)im_firstVisibleChildConformingToProtocol:(id)a3 stopIfDescendentConformsToProtocol:(id)a4 includePresented:(BOOL)a5 validateItem:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (v11 && ([(UIViewController *)self conformsToProtocol:v11]& 1) != 0)
  {
    v13 = 0;
  }

  else if (!v7 || (-[UIViewController bc_childPresentedViewController](self, "bc_childPresentedViewController"), v14 = objc_claimAutoreleasedReturnValue(), v14, !v14) || (-[UIViewController bc_childPresentedViewController](self, "bc_childPresentedViewController"), v15 = objc_claimAutoreleasedReturnValue(), [v15 im_firstVisibleChildConformingToProtocol:v10 stopIfDescendentConformsToProtocol:v11 includePresented:1 validateItem:v12], v13 = objc_claimAutoreleasedReturnValue(), v15, !v13))
  {
    if ([(UIViewController *)self conformsToProtocol:v10]&& (!v12 || [(UIViewController *)self im_firstVisibleChildValidateWithItem:v12]) && (v16 = self) != 0)
    {
      v13 = v16;
    }

    else
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v17 = [(UIViewController *)self im_visibleChildViewControllers];
      v18 = [v17 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v25;
        while (2)
        {
          for (i = 0; i != v19; i = i + 1)
          {
            if (*v25 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = [*(*(&v24 + 1) + 8 * i) im_firstVisibleChildConformingToProtocol:v10 stopIfDescendentConformsToProtocol:v11 includePresented:v7 validateItem:v12];
            if (v22)
            {
              v13 = v22;
              goto LABEL_22;
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v24 objects:v28 count:16];
          if (v19)
          {
            continue;
          }

          break;
        }
      }

      v13 = 0;
LABEL_22:
    }
  }

  return v13;
}

- (id)bc_firstVisibleChildViewControllerOfClass:(Class)a3 includePresented:(BOOL)a4
{
  v4 = a4;
  if (!a4 || (-[UIViewController bc_childPresentedViewController](self, "bc_childPresentedViewController"), v7 = objc_claimAutoreleasedReturnValue(), v7, !v7) || (-[UIViewController bc_childPresentedViewController](self, "bc_childPresentedViewController"), v8 = objc_claimAutoreleasedReturnValue(), [v8 bc_firstVisibleChildViewControllerOfClass:a3 includePresented:1], v9 = objc_claimAutoreleasedReturnValue(), v8, !v9))
  {
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v10 = self) != 0)
    {
      v9 = v10;
    }

    else
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v11 = [(UIViewController *)self im_visibleChildViewControllers];
      v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v19;
        while (2)
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v19 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = [*(*(&v18 + 1) + 8 * i) bc_firstVisibleChildViewControllerOfClass:a3 includePresented:v4];
            if (v16)
            {
              v9 = v16;
              goto LABEL_17;
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }

      v9 = 0;
LABEL_17:
    }
  }

  return v9;
}

- (id)bc_deepestVisibleChildViewControllerIncludePresented:(BOOL)a3
{
  v3 = a3;
  if (!a3 || (-[UIViewController bc_childPresentedViewController](self, "bc_childPresentedViewController"), v5 = objc_claimAutoreleasedReturnValue(), v5, !v5) || (-[UIViewController bc_childPresentedViewController](self, "bc_childPresentedViewController"), v6 = objc_claimAutoreleasedReturnValue(), [v6 bc_deepestVisibleChildViewControllerIncludePresented:1], v7 = objc_claimAutoreleasedReturnValue(), v6, !v7))
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = [(UIViewController *)self im_visibleChildViewControllers];
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v15 + 1) + 8 * i) bc_deepestVisibleChildViewControllerIncludePresented:v3];
          if (v13)
          {
            v7 = v13;

            goto LABEL_14;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v7 = self;
  }

LABEL_14:

  return v7;
}

+ (id)bc_presentingViewController
{
  v2 = +[UIApplication jsa_sharedApplicationIfNotExtension];
  v3 = [v2 connectedScenes];
  v4 = [v3 allObjects];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        if (![v10 activationState])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v11 = [v10 windows];
            v21 = 0u;
            v22 = 0u;
            v23 = 0u;
            v24 = 0u;
            v12 = v11;
            v13 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
            if (v13)
            {
              v14 = v13;
              v15 = *v22;
              while (2)
              {
                for (j = 0; j != v14; j = j + 1)
                {
                  if (*v22 != v15)
                  {
                    objc_enumerationMutation(v12);
                  }

                  v17 = *(*(&v21 + 1) + 8 * j);
                  if ([v17 isKeyWindow])
                  {
                    v19 = [v17 rootViewController];
                    v18 = [v19 bc_deepestPresentedViewController];

                    goto LABEL_22;
                  }
                }

                v14 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
                if (v14)
                {
                  continue;
                }

                break;
              }
            }
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
      v18 = 0;
    }

    while (v7);
  }

  else
  {
    v18 = 0;
  }

LABEL_22:

  return v18;
}

- (id)bc_deepestPresentedViewController
{
  v3 = [(UIViewController *)self presentedViewController];
  v4 = self;
  v5 = v4;
  if (v3)
  {
    do
    {
      v6 = v3;

      v3 = [(UIViewController *)v6 presentedViewController];

      v5 = v6;
    }

    while (v3);
  }

  else
  {
    v6 = v4;
  }

  return v6;
}

- (id)im_visibleViewControllersConfirmingToProtocol:(id)a3
{
  v4 = a3;
  v9 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_64194;
  v7[3] = &unk_2CA070;
  v5 = objc_alloc_init(NSMutableArray);
  v8 = v5;
  [(UIViewController *)self __im_enumerateVisibleChildrenConformingToProtocol:v4 stop:&v9 block:v7];

  return v5;
}

- (void)im_enumerateVisibleChildrenConformingToProtocol:(id)a3 block:(id)a4
{
  if (a4)
  {
    v4 = 0;
    [(UIViewController *)self __im_enumerateVisibleChildrenConformingToProtocol:a3 stop:&v4 block:a4];
  }
}

- (void)im_enumerateChildrenConformingToProtocol:(id)a3 block:(id)a4
{
  if (a4)
  {
    v4 = 0;
    [(UIViewController *)self __im_enumerateChildrenConformingToProtocol:a3 stop:&v4 block:a4];
  }
}

- (void)__im_enumerateVisibleChildrenConformingToProtocol:(id)a3 stop:(BOOL *)a4 block:(id)a5
{
  v8 = a3;
  v9 = a5;
  v17 = v9;
  if (a4)
  {
    if (!v8)
    {
LABEL_4:
      (v17)[2](v17, self, a4);
      goto LABEL_5;
    }
  }

  else
  {
    sub_1E6658(v9, v10, v11, v12, v13, v14, v15, v16);
    if (!v8)
    {
      goto LABEL_4;
    }
  }

  if ([(UIViewController *)self conformsToProtocol:v8])
  {
    goto LABEL_4;
  }

LABEL_5:
  if (!*a4)
  {
    v18 = [(UIViewController *)self bc_childPresentedViewController];
    [v18 __im_enumerateVisibleChildrenConformingToProtocol:v8 stop:a4 block:v17];

    if (!*a4)
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v19 = [(UIViewController *)self im_visibleChildViewControllers];
      v20 = [v19 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v25;
LABEL_9:
        v23 = 0;
        while (1)
        {
          if (*v25 != v22)
          {
            objc_enumerationMutation(v19);
          }

          [*(*(&v24 + 1) + 8 * v23) __im_enumerateVisibleChildrenConformingToProtocol:v8 stop:a4 block:v17];
          if (*a4)
          {
            break;
          }

          if (v21 == ++v23)
          {
            v21 = [v19 countByEnumeratingWithState:&v24 objects:v28 count:16];
            if (v21)
            {
              goto LABEL_9;
            }

            break;
          }
        }
      }
    }
  }
}

- (id)bc_ancestorFullScreenPresentingViewController
{
  v2 = [(UIViewController *)self presentingViewController];
  v3 = [v2 modalPresentationStyle];
  v4 = [v2 presentingViewController];

  if (v4 && (v3 - 3) > 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = [v2 bc_ancestorFullScreenPresentingViewController];
  }

  else
  {
    v5 = v2;
  }

  v6 = v5;

  return v6;
}

- (void)__im_enumerateChildrenConformingToProtocol:(id)a3 stop:(BOOL *)a4 block:(id)a5
{
  v8 = a3;
  v9 = a5;
  v17 = v9;
  if (a4)
  {
    if (!v8)
    {
LABEL_4:
      (v17)[2](v17, self, a4);
      goto LABEL_5;
    }
  }

  else
  {
    sub_1E6690(v9, v10, v11, v12, v13, v14, v15, v16);
    if (!v8)
    {
      goto LABEL_4;
    }
  }

  if ([(UIViewController *)self conformsToProtocol:v8])
  {
    goto LABEL_4;
  }

LABEL_5:
  if (!*a4)
  {
    v18 = [(UIViewController *)self bc_childPresentedViewController];
    [v18 __im_enumerateChildrenConformingToProtocol:v8 stop:a4 block:v17];

    if (!*a4)
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v19 = [(UIViewController *)self bc_childViewControllersForProtocolConformance];
      v20 = [v19 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v25;
LABEL_9:
        v23 = 0;
        while (1)
        {
          if (*v25 != v22)
          {
            objc_enumerationMutation(v19);
          }

          [*(*(&v24 + 1) + 8 * v23) __im_enumerateChildrenConformingToProtocol:v8 stop:a4 block:v17];
          if (*a4)
          {
            break;
          }

          if (v21 == ++v23)
          {
            v21 = [v19 countByEnumeratingWithState:&v24 objects:v28 count:16];
            if (v21)
            {
              goto LABEL_9;
            }

            break;
          }
        }
      }
    }
  }
}

- (void)im_finishOngoingModalTransitionAnimations:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(UIViewController *)self presentedViewController];
    if ([v5 isBeingDismissed])
    {
    }

    else
    {
      v6 = [(UIViewController *)self presentedViewController];
      v7 = [v6 isBeingPresented];

      if (!v7)
      {
        v4[2](v4);
        goto LABEL_7;
      }
    }

    v8 = [(UIViewController *)self presentedViewController];
    v9 = [v8 transitionCoordinator];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_64708;
    v10[3] = &unk_2CA0B8;
    v11 = v4;
    [v9 animateAlongsideTransition:&stru_2CA090 completion:v10];
  }

LABEL_7:
}

- (BOOL)bc_isModelTransitioning
{
  if ([(UIViewController *)self isBeingDismissed]|| [(UIViewController *)self isBeingPresented])
  {
    return 1;
  }

  v4 = [(UIViewController *)self presentationController];
  if (objc_opt_respondsToSelector() & 1) != 0 && ([v4 _transitioningTo])
  {
    v3 = 1;
  }

  else if (objc_opt_respondsToSelector())
  {
    v3 = [v4 _transitioningFrom];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)bc_windowForViewControllerWithFallbackToKeyWindow:(BOOL)a3
{
  v3 = a3;
  v5 = [(UIViewController *)self viewIfLoaded];
  v6 = [v5 window];

  if (!v6)
  {
    v7 = self;
    v8 = [(UIViewController *)v7 parentViewController];
    v9 = [(UIViewController *)v7 presentingViewController];
    v10 = v8 != 0;
    if (v8 | v9)
    {
      v11 = v9;
      do
      {
        if (v10)
        {
          v12 = v8;
        }

        else
        {
          v12 = v11;
        }

        v13 = v12;

        v14 = [(UIViewController *)v13 parentViewController];

        v15 = [(UIViewController *)v13 presentingViewController];

        v10 = v14 != 0;
        v7 = v13;
        v11 = v15;
        v8 = v14;
      }

      while (v14 | v15);
    }

    else
    {
      v13 = v7;
    }

    v16 = [(UIViewController *)v13 viewIfLoaded];
    v6 = [v16 window];

    if (v6)
    {
      v17 = v13;
    }

    else
    {
      v18 = [(UIViewController *)v13 presentedViewController];
      if (v18)
      {
        v19 = v18;
        do
        {
          v17 = v19;

          v19 = [(UIViewController *)v17 presentedViewController];

          v13 = v17;
        }

        while (v19);
      }

      else
      {
        v17 = v13;
      }

      v20 = [(UIViewController *)v17 viewIfLoaded];
      v6 = [v20 window];

      if (!v6 && v3)
      {
        v21 = BCSceneLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v23[0] = 0;
          _os_log_impl(&dword_0, v21, OS_LOG_TYPE_INFO, "No window in view hierarchy, falling back to use UIApplication keyWindow", v23, 2u);
        }

        v6 = +[UIWindow _applicationKeyWindow];
      }
    }
  }

  return v6;
}

- (void)bc_presentViewController:(id)a3 animated:(BOOL)a4 tintColor:(id)a5 completion:(id)a6
{
  v7 = a4;
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = [(UIViewController *)self bc_windowForViewController];
  v14 = [v13 tintColor];
  [v13 setTintColor:v11];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_64AF0;
  v18[3] = &unk_2C7B30;
  v19 = v13;
  v20 = v14;
  v21 = v10;
  v15 = v10;
  v16 = v14;
  v17 = v13;
  [(UIViewController *)self presentViewController:v12 animated:v7 completion:v18];
}

- (id)im_theme
{
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([(UIViewController *)self theme], (v3 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v4 = [(UIViewController *)self parentViewController];
    v5 = v4;
    if (v4)
    {
      [v4 im_theme];
    }

    else
    {
      [IMTheme themeWithIdentifier:kIMThemeIdentifierDefaultPageTheme[0]];
    }
    v3 = ;
  }

  return v3;
}

- (id)im_bookshelfTheme
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
LABEL_6:
    v4 = [(UIViewController *)self parentViewController];
    v5 = v4;
    if (v4)
    {
      [v4 im_bookshelfTheme];
    }

    else
    {
      [IMTheme themeWithIdentifier:kIMThemeIdentifierBookshelfTheme[0]];
    }
    v3 = ;

    goto LABEL_10;
  }

  v3 = [(UIViewController *)self theme];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_6;
  }

  if (!v3)
  {
    goto LABEL_6;
  }

LABEL_10:

  return v3;
}

- (void)im_notifyThemeDidChange
{
  [(UIViewController *)self im_themeDidChange];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = [(UIViewController *)self childViewControllers];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7) im_notifyThemeDidChange];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (id)im_traitCollectionAdjustedForMedusaLevels:(id)a3
{
  v4 = [a3 traitCollectionByModifyingTraits:&stru_2CAFF8];
  if (isPad())
  {
    v5 = [(UIViewController *)self bc_windowForViewController];
    v6 = v5;
    if (v5)
    {
      [v5 bounds];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v15 = +[UIScreen mainScreen];
      [v15 bounds];
      v25.origin.x = v16;
      v25.origin.y = v17;
      v25.size.width = v18;
      v25.size.height = v19;
      v24.origin.x = v8;
      v24.origin.y = v10;
      v24.size.width = v12;
      v24.size.height = v14;
      v20 = CGRectEqualToRect(v24, v25);

      if (!v20)
      {
        v21 = [v4 traitCollectionByModifyingTraits:&stru_2CB018];

        v4 = v21;
      }
    }
  }

  return v4;
}

- (void)bc_notifyLightLevelDidChange:(int64_t)a3
{
  v5 = BUProtocolCast();
  v6 = v5;
  if (v5)
  {
    [v5 lightLevelDidChange:a3];
  }

  v7 = [(UIViewController *)self presentedViewController];

  if (v7)
  {
    v8 = [(UIViewController *)self presentedViewController];
    [v8 bc_notifyLightLevelDidChange:a3];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = [(UIViewController *)self childViewControllers];
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v14 + 1) + 8 * v13) bc_notifyLightLevelDidChange:a3];
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (BCEngagementProvider)bc_engagementProvider
{
  v3 = objc_getAssociatedObject(self, off_33E670);
  if (!v3)
  {
    v3 = [(UIViewController *)self bc_engagementProviderSource];

    if (v3)
    {
      v4 = [(UIViewController *)self bc_engagementProviderSource];
      v3 = [v4 bc_engagementProvider];
    }
  }

  return v3;
}

- (BCEngagementProvider)bc_effectiveEngagementProvider
{
  v2 = [(UIViewController *)self ba_effectiveViewControllerForEngagementProvider];
  v3 = [v2 bc_engagementProvider];

  return v3;
}

- (id)ba_effectiveViewControllerForEngagementProvider
{
  v3 = [(UIViewController *)self bc_engagementProvider];

  if (v3)
  {
    v4 = self;
    goto LABEL_15;
  }

  v5 = [(UIViewController *)self parentViewController];

  if (v5)
  {
    v6 = [(UIViewController *)self parentViewController];
    v4 = [v6 _ba_effectiveViewControllerForEngagementProviderIgnoringViewController:self];
  }

  else
  {
    v7 = [(UIViewController *)self presentingViewController];

    if (!v7)
    {
      v4 = 0;
      goto LABEL_15;
    }

    v8 = [(UIViewController *)self presentingViewController];
    v9 = [v8 bc_deepestVisibleChildViewControllerIncludePresented:0];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = [(UIViewController *)self presentingViewController];
    }

    v6 = v11;

    objc_opt_class();
    v12 = [v6 presentedViewController];
    v13 = BUDynamicCast();

    if (v13 == self || (-[UIViewController topCardSetViewController](v13, "topCardSetViewController"), v14 = objc_claimAutoreleasedReturnValue(), [v14 currentCardViewController], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "topContentViewController"), v16 = objc_claimAutoreleasedReturnValue(), v15, v14, objc_msgSend(v16, "_ba_effectiveViewControllerForEngagementProviderIgnoringViewController:", self), v4 = objc_claimAutoreleasedReturnValue(), v16, !v4))
    {
      v4 = [v6 _ba_effectiveViewControllerForEngagementProviderIgnoringViewController:self];
    }
  }

LABEL_15:

  return v4;
}

- (id)_ba_effectiveViewControllerForEngagementProviderIgnoringViewController:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(UIViewController *)self viewControllers];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v6 = [(UIViewController *)v5 reverseObjectEnumerator];
    v7 = [v6 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v28;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v28 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v27 + 1) + 8 * i);
          v12 = [v11 bc_engagementProvider];

          if (v11 != v4 && v12 != 0)
          {
            v23 = v11;
            goto LABEL_30;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v8);
    }

    goto LABEL_22;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = self;
    v14 = [(UIViewController *)v5 lastNavigationType];
    if (!v14)
    {
      v23 = 0;
      goto LABEL_31;
    }

    v15 = v14;
    if (v14 == &dword_0 + 1)
    {
      v6 = [(UIViewController *)v5 cardStackViewController];
      v16 = [v6 childViewControllers];
      v17 = [v16 indexOfObject:v5];

      if (!v17)
      {
LABEL_22:
        v23 = 0;
LABEL_30:

LABEL_31:
        if (v23)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      }

      objc_opt_class();
      v18 = [v6 childViewControllers];
      v19 = [v18 objectAtIndexedSubscript:v17 - 1];
      v20 = BUDynamicCast();

      v21 = [v20 currentCardViewController];
      v22 = [v21 topContentViewController];

      v23 = [v22 bc_engagementProvider];

      if (v23)
      {
        v23 = v22;
      }
    }

    else
    {
      v24 = [(UIViewController *)v5 focusedIndex];
      if (v15 == &dword_0 + 2)
      {
        v25 = v24 + 1;
      }

      else
      {
        v25 = v24 - 1;
      }

      v6 = [(UIViewController *)v5 cardViewControllerAtIndex:v25];
      v20 = [v6 topContentViewController];
      v23 = [v20 bc_engagementProvider];

      if (v23)
      {
        v20 = v20;
        v23 = v20;
      }
    }

    goto LABEL_30;
  }

LABEL_32:
  v23 = [(UIViewController *)self ba_effectiveViewControllerForEngagementProvider];
LABEL_33:

  return v23;
}

- (id)p_setupStandardUISearchController
{
  v3 = [[UISearchController alloc] initWithSearchResultsController:0];
  [v3 setDimsBackgroundDuringPresentation:0];
  [v3 setHidesNavigationBarDuringPresentation:0];
  v4 = [v3 searchBar];
  [v4 _setAutoDisableCancelButton:0];

  v5 = [(UIViewController *)self navigationItem];
  if (_UISolariumEnabled())
  {
    if (isPhone())
    {
      v6 = 0;
    }

    else
    {
      v6 = 2;
    }
  }

  else
  {
    v6 = 2;
  }

  [v5 setPreferredSearchBarPlacement:v6];
  v7 = [(UIViewController *)self navigationItem];
  [v7 setSearchController:v3];

  v8 = [(UIViewController *)self navigationItem];
  [v8 setHidesSearchBarWhenScrolling:0];

  return v3;
}

- (CGRect)im_frameEnvironmentBounds
{
  if ([(UIViewController *)self isViewLoaded])
  {
    [(UIViewController *)self view];
  }

  else
  {
    +[UIScreen mainScreen];
  }
  v3 = ;
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGRect)im_frameEnvironmentFrame
{
  if ([(UIViewController *)self isViewLoaded])
  {
    v3 = [(UIViewController *)self view];
    [v3 frame];
  }

  else
  {
    v3 = +[UIScreen mainScreen];
    [v3 bounds];
  }

  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = v7;

  v12 = v8;
  v13 = v9;
  v14 = v10;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (UIEdgeInsets)im_frameEnvironmentSafeAreaInsets
{
  if ([(UIViewController *)self isViewLoaded])
  {
    v3 = [(UIViewController *)self view];
    [v3 safeAreaInsets];
    top = v4;
    left = v6;
    bottom = v8;
    right = v10;
  }

  else
  {
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  v12 = top;
  v13 = left;
  v14 = bottom;
  v15 = right;
  result.right = v15;
  result.bottom = v14;
  result.left = v13;
  result.top = v12;
  return result;
}

- (_TtC13BookAnalytics9BATracker)ba_effectiveAnalyticsTracker
{
  v2 = [(UIViewController *)self ba_effectiveViewControllerForAnalyticsTracking];
  v3 = [v2 ba_analyticsTracker];

  return v3;
}

- (id)ba_effectiveViewControllerForAnalyticsTracking
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_12C338;
  v17 = sub_12C348;
  v18 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_12C350;
  v10[3] = &unk_2C7BC0;
  v12 = &v13;
  v10[4] = self;
  v2 = dispatch_semaphore_create(0);
  v11 = v2;
  v3 = objc_retainBlock(v10);
  if (v3)
  {
    if (+[NSThread isMainThread])
    {
      (v3[2])(v3);
    }

    else
    {
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_12C550;
      v8[3] = &unk_2C8398;
      v9 = v3;
      dispatch_async(&_dispatch_main_q, v8);
    }
  }

  v4 = dispatch_time(0, 300000000);
  if (dispatch_semaphore_wait(v2, v4))
  {
    v5 = BALog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1EA5A0(v5);
    }
  }

  v6 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v6;
}

- (id)_ba_effectiveViewControllerForAnalyticsTrackingIgnoringViewController:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(UIViewController *)self viewControllers];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v6 = [(UIViewController *)v5 reverseObjectEnumerator];
    v7 = [v6 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v28;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v28 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v27 + 1) + 8 * i);
          v12 = [v11 ba_analyticsTracker];

          if (v11 != v4 && v12 != 0)
          {
            v23 = v11;
            goto LABEL_30;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v8);
    }

    goto LABEL_22;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = self;
    v14 = [(UIViewController *)v5 lastNavigationType];
    if (!v14)
    {
      v23 = 0;
      goto LABEL_31;
    }

    v15 = v14;
    if (v14 == &dword_0 + 1)
    {
      v6 = [(UIViewController *)v5 cardStackViewController];
      v16 = [v6 childViewControllers];
      v17 = [v16 indexOfObject:v5];

      if (!v17)
      {
LABEL_22:
        v23 = 0;
LABEL_30:

LABEL_31:
        if (v23)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      }

      objc_opt_class();
      v18 = [v6 childViewControllers];
      v19 = [v18 objectAtIndexedSubscript:v17 - 1];
      v20 = BUDynamicCast();

      v21 = [v20 currentCardViewController];
      v22 = [v21 topContentViewController];

      v23 = [v22 ba_analyticsTracker];

      if (v23)
      {
        v23 = v22;
      }
    }

    else
    {
      v24 = [(UIViewController *)v5 focusedIndex];
      if (v15 == &dword_0 + 2)
      {
        v25 = v24 + 1;
      }

      else
      {
        v25 = v24 - 1;
      }

      v6 = [(UIViewController *)v5 cardViewControllerAtIndex:v25];
      v20 = [v6 topContentViewController];
      v23 = [v20 ba_analyticsTracker];

      if (v23)
      {
        v20 = v20;
        v23 = v20;
      }
    }

    goto LABEL_30;
  }

LABEL_32:
  v23 = [(UIViewController *)self ba_effectiveViewControllerForAnalyticsTracking];
LABEL_33:

  return v23;
}

- (id)ba_setupNewAnalyticsTrackerWithName:(id)a3
{
  v4 = a3;
  v5 = [(UIViewController *)self ba_analyticsTracker];
  if (v5)
  {
    v6 = BALog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [v5 name];
      v13 = 138412546;
      v14 = v7;
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "ba_setupAnalyticsTrackerWithName: replacing existing tracker: %@ with: %@", &v13, 0x16u);
    }
  }

  v8 = [(UIViewController *)self ba_overrideParentAnalyticsTracker];
  if (v8 || ([(UIViewController *)self ba_effectiveAnalyticsTracker], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = v8;
  }

  else
  {
    v12 = BALog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1EA5E4(v12);
    }

    v9 = 0;
  }

  v10 = [v9 chainWithName:v4];

  [(UIViewController *)self ba_setAnalyticsTracker:v10];

  return v10;
}

- (id)bc_effectiveViewControllerForNavBarVisibility
{
  objc_opt_class();
  v3 = BUDynamicCast();
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(UIViewController *)self navigationController];
  }

  v6 = v5;

  v7 = self;
  v8 = v7;
  v9 = v7;
  if (!v7 || (v9 = v7, v6 == v7))
  {
LABEL_10:
    v12 = [(UIViewController *)v8 bc_childViewControllerForNavBarVisibility];
    v13 = [v12 bc_effectiveViewControllerForNavBarVisibility];

    if (!v13)
    {
      v13 = v8;
    }

    v10 = v9;
  }

  else
  {
    v10 = v7;
    while (1)
    {
      v11 = [v10 bc_overrideAncestorViewControllerForNavBarVisibility];
      if (v11)
      {
        break;
      }

      v9 = [v10 parentViewController];

      if (v9)
      {
        v10 = v9;
        if (v9 != v6)
        {
          continue;
        }
      }

      goto LABEL_10;
    }

    v13 = v11;
  }

  return v13;
}

- (BOOL)bc_navBarVisible
{
  v2 = objc_getAssociatedObject(self, &off_2CDAA8);
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)bc_setNavBarVisible:(BOOL)a3
{
  v4 = [NSNumber numberWithBool:a3];
  objc_setAssociatedObject(self, &off_2CDAA8, v4, &dword_0 + 1);
}

- (BCCardStackViewController)cardStackViewController
{
  v3 = objc_opt_class();

  return [(UIViewController *)self bc_ancestorViewControllerOfClass:v3 allowPresentingParent:1];
}

- (BCCardViewController)bc_cardViewController
{
  v3 = objc_opt_class();

  return [(UIViewController *)self bc_ancestorViewControllerOfClass:v3 allowPresentingParent:1];
}

- (id)bc_ancestorViewControllerOfClass:(Class)a3 allowPresentingParent:(BOOL)a4
{
  v4 = a4;
  v7 = [(UIViewController *)self parentViewController];
  v8 = v7;
  if (!v4 || v7)
  {
    if (!v4)
    {
      v9 = [(UIViewController *)self presentingViewController];

      if (v8 == v9)
      {
        v10 = [(UIViewController *)self presentingViewController];

        v8 = v10;
      }
    }
  }

  else
  {
    v8 = [(UIViewController *)self presentingViewController];
  }

  if (objc_opt_isKindOfClass())
  {
    v11 = v8;
  }

  else
  {
    v11 = [v8 bc_ancestorViewControllerOfClass:a3 allowPresentingParent:v4];
  }

  v12 = v11;

  return v12;
}

- (id)im_effectiveViewControllerForTabBarVisibility
{
  v2 = self;
  v3 = v2;
  if (v2)
  {
    v4 = v2;
    while (1)
    {
      v5 = [v4 im_overrideAncestorViewControllerForTabBarVisibility];
      if (v5)
      {
        break;
      }

      v6 = [v4 parentViewController];

      v4 = v6;
      if (!v6)
      {
        goto LABEL_5;
      }
    }

    v8 = v5;
  }

  else
  {
LABEL_5:
    v7 = [(UIViewController *)v3 im_childViewControllerForTabBarVisibility];
    v8 = [v7 im_effectiveViewControllerForTabBarVisibility];

    if (!v8)
    {
      v8 = v3;
    }
  }

  return v8;
}

- (BOOL)im_tabBarVisible
{
  v2 = objc_getAssociatedObject(self, &off_2CE5C0);
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)im_setTabBarVisible:(BOOL)a3
{
  v4 = [NSNumber numberWithBool:a3];
  objc_setAssociatedObject(self, &off_2CE5C0, v4, &dword_0 + 1);
}

- (id)bc_effectiveCardPresentingViewController
{
  v3 = [(UIViewController *)self bc_effectiveAncestorOverrideCardPresentingViewController];
  if (!v3)
  {
    v3 = self;
  }

  v4 = [(UIViewController *)v3 bc_childCardPresentingViewController];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  v7 = v6;

  return v6;
}

- (id)bc_effectiveAncestorOverrideCardPresentingViewController
{
  v3 = [(UIViewController *)self parentViewController];

  if (v3)
  {
    v4 = [(UIViewController *)self parentViewController];
    goto LABEL_5;
  }

  v5 = [(UIViewController *)self presentingViewController];

  if (v5)
  {
    v4 = [(UIViewController *)self presentingViewController];
LABEL_5:
    v6 = v4;
    v7 = [v4 bc_effectiveAncestorOverrideCardPresentingViewController];

    if (v7)
    {
      goto LABEL_7;
    }
  }

  v7 = [(UIViewController *)self bc_ancestorOverrideCardPresentingViewController];
LABEL_7:

  return v7;
}

- (void)bc_presentCardViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_176D7C;
  v19 = &unk_2CC630;
  v20 = self;
  v21 = a3;
  v23 = v6;
  v22 = a5;
  v8 = v22;
  v9 = v21;
  v10 = objc_retainBlock(&v16);
  v11 = [(UIViewController *)self presentedViewController:v16];
  v12 = [v11 presentingViewController];

  if (v12 == self)
  {
    v13 = [(UIViewController *)self presentedViewController];
    [v13 dismissViewControllerAnimated:v6 completion:v10];
  }

  else
  {
    (v10[2])(v10);
  }

  v14 = [(UIViewController *)self presentingViewController];
  v15 = [v14 view];
  [v15 setAccessibilityElementsHidden:1];
}

- (void)bc_dismissCardViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  [(UIViewController *)self setValue:&__kCFBooleanFalse forKey:@"bc_isPresentingCardStack"];
  v10 = [(UIViewController *)self presentingViewController];
  v11 = [v10 view];
  [v11 setAccessibilityElementsHidden:0];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_176ED4;
  v13[3] = &unk_2C8398;
  v14 = v8;
  v12 = v8;
  [v9 dismissViewControllerAnimated:v5 completion:v13];
}

- (void)bc_closeToAssetWithCardStackViewController:(id)a3 completion:(id)a4
{
  v4 = objc_retainBlock(a4);
  if (v4)
  {
    v5 = v4;
    v4[2]();
    v4 = v5;
  }
}

- (void)bc_closeAssetWithCardStackViewController:(id)a3 completion:(id)a4
{
  v4 = objc_retainBlock(a4);
  if (v4)
  {
    v5 = v4;
    v4[2]();
    v4 = v5;
  }
}

- (BOOL)bc_isPresentingCardStack
{
  objc_opt_class();
  v3 = objc_getAssociatedObject(self, off_33F708);
  v4 = BUDynamicCast();
  v5 = [v4 BOOLValue];

  return v5;
}

- (void)setBc_isPresentingCardStack:(BOOL)a3
{
  v4 = off_33F708;
  v5 = [NSNumber numberWithBool:a3];
  objc_setAssociatedObject(self, v4, v5, &dword_0 + 1);
}

- (void)bc_dismissIfSafeAnimated:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  v5 = [(UIViewController *)v4 presentedViewController];
  if (v5)
  {
    v6 = v5;
    while (!swift_dynamicCastObjCProtocolConditional())
    {
      v7 = [(UIViewController *)v6 presentedViewController];

      v6 = v7;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

    v10 = v4;
    v4 = v6;
    goto LABEL_9;
  }

LABEL_5:
  v8 = [(UIViewController *)v4 presentedViewController];
  if (v8)
  {
    v9 = v8;
    v10 = [(UIViewController *)v8 presentingViewController];

    if (v10)
    {
      [(UIViewController *)v10 dismissViewControllerAnimated:v3 completion:0];
LABEL_9:
    }
  }
}

@end