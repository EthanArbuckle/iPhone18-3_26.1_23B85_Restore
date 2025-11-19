@interface _PGPictureInPictureContainerViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation _PGPictureInPictureContainerViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"_PGPictureInPictureContainerView" isKindOfClass:@"UIView"];
  [v3 validateClass:@"PGHitTestExtendableView"];
}

- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v20.receiver = self;
  v20.super_class = _PGPictureInPictureContainerViewAccessibility;
  v8 = [(_PGPictureInPictureContainerViewAccessibility *)&v20 _accessibilityHitTest:v7 withEvent:x, y];
  if (!v8)
  {
    objc_opt_class();
    v9 = __UIAccessibilityCastAsClass();
    v10 = [v9 superview];
    MEMORY[0x29C2E54E0](@"PGHitTestExtendableView");
    if (objc_opt_isKindOfClass())
    {
      v11 = [v9 superview];
    }

    else
    {
      v11 = 0;
    }

    v12 = [v11 safeValueForKey:@"hitTestExtenderView"];
    v13 = __UIAccessibilitySafeClass();

    v14 = [v13 safeUIViewForKey:@"_tab"];

    [v9 convertPoint:v14 toView:{x, y}];
    if ([v14 pointInside:v7 withEvent:?])
    {
      v15 = [v11 _accessibilityViewController];
      v16 = __UIAccessibilitySafeClass();

      v17 = [v16 safeValueForKey:@"_stashView"];

      [v9 convertPoint:v17 toView:{x, y}];
      v18 = [v17 _accessibilityHitTest:v7 withEvent:?];

      goto LABEL_9;
    }
  }

  v18 = v8;
LABEL_9:

  return v18;
}

@end