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
- (BOOL)im_isAncestorOfChildViewController:(id)controller;
- (BOOL)im_isCompactHeight;
- (BOOL)im_isCompactWidth;
- (BOOL)im_tabBarVisible;
- (BOOL)isSupportedInterfaceOrientation:(int64_t)orientation;
- (BOOL)usesBrightonAutorotationAPI;
- (CGRect)im_frameEnvironmentBounds;
- (CGRect)im_frameEnvironmentFrame;
- (UIEdgeInsets)im_frameEnvironmentSafeAreaInsets;
- (_TtC13BookAnalytics9BATracker)ba_effectiveAnalyticsTracker;
- (id)_ba_effectiveViewControllerForAnalyticsTrackingIgnoringViewController:(id)controller;
- (id)_ba_effectiveViewControllerForEngagementProviderIgnoringViewController:(id)controller;
- (id)_bc_analyticsAncestorPresentedViewController;
- (id)ba_effectiveViewControllerForAnalyticsTracking;
- (id)ba_effectiveViewControllerForEngagementProvider;
- (id)ba_setupNewAnalyticsTrackerWithName:(id)name;
- (id)bc_ancestorFullScreenPresentingViewController;
- (id)bc_ancestorViewControllerOfClass:(Class)class allowPresentingParent:(BOOL)parent;
- (id)bc_childPresentedViewController;
- (id)bc_contextualPresentedViewController;
- (id)bc_contextualPresentingViewController;
- (id)bc_deepestPresentedViewController;
- (id)bc_deepestVisibleChildViewControllerIncludePresented:(BOOL)presented;
- (id)bc_descendentPresentedViewController;
- (id)bc_effectiveAncestorOverrideCardPresentingViewController;
- (id)bc_effectiveCardPresentingViewController;
- (id)bc_effectiveViewControllerForNavBarVisibility;
- (id)bc_firstVisibleChildViewControllerOfClass:(Class)class includePresented:(BOOL)presented;
- (id)bc_windowForViewControllerWithFallbackToKeyWindow:(BOOL)window;
- (id)im_ancestorConformingToProtocol:(id)protocol;
- (id)im_ancestorFlowControllerConformingToProtocol:(id)protocol;
- (id)im_ancestorValueForKey:(id)key conformingToProtocol:(id)protocol fromViewControllersConformingToProtocol:(id)toProtocol;
- (id)im_ancestorViewControllerConformingToProtocol:(id)protocol includePresenting:(BOOL)presenting;
- (id)im_bookshelfTheme;
- (id)im_childValueForKey:(id)key conformingToProtocol:(id)protocol fromViewControllersConformingToProtocol:(id)toProtocol;
- (id)im_effectiveViewControllerForTabBarVisibility;
- (id)im_firstVisibleChildConformingToProtocol:(id)protocol stopIfDescendentConformsToProtocol:(id)toProtocol includePresented:(BOOL)presented validateItem:(id)item;
- (id)im_recursiveDescriptionVisibleTree:(BOOL)tree;
- (id)im_theme;
- (id)im_traitCollectionAdjustedForMedusaLevels:(id)levels;
- (id)im_visibleViewControllersConfirmingToProtocol:(id)protocol;
- (id)p_setupStandardUISearchController;
- (id)rasterizedImage;
- (int64_t)IMDeviceOrientation;
- (int64_t)preferredInterfaceOrientationGivenOrientation:(int64_t)orientation;
- (unint64_t)bc_currentLifeCycleState;
- (void)__im_enumerateChildrenConformingToProtocol:(id)protocol stop:(BOOL *)stop block:(id)block;
- (void)__im_enumerateVisibleChildrenConformingToProtocol:(id)protocol stop:(BOOL *)stop block:(id)block;
- (void)_bc_analyticsSetVisibility:(BOOL)visibility;
- (void)_bc_analyticsUpdateVisibilityOfDescendants;
- (void)_bc_analyticsUpdateVisibilityOfSelf;
- (void)_bc_analyticsUpdateVisibilityOfSelfWithParent:(id)parent parentVisibility:(BOOL)visibility;
- (void)_setNotifiedAnalyticsVisibilityWillDisappear:(BOOL)disappear;
- (void)bc_analyticsSubtreeForceEndSession;
- (void)bc_analyticsVisibilitySubtreeDidDisappear;
- (void)bc_analyticsVisibilitySubtreeWillDisappear;
- (void)bc_analyticsVisibilityUpdateSubtree;
- (void)bc_closeAssetWithCardStackViewController:(id)controller completion:(id)completion;
- (void)bc_closeToAssetWithCardStackViewController:(id)controller completion:(id)completion;
- (void)bc_dismissCardViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)bc_dismissIfSafeAnimated:(BOOL)animated;
- (void)bc_notifyLightLevelDidChange:(int64_t)change;
- (void)bc_presentCardViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)bc_presentViewController:(id)controller animated:(BOOL)animated tintColor:(id)color completion:(id)completion;
- (void)bc_setCurrentLifeCycleState:(unint64_t)state;
- (void)bc_setNavBarVisible:(BOOL)visible;
- (void)cleanupAfterTransition:(id)transition;
- (void)im_dismissAnimated:(BOOL)animated immediate:(BOOL)immediate;
- (void)im_enumerateChildrenConformingToProtocol:(id)protocol block:(id)block;
- (void)im_enumerateVisibleChildrenConformingToProtocol:(id)protocol block:(id)block;
- (void)im_finishOngoingModalTransitionAnimations:(id)animations;
- (void)im_notifyThemeDidChange;
- (void)im_setTabBarVisible:(BOOL)visible;
- (void)prepareForTransition:(id)transition;
- (void)refreshStatusBarAppearance;
- (void)setBc_isPresentingCardStack:(BOOL)stack;
@end

@implementation UIViewController

- (unint64_t)bc_currentLifeCycleState
{
  v2 = objc_getAssociatedObject(self, off_33D080);
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)bc_setCurrentLifeCycleState:(unint64_t)state
{
  v7 = NSStringFromSelector("bc_currentLifeCycleState");
  [(UIViewController *)self willChangeValueForKey:v7];
  v5 = off_33D080;
  v6 = [NSNumber numberWithUnsignedInteger:state];
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

  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)bc_analyticsVisibilityUpdateSubtree
{
  [(UIViewController *)self _bc_analyticsUpdateVisibilityOfSelf];

  [(UIViewController *)self _bc_analyticsUpdateVisibilityOfDescendants];
}

