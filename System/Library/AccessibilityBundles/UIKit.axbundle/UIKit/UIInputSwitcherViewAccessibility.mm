@interface UIInputSwitcherViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityLastHandednessBiasAnnouncement;
- (void)_accessibilitySetLastHandednessBiasAnnouncement:(uint64_t)announcement;
- (void)_axAnnounceSelectedLanguage:(id)language;
- (void)_segmentControlValueDidChange:(id)change;
- (void)highlightRow:(unint64_t)row;
- (void)updateSelectionWithPoint:(CGPoint)point;
- (void)willFadeForSelectionAtIndex:(unint64_t)index;
@end

@implementation UIInputSwitcherViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v9 = location;
  v8 = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v4 = @"UIInputSwitcherView";
  v6 = @"UIKeyboardMenuView";
  [location[0] validateClass:? isKindOfClass:?];
  [location[0] validateClass:@"UIInputSwitcherTableView" isKindOfClass:@"UITableView"];
  [location[0] validateClass:@"UIInputSwitcherView" hasInstanceVariable:@"m_table" withType:"UIInputSwitcherTableView"];
  v3 = "@";
  [location[0] validateClass:@"UIInputSwitcherView" hasInstanceMethod:@"inputModes" withFullSignature:0];
  [location[0] validateClass:v4 hasInstanceVariable:@"m_inputSwitcherItems" withType:"NSArray"];
  v7 = "v";
  [location[0] validateClass:v6 hasInstanceMethod:@"updateSelectionWithPoint:" withFullSignature:{"{CGPoint=dd}", 0}];
  [location[0] validateClass:@"UIInputSwitcherItem" hasInstanceMethod:@"identifier" withFullSignature:{v3, 0}];
  [location[0] validateClass:v4 hasInstanceMethod:@"_segmentControlValueDidChange:" withFullSignature:{v7, v3, 0}];
  v5 = "Q";
  [location[0] validateClass:v4 hasInstanceMethod:@"willFadeForSelectionAtIndex:" withFullSignature:{v7, "Q", 0}];
  [location[0] validateClass:@"UIInputSwitcherSegmentControl" hasInstanceMethod:@"selectedSegmentIndex" withFullSignature:{"q", 0}];
  [location[0] validateClass:v4 isKindOfClass:v6];
  [location[0] validateClass:v6 hasInstanceMethod:@"highlightRow:" withFullSignature:{v7, v5, 0}];
  objc_storeStrong(v9, v8);
}

- (id)_accessibilityLastHandednessBiasAnnouncement
{
  if (self)
  {
    v2 = objc_getAssociatedObject(self, &__UIInputSwitcherView___accessibilityLastHandednessBiasAnnouncement);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)_accessibilitySetLastHandednessBiasAnnouncement:(uint64_t)announcement
{
  announcementCopy = announcement;
  location = 0;
  objc_storeStrong(&location, a2);
  if (announcementCopy)
  {
    __UIAccessibilitySetAssociatedObject();
  }

  objc_storeStrong(&location, 0);
}

- (void)updateSelectionWithPoint:(CGPoint)point
{
  pointCopy = point;
  selfCopy = self;
  v12[1] = a2;
  v11 = 0;
  objc_opt_class();
  v5 = [(UIInputSwitcherViewAccessibility *)selfCopy safeValueForKey:@"m_table"];
  v10 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v5);
  v9 = MEMORY[0x29EDC9748](v10);
  objc_storeStrong(&v10, 0);
  v12[0] = v9;
  indexPathForSelectedRow = [v9 indexPathForSelectedRow];
  v7.receiver = selfCopy;
  v7.super_class = UIInputSwitcherViewAccessibility;
  [(UIInputSwitcherViewAccessibility *)&v7 updateSelectionWithPoint:pointCopy.x, pointCopy.y];
  indexPathForSelectedRow2 = [v12[0] indexPathForSelectedRow];
  if (indexPathForSelectedRow != indexPathForSelectedRow2 && ([indexPathForSelectedRow isEqual:indexPathForSelectedRow2] & 1) == 0)
  {
    if (indexPathForSelectedRow2)
    {
      [(UIInputSwitcherViewAccessibility *)selfCopy _axAnnounceSelectedLanguage:indexPathForSelectedRow2];
    }

    else
    {
      notification = *MEMORY[0x29EDC7EA8];
      v4 = accessibilityLocalizedString(@"keyboard.cancel");
      UIAccessibilityPostNotification(notification, v4);
      MEMORY[0x29EDC9740](v4);
    }
  }

  objc_storeStrong(&indexPathForSelectedRow2, 0);
  objc_storeStrong(&indexPathForSelectedRow, 0);
  objc_storeStrong(v12, 0);
}

- (void)highlightRow:(unint64_t)row
{
  selfCopy = self;
  v7 = a2;
  rowCopy = row;
  v5.receiver = self;
  v5.super_class = UIInputSwitcherViewAccessibility;
  [(UIInputSwitcherViewAccessibility *)&v5 highlightRow:row];
  v3 = selfCopy;
  v4 = [MEMORY[0x29EDB9FE0] indexPathForRow:rowCopy inSection:0];
  [(UIInputSwitcherViewAccessibility *)v3 _axAnnounceSelectedLanguage:?];
  MEMORY[0x29EDC9740](v4);
}

