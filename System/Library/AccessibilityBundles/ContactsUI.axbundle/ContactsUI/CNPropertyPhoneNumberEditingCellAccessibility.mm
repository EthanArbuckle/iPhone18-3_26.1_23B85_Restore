@interface CNPropertyPhoneNumberEditingCellAccessibility
- (id)accessibilityValue;
@end

@implementation CNPropertyPhoneNumberEditingCellAccessibility

- (id)accessibilityValue
{
  v5.receiver = self;
  v5.super_class = CNPropertyPhoneNumberEditingCellAccessibility;
  v2 = [(CNPropertyPhoneNumberEditingCellAccessibility *)&v5 accessibilityValue];
  v3 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:v2];
  [v3 setAttribute:MEMORY[0x29EDB8EB0] forKey:*MEMORY[0x29EDBD968]];

  return v3;
}

@end