@interface SHSHeadphoneNotificationTableCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityChartSummary;
- (id)_accessibilityDataSeries;
- (id)accessibilityChartDescriptor;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilityLoadChartInformation;
- (void)layoutSubviews;
@end

@implementation SHSHeadphoneNotificationTableCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SHSHeadphoneNotificationTableCell" isKindOfClass:@"PSTableCell"];
  [validationsCopy validateClass:@"SHSHeadphoneNotificationTableCell" hasInstanceVariable:@"_notificationData" withType:"NSArray"];
  [validationsCopy validateClass:@"SHSHeadphoneNotificationTableCell" hasInstanceMethod:@"layoutSubviews" withFullSignature:{"v", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = SHSHeadphoneNotificationTableCellAccessibility;
  [(SHSHeadphoneNotificationTableCellAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(SHSHeadphoneNotificationTableCellAccessibility *)self _accessibilityLoadChartInformation];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = SHSHeadphoneNotificationTableCellAccessibility;
  return [(SHSHeadphoneNotificationTableCellAccessibility *)&v3 accessibilityTraits]& ~*MEMORY[0x29EDC7FA8];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SHSHeadphoneNotificationTableCellAccessibility;
  [(SHSHeadphoneNotificationTableCellAccessibility *)&v3 layoutSubviews];
  [(SHSHeadphoneNotificationTableCellAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_accessibilityLoadChartInformation
{
  v34 = *MEMORY[0x29EDCA608];
  v27 = objc_opt_new();
  v26 = objc_opt_new();
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  [v3 setDateFormat:@"MMM"];
  v25 = v4;
  [v4 setDateFormat:@"MMMM"];
  selfCopy = self;
  [(SHSHeadphoneNotificationTableCellAccessibility *)self safeArrayForKey:@"_notificationData"];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v32 = 0u;
  v5 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v30;
    v9 = 0x7FFFFFFFLL;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        objc_opt_class();
        v12 = [v11 objectForKey:@"count"];
        v13 = __UIAccessibilityCastAsClass();

        objc_opt_class();
        v14 = [v11 objectForKey:@"month"];
        v15 = __UIAccessibilityCastAsClass();

        if (v13)
        {
          v16 = v15 == 0;
        }

        else
        {
          v16 = 1;
        }

        if (!v16)
        {
          v17 = [v3 dateFromString:v15];
          v18 = [v25 stringFromDate:v17];

          [v27 addObject:v18];
          [v26 addObject:v13];
          intValue = [v13 intValue];
          if (v9 >= intValue)
          {
            v9 = intValue;
          }

          else
          {
            v9 = v9;
          }

          intValue2 = [v13 intValue];
          if (v7 <= intValue2)
          {
            v7 = intValue2;
          }

          else
          {
            v7 = v7;
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
    v9 = 0x7FFFFFFFLL;
  }

  [(SHSHeadphoneNotificationTableCellAccessibility *)selfCopy _accessibilitySetRetainedValue:v27 forKey:@"kAXHeadphoneNotificationGraphXLabels"];
  [(SHSHeadphoneNotificationTableCellAccessibility *)selfCopy _accessibilitySetRetainedValue:v26 forKey:@"kAXHeadphoneNotificationGraphYValues"];
  v21 = [MEMORY[0x29EDBA070] numberWithInt:v9];
  [(SHSHeadphoneNotificationTableCellAccessibility *)selfCopy _accessibilitySetRetainedValue:v21 forKey:@"kAXHeadphoneNotificationGraphYAxisMin"];

  v22 = [MEMORY[0x29EDBA070] numberWithInt:v7];
  [(SHSHeadphoneNotificationTableCellAccessibility *)selfCopy _accessibilitySetRetainedValue:v22 forKey:@"kAXHeadphoneNotificationGraphYAxisMax"];

  v23 = *MEMORY[0x29EDCA608];
}

- (id)accessibilityChartDescriptor
{
  v24[1] = *MEMORY[0x29EDCA608];
  v3 = [(SHSHeadphoneNotificationTableCellAccessibility *)self _accessibilityValueForKey:@"kAXHeadphoneNotificationGraphXLabels"];
  v4 = objc_alloc(MEMORY[0x29EDB8048]);
  v5 = accessibilityLocalizedString(@"headphone.notifications.xaxis");
  v6 = [v4 initWithTitle:v5 categoryOrder:v3];

  v7 = [(SHSHeadphoneNotificationTableCellAccessibility *)self _accessibilityValueForKey:@"kAXHeadphoneNotificationGraphYAxisMin"];
  [v7 doubleValue];
  v9 = v8;

  v10 = [(SHSHeadphoneNotificationTableCellAccessibility *)self _accessibilityValueForKey:@"kAXHeadphoneNotificationGraphYAxisMax"];
  [v10 doubleValue];
  v12 = v11;

  v13 = objc_alloc(MEMORY[0x29EDB8078]);
  v14 = accessibilityLocalizedString(@"headphone.notifications.yaxis");
  v15 = [v13 initWithTitle:v14 lowerBound:0 upperBound:&__block_literal_global_0 gridlinePositions:v9 valueDescriptionProvider:v12];

  v16 = objc_alloc(MEMORY[0x29EDB8050]);
  _accessibilityDataSeriesName = [(SHSHeadphoneNotificationTableCellAccessibility *)self _accessibilityDataSeriesName];
  _accessibilityChartSummary = [(SHSHeadphoneNotificationTableCellAccessibility *)self _accessibilityChartSummary];
  _accessibilityDataSeries = [(SHSHeadphoneNotificationTableCellAccessibility *)self _accessibilityDataSeries];
  v24[0] = _accessibilityDataSeries;
  v20 = [MEMORY[0x29EDB8D80] arrayWithObjects:v24 count:1];
  v21 = [v16 initWithTitle:_accessibilityDataSeriesName summary:_accessibilityChartSummary xAxisDescriptor:v6 yAxisDescriptor:v15 series:v20];

  v22 = *MEMORY[0x29EDCA608];

  return v21;
}

id __78__SHSHeadphoneNotificationTableCellAccessibility_accessibilityChartDescriptor__block_invoke(double a1)
{
  v2 = MEMORY[0x29EDBA0F8];
  v3 = accessibilityLocalizedString(@"notification.value");
  v4 = [v2 stringWithFormat:v3, a1];

  return v4;
}

- (id)_accessibilityChartSummary
{
  v2 = [(SHSHeadphoneNotificationTableCellAccessibility *)self _accessibilityValueForKey:@"kAXHeadphoneNotificationGraphXLabels"];
  v3 = MEMORY[0x29EDBA0F8];
  v4 = accessibilityLocalizedString(@"headphone.notifications.chart.summary");
  firstObject = [v2 firstObject];
  lastObject = [v2 lastObject];
  v7 = [v3 stringWithFormat:v4, firstObject, lastObject];

  return v7;
}

- (id)_accessibilityDataSeries
{
  v3 = [(SHSHeadphoneNotificationTableCellAccessibility *)self _accessibilityValueForKey:@"kAXHeadphoneNotificationGraphYValues"];
  selfCopy = self;
  v4 = [(SHSHeadphoneNotificationTableCellAccessibility *)self _accessibilityValueForKey:@"kAXHeadphoneNotificationGraphXLabels"];
  v5 = [v4 count];
  v6 = [v3 count];
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
      v10 = MEMORY[0x29EDB8068];
      v11 = [v4 objectAtIndexedSubscript:v9];
      v12 = [v10 valueWithCategory:v11];

      v13 = MEMORY[0x29EDB8068];
      v14 = [v3 objectAtIndexedSubscript:v9];
      [v14 doubleValue];
      v15 = [v13 valueWithNumber:?];

      v16 = [objc_alloc(MEMORY[0x29EDB8060]) initWithX:v12 y:v15];
      [v8 addObject:v16];

      ++v9;
    }

    while ((v7 & 0x7FFFFFFF) != v9);
  }

  v17 = objc_alloc(MEMORY[0x29EDB8070]);
  _accessibilityDataSeriesName = [(SHSHeadphoneNotificationTableCellAccessibility *)selfCopy _accessibilityDataSeriesName];
  v19 = [v17 initWithName:_accessibilityDataSeriesName isContinuous:0 dataPoints:v8];

  return v19;
}

@end