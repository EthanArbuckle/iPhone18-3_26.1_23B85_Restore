@interface _TVSwipeUpMessageViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)isAccessibilityElement;
@end

@implementation _TVSwipeUpMessageViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"_TVSwipeUpMessageView" hasInstanceMethod:@"messageView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"_TVSwipeUpMessageView" hasInstanceMethod:@"isEnabled" withFullSignature:{"B", 0}];
}

- (BOOL)isAccessibilityElement
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  _accessibilityViewIsVisible = [v2 _accessibilityViewIsVisible];

  return _accessibilityViewIsVisible;
}

@end