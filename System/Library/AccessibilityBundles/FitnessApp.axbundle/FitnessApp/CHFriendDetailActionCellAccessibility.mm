@interface CHFriendDetailActionCellAccessibility
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation CHFriendDetailActionCellAccessibility

- (id)accessibilityLabel
{
  v2 = [(CHFriendDetailActionCellAccessibility *)self _accessibilityFindSubviewDescendant:&__block_literal_global_2];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

BOOL __59__CHFriendDetailActionCellAccessibility_accessibilityLabel__block_invoke(id a1, UIView *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = CHFriendDetailActionCellAccessibility;
  return UIAccessibilityTraitButton | [(CHFriendDetailActionCellAccessibility *)&v3 accessibilityTraits];
}

@end