@interface COSActiveWatchCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityIdentifier;
- (id)accessibilityLabel;
@end

@implementation COSActiveWatchCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"COSActiveWatchCell" hasInstanceVariable:@"_watchName" withType:"UILabel"];
  [validationsCopy validateClass:@"COSActiveWatchCell" hasInstanceVariable:@"_watchDetails" withType:"UILabel"];
}

- (id)accessibilityLabel
{
  v3 = [(COSActiveWatchCellAccessibility *)self safeValueForKey:@"_watchName"];
  accessibilityLabel = [v3 accessibilityLabel];
  v5 = [(COSActiveWatchCellAccessibility *)self safeValueForKey:@"_watchDetails"];
  accessibilityLabel2 = [v5 accessibilityLabel];
  v6 = __UIAXStringForVariables();

  return v6;
}

- (id)accessibilityIdentifier
{
  v2 = MEMORY[0x29EDBA0F8];
  accessibilityLabel = [(COSActiveWatchCellAccessibility *)self accessibilityLabel];
  v4 = [v2 stringWithFormat:@"PairedWatch: [%@]", accessibilityLabel];

  return v4;
}

@end