- (void)_axAnnounceSelectedLanguage:(id)language
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, language);
  v42 = 0;
  objc_opt_class();
  v16 = [(UIInputSwitcherViewAccessibility *)selfCopy safeValueForKey:@"m_table"];
  v41 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v16);
  v40 = MEMORY[0x29EDC9748](v41);
  objc_storeStrong(&v41, 0);
  v43 = v40;
  v39 = [v40 cellForRowAtIndexPath:location[0]];
  if (v39)
  {
    v31 = 0;
    v32 = &v31;
    v33 = 838860800;
    v34 = 48;
    v35 = __Block_byref_object_copy__13;
    v36 = __Block_byref_object_dispose__13;
    v37 = 0;
    v24 = MEMORY[0x29EDCA5F8];
    v25 = -1073741824;
    v26 = 0;
    v27 = __64__UIInputSwitcherViewAccessibility__axAnnounceSelectedLanguage___block_invoke;
    v28 = &unk_29F30C860;
    v30[1] = &v31;
    v29 = MEMORY[0x29EDC9748](selfCopy);
    v30[0] = MEMORY[0x29EDC9748](location[0]);
    AXPerformSafeBlock();
    v23 = MEMORY[0x29EDC9748](v32[5]);
    objc_storeStrong(v30, 0);
    objc_storeStrong(&v29, 0);
    _Block_object_dispose(&v31, 8);
    objc_storeStrong(&v37, 0);
    v38 = v23;
    v22 = 0;
    v21 = 0;
    v20 = [(UIInputSwitcherViewAccessibility *)selfCopy safeArrayForKey:@"inputModes"];
    v19 = [v38 safeValueForKey:@"identifier"];
    if ([v20 containsObject:v19])
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
      v5 = v21;
      v21 = v4;
      v6 = MEMORY[0x29EDC9740](v5);
      v7 = MEMORY[0x29ED3DB20](v21, v6);
      v8 = v21;
      v21 = v7;
      MEMORY[0x29EDC9740](v8);
    }

    accessibilityValue = [v39 accessibilityValue];
    v10 = v22;
    v22 = accessibilityValue;
    *&v11 = MEMORY[0x29EDC9740](v10).n128_u64[0];
    v13 = MEMORY[0x29EDBD7E8];
    accessibilityLabel = [v39 accessibilityLabel];
    v14 = __UIAXStringForVariables();
    argument = [v13 axAttributedStringWithString:{v22, @"__AXStringForVariablesSentinel"}];
    MEMORY[0x29EDC9740](v14);
    *&v12 = MEMORY[0x29EDC9740](accessibilityLabel).n128_u64[0];
    if (v21)
    {
      [argument setAttribute:v21 forKey:{*MEMORY[0x29EDBD918], v12}];
    }

    UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], argument);
    objc_storeStrong(&argument, 0);
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v22, 0);
    objc_storeStrong(&v38, 0);
  }

  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(location, 0);
}

double __64__UIInputSwitcherViewAccessibility__axAnnounceSelectedLanguage___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) safeArrayForKey:@"m_inputSwitcherItems"];
  v1 = [v6 objectAtIndexedSubscript:{objc_msgSend(*(a1 + 40), "row")}];
  v2 = *(*(a1 + 48) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v1;
  MEMORY[0x29EDC9740](v3);
  *&result = MEMORY[0x29EDC9740](v6).n128_u64[0];
  return result;
}

- (void)_segmentControlValueDidChange:(id)change
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, change);
  v18.receiver = selfCopy;
  v18.super_class = UIInputSwitcherViewAccessibility;
  [(UIInputSwitcherViewAccessibility *)&v18 _segmentControlValueDidChange:location[0]];
  v17 = 0;
  v16 = 0;
  v15 = __UIAccessibilitySafeClass();
  v14 = MEMORY[0x29EDC9748](v15);
  objc_storeStrong(&v15, 0);
  v3 = location[0];
  location[0] = v14;
  MEMORY[0x29EDC9740](v3);
  v12 = 0;
  objc_opt_class();
  v7 = [location[0] safeValueForKey:@"selectedSegmentIndex"];
  v11 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v7);
  v10 = MEMORY[0x29EDC9748](v11);
  objc_storeStrong(&v11, 0);
  v13 = v10;
  if (v10 && [v13 integerValue] <= 2)
  {
    v4 = UIKitAccessibilityLocalizedString();
    v5 = v17;
    v17 = v4;
    MEMORY[0x29EDC9740](v5);
  }

  v8 = 0;
  LOBYTE(v6) = 0;
  if (v17)
  {
    _accessibilityLastHandednessBiasAnnouncement = [(UIInputSwitcherViewAccessibility *)selfCopy _accessibilityLastHandednessBiasAnnouncement];
    v8 = 1;
    v6 = [_accessibilityLastHandednessBiasAnnouncement isEqualToString:v17] ^ 1;
  }

  if (v8)
  {
    MEMORY[0x29EDC9740](_accessibilityLastHandednessBiasAnnouncement);
  }

  if (v6)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v17);
    [(UIInputSwitcherViewAccessibility *)selfCopy _accessibilitySetLastHandednessBiasAnnouncement:v17];
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

- (void)willFadeForSelectionAtIndex:(unint64_t)index
{
  selfCopy = self;
  v6 = a2;
  indexCopy = index;
  argument = [*MEMORY[0x29EDC8008] _accessibilityResponderElement];
  if (!argument)
  {
    argument = [MEMORY[0x29EDC7B08] activeInstance];
    MEMORY[0x29EDC9740](0);
  }

  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], argument);
  v3.receiver = selfCopy;
  v3.super_class = UIInputSwitcherViewAccessibility;
  [(UIInputSwitcherViewAccessibility *)&v3 willFadeForSelectionAtIndex:indexCopy];
  objc_storeStrong(&argument, 0);
}

@end