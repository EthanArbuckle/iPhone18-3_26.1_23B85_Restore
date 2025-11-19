@interface SetupViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityElements;
@end

@implementation SetupViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SetupView" hasInstanceVariable:@"_title" withType:"UILabel"];
  [v3 validateClass:@"SetupView" hasInstanceVariable:@"_setupSteps" withType:"NSMutableArray"];
}

- (id)accessibilityElements
{
  v34 = *MEMORY[0x29EDCA608];
  v3 = [MEMORY[0x29EDB8DE8] array];
  v4 = [(SetupViewAccessibility *)self safeValueForKey:@"_title"];
  [v3 axSafelyAddObject:v4];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = [(SetupViewAccessibility *)self safeValueForKey:@"_setupSteps"];
  v5 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = @"NSArray";
    v8 = *v30;
    v9 = @"UILabel";
    v26 = *v30;
    do
    {
      v10 = 0;
      v27 = v6;
      do
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v29 + 1) + 8 * v10);
        v12 = __UIAccessibilitySafeClass();
        v13 = [v12 firstObject];
        v14 = __UIAccessibilitySafeClass();

        v15 = [v12 lastObject];
        v16 = __UIAccessibilitySafeClass();

        if ([v14 isAccessibilityElement])
        {
          v17 = MEMORY[0x29EDBA0F8];
          [v14 accessibilityLabel];
          v19 = v18 = v3;
          [v16 accessibilityLabel];
          v20 = v9;
          v22 = v21 = v7;
          v23 = [v17 stringWithFormat:@"%@, %@", v19, v22];
          [v16 setAccessibilityLabel:v23];

          v7 = v21;
          v9 = v20;

          v3 = v18;
          v8 = v26;
          v6 = v27;
          [v14 setIsAccessibilityElement:0];
        }

        [v3 axSafelyAddObject:v16];

        ++v10;
      }

      while (v6 != v10);
      v6 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v6);
  }

  v24 = *MEMORY[0x29EDCA608];

  return v3;
}

@end