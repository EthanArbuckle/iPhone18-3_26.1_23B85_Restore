@interface UIViewController
- (BOOL)_isInExpandedEnvironment;
- (BOOL)isReappearing;
- (BOOL)mf_isPresentingPreviousDraftPopoverViewController;
- (BOOL)mf_navigationItemContainsBarButtonItem:(id)a3;
- (BOOL)mf_toolbarContainsBarButtonItem:(id)a3;
- (BOOL)mf_viewHierarchyContainsView:(id)a3;
- (BOOL)shouldSnapshot;
- (NSDirectionalEdgeInsets)mf_extraContentMargins;
- (NSDirectionalEdgeInsets)mf_extraEditingMargins;
- (NSDirectionalEdgeInsets)mf_extraNavigationBarMargins;
- (id)mf_preferredTitle;
- (int64_t)desiredContextualControllerPresentationStyle;
- (void)focus:(BOOL)a3;
- (void)focusViewController:(id)a3 sender:(id)a4 animated:(BOOL)a5;
- (void)mf_dismissPresentedViewControllerInPopover;
- (void)mf_updateAlertSuppressionContextsForReason:(id)a3;
- (void)mf_updateExtraNavigationBarMargins;
- (void)prepareForPopoverPresentation:(id)a3;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)showPopoverViewController:(id)a3 fromBarButtonItem:(id)a4 animated:(BOOL)a5;
- (void)unfocus:(BOOL)a3;
- (void)unfocusViewController:(id)a3 sender:(id)a4 animated:(BOOL)a5;
@end

@implementation UIViewController

- (id)mf_preferredTitle
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(UIViewController *)self childViewControllers];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
LABEL_3:
    v5 = 0;
    while (1)
    {
      if (*v9 != v4)
      {
        objc_enumerationMutation(v2);
      }

      v6 = [*(*(&v8 + 1) + 8 * v5) mf_preferredTitle];
      if (v6)
      {
        break;
      }

      if (v3 == ++v5)
      {
        v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
    v6 = 0;
  }

  return v6;
}

- (BOOL)isReappearing
{
  v3 = [(UIViewController *)self navigationController];
  v4 = [v3 isPopping];
  while (1)
  {
    v5 = [v3 navigationController];

    if (!v5)
    {
      break;
    }

    v6 = [v3 navigationController];

    v3 = v6;
  }

  if (([v3 isPopping] | v4))
  {
    v7 = 1;
  }

  else if ((+[UIDevice mf_isPadIdiom]& 1) != 0)
  {
    v7 = 0;
  }

  else
  {
    v8 = self;
    v7 = [(UIViewController *)v8 isPerformingModalTransition];
    if ((v8 == 0) | v7 & 1)
    {
      v9 = v8;
    }

    else
    {
      do
      {
        v7 = [(UIViewController *)v8 isPerformingModalTransition];
        v9 = [(UIViewController *)v8 parentViewController];

        v8 = v9;
      }

      while (!((v9 == 0) | v7 & 1));
    }
  }

  return v7;
}

- (void)mf_updateExtraNavigationBarMargins
{
  [(UIViewController *)self systemMinimumLayoutMargins];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v16 = [UIApp preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v16);

  if (!IsAccessibilityCategory)
  {
    [(UIViewController *)self mf_extraNavigationBarMargins];
    v4 = v4 + v12;
    v6 = v6 + v13;
    v8 = v8 + v14;
    v10 = v10 + v15;
  }

  v17 = [(UIViewController *)self navigationItem];
  [v17 setLargeTitleInsets:{v4, v6, v8, v10}];
}

- (void)mf_updateAlertSuppressionContextsForReason:(id)a3
{
  v4 = a3;
  v5 = [(UIViewController *)self navigationController];
  v6 = [v5 visibleViewController];

  if (v6 == self)
  {
    v7 = MSUserNotificationsLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@: updating contexts", &v9, 0xCu);
    }

    v8 = +[UIApplication sharedApplication];
    [v8 mf_updateCurrentContexts];
  }
}

- (void)focus:(BOOL)a3
{
  v3 = a3;
  v5 = [(UIViewController *)self parentViewController];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [(UIViewController *)self splitViewController];
  }

  v8 = v7;

  [v8 focusViewController:self sender:self animated:v3];
}

