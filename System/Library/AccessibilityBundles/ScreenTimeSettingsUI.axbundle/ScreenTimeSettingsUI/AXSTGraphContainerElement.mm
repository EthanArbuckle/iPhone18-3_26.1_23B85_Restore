@interface AXSTGraphContainerElement
- (AXChartDescriptor)accessibilityChartDescriptor;
- (double)_updateYValueForType:(double)type;
- (id)_accessibilityChartSummary;
- (id)_accessibilityDataSeries;
- (id)_accessibilityXAxis;
- (id)_accessibilityYAxis;
- (id)_axBarElements;
- (id)_axTimeValues;
- (id)_axXAxisLabels;
@end

@implementation AXSTGraphContainerElement

- (AXChartDescriptor)accessibilityChartDescriptor
{
  v13[1] = *MEMORY[0x29EDCA608];
  v3 = objc_alloc(MEMORY[0x29EDB8050]);
  _accessibilitySeriesTitle = [(AXSTGraphContainerElement *)self _accessibilitySeriesTitle];
  _accessibilityChartSummary = [(AXSTGraphContainerElement *)self _accessibilityChartSummary];
  _accessibilityXAxis = [(AXSTGraphContainerElement *)self _accessibilityXAxis];
  _accessibilityYAxis = [(AXSTGraphContainerElement *)self _accessibilityYAxis];
  _accessibilityDataSeries = [(AXSTGraphContainerElement *)self _accessibilityDataSeries];
  v13[0] = _accessibilityDataSeries;
  v9 = [MEMORY[0x29EDB8D80] arrayWithObjects:v13 count:1];
  v10 = [v3 initWithTitle:_accessibilitySeriesTitle summary:_accessibilityChartSummary xAxisDescriptor:_accessibilityXAxis yAxisDescriptor:_accessibilityYAxis series:v9];

  v11 = *MEMORY[0x29EDCA608];

  return v10;
}

- (id)_axXAxisLabels
{
  _axBarElements = [(AXSTGraphContainerElement *)self _axBarElements];
  v3 = [_axBarElements axMapObjectsUsingBlock:&__block_literal_global];

  return v3;
}

id __43__AXSTGraphContainerElement__axXAxisLabels__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 accessibilityLabel];
  v3 = [v2 componentsSeparatedByString:{@", "}];
  v4 = [v3 firstObject];

  return v4;
}

- (id)_accessibilityXAxis
{
  v3 = objc_alloc(MEMORY[0x29EDB8048]);
  v4 = accessibilityLocalizedString(@"graph.x.axis.description.time");
  _axXAxisLabels = [(AXSTGraphContainerElement *)self _axXAxisLabels];
  v6 = [v3 initWithTitle:v4 categoryOrder:_axXAxisLabels];

  return v6;
}

- (id)_accessibilityYAxis
{
  v30 = *MEMORY[0x29EDCA608];
  itemType = [(AXSTGraphContainerElement *)self itemType];
  if (itemType - 1 >= 4)
  {
    if (itemType == 5)
    {
      v5 = @"graph.notifications.unit";
      goto LABEL_11;
    }

    if (itemType == 6)
    {
      v5 = @"graph.pickups.unit";
      goto LABEL_11;
    }

LABEL_8:
    v6 = 0;
    goto LABEL_12;
  }

  mode = [(AXSTGraphContainerElement *)self mode];
  if (!mode)
  {
    v5 = @"graph.hours.unit";
    goto LABEL_11;
  }

  if (mode != 1)
  {
    goto LABEL_8;
  }

  v5 = @"graph.minutes.unit";
LABEL_11:
  v6 = accessibilityLocalizedString(v5);
LABEL_12:
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  _axTimeValues = [(AXSTGraphContainerElement *)self _axTimeValues];
  v8 = [_axTimeValues countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    v11 = 0.0;
    v12 = 0.0;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(_axTimeValues);
        }

        v14 = *(*(&v25 + 1) + 8 * i);
        [v14 doubleValue];
        if (v12 >= v15)
        {
          v12 = v15;
        }

        [v14 doubleValue];
        if (v11 < v16)
        {
          v11 = v16;
        }
      }

      v9 = [_axTimeValues countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v9);
  }

  else
  {
    v11 = 0.0;
    v12 = 0.0;
  }

  v17 = objc_alloc(MEMORY[0x29EDB8078]);
  v18 = accessibilityLocalizedString(@"graph.y.axis.description.usage");
  v23[0] = MEMORY[0x29EDCA5F8];
  v23[1] = 3221225472;
  v23[2] = __48__AXSTGraphContainerElement__accessibilityYAxis__block_invoke;
  v23[3] = &unk_29F2F3870;
  v24 = v6;
  v19 = v6;
  v20 = [v17 initWithTitle:v18 lowerBound:0 upperBound:v23 gridlinePositions:v12 valueDescriptionProvider:v11];

  v21 = *MEMORY[0x29EDCA608];

  return v20;
}

