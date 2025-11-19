@interface STMostUsedCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation STMostUsedCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"STMostUsedCell" hasInstanceMethod:@"allowanceIconView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"STUsageCell" hasInstanceVariable:@"_itemNameLabel" withType:"UILabel"];
  [v3 validateClass:@"STUsageCell" hasInstanceVariable:@"_usageLabel" withType:"UILabel"];
  [v3 validateClass:@"STUsageCell" hasInstanceMethod:@"value" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(STMostUsedCellAccessibility *)self safeValueForKey:@"value"];
  v4 = __UIAccessibilitySafeClass();

  objc_opt_class();
  v5 = [v4 safeValueForKey:@"totalUsage"];
  v6 = __UIAccessibilityCastAsClass();

  if (!v6 || ([v6 doubleValue], v8 = v7, objc_msgSend(v6, "doubleValue"), MEMORY[0x29C2EBAB0](v9 < 60.0, v8), (v10 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v11 = [(STMostUsedCellAccessibility *)self safeValueForKey:@"_usageLabel"];
    v10 = [v11 accessibilityLabel];
  }

  v12 = [(STMostUsedCellAccessibility *)self safeValueForKey:@"_itemNameLabel"];
  v13 = [v12 accessibilityLabel];

  v14 = __AXStringForVariables();

  return v14;
}

- (id)accessibilityValue
{
  v2 = [(STMostUsedCellAccessibility *)self safeUIViewForKey:@"allowanceIconView"];
  v3 = [v2 accessibilityIdentifier];

  if ([v3 isEqualToString:@"HourGlassEmpty"])
  {
    v4 = accessibilityLocalizedString(@"allowance.expired");
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end