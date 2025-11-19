@interface UIBarButtonItemAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)isAccessibilityElement;
- (UIBarButtonItemAccessibility)initWithImage:(id)a3 landscapeImagePhone:(id)a4 style:(int64_t)a5 target:(id)a6 action:(SEL)a7;
- (UIBarButtonItemAccessibility)initWithImage:(id)a3 style:(int64_t)a4 target:(id)a5 action:(SEL)a6;
- (id)_accessibilityIdentifierForImage:(uint64_t)a1;
- (id)_axBarButtonImagePath;
- (id)accessibilityLabel;
- (id)createViewForNavigationItem:(id)a3;
- (id)createViewForToolbar:(id)a3;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityAddIdForView:(void *)a1;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_setAXBarButtonImagePath:(uint64_t)a1;
- (void)_setAccessibilityHintBlock:(id)a3;
- (void)_setAccessibilityIsNotFirstElement:(BOOL)a3;
- (void)_setAccessibilityLabelBlock:(id)a3;
- (void)_setAccessibilityValueBlock:(id)a3;
- (void)_updateAccessibilityLabelForImage:(void *)a1;
- (void)dealloc;
- (void)setAccessibilityAttributedHint:(id)a3;
- (void)setAccessibilityAttributedLabel:(id)a3;
- (void)setAccessibilityAttributedValue:(id)a3;
- (void)setAccessibilityHint:(id)a3;
- (void)setAccessibilityIdentifier:(id)a3;
- (void)setAccessibilityLabel:(id)a3;
- (void)setAccessibilityTraits:(unint64_t)a3;
- (void)setAccessibilityUserInputLabels:(id)a3;
- (void)setAccessibilityValue:(id)a3;
- (void)setCustomView:(id)a3;
- (void)setIsAccessibilityElement:(BOOL)a3;
- (void)setTitle:(id)a3;
- (void)setView:(id)a3;
@end

@implementation UIBarButtonItemAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v6 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = @"UIBarButtonItem";
  v4 = "@";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v3 hasInstanceMethod:@"customView" withFullSignature:{v4, 0}];
  objc_storeStrong(v6, obj);
}

