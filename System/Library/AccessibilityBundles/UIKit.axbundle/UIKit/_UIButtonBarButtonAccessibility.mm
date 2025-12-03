@interface _UIButtonBarButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityIsBackButton;
- (BOOL)accessibilityElementsHidden;
- (BOOL)isAccessibilityElement;
- (id)_accessibilityNativeFocusPreferredElement;
- (id)accessibilityIdentifier;
- (id)accessibilityLabel;
- (id)accessibilityPath;
- (uint64_t)_axIsInvisibleButton;
- (unint64_t)accessibilityTraits;
@end

@implementation _UIButtonBarButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v7 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v4 = @"_UIButtonBarButton";
  [location[0] validateClass:?];
  [location[0] validateClass:@"_UIButtonBarButton" isKindOfClass:@"UIControl"];
  [location[0] validateClass:@"_UIButtonBarButton" hasInstanceVariable:@"_visualProvider" withType:"_UIButtonBarButtonVisualProvider"];
  v3 = @"_UIButtonBarButtonVisualProviderIOS";
  [location[0] validateClass:? hasInstanceVariable:? withType:?];
  [location[0] validateClass:@"_UIButtonBarButtonVisualProviderIOS" hasInstanceVariable:@"_barButtonItem" withType:"UIBarButtonItem"];
  v5 = "@";
  [location[0] validateClass:@"_UIButtonBarButtonVisualProviderIOS" hasInstanceMethod:@"backIndicatorView" withFullSignature:0];
  [location[0] validateClass:v4 hasInstanceVariable:@"_backButton" withType:"B"];
  [location[0] validateClass:v4 hasInstanceMethod:@"visualProvider" withFullSignature:{v5, 0}];
  [location[0] validateClass:@"_UIButtonBarButtonVisualProvider" hasInstanceMethod:@"contentView" withFullSignature:{v5, 0}];
  [location[0] validateClass:@"UIButton" hasInstanceMethod:@"imageView" withFullSignature:{v5, 0}];
  [location[0] validateClass:@"UIImageView" hasInstanceMethod:@"image" withFullSignature:{v5, 0}];
  [location[0] validateClass:@"UIImage" hasInstanceMethod:@"imageAsset" withFullSignature:{v5, 0}];
  [location[0] validateClass:@"UIImageAsset" hasInstanceMethod:@"assetName" withFullSignature:{v5, 0}];
  [location[0] validateClass:@"UINavigationBarAccessibility" hasInstanceMethod:@"_accessibilityFauxBackButton" withFullSignature:{v5, 0}];
  [location[0] validateClass:@"UIAccessibilityBackButtonElement" hasInstanceMethod:@"associatedViews" withFullSignature:{v5, 0}];
  objc_storeStrong(v7, obj);
}

