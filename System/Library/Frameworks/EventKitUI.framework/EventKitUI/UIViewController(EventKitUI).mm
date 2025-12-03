@interface UIViewController(EventKitUI)
- (id)EKUI_viewHierarchy;
- (uint64_t)isPresentedInsidePopover;
@end

@implementation UIViewController(EventKitUI)

- (id)EKUI_viewHierarchy
{
  view = [self view];
  window = [view window];

  if (window)
  {
    v4 = window;
  }

  else
  {
    parentViewController = [self parentViewController];
    v6 = parentViewController;
    if (parentViewController)
    {
      [parentViewController EKUI_viewHierarchy];
    }

    else
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      EKUIMultiwindowAssert(0, @"Unable to fetch current window (from %@). Assuming main window, which may cause layout errors because of incorrect assumptions about size class or orientation.", v9, v10, v11, v12, v13, v14, v8);

      EKUIMainWindowForMultiwindowError();
    }
    v4 = ;
  }

  return v4;
}

- (uint64_t)isPresentedInsidePopover
{
  selfCopy = self;
  if (!selfCopy)
  {
    return 0;
  }

  v2 = selfCopy;
  while (1)
  {
    popoverPresentationController = [v2 popoverPresentationController];
    if (popoverPresentationController)
    {
      v4 = popoverPresentationController;
      popoverPresentationController2 = [v2 popoverPresentationController];
      _isAdapted = [popoverPresentationController2 _isAdapted];

      if (!_isAdapted)
      {
        break;
      }
    }

    presentingViewController = [v2 presentingViewController];

    v2 = presentingViewController;
    if (!presentingViewController)
    {
      goto LABEL_9;
    }
  }

  presentingViewController = 1;
LABEL_9:

  return presentingViewController;
}

@end