- (void)_accessibilityAddIdForView:(void *)a1
{
  v48 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  if (v48)
  {
    if (location)
    {
      v45 = [v48 accessibilityIdentification];
      if ([v45 length])
      {
        [location accessibilitySetIdentification:v45];
      }

      else
      {
        v40 = [v48 safeValueForKey:@"systemItem"];
        v41 = [v40 intValue];
        v2 = MEMORY[0x29EDC9740](v40).n128_u64[0];
        v44 = v41;
        if (!v41)
        {
          v39 = [v48 safeValueForKey:{@"tag", *&v2}];
          v44 = [v39 intValue];
          v2 = MEMORY[0x29EDC9740](v39).n128_u64[0];
        }

        if (v44)
        {
          v37 = location;
          v38 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%d", *&v2, v44];
          [v37 accessibilitySetIdentification:?];
          MEMORY[0x29EDC9740](v38);
        }
      }

      v43 = [v48 _accessibilityGetBlockForAttribute:1];
      if (v43)
      {
        [location _setAccessibilityLabelBlock:v43];
      }

      else
      {
        v42 = [v48 _accessibilityAXAttributedLabel];
        if ([v42 length])
        {
          [location setAccessibilityLabel:v42];
        }

        objc_storeStrong(&v42, 0);
      }

      v3 = [v48 _accessibilityGetBlockForAttribute:2];
      v4 = v43;
      v43 = v3;
      *&v5 = MEMORY[0x29EDC9740](v4).n128_u64[0];
      if (v43)
      {
        [location _setAccessibilityHintBlock:{v43, v5}];
      }

      else
      {
        v36 = [v48 _accessibilityAXAttributedHint];
        *&v6 = MEMORY[0x29EDC9740](v36).n128_u64[0];
        if (v36)
        {
          v34 = location;
          v35 = [v48 _accessibilityAXAttributedHint];
          [v34 setAccessibilityHint:?];
          MEMORY[0x29EDC9740](v35);
        }
      }

      v33 = [v48 accessibilityIdentifier];
      v7 = MEMORY[0x29EDC9740](v33).n128_u64[0];
      if (v33)
      {
        v31 = location;
        v32 = [v48 accessibilityIdentifier];
        [v31 setAccessibilityIdentifier:?];
        v7 = MEMORY[0x29EDC9740](v32).n128_u64[0];
      }

      v30 = [v48 accessibilityUserInputLabels];
      v8 = MEMORY[0x29EDC9740](v30).n128_u64[0];
      if (v30)
      {
        v28 = location;
        v29 = [v48 accessibilityUserInputLabels];
        [v28 setAccessibilityUserInputLabels:?];
        v8 = MEMORY[0x29EDC9740](v29).n128_u64[0];
      }

      v9 = [v48 _accessibilityGetBlockForAttribute:{3, *&v8}];
      v10 = v43;
      v43 = v9;
      *&v11 = MEMORY[0x29EDC9740](v10).n128_u64[0];
      if (v43)
      {
        [location _setAccessibilityValueBlock:{v43, v11}];
      }

      else
      {
        v27 = [v48 _accessibilityAXAttributedValue];
        *&v12 = MEMORY[0x29EDC9740](v27).n128_u64[0];
        if (v27)
        {
          v25 = location;
          v26 = [v48 _accessibilityAXAttributedValue];
          [v25 setAccessibilityValue:?];
          MEMORY[0x29EDC9740](v26);
        }
      }

      v24 = [v48 accessibilityUserDefinedTraits];
      v13 = MEMORY[0x29EDC9740](v24).n128_u64[0];
      if (v24)
      {
        v22 = location;
        v23 = [v48 accessibilityUserDefinedTraits];
        [v22 setAccessibilityTraits:{objc_msgSend(v23, "unsignedLongLongValue")}];
        v13 = MEMORY[0x29EDC9740](v23).n128_u64[0];
      }

      v21 = [v48 isAccessibilityUserDefinedElement];
      v14 = MEMORY[0x29EDC9740](v21).n128_u64[0];
      if (v21)
      {
        v19 = location;
        v20 = [v48 isAccessibilityUserDefinedElement];
        [v19 setIsAccessibilityElement:{objc_msgSend(v20, "BOOLValue")}];
        v14 = MEMORY[0x29EDC9740](v20).n128_u64[0];
      }

      v18 = [v48 accessibilityUserDefinedNotFirstElement];
      *&v15 = MEMORY[0x29EDC9740](v18).n128_u64[0];
      if (v18)
      {
        v16 = location;
        v17 = [v48 accessibilityUserDefinedNotFirstElement];
        [v16 _setAccessibilityIsNotFirstElement:{objc_msgSend(v17, "BOOLValue")}];
        MEMORY[0x29EDC9740](v17);
      }

      objc_storeStrong(&v43, 0);
      objc_storeStrong(&v45, 0);
      v46 = 0;
    }

    else
    {
      v46 = 1;
    }
  }

  else
  {
    v46 = 1;
  }

  objc_storeStrong(&location, 0);
}

