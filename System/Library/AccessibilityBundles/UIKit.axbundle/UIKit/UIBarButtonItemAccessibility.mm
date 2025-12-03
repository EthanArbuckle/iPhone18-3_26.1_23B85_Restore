@interface UIBarButtonItemAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)isAccessibilityElement;
- (UIBarButtonItemAccessibility)initWithImage:(id)image landscapeImagePhone:(id)phone style:(int64_t)style target:(id)target action:(SEL)action;
- (UIBarButtonItemAccessibility)initWithImage:(id)image style:(int64_t)style target:(id)target action:(SEL)action;
- (id)_accessibilityIdentifierForImage:(uint64_t)image;
- (id)_axBarButtonImagePath;
- (id)accessibilityLabel;
- (id)createViewForNavigationItem:(id)item;
- (id)createViewForToolbar:(id)toolbar;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityAddIdForView:(void *)view;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_setAXBarButtonImagePath:(uint64_t)path;
- (void)_setAccessibilityHintBlock:(id)block;
- (void)_setAccessibilityIsNotFirstElement:(BOOL)element;
- (void)_setAccessibilityLabelBlock:(id)block;
- (void)_setAccessibilityValueBlock:(id)block;
- (void)_updateAccessibilityLabelForImage:(void *)image;
- (void)dealloc;
- (void)setAccessibilityAttributedHint:(id)hint;
- (void)setAccessibilityAttributedLabel:(id)label;
- (void)setAccessibilityAttributedValue:(id)value;
- (void)setAccessibilityHint:(id)hint;
- (void)setAccessibilityIdentifier:(id)identifier;
- (void)setAccessibilityLabel:(id)label;
- (void)setAccessibilityTraits:(unint64_t)traits;
- (void)setAccessibilityUserInputLabels:(id)labels;
- (void)setAccessibilityValue:(id)value;
- (void)setCustomView:(id)view;
- (void)setIsAccessibilityElement:(BOOL)element;
- (void)setTitle:(id)title;
- (void)setView:(id)view;
@end

@implementation UIBarButtonItemAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v6 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v3 = @"UIBarButtonItem";
  v4 = "@";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v3 hasInstanceMethod:@"customView" withFullSignature:{v4, 0}];
  objc_storeStrong(v6, obj);
}

