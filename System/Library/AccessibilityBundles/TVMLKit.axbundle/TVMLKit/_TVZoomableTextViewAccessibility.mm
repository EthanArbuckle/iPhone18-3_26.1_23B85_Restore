@interface _TVZoomableTextViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityRespondsToUserInteraction;
@end

@implementation _TVZoomableTextViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"TVFocusableTextView"];
  [v3 validateClass:@"_TVZoomableTextView" isKindOfClass:@"TVFocusableTextView"];
  [v3 validateClass:@"TVFocusableTextView" hasInstanceMethod:@"moreLabel" withFullSignature:{"@", 0}];
}

- (BOOL)accessibilityRespondsToUserInteraction
{
  v2 = [(_TVZoomableTextViewAccessibility *)self safeValueForKey:@"moreLabel"];
  v3 = [v2 _accessibilityViewIsVisible];

  return v3;
}

@end