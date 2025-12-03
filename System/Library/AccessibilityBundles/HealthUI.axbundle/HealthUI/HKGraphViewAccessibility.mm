@interface HKGraphViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (double)_accessibilityScaledYValue:(double)value;
- (id)_accessibilityChartSummary;
- (id)_accessibilityDataSeries;
- (id)_accessibilitySeriesTitle;
- (id)_accessibilityXAxis;
- (id)_accessibilityYAxis;
- (id)accessibilityChartDescriptor;
- (void)_accessibilityClearElements;
- (void)_updateGraphViewConfigurationIfNecessary;
@end

@implementation HKGraphViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HKGraphView" hasInstanceMethod:@"_updateGraphViewConfigurationIfNecessary" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"UITableViewCell" hasInstanceMethod:@"_accessibilityClearChildren" withFullSignature:{"v", 0}];
}

- (void)_updateGraphViewConfigurationIfNecessary
{
  v3.receiver = self;
  v3.super_class = HKGraphViewAccessibility;
  [(HKGraphViewAccessibility *)&v3 _updateGraphViewConfigurationIfNecessary];
  [(HKGraphViewAccessibility *)self _accessibilityClearElements];
}

- (void)_accessibilityClearElements
{
  [(HKGraphViewAccessibility *)self _accessibilitySetChartElements:0];
  v4 = [(HKGraphViewAccessibility *)self _accessibilityViewAncestorIsKindOf:objc_opt_class()];
  v3 = v4;
  AXPerformSafeBlock();
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

- (id)accessibilityChartDescriptor
{
  v13[1] = *MEMORY[0x29EDCA608];
  v3 = [(HKGraphViewAccessibility *)self _accessibilityValueForKey:@"kAXGraphViewGraphElementsSeriesDescription"];
  if (!v3)
  {
    _accessibilityDataSeries = [(HKGraphViewAccessibility *)self _accessibilityDataSeries];
    v13[0] = _accessibilityDataSeries;
    v3 = [MEMORY[0x29EDB8D80] arrayWithObjects:v13 count:1];
  }

  v5 = objc_alloc(MEMORY[0x29EDB8050]);
  _accessibilitySeriesTitle = [(HKGraphViewAccessibility *)self _accessibilitySeriesTitle];
  _accessibilityChartSummary = [(HKGraphViewAccessibility *)self _accessibilityChartSummary];
  _accessibilityXAxis = [(HKGraphViewAccessibility *)self _accessibilityXAxis];
  _accessibilityYAxis = [(HKGraphViewAccessibility *)self _accessibilityYAxis];
  v10 = [v5 initWithTitle:_accessibilitySeriesTitle summary:_accessibilityChartSummary xAxisDescriptor:_accessibilityXAxis yAxisDescriptor:_accessibilityYAxis series:v3];

  v11 = *MEMORY[0x29EDCA608];

  return v10;
}

- (id)_accessibilityDataSeries
{
  selfCopy = self;
  v3 = [(HKGraphViewAccessibility *)self _accessibilityValueForKey:@"kAXGraphViewGraphElementsYValues"];
  v4 = [(HKGraphViewAccessibility *)selfCopy _accessibilityValueForKey:@"kAXGraphViewGraphElementsXValues"];
  v5 = [v3 count];
  v6 = [v4 count];
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
      v10 = [v3 objectAtIndexedSubscript:v9];
      [v10 doubleValue];
      [(HKGraphViewAccessibility *)selfCopy _accessibilityScaledYValue:?];
      v12 = v11;

      v13 = objc_alloc(MEMORY[0x29EDB8060]);
      v14 = selfCopy;
      v15 = v3;
      v16 = MEMORY[0x29EDB8068];
      [v4 objectAtIndexedSubscript:v9];
      v18 = v17 = v4;
      v19 = [v16 valueWithCategory:v18];
      v20 = [MEMORY[0x29EDB8068] valueWithNumber:v12];
      v21 = [v13 initWithX:v19 y:v20];

      v3 = v15;
      selfCopy = v14;

      v4 = v17;
      [v8 addObject:v21];

      ++v9;
    }

    while ((v7 & 0x7FFFFFFF) != v9);
  }

  v22 = objc_alloc(MEMORY[0x29EDB8070]);
  _accessibilitySeriesTitle = [(HKGraphViewAccessibility *)selfCopy _accessibilitySeriesTitle];
  v24 = [v22 initWithName:_accessibilitySeriesTitle isContinuous:-[HKGraphViewAccessibility _accessibilityIsContinuous](selfCopy dataPoints:{"_accessibilityIsContinuous"), v8}];

  return v24;
}

