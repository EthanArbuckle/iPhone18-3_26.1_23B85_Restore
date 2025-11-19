@interface UIPrinterTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation UIPrinterTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"UIPrinterTableViewCell" hasInstanceMethod:@"printerSelected" withFullSignature:{"B", 0}];
  [v3 validateClass:@"UIPrinterTableViewCell" hasInstanceMethod:@"printerState" withFullSignature:{"i", 0}];
}

- (id)accessibilityValue
{
  v2 = [(UIPrinterTableViewCellAccessibility *)self safeIntForKey:@"printerState"]- 1;
  if (v2 > 3)
  {
    v4 = 0;
  }

  else
  {
    v3 = off_29F2EE1D8[v2];
    v4 = UIKitAccessibilityLocalizedString();
  }

  return v4;
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = UIPrinterTableViewCellAccessibility;
  v3 = [(UIPrinterTableViewCellAccessibility *)&v7 accessibilityTraits];
  v4 = [(UIPrinterTableViewCellAccessibility *)self safeBoolForKey:@"printerSelected"];
  v5 = *MEMORY[0x29EDC7FC0];
  if (!v4)
  {
    v5 = 0;
  }

  return v5 | v3;
}

@end