- (id)_accessibilityIdentifierForImage:(uint64_t)a1
{
  v15 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  if (v15)
  {
    if (location)
    {
      v12 = MEMORY[0x29EDC9748](&unk_2A238EA88);
      v11 = MEMORY[0x29EDC9748](&unk_2A238EAA0);
      for (i = 0; ; ++i)
      {
        v6 = i;
        if (v6 >= [v12 count])
        {
          break;
        }

        v4 = MEMORY[0x29EDC7AC8];
        v5 = [v12 objectAtIndexedSubscript:i];
        image = [v4 kitImageNamed:?];
        MEMORY[0x29EDC9740](v5);
        v8 = UIImagePNGRepresentation(location);
        v7 = UIImagePNGRepresentation(image);
        if ([v8 isEqual:v7])
        {
          v16 = [v11 objectAtIndexedSubscript:i];
          v13 = 1;
        }

        else
        {
          v13 = 0;
        }

        objc_storeStrong(&v7, 0);
        objc_storeStrong(&v8, 0);
        objc_storeStrong(&image, 0);
        if (v13)
        {
          goto LABEL_13;
        }
      }

      v16 = 0;
      v13 = 1;
LABEL_13:
      objc_storeStrong(&v11, 0);
      objc_storeStrong(&v12, 0);
    }

    else
    {
      v16 = 0;
      v13 = 1;
    }
  }

  else
  {
    v16 = 0;
    v13 = 1;
  }

  objc_storeStrong(&location, 0);
  v2 = v16;

  return v2;
}

- (id)accessibilityLabel
{
  v24 = self;
  v23[1] = a2;
  v22.receiver = self;
  v22.super_class = UIBarButtonItemAccessibility;
  v23[0] = [(UIBarButtonItemAccessibility *)&v22 accessibilityLabel];
  v20 = 0;
  objc_opt_class();
  v13 = [(UIBarButtonItemAccessibility *)v24 safeValueForKey:@"image"];
  v19 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v13);
  v18 = MEMORY[0x29EDC9748](v19);
  objc_storeStrong(&v19, 0);
  v21 = v18;
  if (!v23[0])
  {
    v17 = [v21 accessibilityIdentifier];
    if (!v17)
    {
      v17 = [(UIBarButtonItemAccessibility *)v24 _accessibilityIdentifierForImage:v21];
      MEMORY[0x29EDC9740](0);
    }

    v16 = UIAXLocalizedStringForKnownAXIdentifier();
    if ([v16 length])
    {
      objc_storeStrong(v23, v16);
    }

    else
    {
      v2 = [v21 accessibilityLabel];
      v3 = v23[0];
      v23[0] = v2;
      MEMORY[0x29EDC9740](v3);
    }

    objc_storeStrong(&v16, 0);
    objc_storeStrong(&v17, 0);
  }

  if (!v23[0])
  {
    v4 = [(UIBarButtonItemAccessibility *)v24 _axBarButtonImagePath];
    v5 = v23[0];
    v23[0] = v4;
    MEMORY[0x29EDC9740](v5);
  }

  v14 = 0;
  v12 = 0;
  if (![v23[0] length])
  {
    v15 = [v21 accessibilityLabel];
    v14 = 1;
    v12 = [v15 isEqualToString:@"sidebar.leading"];
  }

  if (v14)
  {
    MEMORY[0x29EDC9740](v15);
  }

  if (v12)
  {
    v6 = accessibilityUIKitLocalizedString();
    v7 = v23[0];
    v23[0] = v6;
    MEMORY[0x29EDC9740](v7);
  }

  if (!v23[0] && ([(UIBarButtonItemAccessibility *)v24 safeBoolForKey:@"isSystemItem"]& 1) != 0)
  {
    v8 = [MEMORY[0x29EDC7DA0] _accessibilityTitleForSystemTag:{-[UIBarButtonItemAccessibility safeIntegerForKey:](v24, "safeIntegerForKey:", @"systemItem"}];
    v9 = v23[0];
    v23[0] = v8;
    MEMORY[0x29EDC9740](v9);
  }

  v11 = MEMORY[0x29EDC9748](v23[0]);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(v23, 0);

  return v11;
}

