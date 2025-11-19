@interface CCUIContentModuleContainerTransitionAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_axElementToFocusForViewController:(id)a3;
- (id)_axExpandedPlatterModalParentOfView:(id)a3;
- (void)transitionDidEnd:(BOOL)a3;
@end

@implementation CCUIContentModuleContainerTransitionAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CCUIContentModuleContainerTransition" hasInstanceMethod:@"transitionDidEnd:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"CCUIContentModuleContainerTransition" hasInstanceMethod:@"viewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CCUIContentModuleContainerTransition" hasInstanceMethod:@"isAppearanceTransition" withFullSignature:{"B", 0}];
  [v3 validateClass:@"_UIInteractiveHighlightContentView"];
  [v3 validateClass:@"CCUIContentModuleContainerViewController"];
  [v3 validateClass:@"CCUIContentModuleContainerViewController" hasInstanceMethod:@"moduleContentView" withFullSignature:{"@", 0}];
}

- (void)transitionDidEnd:(BOOL)a3
{
  v3 = a3;
  v10.receiver = self;
  v10.super_class = CCUIContentModuleContainerTransitionAccessibility;
  [(CCUIContentModuleContainerTransitionAccessibility *)&v10 transitionDidEnd:?];
  if (v3)
  {
    objc_opt_class();
    v5 = [(CCUIContentModuleContainerTransitionAccessibility *)self safeValueForKey:@"viewController"];
    v6 = __UIAccessibilityCastAsClass();

    v7 = [(CCUIContentModuleContainerTransitionAccessibility *)self _axElementToFocusForViewController:v6];
    v8 = [(CCUIContentModuleContainerTransitionAccessibility *)self safeBoolForKey:@"isAppearanceTransition"];
    v9 = [(CCUIContentModuleContainerTransitionAccessibility *)self _axExpandedPlatterModalParentOfView:v7];
    [v9 setAccessibilityViewIsModal:v8];
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], v7);
  }
}

- (id)_axExpandedPlatterModalParentOfView:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x29C2D22C0](@"_UIInteractiveHighlightContentView");
  if (v4)
  {
    v7[0] = MEMORY[0x29EDCA5F8];
    v7[1] = 3221225472;
    v7[2] = __89__CCUIContentModuleContainerTransitionAccessibility__axExpandedPlatterModalParentOfView___block_invoke;
    v7[3] = &__block_descriptor_40_e8_B16__0_8lu32l8;
    v7[4] = v4;
    v5 = [v3 _accessibilityFindAncestor:v7 startWithSelf:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_axElementToFocusForViewController:(id)a3
{
  v3 = a3;
  if ([v3 safeBoolForKey:@"expanded"])
  {
    v4 = [v3 safeValueForKey:@"moduleContentView"];
  }

  else
  {
    v5 = [v3 safeValueForKey:@"contentViewController"];
    if ((objc_opt_respondsToSelector() & 1) == 0 || ([v5 _accessibilityControlCenterElementToFocusAfterClose], (v4 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v4 = [v3 safeValueForKey:@"moduleContentView"];
    }
  }

  return v4;
}

@end