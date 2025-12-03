@interface UIColorWellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (CGPoint)accessibilityActivationPoint;
- (id)_accessibilityColorWellStyle;
- (id)accessibilityValue;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation UIColorWellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, validations);
  [location[0] validateClass:@"UIColorWell" hasInstanceVariable:@"_style" withType:"_UIColorWellVisualStyle"];
  [location[0] validateClass:@"_UIColorWelliOSVisualStyle" hasInstanceVariable:@"_button" withType:"UIButton"];
  objc_storeStrong(location, 0);
}

- (void)_accessibilityLoadAccessibilityInformation
{
  selfCopy = self;
  v42 = a2;
  v41.receiver = self;
  v41.super_class = UIColorWellAccessibility;
  [(UIColorWellAccessibility *)&v41 _accessibilityLoadAccessibilityInformation];
  _accessibilityColorWellStyle = [(UIColorWellAccessibility *)selfCopy _accessibilityColorWellStyle];
  v8 = [_accessibilityColorWellStyle safeIvarForKey:@"_button"];
  MEMORY[0x29EDC9740](_accessibilityColorWellStyle);
  v40 = v8;
  if (v8)
  {
    objc_initWeak(&location, selfCopy);
    v6 = *v40;
    v33 = MEMORY[0x29EDCA5F8];
    v34 = -1073741824;
    v35 = 0;
    v36 = __70__UIColorWellAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
    v37 = &unk_29F30C9E8;
    objc_copyWeak(&v38, &location);
    [v6 _setAccessibilityLabelBlock:&v33];
    v5 = *v40;
    v27 = MEMORY[0x29EDCA5F8];
    v28 = -1073741824;
    v29 = 0;
    v30 = __70__UIColorWellAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2;
    v31 = &unk_29F30C9E8;
    objc_copyWeak(v32, &location);
    [v5 _setAccessibilityHintBlock:&v27];
    v4 = *v40;
    v21 = MEMORY[0x29EDCA5F8];
    v22 = -1073741824;
    v23 = 0;
    v24 = __70__UIColorWellAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3;
    v25 = &unk_29F30C9E8;
    objc_copyWeak(&v26, &location);
    [v4 _setAccessibilityValueBlock:&v21];
    v3 = *v40;
    v15 = MEMORY[0x29EDCA5F8];
    v16 = -1073741824;
    v17 = 0;
    v18 = __70__UIColorWellAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_4;
    v19 = &unk_29F30C9E8;
    objc_copyWeak(&v20, &location);
    [v3 _setAccessibilityIdentifierBlock:&v15];
    v2 = *v40;
    v9 = MEMORY[0x29EDCA5F8];
    v10 = -1073741824;
    v11 = 0;
    v12 = __70__UIColorWellAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_5;
    v13 = &unk_29F30E4E8;
    objc_copyWeak(&v14, &location);
    [v2 _setAccessibilityCustomContentBlock:&v9];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&v20);
    objc_destroyWeak(&v26);
    objc_destroyWeak(v32);
    objc_destroyWeak(&v38);
    objc_destroyWeak(&location);
  }
}

id __70__UIColorWellAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(id *a1)
{
  v3[2] = a1;
  v3[1] = a1;
  v3[0] = objc_loadWeakRetained(a1 + 4);
  v2 = [v3[0] accessibilityLabel];
  objc_storeStrong(v3, 0);

  return v2;
}

id __70__UIColorWellAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(id *a1)
{
  v3[2] = a1;
  v3[1] = a1;
  v3[0] = objc_loadWeakRetained(a1 + 4);
  v2 = [v3[0] accessibilityHint];
  objc_storeStrong(v3, 0);

  return v2;
}

id __70__UIColorWellAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3(id *a1)
{
  v3[2] = a1;
  v3[1] = a1;
  v3[0] = objc_loadWeakRetained(a1 + 4);
  v2 = [v3[0] accessibilityValue];
  objc_storeStrong(v3, 0);

  return v2;
}

id __70__UIColorWellAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_4(id *a1)
{
  v3[2] = a1;
  v3[1] = a1;
  v3[0] = objc_loadWeakRetained(a1 + 4);
  v2 = [v3[0] accessibilityIdentifier];
  objc_storeStrong(v3, 0);

  return v2;
}

id __70__UIColorWellAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_5(id *a1)
{
  v3[2] = a1;
  v3[1] = a1;
  v3[0] = objc_loadWeakRetained(a1 + 4);
  v2 = [v3[0] accessibilityCustomContent];
  objc_storeStrong(v3, 0);

  return v2;
}

- (id)_accessibilityColorWellStyle
{
  v3 = [(UIColorWellAccessibility *)self safeIvarForKey:@"_style"];
  if (v3)
  {
    v4 = MEMORY[0x29EDC9748](*v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)accessibilityValue
{
  selfCopy = self;
  location[1] = a2;
  v5.receiver = self;
  v5.super_class = UIColorWellAccessibility;
  location[0] = [(UIColorWellAccessibility *)&v5 accessibilityValue];
  if ([location[0] length])
  {
    _accessibilityColorDescription = MEMORY[0x29EDC9748](location[0]);
  }

  else
  {
    selectedColor = [(UIColorWellAccessibility *)selfCopy selectedColor];
    _accessibilityColorDescription = [selectedColor _accessibilityColorDescription];
    MEMORY[0x29EDC9740](selectedColor);
  }

  objc_storeStrong(location, 0);
  v2 = _accessibilityColorDescription;

  return v2;
}

- (CGPoint)accessibilityActivationPoint
{
  selfCopy = self;
  location[1] = a2;
  _accessibilityColorWellStyle = [(UIColorWellAccessibility *)self _accessibilityColorWellStyle];
  location[0] = [_accessibilityColorWellStyle safeValueForKey:@"_button"];
  *&v2 = MEMORY[0x29EDC9740](_accessibilityColorWellStyle).n128_u64[0];
  if (location[0])
  {
    [location[0] accessibilityActivationPoint];
    *&v18 = v3;
    *(&v18 + 1) = v4;
    if ((CGFloatIsValid() & 1) == 0 || (CGFloatIsValid() & 1) == 0)
    {
      [location[0] accessibilityFrame];
      rect = v20;
      CGRectGetMidX(v20);
      CGRectGetMidY(rect);
      CGPointMake_13();
      *&v14 = v5;
      *(&v14 + 1) = v6;
      v18 = v14;
    }

    v13 = 1;
  }

  else
  {
    v12.receiver = selfCopy;
    v12.super_class = UIColorWellAccessibility;
    [(UIColorWellAccessibility *)&v12 accessibilityActivationPoint];
    *&v18 = v7;
    *(&v18 + 1) = v8;
    v13 = 1;
  }

  objc_storeStrong(location, 0);
  v10 = *(&v18 + 1);
  v9 = *&v18;
  result.y = v10;
  result.x = v9;
  return result;
}

@end