- (void)_accessibilityAddIdForView:(void *)view
{
  viewCopy = view;
  location = 0;
  objc_storeStrong(&location, a2);
  if (viewCopy)
  {
    if (location)
    {
      accessibilityIdentification = [viewCopy accessibilityIdentification];
      if ([accessibilityIdentification length])
      {
        [location accessibilitySetIdentification:accessibilityIdentification];
      }

      else
      {
        v40 = [viewCopy safeValueForKey:@"systemItem"];
        intValue = [v40 intValue];
        v2 = MEMORY[0x29EDC9740](v40).n128_u64[0];
        intValue2 = intValue;
        if (!intValue)
        {
          v39 = [viewCopy safeValueForKey:{@"tag", *&v2}];
          intValue2 = [v39 intValue];
          v2 = MEMORY[0x29EDC9740](v39).n128_u64[0];
        }

        if (intValue2)
        {
          v37 = location;
          v38 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%d", *&v2, intValue2];
          [v37 accessibilitySetIdentification:?];
          MEMORY[0x29EDC9740](v38);
        }
      }

      v43 = [viewCopy _accessibilityGetBlockForAttribute:1];
      if (v43)
      {
        [location _setAccessibilityLabelBlock:v43];
      }

      else
      {
        _accessibilityAXAttributedLabel = [viewCopy _accessibilityAXAttributedLabel];
        if ([_accessibilityAXAttributedLabel length])
        {
          [location setAccessibilityLabel:_accessibilityAXAttributedLabel];
        }

        objc_storeStrong(&_accessibilityAXAttributedLabel, 0);
      }

      v3 = [viewCopy _accessibilityGetBlockForAttribute:2];
      v4 = v43;
      v43 = v3;
      *&v5 = MEMORY[0x29EDC9740](v4).n128_u64[0];
      if (v43)
      {
        [location _setAccessibilityHintBlock:{v43, v5}];
      }

      else
      {
        _accessibilityAXAttributedHint = [viewCopy _accessibilityAXAttributedHint];
        *&v6 = MEMORY[0x29EDC9740](_accessibilityAXAttributedHint).n128_u64[0];
        if (_accessibilityAXAttributedHint)
        {
          v34 = location;
          _accessibilityAXAttributedHint2 = [viewCopy _accessibilityAXAttributedHint];
          [v34 setAccessibilityHint:?];
          MEMORY[0x29EDC9740](_accessibilityAXAttributedHint2);
        }
      }

      accessibilityIdentifier = [viewCopy accessibilityIdentifier];
      v7 = MEMORY[0x29EDC9740](accessibilityIdentifier).n128_u64[0];
      if (accessibilityIdentifier)
      {
        v31 = location;
        accessibilityIdentifier2 = [viewCopy accessibilityIdentifier];
        [v31 setAccessibilityIdentifier:?];
        v7 = MEMORY[0x29EDC9740](accessibilityIdentifier2).n128_u64[0];
      }

      accessibilityUserInputLabels = [viewCopy accessibilityUserInputLabels];
      v8 = MEMORY[0x29EDC9740](accessibilityUserInputLabels).n128_u64[0];
      if (accessibilityUserInputLabels)
      {
        v28 = location;
        accessibilityUserInputLabels2 = [viewCopy accessibilityUserInputLabels];
        [v28 setAccessibilityUserInputLabels:?];
        v8 = MEMORY[0x29EDC9740](accessibilityUserInputLabels2).n128_u64[0];
      }

      v9 = [viewCopy _accessibilityGetBlockForAttribute:{3, *&v8}];
      v10 = v43;
      v43 = v9;
      *&v11 = MEMORY[0x29EDC9740](v10).n128_u64[0];
      if (v43)
      {
        [location _setAccessibilityValueBlock:{v43, v11}];
      }

      else
      {
        _accessibilityAXAttributedValue = [viewCopy _accessibilityAXAttributedValue];
        *&v12 = MEMORY[0x29EDC9740](_accessibilityAXAttributedValue).n128_u64[0];
        if (_accessibilityAXAttributedValue)
        {
          v25 = location;
          _accessibilityAXAttributedValue2 = [viewCopy _accessibilityAXAttributedValue];
          [v25 setAccessibilityValue:?];
          MEMORY[0x29EDC9740](_accessibilityAXAttributedValue2);
        }
      }

      accessibilityUserDefinedTraits = [viewCopy accessibilityUserDefinedTraits];
      v13 = MEMORY[0x29EDC9740](accessibilityUserDefinedTraits).n128_u64[0];
      if (accessibilityUserDefinedTraits)
      {
        v22 = location;
        accessibilityUserDefinedTraits2 = [viewCopy accessibilityUserDefinedTraits];
        [v22 setAccessibilityTraits:{objc_msgSend(accessibilityUserDefinedTraits2, "unsignedLongLongValue")}];
        v13 = MEMORY[0x29EDC9740](accessibilityUserDefinedTraits2).n128_u64[0];
      }

      isAccessibilityUserDefinedElement = [viewCopy isAccessibilityUserDefinedElement];
      v14 = MEMORY[0x29EDC9740](isAccessibilityUserDefinedElement).n128_u64[0];
      if (isAccessibilityUserDefinedElement)
      {
        v19 = location;
        isAccessibilityUserDefinedElement2 = [viewCopy isAccessibilityUserDefinedElement];
        [v19 setIsAccessibilityElement:{objc_msgSend(isAccessibilityUserDefinedElement2, "BOOLValue")}];
        v14 = MEMORY[0x29EDC9740](isAccessibilityUserDefinedElement2).n128_u64[0];
      }

      accessibilityUserDefinedNotFirstElement = [viewCopy accessibilityUserDefinedNotFirstElement];
      *&v15 = MEMORY[0x29EDC9740](accessibilityUserDefinedNotFirstElement).n128_u64[0];
      if (accessibilityUserDefinedNotFirstElement)
      {
        v16 = location;
        accessibilityUserDefinedNotFirstElement2 = [viewCopy accessibilityUserDefinedNotFirstElement];
        [v16 _setAccessibilityIsNotFirstElement:{objc_msgSend(accessibilityUserDefinedNotFirstElement2, "BOOLValue")}];
        MEMORY[0x29EDC9740](accessibilityUserDefinedNotFirstElement2);
      }

      objc_storeStrong(&v43, 0);
      objc_storeStrong(&accessibilityIdentification, 0);
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

- (id)_accessibilityIdentifierForImage:(uint64_t)image
{
  imageCopy = image;
  location = 0;
  objc_storeStrong(&location, a2);
  if (imageCopy)
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
  selfCopy = self;
  v23[1] = a2;
  v22.receiver = self;
  v22.super_class = UIBarButtonItemAccessibility;
  v23[0] = [(UIBarButtonItemAccessibility *)&v22 accessibilityLabel];
  v20 = 0;
  objc_opt_class();
  v13 = [(UIBarButtonItemAccessibility *)selfCopy safeValueForKey:@"image"];
  v19 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v13);
  v18 = MEMORY[0x29EDC9748](v19);
  objc_storeStrong(&v19, 0);
  v21 = v18;
  if (!v23[0])
  {
    accessibilityIdentifier = [v21 accessibilityIdentifier];
    if (!accessibilityIdentifier)
    {
      accessibilityIdentifier = [(UIBarButtonItemAccessibility *)selfCopy _accessibilityIdentifierForImage:v21];
      MEMORY[0x29EDC9740](0);
    }

    v16 = UIAXLocalizedStringForKnownAXIdentifier();
    if ([v16 length])
    {
      objc_storeStrong(v23, v16);
    }

    else
    {
      accessibilityLabel = [v21 accessibilityLabel];
      v3 = v23[0];
      v23[0] = accessibilityLabel;
      MEMORY[0x29EDC9740](v3);
    }

    objc_storeStrong(&v16, 0);
    objc_storeStrong(&accessibilityIdentifier, 0);
  }

  if (!v23[0])
  {
    _axBarButtonImagePath = [(UIBarButtonItemAccessibility *)selfCopy _axBarButtonImagePath];
    v5 = v23[0];
    v23[0] = _axBarButtonImagePath;
    MEMORY[0x29EDC9740](v5);
  }

  v14 = 0;
  v12 = 0;
  if (![v23[0] length])
  {
    accessibilityLabel2 = [v21 accessibilityLabel];
    v14 = 1;
    v12 = [accessibilityLabel2 isEqualToString:@"sidebar.leading"];
  }

  if (v14)
  {
    MEMORY[0x29EDC9740](accessibilityLabel2);
  }

  if (v12)
  {
    v6 = accessibilityUIKitLocalizedString();
    v7 = v23[0];
    v23[0] = v6;
    MEMORY[0x29EDC9740](v7);
  }

  if (!v23[0] && ([(UIBarButtonItemAccessibility *)selfCopy safeBoolForKey:@"isSystemItem"]& 1) != 0)
  {
    v8 = [MEMORY[0x29EDC7DA0] _accessibilityTitleForSystemTag:{-[UIBarButtonItemAccessibility safeIntegerForKey:](selfCopy, "safeIntegerForKey:", @"systemItem"}];
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
  if (self)
  {
    v2 = objc_getAssociatedObject(self, &__UIBarButtonItemAccessibility___axBarButtonImagePath);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setTitle:(id)title
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, title);
  v5.receiver = selfCopy;
  v5.super_class = UIBarButtonItemAccessibility;
  [(UIBarButtonItemAccessibility *)&v5 setTitle:location[0]];
  v3 = selfCopy;
  v4 = [(UIBarButtonItemAccessibility *)selfCopy safeValueForKey:@"view"];
  [(UIBarButtonItemAccessibility *)v3 _accessibilityAddIdForView:v4];
  MEMORY[0x29EDC9740](v4);
  objc_storeStrong(location, 0);
}

- (void)setView:(id)view
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v3.receiver = selfCopy;
  v3.super_class = UIBarButtonItemAccessibility;
  [(UIBarButtonItemAccessibility *)&v3 setView:location[0]];
  [(UIBarButtonItemAccessibility *)selfCopy _accessibilityAddIdForView:?];
  objc_storeStrong(location, 0);
}

- (void)setCustomView:(id)view
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v3.receiver = selfCopy;
  v3.super_class = UIBarButtonItemAccessibility;
  [(UIBarButtonItemAccessibility *)&v3 setCustomView:location[0]];
  [(UIBarButtonItemAccessibility *)selfCopy _accessibilityAddIdForView:?];
  objc_storeStrong(location, 0);
}

- (void)_setAccessibilityLabelBlock:(id)block
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, block);
  v6.receiver = selfCopy;
  v6.super_class = UIBarButtonItemAccessibility;
  [(UIBarButtonItemAccessibility *)&v6 _setAccessibilityLabelBlock:location[0]];
  v5 = [(UIBarButtonItemAccessibility *)selfCopy safeUIViewForKey:@"_view"];
  [v5 _setAccessibilityLabelBlock:location[0]];
  *&v3 = MEMORY[0x29EDC9740](v5).n128_u64[0];
  v4 = [(UIBarButtonItemAccessibility *)selfCopy safeValueForKey:@"_updateView", v3];
  objc_storeStrong(location, 0);
}

