@interface STUsageSummaryTitleViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation STUsageSummaryTitleViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"STUsageSummaryTitleView" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"STUsageSummaryTitleView" hasInstanceMethod:@"usageLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"STUsageSummaryTitleView" hasInstanceMethod:@"deltaAverageLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"STUsageSummaryTitleView" hasInstanceMethod:@"usageReport" withFullSignature:{"@", 0}];
  [v3 validateClass:@"STUsageSummaryTitleView" hasInstanceMethod:@"usageItemType" withFullSignature:{"Q", 0}];
  [v3 validateClass:@"STUsageReport" hasInstanceMethod:@"totalScreenTime" withFullSignature:{"d", 0}];
  [v3 validateClass:@"STUsageReport" hasInstanceMethod:@"type" withFullSignature:{"Q", 0}];
  [v3 validateClass:@"STUsageReport" hasInstanceMethod:@"activePickupDateIntervals" withFullSignature:{"d", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(STUsageSummaryTitleViewAccessibility *)self safeValueForKey:@"titleLabel"];
  v4 = [v3 accessibilityLabel];

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
    if (v8 != 1 || (MEMORY[0x29C2EBAB0](v7 < 60.0, v7), (v9 = objc_claimAutoreleasedReturnValue()) == 0))
    {
LABEL_5:
      v10 = [(STUsageSummaryTitleViewAccessibility *)self safeValueForKey:@"usageLabel"];
      v9 = [v10 accessibilityLabel];
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

    v9 = MEMORY[0x29C2EBAB0](0, v18);

    if (!v9)
    {
      goto LABEL_5;
    }
  }

  v11 = [(STUsageSummaryTitleViewAccessibility *)self safeValueForKey:@"deltaAverageLabel"];
  v12 = [v11 accessibilityLabel];

  v13 = __AXStringForVariables();

  return v13;
}

@end