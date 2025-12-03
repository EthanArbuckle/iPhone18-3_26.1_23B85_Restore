@interface STUsageGraphViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityElements;
- (unint64_t)_axDataSetItemType;
@end

@implementation STUsageGraphViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"STUsageGraphViewController" hasInstanceMethod:@"weeklyAverageLine" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STUsageGraphViewController" hasInstanceVariable:@"_titleView" withType:"UIView"];
  [validationsCopy validateClass:@"STUsageGraphViewController" hasInstanceMethod:@"barViews" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STUsageGraphViewController" hasInstanceMethod:@"dataSet" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STBarView" hasInstanceMethod:@"dataPoint" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STUsageItem" hasInstanceMethod:@"totalUsage" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STUsageItem" hasInstanceMethod:@"itemType" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"STUsageReportGraphDataPoint" hasInstanceMethod:@"total" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STUsageReportGraphDataSet" hasInstanceMethod:@"itemType" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"STUsageReportGraphDataSet" hasInstanceMethod:@"total" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STUsageReportGraphDataPoint" hasInstanceMethod:@"date" withFullSignature:{"@", 0}];
}

- (unint64_t)_axDataSetItemType
{
  v2 = [(STUsageGraphViewControllerAccessibility *)self safeValueForKey:@"dataSet"];
  v3 = [v2 safeUnsignedIntegerForKey:@"itemType"];

  return v3;
}

- (id)accessibilityElements
{
  array = [MEMORY[0x29EDB8DE8] array];
  v4 = [(STUsageGraphViewControllerAccessibility *)self safeUIViewForKey:@"_titleView"];
  [array axSafelyAddObject:v4];

  v5 = [(STUsageGraphViewControllerAccessibility *)self _accessibilityValueForKey:@"container"];
  if (!v5)
  {
    objc_initWeak(&location, self);
    v6 = [AXSTGraphContainerElement alloc];
    v7 = [(STUsageGraphViewControllerAccessibility *)self safeUIViewForKey:@"view"];
    v5 = [(AXSTGraphContainerElement *)v6 initWithAccessibilityContainer:v7];

    [(AXSTGraphContainerElement *)v5 setMode:0];
    [(STUsageGraphViewControllerAccessibility *)self _accessibilitySetRetainedValue:v5 forKey:@"container"];
    [(AXSTGraphContainerElement *)v5 setShouldGroupAccessibilityChildren:1];
    objc_initWeak(&from, v5);
    v30[0] = MEMORY[0x29EDCA5F8];
    v30[1] = 3221225472;
    v30[2] = __64__STUsageGraphViewControllerAccessibility_accessibilityElements__block_invoke;
    v30[3] = &unk_29F2F3A08;
    objc_copyWeak(&v31, &from);
    [(AXSTGraphContainerElement *)v5 _setAccessibilityFrameBlock:v30];
    [(AXSTGraphContainerElement *)v5 setIsAccessibilityElement:0];
    v8 = accessibilityLocalizedString(@"weekly.summary.chart");
    [(AXSTGraphContainerElement *)v5 setAccessibilityLabel:v8];

    [(AXSTGraphContainerElement *)v5 setItemType:[(STUsageGraphViewControllerAccessibility *)self _axDataSetItemType]];
    v27[0] = MEMORY[0x29EDCA5F8];
    v27[1] = 3221225472;
    v27[2] = __64__STUsageGraphViewControllerAccessibility_accessibilityElements__block_invoke_2;
    v27[3] = &unk_29F2F3A30;
    objc_copyWeak(&v28, &location);
    objc_copyWeak(&v29, &from);
    [(AXSTGraphContainerElement *)v5 _setAccessibilityElementsBlock:v27];
    objc_destroyWeak(&v29);
    objc_destroyWeak(&v28);
    objc_destroyWeak(&v31);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  [array addObject:v5];
  v9 = [(STUsageGraphViewControllerAccessibility *)self safeUIViewForKey:@"weeklyAverageLine"];
  v10 = v9;
  if (v9 && ([v9 isHidden] & 1) == 0)
  {
    v11 = [(STUsageGraphViewControllerAccessibility *)self safeValueForKey:@"dataSet"];
    v12 = [v11 safeUnsignedIntegerForKey:@"itemType"];
    LOBYTE(location) = 0;
    objc_opt_class();
    v13 = [v11 safeValueForKey:@"total"];
    v14 = __UIAccessibilityCastAsClass();

    if (location == 1)
    {
      abort();
    }

    [v14 doubleValue];
    v16 = v15;

    v17 = MEMORY[0x29EDBA0F8];
    v18 = v16 / 7.0;
    v19 = accessibilityLocalizedString(@"per.day.interpolation");
    if (v12 == 5)
    {
      v20 = MEMORY[0x29EDBA0F8];
      v21 = @"notifications.count.format";
    }

    else
    {
      if (v12 != 6)
      {
        v22 = MEMORY[0x29C2EBAB0](v18 < 60.0, v18);
        v24 = [v17 stringWithFormat:v19, v22];
        goto LABEL_12;
      }

      v20 = MEMORY[0x29EDBA0F8];
      v21 = @"pickups.count.format";
    }

    v22 = accessibilityLocalizedString(v21);
    v23 = [v20 stringWithFormat:v22, v18];
    v24 = [v17 stringWithFormat:v19, v23];

LABEL_12:
    [v10 setIsAccessibilityElement:1];
    [v10 setAccessibilityTraits:{objc_msgSend(v10, "accessibilityTraits") & ~*MEMORY[0x29EDC7F88]}];
    v25 = accessibilityLocalizedString(@"weekly.average.line.label");
    [v10 setAccessibilityLabel:v25];

    [v10 setAccessibilityValue:v24];
    [array addObject:v10];
  }

  return array;
}

double __64__STUsageGraphViewControllerAccessibility_accessibilityElements__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _accessibilityChildrenUnionContentFrame];
  v3 = v2;

  return v3;
}

id __64__STUsageGraphViewControllerAccessibility_accessibilityElements__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained safeArrayForKey:@"barViews"];
  v4 = v3;
  if (!v3)
  {
    v3 = MEMORY[0x29EDB8E90];
  }

  v5 = [v3 axFilterObjectsUsingBlock:&__block_literal_global_3];

  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = __64__STUsageGraphViewControllerAccessibility_accessibilityElements__block_invoke_4;
  v7[3] = &unk_29F2F39E0;
  objc_copyWeak(&v8, (a1 + 40));
  [v5 enumerateObjectsUsingBlock:v7];
  objc_destroyWeak(&v8);

  return v5;
}

BOOL __64__STUsageGraphViewControllerAccessibility_accessibilityElements__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = [v2 safeValueForKey:@"dataPoint"];
  v4 = [v3 safeValueForKey:@"total"];
  v5 = __UIAccessibilityCastAsClass();

  [v5 doubleValue];
  v7 = v6 > 0.0;

  return v7;
}

void __64__STUsageGraphViewControllerAccessibility_accessibilityElements__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v3 setAccessibilityContainer:WeakRetained];
}

@end