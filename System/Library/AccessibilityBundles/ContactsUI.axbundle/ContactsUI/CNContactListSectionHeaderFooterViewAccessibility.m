@interface CNContactListSectionHeaderFooterViewAccessibility
- (id)accessibilityLabel;
@end

@implementation CNContactListSectionHeaderFooterViewAccessibility

- (id)accessibilityLabel
{
  v6.receiver = self;
  v6.super_class = CNContactListSectionHeaderFooterViewAccessibility;
  v2 = [(CNContactListSectionHeaderFooterViewAccessibility *)&v6 accessibilityLabel];
  v3 = [MEMORY[0x29EDB8DE0] currentLocale];
  v4 = [v2 lowercaseStringWithLocale:v3];

  return v4;
}

@end