- (void)_setAccessibilityHintBlock:(id)block
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, block);
  v6.receiver = selfCopy;
  v6.super_class = UIBarButtonItemAccessibility;
  [(UIBarButtonItemAccessibility *)&v6 _setAccessibilityHintBlock:location[0]];
  v5 = [(UIBarButtonItemAccessibility *)selfCopy safeUIViewForKey:@"_view"];
  [v5 _setAccessibilityHintBlock:location[0]];
  *&v3 = MEMORY[0x29EDC9740](v5).n128_u64[0];
  v4 = [(UIBarButtonItemAccessibility *)selfCopy safeValueForKey:@"_updateView", v3];
  objc_storeStrong(location, 0);
}

- (void)_setAccessibilityValueBlock:(id)block
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, block);
  v6.receiver = selfCopy;
  v6.super_class = UIBarButtonItemAccessibility;
  [(UIBarButtonItemAccessibility *)&v6 _setAccessibilityValueBlock:location[0]];
  v5 = [(UIBarButtonItemAccessibility *)selfCopy safeUIViewForKey:@"_view"];
  [v5 _setAccessibilityValueBlock:location[0]];
  *&v3 = MEMORY[0x29EDC9740](v5).n128_u64[0];
  v4 = [(UIBarButtonItemAccessibility *)selfCopy safeValueForKey:@"_updateView", v3];
  objc_storeStrong(location, 0);
}

