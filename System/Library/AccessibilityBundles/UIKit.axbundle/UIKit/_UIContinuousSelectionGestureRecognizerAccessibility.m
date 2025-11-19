@interface _UIContinuousSelectionGestureRecognizerAccessibility
+ (BOOL)_supportsTouchContinuation;
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation _UIContinuousSelectionGestureRecognizerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v5 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = @"UIGestureRecognizer";
  [location[0] validateClass:@"_UIContinuousSelectionGestureRecognizer" isKindOfClass:?];
  [location[0] validateClass:@"UIGestureRecognizer" hasClassMethod:@"_supportsTouchContinuation" withFullSignature:{"B", 0}];
  objc_storeStrong(v5, obj);
}

+ (BOOL)_supportsTouchContinuation
{
  v5 = a1;
  v4 = a2;
  if (UIAccessibilityIsVoiceOverRunning() || UIAccessibilityIsSwitchControlRunning() || _AXSCommandAndControlEnabled())
  {
    return 0;
  }

  v3.receiver = v5;
  v3.super_class = &OBJC_METACLASS____UIContinuousSelectionGestureRecognizerAccessibility;
  return objc_msgSendSuper2(&v3, sel__supportsTouchContinuation) & 1;
}

@end