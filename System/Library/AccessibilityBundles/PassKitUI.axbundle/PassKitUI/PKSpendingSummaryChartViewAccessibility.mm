@interface PKSpendingSummaryChartViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityChartSummary;
- (id)_accessibilityDataSeries;
- (id)_accessibilitySeriesTitle;
- (id)_accessibilityXAxis;
- (id)_accessibilityYAxis;
- (id)_axSpendingValues;
- (id)_axStartDates;
- (id)accessibilityChartDescriptor;
- (id)accessibilityElements;
- (void)layoutSubviews;
@end

@implementation PKSpendingSummaryChartViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PKSpendingSummaryChartView" hasInstanceVariable:@"_summary" withType:"PKSpendingSummary"];
  [validationsCopy validateClass:@"PKSpendingSummary" hasInstanceMethod:@"spendingsPerCalendarUnit" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PKSpendingSummaryChartView" hasInstanceVariable:@"_bars" withType:"NSMutableArray"];
  [validationsCopy validateClass:@"PKSpendingSummaryChartView" hasInstanceMethod:@"layoutSubviews" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"PKSpendingSummary" hasInstanceMethod:@"summaryType" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"PKSpendingSummary" hasInstanceMethod:@"startDate" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PKSpendingSummary" hasInstanceMethod:@"endDate" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PKSpendingSummary" hasInstanceMethod:@"totalSpending" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PKCurrencyAmount" hasInstanceMethod:@"currency" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PKCurrencyAmount" hasInstanceMethod:@"amount" withFullSignature:{"@", 0}];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKSpendingSummaryChartViewAccessibility;
  [(PKSpendingSummaryChartViewAccessibility *)&v3 layoutSubviews];
  [(PKSpendingSummaryChartViewAccessibility *)self _accessibilitySetRetainedValue:0 forKey:@"accessibilityElements"];
}

