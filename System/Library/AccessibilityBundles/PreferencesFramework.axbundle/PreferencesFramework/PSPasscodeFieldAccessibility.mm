@interface PSPasscodeFieldAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation PSPasscodeFieldAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PSPasscodeField" hasInstanceMethod:@"numberOfEntryFields" withFullSignature:{"Q", 0}];
  [v3 validateClass:@"PSPasscodeField" hasInstanceMethod:@"stringValue" withFullSignature:{"@", 0}];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = PSPasscodeFieldAccessibility;
  return *MEMORY[0x29EDC7568] | [(PSPasscodeFieldAccessibility *)&v3 accessibilityTraits]| *MEMORY[0x29EDC7598];
}

- (id)accessibilityValue
{
  v3 = [(PSPasscodeFieldAccessibility *)self safeValueForKey:@"numberOfEntryFields"];
  v4 = [v3 integerValue];

  v5 = [(PSPasscodeFieldAccessibility *)self safeValueForKey:@"stringValue"];
  v6 = [v5 length];

  v7 = MEMORY[0x29EDBA0F8];
  v8 = accessibilityLocalizedString(@"passcode.values.entered");
  v9 = [v7 localizedStringWithFormat:v8, v6, v4];

  return v9;
}

@end