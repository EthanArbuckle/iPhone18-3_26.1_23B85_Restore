@interface TouchPassThroughViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event;
- (id)_axWindowScene;
- (id)accessibilityLabel;
@end

@implementation TouchPassThroughViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"UIScene" hasInstanceMethod:@"_FBSScene" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"FBSScene" hasInstanceMethod:@"hostProcess" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"BSProcessHandle" hasInstanceMethod:@"bundleIdentifier" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CHUISWidgetScene" hasInstanceMethod:@"widget" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CHSWidget" hasInstanceMethod:@"containerBundleIdentifier" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  _axWindowScene = [(TouchPassThroughViewAccessibility *)self _axWindowScene];
  v4 = [_axWindowScene safeValueForKey:@"widget"];
  v5 = [v4 safeStringForKey:@"containerBundleIdentifier"];

  if (v5)
  {
    accessibilityLabel = AXAppNameForBundleId();
  }

  else
  {
    v9.receiver = self;
    v9.super_class = TouchPassThroughViewAccessibility;
    accessibilityLabel = [(TouchPassThroughViewAccessibility *)&v9 accessibilityLabel];
  }

  v7 = accessibilityLabel;

  return v7;
}

- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  _axWindowScene = [(TouchPassThroughViewAccessibility *)self _axWindowScene];
  v9 = [_axWindowScene safeValueForKeyPath:@"_FBSScene.hostProcess"];
  v10 = [v9 safeStringForKey:@"bundleIdentifier"];

  if ([v10 isEqualToString:@"com.apple.PosterBoard"] & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"com.apple.clockface") & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"com.apple.NanoSettings"))
  {
    v11 = 0;
  }

  else
  {
    _accessibilityParentView = [(TouchPassThroughViewAccessibility *)self _accessibilityParentView];
    [_accessibilityParentView convertPoint:0 toView:{x, y}];
    v15 = v14;
    v17 = v16;
    window = [_accessibilityParentView window];
    [window convertPoint:0 toWindow:{v15, v17}];

    _accessibilityAccessibleDescendants = [(TouchPassThroughViewAccessibility *)self _accessibilityAccessibleDescendants];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v20 = [_accessibilityAccessibleDescendants countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v20)
    {
      v21 = v20;
      v11 = 0;
      v22 = *v30;
      v23 = 3.40282347e38;
      do
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v30 != v22)
          {
            objc_enumerationMutation(_accessibilityAccessibleDescendants);
          }

          v25 = *(*(&v29 + 1) + 8 * i);
          [v25 accessibilityActivationPoint];
          AX_CGPointGetDistanceToPoint();
          if (v26 < v23)
          {
            v27 = v26;
            v28 = v25;

            v23 = v27;
            v11 = v28;
          }
        }

        v21 = [_accessibilityAccessibleDescendants countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v21);
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (id)_axWindowScene
{
  _accessibilityWindow = [(TouchPassThroughViewAccessibility *)self _accessibilityWindow];
  windowScene = [_accessibilityWindow windowScene];

  return windowScene;
}

@end