@interface PKMultilineKeyValueTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityValue;
@end

@implementation PKMultilineKeyValueTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PKMultilineKeyValueTableViewCell" hasInstanceVariable:@"_keyLabel" withType:"UILabel"];
  [v3 validateClass:@"PKMultilineKeyValueTableViewCell" hasInstanceVariable:@"_valueLabel" withType:"UILabel"];
}

- (id)accessibilityValue
{
  v2 = [(PKMultilineKeyValueTableViewCellAccessibility *)self _accessibilityStringForLabelKeyValues:@"_valueLabel"];
  v3 = [MEMORY[0x29EDB9F50] controlCharacterSet];
  v4 = [v2 stringByTrimmingCharactersInSet:v3];

  v5 = PKPANMask();
  LODWORD(v3) = [v4 hasPrefix:v5];

  if (v3)
  {
    v6 = MEMORY[0x29EDBD7E8];
    v7 = MEMORY[0x29EDBA0F8];
    v8 = accessibilityLocalizedString(@"ends.with");
    v9 = [v7 stringWithFormat:v8, v4];
    v10 = [v6 axAttributedStringWithString:v9];

    [v10 setAttribute:*MEMORY[0x29EDB8F00] forKey:*MEMORY[0x29EDBD9D0]];
  }

  else
  {
    v10 = v4;
  }

  return v10;
}

@end