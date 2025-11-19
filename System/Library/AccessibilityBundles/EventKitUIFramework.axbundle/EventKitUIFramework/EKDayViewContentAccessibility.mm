@interface EKDayViewContentAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation EKDayViewContentAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"EKDayViewContent" hasInstanceMethod:@"applyLoadedOccurrencesWithBatching:animated:reverse:completion:" withFullSignature:{"v", "B", "B", "B", "@?", 0}];
  [v3 validateClass:@"EKDayViewContent" hasInstanceVariable:@"_itemsByDay" withType:"NSMutableArray"];
  [v3 validateClass:@"EKDayViewContent" hasInstanceVariable:@"_grid" withType:"EKDayGridView"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v26 = *MEMORY[0x29EDCA608];
  v23.receiver = self;
  v23.super_class = EKDayViewContentAccessibility;
  [(EKDayViewContentAccessibility *)&v23 _accessibilityLoadAccessibilityInformation];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = [(EKDayViewContentAccessibility *)self safeValueForKey:@"_itemsByDay"];
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      v7 = 0;
      do
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v19 + 1) + 8 * v7);
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v9 = v8;
        v10 = [v9 countByEnumeratingWithState:&v15 objects:v24 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v16;
          do
          {
            v13 = 0;
            do
            {
              if (*v16 != v12)
              {
                objc_enumerationMutation(v9);
              }

              [*(*(&v15 + 1) + 8 * v13++) _accessibilityLoadAccessibilityInformation];
            }

            while (v11 != v13);
            v11 = [v9 countByEnumeratingWithState:&v15 objects:v24 count:16];
          }

          while (v11);
        }

        ++v7;
      }

      while (v7 != v5);
      v5 = [v3 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v5);
  }

  v14 = *MEMORY[0x29EDCA608];
}

@end