@interface HKInteractiveChartViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
+ (void)_axConfigureGraphAccessibilityFromData:(id)a3 forGraphView:(id)a4;
+ (void)_axConfigureGraphViewInfoFromData:(id)a3 forGraphView:(id)a4;
+ (void)_axTrimAndInterpolateValues:(id *)a3 withXvalues:(id *)a4;
- (id)_displayNameForDisplayType:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_replacePrimaryGraphViewControllerWithTimeScope:(int64_t)a3 anchorDate:(id)a4 animated:(BOOL)a5;
- (void)_setDateSelectorToVisibleRange;
- (void)graphView:(id)a3 didUpdateSelectedPoint:(id)a4;
- (void)graphViewDidEndSelection:(id)a3;
@end

@implementation HKInteractiveChartViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"HKGraphZoomLevelConfiguration"];
  [v3 validateClass:@"HKAccessibilityData"];
  [v3 validateClass:@"HKGraphZoomLevelConfiguration" hasClassMethod:@"timeScopeForDateRange:" withFullSignature:{"q", "@", 0}];
  [v3 validateClass:@"HKInteractiveChartViewController" hasInstanceMethod:@"_setDateSelectorToVisibleRange" withFullSignature:{"v", 0}];
  [v3 validateClass:@"HKInteractiveChartViewController" hasInstanceMethod:@"_replacePrimaryGraphViewControllerWithTimeScope:anchorDate:animated:" withFullSignature:{"v", "q", "@", "B", 0}];
  [v3 validateClass:@"UITableViewCell" hasInstanceMethod:@"_accessibilityClearChildren" withFullSignature:{"v", 0}];
  [v3 validateClass:@"HKTimeScopeControl" hasInstanceMethod:@"selectedTimeScope" withFullSignature:{"q", 0}];
  [v3 validateClass:@"HKInteractiveChartViewController" hasInstanceMethod:@"primaryGraphViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HKGraphViewController" hasInstanceMethod:@"graphView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HKInteractiveChartViewController" hasInstanceVariable:@"_currentTimeView" withType:"HKCurrentTimeView"];
  [v3 validateClass:@"HKInteractiveChartViewController" hasInstanceVariable:@"_currentValueView" withType:"UIView"];
  [v3 validateClass:@"HKInteractiveChartViewController" hasInstanceMethod:@"accessibilityDataForChart" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HKAccessibilityData" hasInstanceMethod:@"accessibilitySpans" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HKAccessibilitySpan" hasInstanceMethod:@"dataComprehensionMinYValue" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HKAccessibilitySpan" hasInstanceMethod:@"dataComprehensionMaxYValue" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HKAccessibilitySpan" hasInstanceMethod:@"dataComprehensionUnitForChart" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HKAccessibilitySpan" hasInstanceMethod:@"dataSeriesType" withFullSignature:{"q", 0}];
  [v3 validateClass:@"HKAccessibilityData" hasInstanceMethod:@"accessibilityPointData" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HKAccessibilityPointData" hasInstanceMethod:@"horizontalTimeCoordinate" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HKAccessibilityPointData" hasInstanceMethod:@"values" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HKAccessibilityPointData" hasInstanceMethod:@"horizontalScreenCoordinate" withFullSignature:{"d", 0}];
  [v3 validateClass:@"HKAccessibilityValue" hasInstanceMethod:@"valueTitle" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HKAccessibilityValue" hasInstanceMethod:@"valueType" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HKAccessibilityValue" hasInstanceMethod:@"valueDescription" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HKAccessibilityValue" hasInstanceMethod:@"valueAsNumber" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HKInteractiveChartViewController" hasInstanceMethod:@"_displayNameForDisplayType:" withFullSignature:{"@", "@", 0}];
  [v3 validateClass:@"HKInteractiveChartViewController" hasInstanceMethod:@"_currentValueEnabled" withFullSignature:{"B", 0}];
  [v3 validateClass:@"HKInteractiveChartViewController" hasInstanceMethod:@"lollipopController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HKInteractiveChartViewController" hasInstanceMethod:@"graphView:didUpdateSelectedPoint:" withFullSignature:{"v", "@", "@", 0}];
  [v3 validateClass:@"HKInteractiveChartViewController" hasInstanceMethod:@"graphViewDidEndSelection:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"HKDisplayType" hasInstanceMethod:@"localization" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HKDisplayTypeLocalization" hasInstanceMethod:@"displayName" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HKLollipopController" hasInstanceMethod:@"isVisible" withFullSignature:{"B", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = HKInteractiveChartViewControllerAccessibility;
  [(HKInteractiveChartViewControllerAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  v3 = [(HKInteractiveChartViewControllerAccessibility *)self safeValueForKey:@"accessibilityDataForChart"];
  v4 = [(HKInteractiveChartViewControllerAccessibility *)self safeValueForKey:@"primaryGraphViewController"];
  v5 = [v4 safeUIViewForKey:@"graphView"];

  [objc_opt_class() _axConfigureGraphViewInfoFromData:v3 forGraphView:v5];
  [objc_opt_class() _axConfigureGraphAccessibilityFromData:v3 forGraphView:v5];
}

+ (void)_axConfigureGraphViewInfoFromData:(id)a3 forGraphView:(id)a4
{
  v26 = *MEMORY[0x29EDCA608];
  v5 = a3;
  v6 = a4;
  MEMORY[0x29C2D9130](@"HKAccessibilityData");
  if (objc_opt_isKindOfClass())
  {
    v7 = [v5 safeDictionaryForKey:@"accessibilitySpans"];
    v8 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      do
      {
        v13 = 0;
        do
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [v9 objectForKeyedSubscript:{*(*(&v21 + 1) + 8 * v13), v21}];
          [v8 addObject:v14];

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v11);
    }

    if ([v8 count])
    {
      v15 = [v8 firstObject];
      v16 = [v15 safeValueForKey:@"dataComprehensionMinYValue"];
      if (v16)
      {
        v17 = v16;
      }

      else
      {
        v17 = &unk_2A21BBCB8;
      }

      [v6 _accessibilitySetRetainedValue:v17 forKey:{@"kAXGraphViewYAxisMin", v21}];
      v18 = [v15 safeValueForKey:@"dataComprehensionMaxYValue"];
      [v6 _accessibilitySetRetainedValue:v18 forKey:@"kAXGraphViewYAxisMax"];

      v19 = [v15 safeStringForKey:@"dataComprehensionUnitForChart"];
      [v6 _accessibilitySetRetainedValue:v19 forKey:@"kAXGraphViewUnit"];

      [v6 _accessibilitySetIntegerValue:objc_msgSend(v15 forKey:{"safeIntegerForKey:", @"dataSeriesType", @"kAXGraphViewDataSeriesType"}];
    }
  }

  v20 = *MEMORY[0x29EDCA608];
}

+ (void)_axConfigureGraphAccessibilityFromData:(id)a3 forGraphView:(id)a4
{
  v62 = *MEMORY[0x29EDCA608];
  v6 = a3;
  v7 = a4;
  MEMORY[0x29C2D9130](@"HKAccessibilityData");
  if (objc_opt_isKindOfClass())
  {
    v35 = a1;
    v43 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    v42 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    v41 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    v37 = v6;
    [v6 safeArrayForKey:@"accessibilityPointData"];
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    obj = v59 = 0u;
    v8 = [obj countByEnumeratingWithState:&v56 objects:v61 count:16];
    if (!v8)
    {
      goto LABEL_26;
    }

    v9 = v8;
    v10 = *v57;
    v38 = *v57;
    v39 = v7;
    while (1)
    {
      v11 = 0;
      v40 = v9;
      do
      {
        if (*v57 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v56 + 1) + 8 * v11);
        MEMORY[0x29C2D9130](@"HKAccessibilityPointData");
        if (objc_opt_isKindOfClass())
        {
          v13 = [objc_alloc(MEMORY[0x29EDC78F8]) initWithAccessibilityContainer:v7];
          v48 = [v12 safeStringForKey:@"horizontalTimeCoordinate"];
          v49 = v13;
          [v13 setAccessibilityLabel:?];
          v47 = v12;
          v14 = [v12 safeArrayForKey:@"values"];
          v15 = objc_opt_new();
          v46 = v14;
          if ([v14 count])
          {
            v45 = v11;
            v54 = 0u;
            v55 = 0u;
            v52 = 0u;
            v53 = 0u;
            v16 = v14;
            v17 = [v16 countByEnumeratingWithState:&v52 objects:v60 count:16];
            if (v17)
            {
              v18 = v17;
              v19 = *v53;
              do
              {
                for (i = 0; i != v18; ++i)
                {
                  if (*v53 != v19)
                  {
                    objc_enumerationMutation(v16);
                  }

                  v21 = *(*(&v52 + 1) + 8 * i);
                  v22 = [v21 safeStringForKey:{@"valueTitle", v35}];
                  if (([v15 containsObject:v22] & 1) == 0)
                  {
                    [v15 addObject:v22];
                  }

                  v23 = [v21 safeStringForKey:@"valueType"];
                  [v15 axSafelyAddObject:v23];

                  v24 = [v21 safeStringForKey:@"valueDescription"];
                  [v15 axSafelyAddObject:v24];
                }

                v18 = [v16 countByEnumeratingWithState:&v52 objects:v60 count:16];
              }

              while (v18);
            }

            v25 = MEMORY[0x29C2D9150](v15);
            v26 = [v16 lastObject];
            v27 = [v26 safeValueForKey:@"valueAsNumber"];

            if (v27)
            {
              [v41 addObject:v27];
              v10 = v38;
              v7 = v39;
              v9 = v40;
              v11 = v45;
LABEL_23:

              [v42 addObject:v48];
              [v49 setAccessibilityValue:v25];
              [v47 safeCGFloatForKey:@"horizontalScreenCoordinate"];
              v29 = v28 + -5.0;
              [v7 frame];
              v31 = v30;
              [v7 frame];
              [v49 setAccessibilityFrameInContainerSpace:{v29, v31, 10.0}];
              [v43 addObject:v49];

              goto LABEL_24;
            }

            v10 = v38;
            v7 = v39;
            v9 = v40;
            v11 = v45;
          }

          else
          {
            v25 = 0;
          }

          v27 = [MEMORY[0x29EDB8E28] null];
          [v41 addObject:v27];
          goto LABEL_23;
        }

LABEL_24:
        ++v11;
      }

      while (v11 != v9);
      v9 = [obj countByEnumeratingWithState:&v56 objects:v61 count:16];
      if (!v9)
      {
LABEL_26:
        [v7 setAccessibilityElements:{v43, v35}];
        v50 = v42;
        v51 = v41;
        [v36 _axTrimAndInterpolateValues:&v51 withXvalues:&v50];
        v32 = v51;

        v33 = v50;
        [v7 _accessibilitySetRetainedValue:v32 forKey:@"kAXGraphViewGraphElementsYValues"];
        [v7 _accessibilitySetRetainedValue:v33 forKey:@"kAXGraphViewGraphElementsXValues"];

        v6 = v37;
        break;
      }
    }
  }

  v34 = *MEMORY[0x29EDCA608];
}

+ (void)_axTrimAndInterpolateValues:(id *)a3 withXvalues:(id *)a4
{
  if (a3)
  {
    if (a4)
    {
      if ([*a3 count])
      {
        if ([*a4 count])
        {
          v6 = [*a3 count];
          if (v6 == [*a4 count])
          {
            if ([*a3 count])
            {
              v7 = 0;
              while (1)
              {
                v8 = [*a3 objectAtIndexedSubscript:v7];
                v9 = [MEMORY[0x29EDB8E28] null];
                v10 = [v8 isEqual:v9];

                if (!v10)
                {
                  break;
                }

                if ([*a3 count] <= ++v7)
                {
                  goto LABEL_12;
                }
              }

              if (!v7)
              {
                goto LABEL_13;
              }

LABEL_12:
              [*a3 removeObjectsInRange:{0, v7}];
              [*a4 removeObjectsInRange:{0, v7}];
            }

LABEL_13:
            if ([*a3 count])
            {
              v11 = [*a3 count];
              v12 = v11 - 1;
              if (v11 >= 1)
              {
                v13 = (v11 - 1);
                while (1)
                {
                  v14 = [*a3 objectAtIndexedSubscript:v13];
                  v15 = [MEMORY[0x29EDB8E28] null];
                  v16 = [v14 isEqual:v15];

                  if (!v16)
                  {
                    break;
                  }

                  if (v13-- <= 0)
                  {
                    LODWORD(v13) = -1;
                    break;
                  }
                }

                v18 = v12 - v13;
                if (v12 > v13)
                {
                  v19 = v18;
                  [*a3 removeObjectsInRange:{v13 + 1, v18}];
                  [*a4 removeObjectsInRange:{v13 + 1, v19}];
                }
              }

              if ([*a3 count] >= 3)
              {
                v45 = [*a3 count];
                if (v45 >= 1)
                {
                  v20 = 0;
                  v46 = v45 & 0x7FFFFFFF;
                  do
                  {
                    v21 = v20 << 32;
                    v22 = v20;
                    v23 = 1 - v20;
                    v24 = v20;
                    while (1)
                    {
                      v25 = [*a3 objectAtIndexedSubscript:v24];
                      v26 = [MEMORY[0x29EDB8E28] null];
                      v27 = [v25 isEqual:v26];

                      if (v27)
                      {
                        break;
                      }

                      ++v24;
                      v21 += 0x100000000;
                      ++v22;
                      --v23;
                      if (v24 >= v46)
                      {
                        return;
                      }
                    }

                    if (v24 >= v45)
                    {
                      break;
                    }

                    v28 = v21 >> 32;
                    v29 = v22;
                    v30 = HIDWORD(v21) + v23;
                    v20 = v21 >> 32;
                    while (1)
                    {
                      v31 = [*a3 objectAtIndexedSubscript:v20];
                      v32 = [MEMORY[0x29EDB8E28] null];
                      v33 = [v31 isEqual:v32];

                      if (!v33)
                      {
                        break;
                      }

                      ++v20;
                      ++v29;
                      v21 += 0x100000000;
                      ++v30;
                      if (v46 == v20)
                      {
                        return;
                      }
                    }

                    v34 = [*a3 objectAtIndexedSubscript:v24 - 1];
                    [v34 doubleValue];
                    v36 = v35;

                    v37 = [*a3 objectAtIndexedSubscript:v21 >> 32];
                    [v37 doubleValue];
                    v39 = v38;

                    if (v24 < v20)
                    {
                      v40 = (v39 - v36) / v30;
                      do
                      {
                        v41 = MEMORY[0x29EDBA070];
                        v42 = [*a3 objectAtIndexedSubscript:v28 - 1];
                        [v42 doubleValue];
                        v44 = [v41 numberWithDouble:v40 + v43];
                        [*a3 setObject:v44 atIndexedSubscript:v28];

                        ++v28;
                      }

                      while (v29 != v28);
                    }
                  }

                  while (v20 < v45);
                }
              }
            }
          }
        }
      }
    }
  }
}

- (void)_setDateSelectorToVisibleRange
{
  v3.receiver = self;
  v3.super_class = HKInteractiveChartViewControllerAccessibility;
  [(HKInteractiveChartViewControllerAccessibility *)&v3 _setDateSelectorToVisibleRange];
  [(HKInteractiveChartViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_replacePrimaryGraphViewControllerWithTimeScope:(int64_t)a3 anchorDate:(id)a4 animated:(BOOL)a5
{
  v5.receiver = self;
  v5.super_class = HKInteractiveChartViewControllerAccessibility;
  [(HKInteractiveChartViewControllerAccessibility *)&v5 _replacePrimaryGraphViewControllerWithTimeScope:a3 anchorDate:a4 animated:?];
  AXPerformBlockOnMainThreadAfterDelay();
}

void __117__HKInteractiveChartViewControllerAccessibility__replacePrimaryGraphViewControllerWithTimeScope_anchorDate_animated___block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = *(a1 + 32);
  v3 = __UIAccessibilityCastAsClass();
  v4 = [v3 view];
  v5 = [v4 _accessibilityViewAncestorIsKindOf:objc_opt_class()];

  [v5 _accessibilityClearChildren];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

- (id)_displayNameForDisplayType:(id)a3
{
  v10.receiver = self;
  v10.super_class = HKInteractiveChartViewControllerAccessibility;
  v4 = a3;
  v5 = [(HKInteractiveChartViewControllerAccessibility *)&v10 _displayNameForDisplayType:v4];
  v6 = [v4 safeValueForKeyPath:{@"localization.displayName", v10.receiver, v10.super_class}];

  v7 = [(HKInteractiveChartViewControllerAccessibility *)self safeValueForKey:@"primaryGraphViewController"];
  v8 = [v7 safeUIViewForKey:@"graphView"];

  [v8 _accessibilitySetRetainedValue:v6 forKey:@"kAXGraphViewDisplayName"];

  return v5;
}

- (void)graphView:(id)a3 didUpdateSelectedPoint:(id)a4
{
  v10.receiver = self;
  v10.super_class = HKInteractiveChartViewControllerAccessibility;
  [(HKInteractiveChartViewControllerAccessibility *)&v10 graphView:a3 didUpdateSelectedPoint:a4];
  v5 = [(HKInteractiveChartViewControllerAccessibility *)self safeBoolForKey:@"_currentValueEnabled"];
  v6 = [(HKInteractiveChartViewControllerAccessibility *)self safeValueForKey:@"lollipopController"];
  v7 = [v6 safeBoolForKey:@"isVisible"];

  if (v5)
  {
    v8 = @"_currentValueView";
  }

  else
  {
    v8 = @"_currentTimeView";
  }

  v9 = [(HKInteractiveChartViewControllerAccessibility *)self safeUIViewForKey:v8];
  [v9 setAccessibilityElementsHidden:v7];
}

- (void)graphViewDidEndSelection:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKInteractiveChartViewControllerAccessibility;
  [(HKInteractiveChartViewControllerAccessibility *)&v5 graphViewDidEndSelection:a3];
  v4 = [(HKInteractiveChartViewControllerAccessibility *)self safeUIViewForKey:@"_currentValueView"];
  [v4 setAccessibilityElementsHidden:0];
}

@end