@interface TUISuggestionCandidateCellAccessibility
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
@end

@implementation TUISuggestionCandidateCellAccessibility

- (id)accessibilityLabel
{
  v2 = [(TUISuggestionCandidateCellAccessibility *)self safeValueForKey:@"textLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (BOOL)isAccessibilityElement
{
  if (AXRequestingClient() == 4)
  {
    return 1;
  }

  accessibilityLabel = [(TUISuggestionCandidateCellAccessibility *)self accessibilityLabel];
  v3 = [accessibilityLabel length] != 0;

  return v3;
}

@end