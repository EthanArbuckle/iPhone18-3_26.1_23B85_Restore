@interface TouchPassThroughViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)_axWindowScene;
- (id)accessibilityLabel;
@end

@implementation TouchPassThroughViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"UIScene" hasInstanceMethod:@"_FBSScene" withFullSignature:{"@", 0}];
  [v3 validateClass:@"FBSScene" hasInstanceMethod:@"hostProcess" withFullSignature:{"@", 0}];
  [v3 validateClass:@"BSProcessHandle" hasInstanceMethod:@"bundleIdentifier" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CHUISWidgetScene" hasInstanceMethod:@"widget" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CHSWidget" hasInstanceMethod:@"containerBundleIdentifier" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(TouchPassThroughViewAccessibility *)self _axWindowScene];
  v4 = [v3 safeValueForKey:@"widget"];
  v5 = [v4 safeStringForKey:@"containerBundleIdentifier"];

  if (v5)
  {
    v6 = AXAppNameForBundleId();
  }

  else
  {
    v9.receiver = self;
    v9.super_class = TouchPassThroughViewAccessibility;
    v6 = [(TouchPassThroughViewAccessibility *)&v9 accessibilityLabel];
  }

  v7 = v6;

  return v7;
}

- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(TouchPassThroughViewAccessibility *)self _axWindowScene];
  v9 = [v8 safeValueForKeyPath:@"_FBSScene.hostProcess"];
  v10 = [v9 safeStringForKey:@"bundleIdentifier"];

  if ([v10 isEqualToString:@"com.apple.PosterBoard"] & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"com.apple.clockface") & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"com.apple.NanoSettings"))
  {
    v11 = 0;
  }

  else
  {
    v13 = [(TouchPassThroughViewAccessibility *)self _accessibilityParentView];
    [v13 convertPoint:0 toView:{x, y}];
    v15 = v14;
    v17 = v16;
    v18 = [v13 window];
    [v18 convertPoint:0 toWindow:{v15, v17}];

    v19 = [(TouchPassThroughViewAccessibility *)self _accessibilityAccessibleDescendants];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v20 = [v19 countByEnumeratingWithState:&v29 objects:v33 count:16];
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
            objc_enumerationMutation(v19);
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

        v21 = [v19 countByEnumeratingWithState:&v29 objects:v33 count:16];
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
  v2 = [(TouchPassThroughViewAccessibility *)self _accessibilityWindow];
  v3 = [v2 windowScene];

  return v3;
}

@end