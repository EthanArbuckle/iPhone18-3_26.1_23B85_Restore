@interface UIKeyShortcutHUDMenuViewControllerAccessibility
@end

@implementation UIKeyShortcutHUDMenuViewControllerAccessibility

uint64_t __94___UIKeyShortcutHUDMenuViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v15 = 0;
  objc_storeStrong(&v15, a3);
  [location[0] frame];
  v14 = v3;
  [v15 frame];
  if (v14 >= v4)
  {
    [location[0] frame];
    v12 = v5;
    [v15 frame];
    if (v12 <= v6)
    {
      [location[0] frame];
      v11 = v7;
      [v15 frame];
      v8 = 1;
      if (v11 < v9)
      {
        v8 = -1;
      }

      v17 = v8;
    }

    else
    {
      v17 = 1;
    }
  }

  else
  {
    v17 = -1;
  }

  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  return v17;
}

@end