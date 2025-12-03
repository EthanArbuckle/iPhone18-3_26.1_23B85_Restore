@interface UIInputSwitcherTableCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (CGPoint)accessibilityActivationPoint;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation UIInputSwitcherTableCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v6 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v3 = "@";
  [location[0] validateClass:@"UIInputSwitcherItem" hasInstanceMethod:@"identifier" withFullSignature:0];
  v4 = @"UIInputSwitcherView";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v4 hasInstanceVariable:@"m_inputSwitcherItems" withType:"NSArray"];
  objc_storeStrong(v6, obj);
}

- (id)accessibilityLabel
{
  selfCopy = self;
  v47[1] = a2;
  textLabel = [(UIInputSwitcherTableCellAccessibility *)self textLabel];
  accessibilityLabel = [textLabel accessibilityLabel];
  detailTextLabel = [(UIInputSwitcherTableCellAccessibility *)selfCopy detailTextLabel];
  accessibilityLabel2 = [detailTextLabel accessibilityLabel];
  v47[0] = __UIAXStringForVariables();
  MEMORY[0x29EDC9740](accessibilityLabel2);
  MEMORY[0x29EDC9740](detailTextLabel);
  MEMORY[0x29EDC9740](accessibilityLabel);
  MEMORY[0x29EDC9740](textLabel);
  v46 = 0;
  v45 = [(UIInputSwitcherTableCellAccessibility *)selfCopy _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Uiinputswitche_13.isa), accessibilityLabel2, @"__AXStringForVariablesSentinel"];
  v44 = [(UIInputSwitcherTableCellAccessibility *)selfCopy _accessibilityAncestorIsKindOf:objc_opt_class()];
  v16 = v44;
  v42 = 0;
  objc_opt_class();
  v41 = __UIAccessibilityCastAsClass();
  v40 = MEMORY[0x29EDC9748](v41);
  objc_storeStrong(&v41, 0);
  v43 = [v16 indexPathForCell:?];
  *&v2 = MEMORY[0x29EDC9740](v40).n128_u64[0];
  if (v43)
  {
    v32 = 0;
    v33 = &v32;
    v34 = 838860800;
    v35 = 48;
    v36 = __Block_byref_object_copy__12;
    v37 = __Block_byref_object_dispose__12;
    v38 = 0;
    v25 = MEMORY[0x29EDCA5F8];
    v26 = -1073741824;
    v27 = 0;
    v28 = __59__UIInputSwitcherTableCellAccessibility_accessibilityLabel__block_invoke;
    v29 = &unk_29F30C860;
    v31[1] = &v32;
    v30 = MEMORY[0x29EDC9748](v45);
    v31[0] = MEMORY[0x29EDC9748](v43);
    AXPerformSafeBlock();
    v24 = MEMORY[0x29EDC9748](v33[5]);
    objc_storeStrong(v31, 0);
    objc_storeStrong(&v30, 0);
    _Block_object_dispose(&v32, 8);
    objc_storeStrong(&v38, 0);
    v39 = v24;
    v22 = 0;
    objc_opt_class();
    v12 = [v45 safeValueForKey:@"inputModes"];
    v21 = __UIAccessibilityCastAsClass();
    MEMORY[0x29EDC9740](v12);
    v20 = MEMORY[0x29EDC9748](v21);
    objc_storeStrong(&v21, 0);
    v23 = v20;
    v19 = [v39 safeValueForKey:@"identifier"];
    if ([v23 containsObject:v19])
    {
      v3 = MEMORY[0x29EDC9748](v19);
    }

    else
    {
      v3 = MEMORY[0x29EDC9748](0);
    }

    v18 = v3;
    if (v3)
    {
      v4 = MEMORY[0x29ED3DC30](v18);
      v5 = v46;
      v46 = v4;
      v6 = MEMORY[0x29EDC9740](v5);
      v7 = MEMORY[0x29ED3DB20](v46, v6);
      v8 = v46;
      v46 = v7;
      MEMORY[0x29EDC9740](v8);
    }

    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v23, 0);
    objc_storeStrong(&v39, 0);
  }

  if (v46)
  {
    v17 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:{v47[0], v2}];
    [v17 setAttribute:v46 forKey:*MEMORY[0x29EDBD918]];
    objc_storeStrong(v47, v17);
    objc_storeStrong(&v17, 0);
  }

  v11 = MEMORY[0x29EDC9748](v47[0]);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(&v44, 0);
  objc_storeStrong(&v45, 0);
  objc_storeStrong(&v46, 0);
  objc_storeStrong(v47, 0);

  return v11;
}

double __59__UIInputSwitcherTableCellAccessibility_accessibilityLabel__block_invoke(uint64_t a1)
{
  v11 = a1;
  v10 = a1;
  v9 = 0;
  v6 = [*(a1 + 32) safeValueForKey:@"m_inputSwitcherItems"];
  v8 = __UIAccessibilitySafeClass();
  MEMORY[0x29EDC9740](v6);
  v7 = MEMORY[0x29EDC9748](v8);
  objc_storeStrong(&v8, 0);
  v1 = [v7 objectAtIndex:{objc_msgSend(*(a1 + 40), "row")}];
  v2 = *(*(a1 + 48) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v1;
  MEMORY[0x29EDC9740](v3);
  *&result = MEMORY[0x29EDC9740](v7).n128_u64[0];
  return result;
}

- (id)accessibilityValue
{
  v9[2] = self;
  v9[1] = a2;
  v8 = 0;
  objc_opt_class();
  v7 = __UIAccessibilityCastAsClass();
  v6 = MEMORY[0x29EDC9748](v7);
  objc_storeStrong(&v7, 0);
  v9[0] = [v6 accessoryView];
  *&v2 = MEMORY[0x29EDC9740](v6).n128_u64[0];
  accessibilityValue = [v9[0] accessibilityValue];
  v4 = MEMORY[0x29EDC9748](accessibilityValue);
  objc_storeStrong(&accessibilityValue, 0);
  objc_storeStrong(v9, 0);

  return v4;
}

- (CGPoint)accessibilityActivationPoint
{
  selfCopy = self;
  v15 = a2;
  v17 = 0uLL;
  v14.receiver = self;
  v14.super_class = UIInputSwitcherTableCellAccessibility;
  [(UIInputSwitcherTableCellAccessibility *)&v14 accessibilityActivationPoint];
  *&v17 = v2;
  *(&v17 + 1) = v3;
  v12 = 0;
  objc_opt_class();
  v11 = __UIAccessibilityCastAsClass();
  v10 = MEMORY[0x29EDC9748](v11);
  objc_storeStrong(&v11, 0);
  accessoryView = [v10 accessoryView];
  *&v4 = MEMORY[0x29EDC9740](v10).n128_u64[0];
  if (accessoryView)
  {
    [accessoryView accessibilityActivationPoint];
    *&v9 = v5;
    *(&v9 + 1) = v6;
    v17 = v9;
  }

  objc_storeStrong(&accessoryView, 0);
  v8 = *(&v17 + 1);
  v7 = *&v17;
  result.y = v8;
  result.x = v7;
  return result;
}

@end