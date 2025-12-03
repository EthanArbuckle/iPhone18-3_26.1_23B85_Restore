@interface UITableViewCellEditControlAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
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

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v6 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
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
  selfCopy = self;
  location[1] = a2;
  isAccessibilityUserDefinedElement = [(UITableViewCellEditControlAccessibility *)self isAccessibilityUserDefinedElement];
  *&v2 = MEMORY[0x29EDC9740](isAccessibilityUserDefinedElement).n128_u64[0];
  if (isAccessibilityUserDefinedElement)
  {
    isAccessibilityUserDefinedElement2 = [(UITableViewCellEditControlAccessibility *)selfCopy isAccessibilityUserDefinedElement];
    v13 = [isAccessibilityUserDefinedElement2 BOOLValue] & 1;
    MEMORY[0x29EDC9740](isAccessibilityUserDefinedElement2);
  }

  else
  {
    location[0] = [(UITableViewCellEditControlAccessibility *)selfCopy _accessibilityViewAncestorIsKindOf:objc_opt_class()];
    v6 = [location[0] safeValueForKey:@"editingStyle"];
    intValue = [v6 intValue];
    MEMORY[0x29EDC9740](v6);
    v10 = AXRequestingClient();
    if (v10 == 3 || v10 == 4)
    {
      v13 = (intValue - 1) > 2;
    }

    else
    {
      v5 = 1;
      if (intValue != 3)
      {
        v4 = 0;
        if (intValue == 2)
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
  selfCopy = self;
  location[1] = a2;
  location[0] = [(UITableViewCellEditControlAccessibility *)self _accessibilityViewAncestorIsKindOf:objc_opt_class()];
  v8 = [location[0] safeValueForKey:@"editingStyle"];
  intValue = [v8 intValue];
  *&v2 = MEMORY[0x29EDC9740](v8).n128_u64[0];
  v14 = intValue;
  if (intValue == 3)
  {
    v6 = [(UITableViewCellEditControlAccessibility *)selfCopy safeValueForKey:@"isHighlighted", v2];
    v12 = 0;
    bOOLValue = 1;
    if (([v6 BOOLValue] & 1) == 0)
    {
      v13 = [(UITableViewCellEditControlAccessibility *)selfCopy safeValueForKey:@"isSelected"];
      v12 = 1;
      bOOLValue = [v13 BOOLValue];
    }

    if (bOOLValue)
    {
      v3 = @"1";
    }

    else
    {
      v3 = @"0";
    }

    accessibilityValue = MEMORY[0x29EDC9748](v3);
    if (v12)
    {
      MEMORY[0x29EDC9740](v13);
    }

    MEMORY[0x29EDC9740](v6);
    v11 = 1;
  }

  else
  {
    v10.receiver = selfCopy;
    v10.super_class = UITableViewCellEditControlAccessibility;
    accessibilityValue = [(UITableViewCellEditControlAccessibility *)&v10 accessibilityValue];
    v11 = 1;
  }

  objc_storeStrong(location, 0);
  v4 = accessibilityValue;

  return v4;
}

- (unint64_t)accessibilityTraits
{
  selfCopy = self;
  v13 = a2;
  v11.receiver = self;
  v11.super_class = UITableViewCellEditControlAccessibility;
  v12 = [(UITableViewCellEditControlAccessibility *)&v11 accessibilityTraits]| *MEMORY[0x29EDC7F70];
  location = [(UITableViewCellEditControlAccessibility *)selfCopy _accessibilityViewAncestorIsKindOf:objc_opt_class()];
  v6 = [location safeValueForKey:@"editingStyle"];
  intValue = [v6 intValue];
  *&v2 = MEMORY[0x29EDC9740](v6).n128_u64[0];
  if (intValue)
  {
    if (intValue == 1)
    {
      if (!_UIAccessibilityClientServedInternalControls())
      {
        v12 |= *MEMORY[0x29EDC7578];
      }
    }

    else if (intValue == 3)
    {
      v12 |= *MEMORY[0x29EDC7FE8];
    }
  }

  v8 = 0;
  if (intValue == 3 || (bOOLValue = 0, !intValue))
  {
    v9 = [(UITableViewCellEditControlAccessibility *)selfCopy safeValueForKey:@"isEnabled", v2];
    v8 = 1;
    bOOLValue = [v9 BOOLValue];
  }

  if (v8)
  {
    MEMORY[0x29EDC9740](v9);
  }

  if (bOOLValue)
  {
    v12 &= ~*MEMORY[0x29EDC7FA8];
  }

  v4 = v12;
  objc_storeStrong(&location, 0);
  return v4;
}

- (id)accessibilityLabel
{
  selfCopy = self;
  v20[1] = a2;
  accessibilityUserDefinedLabel = [(UITableViewCellEditControlAccessibility *)self accessibilityUserDefinedLabel];
  *&v2 = MEMORY[0x29EDC9740](accessibilityUserDefinedLabel).n128_u64[0];
  if (accessibilityUserDefinedLabel)
  {
    accessibilityUserDefinedLabel2 = [(UITableViewCellEditControlAccessibility *)selfCopy accessibilityUserDefinedLabel];
  }

  else
  {
    v20[0] = [(UITableViewCellEditControlAccessibility *)selfCopy _accessibilityViewAncestorIsKindOf:objc_opt_class()];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v20[0] safeValueForKey:@"editingStyle"];
      integerValue = [v12 integerValue];
      *&v3 = MEMORY[0x29EDC9740](v12).n128_u64[0];
      v18 = integerValue;
      if (integerValue == 1)
      {
        location = [v20[0] safeValueForKey:{@"_accessibilityTextElementText", v3}];
        if ([location length])
        {
          v10 = MEMORY[0x29EDBA0F8];
          v11 = accessibilityLocalizedString(@"remove.control.text.with.label");
          accessibilityUserDefinedLabel2 = [v10 stringWithFormat:location];
          MEMORY[0x29EDC9740](v11);
        }

        else
        {
          accessibilityUserDefinedLabel2 = accessibilityLocalizedString(@"remove.control.text");
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
          accessibilityUserDefinedLabel2 = [v8 stringWithFormat:v16];
          MEMORY[0x29EDC9740](v9);
        }

        else
        {
          accessibilityUserDefinedLabel2 = accessibilityLocalizedString(@"insert.control.text");
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
          accessibilityUserDefinedLabel2 = [v6 stringWithFormat:v15];
          MEMORY[0x29EDC9740](v7);
        }

        else
        {
          accessibilityUserDefinedLabel2 = accessibilityLocalizedString(@"select.control.text");
        }

        v19 = 1;
        objc_storeStrong(&v15, 0);
      }

      else
      {
        accessibilityUserDefinedLabel2 = 0;
        v19 = 1;
      }
    }

    else
    {
      accessibilityUserDefinedLabel2 = 0;
      v19 = 1;
    }

    objc_storeStrong(v20, 0);
  }

  v4 = accessibilityUserDefinedLabel2;

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
    integerValue = [v4 integerValue];
    MEMORY[0x29EDC9740](v4);
    if (integerValue == 1)
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
  selfCopy = self;
  v7 = a2;
  v5 = 0;
  v3 = 0;
  if (([(UITableViewCellEditControlAccessibility *)self _accessibilityIsFKARunningForFocusItem]& 1) != 0)
  {
    v6 = [(UITableViewCellEditControlAccessibility *)selfCopy safeValueForKey:@"_currentImage"];
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

  v4.receiver = selfCopy;
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