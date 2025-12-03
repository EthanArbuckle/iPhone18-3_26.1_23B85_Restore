@interface SBUIViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityOverridesInvalidFrames;
- (BOOL)_accessibilityPointInside:(CGPoint)inside withEvent:(id)event;
- (BOOL)_accessibilitySupportsActivateAction;
- (BOOL)_axPerformGestureForAction:(id)action;
- (BOOL)isTransparentFocusItem;
@end

@implementation SBUIViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBReusableSnapshotItemContainer"];
  [validationsCopy validateClass:@"SBFolderContainerView" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"UIView" hasInstanceMethod:@"isTransparentFocusItem" withFullSignature:{"B", 0}];
}

- (BOOL)_accessibilityOverridesInvalidFrames
{
  accessibilityIdentification = [(SBUIViewAccessibility *)self accessibilityIdentification];
  v4 = [accessibilityIdentification isEqualToString:@"UnlockSpringViewWithBadHeight"];

  if (v4)
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = SBUIViewAccessibility;
  return [(SBUIViewAccessibility *)&v6 _accessibilityOverridesInvalidFrames];
}

- (BOOL)_accessibilityPointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  accessibilityIdentification = [(SBUIViewAccessibility *)self accessibilityIdentification];
  v9 = [accessibilityIdentification isEqualToString:@"UnlockSpringViewWithBadHeight"];

  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = SBUIViewAccessibility;
    v10 = [(SBUIViewAccessibility *)&v12 _accessibilityPointInside:eventCopy withEvent:x, y];
  }

  return v10;
}

- (BOOL)_accessibilitySupportsActivateAction
{
  accessibilityIdentifier = [(SBUIViewAccessibility *)self accessibilityIdentifier];
  if ([accessibilityIdentifier isEqualToString:@"CameraButton"])
  {
    _accessibilitySupportsActivateAction = 1;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = SBUIViewAccessibility;
    _accessibilitySupportsActivateAction = [(SBUIViewAccessibility *)&v6 _accessibilitySupportsActivateAction];
  }

  return _accessibilitySupportsActivateAction;
}

- (BOOL)_axPerformGestureForAction:(id)action
{
  v3 = MEMORY[0x29EDBDFA8];
  actionCopy = action;
  server = [v3 server];
  gesture = [actionCopy gesture];

  LOBYTE(actionCopy) = [server performMedusaGesture:gesture];
  return actionCopy;
}

- (BOOL)isTransparentFocusItem
{
  v19.receiver = self;
  v19.super_class = SBUIViewAccessibility;
  isTransparentFocusItem = [(SBUIViewAccessibility *)&v19 isTransparentFocusItem];
  if ([(SBUIViewAccessibility *)self _accessibilityIsFKARunningForFocusItem])
  {
    objc_opt_class();
    v4 = __UIAccessibilityCastAsClass();
    superview = [v4 superview];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v4 frame];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;
      [superview frame];
      v21.origin.x = v14;
      v21.origin.y = v15;
      v21.size.width = v16;
      v21.size.height = v17;
      v20.origin.x = v7;
      v20.origin.y = v9;
      v20.size.width = v11;
      v20.size.height = v13;
      isTransparentFocusItem |= CGRectEqualToRect(v20, v21);
    }
  }

  return isTransparentFocusItem & 1;
}

@end