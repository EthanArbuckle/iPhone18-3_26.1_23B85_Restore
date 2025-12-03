@interface CNPropertyPhoneNumberEditingCellAccessibility
- (id)accessibilityValue;
@end

@implementation CNPropertyPhoneNumberEditingCellAccessibility

- (id)accessibilityValue
{
  v5.receiver = self;
  v5.super_class = CNPropertyPhoneNumberEditingCellAccessibility;
  accessibilityValue = [(CNPropertyPhoneNumberEditingCellAccessibility *)&v5 accessibilityValue];
  v3 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:accessibilityValue];
  [v3 setAttribute:MEMORY[0x29EDB8EB0] forKey:*MEMORY[0x29EDBD968]];

  return v3;
}

@end