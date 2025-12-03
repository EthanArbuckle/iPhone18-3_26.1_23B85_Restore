@interface UIViewController
- (BOOL)_isInExpandedEnvironment;
- (BOOL)isReappearing;
- (BOOL)mf_isPresentingPreviousDraftPopoverViewController;
- (BOOL)mf_navigationItemContainsBarButtonItem:(id)item;
- (BOOL)mf_toolbarContainsBarButtonItem:(id)item;
- (BOOL)mf_viewHierarchyContainsView:(id)view;
- (BOOL)shouldSnapshot;
- (NSDirectionalEdgeInsets)mf_extraContentMargins;
- (NSDirectionalEdgeInsets)mf_extraEditingMargins;
- (NSDirectionalEdgeInsets)mf_extraNavigationBarMargins;
- (id)mf_preferredTitle;
- (int64_t)desiredContextualControllerPresentationStyle;
- (void)focus:(BOOL)focus;
- (void)focusViewController:(id)controller sender:(id)sender animated:(BOOL)animated;
- (void)mf_dismissPresentedViewControllerInPopover;
- (void)mf_updateAlertSuppressionContextsForReason:(id)reason;
- (void)mf_updateExtraNavigationBarMargins;
- (void)prepareForPopoverPresentation:(id)presentation;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)showPopoverViewController:(id)controller fromBarButtonItem:(id)item animated:(BOOL)animated;
- (void)unfocus:(BOOL)unfocus;
- (void)unfocusViewController:(id)controller sender:(id)sender animated:(BOOL)animated;
@end

@implementation UIViewController