- (void)setAccessibilityLabel:(id)label
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, label);
  v5.receiver = selfCopy;
  v5.super_class = UIBarButtonItemAccessibility;
  [(UIBarButtonItemAccessibility *)&v5 setAccessibilityLabel:location[0]];
  v4 = [(UIBarButtonItemAccessibility *)selfCopy safeValueForKey:@"_view"];
  [v4 setAccessibilityLabel:location[0]];
  v3 = [(UIBarButtonItemAccessibility *)selfCopy safeValueForKey:@"_updateView"];
  objc_storeStrong(&v4, 0);
  objc_storeStrong(location, 0);
}

- (void)setAccessibilityAttributedLabel:(id)label
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, label);
  v5.receiver = selfCopy;
  v5.super_class = UIBarButtonItemAccessibility;
  [(UIBarButtonItemAccessibility *)&v5 setAccessibilityAttributedLabel:location[0]];
  v4 = [(UIBarButtonItemAccessibility *)selfCopy safeValueForKey:@"_view"];
  [v4 setAccessibilityAttributedLabel:location[0]];
  v3 = [(UIBarButtonItemAccessibility *)selfCopy safeValueForKey:@"_updateView"];
  objc_storeStrong(&v4, 0);
  objc_storeStrong(location, 0);
}

