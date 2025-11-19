@interface BCSTorchButtonViewAccessibility
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation BCSTorchButtonViewAccessibility

- (unint64_t)accessibilityTraits
{
  v10.receiver = self;
  v10.super_class = BCSTorchButtonViewAccessibility;
  v3 = [(BCSTorchButtonViewAccessibility *)&v10 accessibilityTraits];
  v4 = *MEMORY[0x29EDC75A8];
  objc_opt_class();
  v5 = [(BCSTorchButtonViewAccessibility *)self safeValueForKey:@"_torchButton"];
  v6 = __UIAccessibilityCastAsClass();

  v7 = (v4 | v3 | *MEMORY[0x29EDC7F70]) & ~*MEMORY[0x29EDC7FC0];
  if ([v6 isEnabled])
  {
    v8 = 0;
  }

  else
  {
    v8 = *MEMORY[0x29EDC7FA8];
  }

  return v8 | v7;
}

- (id)accessibilityValue
{
  objc_opt_class();
  v3 = [(BCSTorchButtonViewAccessibility *)self safeValueForKey:@"_torchButton"];
  v4 = __UIAccessibilityCastAsClass();

  if ([v4 isSelected])
  {
    v5 = @"1";
  }

  else
  {
    v5 = @"0";
  }

  v6 = v5;

  return v5;
}

@end