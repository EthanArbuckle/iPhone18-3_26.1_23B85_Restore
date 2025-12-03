@interface STOverallUsageSummaryCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)isAccessibilityElement;
- (id)_accessibilityNoUsageViewIfPresent;
- (id)accessibilityElements;
- (id)accessibilityLabel;
@end

@implementation STOverallUsageSummaryCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"STOverallUsageSummaryCell" hasInstanceMethod:@"weekGraphViewController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STOverallUsageSummaryCell" hasInstanceMethod:@"noUsageDataView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STNoUsageDataView" hasInstanceMethod:@"noDataDetailTextLabel" withFullSignature:{"@", 0}];
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
  _accessibilityNoUsageViewIfPresent = [(STOverallUsageSummaryCellAccessibility *)self _accessibilityNoUsageViewIfPresent];
  v3 = _accessibilityNoUsageViewIfPresent != 0;

  return v3;
}

- (id)accessibilityLabel
{
  _accessibilityNoUsageViewIfPresent = [(STOverallUsageSummaryCellAccessibility *)self _accessibilityNoUsageViewIfPresent];
  v4 = _accessibilityNoUsageViewIfPresent;
  if (_accessibilityNoUsageViewIfPresent)
  {
    v5 = [_accessibilityNoUsageViewIfPresent safeValueForKey:@"noDataDetailTextLabel"];
    accessibilityLabel = [v5 accessibilityLabel];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = STOverallUsageSummaryCellAccessibility;
    accessibilityLabel = [(STOverallUsageSummaryCellAccessibility *)&v8 accessibilityLabel];
  }

  return accessibilityLabel;
}

- (id)accessibilityElements
{
  v3 = [(STOverallUsageSummaryCellAccessibility *)self safeValueForKey:@"weekGraphViewController"];
  accessibilityElements = [v3 accessibilityElements];

  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = __63__STOverallUsageSummaryCellAccessibility_accessibilityElements__block_invoke;
  v6[3] = &unk_29F2F39E0;
  objc_copyWeak(&v7, &location);
  [accessibilityElements enumerateObjectsUsingBlock:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);

  return accessibilityElements;
}

void __63__STOverallUsageSummaryCellAccessibility_accessibilityElements__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v3 setAccessibilityContainer:WeakRetained];
}

@end