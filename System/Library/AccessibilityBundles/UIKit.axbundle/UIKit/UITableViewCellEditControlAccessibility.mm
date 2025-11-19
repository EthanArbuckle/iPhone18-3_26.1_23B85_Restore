@interface UITableViewCellEditControlAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityElementsHidden;
- (BOOL)canBecomeFocused;
- (BOOL)isAccessibilityElement;
- (id)_multiSelectNotSelectedImage;
- (id)_multiSelectSelectedImage;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation UITableViewCellEditControlAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v6 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = @"UITableViewCellEditControl";
  [location[0] validateClass:? isKindOfClass:?];
  [location[0] validateClass:@"UITableViewCellEditControl" hasInstanceMethod:@"isRotated" withFullSignature:{"B", 0}];
  v3 = "@";
  [location[0] validateClass:v4 hasInstanceMethod:@"_currentImage" withFullSignature:0];
  [location[0] validateClass:v4 hasInstanceMethod:@"_multiSelectNotSelectedImage" withFullSignature:{v3, 0}];
  [location[0] validateClass:v4 hasInstanceMethod:@"_multiSelectSelectedImage" withFullSignature:{v3, 0}];
  [location[0] validateClass:v4 hasInstanceVariable:@"_imageView" withType:"UIImageView"];
  objc_storeStrong(v6, obj);
}

- (BOOL)accessibilityElementsHidden
{
  v3 = [(UITableViewCellEditControlAccessibility *)self safeValueForKey:@"_currentImage"];
  MEMORY[0x29EDC9740](v3);
  return v3 == 0;
}

- (BOOL)isAccessibilityElement
{
  v12 = self;
  location[1] = a2;
  v9 = [(UITableViewCellEditControlAccessibility *)self isAccessibilityUserDefinedElement];
  *&v2 = MEMORY[0x29EDC9740](v9).n128_u64[0];
  if (v9)
  {
    v8 = [(UITableViewCellEditControlAccessibility *)v12 isAccessibilityUserDefinedElement];
    v13 = [v8 BOOLValue] & 1;
    MEMORY[0x29EDC9740](v8);
  }

  else
  {
    location[0] = [(UITableViewCellEditControlAccessibility *)v12 _accessibilityViewAncestorIsKindOf:objc_opt_class()];
    v6 = [location[0] safeValueForKey:@"editingStyle"];
    v7 = [v6 intValue];
    MEMORY[0x29EDC9740](v6);
    v10 = AXRequestingClient();
    if (v10 == 3 || v10 == 4)
    {
      v13 = (v7 - 1) > 2;
    }

    else
    {
      v5 = 1;
      if (v7 != 3)
      {
        v4 = 0;
        if (v7 == 2)
        {
          v4 = [location[0] _accessibilityBoolValueForKey:@"accessibilityShouldNotBeAnElementIfInsertEditStyle"];
        }

        v5 = v4;
      }

      v13 = (v5 ^ 1) & 1;
    }

    objc_storeStrong(location, 0);
  }

  return v13 & 1;
}

- (id)accessibilityValue
{
  v16 = self;
  location[1] = a2;
  location[0] = [(UITableViewCellEditControlAccessibility *)self _accessibilityViewAncestorIsKindOf:objc_opt_class()];
  v8 = [location[0] safeValueForKey:@"editingStyle"];
  v9 = [v8 intValue];
  *&v2 = MEMORY[0x29EDC9740](v8).n128_u64[0];
  v14 = v9;
  if (v9 == 3)
  {
    v6 = [(UITableViewCellEditControlAccessibility *)v16 safeValueForKey:@"isHighlighted", v2];
    v12 = 0;
    v7 = 1;
    if (([v6 BOOLValue] & 1) == 0)
    {
      v13 = [(UITableViewCellEditControlAccessibility *)v16 safeValueForKey:@"isSelected"];
      v12 = 1;
      v7 = [v13 BOOLValue];
    }

    if (v7)
    {
      v3 = @"1";
    }

    else
    {
      v3 = @"0";
    }

    v17 = MEMORY[0x29EDC9748](v3);
    if (v12)
    {
      MEMORY[0x29EDC9740](v13);
    }

    MEMORY[0x29EDC9740](v6);
    v11 = 1;
  }

  else
  {
    v10.receiver = v16;
    v10.super_class = UITableViewCellEditControlAccessibility;
    v17 = [(UITableViewCellEditControlAccessibility *)&v10 accessibilityValue];
    v11 = 1;
  }

  objc_storeStrong(location, 0);
  v4 = v17;

  return v4;
}

- (unint64_t)accessibilityTraits
{
  v14 = self;
  v13 = a2;
  v11.receiver = self;
  v11.super_class = UITableViewCellEditControlAccessibility;
  v12 = [(UITableViewCellEditControlAccessibility *)&v11 accessibilityTraits]| *MEMORY[0x29EDC7F70];
  location = [(UITableViewCellEditControlAccessibility *)v14 _accessibilityViewAncestorIsKindOf:objc_opt_class()];
  v6 = [location safeValueForKey:@"editingStyle"];
  v7 = [v6 intValue];
  *&v2 = MEMORY[0x29EDC9740](v6).n128_u64[0];
  if (v7)
  {
    if (v7 == 1)
    {
      if (!_UIAccessibilityClientServedInternalControls())
      {
        v12 |= *MEMORY[0x29EDC7578];
      }
    }

    else if (v7 == 3)
    {
      v12 |= *MEMORY[0x29EDC7FE8];
    }
  }

  v8 = 0;
  if (v7 == 3 || (v5 = 0, !v7))
  {
    v9 = [(UITableViewCellEditControlAccessibility *)v14 safeValueForKey:@"isEnabled", v2];
    v8 = 1;
    v5 = [v9 BOOLValue];
  }

  if (v8)
  {
    MEMORY[0x29EDC9740](v9);
  }

  if (v5)
  {
    v12 &= ~*MEMORY[0x29EDC7FA8];
  }

  v4 = v12;
  objc_storeStrong(&location, 0);
  return v4;
}

