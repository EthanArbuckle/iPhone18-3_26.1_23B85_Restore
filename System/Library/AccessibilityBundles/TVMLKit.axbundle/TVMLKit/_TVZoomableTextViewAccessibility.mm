@interface _TVZoomableTextViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityRespondsToUserInteraction;
@end

@implementation _TVZoomableTextViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"TVFocusableTextView"];
  [validationsCopy validateClass:@"_TVZoomableTextView" isKindOfClass:@"TVFocusableTextView"];
  [validationsCopy validateClass:@"TVFocusableTextView" hasInstanceMethod:@"moreLabel" withFullSignature:{"@", 0}];
}

- (BOOL)accessibilityRespondsToUserInteraction
{
  v2 = [(_TVZoomableTextViewAccessibility *)self safeValueForKey:@"moreLabel"];
  _accessibilityViewIsVisible = [v2 _accessibilityViewIsVisible];

  return _accessibilityViewIsVisible;
}

@end