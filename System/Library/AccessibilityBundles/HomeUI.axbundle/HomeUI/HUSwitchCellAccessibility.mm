@interface HUSwitchCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (CGPoint)accessibilityActivationPoint;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation HUSwitchCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HUSwitchCell" conformsToProtocol:@"HUDisableableCellProtocol"];
  [validationsCopy validateProtocol:@"HUDisableableCellProtocol" hasRequiredInstanceMethod:@"isDisabled"];
}

- (id)accessibilityLabel
{
  textLabel = [(HUSwitchCellAccessibility *)self textLabel];
  text = [textLabel text];
  detailTextLabel = [(HUSwitchCellAccessibility *)self detailTextLabel];
  text2 = [detailTextLabel text];
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
  accessibilityValue = [v2 accessibilityValue];

  return accessibilityValue;
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