- (id)_axBarButtonImagePath
{
  if (a1)
  {
    v2 = objc_getAssociatedObject(a1, &__UIBarButtonItemAccessibility___axBarButtonImagePath);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setTitle:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5.receiver = v7;
  v5.super_class = UIBarButtonItemAccessibility;
  [(UIBarButtonItemAccessibility *)&v5 setTitle:location[0]];
  v3 = v7;
  v4 = [(UIBarButtonItemAccessibility *)v7 safeValueForKey:@"view"];
  [(UIBarButtonItemAccessibility *)v3 _accessibilityAddIdForView:v4];
  MEMORY[0x29EDC9740](v4);
  objc_storeStrong(location, 0);
}

- (void)setView:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3.receiver = v5;
  v3.super_class = UIBarButtonItemAccessibility;
  [(UIBarButtonItemAccessibility *)&v3 setView:location[0]];
  [(UIBarButtonItemAccessibility *)v5 _accessibilityAddIdForView:?];
  objc_storeStrong(location, 0);
}

- (void)setCustomView:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3.receiver = v5;
  v3.super_class = UIBarButtonItemAccessibility;
  [(UIBarButtonItemAccessibility *)&v3 setCustomView:location[0]];
  [(UIBarButtonItemAccessibility *)v5 _accessibilityAddIdForView:?];
  objc_storeStrong(location, 0);
}

- (void)_setAccessibilityLabelBlock:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6.receiver = v8;
  v6.super_class = UIBarButtonItemAccessibility;
  [(UIBarButtonItemAccessibility *)&v6 _setAccessibilityLabelBlock:location[0]];
  v5 = [(UIBarButtonItemAccessibility *)v8 safeUIViewForKey:@"_view"];
  [v5 _setAccessibilityLabelBlock:location[0]];
  *&v3 = MEMORY[0x29EDC9740](v5).n128_u64[0];
  v4 = [(UIBarButtonItemAccessibility *)v8 safeValueForKey:@"_updateView", v3];
  objc_storeStrong(location, 0);
}

- (void)_setAccessibilityHintBlock:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6.receiver = v8;
  v6.super_class = UIBarButtonItemAccessibility;
  [(UIBarButtonItemAccessibility *)&v6 _setAccessibilityHintBlock:location[0]];
  v5 = [(UIBarButtonItemAccessibility *)v8 safeUIViewForKey:@"_view"];
  [v5 _setAccessibilityHintBlock:location[0]];
  *&v3 = MEMORY[0x29EDC9740](v5).n128_u64[0];
  v4 = [(UIBarButtonItemAccessibility *)v8 safeValueForKey:@"_updateView", v3];
  objc_storeStrong(location, 0);
}

- (void)_setAccessibilityValueBlock:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6.receiver = v8;
  v6.super_class = UIBarButtonItemAccessibility;
  [(UIBarButtonItemAccessibility *)&v6 _setAccessibilityValueBlock:location[0]];
  v5 = [(UIBarButtonItemAccessibility *)v8 safeUIViewForKey:@"_view"];
  [v5 _setAccessibilityValueBlock:location[0]];
  *&v3 = MEMORY[0x29EDC9740](v5).n128_u64[0];
  v4 = [(UIBarButtonItemAccessibility *)v8 safeValueForKey:@"_updateView", v3];
  objc_storeStrong(location, 0);
}

- (void)setAccessibilityLabel:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5.receiver = v7;
  v5.super_class = UIBarButtonItemAccessibility;
  [(UIBarButtonItemAccessibility *)&v5 setAccessibilityLabel:location[0]];
  v4 = [(UIBarButtonItemAccessibility *)v7 safeValueForKey:@"_view"];
  [v4 setAccessibilityLabel:location[0]];
  v3 = [(UIBarButtonItemAccessibility *)v7 safeValueForKey:@"_updateView"];
  objc_storeStrong(&v4, 0);
  objc_storeStrong(location, 0);
}

- (void)setAccessibilityAttributedLabel:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5.receiver = v7;
  v5.super_class = UIBarButtonItemAccessibility;
  [(UIBarButtonItemAccessibility *)&v5 setAccessibilityAttributedLabel:location[0]];
  v4 = [(UIBarButtonItemAccessibility *)v7 safeValueForKey:@"_view"];
  [v4 setAccessibilityAttributedLabel:location[0]];
  v3 = [(UIBarButtonItemAccessibility *)v7 safeValueForKey:@"_updateView"];
  objc_storeStrong(&v4, 0);
  objc_storeStrong(location, 0);
}