- (id)mf_preferredTitle
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  childViewControllers = [(UIViewController *)self childViewControllers];
  v3 = [childViewControllers countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
LABEL_3:
    v5 = 0;
    while (1)
    {
      if (*v9 != v4)
      {
        objc_enumerationMutation(childViewControllers);
      }

      mf_preferredTitle = [*(*(&v8 + 1) + 8 * v5) mf_preferredTitle];
      if (mf_preferredTitle)
      {
        break;
      }

      if (v3 == ++v5)
      {
        v3 = [childViewControllers countByEnumeratingWithState:&v8 objects:v12 count:16];
        if (v3)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    mf_preferredTitle = 0;
  }

  return mf_preferredTitle;
}

- (BOOL)isReappearing
{
  navigationController = [(UIViewController *)self navigationController];
  isPopping = [navigationController isPopping];
  while (1)
  {
    v3NavigationController = [navigationController navigationController];

    if (!v3NavigationController)
    {
      break;
    }

    v3NavigationController2 = [navigationController navigationController];

    navigationController = v3NavigationController2;
  }

  if (([navigationController isPopping] | isPopping))
  {
    isPerformingModalTransition = 1;
  }

  else if ((+[UIDevice mf_isPadIdiom]& 1) != 0)
  {
    isPerformingModalTransition = 0;
  }

  else
  {
    selfCopy = self;
    isPerformingModalTransition = [(UIViewController *)selfCopy isPerformingModalTransition];
    if ((selfCopy == 0) | isPerformingModalTransition & 1)
    {
      parentViewController = selfCopy;
    }

    else
    {
      do
      {
        isPerformingModalTransition = [(UIViewController *)selfCopy isPerformingModalTransition];
        parentViewController = [(UIViewController *)selfCopy parentViewController];

        selfCopy = parentViewController;
      }

      while (!((parentViewController == 0) | isPerformingModalTransition & 1));
    }
  }

  return isPerformingModalTransition;
}

- (void)mf_updateExtraNavigationBarMargins
{
  [(UIViewController *)self systemMinimumLayoutMargins];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  preferredContentSizeCategory = [UIApp preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (!IsAccessibilityCategory)
  {
    [(UIViewController *)self mf_extraNavigationBarMargins];
    v4 = v4 + v12;
    v6 = v6 + v13;
    v8 = v8 + v14;
    v10 = v10 + v15;
  }

  navigationItem = [(UIViewController *)self navigationItem];
  [navigationItem setLargeTitleInsets:{v4, v6, v8, v10}];
}

- (void)mf_updateAlertSuppressionContextsForReason:(id)reason
{
  reasonCopy = reason;
  navigationController = [(UIViewController *)self navigationController];
  visibleViewController = [navigationController visibleViewController];

  if (visibleViewController == self)
  {
    v7 = MSUserNotificationsLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = reasonCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@: updating contexts", &v9, 0xCu);
    }

    v8 = +[UIApplication sharedApplication];
    [v8 mf_updateCurrentContexts];
  }
}

- (void)focus:(BOOL)focus
{
  focusCopy = focus;
  parentViewController = [(UIViewController *)self parentViewController];
  v6 = parentViewController;
  if (parentViewController)
  {
    splitViewController = parentViewController;
  }

  else
  {
    splitViewController = [(UIViewController *)self splitViewController];
  }

  v8 = splitViewController;

  [v8 focusViewController:self sender:self animated:focusCopy];
}

- (void)unfocus:(BOOL)unfocus
{
  unfocusCopy = unfocus;
  parentViewController = [(UIViewController *)self parentViewController];
  v6 = parentViewController;
  if (parentViewController)
  {
    splitViewController = parentViewController;
  }

  else
  {
    splitViewController = [(UIViewController *)self splitViewController];
  }

  v8 = splitViewController;

  [v8 unfocusViewController:self sender:self animated:unfocusCopy];
}

- (void)focusViewController:(id)controller sender:(id)sender animated:(BOOL)animated
{
  animatedCopy = animated;
  senderCopy = sender;
  parentViewController = [(UIViewController *)self parentViewController];
  v8 = parentViewController;
  if (parentViewController)
  {
    splitViewController = parentViewController;
  }

  else
  {
    splitViewController = [(UIViewController *)self splitViewController];
  }

  v10 = splitViewController;

  [v10 focusViewController:self sender:senderCopy animated:animatedCopy];
}

- (void)unfocusViewController:(id)controller sender:(id)sender animated:(BOOL)animated
{
  animatedCopy = animated;
  senderCopy = sender;
  parentViewController = [(UIViewController *)self parentViewController];
  v8 = parentViewController;
  if (parentViewController)
  {
    splitViewController = parentViewController;
  }

  else
  {
    splitViewController = [(UIViewController *)self splitViewController];
  }

  v10 = splitViewController;

  [v10 unfocusViewController:self sender:senderCopy animated:animatedCopy];
}

- (void)showPopoverViewController:(id)controller fromBarButtonItem:(id)item animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  itemCopy = item;
  parentViewController = [(UIViewController *)self parentViewController];
  [parentViewController showPopoverViewController:controllerCopy fromBarButtonItem:itemCopy animated:animatedCopy];
}

- (BOOL)shouldSnapshot
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = 0;
  }

  else
  {
    objc_opt_class();
    v2 = objc_opt_isKindOfClass() ^ 1;
  }

  return v2 & 1;
}

- (BOOL)_isInExpandedEnvironment
{
  viewIfLoaded = [(UIViewController *)self viewIfLoaded];
  window = [viewIfLoaded window];
  windowScene = [window windowScene];

  if (windowScene && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    isInExpandedEnvironment = [windowScene isInExpandedEnvironment];
  }

  else
  {
    isInExpandedEnvironment = 0;
  }

  return isInExpandedEnvironment;
}

