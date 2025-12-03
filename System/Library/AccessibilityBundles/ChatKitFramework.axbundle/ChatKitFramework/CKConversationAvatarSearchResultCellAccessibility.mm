@interface CKConversationAvatarSearchResultCellAccessibility
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation CKConversationAvatarSearchResultCellAccessibility

- (id)accessibilityLabel
{
  v2 = [(CKConversationAvatarSearchResultCellAccessibility *)self safeValueForKey:@"nameLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = CKConversationAvatarSearchResultCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(CKConversationAvatarSearchResultCellAccessibility *)&v3 accessibilityTraits];
}

@end