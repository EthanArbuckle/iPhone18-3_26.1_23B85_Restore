@interface UIViewController(ABPresentation)
- (BOOL)_ab_isInPopoverRecursive:()ABPresentation;
- (BOOL)ab_shouldUseTransparentBackgroundInPopovers;
- (id)cnui_appropriatePresentationController;
- (uint64_t)ab_isInSheet;
- (uint64_t)ab_shouldShowNavBarButtons;
- (void)cnui_addChildViewController:()ABPresentation;
@end

@implementation UIViewController(ABPresentation)

- (id)cnui_appropriatePresentationController
{
  selfCopy = self;
  parentViewController = [selfCopy parentViewController];

  if (parentViewController)
  {
    do
    {
      parentViewController2 = [selfCopy parentViewController];

      v3ParentViewController = [parentViewController2 parentViewController];

      selfCopy = parentViewController2;
    }

    while (v3ParentViewController);
  }

  else
  {
    parentViewController2 = selfCopy;
  }

  presentationController = [parentViewController2 presentationController];

  return presentationController;
}

- (void)cnui_addChildViewController:()ABPresentation
{
  v6 = a3;
  [self addChildViewController:v6];
  view = [self view];
  view2 = [v6 view];
  [view bounds];
  [view2 setFrame:?];
  [view2 setAutoresizingMask:18];
  if (([self shouldAutomaticallyForwardAppearanceMethods] & 1) == 0)
  {
    [v6 beginAppearanceTransition:1 animated:0];
  }

  [view addSubview:view2];
  [v6 didMoveToParentViewController:self];
  if (([self shouldAutomaticallyForwardAppearanceMethods] & 1) == 0)
  {
    [v6 endAppearanceTransition];
  }
}

- (uint64_t)ab_isInSheet
{
  result = dyld_program_sdk_at_least();
  if (result)
  {
    result = [self _existingPresentationControllerImmediate:0 effective:1];
    if (result)
    {
      v3 = result;
      while ([v3 presentationStyle] != 2 && objc_msgSend(v3, "presentationStyle") != 1)
      {
        presentingViewController = [v3 presentingViewController];
        v5 = [presentingViewController _existingPresentationControllerImmediate:0 effective:1];

        v3 = v5;
        if (!v5)
        {
          return 0;
        }
      }

      return 1;
    }
  }

  return result;
}

- (BOOL)_ab_isInPopoverRecursive:()ABPresentation
{
  if (dyld_program_sdk_at_least())
  {
    v5 = [self _existingPresentationControllerImmediate:0 effective:1];
    if (!v5)
    {
      return 0;
    }

    v6 = v5;
    v7 = a3 ^ 1;
    while (1)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if ((isKindOfClass | v7))
      {
        break;
      }

      presentingViewController = [v6 presentingViewController];
      v10 = [presentingViewController _existingPresentationControllerImmediate:0 effective:1];

      v6 = v10;
      if (!v10)
      {
        return 0;
      }
    }

    v15 = isKindOfClass;

    return (v15 & 1) != 0;
  }

  _popoverController = [self _popoverController];
  v12 = _popoverController;
  if (!_popoverController || (a3 & 1) != 0)
  {

    return v12 != 0;
  }

  contentViewController = [_popoverController contentViewController];
  v14 = contentViewController == self;

  return v14;
}

- (BOOL)ab_shouldUseTransparentBackgroundInPopovers
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1 || ![self ab_isInPopover])
  {
    return 0;
  }

  presentingViewController = [self presentingViewController];
  v5 = presentingViewController == 0;

  return v5;
}

- (uint64_t)ab_shouldShowNavBarButtons
{
  if (![self ab_isInPopover])
  {
    return 1;
  }

  presentingViewController = [self presentingViewController];
  if (presentingViewController)
  {
    v3 = 1;
  }

  else
  {
    v3 = [*MEMORY[0x1E69DDA98] applicationState] == 2;
  }

  return v3;
}

@end