- (void)setAccessibilityUserInputLabels:(id)labels
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, labels);
  v5.receiver = selfCopy;
  v5.super_class = UIBarButtonItemAccessibility;
  [(UIBarButtonItemAccessibility *)&v5 setAccessibilityUserInputLabels:location[0]];
  v4 = [(UIBarButtonItemAccessibility *)selfCopy safeValueForKey:@"_view"];
  [v4 setAccessibilityUserInputLabels:location[0]];
  v3 = [(UIBarButtonItemAccessibility *)selfCopy safeValueForKey:@"_updateView"];
  objc_storeStrong(&v4, 0);
  objc_storeStrong(location, 0);
}

- (void)setAccessibilityIdentifier:(id)identifier
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, identifier);
  v5.receiver = selfCopy;
  v5.super_class = UIBarButtonItemAccessibility;
  [(UIBarButtonItemAccessibility *)&v5 setAccessibilityIdentifier:location[0]];
  v4 = [(UIBarButtonItemAccessibility *)selfCopy safeValueForKey:@"_view"];
  [v4 setAccessibilityIdentifier:location[0]];
  v3 = [(UIBarButtonItemAccessibility *)selfCopy safeValueForKey:@"_updateView"];
  objc_storeStrong(&v4, 0);
  objc_storeStrong(location, 0);
}

- (void)setIsAccessibilityElement:(BOOL)element
{
  selfCopy = self;
  v7 = a2;
  elementCopy = element;
  v5.receiver = self;
  v5.super_class = UIBarButtonItemAccessibility;
  [(UIBarButtonItemAccessibility *)&v5 setIsAccessibilityElement:element];
  v4 = [(UIBarButtonItemAccessibility *)selfCopy safeValueForKey:@"_view"];
  [v4 setIsAccessibilityElement:elementCopy];
  v3 = [(UIBarButtonItemAccessibility *)selfCopy safeValueForKey:@"_updateView"];
  objc_storeStrong(&v4, 0);
}

- (void)setAccessibilityValue:(id)value
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, value);
  v5.receiver = selfCopy;
  v5.super_class = UIBarButtonItemAccessibility;
  [(UIBarButtonItemAccessibility *)&v5 setAccessibilityValue:location[0]];
  v4 = [(UIBarButtonItemAccessibility *)selfCopy safeValueForKey:@"_view"];
  [v4 setAccessibilityValue:location[0]];
  v3 = [(UIBarButtonItemAccessibility *)selfCopy safeValueForKey:@"_updateView"];
  objc_storeStrong(&v4, 0);
  objc_storeStrong(location, 0);
}

- (void)setAccessibilityAttributedValue:(id)value
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, value);
  v5.receiver = selfCopy;
  v5.super_class = UIBarButtonItemAccessibility;
  [(UIBarButtonItemAccessibility *)&v5 setAccessibilityAttributedValue:location[0]];
  v4 = [(UIBarButtonItemAccessibility *)selfCopy safeValueForKey:@"_view"];
  [v4 setAccessibilityAttributedValue:location[0]];
  v3 = [(UIBarButtonItemAccessibility *)selfCopy safeValueForKey:@"_updateView"];
  objc_storeStrong(&v4, 0);
  objc_storeStrong(location, 0);
}

- (void)setAccessibilityTraits:(unint64_t)traits
{
  selfCopy = self;
  v7 = a2;
  traitsCopy = traits;
  v5.receiver = self;
  v5.super_class = UIBarButtonItemAccessibility;
  [(UIBarButtonItemAccessibility *)&v5 setAccessibilityTraits:traits];
  v4 = [(UIBarButtonItemAccessibility *)selfCopy safeValueForKey:@"_view"];
  [v4 setAccessibilityTraits:traitsCopy];
  v3 = [(UIBarButtonItemAccessibility *)selfCopy safeValueForKey:@"_updateView"];
  objc_storeStrong(&v4, 0);
}

- (BOOL)isAccessibilityElement
{
  isAccessibilityUserDefinedElement = [(UIBarButtonItemAccessibility *)self isAccessibilityUserDefinedElement];
  *&v2 = MEMORY[0x29EDC9740](isAccessibilityUserDefinedElement).n128_u64[0];
  if (!isAccessibilityUserDefinedElement)
  {
    return 1;
  }

  isAccessibilityUserDefinedElement2 = [(UIBarButtonItemAccessibility *)self isAccessibilityUserDefinedElement];
  v7 = [isAccessibilityUserDefinedElement2 BOOLValue] & 1;
  MEMORY[0x29EDC9740](isAccessibilityUserDefinedElement2);
  return v7;
}

