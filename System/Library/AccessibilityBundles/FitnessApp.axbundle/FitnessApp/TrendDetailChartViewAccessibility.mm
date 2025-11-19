@interface TrendDetailChartViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityElements;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)layoutSubviews;
@end

@implementation TrendDetailChartViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"FitnessApp.TrendDetailChartView" hasInstanceMethod:@"accessibilityDateIntervalForIndex:" withFullSignature:{"@", "q", 0}];
  [v3 validateClass:@"FitnessApp.TrendDetailChartView" hasInstanceMethod:@"accessibilityQuantityForIndex:" withFullSignature:{"@", "q", 0}];
  [v3 validateClass:@"FitnessApp.TrendDetailChartView" hasInstanceMethod:@"layoutSubviews" withFullSignature:{"v", 0}];
  [v3 validateClass:@"FitnessApp.TrendDetailChartView" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"FitnessApp.TrendDetailChartView" hasInstanceMethod:@"chartMaxLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"FitnessApp.TrendDetailChartView" hasInstanceMethod:@"accessibilityUnit" withFullSignature:{"@", 0}];
  [v3 validateClass:@"FitnessApp.TrendDetailChartView" hasInstanceMethod:@"barStops" withFullSignature:{"@", 0}];
}

- (id)accessibilityElements
{
  v2 = self;
  v40 = [(TrendDetailChartViewAccessibility *)self _accessibilityValueForKey:kUIAccessibilityStorageKeyChildren];
  if (!v40)
  {
    v38 = [(TrendDetailChartViewAccessibility *)v2 _accessibilityGraphData];
    v41 = [v38 count];
    v3 = [NSMutableArray arrayWithCapacity:?];
    [(TrendDetailChartViewAccessibility *)v2 _accessibilitySetRetainedValue:v3 forKey:kUIAccessibilityStorageKeyChildren];
    v4 = [(TrendDetailChartViewAccessibility *)v2 safeUIViewForKey:@"titleLabel"];
    [v4 _accessibilityAddTrait:UIAccessibilityTraitHeader];
    v40 = v3;
    [v3 addObject:v4];
    v5 = objc_alloc_init(NSDateIntervalFormatter);
    [v5 setTimeStyle:0];
    v37 = v5;
    [v5 setDateTemplate:@"MMMMdyyyy"];
    LOBYTE(v42) = 0;
    objc_opt_class();
    v39 = __UIAccessibilityCastAsClass();
    if (v41 >= 1 && v39)
    {
      v34 = v4;
      [v4 frame];
      v7 = v6 + v6;
      [v39 frame];
      v9 = v8;
      v36 = floorf(v9) - v7;
      [v39 frame];
      v10 = 0;
      v12 = v11 / v41;
      v13 = 2.22507386e-308;
      v14 = 1.79769313e308;
      v15 = &unk_1C4D8;
      v35 = v2;
      do
      {
        v42 = 0;
        v43 = &v42;
        v44 = 0x3032000000;
        v45 = __Block_byref_object_copy__0;
        v46 = __Block_byref_object_dispose__0;
        v47 = 0;
        AXPerformSafeBlock();
        v16 = v43[5];
        _Block_object_dispose(&v42, 8);

        v42 = 0;
        v43 = &v42;
        v44 = 0x3032000000;
        v45 = __Block_byref_object_copy__0;
        v46 = __Block_byref_object_dispose__0;
        v47 = 0;
        v17 = v15;
        AXPerformSafeBlock();
        v18 = v43[5];
        _Block_object_dispose(&v42, 8);

        LOBYTE(v42) = 0;
        objc_opt_class();
        v19 = [(TrendDetailChartViewAccessibility *)v2 safeValueForKey:@"accessibilityUnit"];
        v20 = __UIAccessibilityCastAsClass();

        if (v42 == 1)
        {
          abort();
        }

        if (v20 && v18 && v16 && [v16 isCompatibleWithUnit:v20])
        {
          [v16 doubleValueForUnit:v20];
          v22 = v21;
          v23 = [[UIAccessibilityElement alloc] initWithAccessibilityContainer:v39];
          v24 = [v38 objectAtIndexedSubscript:v10];
          [v24 floatValue];
          v26 = v12 + v25;

          [v23 setAccessibilityFrameInContainerSpace:{v26, v7, v12, v36}];
          v27 = [v37 stringFromDateInterval:v18];
          [v23 setAccessibilityLabel:v27];

          v28 = accessibilityLocalizedString(@"trends.value.with.unit");
          v29 = AXFormatFloat();
          v30 = [NSString stringWithFormat:v28, v29, v20];
          [v23 setAccessibilityValue:v30];

          v2 = v35;
          [v40 addObject:v23];
          if (v22 > v13)
          {
            v13 = v22;
          }

          if (v22 < v14)
          {
            v14 = v22;
          }
        }

        ++v10;
        v15 = v17;
      }

      while (v41 != v10);
      v31 = [NSNumber numberWithDouble:floor(v14 * 100.0 + 0.5) / 100.0];
      [(TrendDetailChartViewAccessibility *)v2 _accessibilitySetRetainedValue:v31 forKey:@"kAXTrendDetailGraphCachedMin"];

      v32 = [NSNumber numberWithDouble:floor(v13 * 100.0 + 0.5) / 100.0];
      [(TrendDetailChartViewAccessibility *)v2 _accessibilitySetRetainedValue:v32 forKey:@"kAXTrendDetailGraphCachedMax"];

      v4 = v34;
    }

    [(TrendDetailChartViewAccessibility *)v2 _accessibilitySetRetainedValue:v40 forKey:kUIAccessibilityStorageKeyChildren];
  }

  return v40;
}

uint64_t __58__TrendDetailChartViewAccessibility_accessibilityElements__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) accessibilityQuantityForIndex:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

uint64_t __58__TrendDetailChartViewAccessibility_accessibilityElements__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) accessibilityDateIntervalForIndex:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v9.receiver = self;
  v9.super_class = TrendDetailChartViewAccessibility;
  [(TrendDetailChartViewAccessibility *)&v9 _accessibilityLoadAccessibilityInformation];
  v3 = [(TrendDetailChartViewAccessibility *)self safeArrayForKey:@"barStops"];
  v4 = v3;
  if (v3 && [v3 count] && (objc_msgSend(v4, "firstObject"), v5 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v5, (isKindOfClass & 1) != 0))
  {
    v7 = self;
    v8 = v4;
  }

  else
  {
    v7 = self;
    v8 = 0;
  }

  [(TrendDetailChartViewAccessibility *)v7 _accessibilitySetRetainedValue:v8 forKey:@"kAXTrendDetailGraphElements"];
  [(TrendDetailChartViewAccessibility *)self _accessibilitySetRetainedValue:0 forKey:kUIAccessibilityStorageKeyChildren];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = TrendDetailChartViewAccessibility;
  [(TrendDetailChartViewAccessibility *)&v3 layoutSubviews];
  [(TrendDetailChartViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end