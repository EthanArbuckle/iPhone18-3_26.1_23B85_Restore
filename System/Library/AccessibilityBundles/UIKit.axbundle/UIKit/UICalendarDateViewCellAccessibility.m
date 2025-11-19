@interface UICalendarDateViewCellAccessibility
@end

@implementation UICalendarDateViewCellAccessibility

id __136___UICalendarDateViewCellAccessibility_configureWithDay_formatter_fontDesign_decorations_outOfRange_renderOverhangDays_highlightsToday___block_invoke(id *a1)
{
  v25 = *MEMORY[0x29EDCA608];
  v23[2] = a1;
  v23[1] = a1;
  v23[0] = 0;
  memset(__b, 0, sizeof(__b));
  obj = objc_loadWeakRetained(a1 + 4);
  v19 = [obj countByEnumeratingWithState:__b objects:v24 count:16];
  if (v19)
  {
    v14 = *__b[2];
    v15 = 0;
    v16 = v19;
    while (1)
    {
      v13 = v15;
      if (*__b[2] != v14)
      {
        objc_enumerationMutation(obj);
      }

      v22 = *(__b[1] + 8 * v15);
      v12 = [v22 accessibilityLabel];
      v9 = [v22 accessibilityValue];
      v1 = __AXStringForVariables();
      v2 = v23[0];
      v23[0] = v1;
      MEMORY[0x29EDC9740](v2);
      MEMORY[0x29EDC9740](v9);
      *&v3 = MEMORY[0x29EDC9740](v12).n128_u64[0];
      v20 = [v22 safeUIViewForKey:{@"_decorationView", v3, v12, v9, @"__AXStringForVariablesSentinel"}];
      v7 = [v20 accessibilityLabel];
      v8 = [v20 accessibilityValue];
      v10 = @"__AXStringForVariablesSentinel";
      v4 = __AXStringForVariables();
      v5 = v23[0];
      v23[0] = v4;
      MEMORY[0x29EDC9740](v5);
      MEMORY[0x29EDC9740](v8);
      MEMORY[0x29EDC9740](v7);
      objc_storeStrong(&v20, 0);
      ++v15;
      if (v13 + 1 >= v16)
      {
        v15 = 0;
        v16 = [obj countByEnumeratingWithState:__b objects:v24 count:{16, v7, v8, @"__AXStringForVariablesSentinel"}];
        if (!v16)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x29EDC9740](obj);
  v11 = MEMORY[0x29EDC9748](v23[0]);
  objc_storeStrong(v23, 0);

  return v11;
}

id __136___UICalendarDateViewCellAccessibility_configureWithDay_formatter_fontDesign_decorations_outOfRange_renderOverhangDays_highlightsToday___block_invoke_2(id *a1)
{
  v23 = *MEMORY[0x29EDCA608];
  v21[2] = a1;
  v21[1] = a1;
  v21[0] = 0;
  memset(__b, 0, sizeof(__b));
  obj = objc_loadWeakRetained(a1 + 4);
  v17 = [obj countByEnumeratingWithState:__b objects:v22 count:16];
  if (v17)
  {
    v12 = *__b[2];
    v13 = 0;
    v14 = v17;
    while (1)
    {
      v11 = v13;
      if (*__b[2] != v12)
      {
        objc_enumerationMutation(obj);
      }

      v20 = *(__b[1] + 8 * v13);
      v8 = [v20 accessibilityHint];
      v1 = __AXStringForVariables();
      v2 = v21[0];
      v21[0] = v1;
      MEMORY[0x29EDC9740](v2);
      *&v3 = MEMORY[0x29EDC9740](v8).n128_u64[0];
      v18 = [v20 safeUIViewForKey:{@"_decorationView", v3, v8, @"__AXStringForVariablesSentinel"}];
      v7 = [v18 accessibilityHint];
      v9 = @"__AXStringForVariablesSentinel";
      v4 = __AXStringForVariables();
      v5 = v21[0];
      v21[0] = v4;
      MEMORY[0x29EDC9740](v5);
      MEMORY[0x29EDC9740](v7);
      objc_storeStrong(&v18, 0);
      ++v13;
      if (v11 + 1 >= v14)
      {
        v13 = 0;
        v14 = [obj countByEnumeratingWithState:__b objects:v22 count:{16, v7, @"__AXStringForVariablesSentinel"}];
        if (!v14)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x29EDC9740](obj);
  v10 = MEMORY[0x29EDC9748](v21[0]);
  objc_storeStrong(v21, 0);

  return v10;
}

BOOL __136___UICalendarDateViewCellAccessibility_configureWithDay_formatter_fontDesign_decorations_outOfRange_renderOverhangDays_highlightsToday___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeUIViewForKey:@"_decorationContentView"];
  v4 = [v2 isHidden];
  MEMORY[0x29EDC9740](v2);
  MEMORY[0x29EDC9740](WeakRetained);
  return (v4 & 1) == 0;
}

BOOL __136___UICalendarDateViewCellAccessibility_configureWithDay_formatter_fontDesign_decorations_outOfRange_renderOverhangDays_highlightsToday___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeUIViewForKey:@"_decorationContentView"];
  v4 = [v2 isHidden];
  MEMORY[0x29EDC9740](v2);
  MEMORY[0x29EDC9740](WeakRetained);
  return (v4 & 1) != 0;
}

uint64_t __136___UICalendarDateViewCellAccessibility_configureWithDay_formatter_fontDesign_decorations_outOfRange_renderOverhangDays_highlightsToday___block_invoke_5(uint64_t a1)
{
  v10 = a1;
  v9 = a1;
  v8 = *MEMORY[0x29EDC7F70];
  v7 = 0;
  objc_opt_class();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](WeakRetained);
  v5 = MEMORY[0x29EDC9748](v6);
  objc_storeStrong(&v6, 0);
  v2 = [v5 isSelected];
  MEMORY[0x29EDC9740](v5);
  if (v2)
  {
    v8 |= *MEMORY[0x29EDC7FC0];
  }

  if (*(a1 + 40))
  {
    return v8 | *MEMORY[0x29EDC7FA8];
  }

  return v8;
}

@end