- (void)setAccessibilityUserInputLabels:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5.receiver = v7;
  v5.super_class = UIBarButtonItemAccessibility;
  [(UIBarButtonItemAccessibility *)&v5 setAccessibilityUserInputLabels:location[0]];
  v4 = [(UIBarButtonItemAccessibility *)v7 safeValueForKey:@"_view"];
  [v4 setAccessibilityUserInputLabels:location[0]];
  v3 = [(UIBarButtonItemAccessibility *)v7 safeValueForKey:@"_updateView"];
  objc_storeStrong(&v4, 0);
  objc_storeStrong(location, 0);
}

- (void)setAccessibilityIdentifier:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5.receiver = v7;
  v5.super_class = UIBarButtonItemAccessibility;
  [(UIBarButtonItemAccessibility *)&v5 setAccessibilityIdentifier:location[0]];
  v4 = [(UIBarButtonItemAccessibility *)v7 safeValueForKey:@"_view"];
  [v4 setAccessibilityIdentifier:location[0]];
  v3 = [(UIBarButtonItemAccessibility *)v7 safeValueForKey:@"_updateView"];
  objc_storeStrong(&v4, 0);
  objc_storeStrong(location, 0);
}

- (void)setIsAccessibilityElement:(BOOL)a3
{
  v8 = self;
  v7 = a2;
  v6 = a3;
  v5.receiver = self;
  v5.super_class = UIBarButtonItemAccessibility;
  [(UIBarButtonItemAccessibility *)&v5 setIsAccessibilityElement:a3];
  v4 = [(UIBarButtonItemAccessibility *)v8 safeValueForKey:@"_view"];
  [v4 setIsAccessibilityElement:v6];
  v3 = [(UIBarButtonItemAccessibility *)v8 safeValueForKey:@"_updateView"];
  objc_storeStrong(&v4, 0);
}

- (void)setAccessibilityValue:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5.receiver = v7;
  v5.super_class = UIBarButtonItemAccessibility;
  [(UIBarButtonItemAccessibility *)&v5 setAccessibilityValue:location[0]];
  v4 = [(UIBarButtonItemAccessibility *)v7 safeValueForKey:@"_view"];
  [v4 setAccessibilityValue:location[0]];
  v3 = [(UIBarButtonItemAccessibility *)v7 safeValueForKey:@"_updateView"];
  objc_storeStrong(&v4, 0);
  objc_storeStrong(location, 0);
}

- (void)setAccessibilityAttributedValue:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5.receiver = v7;
  v5.super_class = UIBarButtonItemAccessibility;
  [(UIBarButtonItemAccessibility *)&v5 setAccessibilityAttributedValue:location[0]];
  v4 = [(UIBarButtonItemAccessibility *)v7 safeValueForKey:@"_view"];
  [v4 setAccessibilityAttributedValue:location[0]];
  v3 = [(UIBarButtonItemAccessibility *)v7 safeValueForKey:@"_updateView"];
  objc_storeStrong(&v4, 0);
  objc_storeStrong(location, 0);
}

- (void)setAccessibilityTraits:(unint64_t)a3
{
  v8 = self;
  v7 = a2;
  v6 = a3;
  v5.receiver = self;
  v5.super_class = UIBarButtonItemAccessibility;
  [(UIBarButtonItemAccessibility *)&v5 setAccessibilityTraits:a3];
  v4 = [(UIBarButtonItemAccessibility *)v8 safeValueForKey:@"_view"];
  [v4 setAccessibilityTraits:v6];
  v3 = [(UIBarButtonItemAccessibility *)v8 safeValueForKey:@"_updateView"];
  objc_storeStrong(&v4, 0);
}