- (id)accessibilityElements
{
  v72 = *MEMORY[0x29EDCA608];
  v2 = [(PKSpendingSummaryChartViewAccessibility *)self _accessibilityValueForKey:@"accessibilityElements"];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v69 = 0;
    v4 = [(PKSpendingSummaryChartViewAccessibility *)self safeValueForKey:@"_summary"];
    v5 = __UIAccessibilitySafeClass();

    v6 = [v5 safeIntegerForKey:@"summaryType"];
    v7 = [(PKSpendingSummaryChartViewAccessibility *)self safeValueForKey:@"_summary"];
    v8 = [v7 safeArrayForKey:@"spendingsPerCalendarUnit"];

    array = [MEMORY[0x29EDB8DE8] array];
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    obj = [(PKSpendingSummaryChartViewAccessibility *)self safeArrayForKey:@"_bars"];
    v57 = [obj countByEnumeratingWithState:&v65 objects:v71 count:16];
    if (v57)
    {
      v9 = 0;
      v55 = *v66;
      v47 = v6;
      v48 = v8;
      do
      {
        for (i = 0; i != v57; ++i)
        {
          if (*v66 != v55)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v65 + 1) + 8 * i);
          if ([v11 _accessibilityViewIsVisible])
          {
            if (v9 >= [v8 count])
            {
              v14 = 0;
            }

            else
            {
              v69 = 0;
              v12 = [v8 objectAtIndexedSubscript:v9];
              v13 = __UIAccessibilitySafeClass();

              if (v69 == 1)
              {
                goto LABEL_40;
              }

              v14 = v13;
            }

            v15 = [[UIAXPKSpendingElement alloc] initWithAccessibilityContainer:self];
            v64[0] = MEMORY[0x29EDCA5F8];
            v64[1] = 3221225472;
            v64[2] = __64__PKSpendingSummaryChartViewAccessibility_accessibilityElements__block_invoke;
            v64[3] = &unk_29F2E1F40;
            v64[4] = v11;
            [(UIAXPKSpendingElement *)v15 _setAccessibilityFrameBlock:v64];
            v69 = 0;
            v16 = [v14 safeValueForKey:@"startDate"];
            v59 = __UIAccessibilitySafeClass();

            if (v69 == 1)
            {
              goto LABEL_40;
            }

            v69 = 0;
            v17 = [v14 safeValueForKey:@"endDate"];
            v18 = __UIAccessibilitySafeClass();

            if (v69 == 1)
            {
              goto LABEL_40;
            }

            [(UIAXPKSpendingElement *)v15 setStartDate:v59];
            [(UIAXPKSpendingElement *)v15 setEndDate:v18];
            v58 = v14;
            if (v6 == 1)
            {
              v19 = MEMORY[0x29EDBA0F8];
              v25 = accessibilityLocalizedString(@"date.range");
              v20 = i;
              AXDateStringForFormat();
              v22 = v21 = v18;
              v23 = AXDateStringForFormat();
              v24 = [v19 stringWithFormat:v25, v22, v23];
              [(UIAXPKSpendingElement *)v15 setAccessibilityLabel:v24];

              v14 = v58;
              i = v20;

              v18 = v21;
            }

            else
            {
              v25 = AXDateStringForFormat();
              [(UIAXPKSpendingElement *)v15 setAccessibilityLabel:v25];
            }

            v69 = 0;
            v26 = [v14 safeValueForKey:@"totalSpending"];
            v27 = __UIAccessibilitySafeClass();

            if (v69 == 1)
            {
LABEL_40:
              abort();
            }

            amount = [v27 amount];
            [amount doubleValue];
            [(UIAXPKSpendingElement *)v15 setChartValue:?];

            v51 = v27;
            currency = [v27 currency];
            v53 = v15;
            [(UIAXPKSpendingElement *)v15 setCurrency:currency];

            v30 = [v14 safeArrayForKey:@"orderedSpendingCategories"];
            v60 = 0u;
            v61 = 0u;
            v62 = 0u;
            v63 = 0u;
            v31 = [v30 countByEnumeratingWithState:&v60 objects:v70 count:16];
            v54 = i;
            v52 = v18;
            if (v31)
            {
              v32 = v31;
              v33 = 0;
              v34 = *v61;
              do
              {
                for (j = 0; j != v32; ++j)
                {
                  if (*v61 != v34)
                  {
                    objc_enumerationMutation(v30);
                  }

                  v36 = *(*(&v60 + 1) + 8 * j);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    if ([v30 count] < 2)
                    {
                      v38 = 0;
                    }

                    else
                    {
                      totalAmount = [v36 totalAmount];
                      v38 = [(PKSpendingSummaryChartViewAccessibility *)self _axStringFromCurrency:totalAmount];
                    }

                    [v36 merchantCategory];
                    PKLocalizedStringFromMerchantCategory();
                    v45 = v38;
                    v44 = v46 = @"__AXStringForVariablesSentinel";
                    v39 = __UIAXStringForVariables();

                    v33 = v39;
                  }
                }

                v32 = [v30 countByEnumeratingWithState:&v60 objects:v70 count:16];
              }

              while (v32);
            }

            else
            {
              v33 = 0;
            }

            v40 = [(PKSpendingSummaryChartViewAccessibility *)self _axStringFromCurrency:v51, v44, v45, v46];
            v44 = v33;
            v45 = @"__AXStringForVariablesSentinel";
            v41 = __UIAXStringForVariables();
            [(UIAXPKSpendingElement *)v53 setAccessibilityValue:v41];

            [array addObject:v53];
            ++v9;

            v6 = v47;
            v8 = v48;
            i = v54;
          }
        }

        v57 = [obj countByEnumeratingWithState:&v65 objects:v71 count:16];
      }

      while (v57);
    }

    [(PKSpendingSummaryChartViewAccessibility *)self _accessibilitySetRetainedValue:array forKey:@"accessibilityElements"];
    v3 = array;
  }

  v42 = *MEMORY[0x29EDCA608];

  return v3;
}