- (uint64_t)_axIsInvisibleButton
{
  v7[1] = self;
  if (self)
  {
    v6 = 0;
    objc_opt_class();
    v5 = __UIAccessibilityCastAsClass();
    v4 = MEMORY[0x29EDC9748](v5);
    objc_storeStrong(&v5, 0);
    v7[0] = v4;
    tintColor = [v4 tintColor];
    clearColor = [MEMORY[0x29EDC7A00] clearColor];
    v8 = [tintColor isEqual:?] & 1;
    MEMORY[0x29EDC9740](clearColor);
    MEMORY[0x29EDC9740](tintColor);
    objc_storeStrong(v7, 0);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

- (BOOL)_accessibilityIsBackButton
{
  v6 = 0;
  v4 = 0;
  _accessibilityViewIsVisible = 1;
  if (([(_UIButtonBarButtonAccessibility *)self safeBoolForKey:@"_backButton"]& 1) == 0)
  {
    v7 = [(_UIButtonBarButtonAccessibility *)self safeValueForKey:@"_visualProvider"];
    v6 = 1;
    v5 = [v7 safeValueForKey:@"backIndicatorView"];
    v4 = 1;
    _accessibilityViewIsVisible = [v5 _accessibilityViewIsVisible];
  }

  if (v4)
  {
    MEMORY[0x29EDC9740](v5);
  }

  if (v6)
  {
    MEMORY[0x29EDC9740](v7);
  }

  return _accessibilityViewIsVisible & 1;
}

- (BOOL)isAccessibilityElement
{
  selfCopy = self;
  v12 = a2;
  bOOLValue = 1;
  v9 = 0;
  v7 = 0;
  v4 = 0;
  if (![(_UIButtonBarButtonAccessibility *)self _accessibilityIsBackButton])
  {
    accessibilityLabel = [(_UIButtonBarButtonAccessibility *)selfCopy accessibilityLabel];
    v9 = 1;
    v4 = 0;
    if (![accessibilityLabel length])
    {
      accessibilityValue = [(_UIButtonBarButtonAccessibility *)selfCopy accessibilityValue];
      v7 = 1;
      v4 = [accessibilityValue length] == 0;
    }
  }

  if (v7)
  {
    MEMORY[0x29EDC9740](accessibilityValue);
  }

  if (v9)
  {
    MEMORY[0x29EDC9740](accessibilityLabel);
  }

  if (v4)
  {
    bOOLValue = 0;
  }

  v5.receiver = selfCopy;
  v5.super_class = _UIButtonBarButtonAccessibility;
  location = [(_UIButtonBarButtonAccessibility *)&v5 isAccessibilityUserDefinedElement];
  if (location)
  {
    bOOLValue = [location BOOLValue];
  }

  v3 = bOOLValue;
  objc_storeStrong(&location, 0);
  return v3 & 1;
}

- (BOOL)accessibilityElementsHidden
{
  selfCopy = self;
  v5 = a2;
  v3.receiver = self;
  v3.super_class = _UIButtonBarButtonAccessibility;
  IsInvisible = [(_UIButtonBarButtonAccessibility *)&v3 accessibilityElementsHidden];
  if ((IsInvisible & 1) == 0)
  {
    IsInvisible = [(_UIButtonBarButtonAccessibility *)selfCopy _axIsInvisibleButton];
  }

  return IsInvisible & 1;
}

- (unint64_t)accessibilityTraits
{
  selfCopy = self;
  v5 = a2;
  v3.receiver = self;
  v3.super_class = _UIButtonBarButtonAccessibility;
  accessibilityTraits = [(_UIButtonBarButtonAccessibility *)&v3 accessibilityTraits];
  if ([(_UIButtonBarButtonAccessibility *)selfCopy _accessibilityIsBackButton])
  {
    accessibilityTraits |= *MEMORY[0x29EDC7500];
  }

  else
  {
    accessibilityTraits |= *MEMORY[0x29EDC7F70];
  }

  return accessibilityTraits;
}

- (id)accessibilityIdentifier
{
  selfCopy = self;
  location[1] = a2;
  v4.receiver = self;
  v4.super_class = _UIButtonBarButtonAccessibility;
  location[0] = [(_UIButtonBarButtonAccessibility *)&v4 accessibilityIdentifier];
  if (location[0])
  {
    v7 = MEMORY[0x29EDC9748](location[0]);
  }

  else if ([(_UIButtonBarButtonAccessibility *)selfCopy _accessibilityIsBackButton])
  {
    v7 = MEMORY[0x29EDC9748](@"BackButton");
  }

  else
  {
    v7 = 0;
  }

  objc_storeStrong(location, 0);
  v2 = v7;

  return v2;
}

- (id)accessibilityLabel
{
  selfCopy = self;
  v34[1] = a2;
  v33.receiver = self;
  v33.super_class = _UIButtonBarButtonAccessibility;
  v34[0] = [(_UIButtonBarButtonAccessibility *)&v33 accessibilityUserDefinedLabel];
  if ([v34[0] length])
  {
    v36 = MEMORY[0x29EDC9748](v34[0]);
    v32 = 1;
    goto LABEL_30;
  }

  v31.receiver = selfCopy;
  v31.super_class = _UIButtonBarButtonAccessibility;
  accessibilityLabel = [(_UIButtonBarButtonAccessibility *)&v31 accessibilityLabel];
  v3 = v34[0];
  v34[0] = accessibilityLabel;
  MEMORY[0x29EDC9740](v3);
  location = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v34[0] hasAttribute:*MEMORY[0x29EDBD900]])
  {
    objc_storeStrong(&location, v34[0]);
    objc_storeStrong(v34, 0);
  }

  v18 = [(_UIButtonBarButtonAccessibility *)selfCopy safeValueForKey:@"_visualProvider"];
  v29 = [v18 safeValueForKey:@"_titleButton"];
  *&v4 = MEMORY[0x29EDC9740](v18).n128_u64[0];
  v26 = 0;
  if (v29)
  {
    accessibilityLabel2 = [v29 accessibilityLabel];
    v26 = 1;
    v5 = MEMORY[0x29EDC9748](accessibilityLabel2);
  }

  else
  {
    v5 = MEMORY[0x29EDC9748](0);
  }

  v28 = v5;
  if (v26)
  {
    MEMORY[0x29EDC9740](accessibilityLabel2);
  }

  if (v28 && [v28 length])
  {
    objc_storeStrong(v34, v28);
LABEL_16:
    if (![v34[0] length])
    {
      v25 = 0;
      v16 = [(_UIButtonBarButtonAccessibility *)selfCopy safeValueForKey:@"tag"];
      integerValue = [v16 integerValue];
      *&v6 = MEMORY[0x29EDC9740](v16).n128_u64[0];
      integerValue2 = integerValue;
      if (integerValue)
      {
        v25 = 1;
      }

      else
      {
        accessibilityIdentification = [(_UIButtonBarButtonAccessibility *)selfCopy accessibilityIdentification];
        if ([accessibilityIdentification length])
        {
          integerValue2 = [accessibilityIdentification integerValue];
          v25 = 1;
        }

        objc_storeStrong(&accessibilityIdentification, 0);
      }

      if (v25)
      {
        v7 = [MEMORY[0x29EDC7DA0] _accessibilityTitleForSystemTag:integerValue2];
        v8 = v34[0];
        v34[0] = v7;
        MEMORY[0x29EDC9740](v8);
      }
    }

    if ([location length])
    {
      v9 = AXSSAccessibilityDescriptionForSymbolName();
      v10 = v34[0];
      v34[0] = v9;
      MEMORY[0x29EDC9740](v10);
    }

    if (!v34[0])
    {
      v21 = 0;
      objc_opt_class();
      v15 = [(_UIButtonBarButtonAccessibility *)selfCopy safeValueForKeyPath:@"_visualProvider._barButtonItem"];
      v20 = __UIAccessibilityCastAsClass();
      MEMORY[0x29EDC9740](v15);
      v19 = MEMORY[0x29EDC9748](v20);
      objc_storeStrong(&v20, 0);
      v22 = v19;
      accessibilityLabel3 = [v19 accessibilityLabel];
      v12 = v34[0];
      v34[0] = accessibilityLabel3;
      MEMORY[0x29EDC9740](v12);
      objc_storeStrong(&v22, 0);
    }

    v36 = MEMORY[0x29EDC9748](v34[0]);
    v32 = 1;
    goto LABEL_29;
  }

  if (![v34[0] length])
  {
    goto LABEL_16;
  }

  v36 = MEMORY[0x29EDC9748](v34[0]);
  v32 = 1;
LABEL_29:
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&location, 0);
LABEL_30:
  objc_storeStrong(v34, 0);
  v13 = v36;

  return v13;
}