- (void)unfocus:(BOOL)a3
{
  v3 = a3;
  v5 = [(UIViewController *)self parentViewController];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [(UIViewController *)self splitViewController];
  }

  v8 = v7;

  [v8 unfocusViewController:self sender:self animated:v3];
}

- (void)focusViewController:(id)a3 sender:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v11 = a4;
  v7 = [(UIViewController *)self parentViewController];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [(UIViewController *)self splitViewController];
  }

  v10 = v9;

  [v10 focusViewController:self sender:v11 animated:v5];
}

- (void)unfocusViewController:(id)a3 sender:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v11 = a4;
  v7 = [(UIViewController *)self parentViewController];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [(UIViewController *)self splitViewController];
  }

  v10 = v9;

  [v10 unfocusViewController:self sender:v11 animated:v5];
}

- (void)showPopoverViewController:(id)a3 fromBarButtonItem:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v10 = a3;
  v8 = a4;
  v9 = [(UIViewController *)self parentViewController];
  [v9 showPopoverViewController:v10 fromBarButtonItem:v8 animated:v5];
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
  v2 = [(UIViewController *)self viewIfLoaded];
  v3 = [v2 window];
  v4 = [v3 windowScene];

  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [v4 isInExpandedEnvironment];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int64_t)desiredContextualControllerPresentationStyle
{
  if (![(UIViewController *)self _isInExpandedEnvironment])
  {
    return 0;
  }

  v3 = [(UIViewController *)self traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (BOOL)mf_viewHierarchyContainsView:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(UIViewController *)self view];

    if (v5 == v4)
    {
      v7 = 1;
    }

    else
    {
      v6 = [v4 superview];
      v7 = [(UIViewController *)self mf_viewHierarchyContainsView:v6];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)mf_toolbarContainsBarButtonItem:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(UIViewController *)self toolbarItems];
    v6 = [v5 containsObject:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)mf_navigationItemContainsBarButtonItem:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(UIViewController *)self navigationItem];
    v6 = [v5 leftBarButtonItems];
    if ([v6 containsObject:v4])
    {
      v7 = 1;
    }

    else
    {
      v8 = [(UIViewController *)self navigationItem];
      v9 = [v8 rightBarButtonItems];
      v7 = [v9 containsObject:v4];
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
  v9 = [(UIViewController *)self presentedViewController];
  if ([v9 _isInPopoverPresentation])
  {
    v3 = [v9 popoverPresentationController];
    v4 = [v3 sourceView];

    v5 = [(UIViewController *)self mf_viewHierarchyContainsView:v4];
    v6 = [v9 popoverPresentationController];
    v7 = [v6 barButtonItem];

    if ([(UIViewController *)self mf_toolbarContainsBarButtonItem:v7])
    {
    }

    else
    {
      v8 = [(UIViewController *)self mf_navigationItemContainsBarButtonItem:v7];

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

- (void)prepareForPopoverPresentation:(id)a3
{
  v9 = a3;
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:MFMailWillPresentPopoverNotification object:v9 userInfo:0];

  [v9 _setIgnoreBarButtonItemSiblings:1];
  v5 = [(UIViewController *)self viewIfLoaded];
  v6 = [v5 window];

  if (v6)
  {
    v7 = [MFMailPopoverManager managerForWindow:v6 createIfNeeded:0];
    v8 = [v7 allPassThroughViews];
    [v9 setPassthroughViews:v8];
  }
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 postNotificationName:MFMailDidDismissPopoverNotification object:v4 userInfo:0];
  }
}

- (BOOL)mf_isPresentingPreviousDraftPopoverViewController
{
  if (![(UIViewController *)self conformsToProtocol:&OBJC_PROTOCOL___ComposeButtonProviding])
  {
    return 0;
  }

  v3 = [(UIViewController *)self presentedViewController];
  v4 = [v3 popoverPresentationController];

  v5 = self;
  v6 = [v4 barButtonItem];
  v7 = [(UIViewController *)v5 composeButtonItem];
  v8 = v6 == v7;

  return v8;
}

@end