- (BOOL)isAccessibilityElement
{
  v5 = [(UIBarButtonItemAccessibility *)self isAccessibilityUserDefinedElement];
  *&v2 = MEMORY[0x29EDC9740](v5).n128_u64[0];
  if (!v5)
  {
    return 1;
  }

  v4 = [(UIBarButtonItemAccessibility *)self isAccessibilityUserDefinedElement];
  v7 = [v4 BOOLValue] & 1;
  MEMORY[0x29EDC9740](v4);
  return v7;
}

- (unint64_t)accessibilityTraits
{
  v5 = [(UIBarButtonItemAccessibility *)self accessibilityUserDefinedTraits];
  *&v2 = MEMORY[0x29EDC9740](v5).n128_u64[0];
  if (!v5)
  {
    return *MEMORY[0x29EDC7F70];
  }

  v4 = [(UIBarButtonItemAccessibility *)self accessibilityUserDefinedTraits];
  v7 = [v4 unsignedLongLongValue];
  MEMORY[0x29EDC9740](v4);
  return v7;
}

- (void)_setAccessibilityIsNotFirstElement:(BOOL)a3
{
  v8 = self;
  v7 = a2;
  v6 = a3;
  v5.receiver = self;
  v5.super_class = UIBarButtonItemAccessibility;
  [(UIBarButtonItemAccessibility *)&v5 _setAccessibilityIsNotFirstElement:a3];
  v4 = [(UIBarButtonItemAccessibility *)v8 safeValueForKey:@"_view"];
  [v4 _setAccessibilityIsNotFirstElement:v6];
  v3 = [(UIBarButtonItemAccessibility *)v8 safeValueForKey:@"_updateView"];
  objc_storeStrong(&v4, 0);
}

- (void)setAccessibilityHint:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5.receiver = v7;
  v5.super_class = UIBarButtonItemAccessibility;
  [(UIBarButtonItemAccessibility *)&v5 setAccessibilityHint:location[0]];
  v4 = [(UIBarButtonItemAccessibility *)v7 safeValueForKey:@"_view"];
  [v4 setAccessibilityHint:location[0]];
  v3 = [(UIBarButtonItemAccessibility *)v7 safeValueForKey:@"_updateView"];
  objc_storeStrong(&v4, 0);
  objc_storeStrong(location, 0);
}

- (void)setAccessibilityAttributedHint:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5.receiver = v7;
  v5.super_class = UIBarButtonItemAccessibility;
  [(UIBarButtonItemAccessibility *)&v5 setAccessibilityAttributedHint:location[0]];
  v4 = [(UIBarButtonItemAccessibility *)v7 safeValueForKey:@"_view"];
  [v4 setAccessibilityAttributedHint:location[0]];
  v3 = [(UIBarButtonItemAccessibility *)v7 safeValueForKey:@"_updateView"];
  objc_storeStrong(&v4, 0);
  objc_storeStrong(location, 0);
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v6 = self;
  v5 = a2;
  v4.receiver = self;
  v4.super_class = UIBarButtonItemAccessibility;
  [(UIBarButtonItemAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v2 = v6;
  v3 = [(UIBarButtonItemAccessibility *)v6 safeValueForKey:@"view"];
  [(UIBarButtonItemAccessibility *)v2 _accessibilityAddIdForView:v3];
  MEMORY[0x29EDC9740](v3);
}

- (void)dealloc
{
  v4 = self;
  v3 = a2;
  [(UIBarButtonItemAccessibility *)self _accessibilityUnregister];
  v2.receiver = v4;
  v2.super_class = UIBarButtonItemAccessibility;
  [(UIBarButtonItemAccessibility *)&v2 dealloc];
}

- (id)createViewForNavigationItem:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5.receiver = v8;
  v5.super_class = UIBarButtonItemAccessibility;
  v6 = [(UIBarButtonItemAccessibility *)&v5 createViewForNavigationItem:location[0]];
  [(UIBarButtonItemAccessibility *)v8 _accessibilityAddIdForView:v6];
  v4 = MEMORY[0x29EDC9748](v6);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);

  return v4;
}

