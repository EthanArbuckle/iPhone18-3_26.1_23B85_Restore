@interface TUISuggestionCandidateCellAccessibility
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
@end

@implementation TUISuggestionCandidateCellAccessibility

- (id)accessibilityLabel
{
  v2 = [(TUISuggestionCandidateCellAccessibility *)self safeValueForKey:@"textLabel"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (BOOL)isAccessibilityElement
{
  if (AXRequestingClient() == 4)
  {
    return 1;
  }

  v4 = [(TUISuggestionCandidateCellAccessibility *)self accessibilityLabel];
  v3 = [v4 length] != 0;

  return v3;
}

@end