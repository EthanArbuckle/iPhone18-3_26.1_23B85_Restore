@interface SKUITabularLockupViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation SKUITabularLockupViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SKUITabularLockupView" hasInstanceVariable:@"_layout" withType:"SKUITabularLockupLayout"];
  [v3 validateClass:@"SKUITabularLockupView" hasInstanceVariable:@"_viewElementViews" withType:"NSMapTable"];
  [v3 validateClass:@"SKUITabularLockupLayout" hasInstanceMethod:@"columns" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SKUITabularLockupColumn" hasInstanceMethod:@"childViewElements" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v55 = *MEMORY[0x29EDCA608];
  v51 = 0;
  v3 = [(SKUITabularLockupViewAccessibility *)self safeValueForKey:@"_layout"];
  v4 = __UIAccessibilitySafeClass();

  v5 = [v4 safeValueForKey:@"columns"];
  v6 = __UIAccessibilitySafeClass();

  HIBYTE(v51) = 0;
  v7 = [(SKUITabularLockupViewAccessibility *)self safeValueForKey:@"_viewElementViews"];
  v8 = __UIAccessibilitySafeClass();

  v9 = [MEMORY[0x29EDB8DE8] array];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = v6;
  v10 = [obj countByEnumeratingWithState:&v47 objects:v54 count:16];
  if (v10)
  {
    v11 = v10;
    v37 = *v48;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v48 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v47 + 1) + 8 * i);
        v51 = 0;
        v14 = __UIAccessibilitySafeClass();
        if (v51 == 1 || (v15 = v14, [v14 safeValueForKey:@"childViewElements"], v16 = objc_claimAutoreleasedReturnValue(), __UIAccessibilitySafeClass(), v17 = objc_claimAutoreleasedReturnValue(), v16, v15, HIBYTE(v51) == 1))
        {
          abort();
        }

        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v18 = v17;
        v19 = [v18 countByEnumeratingWithState:&v43 objects:v53 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v44;
          do
          {
            for (j = 0; j != v20; ++j)
            {
              if (*v44 != v21)
              {
                objc_enumerationMutation(v18);
              }

              v23 = [v8 objectForKey:*(*(&v43 + 1) + 8 * j)];
              NSClassFromString(&cfstr_Skuiattributed_0.isa);
              if (objc_opt_isKindOfClass())
              {
                [v9 addObject:v23];
              }
            }

            v20 = [v18 countByEnumeratingWithState:&v43 objects:v53 count:16];
          }

          while (v20);
        }
      }

      v11 = [obj countByEnumeratingWithState:&v47 objects:v54 count:16];
    }

    while (v11);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v38 = v9;
  v24 = [v38 countByEnumeratingWithState:&v39 objects:v52 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = 0;
    v27 = *v40;
    do
    {
      v28 = 0;
      v29 = v26;
      do
      {
        if (*v40 != v27)
        {
          objc_enumerationMutation(v38);
        }

        v30 = [*(*(&v39 + 1) + 8 * v28) accessibilityLabel];
        v31 = [v30 stringByReplacingOccurrencesOfString:@"•" withString:{@", "}];

        v34 = v31;
        v35 = @"__AXStringForVariablesSentinel";
        v26 = __UIAXStringForVariables();

        ++v28;
        v29 = v26;
      }

      while (v25 != v28);
      v25 = [v38 countByEnumeratingWithState:&v39 objects:v52 count:{16, v31, @"__AXStringForVariablesSentinel"}];
    }

    while (v25);
  }

  else
  {
    v26 = 0;
  }

  v32 = *MEMORY[0x29EDCA608];

  return v26;
}

@end