@interface _PGPictureInPictureContainerViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation _PGPictureInPictureContainerViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"_PGPictureInPictureContainerView" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"PGHitTestExtendableView"];
}

- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  v20.receiver = self;
  v20.super_class = _PGPictureInPictureContainerViewAccessibility;
  v8 = [(_PGPictureInPictureContainerViewAccessibility *)&v20 _accessibilityHitTest:eventCopy withEvent:x, y];
  if (!v8)
  {
    objc_opt_class();
    v9 = __UIAccessibilityCastAsClass();
    superview = [v9 superview];
    MEMORY[0x29C2E54E0](@"PGHitTestExtendableView");
    if (objc_opt_isKindOfClass())
    {
      superview2 = [v9 superview];
    }

    else
    {
      superview2 = 0;
    }

    v12 = [superview2 safeValueForKey:@"hitTestExtenderView"];
    v13 = __UIAccessibilitySafeClass();

    v14 = [v13 safeUIViewForKey:@"_tab"];

    [v9 convertPoint:v14 toView:{x, y}];
    if ([v14 pointInside:eventCopy withEvent:?])
    {
      _accessibilityViewController = [superview2 _accessibilityViewController];
      v16 = __UIAccessibilitySafeClass();

      v17 = [v16 safeValueForKey:@"_stashView"];

      [v9 convertPoint:v17 toView:{x, y}];
      v18 = [v17 _accessibilityHitTest:eventCopy withEvent:?];

      goto LABEL_9;
    }
  }

  v18 = v8;
LABEL_9:

  return v18;
}

@end