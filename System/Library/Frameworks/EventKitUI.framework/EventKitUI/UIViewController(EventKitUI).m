@interface UIViewController(EventKitUI)
- (id)EKUI_viewHierarchy;
- (uint64_t)isPresentedInsidePopover;
@end

@implementation UIViewController(EventKitUI)

- (id)EKUI_viewHierarchy
{
  v2 = [a1 view];
  v3 = [v2 window];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v5 = [a1 parentViewController];
    v6 = v5;
    if (v5)
    {
      [v5 EKUI_viewHierarchy];
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
  v1 = a1;
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  while (1)
  {
    v3 = [v2 popoverPresentationController];
    if (v3)
    {
      v4 = v3;
      v5 = [v2 popoverPresentationController];
      v6 = [v5 _isAdapted];

      if (!v6)
      {
        break;
      }
    }

    v7 = [v2 presentingViewController];

    v2 = v7;
    if (!v7)
    {
      goto LABEL_9;
    }
  }

  v7 = 1;
LABEL_9:

  return v7;
}

@end