- (unint64_t)accessibilityTraits
{
  accessibilityUserDefinedTraits = [(UIBarButtonItemAccessibility *)self accessibilityUserDefinedTraits];
  *&v2 = MEMORY[0x29EDC9740](accessibilityUserDefinedTraits).n128_u64[0];
  if (!accessibilityUserDefinedTraits)
  {
    return *MEMORY[0x29EDC7F70];
  }

  accessibilityUserDefinedTraits2 = [(UIBarButtonItemAccessibility *)self accessibilityUserDefinedTraits];
  unsignedLongLongValue = [accessibilityUserDefinedTraits2 unsignedLongLongValue];
  MEMORY[0x29EDC9740](accessibilityUserDefinedTraits2);
  return unsignedLongLongValue;
}

- (void)_setAccessibilityIsNotFirstElement:(BOOL)element
{
  selfCopy = self;
  v7 = a2;
  elementCopy = element;
  v5.receiver = self;
  v5.super_class = UIBarButtonItemAccessibility;
  [(UIBarButtonItemAccessibility *)&v5 _setAccessibilityIsNotFirstElement:element];
  v4 = [(UIBarButtonItemAccessibility *)selfCopy safeValueForKey:@"_view"];
  [v4 _setAccessibilityIsNotFirstElement:elementCopy];
  v3 = [(UIBarButtonItemAccessibility *)selfCopy safeValueForKey:@"_updateView"];
  objc_storeStrong(&v4, 0);
}

- (void)setAccessibilityHint:(id)hint
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, hint);
  v5.receiver = selfCopy;
  v5.super_class = UIBarButtonItemAccessibility;
  [(UIBarButtonItemAccessibility *)&v5 setAccessibilityHint:location[0]];
  v4 = [(UIBarButtonItemAccessibility *)selfCopy safeValueForKey:@"_view"];
  [v4 setAccessibilityHint:location[0]];
  v3 = [(UIBarButtonItemAccessibility *)selfCopy safeValueForKey:@"_updateView"];
  objc_storeStrong(&v4, 0);
  objc_storeStrong(location, 0);
}

- (void)setAccessibilityAttributedHint:(id)hint
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, hint);
  v5.receiver = selfCopy;
  v5.super_class = UIBarButtonItemAccessibility;
  [(UIBarButtonItemAccessibility *)&v5 setAccessibilityAttributedHint:location[0]];
  v4 = [(UIBarButtonItemAccessibility *)selfCopy safeValueForKey:@"_view"];
  [v4 setAccessibilityAttributedHint:location[0]];
  v3 = [(UIBarButtonItemAccessibility *)selfCopy safeValueForKey:@"_updateView"];
  objc_storeStrong(&v4, 0);
  objc_storeStrong(location, 0);
}

- (void)_accessibilityLoadAccessibilityInformation
{
  selfCopy = self;
  v5 = a2;
  v4.receiver = self;
  v4.super_class = UIBarButtonItemAccessibility;
  [(UIBarButtonItemAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v2 = selfCopy;
  v3 = [(UIBarButtonItemAccessibility *)selfCopy safeValueForKey:@"view"];
  [(UIBarButtonItemAccessibility *)v2 _accessibilityAddIdForView:v3];
  MEMORY[0x29EDC9740](v3);
}

- (void)dealloc
{
  selfCopy = self;
  v3 = a2;
  [(UIBarButtonItemAccessibility *)self _accessibilityUnregister];
  v2.receiver = selfCopy;
  v2.super_class = UIBarButtonItemAccessibility;
  [(UIBarButtonItemAccessibility *)&v2 dealloc];
}

- (id)createViewForNavigationItem:(id)item
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, item);
  v5.receiver = selfCopy;
  v5.super_class = UIBarButtonItemAccessibility;
  v6 = [(UIBarButtonItemAccessibility *)&v5 createViewForNavigationItem:location[0]];
  [(UIBarButtonItemAccessibility *)selfCopy _accessibilityAddIdForView:v6];
  v4 = MEMORY[0x29EDC9748](v6);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);

  return v4;
}

