@interface UIContextMenuUIControllerAccessibility
@end

@implementation UIContextMenuUIControllerAccessibility

void __59___UIContextMenuUIControllerAccessibility__axPerformEscape__block_invoke(id *a1)
{
  v11[2] = a1;
  v11[1] = a1;
  v11[0] = [a1[4] safeValueForKey:@"delegate"];
  v10 = [v11[0] safeValueForKeyPath:@"delegate.delegate"];
  v3 = v11[0];
  v2 = a1[4];
  v4 = MEMORY[0x29EDCA5F8];
  v5 = -1073741824;
  v6 = 0;
  v7 = __59___UIContextMenuUIControllerAccessibility__axPerformEscape__block_invoke_2;
  v8 = &unk_29F30C7C8;
  v9 = MEMORY[0x29EDC9748](v10);
  [v3 contextMenuUIController:v2 didRequestDismissalWithReason:0 alongsideActions:? completion:?];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(v11, 0);
}

void __59___UIContextMenuUIControllerAccessibility__axPerformEscape__block_invoke_2()
{
  if (AXProcessIsSpringBoard())
  {
    NSClassFromString(&cfstr_Sbtopaffordanc.isa);
    if (objc_opt_isKindOfClass())
    {
      v0 = [MEMORY[0x29EDBDFA8] server];
      [v0 dismissShelfSwitcher];
      MEMORY[0x29EDC9740](v0);
    }
  }

  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

uint64_t __63___UIContextMenuUIControllerAccessibility_platterContainerView__block_invoke(id *a1)
{
  v3[2] = a1;
  v3[1] = a1;
  v3[0] = objc_loadWeakRetained(a1 + 4);
  v2 = [(_UIContextMenuUIControllerAccessibility *)v3[0] _axPerformEscape];
  objc_storeStrong(v3, 0);
  return v2;
}

void __71___UIContextMenuUIControllerAccessibility_presentationTransitionDidEnd__block_invoke(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  v3 = [a1[4] safeValueForKey:@"menuView"];
  location[0] = [v3 safeValueForKey:@"currentListView"];
  *&v1 = MEMORY[0x29EDC9740](v3).n128_u64[0];
  notification = *MEMORY[0x29EDC7488];
  v5 = 0;
  if (location[0])
  {
    UIAccessibilityPostNotification(notification, location[0]);
  }

  else
  {
    v6 = [a1[4] safeValueForKey:{@"platterContainerView", v1}];
    v5 = 1;
    UIAccessibilityPostNotification(notification, v6);
  }

  if (v5)
  {
    MEMORY[0x29EDC9740](v6);
  }

  objc_storeStrong(location, 0);
}

double __85___UIContextMenuUIControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained accessibilityFrame];
  v4 = v1;
  MEMORY[0x29EDC9740](WeakRetained);
  return v4;
}

uint64_t __85___UIContextMenuUIControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(id *a1)
{
  v3[2] = a1;
  v3[1] = a1;
  v3[0] = objc_loadWeakRetained(a1 + 4);
  v2 = [(_UIContextMenuUIControllerAccessibility *)v3[0] _axPerformEscape];
  objc_storeStrong(v3, 0);
  return v2;
}

@end