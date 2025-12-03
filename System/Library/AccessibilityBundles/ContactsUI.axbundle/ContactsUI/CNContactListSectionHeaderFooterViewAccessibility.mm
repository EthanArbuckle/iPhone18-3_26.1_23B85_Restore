@interface CNContactListSectionHeaderFooterViewAccessibility
- (id)accessibilityLabel;
@end

@implementation CNContactListSectionHeaderFooterViewAccessibility

- (id)accessibilityLabel
{
  v6.receiver = self;
  v6.super_class = CNContactListSectionHeaderFooterViewAccessibility;
  accessibilityLabel = [(CNContactListSectionHeaderFooterViewAccessibility *)&v6 accessibilityLabel];
  currentLocale = [MEMORY[0x29EDB8DE0] currentLocale];
  v4 = [accessibilityLabel lowercaseStringWithLocale:currentLocale];

  return v4;
}

@end