- (id)accessibilityLabel
{
  v21 = self;
  v20[1] = a2;
  v14 = [(UITableViewCellEditControlAccessibility *)self accessibilityUserDefinedLabel];
  *&v2 = MEMORY[0x29EDC9740](v14).n128_u64[0];
  if (v14)
  {
    v22 = [(UITableViewCellEditControlAccessibility *)v21 accessibilityUserDefinedLabel];
  }

  else
  {
    v20[0] = [(UITableViewCellEditControlAccessibility *)v21 _accessibilityViewAncestorIsKindOf:objc_opt_class()];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v20[0] safeValueForKey:@"editingStyle"];
      v13 = [v12 integerValue];
      *&v3 = MEMORY[0x29EDC9740](v12).n128_u64[0];
      v18 = v13;
      if (v13 == 1)
      {
        location = [v20[0] safeValueForKey:{@"_accessibilityTextElementText", v3}];
        if ([location length])
        {
          v10 = MEMORY[0x29EDBA0F8];
          v11 = accessibilityLocalizedString(@"remove.control.text.with.label");
          v22 = [v10 stringWithFormat:location];
          MEMORY[0x29EDC9740](v11);
        }

        else
        {
          v22 = accessibilityLocalizedString(@"remove.control.text");
        }

        v19 = 1;
        objc_storeStrong(&location, 0);
      }

      else if (v18 == 2)
      {
        v16 = [v20[0] safeValueForKey:{@"_accessibilityTextElementText", v3}];
        if ([v16 length])
        {
          v8 = MEMORY[0x29EDBA0F8];
          v9 = accessibilityLocalizedString(@"insert.control.text.with.label");
          v22 = [v8 stringWithFormat:v16];
          MEMORY[0x29EDC9740](v9);
        }

        else
        {
          v22 = accessibilityLocalizedString(@"insert.control.text");
        }

        v19 = 1;
        objc_storeStrong(&v16, 0);
      }

      else if (v18 == 3)
      {
        v15 = [v20[0] safeValueForKey:{@"_accessibilityTextElementText", v3}];
        if ([v15 length])
        {
          v6 = MEMORY[0x29EDBA0F8];
          v7 = accessibilityLocalizedString(@"select.control.text.with.label");
          v22 = [v6 stringWithFormat:v15];
          MEMORY[0x29EDC9740](v7);
        }

        else
        {
          v22 = accessibilityLocalizedString(@"select.control.text");
        }

        v19 = 1;
        objc_storeStrong(&v15, 0);
      }

      else
      {
        v22 = 0;
        v19 = 1;
      }
    }

    else
    {
      v22 = 0;
      v19 = 1;
    }

    objc_storeStrong(v20, 0);
  }

  v4 = v22;

  return v4;
}

- (id)accessibilityHint
{
  location[2] = self;
  location[1] = a2;
  location[0] = [(UITableViewCellEditControlAccessibility *)self _accessibilityViewAncestorIsKindOf:objc_opt_class()];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [location[0] safeValueForKey:@"editingStyle"];
    v5 = [v4 integerValue];
    MEMORY[0x29EDC9740](v4);
    if (v5 == 1)
    {
      v7 = accessibilityLocalizedString(@"remove.control.hint");
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  objc_storeStrong(location, 0);
  v2 = v7;

  return v2;
}

- (BOOL)canBecomeFocused
{
  v8 = self;
  v7 = a2;
  v5 = 0;
  v3 = 0;
  if (([(UITableViewCellEditControlAccessibility *)self _accessibilityIsFKARunningForFocusItem]& 1) != 0)
  {
    v6 = [(UITableViewCellEditControlAccessibility *)v8 safeValueForKey:@"_currentImage"];
    v5 = 1;
    v3 = v6 == 0;
  }

  if (v5)
  {
    MEMORY[0x29EDC9740](v6);
  }

  if (v3)
  {
    return 0;
  }

  v4.receiver = v8;
  v4.super_class = UITableViewCellEditControlAccessibility;
  return [(UITableViewCellEditControlAccessibility *)&v4 canBecomeFocused];
}

- (id)_multiSelectNotSelectedImage
{
  v5[2] = self;
  v5[1] = a2;
  v4.receiver = self;
  v4.super_class = UITableViewCellEditControlAccessibility;
  v5[0] = [(UITableViewCellEditControlAccessibility *)&v4 _multiSelectNotSelectedImage];
  [v5[0] setAccessibilityIdentifier:@"circle"];
  v3 = MEMORY[0x29EDC9748](v5[0]);
  objc_storeStrong(v5, 0);

  return v3;
}

- (id)_multiSelectSelectedImage
{
  v5[2] = self;
  v5[1] = a2;
  v4.receiver = self;
  v4.super_class = UITableViewCellEditControlAccessibility;
  v5[0] = [(UITableViewCellEditControlAccessibility *)&v4 _multiSelectSelectedImage];
  [v5[0] setAccessibilityIdentifier:@"selected"];
  v3 = MEMORY[0x29EDC9748](v5[0]);
  objc_storeStrong(v5, 0);

  return v3;
}

@end