- (void)bc_analyticsVisibilitySubtreeWillDisappear
{
  bc_childPresentedViewController = [(UIViewController *)self bc_childPresentedViewController];
  [bc_childPresentedViewController bc_analyticsVisibilitySubtreeWillDisappear];
  if ([(UIViewController *)self bc_analyticsVisibility]&& ![(UIViewController *)self _bc_analyticsNotifiedWillDisappear])
  {
    [(UIViewController *)self _setNotifiedAnalyticsVisibilityWillDisappear:1];
    [(UIViewController *)self bc_analyticsVisibilityWillDisappear];
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  childViewControllers = [(UIViewController *)self childViewControllers];
  v5 = [childViewControllers countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(childViewControllers);
        }

        [*(*(&v9 + 1) + 8 * v8) bc_analyticsVisibilitySubtreeWillDisappear];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [childViewControllers countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)bc_analyticsVisibilitySubtreeDidDisappear
{
  [(UIViewController *)self _bc_analyticsSetVisibility:0];
  bc_childPresentedViewController = [(UIViewController *)self bc_childPresentedViewController];
  [bc_childPresentedViewController bc_analyticsVisibilitySubtreeDidDisappear];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  childViewControllers = [(UIViewController *)self childViewControllers];
  v5 = [childViewControllers countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(childViewControllers);
        }

        [*(*(&v9 + 1) + 8 * v8) bc_analyticsVisibilitySubtreeDidDisappear];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [childViewControllers countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)bc_analyticsSubtreeForceEndSession
{
  [(UIViewController *)self bc_analyticsForceEndSession];
  bc_childPresentedViewController = [(UIViewController *)self bc_childPresentedViewController];
  [bc_childPresentedViewController bc_analyticsSubtreeForceEndSession];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  childViewControllers = [(UIViewController *)self childViewControllers];
  v5 = [childViewControllers countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(childViewControllers);
        }

        [*(*(&v9 + 1) + 8 * v8) bc_analyticsSubtreeForceEndSession];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [childViewControllers countByEnumeratingWithState:&v9 objects:v13 count:16];
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
    childViewControllers = [(UIViewController *)self childViewControllers];
    v3 = [childViewControllers countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v3)
    {
      v5 = *v9;
      while (2)
      {
        for (i = 0; i != v3; i = i + 1)
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(childViewControllers);
          }

          if ([*(*(&v8 + 1) + 8 * i) bc_analyticsVisibilityIsObscuredWhenSubtreePresented])
          {
            LOBYTE(v3) = 1;
            goto LABEL_13;
          }
        }

        v3 = [childViewControllers countByEnumeratingWithState:&v8 objects:v12 count:16];
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

- (void)_bc_analyticsSetVisibility:(BOOL)visibility
{
  visibilityCopy = visibility;
  if ([(UIViewController *)self bc_analyticsVisibility]!= visibility)
  {
    v5 = off_33D088;
    v6 = [NSNumber numberWithBool:visibilityCopy];
    objc_setAssociatedObject(self, v5, v6, &dword_0 + 1);

    if (visibilityCopy)
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

  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)_setNotifiedAnalyticsVisibilityWillDisappear:(BOOL)disappear
{
  v4 = off_33D090;
  v5 = [NSNumber numberWithBool:disappear];
  objc_setAssociatedObject(self, v4, v5, &dword_0 + 1);
}

- (BOOL)_bc_analyticsComputeVisibility
{
  viewIfLoaded = [(UIViewController *)self viewIfLoaded];
  window = [viewIfLoaded window];
  if (!window || ([viewIfLoaded isHidden] & 1) != 0 || !-[UIViewController bc_analyticsVisibilityOfSelf](self, "bc_analyticsVisibilityOfSelf"))
  {
    goto LABEL_9;
  }

  _bc_analyticsIsObscuredByPresentedViewController = [(UIViewController *)self _bc_analyticsIsObscuredByPresentedViewController];

  if ((_bc_analyticsIsObscuredByPresentedViewController & 1) == 0)
  {
    parentViewController = [(UIViewController *)self parentViewController];
    window = parentViewController;
    if (!parentViewController)
    {
      presentingViewController = [(UIViewController *)self presentingViewController];
      presentedViewController = [presentingViewController presentedViewController];

      if (presentedViewController == self)
      {
        _bc_analyticsComputeVisibility = 1;
      }

      else
      {
        window2 = [viewIfLoaded window];
        rootViewController = [window2 rootViewController];

        _bc_analyticsComputeVisibility = rootViewController == self;
      }

      goto LABEL_10;
    }

    if ([parentViewController bc_analyticsVisibilityOfChild:self])
    {
      _bc_analyticsComputeVisibility = [window _bc_analyticsComputeVisibility];
LABEL_10:

      goto LABEL_11;
    }

LABEL_9:
    _bc_analyticsComputeVisibility = 0;
    goto LABEL_10;
  }

  _bc_analyticsComputeVisibility = 0;
LABEL_11:

  return _bc_analyticsComputeVisibility;
}

- (BOOL)_bc_analyticsIsObscuredByPresentedViewController
{
  presentedViewController = [(UIViewController *)self presentedViewController];
  if (!presentedViewController)
  {
    presentedViewController = [(UIViewController *)self _bc_analyticsAncestorPresentedViewController];
  }

  bc_analyticsVisibilityIsObscuredWhenPresented = [presentedViewController bc_analyticsVisibilityIsObscuredWhenPresented];

  return bc_analyticsVisibilityIsObscuredWhenPresented;
}

- (id)_bc_analyticsAncestorPresentedViewController
{
  parentViewController = [(UIViewController *)self parentViewController];
  presentedViewController = [parentViewController presentedViewController];
  if (!presentedViewController)
  {
    presentingViewController = [(UIViewController *)self presentingViewController];
    presentedViewController = [presentingViewController _bc_analyticsAncestorPresentedViewController];
  }

  return presentedViewController;
}

- (void)_bc_analyticsUpdateVisibilityOfSelf
{
  _bc_analyticsComputeVisibility = [(UIViewController *)self _bc_analyticsComputeVisibility];

  [(UIViewController *)self _bc_analyticsSetVisibility:_bc_analyticsComputeVisibility];
}

- (void)_bc_analyticsUpdateVisibilityOfSelfWithParent:(id)parent parentVisibility:(BOOL)visibility
{
  if (visibility && [parent bc_analyticsVisibilityOfChild:self])
  {
    viewIfLoaded = [(UIViewController *)self viewIfLoaded];
    window = [viewIfLoaded window];
    if (window && ([viewIfLoaded isHidden] & 1) == 0 && -[UIViewController bc_analyticsVisibilityOfSelf](self, "bc_analyticsVisibilityOfSelf"))
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
  bc_childPresentedViewController = [(UIViewController *)self bc_childPresentedViewController];
  [bc_childPresentedViewController bc_analyticsVisibilityUpdateSubtree];
  bc_analyticsVisibility = [(UIViewController *)self bc_analyticsVisibility];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  childViewControllers = [(UIViewController *)self childViewControllers];
  v6 = [childViewControllers countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(childViewControllers);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        [v10 _bc_analyticsUpdateVisibilityOfSelfWithParent:self parentVisibility:bc_analyticsVisibility];
        [v10 _bc_analyticsUpdateVisibilityOfDescendants];
      }

      v7 = [childViewControllers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)prepareForTransition:(id)transition
{
  transitionCopy = transition;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  childViewControllers = [(UIViewController *)self childViewControllers];
  v6 = [childViewControllers countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(childViewControllers);
        }

        [*(*(&v10 + 1) + 8 * v9) prepareForTransition:transitionCopy];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [childViewControllers countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)cleanupAfterTransition:(id)transition
{
  transitionCopy = transition;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  childViewControllers = [(UIViewController *)self childViewControllers];
  v6 = [childViewControllers countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(childViewControllers);
        }

        [*(*(&v10 + 1) + 8 * v9) cleanupAfterTransition:transitionCopy];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [childViewControllers countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (int64_t)IMDeviceOrientation
{
  interfaceOrientation = [(UIViewController *)self interfaceOrientation];
  v3 = +[UIDevice currentDevice];
  orientation = [v3 orientation];

  if ((orientation - 1) >= 4)
  {
    return interfaceOrientation;
  }

  else
  {
    return orientation;
  }
}

- (BOOL)isSupportedInterfaceOrientation:(int64_t)orientation
{
  orientationCopy = orientation;
  supportedInterfaceOrientations = [(UIViewController *)self supportedInterfaceOrientations];
  return (supportedInterfaceOrientations & (1 << orientationCopy)) != 0 || supportedInterfaceOrientations == 0;
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

- (int64_t)preferredInterfaceOrientationGivenOrientation:(int64_t)orientation
{
  if (![(UIViewController *)self isSupportedInterfaceOrientation:?])
  {
    orientation = [(UIViewController *)self IMDeviceOrientation];
    if (![(UIViewController *)self isSupportedInterfaceOrientation:orientation])
    {
      orientation = 1;
      if (![(UIViewController *)self isSupportedInterfaceOrientation:1])
      {
        orientation = 3;
        if (![(UIViewController *)self isSupportedInterfaceOrientation:3])
        {
          orientation = 4;
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

  return orientation;
}

- (void)refreshStatusBarAppearance
{
  view = [(UIViewController *)self view];
  window = [view window];
  rootViewController = [window rootViewController];
  [rootViewController setNeedsStatusBarAppearanceUpdate];
}

- (id)im_recursiveDescriptionVisibleTree:(BOOL)tree
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_62788;
  v5[3] = &unk_2CA048;
  treeCopy = tree;
  v3 = [(UIViewController *)self im_recursiveDescriptionChildrenBlock:v5];

  return v3;
}

- (id)rasterizedImage
{
  view = [(UIViewController *)self view];
  [view bounds];
  v12.width = v4;
  v12.height = v5;
  UIGraphicsBeginImageContextWithOptions(v12, 1, 0.0);

  CurrentContext = UIGraphicsGetCurrentContext();
  view2 = [(UIViewController *)self view];
  layer = [view2 layer];
  [layer renderInContext:CurrentContext];

  v9 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v9;
}

- (BOOL)im_hasValidWidthAndHeightTraitCollection
{
  traitCollection = [(UIViewController *)self traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];
  horizontalSizeClass2 = [traitCollection horizontalSizeClass];
  verticalSizeClass = [traitCollection verticalSizeClass];
  verticalSizeClass2 = [traitCollection verticalSizeClass];
  v7 = (horizontalSizeClass == &dword_0 + 1 || horizontalSizeClass2 == &dword_0 + 2) && (verticalSizeClass == &dword_0 + 1 || verticalSizeClass2 == &dword_0 + 2);

  return v7;
}

- (BOOL)im_isCompactWidth
{
  traitCollection = [(UIViewController *)self traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];
  horizontalSizeClass2 = [traitCollection horizontalSizeClass];
  if (horizontalSizeClass != &dword_0 + 1 && horizontalSizeClass2 != &dword_0 + 2)
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    BCReportAssertionFailureWithMessage("/Library/Caches/com.apple.xbs/Sources/Alder/frameworks/BookCore/BookCore/ViewControllers/UIViewController+BCAdditions.m", 170, "[UIViewController(IMAdditions) im_isCompactWidth]", "NO", @"<%@: %p> has no trait information.", v7, v8, v9, v6);
  }

  return horizontalSizeClass == &dword_0 + 1;
}

- (BOOL)im_isCompactHeight
{
  traitCollection = [(UIViewController *)self traitCollection];
  verticalSizeClass = [traitCollection verticalSizeClass];
  verticalSizeClass2 = [traitCollection verticalSizeClass];
  if (verticalSizeClass != &dword_0 + 1 && verticalSizeClass2 != &dword_0 + 2)
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    BCReportAssertionFailureWithMessage("/Library/Caches/com.apple.xbs/Sources/Alder/frameworks/BookCore/BookCore/ViewControllers/UIViewController+BCAdditions.m", 190, "[UIViewController(IMAdditions) im_isCompactHeight]", "NO", @"<%@: %p> has no trait information.", v7, v8, v9, v6);
  }

  return verticalSizeClass == &dword_0 + 1;
}

- (void)im_dismissAnimated:(BOOL)animated immediate:(BOOL)immediate
{
  animatedCopy = animated;
  v6 = [(UIViewController *)self parentViewController:animated];

  if (v6)
  {
    parentViewController = [(UIViewController *)self parentViewController];
    [parentViewController im_dismissChildViewController:self animated:animatedCopy];
  }

  else
  {
    presentingViewController = [(UIViewController *)self presentingViewController];
    presentedViewController = [presentingViewController presentedViewController];

    if (presentedViewController == self)
    {

      [(UIViewController *)self dismissViewControllerAnimated:animatedCopy completion:0];
    }
  }
}

- (id)bc_contextualPresentingViewController
{
  parentViewController = [(UIViewController *)self parentViewController];
  if (parentViewController || ([(UIViewController *)self presentingViewController], (parentViewController = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = parentViewController;
    selfCopy = [parentViewController bc_contextualPresentingViewController];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)bc_contextualPresentedViewController
{
  presentedViewController = [(UIViewController *)self presentedViewController];
  bc_contextualPresentingViewController = [(UIViewController *)self bc_contextualPresentingViewController];
  v5 = bc_contextualPresentingViewController;
  if (presentedViewController)
  {
    if ([bc_contextualPresentingViewController im_isAncestorOfChildViewController:presentedViewController])
    {
      v6 = presentedViewController;
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
  presentedViewController = [(UIViewController *)self presentedViewController];
  if (presentedViewController)
  {
    if ([(UIViewController *)self im_isAncestorOfChildViewController:presentedViewController])
    {
      v4 = presentedViewController;
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
  presentedViewController = [(UIViewController *)self presentedViewController];
  presentingViewController = [presentedViewController presentingViewController];
  if (presentingViewController == self)
  {
    v5 = presentedViewController;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (BOOL)im_isAncestorOfChildViewController:(id)controller
{
  controllerCopy = controller;
  v5 = controllerCopy;
  v6 = 0;
  if (controllerCopy != self && controllerCopy)
  {
    while (1)
    {
      parentViewController = [(UIViewController *)v5 parentViewController];
      v8 = parentViewController;
      if (parentViewController)
      {
        presentingViewController = parentViewController;
      }

      else
      {
        presentingViewController = [(UIViewController *)v5 presentingViewController];
      }

      v10 = presentingViewController;

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

- (id)im_childValueForKey:(id)key conformingToProtocol:(id)protocol fromViewControllersConformingToProtocol:(id)toProtocol
{
  keyCopy = key;
  protocolCopy = protocol;
  toProtocolCopy = toProtocol;
  if ([(UIViewController *)self conformsToProtocol:toProtocolCopy])
  {
    [(UIViewController *)self valueForKey:keyCopy];
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
        if ([v16 conformsToProtocol:protocolCopy])
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
  bc_childViewControllersForProtocolConformance = [(UIViewController *)self bc_childViewControllersForProtocolConformance];
  v19 = [bc_childViewControllersForProtocolConformance countByEnumeratingWithState:&v25 objects:v33 count:16];
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
        objc_enumerationMutation(bc_childViewControllersForProtocolConformance);
      }

      v23 = [*(*(&v25 + 1) + 8 * v22) im_childValueForKey:keyCopy conformingToProtocol:protocolCopy fromViewControllersConformingToProtocol:toProtocolCopy];
      if (v23)
      {
        break;
      }

      if (v20 == ++v22)
      {
        v20 = [bc_childViewControllersForProtocolConformance countByEnumeratingWithState:&v25 objects:v33 count:16];
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

    bc_childViewControllersForProtocolConformance = [(UIViewController *)self bc_childPresentedViewController];
    v23 = [bc_childViewControllersForProtocolConformance im_ancestorValueForKey:keyCopy conformingToProtocol:protocolCopy fromViewControllersConformingToProtocol:toProtocolCopy];
  }

  v17 = v23;

LABEL_22:

  return v17;
}

- (id)im_ancestorValueForKey:(id)key conformingToProtocol:(id)protocol fromViewControllersConformingToProtocol:(id)toProtocol
{
  keyCopy = key;
  protocolCopy = protocol;
  toProtocolCopy = toProtocol;
  if ([(UIViewController *)self conformsToProtocol:toProtocolCopy])
  {
    [(UIViewController *)self valueForKey:keyCopy];
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
        if ([v16 conformsToProtocol:{protocolCopy, v21}])
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

  parentViewController = [(UIViewController *)self parentViewController];
  v17 = [parentViewController im_ancestorValueForKey:keyCopy conformingToProtocol:protocolCopy fromViewControllersConformingToProtocol:toProtocolCopy];

  if (!v17)
  {
    presentingViewController = [(UIViewController *)self presentingViewController];
    v17 = [presentingViewController im_ancestorValueForKey:keyCopy conformingToProtocol:protocolCopy fromViewControllersConformingToProtocol:toProtocolCopy];
  }

LABEL_14:

  return v17;
}

- (id)im_ancestorViewControllerConformingToProtocol:(id)protocol includePresenting:(BOOL)presenting
{
  presentingCopy = presenting;
  protocolCopy = protocol;
  if ([(UIViewController *)self conformsToProtocol:protocolCopy])
  {
    selfCopy = self;
    goto LABEL_10;
  }

  parentViewController = [(UIViewController *)self parentViewController];
  if (parentViewController)
  {
    v9 = parentViewController;
    v10 = protocolCopy;
    v11 = presentingCopy;
LABEL_5:
    selfCopy = [parentViewController im_ancestorViewControllerConformingToProtocol:v10 includePresenting:v11];

    goto LABEL_10;
  }

  if (presentingCopy)
  {
    parentViewController = [(UIViewController *)self presentingViewController];
    if (parentViewController)
    {
      v9 = parentViewController;
      v10 = protocolCopy;
      v11 = 1;
      goto LABEL_5;
    }
  }

  selfCopy = 0;
LABEL_10:

  return selfCopy;
}

- (id)im_ancestorConformingToProtocol:(id)protocol
{
  protocolCopy = protocol;
  selfCopy = self;
  parentViewController = [(UIViewController *)selfCopy parentViewController];
  v7 = parentViewController;
  if (parentViewController)
  {
    presentingViewController = parentViewController;
  }

  else
  {
    presentingViewController = [(UIViewController *)selfCopy presentingViewController];
  }

  v9 = presentingViewController;

  v10 = 0;
  if (selfCopy)
  {
    do
    {
      if ([(UIViewController *)selfCopy conformsToProtocol:protocolCopy])
      {
        v23 = selfCopy;
        v20 = v23;
        goto LABEL_21;
      }

      viewIfLoaded = [(UIViewController *)selfCopy viewIfLoaded];
      window = [viewIfLoaded window];

      if (window)
      {
        viewIfLoaded2 = [(UIViewController *)selfCopy viewIfLoaded];
        window2 = [viewIfLoaded2 window];

        v10 = window2;
      }

      v15 = v9;

      parentViewController2 = [(UIViewController *)v15 parentViewController];
      v17 = parentViewController2;
      if (parentViewController2)
      {
        presentingViewController2 = parentViewController2;
      }

      else
      {
        presentingViewController2 = [(UIViewController *)v15 presentingViewController];
      }

      v9 = presentingViewController2;

      selfCopy = v15;
    }

    while (v15);
    if (v10)
    {
      v19 = [v10 im_ancestorConformingToProtocol:protocolCopy];
      if (v19)
      {
        v20 = v19;
        goto LABEL_20;
      }
    }
  }

  v21 = +[UIApplication jsa_sharedApplicationIfNotExtension];
  delegate = [v21 delegate];

  if ([delegate conformsToProtocol:protocolCopy])
  {
    v20 = delegate;
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

- (id)im_ancestorFlowControllerConformingToProtocol:(id)protocol
{
  protocolCopy = protocol;
  v5 = [(UIViewController *)self im_ancestorValueForKey:@"flowControllers" conformingToProtocol:protocolCopy fromViewControllersConformingToProtocol:&OBJC_PROTOCOL___IMFlowControllerHosting];
  if (!v5)
  {
    viewIfLoaded = [(UIViewController *)self viewIfLoaded];
    window = [viewIfLoaded window];

    windowScene = [window windowScene];
    delegate = [windowScene delegate];
    objc_opt_class();
    v38 = BUDynamicCast();
    if ([v38 conformsToProtocol:&OBJC_PROTOCOL___IMFlowControllerHosting])
    {
      v34 = windowScene;
      v36 = delegate;
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
        v14 = window;
        v15 = 0;
        while (1)
        {
          if (*v48 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v16 = *(*(&v47 + 1) + 8 * v15);
          if ([v16 conformsToProtocol:protocolCopy])
          {
            break;
          }

          if (v12 == ++v15)
          {
            v12 = [v10 countByEnumeratingWithState:&v47 objects:v53 count:16];
            window = v14;
            if (v12)
            {
              goto LABEL_5;
            }

            goto LABEL_11;
          }
        }

        v5 = v16;

        window = v14;
        windowScene = v34;
        delegate = v36;
        if (v5)
        {
          goto LABEL_28;
        }
      }

      else
      {
LABEL_11:

        windowScene = v34;
        delegate = v36;
      }
    }

    objc_opt_class();
    v17 = BUDynamicCast();
    controller = [v17 controller];
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
        v35 = window;
        v37 = delegate;
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
            if ([v23 conformsToProtocol:protocolCopy])
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
        window = v35;
        delegate = v37;
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
      delegate2 = [v24 delegate];

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
              if ([v32 conformsToProtocol:protocolCopy])
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

- (id)im_firstVisibleChildConformingToProtocol:(id)protocol stopIfDescendentConformsToProtocol:(id)toProtocol includePresented:(BOOL)presented validateItem:(id)item
{
  presentedCopy = presented;
  protocolCopy = protocol;
  toProtocolCopy = toProtocol;
  itemCopy = item;
  if (toProtocolCopy && ([(UIViewController *)self conformsToProtocol:toProtocolCopy]& 1) != 0)
  {
    v13 = 0;
  }

  else if (!presentedCopy || (-[UIViewController bc_childPresentedViewController](self, "bc_childPresentedViewController"), v14 = objc_claimAutoreleasedReturnValue(), v14, !v14) || (-[UIViewController bc_childPresentedViewController](self, "bc_childPresentedViewController"), v15 = objc_claimAutoreleasedReturnValue(), [v15 im_firstVisibleChildConformingToProtocol:protocolCopy stopIfDescendentConformsToProtocol:toProtocolCopy includePresented:1 validateItem:itemCopy], v13 = objc_claimAutoreleasedReturnValue(), v15, !v13))
  {
    if ([(UIViewController *)self conformsToProtocol:protocolCopy]&& (!itemCopy || [(UIViewController *)self im_firstVisibleChildValidateWithItem:itemCopy]) && (v16 = self) != 0)
    {
      v13 = v16;
    }

    else
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      im_visibleChildViewControllers = [(UIViewController *)self im_visibleChildViewControllers];
      v18 = [im_visibleChildViewControllers countByEnumeratingWithState:&v24 objects:v28 count:16];
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
              objc_enumerationMutation(im_visibleChildViewControllers);
            }

            v22 = [*(*(&v24 + 1) + 8 * i) im_firstVisibleChildConformingToProtocol:protocolCopy stopIfDescendentConformsToProtocol:toProtocolCopy includePresented:presentedCopy validateItem:itemCopy];
            if (v22)
            {
              v13 = v22;
              goto LABEL_22;
            }
          }

          v19 = [im_visibleChildViewControllers countByEnumeratingWithState:&v24 objects:v28 count:16];
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

- (id)bc_firstVisibleChildViewControllerOfClass:(Class)class includePresented:(BOOL)presented
{
  presentedCopy = presented;
  if (!presented || (-[UIViewController bc_childPresentedViewController](self, "bc_childPresentedViewController"), v7 = objc_claimAutoreleasedReturnValue(), v7, !v7) || (-[UIViewController bc_childPresentedViewController](self, "bc_childPresentedViewController"), v8 = objc_claimAutoreleasedReturnValue(), [v8 bc_firstVisibleChildViewControllerOfClass:class includePresented:1], v9 = objc_claimAutoreleasedReturnValue(), v8, !v9))
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
      im_visibleChildViewControllers = [(UIViewController *)self im_visibleChildViewControllers];
      v12 = [im_visibleChildViewControllers countByEnumeratingWithState:&v18 objects:v22 count:16];
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
              objc_enumerationMutation(im_visibleChildViewControllers);
            }

            v16 = [*(*(&v18 + 1) + 8 * i) bc_firstVisibleChildViewControllerOfClass:class includePresented:presentedCopy];
            if (v16)
            {
              v9 = v16;
              goto LABEL_17;
            }
          }

          v13 = [im_visibleChildViewControllers countByEnumeratingWithState:&v18 objects:v22 count:16];
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

- (id)bc_deepestVisibleChildViewControllerIncludePresented:(BOOL)presented
{
  presentedCopy = presented;
  if (!presented || (-[UIViewController bc_childPresentedViewController](self, "bc_childPresentedViewController"), v5 = objc_claimAutoreleasedReturnValue(), v5, !v5) || (-[UIViewController bc_childPresentedViewController](self, "bc_childPresentedViewController"), v6 = objc_claimAutoreleasedReturnValue(), [v6 bc_deepestVisibleChildViewControllerIncludePresented:1], selfCopy = objc_claimAutoreleasedReturnValue(), v6, !selfCopy))
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    im_visibleChildViewControllers = [(UIViewController *)self im_visibleChildViewControllers];
    v9 = [im_visibleChildViewControllers countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(im_visibleChildViewControllers);
          }

          v13 = [*(*(&v15 + 1) + 8 * i) bc_deepestVisibleChildViewControllerIncludePresented:presentedCopy];
          if (v13)
          {
            selfCopy = v13;

            goto LABEL_14;
          }
        }

        v10 = [im_visibleChildViewControllers countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    selfCopy = self;
  }

LABEL_14:

  return selfCopy;
}

+ (id)bc_presentingViewController
{
  v2 = +[UIApplication jsa_sharedApplicationIfNotExtension];
  connectedScenes = [v2 connectedScenes];
  allObjects = [connectedScenes allObjects];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = allObjects;
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
            windows = [v10 windows];
            v21 = 0u;
            v22 = 0u;
            v23 = 0u;
            v24 = 0u;
            v12 = windows;
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
                    rootViewController = [v17 rootViewController];
                    bc_deepestPresentedViewController = [rootViewController bc_deepestPresentedViewController];

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
      bc_deepestPresentedViewController = 0;
    }

    while (v7);
  }

  else
  {
    bc_deepestPresentedViewController = 0;
  }

LABEL_22:

  return bc_deepestPresentedViewController;
}

- (id)bc_deepestPresentedViewController
{
  presentedViewController = [(UIViewController *)self presentedViewController];
  selfCopy = self;
  v5 = selfCopy;
  if (presentedViewController)
  {
    do
    {
      v6 = presentedViewController;

      presentedViewController = [(UIViewController *)v6 presentedViewController];

      v5 = v6;
    }

    while (presentedViewController);
  }

  else
  {
    v6 = selfCopy;
  }

  return v6;
}

- (id)im_visibleViewControllersConfirmingToProtocol:(id)protocol
{
  protocolCopy = protocol;
  v9 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_64194;
  v7[3] = &unk_2CA070;
  v5 = objc_alloc_init(NSMutableArray);
  v8 = v5;
  [(UIViewController *)self __im_enumerateVisibleChildrenConformingToProtocol:protocolCopy stop:&v9 block:v7];

  return v5;
}

- (void)im_enumerateVisibleChildrenConformingToProtocol:(id)protocol block:(id)block
{
  if (block)
  {
    v4 = 0;
    [(UIViewController *)self __im_enumerateVisibleChildrenConformingToProtocol:protocol stop:&v4 block:block];
  }
}

- (void)im_enumerateChildrenConformingToProtocol:(id)protocol block:(id)block
{
  if (block)
  {
    v4 = 0;
    [(UIViewController *)self __im_enumerateChildrenConformingToProtocol:protocol stop:&v4 block:block];
  }
}

- (void)__im_enumerateVisibleChildrenConformingToProtocol:(id)protocol stop:(BOOL *)stop block:(id)block
{
  protocolCopy = protocol;
  blockCopy = block;
  v17 = blockCopy;
  if (stop)
  {
    if (!protocolCopy)
    {
LABEL_4:
      (v17)[2](v17, self, stop);
      goto LABEL_5;
    }
  }

  else
  {
    sub_1E6658(blockCopy, v10, v11, v12, v13, v14, v15, v16);
    if (!protocolCopy)
    {
      goto LABEL_4;
    }
  }

  if ([(UIViewController *)self conformsToProtocol:protocolCopy])
  {
    goto LABEL_4;
  }

LABEL_5:
  if (!*stop)
  {
    bc_childPresentedViewController = [(UIViewController *)self bc_childPresentedViewController];
    [bc_childPresentedViewController __im_enumerateVisibleChildrenConformingToProtocol:protocolCopy stop:stop block:v17];

    if (!*stop)
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      im_visibleChildViewControllers = [(UIViewController *)self im_visibleChildViewControllers];
      v20 = [im_visibleChildViewControllers countByEnumeratingWithState:&v24 objects:v28 count:16];
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
            objc_enumerationMutation(im_visibleChildViewControllers);
          }

          [*(*(&v24 + 1) + 8 * v23) __im_enumerateVisibleChildrenConformingToProtocol:protocolCopy stop:stop block:v17];
          if (*stop)
          {
            break;
          }

          if (v21 == ++v23)
          {
            v21 = [im_visibleChildViewControllers countByEnumeratingWithState:&v24 objects:v28 count:16];
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
  presentingViewController = [(UIViewController *)self presentingViewController];
  modalPresentationStyle = [presentingViewController modalPresentationStyle];
  v2PresentingViewController = [presentingViewController presentingViewController];

  if (v2PresentingViewController && (modalPresentationStyle - 3) > 0xFFFFFFFFFFFFFFFDLL)
  {
    bc_ancestorFullScreenPresentingViewController = [presentingViewController bc_ancestorFullScreenPresentingViewController];
  }

  else
  {
    bc_ancestorFullScreenPresentingViewController = presentingViewController;
  }

  v6 = bc_ancestorFullScreenPresentingViewController;

  return v6;
}

- (void)__im_enumerateChildrenConformingToProtocol:(id)protocol stop:(BOOL *)stop block:(id)block
{
  protocolCopy = protocol;
  blockCopy = block;
  v17 = blockCopy;
  if (stop)
  {
    if (!protocolCopy)
    {
LABEL_4:
      (v17)[2](v17, self, stop);
      goto LABEL_5;
    }
  }

  else
  {
    sub_1E6690(blockCopy, v10, v11, v12, v13, v14, v15, v16);
    if (!protocolCopy)
    {
      goto LABEL_4;
    }
  }

  if ([(UIViewController *)self conformsToProtocol:protocolCopy])
  {
    goto LABEL_4;
  }

LABEL_5:
  if (!*stop)
  {
    bc_childPresentedViewController = [(UIViewController *)self bc_childPresentedViewController];
    [bc_childPresentedViewController __im_enumerateChildrenConformingToProtocol:protocolCopy stop:stop block:v17];

    if (!*stop)
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      bc_childViewControllersForProtocolConformance = [(UIViewController *)self bc_childViewControllersForProtocolConformance];
      v20 = [bc_childViewControllersForProtocolConformance countByEnumeratingWithState:&v24 objects:v28 count:16];
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
            objc_enumerationMutation(bc_childViewControllersForProtocolConformance);
          }

          [*(*(&v24 + 1) + 8 * v23) __im_enumerateChildrenConformingToProtocol:protocolCopy stop:stop block:v17];
          if (*stop)
          {
            break;
          }

          if (v21 == ++v23)
          {
            v21 = [bc_childViewControllersForProtocolConformance countByEnumeratingWithState:&v24 objects:v28 count:16];
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

- (void)im_finishOngoingModalTransitionAnimations:(id)animations
{
  animationsCopy = animations;
  if (animationsCopy)
  {
    presentedViewController = [(UIViewController *)self presentedViewController];
    if ([presentedViewController isBeingDismissed])
    {
    }

    else
    {
      presentedViewController2 = [(UIViewController *)self presentedViewController];
      isBeingPresented = [presentedViewController2 isBeingPresented];

      if (!isBeingPresented)
      {
        animationsCopy[2](animationsCopy);
        goto LABEL_7;
      }
    }

    presentedViewController3 = [(UIViewController *)self presentedViewController];
    transitionCoordinator = [presentedViewController3 transitionCoordinator];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_64708;
    v10[3] = &unk_2CA0B8;
    v11 = animationsCopy;
    [transitionCoordinator animateAlongsideTransition:&stru_2CA090 completion:v10];
  }

LABEL_7:
}

- (BOOL)bc_isModelTransitioning
{
  if ([(UIViewController *)self isBeingDismissed]|| [(UIViewController *)self isBeingPresented])
  {
    return 1;
  }

  presentationController = [(UIViewController *)self presentationController];
  if (objc_opt_respondsToSelector() & 1) != 0 && ([presentationController _transitioningTo])
  {
    _transitioningFrom = 1;
  }

  else if (objc_opt_respondsToSelector())
  {
    _transitioningFrom = [presentationController _transitioningFrom];
  }

  else
  {
    _transitioningFrom = 0;
  }

  return _transitioningFrom;
}

- (id)bc_windowForViewControllerWithFallbackToKeyWindow:(BOOL)window
{
  windowCopy = window;
  viewIfLoaded = [(UIViewController *)self viewIfLoaded];
  window = [viewIfLoaded window];

  if (!window)
  {
    selfCopy = self;
    parentViewController = [(UIViewController *)selfCopy parentViewController];
    presentingViewController = [(UIViewController *)selfCopy presentingViewController];
    v10 = parentViewController != 0;
    if (parentViewController | presentingViewController)
    {
      v11 = presentingViewController;
      do
      {
        if (v10)
        {
          v12 = parentViewController;
        }

        else
        {
          v12 = v11;
        }

        v13 = v12;

        parentViewController2 = [(UIViewController *)v13 parentViewController];

        presentingViewController2 = [(UIViewController *)v13 presentingViewController];

        v10 = parentViewController2 != 0;
        selfCopy = v13;
        v11 = presentingViewController2;
        parentViewController = parentViewController2;
      }

      while (parentViewController2 | presentingViewController2);
    }

    else
    {
      v13 = selfCopy;
    }

    viewIfLoaded2 = [(UIViewController *)v13 viewIfLoaded];
    window = [viewIfLoaded2 window];

    if (window)
    {
      v17 = v13;
    }

    else
    {
      presentedViewController = [(UIViewController *)v13 presentedViewController];
      if (presentedViewController)
      {
        presentedViewController2 = presentedViewController;
        do
        {
          v17 = presentedViewController2;

          presentedViewController2 = [(UIViewController *)v17 presentedViewController];

          v13 = v17;
        }

        while (presentedViewController2);
      }

      else
      {
        v17 = v13;
      }

      viewIfLoaded3 = [(UIViewController *)v17 viewIfLoaded];
      window = [viewIfLoaded3 window];

      if (!window && windowCopy)
      {
        v21 = BCSceneLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v23[0] = 0;
          _os_log_impl(&dword_0, v21, OS_LOG_TYPE_INFO, "No window in view hierarchy, falling back to use UIApplication keyWindow", v23, 2u);
        }

        window = +[UIWindow _applicationKeyWindow];
      }
    }
  }

  return window;
}

- (void)bc_presentViewController:(id)controller animated:(BOOL)animated tintColor:(id)color completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  colorCopy = color;
  controllerCopy = controller;
  bc_windowForViewController = [(UIViewController *)self bc_windowForViewController];
  tintColor = [bc_windowForViewController tintColor];
  [bc_windowForViewController setTintColor:colorCopy];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_64AF0;
  v18[3] = &unk_2C7B30;
  v19 = bc_windowForViewController;
  v20 = tintColor;
  v21 = completionCopy;
  v15 = completionCopy;
  v16 = tintColor;
  v17 = bc_windowForViewController;
  [(UIViewController *)self presentViewController:controllerCopy animated:animatedCopy completion:v18];
}

- (id)im_theme
{
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([(UIViewController *)self theme], (v3 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    parentViewController = [(UIViewController *)self parentViewController];
    v5 = parentViewController;
    if (parentViewController)
    {
      [parentViewController im_theme];
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
    parentViewController = [(UIViewController *)self parentViewController];
    v5 = parentViewController;
    if (parentViewController)
    {
      [parentViewController im_bookshelfTheme];
    }

    else
    {
      [IMTheme themeWithIdentifier:kIMThemeIdentifierBookshelfTheme[0]];
    }
    theme = ;

    goto LABEL_10;
  }

  theme = [(UIViewController *)self theme];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_6;
  }

  if (!theme)
  {
    goto LABEL_6;
  }

LABEL_10:

  return theme;
}

- (void)im_notifyThemeDidChange
{
  [(UIViewController *)self im_themeDidChange];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  childViewControllers = [(UIViewController *)self childViewControllers];
  v4 = [childViewControllers countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(childViewControllers);
        }

        [*(*(&v8 + 1) + 8 * v7) im_notifyThemeDidChange];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [childViewControllers countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (id)im_traitCollectionAdjustedForMedusaLevels:(id)levels
{
  v4 = [levels traitCollectionByModifyingTraits:&stru_2CAFF8];
  if (isPad())
  {
    bc_windowForViewController = [(UIViewController *)self bc_windowForViewController];
    v6 = bc_windowForViewController;
    if (bc_windowForViewController)
    {
      [bc_windowForViewController bounds];
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

- (void)bc_notifyLightLevelDidChange:(int64_t)change
{
  v5 = BUProtocolCast();
  v6 = v5;
  if (v5)
  {
    [v5 lightLevelDidChange:change];
  }

  presentedViewController = [(UIViewController *)self presentedViewController];

  if (presentedViewController)
  {
    presentedViewController2 = [(UIViewController *)self presentedViewController];
    [presentedViewController2 bc_notifyLightLevelDidChange:change];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  childViewControllers = [(UIViewController *)self childViewControllers];
  v10 = [childViewControllers countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(childViewControllers);
        }

        [*(*(&v14 + 1) + 8 * v13) bc_notifyLightLevelDidChange:change];
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [childViewControllers countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (BCEngagementProvider)bc_engagementProvider
{
  bc_engagementProviderSource = objc_getAssociatedObject(self, off_33E670);
  if (!bc_engagementProviderSource)
  {
    bc_engagementProviderSource = [(UIViewController *)self bc_engagementProviderSource];

    if (bc_engagementProviderSource)
    {
      bc_engagementProviderSource2 = [(UIViewController *)self bc_engagementProviderSource];
      bc_engagementProviderSource = [bc_engagementProviderSource2 bc_engagementProvider];
    }
  }

  return bc_engagementProviderSource;
}

- (BCEngagementProvider)bc_effectiveEngagementProvider
{
  ba_effectiveViewControllerForEngagementProvider = [(UIViewController *)self ba_effectiveViewControllerForEngagementProvider];
  bc_engagementProvider = [ba_effectiveViewControllerForEngagementProvider bc_engagementProvider];

  return bc_engagementProvider;
}

- (id)ba_effectiveViewControllerForEngagementProvider
{
  bc_engagementProvider = [(UIViewController *)self bc_engagementProvider];

  if (bc_engagementProvider)
  {
    selfCopy = self;
    goto LABEL_15;
  }

  parentViewController = [(UIViewController *)self parentViewController];

  if (parentViewController)
  {
    parentViewController2 = [(UIViewController *)self parentViewController];
    selfCopy = [parentViewController2 _ba_effectiveViewControllerForEngagementProviderIgnoringViewController:self];
  }

  else
  {
    presentingViewController = [(UIViewController *)self presentingViewController];

    if (!presentingViewController)
    {
      selfCopy = 0;
      goto LABEL_15;
    }

    presentingViewController2 = [(UIViewController *)self presentingViewController];
    v9 = [presentingViewController2 bc_deepestVisibleChildViewControllerIncludePresented:0];
    v10 = v9;
    if (v9)
    {
      presentingViewController3 = v9;
    }

    else
    {
      presentingViewController3 = [(UIViewController *)self presentingViewController];
    }

    parentViewController2 = presentingViewController3;

    objc_opt_class();
    presentedViewController = [parentViewController2 presentedViewController];
    v13 = BUDynamicCast();

    if (v13 == self || (-[UIViewController topCardSetViewController](v13, "topCardSetViewController"), v14 = objc_claimAutoreleasedReturnValue(), [v14 currentCardViewController], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "topContentViewController"), v16 = objc_claimAutoreleasedReturnValue(), v15, v14, objc_msgSend(v16, "_ba_effectiveViewControllerForEngagementProviderIgnoringViewController:", self), selfCopy = objc_claimAutoreleasedReturnValue(), v16, !selfCopy))
    {
      selfCopy = [parentViewController2 _ba_effectiveViewControllerForEngagementProviderIgnoringViewController:self];
    }
  }

LABEL_15:

  return selfCopy;
}

- (id)_ba_effectiveViewControllerForEngagementProviderIgnoringViewController:(id)controller
{
  controllerCopy = controller;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = [(UIViewController *)self viewControllers];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    reverseObjectEnumerator = [(UIViewController *)selfCopy reverseObjectEnumerator];
    v7 = [reverseObjectEnumerator countByEnumeratingWithState:&v27 objects:v31 count:16];
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
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          v11 = *(*(&v27 + 1) + 8 * i);
          bc_engagementProvider = [v11 bc_engagementProvider];

          if (v11 != controllerCopy && bc_engagementProvider != 0)
          {
            bc_engagementProvider2 = v11;
            goto LABEL_30;
          }
        }

        v8 = [reverseObjectEnumerator countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v8);
    }

    goto LABEL_22;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
    lastNavigationType = [(UIViewController *)selfCopy lastNavigationType];
    if (!lastNavigationType)
    {
      bc_engagementProvider2 = 0;
      goto LABEL_31;
    }

    v15 = lastNavigationType;
    if (lastNavigationType == &dword_0 + 1)
    {
      reverseObjectEnumerator = [(UIViewController *)selfCopy cardStackViewController];
      childViewControllers = [reverseObjectEnumerator childViewControllers];
      v17 = [childViewControllers indexOfObject:selfCopy];

      if (!v17)
      {
LABEL_22:
        bc_engagementProvider2 = 0;
LABEL_30:

LABEL_31:
        if (bc_engagementProvider2)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      }

      objc_opt_class();
      childViewControllers2 = [reverseObjectEnumerator childViewControllers];
      v19 = [childViewControllers2 objectAtIndexedSubscript:v17 - 1];
      topContentViewController2 = BUDynamicCast();

      currentCardViewController = [topContentViewController2 currentCardViewController];
      topContentViewController = [currentCardViewController topContentViewController];

      bc_engagementProvider2 = [topContentViewController bc_engagementProvider];

      if (bc_engagementProvider2)
      {
        bc_engagementProvider2 = topContentViewController;
      }
    }

    else
    {
      focusedIndex = [(UIViewController *)selfCopy focusedIndex];
      if (v15 == &dword_0 + 2)
      {
        v25 = focusedIndex + 1;
      }

      else
      {
        v25 = focusedIndex - 1;
      }

      reverseObjectEnumerator = [(UIViewController *)selfCopy cardViewControllerAtIndex:v25];
      topContentViewController2 = [reverseObjectEnumerator topContentViewController];
      bc_engagementProvider2 = [topContentViewController2 bc_engagementProvider];

      if (bc_engagementProvider2)
      {
        topContentViewController2 = topContentViewController2;
        bc_engagementProvider2 = topContentViewController2;
      }
    }

    goto LABEL_30;
  }

LABEL_32:
  bc_engagementProvider2 = [(UIViewController *)self ba_effectiveViewControllerForEngagementProvider];
LABEL_33:

  return bc_engagementProvider2;
}

- (id)p_setupStandardUISearchController
{
  v3 = [[UISearchController alloc] initWithSearchResultsController:0];
  [v3 setDimsBackgroundDuringPresentation:0];
  [v3 setHidesNavigationBarDuringPresentation:0];
  searchBar = [v3 searchBar];
  [searchBar _setAutoDisableCancelButton:0];

  navigationItem = [(UIViewController *)self navigationItem];
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

  [navigationItem setPreferredSearchBarPlacement:v6];
  navigationItem2 = [(UIViewController *)self navigationItem];
  [navigationItem2 setSearchController:v3];

  navigationItem3 = [(UIViewController *)self navigationItem];
  [navigationItem3 setHidesSearchBarWhenScrolling:0];

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
    view = [(UIViewController *)self view];
    [view frame];
  }

  else
  {
    view = +[UIScreen mainScreen];
    [view bounds];
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
    view = [(UIViewController *)self view];
    [view safeAreaInsets];
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
  ba_effectiveViewControllerForAnalyticsTracking = [(UIViewController *)self ba_effectiveViewControllerForAnalyticsTracking];
  ba_analyticsTracker = [ba_effectiveViewControllerForAnalyticsTracking ba_analyticsTracker];

  return ba_analyticsTracker;
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

- (id)_ba_effectiveViewControllerForAnalyticsTrackingIgnoringViewController:(id)controller
{
  controllerCopy = controller;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = [(UIViewController *)self viewControllers];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    reverseObjectEnumerator = [(UIViewController *)selfCopy reverseObjectEnumerator];
    v7 = [reverseObjectEnumerator countByEnumeratingWithState:&v27 objects:v31 count:16];
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
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          v11 = *(*(&v27 + 1) + 8 * i);
          ba_analyticsTracker = [v11 ba_analyticsTracker];

          if (v11 != controllerCopy && ba_analyticsTracker != 0)
          {
            ba_analyticsTracker2 = v11;
            goto LABEL_30;
          }
        }

        v8 = [reverseObjectEnumerator countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v8);
    }

    goto LABEL_22;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
    lastNavigationType = [(UIViewController *)selfCopy lastNavigationType];
    if (!lastNavigationType)
    {
      ba_analyticsTracker2 = 0;
      goto LABEL_31;
    }

    v15 = lastNavigationType;
    if (lastNavigationType == &dword_0 + 1)
    {
      reverseObjectEnumerator = [(UIViewController *)selfCopy cardStackViewController];
      childViewControllers = [reverseObjectEnumerator childViewControllers];
      v17 = [childViewControllers indexOfObject:selfCopy];

      if (!v17)
      {
LABEL_22:
        ba_analyticsTracker2 = 0;
LABEL_30:

LABEL_31:
        if (ba_analyticsTracker2)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      }

      objc_opt_class();
      childViewControllers2 = [reverseObjectEnumerator childViewControllers];
      v19 = [childViewControllers2 objectAtIndexedSubscript:v17 - 1];
      topContentViewController2 = BUDynamicCast();

      currentCardViewController = [topContentViewController2 currentCardViewController];
      topContentViewController = [currentCardViewController topContentViewController];

      ba_analyticsTracker2 = [topContentViewController ba_analyticsTracker];

      if (ba_analyticsTracker2)
      {
        ba_analyticsTracker2 = topContentViewController;
      }
    }

    else
    {
      focusedIndex = [(UIViewController *)selfCopy focusedIndex];
      if (v15 == &dword_0 + 2)
      {
        v25 = focusedIndex + 1;
      }

      else
      {
        v25 = focusedIndex - 1;
      }

      reverseObjectEnumerator = [(UIViewController *)selfCopy cardViewControllerAtIndex:v25];
      topContentViewController2 = [reverseObjectEnumerator topContentViewController];
      ba_analyticsTracker2 = [topContentViewController2 ba_analyticsTracker];

      if (ba_analyticsTracker2)
      {
        topContentViewController2 = topContentViewController2;
        ba_analyticsTracker2 = topContentViewController2;
      }
    }

    goto LABEL_30;
  }

LABEL_32:
  ba_analyticsTracker2 = [(UIViewController *)self ba_effectiveViewControllerForAnalyticsTracking];
LABEL_33:

  return ba_analyticsTracker2;
}

- (id)ba_setupNewAnalyticsTrackerWithName:(id)name
{
  nameCopy = name;
  ba_analyticsTracker = [(UIViewController *)self ba_analyticsTracker];
  if (ba_analyticsTracker)
  {
    v6 = BALog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      name = [ba_analyticsTracker name];
      v13 = 138412546;
      v14 = name;
      v15 = 2112;
      v16 = nameCopy;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "ba_setupAnalyticsTrackerWithName: replacing existing tracker: %@ with: %@", &v13, 0x16u);
    }
  }

  ba_overrideParentAnalyticsTracker = [(UIViewController *)self ba_overrideParentAnalyticsTracker];
  if (ba_overrideParentAnalyticsTracker || ([(UIViewController *)self ba_effectiveAnalyticsTracker], (ba_overrideParentAnalyticsTracker = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = ba_overrideParentAnalyticsTracker;
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

  v10 = [v9 chainWithName:nameCopy];

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
    navigationController = v3;
  }

  else
  {
    navigationController = [(UIViewController *)self navigationController];
  }

  v6 = navigationController;

  selfCopy = self;
  v8 = selfCopy;
  parentViewController = selfCopy;
  if (!selfCopy || (parentViewController = selfCopy, v6 == selfCopy))
  {
LABEL_10:
    bc_childViewControllerForNavBarVisibility = [(UIViewController *)v8 bc_childViewControllerForNavBarVisibility];
    bc_effectiveViewControllerForNavBarVisibility = [bc_childViewControllerForNavBarVisibility bc_effectiveViewControllerForNavBarVisibility];

    if (!bc_effectiveViewControllerForNavBarVisibility)
    {
      bc_effectiveViewControllerForNavBarVisibility = v8;
    }

    v10 = parentViewController;
  }

  else
  {
    v10 = selfCopy;
    while (1)
    {
      bc_overrideAncestorViewControllerForNavBarVisibility = [v10 bc_overrideAncestorViewControllerForNavBarVisibility];
      if (bc_overrideAncestorViewControllerForNavBarVisibility)
      {
        break;
      }

      parentViewController = [v10 parentViewController];

      if (parentViewController)
      {
        v10 = parentViewController;
        if (parentViewController != v6)
        {
          continue;
        }
      }

      goto LABEL_10;
    }

    bc_effectiveViewControllerForNavBarVisibility = bc_overrideAncestorViewControllerForNavBarVisibility;
  }

  return bc_effectiveViewControllerForNavBarVisibility;
}

- (BOOL)bc_navBarVisible
{
  v2 = objc_getAssociatedObject(self, &off_2CDAA8);
  v3 = v2;
  if (v2)
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (void)bc_setNavBarVisible:(BOOL)visible
{
  v4 = [NSNumber numberWithBool:visible];
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

- (id)bc_ancestorViewControllerOfClass:(Class)class allowPresentingParent:(BOOL)parent
{
  parentCopy = parent;
  parentViewController = [(UIViewController *)self parentViewController];
  presentingViewController3 = parentViewController;
  if (!parentCopy || parentViewController)
  {
    if (!parentCopy)
    {
      presentingViewController = [(UIViewController *)self presentingViewController];

      if (presentingViewController3 == presentingViewController)
      {
        presentingViewController2 = [(UIViewController *)self presentingViewController];

        presentingViewController3 = presentingViewController2;
      }
    }
  }

  else
  {
    presentingViewController3 = [(UIViewController *)self presentingViewController];
  }

  if (objc_opt_isKindOfClass())
  {
    v11 = presentingViewController3;
  }

  else
  {
    v11 = [presentingViewController3 bc_ancestorViewControllerOfClass:class allowPresentingParent:parentCopy];
  }

  v12 = v11;

  return v12;
}

- (id)im_effectiveViewControllerForTabBarVisibility
{
  selfCopy = self;
  v3 = selfCopy;
  if (selfCopy)
  {
    v4 = selfCopy;
    while (1)
    {
      im_overrideAncestorViewControllerForTabBarVisibility = [v4 im_overrideAncestorViewControllerForTabBarVisibility];
      if (im_overrideAncestorViewControllerForTabBarVisibility)
      {
        break;
      }

      parentViewController = [v4 parentViewController];

      v4 = parentViewController;
      if (!parentViewController)
      {
        goto LABEL_5;
      }
    }

    im_effectiveViewControllerForTabBarVisibility = im_overrideAncestorViewControllerForTabBarVisibility;
  }

  else
  {
LABEL_5:
    im_childViewControllerForTabBarVisibility = [(UIViewController *)v3 im_childViewControllerForTabBarVisibility];
    im_effectiveViewControllerForTabBarVisibility = [im_childViewControllerForTabBarVisibility im_effectiveViewControllerForTabBarVisibility];

    if (!im_effectiveViewControllerForTabBarVisibility)
    {
      im_effectiveViewControllerForTabBarVisibility = v3;
    }
  }

  return im_effectiveViewControllerForTabBarVisibility;
}

- (BOOL)im_tabBarVisible
{
  v2 = objc_getAssociatedObject(self, &off_2CE5C0);
  v3 = v2;
  if (v2)
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (void)im_setTabBarVisible:(BOOL)visible
{
  v4 = [NSNumber numberWithBool:visible];
  objc_setAssociatedObject(self, &off_2CE5C0, v4, &dword_0 + 1);
}

- (id)bc_effectiveCardPresentingViewController
{
  selfCopy = [(UIViewController *)self bc_effectiveAncestorOverrideCardPresentingViewController];
  if (!selfCopy)
  {
    selfCopy = self;
  }

  bc_childCardPresentingViewController = [(UIViewController *)selfCopy bc_childCardPresentingViewController];
  v5 = bc_childCardPresentingViewController;
  if (bc_childCardPresentingViewController)
  {
    v6 = bc_childCardPresentingViewController;
  }

  else
  {
    v6 = selfCopy;
  }

  v7 = v6;

  return v6;
}

- (id)bc_effectiveAncestorOverrideCardPresentingViewController
{
  parentViewController = [(UIViewController *)self parentViewController];

  if (parentViewController)
  {
    parentViewController2 = [(UIViewController *)self parentViewController];
    goto LABEL_5;
  }

  presentingViewController = [(UIViewController *)self presentingViewController];

  if (presentingViewController)
  {
    parentViewController2 = [(UIViewController *)self presentingViewController];
LABEL_5:
    v6 = parentViewController2;
    bc_effectiveAncestorOverrideCardPresentingViewController = [parentViewController2 bc_effectiveAncestorOverrideCardPresentingViewController];

    if (bc_effectiveAncestorOverrideCardPresentingViewController)
    {
      goto LABEL_7;
    }
  }

  bc_effectiveAncestorOverrideCardPresentingViewController = [(UIViewController *)self bc_ancestorOverrideCardPresentingViewController];
LABEL_7:

  return bc_effectiveAncestorOverrideCardPresentingViewController;
}

- (void)bc_presentCardViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_176D7C;
  v19 = &unk_2CC630;
  selfCopy = self;
  controllerCopy = controller;
  v23 = animatedCopy;
  completionCopy = completion;
  v8 = completionCopy;
  v9 = controllerCopy;
  v10 = objc_retainBlock(&v16);
  v11 = [(UIViewController *)self presentedViewController:v16];
  presentingViewController = [v11 presentingViewController];

  if (presentingViewController == self)
  {
    presentedViewController = [(UIViewController *)self presentedViewController];
    [presentedViewController dismissViewControllerAnimated:animatedCopy completion:v10];
  }

  else
  {
    (v10[2])(v10);
  }

  presentingViewController2 = [(UIViewController *)self presentingViewController];
  view = [presentingViewController2 view];
  [view setAccessibilityElementsHidden:1];
}

- (void)bc_dismissCardViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  controllerCopy = controller;
  [(UIViewController *)self setValue:&__kCFBooleanFalse forKey:@"bc_isPresentingCardStack"];
  presentingViewController = [(UIViewController *)self presentingViewController];
  view = [presentingViewController view];
  [view setAccessibilityElementsHidden:0];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_176ED4;
  v13[3] = &unk_2C8398;
  v14 = completionCopy;
  v12 = completionCopy;
  [controllerCopy dismissViewControllerAnimated:animatedCopy completion:v13];
}

- (void)bc_closeToAssetWithCardStackViewController:(id)controller completion:(id)completion
{
  v4 = objc_retainBlock(completion);
  if (v4)
  {
    v5 = v4;
    v4[2]();
    v4 = v5;
  }
}

- (void)bc_closeAssetWithCardStackViewController:(id)controller completion:(id)completion
{
  v4 = objc_retainBlock(completion);
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
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (void)setBc_isPresentingCardStack:(BOOL)stack
{
  v4 = off_33F708;
  v5 = [NSNumber numberWithBool:stack];
  objc_setAssociatedObject(self, v4, v5, &dword_0 + 1);
}

- (void)bc_dismissIfSafeAnimated:(BOOL)animated
{
  animatedCopy = animated;
  selfCopy = self;
  presentedViewController = [(UIViewController *)selfCopy presentedViewController];
  if (presentedViewController)
  {
    v6 = presentedViewController;
    while (!swift_dynamicCastObjCProtocolConditional())
    {
      presentedViewController2 = [(UIViewController *)v6 presentedViewController];

      v6 = presentedViewController2;
      if (!presentedViewController2)
      {
        goto LABEL_5;
      }
    }

    presentingViewController = selfCopy;
    selfCopy = v6;
    goto LABEL_9;
  }

LABEL_5:
  presentedViewController3 = [(UIViewController *)selfCopy presentedViewController];
  if (presentedViewController3)
  {
    v9 = presentedViewController3;
    presentingViewController = [(UIViewController *)presentedViewController3 presentingViewController];

    if (presentingViewController)
    {
      [(UIViewController *)presentingViewController dismissViewControllerAnimated:animatedCopy completion:0];
LABEL_9:
    }
  }
}

@end