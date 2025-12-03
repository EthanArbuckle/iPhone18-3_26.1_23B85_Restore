@interface UIPickerViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)canBecomeFocused;
- (id)accessibilityElements;
- (int64_t)_accessibilityPickerType;
- (void)reloadAllComponents;
@end

@implementation UIPickerViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v6 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v4 = @"UIPickerView";
  v3 = @"UIView";
  [location[0] validateClass:? isKindOfClass:?];
  [location[0] validateClass:@"UIPickerView" hasInstanceVariable:@"_tables" withType:"NSMutableArray"];
  [location[0] validateClass:@"UIView" hasInstanceMethod:@"canBecomeFocused" withFullSignature:{"B", 0}];
  [location[0] validateClass:v4 hasInstanceMethod:@"numberOfComponents" withFullSignature:{"q", 0}];
  [location[0] validateClass:v4 hasInstanceMethod:@"reloadAllComponents" withFullSignature:{"v", 0}];
  objc_storeStrong(v6, obj);
}

- (int64_t)_accessibilityPickerType
{
  NSClassFromString(&cfstr_Uidatepickervi.isa);
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 1;
  }

  v3 = [(UIPickerViewAccessibility *)self safeValueForKey:@"datePickerMode"];
  unsignedIntValue = [v3 unsignedIntValue];
  MEMORY[0x29EDC9740](v3);
  switch(unsignedIntValue)
  {
    case 0:
      return 3;
    case 1:
      return 5;
    case 2:
      return 4;
    case 3:
      return 2;
  }

  if (unsignedIntValue != 4)
  {
    if (unsignedIntValue == 4270)
    {
      return 7;
    }

    if (unsignedIntValue == 4271)
    {
      return 8;
    }

    return 1;
  }

  return 6;
}

- (id)accessibilityElements
{
  v28 = *MEMORY[0x29EDCA608];
  selfCopy = self;
  v25[1] = a2;
  v25[0] = [(UIPickerViewAccessibility *)self _accessibilityValueForKey:*MEMORY[0x29EDC7620]];
  v17 = [(UIPickerViewAccessibility *)selfCopy safeValueForKey:@"numberOfComponents"];
  integerValue = [v17 integerValue];
  *&v2 = MEMORY[0x29EDC9740](v17).n128_u64[0];
  v24 = integerValue;
  if (!v25[0] || v24 != [v25[0] count])
  {
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x29EDC9748](v25[0]);
    v16 = [obj countByEnumeratingWithState:__b objects:v27 count:16];
    if (v16)
    {
      v12 = *__b[2];
      v13 = 0;
      v14 = v16;
      while (1)
      {
        v11 = v13;
        if (*__b[2] != v12)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(__b[1] + 8 * v13);
        [v23 setAccessibilityContainer:0];
        ++v13;
        if (v11 + 1 >= v14)
        {
          v13 = 0;
          v14 = [obj countByEnumeratingWithState:__b objects:v27 count:16];
          if (!v14)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x29EDC9740](obj);
    v3 = [objc_allocWithZone(MEMORY[0x29EDB8DE8]) init];
    v4 = v25[0];
    v25[0] = v3;
    *&v5 = MEMORY[0x29EDC9740](v4).n128_u64[0];
    [(UIPickerViewAccessibility *)selfCopy _accessibilitySetRetainedValue:v25[0] forKey:*MEMORY[0x29EDC7620], v5];
    v21 = 0;
    v9 = [(UIPickerViewAccessibility *)selfCopy safeValueForKey:@"numberOfComponents"];
    integerValue2 = [v9 integerValue];
    MEMORY[0x29EDC9740](v9);
    v20 = integerValue2;
    while (v21 < v20)
    {
      v6 = objc_allocWithZone(UIAccessibilityPickerComponent);
      v19 = [v6 initWithAccessibilityContainer:selfCopy];
      [(UIAccessibilityPickerComponent *)v19 setComponent:v21];
      [(UIAccessibilityPickerComponent *)v19 setPicker:selfCopy];
      [v25[0] addObject:v19];
      objc_storeStrong(&v19, 0);
      ++v21;
    }
  }

  v8 = MEMORY[0x29EDC9748](v25[0]);
  objc_storeStrong(v25, 0);

  return v8;
}

- (void)reloadAllComponents
{
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = UIPickerViewAccessibility;
  [(UIPickerViewAccessibility *)&v2 reloadAllComponents];
  [(UIPickerViewAccessibility *)selfCopy _accessibilityRemoveValueForKey:*MEMORY[0x29EDC7620]];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

- (BOOL)canBecomeFocused
{
  selfCopy = self;
  v5 = a2;
  v3.receiver = self;
  v3.super_class = UIPickerViewAccessibility;
  canBecomeFocused = [(UIPickerViewAccessibility *)&v3 canBecomeFocused];
  if (([(UIPickerViewAccessibility *)selfCopy _accessibilityIsFKARunningForFocusItem]& 1) != 0)
  {
    canBecomeFocused = 0;
  }

  return canBecomeFocused & 1;
}

@end