- (UIBarButtonItemAccessibility)initWithImage:(id)image style:(int64_t)style target:(id)target action:(SEL)action
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, image);
  styleCopy = style;
  v14 = 0;
  objc_storeStrong(&v14, target);
  actionCopy = action;
  v6 = selfCopy;
  selfCopy = 0;
  v12.receiver = v6;
  v12.super_class = UIBarButtonItemAccessibility;
  selfCopy = [(UIBarButtonItemAccessibility *)&v12 initWithImage:location[0] style:styleCopy target:v14 action:action];
  objc_storeStrong(&selfCopy, selfCopy);
  [(UIBarButtonItemAccessibility *)selfCopy _updateAccessibilityLabelForImage:?];
  v11 = MEMORY[0x29EDC9748](selfCopy);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v11;
}

- (void)_updateAccessibilityLabelForImage:(void *)image
{
  imageCopy = image;
  location = 0;
  objc_storeStrong(&location, a2);
  if (imageCopy)
  {
    accessibilityIdentifier = [location accessibilityIdentifier];
    if ([accessibilityIdentifier length])
    {
      v11 = 0;
      configuration = [location configuration];
      objc_opt_class();
      v9 = 0;
      v8 = 0;
      if (objc_opt_isKindOfClass())
      {
        accessibilityLabel = [imageCopy accessibilityLabel];
        v9 = 1;
        v8 = accessibilityLabel == 0;
      }

      if (v9)
      {
        MEMORY[0x29EDC9740](accessibilityLabel);
      }

      MEMORY[0x29EDC9740](configuration);
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
        [imageCopy setAccessibilityLabel:{v11, v4}];
      }

      else
      {
        v5 = imageCopy;
        v6 = [imageCopy _accessibilityRetrieveImagePathLabel:{accessibilityIdentifier, v4}];
        [(UIBarButtonItemAccessibility *)v5 _setAXBarButtonImagePath:v6];
        MEMORY[0x29EDC9740](v6);
      }

      objc_storeStrong(&v11, 0);
    }

    objc_storeStrong(&accessibilityIdentifier, 0);
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  objc_storeStrong(&location, 0);
}

- (UIBarButtonItemAccessibility)initWithImage:(id)image landscapeImagePhone:(id)phone style:(int64_t)style target:(id)target action:(SEL)action
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, image);
  v18 = 0;
  objc_storeStrong(&v18, phone);
  styleCopy = style;
  v16 = 0;
  objc_storeStrong(&v16, target);
  actionCopy = action;
  v7 = selfCopy;
  selfCopy = 0;
  v14.receiver = v7;
  v14.super_class = UIBarButtonItemAccessibility;
  selfCopy = [(UIBarButtonItemAccessibility *)&v14 initWithImage:location[0] landscapeImagePhone:v18 style:styleCopy target:v16 action:action];
  objc_storeStrong(&selfCopy, selfCopy);
  [(UIBarButtonItemAccessibility *)selfCopy _updateAccessibilityLabelForImage:?];
  v13 = MEMORY[0x29EDC9748](selfCopy);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v13;
}

- (void)_setAXBarButtonImagePath:(uint64_t)path
{
  pathCopy = path;
  location = 0;
  objc_storeStrong(&location, a2);
  if (pathCopy)
  {
    __UIAccessibilitySetAssociatedObject();
  }

  objc_storeStrong(&location, 0);
}

- (id)createViewForToolbar:(id)toolbar
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, toolbar);
  v5.receiver = selfCopy;
  v5.super_class = UIBarButtonItemAccessibility;
  v6 = [(UIBarButtonItemAccessibility *)&v5 createViewForToolbar:location[0]];
  [(UIBarButtonItemAccessibility *)selfCopy _accessibilityAddIdForView:v6];
  v4 = MEMORY[0x29EDC9748](v6);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);

  return v4;
}

@end