@interface STUsageSummaryTitleViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation STUsageSummaryTitleViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"STUsageSummaryTitleView" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STUsageSummaryTitleView" hasInstanceMethod:@"usageLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STUsageSummaryTitleView" hasInstanceMethod:@"deltaAverageLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STUsageSummaryTitleView" hasInstanceMethod:@"usageReport" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STUsageSummaryTitleView" hasInstanceMethod:@"usageItemType" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"STUsageReport" hasInstanceMethod:@"totalScreenTime" withFullSignature:{"d", 0}];
  [validationsCopy validateClass:@"STUsageReport" hasInstanceMethod:@"type" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"STUsageReport" hasInstanceMethod:@"activePickupDateIntervals" withFullSignature:{"d", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(STUsageSummaryTitleViewAccessibility *)self safeValueForKey:@"titleLabel"];
  accessibilityLabel = [v3 accessibilityLabel];

  v5 = [(STUsageSummaryTitleViewAccessibility *)self safeValueForKey:@"usageReport"];
  if ([(STUsageSummaryTitleViewAccessibility *)self safeUnsignedIntegerForKey:@"usageItemType"]!= 1)
  {
    goto LABEL_5;
  }

  [v5 safeDoubleForKey:@"totalScreenTime"];
  v7 = v6;
  v8 = [v5 safeUnsignedIntegerForKey:@"type"];
  if (v8)
  {
    if (v8 != 1 || (MEMORY[0x29C2EBAB0](v7 < 60.0, v7), (accessibilityLabel2 = objc_claimAutoreleasedReturnValue()) == 0))
    {
LABEL_5:
      v10 = [(STUsageSummaryTitleViewAccessibility *)self safeValueForKey:@"usageLabel"];
      accessibilityLabel2 = [v10 accessibilityLabel];
    }
  }

  else
  {
    v15 = objc_opt_new();
    [v15 setAllowedUnits:96];
    [v15 setUnitsStyle:1];
    [v5 safeCGFloatForKey:@"activePickupDateIntervals"];
    v16 = v7 / v18.n128_f64[0];
    v17 = v18.n128_f64[0] <= 0.0;
    v18.n128_u64[0] = 0;
    if (!v17)
    {
      v18.n128_f64[0] = v16;
    }

    accessibilityLabel2 = MEMORY[0x29C2EBAB0](0, v18);

    if (!accessibilityLabel2)
    {
      goto LABEL_5;
    }
  }

  v11 = [(STUsageSummaryTitleViewAccessibility *)self safeValueForKey:@"deltaAverageLabel"];
  accessibilityLabel3 = [v11 accessibilityLabel];

  v13 = __AXStringForVariables();

  return v13;
}

@end