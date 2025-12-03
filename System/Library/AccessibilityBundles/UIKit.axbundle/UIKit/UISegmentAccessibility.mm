@interface UISegmentAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityHasNativeFocus;
- (BOOL)isAccessibilityElement;
- (_NSRange)accessibilityRowRange;
- (id)_axLabelFromInfoObject:(void *)object;
- (id)accessibilityHint;
- (id)accessibilityIdentifier;
- (id)accessibilityLabel;
- (id)accessibilityLanguage;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation UISegmentAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v6 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v3 = @"UISegment";
  v4 = "@";
  [location[0] validateClass:? hasInstanceVariable:? withType:?];
  [location[0] validateClass:@"UISegment" hasInstanceMethod:@"action" withFullSignature:{"@", 0}];
  objc_storeStrong(v6, obj);
}

- (id)accessibilityLanguage
{
  selfCopy = self;
  v11[1] = a2;
  v10.receiver = self;
  v10.super_class = UISegmentAccessibility;
  v11[0] = [(UISegmentAccessibility *)&v10 accessibilityLanguage];
  if (v11[0])
  {
    accessibilityLanguage2 = MEMORY[0x29EDC9748](v11[0]);
    v9 = 1;
  }

  else
  {
    location = [(UISegmentAccessibility *)selfCopy safeValueForKey:@"info"];
    accessibilityLanguage = [location accessibilityLanguage];
    v3 = v11[0];
    v11[0] = accessibilityLanguage;
    *&v4 = MEMORY[0x29EDC9740](v3).n128_u64[0];
    if (v11[0])
    {
      accessibilityLanguage2 = MEMORY[0x29EDC9748](v11[0]);
    }

    else
    {
      v7 = [(UISegmentAccessibility *)selfCopy safeValueForKey:@"superview", v4];
      accessibilityLanguage2 = [v7 accessibilityLanguage];
      MEMORY[0x29EDC9740](v7);
    }

    v9 = 1;
    objc_storeStrong(&location, 0);
  }

  objc_storeStrong(v11, 0);
  v5 = accessibilityLanguage2;

  return v5;
}

- (BOOL)isAccessibilityElement
{
  selfCopy = self;
  v6[1] = a2;
  v6[0] = [(UISegmentAccessibility *)self isAccessibilityUserDefinedElement];
  if (v6[0])
  {
    v8 = [v6[0] BOOLValue] & 1;
    v5 = 1;
  }

  else
  {
    location = [(UISegmentAccessibility *)selfCopy safeValueForKey:@"info"];
    v6[0] = [location isAccessibilityUserDefinedElement];
    *&v2 = MEMORY[0x29EDC9740](0).n128_u64[0];
    if (v6[0])
    {
      v8 = [v6[0] BOOLValue] & 1;
    }

    else
    {
      v8 = 1;
    }

    v5 = 1;
    objc_storeStrong(&location, 0);
  }

  objc_storeStrong(v6, 0);
  return v8 & 1;
}