id __48__AXSTGraphContainerElement__accessibilityYAxis__block_invoke(uint64_t a1, double a2)
{
  v3 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%.2f", *&a2];
  v4 = MEMORY[0x29EDBA0F8];
  v5 = accessibilityLocalizedString(@"chart.value.and.unit");
  v6 = [v4 stringWithFormat:v5, v3, *(a1 + 32)];

  return v6;
}

- (id)_axTimeValues
{
  _axBarElements = [(AXSTGraphContainerElement *)self _axBarElements];
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = __42__AXSTGraphContainerElement__axTimeValues__block_invoke;
  v6[3] = &unk_29F2F3898;
  v6[4] = self;
  v4 = [_axBarElements axMapObjectsUsingBlock:v6];

  return v4;
}

id __42__AXSTGraphContainerElement__axTimeValues__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x29EDBA070];
  v5 = *(a1 + 32);
  objc_opt_class();
  v6 = [v3 safeValueForKey:@"dataPoint"];
  v7 = [v6 safeValueForKey:@"total"];
  v8 = __UIAccessibilityCastAsClass();

  [v8 doubleValue];
  [v5 _updateYValueForType:?];
  v9 = [v4 numberWithDouble:?];

  return v9;
}

- (id)_accessibilityDataSeries
{
  _axXAxisLabels = [(AXSTGraphContainerElement *)self _axXAxisLabels];
  selfCopy = self;
  _axTimeValues = [(AXSTGraphContainerElement *)self _axTimeValues];
  v5 = [_axTimeValues count];
  v6 = [_axXAxisLabels count];
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
      v10 = [_axXAxisLabels axSafeObjectAtIndex:v9];
      v11 = [_axTimeValues axSafeObjectAtIndex:v9];
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
  _accessibilitySeriesTitle = [(AXSTGraphContainerElement *)selfCopy _accessibilitySeriesTitle];
  v20 = [v18 initWithName:_accessibilitySeriesTitle isContinuous:0 dataPoints:v8];

  return v20;
}

- (double)_updateYValueForType:(double)type
{
  if ([(AXSTGraphContainerElement *)self itemType]== 1 || [(AXSTGraphContainerElement *)self itemType]== 2 || [(AXSTGraphContainerElement *)self itemType]== 3 || [(AXSTGraphContainerElement *)self itemType]== 4)
  {
    if (![(AXSTGraphContainerElement *)self mode])
    {
      v5 = 3600.0;
      return type / v5;
    }

    if ([(AXSTGraphContainerElement *)self mode]== 1)
    {
      v5 = 60.0;
      return type / v5;
    }
  }

  return type;
}

- (id)_accessibilityChartSummary
{
  _axXAxisLabels = [(AXSTGraphContainerElement *)self _axXAxisLabels];
  _accessibilitySeriesTitle = [(AXSTGraphContainerElement *)self _accessibilitySeriesTitle];
  if ([_accessibilitySeriesTitle length] && objc_msgSend(_axXAxisLabels, "count"))
  {
    v5 = accessibilityLocalizedString(@"chart.summary.format");
    v6 = MEMORY[0x29EDBA0F8];
    firstObject = [_axXAxisLabels firstObject];
    lastObject = [_axXAxisLabels lastObject];
    v9 = [v6 stringWithFormat:v5, _accessibilitySeriesTitle, firstObject, lastObject];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_axBarElements
{
  accessibilityElements = [(AXSTGraphContainerElement *)self accessibilityElements];
  v3 = [accessibilityElements ax_filteredArrayUsingBlock:&__block_literal_global_329];

  return v3;
}

uint64_t __43__AXSTGraphContainerElement__axBarElements__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  MEMORY[0x29C2EBB10](@"STBarView");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end