- (id)_axStartDates
{
  accessibilityElements = [(PKSpendingSummaryChartViewAccessibility *)self accessibilityElements];
  v3 = [accessibilityElements axMapObjectsUsingBlock:&__block_literal_global_6];

  return v3;
}

- (id)_axSpendingValues
{
  accessibilityElements = [(PKSpendingSummaryChartViewAccessibility *)self accessibilityElements];
  v3 = [accessibilityElements axMapObjectsUsingBlock:&__block_literal_global_410];

  return v3;
}

uint64_t __60__PKSpendingSummaryChartViewAccessibility__axSpendingValues__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x29EDBA070];
  [a2 chartValue];

  return [v2 numberWithDouble:?];
}

- (id)accessibilityChartDescriptor
{
  v13[1] = *MEMORY[0x29EDCA608];
  v3 = objc_alloc(MEMORY[0x29EDB8050]);
  _accessibilitySeriesTitle = [(PKSpendingSummaryChartViewAccessibility *)self _accessibilitySeriesTitle];
  _accessibilityChartSummary = [(PKSpendingSummaryChartViewAccessibility *)self _accessibilityChartSummary];
  _accessibilityXAxis = [(PKSpendingSummaryChartViewAccessibility *)self _accessibilityXAxis];
  _accessibilityYAxis = [(PKSpendingSummaryChartViewAccessibility *)self _accessibilityYAxis];
  _accessibilityDataSeries = [(PKSpendingSummaryChartViewAccessibility *)self _accessibilityDataSeries];
  v13[0] = _accessibilityDataSeries;
  v9 = [MEMORY[0x29EDB8D80] arrayWithObjects:v13 count:1];
  v10 = [v3 initWithTitle:_accessibilitySeriesTitle summary:_accessibilityChartSummary xAxisDescriptor:_accessibilityXAxis yAxisDescriptor:_accessibilityYAxis series:v9];

  v11 = *MEMORY[0x29EDCA608];

  return v10;
}