- (id)accessibilityPath
{
  selfCopy = self;
  v61[1] = a2;
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v40 = [(_UIButtonBarButtonAccessibility *)selfCopy _accessibilityDescendantOfType:objc_opt_class()];
    accessibilityLabel = [v40 accessibilityLabel];
    v29 = [accessibilityLabel length];
    MEMORY[0x29EDC9740](accessibilityLabel);
    if (v29)
    {
      [v40 accessibilityFrame];
      rect.origin.x = v18;
      rect.origin.y = v19;
      rect.size.width = v20;
      rect.size.height = v21;
      [(_UIButtonBarButtonAccessibility *)selfCopy accessibilityFrame];
      r1.origin.x = v22;
      r1.origin.y = v23;
      r1.size.width = v24;
      r1.size.height = v25;
      v37 = CGRectInset(rect, -10.0, 0.0);
      rect = v37;
      v69 = CGRectUnion(r1, v37);
      v36 = v69;
      r1 = v69;
      accessibilityPath = [MEMORY[0x29EDC7948] bezierPathWithRoundedRect:v69.origin.x cornerRadius:{v69.origin.y, v69.size.width, v69.size.height, 8.0}];
      v47 = 1;
    }

    else
    {
      v47 = 0;
    }

    objc_storeStrong(&v40, 0);
    if (v47)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v34 = selfCopy;
  v55 = MEMORY[0x29EDCA5F8];
  v56 = -1073741824;
  v57 = 0;
  v58 = __52___UIButtonBarButtonAccessibility_accessibilityPath__block_invoke;
  v59 = &unk_29F30E408;
  v60 = MEMORY[0x29EDC9748](selfCopy);
  v61[0] = [(_UIButtonBarButtonAccessibility *)v34 _accessibilityFindViewAncestor:&v55 startWithSelf:0];
  if (v61[0])
  {
    [(_UIButtonBarButtonAccessibility *)selfCopy accessibilityFrame];
    v51 = v2;
    v52 = v3;
    v53 = v4;
    v54 = v5;
    [v61[0] frame];
    location[1] = v6;
    location[2] = v7;
    v49 = v8;
    v50 = v9;
    subviews = [v61[0] subviews];
    v33 = [subviews count];
    *&v10 = MEMORY[0x29EDC9740](subviews).n128_u64[0];
    if (v33 != 1 || ((location[0] = [v61[0] accessibilityPath]) == 0 || v49 >= v53 * 1.5 ? (v47 = 0) : (accessibilityPath = MEMORY[0x29EDC9748](location[0]), v47 = 1), objc_storeStrong(location, 0), !v47))
    {
      AX_CGRectGetCenter();
      v45 = v11;
      v46 = v12;
      v67 = v50;
      v66 = v54;
      v44 = fmin(v50, v54);
      v65 = v49;
      v64 = v44;
      v43 = fmin(v49, v44);
      CGRectMake_6();
      *&v41 = v13;
      *(&v41 + 1) = v14;
      *&v42 = v15;
      *(&v42 + 1) = v16;
      v30 = MEMORY[0x29EDC7948];
      layer = [v61[0] layer];
      [layer cornerRadius];
      accessibilityPath = [v30 bezierPathWithRoundedRect:v41 cornerRadius:{v42, v17}];
      MEMORY[0x29EDC9740](layer);
      v47 = 1;
    }
  }

  else
  {
    v47 = 0;
  }

  objc_storeStrong(v61, 0);
  objc_storeStrong(&v60, 0);
  if (!v47)
  {
LABEL_17:
    v35.receiver = selfCopy;
    v35.super_class = _UIButtonBarButtonAccessibility;
    accessibilityPath = [(_UIButtonBarButtonAccessibility *)&v35 accessibilityPath];
  }

LABEL_18:
  v26 = accessibilityPath;

  return v26;
}

- (id)_accessibilityNativeFocusPreferredElement
{
  selfCopy = self;
  v10[1] = a2;
  v10[0] = [(_UIButtonBarButtonAccessibility *)self _accessibilityAncestorIsKindOf:objc_opt_class()];
  location = [v10[0] safeValueForKey:@"_accessibilityFauxBackButton"];
  v5 = [location safeArrayForKey:@"associatedViews"];
  v6 = [v5 containsObject:selfCopy];
  *&v2 = MEMORY[0x29EDC9740](v5).n128_u64[0];
  if (v6)
  {
    _accessibilityNativeFocusPreferredElement = MEMORY[0x29EDC9748](location);
  }

  else
  {
    v7.receiver = selfCopy;
    v7.super_class = _UIButtonBarButtonAccessibility;
    _accessibilityNativeFocusPreferredElement = [(_UIButtonBarButtonAccessibility *)&v7 _accessibilityNativeFocusPreferredElement];
  }

  v8 = 1;
  objc_storeStrong(&location, 0);
  objc_storeStrong(v10, 0);
  v3 = _accessibilityNativeFocusPreferredElement;

  return v3;
}

@end