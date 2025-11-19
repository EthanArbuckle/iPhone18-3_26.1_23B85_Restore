@interface UISegmentAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityHasNativeFocus;
- (BOOL)isAccessibilityElement;
- (_NSRange)accessibilityRowRange;
- (id)_axLabelFromInfoObject:(void *)a1;
- (id)accessibilityHint;
- (id)accessibilityIdentifier;
- (id)accessibilityLabel;
- (id)accessibilityLanguage;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation UISegmentAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v6 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = @"UISegment";
  v4 = "@";
  [location[0] validateClass:? hasInstanceVariable:? withType:?];
  [location[0] validateClass:@"UISegment" hasInstanceMethod:@"action" withFullSignature:{"@", 0}];
  objc_storeStrong(v6, obj);
}

- (id)accessibilityLanguage
{
  v12 = self;
  v11[1] = a2;
  v10.receiver = self;
  v10.super_class = UISegmentAccessibility;
  v11[0] = [(UISegmentAccessibility *)&v10 accessibilityLanguage];
  if (v11[0])
  {
    v13 = MEMORY[0x29EDC9748](v11[0]);
    v9 = 1;
  }

  else
  {
    location = [(UISegmentAccessibility *)v12 safeValueForKey:@"info"];
    v2 = [location accessibilityLanguage];
    v3 = v11[0];
    v11[0] = v2;
    *&v4 = MEMORY[0x29EDC9740](v3).n128_u64[0];
    if (v11[0])
    {
      v13 = MEMORY[0x29EDC9748](v11[0]);
    }

    else
    {
      v7 = [(UISegmentAccessibility *)v12 safeValueForKey:@"superview", v4];
      v13 = [v7 accessibilityLanguage];
      MEMORY[0x29EDC9740](v7);
    }

    v9 = 1;
    objc_storeStrong(&location, 0);
  }

  objc_storeStrong(v11, 0);
  v5 = v13;

  return v5;
}