- (UIBarButtonItemAccessibility)initWithImage:(id)a3 style:(int64_t)a4 target:(id)a5 action:(SEL)a6
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = a4;
  v14 = 0;
  objc_storeStrong(&v14, a5);
  v13 = a6;
  v6 = v17;
  v17 = 0;
  v12.receiver = v6;
  v12.super_class = UIBarButtonItemAccessibility;
  v17 = [(UIBarButtonItemAccessibility *)&v12 initWithImage:location[0] style:v15 target:v14 action:a6];
  objc_storeStrong(&v17, v17);
  [(UIBarButtonItemAccessibility *)v17 _updateAccessibilityLabelForImage:?];
  v11 = MEMORY[0x29EDC9748](v17);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v17, 0);
  return v11;
}

- (void)_updateAccessibilityLabelForImage:(void *)a1
{
  v15 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  if (v15)
  {
    v12 = [location accessibilityIdentifier];
    if ([v12 length])
    {
      v11 = 0;
      v7 = [location configuration];
      objc_opt_class();
      v9 = 0;
      v8 = 0;
      if (objc_opt_isKindOfClass())
      {
        v10 = [v15 accessibilityLabel];
        v9 = 1;
        v8 = v10 == 0;
      }

      if (v9)
      {
        MEMORY[0x29EDC9740](v10);
      }

      MEMORY[0x29EDC9740](v7);
      if (v8)
      {
        v2 = AXSSAccessibilityDescriptionForSymbolName();
      }

      else
      {
        v2 = UIAXLocalizedStringForKnownAXIdentifier();
      }

      v3 = v11;
      v11 = v2;
      *&v4 = MEMORY[0x29EDC9740](v3).n128_u64[0];
      if (v11)
      {
        [v15 setAccessibilityLabel:{v11, v4}];
      }

      else
      {
        v5 = v15;
        v6 = [v15 _accessibilityRetrieveImagePathLabel:{v12, v4}];
        [(UIBarButtonItemAccessibility *)v5 _setAXBarButtonImagePath:v6];
        MEMORY[0x29EDC9740](v6);
      }

      objc_storeStrong(&v11, 0);
    }

    objc_storeStrong(&v12, 0);
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  objc_storeStrong(&location, 0);
}

- (UIBarButtonItemAccessibility)initWithImage:(id)a3 landscapeImagePhone:(id)a4 style:(int64_t)a5 target:(id)a6 action:(SEL)a7
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = 0;
  objc_storeStrong(&v18, a4);
  v17 = a5;
  v16 = 0;
  objc_storeStrong(&v16, a6);
  v15 = a7;
  v7 = v20;
  v20 = 0;
  v14.receiver = v7;
  v14.super_class = UIBarButtonItemAccessibility;
  v20 = [(UIBarButtonItemAccessibility *)&v14 initWithImage:location[0] landscapeImagePhone:v18 style:v17 target:v16 action:a7];
  objc_storeStrong(&v20, v20);
  [(UIBarButtonItemAccessibility *)v20 _updateAccessibilityLabelForImage:?];
  v13 = MEMORY[0x29EDC9748](v20);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v20, 0);
  return v13;
}

- (void)_setAXBarButtonImagePath:(uint64_t)a1
{
  v3 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  if (v3)
  {
    __UIAccessibilitySetAssociatedObject();
  }

  objc_storeStrong(&location, 0);
}

- (id)createViewForToolbar:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5.receiver = v8;
  v5.super_class = UIBarButtonItemAccessibility;
  v6 = [(UIBarButtonItemAccessibility *)&v5 createViewForToolbar:location[0]];
  [(UIBarButtonItemAccessibility *)v8 _accessibilityAddIdForView:v6];
  v4 = MEMORY[0x29EDC9748](v6);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);

  return v4;
}

@end