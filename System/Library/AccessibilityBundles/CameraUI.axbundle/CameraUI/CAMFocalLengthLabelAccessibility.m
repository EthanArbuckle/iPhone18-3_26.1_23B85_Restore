@interface CAMFocalLengthLabelAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation CAMFocalLengthLabelAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CAMFocalLengthLabel" hasInstanceMethod:@"_numeralLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CAMFocalLengthLabel" hasInstanceMethod:@"_unitLabel" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = MEMORY[0x29EDBA0F8];
  v4 = [(CAMFocalLengthLabelAccessibility *)self safeValueForKey:@"_numeralLabel"];
  v5 = [v4 accessibilityLabel];
  v6 = [(CAMFocalLengthLabelAccessibility *)self safeValueForKey:@"_unitLabel"];
  v7 = [v6 accessibilityLabel];
  v8 = [v3 localizedStringWithFormat:@"%@ %@", v5, v7];

  return v8;
}

@end