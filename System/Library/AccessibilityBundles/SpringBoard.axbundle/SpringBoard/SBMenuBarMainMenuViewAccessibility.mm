@interface SBMenuBarMainMenuViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (CGPoint)accessibilityActivationPoint;
@end

@implementation SBMenuBarMainMenuViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBMenuBarMainMenuView" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBMenuBarViewController" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBMenuBarManager" hasInstanceMethod:@"windowControlsWrapperView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBWindowControlsWrapperView"];
  [validationsCopy validateClass:@"SBWindowControlsWrapperView" hasInstanceMethod:@"pointInside:withEvent:" withFullSignature:{"B", "{CGPoint=dd}", "@", 0}];
}

- (CGPoint)accessibilityActivationPoint
{
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = [(SBMenuBarMainMenuViewAccessibility *)self safeValueForKey:@"delegate"];
  v5 = [v4 safeValueForKey:@"delegate"];
  v25 = 0;
  objc_opt_class();
  v6 = [v5 safeValueForKey:@"windowControlsWrapperView"];
  v7 = __UIAccessibilityCastAsClass();

  if (!v7 || !v3 || ([v3 bounds], objc_msgSend(v3, "convertRect:toView:", v7), v9 = v8, v11 = v10, v13 = v12, v15 = v14, UIRectGetCenter(), (objc_msgSend(v7, "pointInside:withEvent:", 0) & 1) != 0) && (v27.origin.x = v9, v27.origin.y = v11, v27.size.width = v13, v27.size.height = v15, v16 = CGRectGetMaxX(v27) + -1.0, v28.origin.x = v9, v28.origin.y = v11, v28.size.width = v13, v28.size.height = v15, (objc_msgSend(v7, "pointInside:withEvent:", 0, v16, CGRectGetMidY(v28)) & 1) != 0) && (v29.origin.x = v9, v29.origin.y = v11, v29.size.width = v13, v29.size.height = v15, v17 = CGRectGetMinX(v29) + 1.0, v30.origin.x = v9, v30.origin.y = v11, v30.size.width = v13, v30.size.height = v15, (objc_msgSend(v7, "pointInside:withEvent:", 0, v17, CGRectGetMidY(v30)) & 1) != 0))
  {
    v24.receiver = self;
    v24.super_class = SBMenuBarMainMenuViewAccessibility;
    [(SBMenuBarMainMenuViewAccessibility *)&v24 accessibilityActivationPoint];
  }

  else
  {
    UIAccessibilityPointForPoint();
  }

  v20 = v18;
  v21 = v19;

  v22 = v20;
  v23 = v21;
  result.y = v23;
  result.x = v22;
  return result;
}

@end