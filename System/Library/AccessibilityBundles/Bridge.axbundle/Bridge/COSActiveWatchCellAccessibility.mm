@interface COSActiveWatchCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityIdentifier;
- (id)accessibilityLabel;
@end

@implementation COSActiveWatchCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"COSActiveWatchCell" hasInstanceVariable:@"_watchName" withType:"UILabel"];
  [v3 validateClass:@"COSActiveWatchCell" hasInstanceVariable:@"_watchDetails" withType:"UILabel"];
}

- (id)accessibilityLabel
{
  v3 = [(COSActiveWatchCellAccessibility *)self safeValueForKey:@"_watchName"];
  v4 = [v3 accessibilityLabel];
  v5 = [(COSActiveWatchCellAccessibility *)self safeValueForKey:@"_watchDetails"];
  v8 = [v5 accessibilityLabel];
  v6 = __UIAXStringForVariables();

  return v6;
}

- (id)accessibilityIdentifier
{
  v2 = MEMORY[0x29EDBA0F8];
  v3 = [(COSActiveWatchCellAccessibility *)self accessibilityLabel];
  v4 = [v2 stringWithFormat:@"PairedWatch: [%@]", v3];

  return v4;
}

@end