- (double)_accessibilityScaledYValue:(double)value
{
  v4 = [(HKGraphViewAccessibility *)self _accessibilityValueForKey:@"kAXGraphViewYAxisMin"];
  [v4 doubleValue];
  v6 = v5;

    ;
  }

  return value;
}

- (id)_accessibilitySeriesTitle
{
  v2 = [(HKGraphViewAccessibility *)self _accessibilityValueForKey:@"kAXGraphViewDisplayName"];
  if (!v2)
  {
    v2 = &stru_2A21B8770;
  }

  return v2;
}

- (id)_accessibilityXAxis
{
  v3 = [(HKGraphViewAccessibility *)self _accessibilityValueForKey:@"kAXGraphViewXAxisTitle"];
  if (!v3)
  {
    v3 = accessibilityLocalizedString(@"time.axis.title");
  }

  v4 = [(HKGraphViewAccessibility *)self _accessibilityValueForKey:@"kAXGraphViewGraphElementsXValues"];
  v5 = [objc_alloc(MEMORY[0x29EDB8048]) initWithTitle:v3 categoryOrder:v4];

  return v5;
}

- (id)_accessibilityYAxis
{
  v3 = [(HKGraphViewAccessibility *)self _accessibilityValueForKey:@"kAXGraphViewYAxisValueUnit"];
  if (!v3)
  {
    v3 = accessibilityLocalizedString(@"chart.value.and.unit");
  }

  v4 = [(HKGraphViewAccessibility *)self _accessibilityValueForKey:@"kAXGraphViewYValueDescriptorBlock"];
  if (!v4)
  {
    v15 = MEMORY[0x29EDCA5F8];
    v16 = 3221225472;
    v17 = __47__HKGraphViewAccessibility__accessibilityYAxis__block_invoke;
    v18 = &unk_29F2C43B8;
    selfCopy = self;
    v20 = v3;
    v4 = MEMORY[0x29C2D9420](&v15);
  }

  selfCopy = [(HKGraphViewAccessibility *)self _accessibilityValueForKey:@"kAXGraphViewYAxisMin", v15, v16, v17, v18, selfCopy];
  [selfCopy doubleValue];
  v7 = v6;

  v8 = [(HKGraphViewAccessibility *)self _accessibilityValueForKey:@"kAXGraphViewYAxisMax"];
  [v8 doubleValue];
  v10 = v9;

  v11 = objc_alloc(MEMORY[0x29EDB8078]);
  _accessibilitySeriesTitle = [(HKGraphViewAccessibility *)self _accessibilitySeriesTitle];
  v13 = [v11 initWithTitle:_accessibilitySeriesTitle lowerBound:0 upperBound:v4 gridlinePositions:v7 valueDescriptionProvider:v10];

  return v13;
}

id __47__HKGraphViewAccessibility__accessibilityYAxis__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _accessibilityScaledYValue:?];
  v3 = v2;
  v4 = MEMORY[0x29EDBA0F8];
  v5 = *(a1 + 40);
  v6 = [*(a1 + 32) _accessibilityValueForKey:@"kAXGraphViewUnit"];
  v7 = [v4 stringWithFormat:v5, v3, v6];

  return v7;
}

- (id)_accessibilityChartSummary
{
  v3 = [(HKGraphViewAccessibility *)self _accessibilityValueForKey:@"kAXGraphViewGraphElementsXValues"];
  _accessibilitySeriesTitle = [(HKGraphViewAccessibility *)self _accessibilitySeriesTitle];
  if ([_accessibilitySeriesTitle length] && objc_msgSend(v3, "count"))
  {
    v5 = accessibilityLocalizedString(@"chart.summary.format");
    v6 = MEMORY[0x29EDBA0F8];
    firstObject = [v3 firstObject];
    lastObject = [v3 lastObject];
    v9 = [v6 stringWithFormat:v5, _accessibilitySeriesTitle, firstObject, lastObject];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end