- (id)_axLabelFromInfoObject:(void *)object
{
  objectCopy = object;
  location = 0;
  objc_storeStrong(&location, a2);
  if (objectCopy)
  {
    v34 = 0;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      text = [location text];
      _accessibilityAXAttributedLabel = [text _accessibilityAXAttributedLabel];
      MEMORY[0x29EDC9740](_accessibilityAXAttributedLabel);
      *&v2 = MEMORY[0x29EDC9740](text).n128_u64[0];
      if (_accessibilityAXAttributedLabel)
      {
        text2 = [location text];
        _accessibilityAXAttributedLabel2 = [text2 _accessibilityAXAttributedLabel];
        v4 = v34;
        v34 = _accessibilityAXAttributedLabel2;
        MEMORY[0x29EDC9740](v4);
        MEMORY[0x29EDC9740](text2);
      }

      else
      {
        attributedText = [location attributedText];
        _accessibilityAXAttributedLabel3 = [attributedText _accessibilityAXAttributedLabel];
        MEMORY[0x29EDC9740](_accessibilityAXAttributedLabel3);
        *&v5 = MEMORY[0x29EDC9740](attributedText).n128_u64[0];
        if (_accessibilityAXAttributedLabel3)
        {
          attributedText2 = [location attributedText];
          _accessibilityAXAttributedLabel4 = [attributedText2 _accessibilityAXAttributedLabel];
          v7 = v34;
          v34 = _accessibilityAXAttributedLabel4;
          MEMORY[0x29EDC9740](v7);
          MEMORY[0x29EDC9740](attributedText2);
        }

        else
        {
          _accessibilityAXAttributedLabel5 = [location _accessibilityAXAttributedLabel];
          v9 = v34;
          v34 = _accessibilityAXAttributedLabel5;
          MEMORY[0x29EDC9740](v9);
        }
      }
    }

    if (![v34 length])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        _accessibilityAXAttributedLabel6 = [location _accessibilityAXAttributedLabel];
        *&v10 = MEMORY[0x29EDC9740](_accessibilityAXAttributedLabel6).n128_u64[0];
        if (_accessibilityAXAttributedLabel6)
        {
          _accessibilityAXAttributedLabel7 = [location _accessibilityAXAttributedLabel];
          v12 = v34;
          v34 = _accessibilityAXAttributedLabel7;
          MEMORY[0x29EDC9740](v12);
        }

        else
        {
          objc_storeStrong(&v34, location);
        }
      }
    }

    if (![v34 length])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        _accessibilityAXAttributedLabel8 = [location _accessibilityAXAttributedLabel];
        *&v13 = MEMORY[0x29EDC9740](_accessibilityAXAttributedLabel8).n128_u64[0];
        _accessibilityAXAttributedLabel9 = [location _accessibilityAXAttributedLabel];
        v15 = v34;
        v34 = _accessibilityAXAttributedLabel9;
        MEMORY[0x29EDC9740](v15);
      }
    }

    if (![v34 length])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        accessibilityLabel = [location accessibilityLabel];
        if ([accessibilityLabel length])
        {
          objc_storeStrong(&v34, accessibilityLabel);
        }

        else
        {
          accessibilityIdentification = [location accessibilityIdentification];
          if (![accessibilityIdentification length])
          {
            accessibilityIdentifier = [location accessibilityIdentifier];
            v17 = accessibilityIdentification;
            accessibilityIdentification = accessibilityIdentifier;
            MEMORY[0x29EDC9740](v17);
          }

          if ([accessibilityIdentification length])
          {
            v18 = [objectCopy _accessibilityRetrieveImagePathLabel:accessibilityIdentification];
            v19 = v34;
            v34 = v18;
            MEMORY[0x29EDC9740](v19);
          }

          objc_storeStrong(&accessibilityIdentification, 0);
        }

        objc_storeStrong(&accessibilityLabel, 0);
      }
    }

    if (![v34 length])
    {
      _accessibilityAXAttributedLabel10 = [location _accessibilityAXAttributedLabel];
      v21 = v34;
      v34 = _accessibilityAXAttributedLabel10;
      MEMORY[0x29EDC9740](v21);
    }

    v38 = MEMORY[0x29EDC9748](v34);
    v35 = 1;
    objc_storeStrong(&v34, 0);
  }

  else
  {
    v38 = 0;
    v35 = 1;
  }

  objc_storeStrong(&location, 0);
  v22 = v38;

  return v22;
}

- (id)accessibilityLabel
{
  selfCopy = self;
  v9[1] = a2;
  v9[0] = [(UISegmentAccessibility *)self accessibilityUserDefinedLabel];
  if (v9[0])
  {
    v11 = MEMORY[0x29EDC9748](v9[0]);
    v8 = 1;
  }

  else
  {
    v6 = [(UISegmentAccessibility *)selfCopy safeValueForKey:@"_objectValue"];
    v9[0] = [(UISegmentAccessibility *)selfCopy _axLabelFromInfoObject:v6];
    MEMORY[0x29EDC9740](0);
    if (![v9[0] length])
    {
      v7 = [(UISegmentAccessibility *)selfCopy safeValueForKey:@"info"];
      v2 = [(UISegmentAccessibility *)selfCopy _axLabelFromInfoObject:v7];
      v3 = v9[0];
      v9[0] = v2;
      MEMORY[0x29EDC9740](v3);
      objc_storeStrong(&v7, 0);
    }

    v11 = MEMORY[0x29EDC9748](v9[0]);
    v8 = 1;
  }

  objc_storeStrong(v9, 0);
  v4 = v11;

  return v4;
}

