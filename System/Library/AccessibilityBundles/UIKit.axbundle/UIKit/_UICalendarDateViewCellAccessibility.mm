@interface _UICalendarDateViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)canBecomeFocused;
- (void)configureWithDay:(id)day formatter:(id)formatter fontDesign:(id)design decorations:(id)decorations outOfRange:(BOOL)range renderOverhangDays:(BOOL)days highlightsToday:(BOOL)today;
- (void)prepareForReuse;
@end

@implementation _UICalendarDateViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v8 = location;
  v7 = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
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

- (void)configureWithDay:(id)day formatter:(id)formatter fontDesign:(id)design decorations:(id)decorations outOfRange:(BOOL)range renderOverhangDays:(BOOL)days highlightsToday:(BOOL)today
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, day);
  v69 = 0;
  objc_storeStrong(&v69, formatter);
  v68 = 0;
  objc_storeStrong(&v68, design);
  v67 = 0;
  objc_storeStrong(&v67, decorations);
  rangeCopy = range;
  daysCopy = days;
  todayCopy = today;
  v63.receiver = selfCopy;
  v63.super_class = _UICalendarDateViewCellAccessibility;
  [(_UICalendarDateViewCellAccessibility *)&v63 configureWithDay:location[0] formatter:v69 fontDesign:v68 decorations:v67 outOfRange:range renderOverhangDays:days highlightsToday:today];
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

  [(_UICalendarDateViewCellAccessibility *)selfCopy setAccessibilityLabel:v58, v11, v12];
  objc_initWeak(&v57, v67);
  v17 = selfCopy;
  v51 = MEMORY[0x29EDCA5F8];
  v52 = -1073741824;
  v53 = 0;
  v54 = __136___UICalendarDateViewCellAccessibility_configureWithDay_formatter_fontDesign_decorations_outOfRange_renderOverhangDays_highlightsToday___block_invoke;
  v55 = &unk_29F30C9E8;
  objc_copyWeak(&v56, &v57);
  [(_UICalendarDateViewCellAccessibility *)v17 _setAccessibilityValueBlock:&v51];
  v16 = selfCopy;
  v45 = MEMORY[0x29EDCA5F8];
  v46 = -1073741824;
  v47 = 0;
  v48 = __136___UICalendarDateViewCellAccessibility_configureWithDay_formatter_fontDesign_decorations_outOfRange_renderOverhangDays_highlightsToday___block_invoke_2;
  v49 = &unk_29F30C9E8;
  objc_copyWeak(v50, &v57);
  [(_UICalendarDateViewCellAccessibility *)v16 _setAccessibilityHintBlock:&v45];
  objc_initWeak(&v44, selfCopy);
  v15 = selfCopy;
  v38 = MEMORY[0x29EDCA5F8];
  v39 = -1073741824;
  v40 = 0;
  v41 = __136___UICalendarDateViewCellAccessibility_configureWithDay_formatter_fontDesign_decorations_outOfRange_renderOverhangDays_highlightsToday___block_invoke_3;
  v42 = &unk_29F30C7F0;
  objc_copyWeak(&v43, &v44);
  [(_UICalendarDateViewCellAccessibility *)v15 _setIsAccessibilityElementBlock:&v38];
  v14 = selfCopy;
  v32 = MEMORY[0x29EDCA5F8];
  v33 = -1073741824;
  v34 = 0;
  v35 = __136___UICalendarDateViewCellAccessibility_configureWithDay_formatter_fontDesign_decorations_outOfRange_renderOverhangDays_highlightsToday___block_invoke_4;
  v36 = &unk_29F30C7F0;
  objc_copyWeak(&v37, &v44);
  [(_UICalendarDateViewCellAccessibility *)v14 _setAccessibilityElementsHiddenBlock:&v32];
  v13 = selfCopy;
  v25 = MEMORY[0x29EDCA5F8];
  v26 = -1073741824;
  v27 = 0;
  v28 = __136___UICalendarDateViewCellAccessibility_configureWithDay_formatter_fontDesign_decorations_outOfRange_renderOverhangDays_highlightsToday___block_invoke_5;
  v29 = &unk_29F30CA10;
  objc_copyWeak(&v30, &v44);
  v31 = rangeCopy;
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
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = _UICalendarDateViewCellAccessibility;
  [(_UICalendarDateViewCellAccessibility *)&v2 prepareForReuse];
  [(_UICalendarDateViewCellAccessibility *)selfCopy _setIsAccessibilityElementBlock:?];
  [(_UICalendarDateViewCellAccessibility *)selfCopy setAccessibilityLabel:0];
  [(_UICalendarDateViewCellAccessibility *)selfCopy _setAccessibilityTraitsBlock:0];
}

- (BOOL)canBecomeFocused
{
  selfCopy = self;
  v5 = a2;
  if (([(_UICalendarDateViewCellAccessibility *)self _accessibilityIsFKARunningForFocusItem]& 1) != 0)
  {
    isAccessibilityElement = [(_UICalendarDateViewCellAccessibility *)selfCopy isAccessibilityElement];
  }

  else
  {
    v4.receiver = selfCopy;
    v4.super_class = _UICalendarDateViewCellAccessibility;
    isAccessibilityElement = [(_UICalendarDateViewCellAccessibility *)&v4 canBecomeFocused];
  }

  return isAccessibilityElement != 0;
}

@end