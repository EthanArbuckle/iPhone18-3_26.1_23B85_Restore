@interface COSPairedDeviceListTableCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (CGPoint)accessibilityActivationPoint;
- (id)accessibilityIdentifier;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation COSPairedDeviceListTableCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"COSPairedDeviceListTableCell" hasInstanceVariable:@"_watchName" withType:"UILabel"];
  [v3 validateClass:@"COSPairedDeviceListTableCell" hasInstanceVariable:@"_watchMaterial" withType:"UILabel"];
  [v3 validateClass:@"COSPairedDeviceListTableCell" hasInstanceVariable:@"_watchSize" withType:"UILabel"];
  [v3 validateClass:@"COSPairedDeviceListTableCell" hasInstanceVariable:@"_checkmark" withType:"COSPairedDeviceListCheckmark"];
  [v3 validateClass:@"PSTableCell" hasInstanceVariable:@"_checked" withType:"B"];
  [v3 validateClass:@"COSPairedDeviceListTableCell" hasInstanceMethod:@"checkmark" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(COSPairedDeviceListTableCellAccessibility *)self safeValueForKey:@"_watchName"];
  v4 = [v3 accessibilityLabel];
  v5 = [(COSPairedDeviceListTableCellAccessibility *)self safeValueForKey:@"_watchMaterial"];
  v6 = [v5 accessibilityLabel];
  v7 = [(COSPairedDeviceListTableCellAccessibility *)self safeValueForKey:@"_watchSize"];
  v10 = [v7 accessibilityLabel];
  v8 = __UIAXStringForVariables();

  return v8;
}

- (id)accessibilityIdentifier
{
  v2 = MEMORY[0x29EDBA0F8];
  v3 = [(COSPairedDeviceListTableCellAccessibility *)self accessibilityLabel];
  v4 = [v2 stringWithFormat:@"PairedWatch: [%@]", v3];

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
  v3 = [(COSPairedDeviceListTableCellAccessibility *)&v9 accessibilityTraits];
  if ([(COSPairedDeviceListTableCellAccessibility *)self safeBoolForKey:@"_checked"])
  {
    objc_opt_class();
    v4 = [(COSPairedDeviceListTableCellAccessibility *)self safeValueForKey:@"_checkmark"];
    v5 = __UIAccessibilityCastAsClass();

    v6 = [v5 isHidden];
    v7 = *MEMORY[0x29EDC7FC0];
    if (v6)
    {
      v7 = 0;
    }

    v3 |= v7;
  }

  return v3;
}

@end