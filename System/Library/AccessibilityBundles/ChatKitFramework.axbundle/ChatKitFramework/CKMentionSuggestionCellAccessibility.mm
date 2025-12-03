@interface CKMentionSuggestionCellAccessibility
- (id)accessibilityLabel;
@end

@implementation CKMentionSuggestionCellAccessibility

- (id)accessibilityLabel
{
  v2 = [(CKMentionSuggestionCellAccessibility *)self safeValueForKey:@"handleLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

@end