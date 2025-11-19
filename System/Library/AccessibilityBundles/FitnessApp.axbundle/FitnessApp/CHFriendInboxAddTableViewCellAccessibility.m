@interface CHFriendInboxAddTableViewCellAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation CHFriendInboxAddTableViewCellAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = CHFriendInboxAddTableViewCellAccessibility;
  return UIAccessibilityTraitButton | [(CHFriendInboxAddTableViewCellAccessibility *)&v3 accessibilityTraits];
}

@end