@interface STUsageReportAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilityStringForDate:(id)a3 timePeriod:(unint64_t)a4;
- (id)_countedDataSetForItemType:(unint64_t)a3 trustIdentifier:(id)a4 includeIndicatorImageName:(BOOL)a5;
- (id)_timedDataSetForItemType:(unint64_t)a3 trustIdentifier:(id)a4;
- (id)screenTimeDataSet;
@end

@implementation STUsageReportAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"STUsageReport" hasInstanceMethod:@"screenTimeDataSet" withFullSignature:{"@", 0}];
  [v3 validateClass:@"STUsageReport" hasInstanceMethod:@"_countedDataSetForItemType:trustIdentifier:includeIndicatorImageName:" withFullSignature:{"@", "Q", "@", "B", 0}];
  [v3 validateClass:@"STUsageReport" hasInstanceMethod:@"_timedDataSetForItemType:useDarkColors:" withFullSignature:{"@", "Q", "B", 0}];
  [v3 validateClass:@"STUsageReport" hasInstanceMethod:@"_timedDataSetForItemType:trustIdentifier:" withFullSignature:{"@", "Q", "@", 0}];
  [v3 validateClass:@"STUsageReport" hasInstanceMethod:@"topUsageItemsWithMaxCount:type:includeAggregateItem:nonAggregateItems:darkColors:" withFullSignature:{"@", "Q", "Q", "B", "^@", "B", 0}];
  [v3 validateClass:@"STUsageReport" hasInstanceMethod:@"type" withFullSignature:{"Q", 0}];
  [v3 validateClass:@"STUsageReportGraphDataSet" hasInstanceMethod:@"dataPoints" withFullSignature:{"@", 0}];
  [v3 validateClass:@"STUsageReportGraphDataPoint" hasInstanceMethod:@"date" withFullSignature:{"@", 0}];
  [v3 validateClass:@"STUsageReportGraphDataPoint" hasInstanceMethod:@"segments" withFullSignature:{"@", 0}];
  [v3 validateClass:@"STUsageReport" hasInstanceMethod:@"applicationUsageByStartOfDateIntervalByTrustIdentifier" withFullSignature:{"@", 0}];
  [v3 validateClass:@"STUsageReport" hasInstanceMethod:@"webUsageByStartOfDateIntervalByTrustIdentifier" withFullSignature:{"@", 0}];
  [v3 validateClass:@"STUsageReport" hasInstanceMethod:@"categoryUsageByStartOfDateIntervalByTrustIdentifier" withFullSignature:{"@", 0}];
  [v3 validateClass:@"STUsageReport" hasInstanceMethod:@"screenTimeByStartOfDateInterval" withFullSignature:{"@", 0}];
}

- (id)_accessibilityStringForDate:(id)a3 timePeriod:(unint64_t)a4
{
  v5 = a3;
  if (!v5)
  {
    goto LABEL_6;
  }

  if (!a4)
  {
    v6 = AXClockTimeStringForDate();
    goto LABEL_9;
  }

  if (a4 == 2)
  {
    v8 = MEMORY[0x29EDBA0F8];
    v9 = accessibilityLocalizedString(@"week.of");
    v10 = AXDateStringForFormat();
    v7 = [v8 stringWithFormat:v9, v10];

    goto LABEL_10;
  }

  if (a4 != 1)
  {
LABEL_6:
    v7 = 0;
    goto LABEL_10;
  }

  v6 = AXDateStringForFormat();
LABEL_9:
  v7 = v6;
LABEL_10:

  return v7;
}

- (id)screenTimeDataSet
{
  v2 = self;
  v31 = *MEMORY[0x29EDCA608];
  v29.receiver = self;
  v29.super_class = STUsageReportAccessibility;
  v3 = [(STUsageReportAccessibility *)&v29 screenTimeDataSet];
  v4 = [(STUsageReportAccessibility *)v2 _axTimePeriodForDescription];
  v5 = [(STUsageReportAccessibility *)v2 safeDictionaryForKey:@"screenTimeByStartOfDateInterval"];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v21 = v3;
  obj = [v3 safeArrayForKey:@"dataPoints"];
  v24 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v24)
  {
    v6 = *v26;
    v22 = *v26;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v25 + 1) + 8 * i);
        v9 = [v8 safeValueForKey:@"date"];
        v10 = [(STUsageReportAccessibility *)v2 _accessibilityStringForDate:v9 timePeriod:v4];
        objc_opt_class();
        v11 = [v5 objectForKeyedSubscript:v9];
        v12 = __UIAccessibilityCastAsClass();

        [v12 doubleValue];
        if (v13 > 0.0)
        {
          v14 = MEMORY[0x29C2EBAB0](v13 < 60.0);
          __AXStringForVariables();
          v15 = v4;
          v16 = v5;
          v18 = v17 = v2;
          [v8 setAccessibilityLabel:{v18, v14, @"__AXStringForVariablesSentinel"}];

          v2 = v17;
          v5 = v16;
          v4 = v15;
          v6 = v22;
        }
      }

      v24 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v24);
  }

  v19 = *MEMORY[0x29EDCA608];

  return v21;
}

