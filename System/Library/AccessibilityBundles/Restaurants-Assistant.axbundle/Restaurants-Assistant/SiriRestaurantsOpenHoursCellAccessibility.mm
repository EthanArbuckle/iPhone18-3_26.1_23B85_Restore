@interface SiriRestaurantsOpenHoursCellAccessibility
- (void)configureWithParsedOpenHoursInfo:(id)a3;
@end

@implementation SiriRestaurantsOpenHoursCellAccessibility

- (void)configureWithParsedOpenHoursInfo:(id)a3
{
  v9.receiver = self;
  v9.super_class = SiriRestaurantsOpenHoursCellAccessibility;
  [(SiriRestaurantsOpenHoursCellAccessibility *)&v9 configureWithParsedOpenHoursInfo:a3];
  v4 = [(SiriRestaurantsOpenHoursCellAccessibility *)self safeValueForKey:@"_dayRangeLabels"];
  v5 = [(SiriRestaurantsOpenHoursCellAccessibility *)self safeValueForKey:@"_hoursLabelPerRange"];
  if ([v4 count])
  {
    v6 = [v4 count];
    if (v6 == [v5 count])
    {
      v7 = v4;
      v8 = v5;
      AXPerformSafeBlock();
    }
  }
}

void __78__SiriRestaurantsOpenHoursCellAccessibility_configureWithParsedOpenHoursInfo___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x29EDCA5F8];
  v2[1] = 3221225472;
  v2[2] = __78__SiriRestaurantsOpenHoursCellAccessibility_configureWithParsedOpenHoursInfo___block_invoke_2;
  v2[3] = &unk_29F2F21E0;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 enumerateObjectsUsingBlock:v2];
}

void __78__SiriRestaurantsOpenHoursCellAccessibility_configureWithParsedOpenHoursInfo___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 objectAtIndex:a3];
  if ([v6 count] == 2)
  {
    v7 = MEMORY[0x29EDBA0F8];
    v8 = restaurantAccessibilityLocalizedString(@"daterange.join");
    v9 = [v6 lastObject];
    v10 = [v9 accessibilityLabel];
    v11 = [v6 firstObject];
    v12 = [v11 accessibilityLabel];
    v15 = [v7 stringWithFormat:v8, v10, v12];
  }

  else
  {
    v15 = 0;
  }

  [v6 enumerateObjectsUsingBlock:&__block_literal_global_1];
  v13 = [v5 accessibilityLabel];
  v14 = __UIAXStringForVariables();
  [v5 setAccessibilityLabel:{v14, v15, @"__AXStringForVariablesSentinel"}];
}

@end