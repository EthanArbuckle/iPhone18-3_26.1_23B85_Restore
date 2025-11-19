@interface HUSwitchCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (CGPoint)accessibilityActivationPoint;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation HUSwitchCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"HUSwitchCell" conformsToProtocol:@"HUDisableableCellProtocol"];
  [v3 validateProtocol:@"HUDisableableCellProtocol" hasRequiredInstanceMethod:@"isDisabled"];
}

- (id)accessibilityLabel
{
  v3 = [(HUSwitchCellAccessibility *)self textLabel];
  v4 = [v3 text];
  v5 = [(HUSwitchCellAccessibility *)self detailTextLabel];
  v8 = [v5 text];
  v6 = __UIAXStringForVariables();

  return v6;
}

- (unint64_t)accessibilityTraits
{
  v2 = *MEMORY[0x29EDC7FE8];
  v3 = [(HUSwitchCellAccessibility *)self safeBoolForKey:@"isDisabled"];
  v4 = MEMORY[0x29EDC7FA8];
  if (!v3)
  {
    v4 = MEMORY[0x29EDC7FA0];
  }

  return *v4 | v2;
}

- (id)accessibilityValue
{
  v2 = [(HUSwitchCellAccessibility *)self safeUIViewForKey:@"accessoryView"];
  v3 = [v2 accessibilityValue];

  return v3;
}

- (CGPoint)accessibilityActivationPoint
{
  v2 = [(HUSwitchCellAccessibility *)self safeUIViewForKey:@"accessoryView"];
  [v2 accessibilityActivationPoint];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

@end