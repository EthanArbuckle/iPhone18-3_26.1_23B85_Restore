@interface UIDatePickerContentViewAccessibility
- (id)accessibilityLabel;
- (unint64_t)_accessibilityDatePickerComponentType;
- (unint64_t)accessibilityTraits;
@end

@implementation UIDatePickerContentViewAccessibility

- (id)accessibilityLabel
{
  selfCopy = self;
  location[1] = a2;
  v32.receiver = self;
  v32.super_class = UIDatePickerContentViewAccessibility;
  location[0] = [(UIDatePickerContentViewAccessibility *)&v32 accessibilityLabel];
  if (!location[0])
  {
    v25 = [(UIDatePickerContentViewAccessibility *)selfCopy safeValueForKey:@"titleLabel"];
    accessibilityLabel = [v25 accessibilityLabel];
    v3 = location[0];
    location[0] = accessibilityLabel;
    MEMORY[0x29EDC9740](v3);
    MEMORY[0x29EDC9740](v25);
  }

  v31 = [(UIDatePickerContentViewAccessibility *)selfCopy _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Uidatepickervi.isa)];
  if (!v31)
  {
    v35 = MEMORY[0x29EDC9748](location[0]);
    v30 = 1;
    goto LABEL_27;
  }

  v23 = [v31 safeValueForKey:@"datePickerMode"];
  unsignedIntValue = [v23 unsignedIntValue];
  *&v4 = MEMORY[0x29EDC9740](v23).n128_u64[0];
  v29 = unsignedIntValue;
  _accessibilityDatePickerComponentType = [(UIDatePickerContentViewAccessibility *)selfCopy _accessibilityDatePickerComponentType];
  v27 = 0;
  if (unsignedIntValue == 3)
  {
    if (_accessibilityDatePickerComponentType == 32)
    {
      v22 = [v31 safeValueForKey:@"_hourLabel"];
      accessibilityLabel2 = [v22 accessibilityLabel];
      v6 = v27;
      v27 = accessibilityLabel2;
      MEMORY[0x29EDC9740](v6);
      MEMORY[0x29EDC9740](v22);
    }

    else if (_accessibilityDatePickerComponentType == 64)
    {
      v21 = [v31 safeValueForKey:@"_minuteLabel"];
      accessibilityLabel3 = [v21 accessibilityLabel];
      v8 = v27;
      v27 = accessibilityLabel3;
      MEMORY[0x29EDC9740](v8);
      MEMORY[0x29EDC9740](v21);
    }

    if (v27)
    {
      v19 = MEMORY[0x29EDBA0F8];
      v20 = accessibilityLocalizedString(@"date.picker.row.format");
      v35 = [v19 stringWithFormat:location[0], v27];
      MEMORY[0x29EDC9740](v20);
    }

    else
    {
      v35 = MEMORY[0x29EDC9748](location[0]);
    }

    v30 = 1;
    goto LABEL_26;
  }

  if (!v29 || v29 == 2)
  {
    v26 = 0;
    if (_accessibilityDatePickerComponentType == 32)
    {
      v17 = MEMORY[0x29EDBA0F8];
      v18 = accessibilityLocalizedString(@"date.picker.hours");
      v9 = [v17 stringWithFormat:location[0]];
      v10 = v26;
      v26 = v9;
      MEMORY[0x29EDC9740](v10);
      MEMORY[0x29EDC9740](v18);
    }

    else if (_accessibilityDatePickerComponentType == 64)
    {
      v15 = MEMORY[0x29EDBA0F8];
      v16 = accessibilityLocalizedString(@"date.picker.minutes");
      v11 = [v15 localizedStringWithFormat:v16, objc_msgSend(location[0], "integerValue")];
      v12 = v26;
      v26 = v11;
      MEMORY[0x29EDC9740](v12);
      MEMORY[0x29EDC9740](v16);
    }

    if (v26)
    {
      objc_storeStrong(location, v26);
    }

    objc_storeStrong(&v26, 0);
    goto LABEL_25;
  }

  if (v29 != 1)
  {
LABEL_25:
    v35 = MEMORY[0x29EDC9748](location[0]);
    v30 = 1;
    goto LABEL_26;
  }

  v35 = MEMORY[0x29EDC9748](location[0]);
  v30 = 1;
LABEL_26:
  objc_storeStrong(&v27, 0);
LABEL_27:
  objc_storeStrong(&v31, 0);
  objc_storeStrong(location, 0);
  v13 = v35;

  return v13;
}

- (unint64_t)_accessibilityDatePickerComponentType
{
  selfCopy = self;
  v14[1] = a2;
  v14[0] = [(UIDatePickerContentViewAccessibility *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Uidatepickervi.isa)];
  v13 = [(UIDatePickerContentViewAccessibility *)selfCopy _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Uipickercolumn.isa)];
  v12 = [v14[0] safeValueForKey:@"_tables"];
  v11 = [v12 indexOfObject:v13];
  v6 = 0;
  v7 = &v6;
  v8 = 0x20000000;
  v9 = 32;
  v10 = 0;
  NSClassFromString(&cfstr_Uidatepickervi.isa);
  if (objc_opt_isKindOfClass())
  {
    v5 = [v14[0] safeValueForKey:@"_mode"];
    v4[1] = &v6;
    v4[0] = MEMORY[0x29EDC9748](v5);
    v4[2] = v11;
    AXPerformSafeBlock();
    objc_storeStrong(v4, 0);
    objc_storeStrong(&v5, 0);
  }

  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(v14, 0);
  return v3;
}

uint64_t __77__UIDatePickerContentViewAccessibility__accessibilityDatePickerComponentType__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) calendarUnitForComponent:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (unint64_t)accessibilityTraits
{
  selfCopy = self;
  v9 = a2;
  v8 = 0;
  v4 = [(UIDatePickerContentViewAccessibility *)self safeValueForKey:@"titleLabel"];
  location = [v4 safeValueForKey:@"textColor"];
  v5 = [(UIDatePickerContentViewAccessibility *)selfCopy _accessibilityValueForKey:@"SelectedColor", MEMORY[0x29EDC9740](v4).n128_f64[0]];
  v6 = UIAccessibilityColorEqualToColor();
  MEMORY[0x29EDC9740](v5);
  if (v6)
  {
    v8 |= *MEMORY[0x29EDC7FC0];
  }

  v3 = v8;
  objc_storeStrong(&location, 0);
  return v3;
}

@end