@interface PSCapacityBarCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityValue;
@end

@implementation PSCapacityBarCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PSCapacityBarCell" isKindOfClass:@"PSTableCell"];
  [v3 validateClass:@"PSCapacityBarCell" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [v3 validateClass:@"PSCapacityBarCell" hasInstanceVariable:@"_sizeLabel" withType:"UILabel"];
}

- (id)accessibilityValue
{
  v29 = *MEMORY[0x29EDCA608];
  v27 = 0;
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  v3 = [v2 specifier];
  v4 = [v3 propertyForKey:*MEMORY[0x29EDC62A8]];

  if (v4)
  {
    v5 = [v4 capacity];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v6 = [v4 categories];
    v7 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v24;
      v11 = v5;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v13 = *(*(&v23 + 1) + 8 * i);
          v14 = [v13 bytes] / v11;
          if (v14 >= 0.01)
          {
            v15 = [v13 title];
            v16 = v14;
            v21 = MEMORY[0x29C2E8BB0](0, v16);
            v22 = @"__AXStringForVariablesSentinel";
            v20 = v15;
            v17 = __UIAXStringForVariables();

            v9 = v17;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v18 = *MEMORY[0x29EDCA608];

  return v9;
}

@end