- (id)accessibilityValue
{
  selfCopy = self;
  v14[1] = a2;
  v14[0] = [(UISegmentAccessibility *)self accessibilityUserDefinedValue];
  if (!v14[0])
  {
    v13.receiver = selfCopy;
    v13.super_class = UISegmentAccessibility;
    accessibilityValue = [(UISegmentAccessibility *)&v13 accessibilityValue];
    v3 = v14[0];
    v14[0] = accessibilityValue;
    MEMORY[0x29EDC9740](v3);
  }

  v10 = [(UISegmentAccessibility *)selfCopy safeValueForKey:@"_badgeView"];
  accessibilityLabel = [v10 accessibilityLabel];
  v11 = 0;
  if ([accessibilityLabel length] && (objc_msgSend(accessibilityLabel, "intValue") & 0x80000000) == 0)
  {
    v8 = MEMORY[0x29EDBA0F8];
    v9 = accessibilityLocalizedString(@"badge.count");
    v4 = [v8 localizedStringWithFormat:v9, objc_msgSend(accessibilityLabel, "integerValue")];
    v5 = v11;
    v11 = v4;
    MEMORY[0x29EDC9740](v5);
    MEMORY[0x29EDC9740](v9);
  }

  v7 = __UIAXStringForVariables();
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&accessibilityLabel, 0);
  objc_storeStrong(v14, 0);

  return v7;
}

- (_NSRange)accessibilityRowRange
{
  selfCopy = self;
  v7[1] = a2;
  v7[0] = [(UISegmentAccessibility *)self _accessibilitySegmentedControlParent];
  if (v7[0])
  {
    v6 = [v7[0] safeValueForKey:@"_segments"];
    v5 = [v6 indexOfObject:selfCopy];
    v2 = [v6 count];
    v16 = v5;
    v15 = v2;
    v17 = v5;
    v18 = v2;
    v9 = v5;
    v10 = v2;
    objc_storeStrong(&v6, 0);
  }

  else
  {
    v12 = 0x7FFFFFFFFFFFFFFFLL;
    v11 = 0;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    v14 = 0;
    v9 = 0x7FFFFFFFFFFFFFFFLL;
    v10 = 0;
  }

  objc_storeStrong(v7, 0);
  v3 = v9;
  v4 = v10;
  result.length = v4;
  result.location = v3;
  return result;
}

- (id)accessibilityIdentifier
{
  selfCopy = self;
  v13[1] = a2;
  v13[0] = [(UISegmentAccessibility *)self accessibilityUserDefinedIdentifier];
  if (v13[0])
  {
    accessibilityIdentifier2 = MEMORY[0x29EDC9748](v13[0]);
    v12 = 1;
  }

  else
  {
    location = [(UISegmentAccessibility *)selfCopy safeValueForKey:@"action"];
    accessibilityIdentifier = [location accessibilityIdentifier];
    v9 = [accessibilityIdentifier length];
    *&v2 = MEMORY[0x29EDC9740](accessibilityIdentifier).n128_u64[0];
    if (v9)
    {
      accessibilityIdentifier2 = [location accessibilityIdentifier];
      v12 = 1;
    }

    else
    {
      accessibilityLabel = [(UISegmentAccessibility *)selfCopy accessibilityLabel];
      v7 = [accessibilityLabel length];
      *&v3 = MEMORY[0x29EDC9740](accessibilityLabel).n128_u64[0];
      if (v7)
      {
        accessibilityIdentifier2 = 0;
      }

      else
      {
        v10.receiver = selfCopy;
        v10.super_class = UISegmentAccessibility;
        accessibilityIdentifier2 = [(UISegmentAccessibility *)&v10 accessibilityIdentifier];
      }

      v12 = 1;
    }

    objc_storeStrong(&location, 0);
  }

  objc_storeStrong(v13, 0);
  v4 = accessibilityIdentifier2;

  return v4;
}

- (id)accessibilityHint
{
  selfCopy = self;
  v7[1] = a2;
  v7[0] = [(UISegmentAccessibility *)self safeValueForKey:@"info"];
  location = [v7[0] _accessibilityAXAttributedHint];
  if (location)
  {
    accessibilityHint = MEMORY[0x29EDC9748](location);
  }

  else
  {
    v4.receiver = selfCopy;
    v4.super_class = UISegmentAccessibility;
    accessibilityHint = [(UISegmentAccessibility *)&v4 accessibilityHint];
  }

  v5 = 1;
  objc_storeStrong(&location, 0);
  objc_storeStrong(v7, 0);
  v2 = accessibilityHint;

  return v2;
}