- (id)_timedDataSetForItemType:(unint64_t)a3 trustIdentifier:(id)a4
{
  v40 = *MEMORY[0x29EDCA608];
  v6 = a4;
  v38.receiver = self;
  v38.super_class = STUsageReportAccessibility;
  v7 = [(STUsageReportAccessibility *)&v38 _timedDataSetForItemType:a3 trustIdentifier:v6];
  v8 = [(STUsageReportAccessibility *)self _axTimePeriodForDescription];
  if (a3 - 2 > 2)
  {
    v31 = 0;
  }

  else
  {
    v31 = [(STUsageReportAccessibility *)self safeValueForKey:off_29F2F3AA0[a3 - 2]];
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v27 = v7;
  obj = [v7 safeArrayForKey:@"dataPoints"];
  v9 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = @"date";
    v12 = *v35;
    v28 = v6;
    do
    {
      v13 = 0;
      v29 = v10;
      do
      {
        if (*v35 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v32 = *(*(&v34 + 1) + 8 * v13);
        v14 = [v32 safeValueForKey:v11];
        v33 = [(STUsageReportAccessibility *)self _accessibilityStringForDate:v14 timePeriod:v8];
        v15 = [v31 objectForKeyedSubscript:v6];
        v16 = [v15 objectForKeyedSubscript:v14];

        v17 = [v16 safeValueForKey:@"totalUsage"];
        [v17 doubleValue];
        if (v18 > 0.0)
        {
          v19 = MEMORY[0x29C2EBAB0](v18 < 60.0);
          __AXStringForVariables();
          v20 = v12;
          v21 = v11;
          v22 = v8;
          v24 = v23 = self;
          [v32 setAccessibilityLabel:{v24, v19, @"__AXStringForVariablesSentinel"}];

          self = v23;
          v8 = v22;
          v11 = v21;
          v12 = v20;
          v10 = v29;

          v6 = v28;
        }

        ++v13;
      }

      while (v10 != v13);
      v10 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v10);
  }

  v25 = *MEMORY[0x29EDCA608];

  return v27;
}

uint64_t __69__STUsageReportAccessibility__timedDataSetForItemType_useDarkColors___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) topUsageItemsWithMaxCount:3 type:*(a1 + 48) includeAggregateItem:0 nonAggregateItems:0 darkColors:0];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

void __69__STUsageReportAccessibility__timedDataSetForItemType_useDarkColors___block_invoke_361(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v3 = a2;
  v4 = [MEMORY[0x29EDBA070] numberWithInteger:{objc_msgSend(v3, "safeIntegerForKey:", @"itemType"}];
  v5 = [v3 safeValueForKey:@"trustIdentifier"];
  v6 = [*(a1 + 32) objectForKeyedSubscript:v4];
  v7 = [v6 objectForKeyedSubscript:v5];
  v8 = [v7 objectForKeyedSubscript:*(a1 + 40)];
  v9 = [v8 safeValueForKey:@"totalUsage"];

  [v9 doubleValue];
  if (v10 > 0.0)
  {
    v19 = v5;
    v20 = v4;
    [*(a1 + 48) addObject:v9];
    [*(a1 + 56) addObject:v3];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = *(a1 + 64);
    v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v22;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v21 + 1) + 8 * i) safeValueForKey:@"amount"];
          v17 = [v16 isEqual:v9];

          if (v17)
          {
            [*(a1 + 72) removeObject:*(a1 + 64)];
            goto LABEL_12;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    v5 = v19;
    v4 = v20;
  }

  v18 = *MEMORY[0x29EDCA608];
}

- (id)_countedDataSetForItemType:(unint64_t)a3 trustIdentifier:(id)a4 includeIndicatorImageName:(BOOL)a5
{
  v37 = *MEMORY[0x29EDCA608];
  v35.receiver = self;
  v35.super_class = STUsageReportAccessibility;
  v26 = a4;
  v6 = [STUsageReportAccessibility _countedDataSetForItemType:sel__countedDataSetForItemType_trustIdentifier_includeIndicatorImageName_ trustIdentifier:a3 includeIndicatorImageName:?];
  v30 = self;
  v29 = [(STUsageReportAccessibility *)self _axTimePeriodForDescription];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v25 = v6;
  obj = [v6 safeArrayForKey:@"dataPoints"];
  v7 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v32;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v32 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v31 + 1) + 8 * i);
        v12 = [v11 safeValueForKey:@"date"];
        v13 = [(STUsageReportAccessibility *)v30 _accessibilityStringForDate:v12 timePeriod:v29];
        v14 = [v11 safeArrayForKey:@"segments"];
        v15 = [v14 firstObject];

        objc_opt_class();
        v16 = [v15 safeValueForKey:@"amount"];
        v17 = __UIAccessibilityCastAsClass();

        if (!v17)
        {
LABEL_10:
          v19 = 0;
          goto LABEL_13;
        }

        if (a3 == 5)
        {
          v18 = @"notifications.count.format";
        }

        else
        {
          if (a3 != 6)
          {
            goto LABEL_10;
          }

          v18 = @"pickups.count.format";
        }

        v20 = MEMORY[0x29EDBA0F8];
        v21 = accessibilityLocalizedString(v18);
        v19 = [v20 stringWithFormat:v21, objc_msgSend(v17, "unsignedIntegerValue")];

LABEL_13:
        v22 = __AXStringForVariables();
        [v11 setAccessibilityLabel:{v22, v19, @"__AXStringForVariablesSentinel"}];
      }

      v8 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v8);
  }

  v23 = *MEMORY[0x29EDCA608];

  return v25;
}

@end