- (BOOL)isAccessibilityElement
{
  v7 = self;
  v6[1] = a2;
  v6[0] = [(UISegmentAccessibility *)self isAccessibilityUserDefinedElement];
  if (v6[0])
  {
    v8 = [v6[0] BOOLValue] & 1;
    v5 = 1;
  }

  else
  {
    location = [(UISegmentAccessibility *)v7 safeValueForKey:@"info"];
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

- (id)_axLabelFromInfoObject:(void *)a1
{
  v37 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  if (v37)
  {
    v34 = 0;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = [location text];
      v31 = [v30 _accessibilityAXAttributedLabel];
      MEMORY[0x29EDC9740](v31);
      *&v2 = MEMORY[0x29EDC9740](v30).n128_u64[0];
      if (v31)
      {
        v29 = [location text];
        v3 = [v29 _accessibilityAXAttributedLabel];
        v4 = v34;
        v34 = v3;
        MEMORY[0x29EDC9740](v4);
        MEMORY[0x29EDC9740](v29);
      }

      else
      {
        v27 = [location attributedText];
        v28 = [v27 _accessibilityAXAttributedLabel];
        MEMORY[0x29EDC9740](v28);
        *&v5 = MEMORY[0x29EDC9740](v27).n128_u64[0];
        if (v28)
        {
          v26 = [location attributedText];
          v6 = [v26 _accessibilityAXAttributedLabel];
          v7 = v34;
          v34 = v6;
          MEMORY[0x29EDC9740](v7);
          MEMORY[0x29EDC9740](v26);
        }

        else
        {
          v8 = [location _accessibilityAXAttributedLabel];
          v9 = v34;
          v34 = v8;
          MEMORY[0x29EDC9740](v9);
        }
      }
    }

    if (![v34 length])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v25 = [location _accessibilityAXAttributedLabel];
        *&v10 = MEMORY[0x29EDC9740](v25).n128_u64[0];
        if (v25)
        {
          v11 = [location _accessibilityAXAttributedLabel];
          v12 = v34;
          v34 = v11;
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
        v24 = [location _accessibilityAXAttributedLabel];
        *&v13 = MEMORY[0x29EDC9740](v24).n128_u64[0];
        v14 = [location _accessibilityAXAttributedLabel];
        v15 = v34;
        v34 = v14;
        MEMORY[0x29EDC9740](v15);
      }
    }

    if (![v34 length])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v33 = [location accessibilityLabel];
        if ([v33 length])
        {
          objc_storeStrong(&v34, v33);
        }

        else
        {
          v32 = [location accessibilityIdentification];
          if (![v32 length])
          {
            v16 = [location accessibilityIdentifier];
            v17 = v32;
            v32 = v16;
            MEMORY[0x29EDC9740](v17);
          }

          if ([v32 length])
          {
            v18 = [v37 _accessibilityRetrieveImagePathLabel:v32];
            v19 = v34;
            v34 = v18;
            MEMORY[0x29EDC9740](v19);
          }

          objc_storeStrong(&v32, 0);
        }

        objc_storeStrong(&v33, 0);
      }
    }

    if (![v34 length])
    {
      v20 = [location _accessibilityAXAttributedLabel];
      v21 = v34;
      v34 = v20;
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
  v10 = self;
  v9[1] = a2;
  v9[0] = [(UISegmentAccessibility *)self accessibilityUserDefinedLabel];
  if (v9[0])
  {
    v11 = MEMORY[0x29EDC9748](v9[0]);
    v8 = 1;
  }

  else
  {
    v6 = [(UISegmentAccessibility *)v10 safeValueForKey:@"_objectValue"];
    v9[0] = [(UISegmentAccessibility *)v10 _axLabelFromInfoObject:v6];
    MEMORY[0x29EDC9740](0);
    if (![v9[0] length])
    {
      v7 = [(UISegmentAccessibility *)v10 safeValueForKey:@"info"];
      v2 = [(UISegmentAccessibility *)v10 _axLabelFromInfoObject:v7];
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
  v15 = self;
  v14[1] = a2;
  v14[0] = [(UISegmentAccessibility *)self accessibilityUserDefinedValue];
  if (!v14[0])
  {
    v13.receiver = v15;
    v13.super_class = UISegmentAccessibility;
    v2 = [(UISegmentAccessibility *)&v13 accessibilityValue];
    v3 = v14[0];
    v14[0] = v2;
    MEMORY[0x29EDC9740](v3);
  }

  v10 = [(UISegmentAccessibility *)v15 safeValueForKey:@"_badgeView"];
  v12 = [v10 accessibilityLabel];
  v11 = 0;
  if ([v12 length] && (objc_msgSend(v12, "intValue") & 0x80000000) == 0)
  {
    v8 = MEMORY[0x29EDBA0F8];
    v9 = accessibilityLocalizedString(@"badge.count");
    v4 = [v8 localizedStringWithFormat:v9, objc_msgSend(v12, "integerValue")];
    v5 = v11;
    v11 = v4;
    MEMORY[0x29EDC9740](v5);
    MEMORY[0x29EDC9740](v9);
  }

  v7 = __UIAXStringForVariables();
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(v14, 0);

  return v7;
}

- (_NSRange)accessibilityRowRange
{
  v8 = self;
  v7[1] = a2;
  v7[0] = [(UISegmentAccessibility *)self _accessibilitySegmentedControlParent];
  if (v7[0])
  {
    v6 = [v7[0] safeValueForKey:@"_segments"];
    v5 = [v6 indexOfObject:v8];
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
  v14 = self;
  v13[1] = a2;
  v13[0] = [(UISegmentAccessibility *)self accessibilityUserDefinedIdentifier];
  if (v13[0])
  {
    v15 = MEMORY[0x29EDC9748](v13[0]);
    v12 = 1;
  }

  else
  {
    location = [(UISegmentAccessibility *)v14 safeValueForKey:@"action"];
    v8 = [location accessibilityIdentifier];
    v9 = [v8 length];
    *&v2 = MEMORY[0x29EDC9740](v8).n128_u64[0];
    if (v9)
    {
      v15 = [location accessibilityIdentifier];
      v12 = 1;
    }

    else
    {
      v6 = [(UISegmentAccessibility *)v14 accessibilityLabel];
      v7 = [v6 length];
      *&v3 = MEMORY[0x29EDC9740](v6).n128_u64[0];
      if (v7)
      {
        v15 = 0;
      }

      else
      {
        v10.receiver = v14;
        v10.super_class = UISegmentAccessibility;
        v15 = [(UISegmentAccessibility *)&v10 accessibilityIdentifier];
      }

      v12 = 1;
    }

    objc_storeStrong(&location, 0);
  }

  objc_storeStrong(v13, 0);
  v4 = v15;

  return v4;
}

- (id)accessibilityHint
{
  v8 = self;
  v7[1] = a2;
  v7[0] = [(UISegmentAccessibility *)self safeValueForKey:@"info"];
  location = [v7[0] _accessibilityAXAttributedHint];
  if (location)
  {
    v9 = MEMORY[0x29EDC9748](location);
  }

  else
  {
    v4.receiver = v8;
    v4.super_class = UISegmentAccessibility;
    v9 = [(UISegmentAccessibility *)&v4 accessibilityHint];
  }

  v5 = 1;
  objc_storeStrong(&location, 0);
  objc_storeStrong(v7, 0);
  v2 = v9;

  return v2;
}

- (unint64_t)accessibilityTraits
{
  v16 = self;
  v15[1] = a2;
  v15[0] = [(UISegmentAccessibility *)self safeValueForKey:@"info"];
  v14 = [v15[0] accessibilityUserDefinedTraits];
  if (v14)
  {
    v17 = [v14 unsignedLongLongValue];
    v13 = 1;
  }

  else
  {
    v14 = [(UISegmentAccessibility *)v16 accessibilityUserDefinedTraits];
    *&v2 = MEMORY[0x29EDC9740](0).n128_u64[0];
    if (v14)
    {
      v17 = [v14 unsignedLongLongValue];
      v13 = 1;
    }

    else
    {
      v12 = *MEMORY[0x29EDC7F70];
      v11 = [(UISegmentAccessibility *)v16 _accessibilitySegmentedControlParent];
      if (v11)
      {
        v10 = [v11 selectedSegmentIndex];
        location = [v11 safeValueForKey:@"segments"];
        v7 = 0;
        v6 = 0;
        if ((v10 & 0x8000000000000000) == 0)
        {
          v6 = 0;
          if (v10 < [location count])
          {
            v8 = [location objectAtIndex:v10];
            v7 = 1;
            v6 = v16 == v8;
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

        else if (([v11 isEnabled] & 1) == 0)
        {
          v12 |= *MEMORY[0x29EDC7FA8];
        }

        v4 = [(UISegmentAccessibility *)v16 safeValueForKey:@"isEnabled"];
        v5 = [v4 BOOLValue];
        MEMORY[0x29EDC9740](v4);
        if ((v5 & 1) == 0)
        {
          v12 |= *MEMORY[0x29EDC7FA8];
        }

        v17 = v12;
        v13 = 1;
        objc_storeStrong(&location, 0);
      }

      else
      {
        v17 = v12;
        v13 = 1;
      }

      objc_storeStrong(&v11, 0);
    }
  }

  objc_storeStrong(&v14, 0);
  objc_storeStrong(v15, 0);
  return v17;
}

- (BOOL)_accessibilityHasNativeFocus
{
  v11 = self;
  v10[1] = a2;
  v10[0] = [(UISegmentAccessibility *)self _accessibilitySegmentedControlParent];
  if (([v10[0] _accessibilityUIKitHasNativeFocus] & 1) == 0)
  {
    goto LABEL_11;
  }

  v9 = [v10[0] selectedSegmentIndex];
  location = [v10[0] safeValueForKey:@"segments"];
  v6 = 0;
  v3 = 0;
  if ((v9 & 0x8000000000000000) == 0)
  {
    v3 = 0;
    if (v9 < [location count])
    {
      v7 = [location objectAtIndex:v9];
      v6 = 1;
      v3 = v11 == v7;
    }
  }

  if (v6)
  {
    MEMORY[0x29EDC9740](v7);
  }

  if (v3)
  {
    v12 = 1;
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
    v4.receiver = v11;
    v4.super_class = UISegmentAccessibility;
    v12 = [(UISegmentAccessibility *)&v4 _accessibilityHasNativeFocus];
    v5 = 1;
  }

  objc_storeStrong(v10, 0);
  return v12 & 1;
}

@end