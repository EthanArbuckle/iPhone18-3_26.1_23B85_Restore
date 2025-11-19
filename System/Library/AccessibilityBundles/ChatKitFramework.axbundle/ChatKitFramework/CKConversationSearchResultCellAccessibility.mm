@interface CKConversationSearchResultCellAccessibility
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation CKConversationSearchResultCellAccessibility

- (id)accessibilityLabel
{
  v2 = [(CKConversationSearchResultCellAccessibility *)self safeValueForKey:@"searchCell"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = CKConversationSearchResultCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(CKConversationSearchResultCellAccessibility *)&v3 accessibilityTraits];
}

@end