@interface _UICalendarDateViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)canBecomeFocused;
- (void)configureWithDay:(id)a3 formatter:(id)a4 fontDesign:(id)a5 decorations:(id)a6 outOfRange:(BOOL)a7 renderOverhangDays:(BOOL)a8 highlightsToday:(BOOL)a9;
- (void)prepareForReuse;
@end

@implementation _UICalendarDateViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v8 = location;
  v7 = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = @"_UICalendarDateViewCell";
  [location[0] validateClass:? isKindOfClass:?];
  v3 = @"UICollectionViewCell";
  [location[0] validateClass:@"_UICalendarDateViewCell" isKindOfClass:?];
  v6 = "v";
  [location[0] validateClass:@"UICollectionViewCell" hasInstanceMethod:@"prepareForReuse" withFullSignature:0];
  [location[0] validateClass:v5 hasInstanceVariable:@"_decorationContentView" withType:"UIView"];
  v4 = "@";
  [location[0] validateClass:@"UICalendarViewDecoration" hasInstanceMethod:@"_decorationView" withFullSignature:0];
  [location[0] validateClass:v5 hasInstanceMethod:@"configureWithDay:formatter:fontDesign:decorations:outOfRange:renderOverhangDays:highlightsToday:" withFullSignature:{v6, v4, v4, v4, v4, "B", "B", "B", 0}];
  objc_storeStrong(v8, v7);
}

- (void)configureWithDay:(id)a3 formatter:(id)a4 fontDesign:(id)a5 decorations:(id)a6 outOfRange:(BOOL)a7 renderOverhangDays:(BOOL)a8 highlightsToday:(BOOL)a9
{
  v71 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v69 = 0;
  objc_storeStrong(&v69, a4);
  v68 = 0;
  objc_storeStrong(&v68, a5);
  v67 = 0;
  objc_storeStrong(&v67, a6);
  v66 = a7;
  v65 = a8;
  v64 = a9;
  v63.receiver = v71;
  v63.super_class = _UICalendarDateViewCellAccessibility;
  [(_UICalendarDateViewCellAccessibility *)&v63 configureWithDay:location[0] formatter:v69 fontDesign:v68 decorations:v67 outOfRange:a7 renderOverhangDays:a8 highlightsToday:a9];
  v61 = 0;
  objc_opt_class();
  v24 = [location[0] safeValueForKey:@"date"];
  v60 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v24);
  v59 = MEMORY[0x29EDC9748](v60);
  objc_storeStrong(&v60, 0);
  v62 = v59;
  v58 = AXDateStringForFormat();
  if ([location[0] safeBoolForKey:@"isToday"])
  {
    v18 = accessibilityLocalizedString(@"calendar.today");
    v11 = v58;
    v12 = @"__AXStringForVariablesSentinel";
    v9 = __UIAXStringForVariables();
    v10 = v58;
    v58 = v9;
    MEMORY[0x29EDC9740](v10);
    MEMORY[0x29EDC9740](v18);
  }

  [(_UICalendarDateViewCellAccessibility *)v71 setAccessibilityLabel:v58, v11, v12];
  objc_initWeak(&v57, v67);
  v17 = v71;
  v51 = MEMORY[0x29EDCA5F8];
  v52 = -1073741824;
  v53 = 0;
  v54 = __136___UICalendarDateViewCellAccessibility_configureWithDay_formatter_fontDesign_decorations_outOfRange_renderOverhangDays_highlightsToday___block_invoke;
  v55 = &unk_29F30C9E8;
  objc_copyWeak(&v56, &v57);
  [(_UICalendarDateViewCellAccessibility *)v17 _setAccessibilityValueBlock:&v51];
  v16 = v71;
  v45 = MEMORY[0x29EDCA5F8];
  v46 = -1073741824;
  v47 = 0;
  v48 = __136___UICalendarDateViewCellAccessibility_configureWithDay_formatter_fontDesign_decorations_outOfRange_renderOverhangDays_highlightsToday___block_invoke_2;
  v49 = &unk_29F30C9E8;
  objc_copyWeak(v50, &v57);
  [(_UICalendarDateViewCellAccessibility *)v16 _setAccessibilityHintBlock:&v45];
  objc_initWeak(&v44, v71);
  v15 = v71;
  v38 = MEMORY[0x29EDCA5F8];
  v39 = -1073741824;
  v40 = 0;
  v41 = __136___UICalendarDateViewCellAccessibility_configureWithDay_formatter_fontDesign_decorations_outOfRange_renderOverhangDays_highlightsToday___block_invoke_3;
  v42 = &unk_29F30C7F0;
  objc_copyWeak(&v43, &v44);
  [(_UICalendarDateViewCellAccessibility *)v15 _setIsAccessibilityElementBlock:&v38];
  v14 = v71;
  v32 = MEMORY[0x29EDCA5F8];
  v33 = -1073741824;
  v34 = 0;
  v35 = __136___UICalendarDateViewCellAccessibility_configureWithDay_formatter_fontDesign_decorations_outOfRange_renderOverhangDays_highlightsToday___block_invoke_4;
  v36 = &unk_29F30C7F0;
  objc_copyWeak(&v37, &v44);
  [(_UICalendarDateViewCellAccessibility *)v14 _setAccessibilityElementsHiddenBlock:&v32];
  v13 = v71;
  v25 = MEMORY[0x29EDCA5F8];
  v26 = -1073741824;
  v27 = 0;
  v28 = __136___UICalendarDateViewCellAccessibility_configureWithDay_formatter_fontDesign_decorations_outOfRange_renderOverhangDays_highlightsToday___block_invoke_5;
  v29 = &unk_29F30CA10;
  objc_copyWeak(&v30, &v44);
  v31 = v66;
  [(_UICalendarDateViewCellAccessibility *)v13 _setAccessibilityTraitsBlock:&v25];
  objc_destroyWeak(&v30);
  objc_destroyWeak(&v37);
  objc_destroyWeak(&v43);
  objc_destroyWeak(&v44);
  objc_destroyWeak(v50);
  objc_destroyWeak(&v56);
  objc_destroyWeak(&v57);
  objc_storeStrong(&v58, 0);
  objc_storeStrong(&v62, 0);
  objc_storeStrong(&v67, 0);
  objc_storeStrong(&v68, 0);
  objc_storeStrong(&v69, 0);
  objc_storeStrong(location, 0);
}

- (void)prepareForReuse
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = _UICalendarDateViewCellAccessibility;
  [(_UICalendarDateViewCellAccessibility *)&v2 prepareForReuse];
  [(_UICalendarDateViewCellAccessibility *)v4 _setIsAccessibilityElementBlock:?];
  [(_UICalendarDateViewCellAccessibility *)v4 setAccessibilityLabel:0];
  [(_UICalendarDateViewCellAccessibility *)v4 _setAccessibilityTraitsBlock:0];
}

- (BOOL)canBecomeFocused
{
  v6 = self;
  v5 = a2;
  if (([(_UICalendarDateViewCellAccessibility *)self _accessibilityIsFKARunningForFocusItem]& 1) != 0)
  {
    v3 = [(_UICalendarDateViewCellAccessibility *)v6 isAccessibilityElement];
  }

  else
  {
    v4.receiver = v6;
    v4.super_class = _UICalendarDateViewCellAccessibility;
    v3 = [(_UICalendarDateViewCellAccessibility *)&v4 canBecomeFocused];
  }

  return v3 != 0;
}

@end