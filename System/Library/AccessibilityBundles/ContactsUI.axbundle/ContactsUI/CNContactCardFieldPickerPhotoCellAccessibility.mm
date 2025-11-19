@interface CNContactCardFieldPickerPhotoCellAccessibility
- (id)accessibilityLabel;
@end

@implementation CNContactCardFieldPickerPhotoCellAccessibility

- (id)accessibilityLabel
{
  v2 = [(CNContactCardFieldPickerPhotoCellAccessibility *)self safeValueForKey:@"avatarView"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

@end