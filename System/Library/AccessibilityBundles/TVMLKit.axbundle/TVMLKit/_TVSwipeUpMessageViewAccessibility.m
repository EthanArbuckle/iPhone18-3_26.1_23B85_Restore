@interface _TVSwipeUpMessageViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)isAccessibilityElement;
@end

@implementation _TVSwipeUpMessageViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"_TVSwipeUpMessageView" hasInstanceMethod:@"messageView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"_TVSwipeUpMessageView" hasInstanceMethod:@"isEnabled" withFullSignature:{"B", 0}];
}

- (BOOL)isAccessibilityElement
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  v3 = [v2 _accessibilityViewIsVisible];

  return v3;
}

@end