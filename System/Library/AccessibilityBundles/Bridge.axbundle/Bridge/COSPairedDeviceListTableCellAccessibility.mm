@interface COSPairedDeviceListTableCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (CGPoint)accessibilityActivationPoint;
- (id)accessibilityIdentifier;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation COSPairedDeviceListTableCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"COSPairedDeviceListTableCell" hasInstanceVariable:@"_watchName" withType:"UILabel"];
  [validationsCopy validateClass:@"COSPairedDeviceListTableCell" hasInstanceVariable:@"_watchMaterial" withType:"UILabel"];
  [validationsCopy validateClass:@"COSPairedDeviceListTableCell" hasInstanceVariable:@"_watchSize" withType:"UILabel"];
  [validationsCopy validateClass:@"COSPairedDeviceListTableCell" hasInstanceVariable:@"_checkmark" withType:"COSPairedDeviceListCheckmark"];
  [validationsCopy validateClass:@"PSTableCell" hasInstanceVariable:@"_checked" withType:"B"];
  [validationsCopy validateClass:@"COSPairedDeviceListTableCell" hasInstanceMethod:@"checkmark" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(COSPairedDeviceListTableCellAccessibility *)self safeValueForKey:@"_watchName"];
  accessibilityLabel = [v3 accessibilityLabel];
  v5 = [(COSPairedDeviceListTableCellAccessibility *)self safeValueForKey:@"_watchMaterial"];
  accessibilityLabel2 = [v5 accessibilityLabel];
  v7 = [(COSPairedDeviceListTableCellAccessibility *)self safeValueForKey:@"_watchSize"];
  accessibilityLabel3 = [v7 accessibilityLabel];
  v8 = __UIAXStringForVariables();

  return v8;
}

- (id)accessibilityIdentifier
{
  v2 = MEMORY[0x29EDBA0F8];
  accessibilityLabel = [(COSPairedDeviceListTableCellAccessibility *)self accessibilityLabel];
  v4 = [v2 stringWithFormat:@"PairedWatch: [%@]", accessibilityLabel];

  return v4;
}

- (CGPoint)accessibilityActivationPoint
{
  v2 = [(COSPairedDeviceListTableCellAccessibility *)self safeValueForKey:@"checkmark"];
  [v2 accessibilityActivationPoint];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (unint64_t)accessibilityTraits
{
  v9.receiver = self;
  v9.super_class = COSPairedDeviceListTableCellAccessibility;
  accessibilityTraits = [(COSPairedDeviceListTableCellAccessibility *)&v9 accessibilityTraits];
  if ([(COSPairedDeviceListTableCellAccessibility *)self safeBoolForKey:@"_checked"])
  {
    objc_opt_class();
    v4 = [(COSPairedDeviceListTableCellAccessibility *)self safeValueForKey:@"_checkmark"];
    v5 = __UIAccessibilityCastAsClass();

    isHidden = [v5 isHidden];
    v7 = *MEMORY[0x29EDC7FC0];
    if (isHidden)
    {
      v7 = 0;
    }

    accessibilityTraits |= v7;
  }

  return accessibilityTraits;
}

@end