- (id)_accessibilityDataSeries
{
  _axStartDates = [(PKSpendingSummaryChartViewAccessibility *)self _axStartDates];
  selfCopy = self;
  _axSpendingValues = [(PKSpendingSummaryChartViewAccessibility *)self _axSpendingValues];
  v5 = [_axSpendingValues count];
  v6 = [_axStartDates count];
  if (v5 >= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  v8 = objc_opt_new();
  if (v7 >= 1)
  {
    v9 = 0;
    do
    {
      v10 = [_axStartDates axSafeObjectAtIndex:v9];
      v11 = [_axSpendingValues axSafeObjectAtIndex:v9];
      [v11 doubleValue];
      v13 = v12;

      v14 = objc_alloc(MEMORY[0x29EDB8060]);
      v15 = [MEMORY[0x29EDB8068] valueWithCategory:v10];
      v16 = [MEMORY[0x29EDB8068] valueWithNumber:v13];
      v17 = [v14 initWithX:v15 y:v16];

      [v8 addObject:v17];
      ++v9;
    }

    while ((v7 & 0x7FFFFFFF) != v9);
  }

  v18 = objc_alloc(MEMORY[0x29EDB8070]);
  _accessibilitySeriesTitle = [(PKSpendingSummaryChartViewAccessibility *)selfCopy _accessibilitySeriesTitle];
  v20 = [v18 initWithName:_accessibilitySeriesTitle isContinuous:-[PKSpendingSummaryChartViewAccessibility _accessibilityIsContinuous](selfCopy dataPoints:{"_accessibilityIsContinuous"), v8}];

  return v20;
}

- (id)_accessibilitySeriesTitle
{
  v3 = [(PKSpendingSummaryChartViewAccessibility *)self safeValueForKey:@"_summary"];
  v4 = __UIAccessibilitySafeClass();

  v5 = [v4 safeIntegerForKey:@"summaryType"];
  switch(v5)
  {
    case 2:
      v6 = @"yearly.spending.summary";
      goto LABEL_7;
    case 1:
      v6 = @"monthly.spending.summary";
      goto LABEL_7;
    case 0:
      v6 = @"weekly.spending.summary";
LABEL_7:
      accessibilityLabel = accessibilityLocalizedString(v6);
      goto LABEL_9;
  }

  accessibilityLabel = [(PKSpendingSummaryChartViewAccessibility *)self accessibilityLabel];
LABEL_9:

  return accessibilityLabel;
}

- (id)_accessibilityXAxis
{
  _axStartDates = [(PKSpendingSummaryChartViewAccessibility *)self _axStartDates];
  v3 = objc_alloc(MEMORY[0x29EDB8048]);
  v4 = accessibilityLocalizedString(@"graph.x.axis.description.time");
  v5 = [v3 initWithTitle:v4 categoryOrder:_axStartDates];

  return v5;
}

- (id)_accessibilityYAxis
{
  v29 = *MEMORY[0x29EDCA608];
  accessibilityElements = [(PKSpendingSummaryChartViewAccessibility *)self accessibilityElements];
  firstObject = [accessibilityElements firstObject];
  currency = [firstObject currency];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  accessibilityElements2 = [(PKSpendingSummaryChartViewAccessibility *)self accessibilityElements];
  v7 = [accessibilityElements2 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    v10 = 0.0;
    v11 = 0.0;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(accessibilityElements2);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        [v13 chartValue];
        if (v11 >= v14)
        {
          v11 = v14;
        }

        [v13 chartValue];
        if (v10 < v15)
        {
          v10 = v15;
        }
      }

      v8 = [accessibilityElements2 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v8);
  }

  else
  {
    v10 = 0.0;
    v11 = 0.0;
  }

  v16 = objc_alloc(MEMORY[0x29EDB8078]);
  _accessibilitySeriesTitle = [(PKSpendingSummaryChartViewAccessibility *)self _accessibilitySeriesTitle];
  v22[0] = MEMORY[0x29EDCA5F8];
  v22[1] = 3221225472;
  v22[2] = __62__PKSpendingSummaryChartViewAccessibility__accessibilityYAxis__block_invoke;
  v22[3] = &unk_29F2E1F88;
  v23 = currency;
  v18 = currency;
  v19 = [v16 initWithTitle:_accessibilitySeriesTitle lowerBound:0 upperBound:v22 gridlinePositions:v11 valueDescriptionProvider:v10];

  v20 = *MEMORY[0x29EDCA608];

  return v19;
}

id __62__PKSpendingSummaryChartViewAccessibility__accessibilityYAxis__block_invoke(uint64_t a1, double a2)
{
  v3 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%.2f", *&a2];
  v4 = MEMORY[0x29EDBA0F8];
  v5 = accessibilityLocalizedString(@"chart.value.and.unit");
  v6 = [v4 stringWithFormat:v5, v3, *(a1 + 32)];

  return v6;
}

- (id)_accessibilityChartSummary
{
  _axStartDates = [(PKSpendingSummaryChartViewAccessibility *)self _axStartDates];
  _accessibilitySeriesTitle = [(PKSpendingSummaryChartViewAccessibility *)self _accessibilitySeriesTitle];
  if ([_accessibilitySeriesTitle length] && objc_msgSend(_axStartDates, "count"))
  {
    v5 = accessibilityLocalizedString(@"chart.summary.format");
    v6 = MEMORY[0x29EDBA0F8];
    firstObject = [_axStartDates firstObject];
    lastObject = [_axStartDates lastObject];
    v9 = [v6 stringWithFormat:v5, _accessibilitySeriesTitle, firstObject, lastObject];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end