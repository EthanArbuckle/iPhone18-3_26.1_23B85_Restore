@interface CKMentionSuggestionCellAccessibility
- (id)accessibilityLabel;
@end

@implementation CKMentionSuggestionCellAccessibility

- (id)accessibilityLabel
{
  v2 = [(CKMentionSuggestionCellAccessibility *)self safeValueForKey:@"handleLabel"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

@end