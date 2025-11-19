@interface _UISystemGestureWindowAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_isEligibleForFocusInteraction;
@end

@implementation _UISystemGestureWindowAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v5 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = @"UIView";
  [location[0] validateClass:@"_UISystemGestureWindow" isKindOfClass:?];
  [location[0] validateClass:@"UIView" hasInstanceMethod:@"_isEligibleForFocusInteraction" withFullSignature:{"B", 0}];
  objc_storeStrong(v5, obj);
}

- (BOOL)_isEligibleForFocusInteraction
{
  v6 = self;
  v5 = a2;
  v3.receiver = self;
  v3.super_class = _UISystemGestureWindowAccessibility;
  v4 = [(_UISystemGestureWindowAccessibility *)&v3 _isEligibleForFocusInteraction];
  if (([(_UISystemGestureWindowAccessibility *)v6 _accessibilityIsFKARunningForFocusItem]& 1) != 0)
  {
    v4 = 0;
  }

  return v4 & 1;
}

@end