- (int64_t)desiredContextualControllerPresentationStyle
{
  if (![(UIViewController *)self _isInExpandedEnvironment])
  {
    return 0;
  }

  traitCollection = [(UIViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (BOOL)mf_viewHierarchyContainsView:(id)view
{
  viewCopy = view;
  if (viewCopy)
  {
    view = [(UIViewController *)self view];

    if (view == viewCopy)
    {
      v7 = 1;
    }

    else
    {
      superview = [viewCopy superview];
      v7 = [(UIViewController *)self mf_viewHierarchyContainsView:superview];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)mf_toolbarContainsBarButtonItem:(id)item
{
  itemCopy = item;
  if (itemCopy)
  {
    toolbarItems = [(UIViewController *)self toolbarItems];
    v6 = [toolbarItems containsObject:itemCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)mf_navigationItemContainsBarButtonItem:(id)item
{
  itemCopy = item;
  if (itemCopy)
  {
    navigationItem = [(UIViewController *)self navigationItem];
    leftBarButtonItems = [navigationItem leftBarButtonItems];
    if ([leftBarButtonItems containsObject:itemCopy])
    {
      v7 = 1;
    }

    else
    {
      navigationItem2 = [(UIViewController *)self navigationItem];
      rightBarButtonItems = [navigationItem2 rightBarButtonItems];
      v7 = [rightBarButtonItems containsObject:itemCopy];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)mf_dismissPresentedViewControllerInPopover
{
  presentedViewController = [(UIViewController *)self presentedViewController];
  if ([presentedViewController _isInPopoverPresentation])
  {
    popoverPresentationController = [presentedViewController popoverPresentationController];
    sourceView = [popoverPresentationController sourceView];

    v5 = [(UIViewController *)self mf_viewHierarchyContainsView:sourceView];
    popoverPresentationController2 = [presentedViewController popoverPresentationController];
    barButtonItem = [popoverPresentationController2 barButtonItem];

    if ([(UIViewController *)self mf_toolbarContainsBarButtonItem:barButtonItem])
    {
    }

    else
    {
      v8 = [(UIViewController *)self mf_navigationItemContainsBarButtonItem:barButtonItem];

      if (((v5 | v8) & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    [(UIViewController *)self dismissViewControllerAnimated:0 completion:0];
  }

LABEL_6:
}

- (NSDirectionalEdgeInsets)mf_extraNavigationBarMargins
{
  [(UIViewController *)self mf_extraContentMargins];
  result.trailing = v5;
  result.bottom = v4;
  result.leading = v3;
  result.top = v2;
  return result;
}

- (NSDirectionalEdgeInsets)mf_extraContentMargins
{
  top = NSDirectionalEdgeInsetsZero.top;
  leading = NSDirectionalEdgeInsetsZero.leading;
  bottom = NSDirectionalEdgeInsetsZero.bottom;
  trailing = NSDirectionalEdgeInsetsZero.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

- (NSDirectionalEdgeInsets)mf_extraEditingMargins
{
  top = NSDirectionalEdgeInsetsZero.top;
  leading = NSDirectionalEdgeInsetsZero.leading;
  bottom = NSDirectionalEdgeInsetsZero.bottom;
  trailing = NSDirectionalEdgeInsetsZero.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

- (void)prepareForPopoverPresentation:(id)presentation
{
  presentationCopy = presentation;
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:MFMailWillPresentPopoverNotification object:presentationCopy userInfo:0];

  [presentationCopy _setIgnoreBarButtonItemSiblings:1];
  viewIfLoaded = [(UIViewController *)self viewIfLoaded];
  window = [viewIfLoaded window];

  if (window)
  {
    v7 = [MFMailPopoverManager managerForWindow:window createIfNeeded:0];
    allPassThroughViews = [v7 allPassThroughViews];
    [presentationCopy setPassthroughViews:allPassThroughViews];
  }
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 postNotificationName:MFMailDidDismissPopoverNotification object:dismissCopy userInfo:0];
  }
}

- (BOOL)mf_isPresentingPreviousDraftPopoverViewController
{
  if (![(UIViewController *)self conformsToProtocol:&OBJC_PROTOCOL___ComposeButtonProviding])
  {
    return 0;
  }

  presentedViewController = [(UIViewController *)self presentedViewController];
  popoverPresentationController = [presentedViewController popoverPresentationController];

  selfCopy = self;
  barButtonItem = [popoverPresentationController barButtonItem];
  composeButtonItem = [(UIViewController *)selfCopy composeButtonItem];
  v8 = barButtonItem == composeButtonItem;

  return v8;
}

@end