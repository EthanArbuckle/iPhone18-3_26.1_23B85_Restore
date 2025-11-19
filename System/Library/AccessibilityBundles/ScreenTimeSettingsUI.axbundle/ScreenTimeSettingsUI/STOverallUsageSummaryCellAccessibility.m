@interface STOverallUsageSummaryCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)isAccessibilityElement;
- (id)_accessibilityNoUsageViewIfPresent;
- (id)accessibilityElements;
- (id)accessibilityLabel;
@end

@implementation STOverallUsageSummaryCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"STOverallUsageSummaryCell" hasInstanceMethod:@"weekGraphViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"STOverallUsageSummaryCell" hasInstanceMethod:@"noUsageDataView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"STNoUsageDataView" hasInstanceMethod:@"noDataDetailTextLabel" withFullSignature:{"@", 0}];
}

- (id)_accessibilityNoUsageViewIfPresent
{
  v2 = [(STOverallUsageSummaryCellAccessibility *)self safeUIViewForKey:@"noUsageDataView"];
  if ([v2 isHidden])
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  v4 = v3;

  return v3;
}

- (BOOL)isAccessibilityElement
{
  v2 = [(STOverallUsageSummaryCellAccessibility *)self _accessibilityNoUsageViewIfPresent];
  v3 = v2 != 0;

  return v3;
}

- (id)accessibilityLabel
{
  v3 = [(STOverallUsageSummaryCellAccessibility *)self _accessibilityNoUsageViewIfPresent];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 safeValueForKey:@"noDataDetailTextLabel"];
    v6 = [v5 accessibilityLabel];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = STOverallUsageSummaryCellAccessibility;
    v6 = [(STOverallUsageSummaryCellAccessibility *)&v8 accessibilityLabel];
  }

  return v6;
}

- (id)accessibilityElements
{
  v3 = [(STOverallUsageSummaryCellAccessibility *)self safeValueForKey:@"weekGraphViewController"];
  v4 = [v3 accessibilityElements];

  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = __63__STOverallUsageSummaryCellAccessibility_accessibilityElements__block_invoke;
  v6[3] = &unk_29F2F39E0;
  objc_copyWeak(&v7, &location);
  [v4 enumerateObjectsUsingBlock:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);

  return v4;
}

void __63__STOverallUsageSummaryCellAccessibility_accessibilityElements__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v3 setAccessibilityContainer:WeakRetained];
}

@end