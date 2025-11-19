@interface _TVInfoListViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityElements;
@end

@implementation _TVInfoListViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"_TVInfoListView" hasInstanceMethod:@"groupedInfos" withFullSignature:{"@", 0}];
  [v3 validateClass:@"_TVInfoListInfo"];
  [v3 validateClass:@"_TVInfoListInfo" hasInstanceMethod:@"headerContentView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"_TVInfoListInfo" hasInstanceMethod:@"dataViews" withFullSignature:{"@", 0}];
}

- (id)accessibilityElements
{
  v29 = *MEMORY[0x29EDCA608];
  v3 = [MEMORY[0x29EDB8DE8] array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [(_TVInfoListViewAccessibility *)self safeArrayForKey:@"groupedInfos"];
  v18 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v18)
  {
    v17 = *v24;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v23 + 1) + 8 * i);
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        objc_opt_class();
        v6 = __UIAccessibilityCastAsClass();
        v7 = [v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v20;
          do
          {
            for (j = 0; j != v8; ++j)
            {
              if (*v20 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = *(*(&v19 + 1) + 8 * j);
              v12 = [v11 safeValueForKey:@"headerContentView"];
              [v3 axSafelyAddObject:v12];

              v13 = [v11 safeArrayForKey:@"dataViews"];
              [v3 axSafelyAddObjectsFromArray:v13];
            }

            v8 = [v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v8);
        }
      }

      v18 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v18);
  }

  v14 = *MEMORY[0x29EDCA608];

  return v3;
}

@end