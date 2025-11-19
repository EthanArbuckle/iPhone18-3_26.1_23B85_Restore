@interface SBUIViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityOverridesInvalidFrames;
- (BOOL)_accessibilityPointInside:(CGPoint)a3 withEvent:(id)a4;
- (BOOL)_accessibilitySupportsActivateAction;
- (BOOL)_axPerformGestureForAction:(id)a3;
- (BOOL)isTransparentFocusItem;
@end

@implementation SBUIViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBReusableSnapshotItemContainer"];
  [v3 validateClass:@"SBFolderContainerView" isKindOfClass:@"UIView"];
  [v3 validateClass:@"UIView" hasInstanceMethod:@"isTransparentFocusItem" withFullSignature:{"B", 0}];
}

- (BOOL)_accessibilityOverridesInvalidFrames
{
  v3 = [(SBUIViewAccessibility *)self accessibilityIdentification];
  v4 = [v3 isEqualToString:@"UnlockSpringViewWithBadHeight"];

  if (v4)
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = SBUIViewAccessibility;
  return [(SBUIViewAccessibility *)&v6 _accessibilityOverridesInvalidFrames];
}

- (BOOL)_accessibilityPointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(SBUIViewAccessibility *)self accessibilityIdentification];
  v9 = [v8 isEqualToString:@"UnlockSpringViewWithBadHeight"];

  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = SBUIViewAccessibility;
    v10 = [(SBUIViewAccessibility *)&v12 _accessibilityPointInside:v7 withEvent:x, y];
  }

  return v10;
}

- (BOOL)_accessibilitySupportsActivateAction
{
  v3 = [(SBUIViewAccessibility *)self accessibilityIdentifier];
  if ([v3 isEqualToString:@"CameraButton"])
  {
    v4 = 1;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = SBUIViewAccessibility;
    v4 = [(SBUIViewAccessibility *)&v6 _accessibilitySupportsActivateAction];
  }

  return v4;
}

- (BOOL)_axPerformGestureForAction:(id)a3
{
  v3 = MEMORY[0x29EDBDFA8];
  v4 = a3;
  v5 = [v3 server];
  v6 = [v4 gesture];

  LOBYTE(v4) = [v5 performMedusaGesture:v6];
  return v4;
}

- (BOOL)isTransparentFocusItem
{
  v19.receiver = self;
  v19.super_class = SBUIViewAccessibility;
  v3 = [(SBUIViewAccessibility *)&v19 isTransparentFocusItem];
  if ([(SBUIViewAccessibility *)self _accessibilityIsFKARunningForFocusItem])
  {
    objc_opt_class();
    v4 = __UIAccessibilityCastAsClass();
    v5 = [v4 superview];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v4 frame];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;
      [v5 frame];
      v21.origin.x = v14;
      v21.origin.y = v15;
      v21.size.width = v16;
      v21.size.height = v17;
      v20.origin.x = v7;
      v20.origin.y = v9;
      v20.size.width = v11;
      v20.size.height = v13;
      v3 |= CGRectEqualToRect(v20, v21);
    }
  }

  return v3 & 1;
}

@end