- (unint64_t)accessibilityTraits
{
  selfCopy = self;
  v15[1] = a2;
  v15[0] = [(UISegmentAccessibility *)self safeValueForKey:@"info"];
  accessibilityUserDefinedTraits = [v15[0] accessibilityUserDefinedTraits];
  if (accessibilityUserDefinedTraits)
  {
    unsignedLongLongValue = [accessibilityUserDefinedTraits unsignedLongLongValue];
    v13 = 1;
  }

  else
  {
    accessibilityUserDefinedTraits = [(UISegmentAccessibility *)selfCopy accessibilityUserDefinedTraits];
    *&v2 = MEMORY[0x29EDC9740](0).n128_u64[0];
    if (accessibilityUserDefinedTraits)
    {
      unsignedLongLongValue = [accessibilityUserDefinedTraits unsignedLongLongValue];
      v13 = 1;
    }

    else
    {
      v12 = *MEMORY[0x29EDC7F70];
      _accessibilitySegmentedControlParent = [(UISegmentAccessibility *)selfCopy _accessibilitySegmentedControlParent];
      if (_accessibilitySegmentedControlParent)
      {
        selectedSegmentIndex = [_accessibilitySegmentedControlParent selectedSegmentIndex];
        location = [_accessibilitySegmentedControlParent safeValueForKey:@"segments"];
        v7 = 0;
        v6 = 0;
        if ((selectedSegmentIndex & 0x8000000000000000) == 0)
        {
          v6 = 0;
          if (selectedSegmentIndex < [location count])
          {
            v8 = [location objectAtIndex:selectedSegmentIndex];
            v7 = 1;
            v6 = selfCopy == v8;
          }
        }

        if (v7)
        {
          MEMORY[0x29EDC9740](v8);
        }

        if (v6)
        {
          v12 |= *MEMORY[0x29EDC7FC0];
        }

        else if (([_accessibilitySegmentedControlParent isEnabled] & 1) == 0)
        {
          v12 |= *MEMORY[0x29EDC7FA8];
        }

        v4 = [(UISegmentAccessibility *)selfCopy safeValueForKey:@"isEnabled"];
        bOOLValue = [v4 BOOLValue];
        MEMORY[0x29EDC9740](v4);
        if ((bOOLValue & 1) == 0)
        {
          v12 |= *MEMORY[0x29EDC7FA8];
        }

        unsignedLongLongValue = v12;
        v13 = 1;
        objc_storeStrong(&location, 0);
      }

      else
      {
        unsignedLongLongValue = v12;
        v13 = 1;
      }

      objc_storeStrong(&_accessibilitySegmentedControlParent, 0);
    }
  }

  objc_storeStrong(&accessibilityUserDefinedTraits, 0);
  objc_storeStrong(v15, 0);
  return unsignedLongLongValue;
}

- (BOOL)_accessibilityHasNativeFocus
{
  selfCopy = self;
  v10[1] = a2;
  v10[0] = [(UISegmentAccessibility *)self _accessibilitySegmentedControlParent];
  if (([v10[0] _accessibilityUIKitHasNativeFocus] & 1) == 0)
  {
    goto LABEL_11;
  }

  selectedSegmentIndex = [v10[0] selectedSegmentIndex];
  location = [v10[0] safeValueForKey:@"segments"];
  v6 = 0;
  v3 = 0;
  if ((selectedSegmentIndex & 0x8000000000000000) == 0)
  {
    v3 = 0;
    if (selectedSegmentIndex < [location count])
    {
      v7 = [location objectAtIndex:selectedSegmentIndex];
      v6 = 1;
      v3 = selfCopy == v7;
    }
  }

  if (v6)
  {
    MEMORY[0x29EDC9740](v7);
  }

  if (v3)
  {
    _accessibilityHasNativeFocus = 1;
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  objc_storeStrong(&location, 0);
  if (!v5)
  {
LABEL_11:
    v4.receiver = selfCopy;
    v4.super_class = UISegmentAccessibility;
    _accessibilityHasNativeFocus = [(UISegmentAccessibility *)&v4 _accessibilityHasNativeFocus];
    v5 = 1;
  }

  objc_storeStrong(v10, 0);
  return _accessibilityHasNativeFocus & 1;
}

@end