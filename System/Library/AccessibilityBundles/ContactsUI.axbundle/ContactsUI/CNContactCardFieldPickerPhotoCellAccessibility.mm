@interface CNContactCardFieldPickerPhotoCellAccessibility
- (id)accessibilityLabel;
@end

@implementation CNContactCardFieldPickerPhotoCellAccessibility

- (id)accessibilityLabel
{
  v2 = [(CNContactCardFieldPickerPhotoCellAccessibility *)self safeValueForKey:@"avatarView"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

@end