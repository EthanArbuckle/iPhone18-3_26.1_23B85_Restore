@interface _UIContextMenuCellContentViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityElementsHidden;
- (id)_accessibilityStoredHintFromMenuElement;
- (id)_accessibilityStoredIdentifierFromMenuElement;
- (id)_accessibilityStoredLabelFromMenuElement;
- (id)_accessibilityStoredTraitsFromMenuElement;
- (id)_accessibilityStoredUserInputLabelsFromMenuElement;
- (id)_accessibilityStoredValueFromMenuElement;
- (id)accessibilityHint;
- (id)accessibilityIdentifier;
- (id)accessibilityLabel;
- (id)accessibilityUserInputLabels;
- (id)accessibilityValue;
- (int64_t)_accessibilityExpandedStatus;
- (uint64_t)_accessibilitySetStoredElementsHidden:(uint64_t)result;
- (uint64_t)_accessibilityStoredElementsHidden;
- (unint64_t)accessibilityTraits;
- (void)_accessibilitySetStoredHintFromMenuElement:(uint64_t)element;
- (void)_accessibilitySetStoredIdentifierFromMenuElement:(uint64_t)element;
- (void)_accessibilitySetStoredLabelFromMenuElement:(uint64_t)element;
- (void)_accessibilitySetStoredTraitsFromMenuElement:(uint64_t)element;
- (void)_accessibilitySetStoredUserInputLabelsFromMenuElement:(uint64_t)element;
- (void)_accessibilitySetStoredValueFromMenuElement:(uint64_t)element;
- (void)_updateForOptionsChangeFromPreviousOptions:(unint64_t)options;
@end

@implementation _UIContextMenuCellContentViewAccessibility

- (id)_accessibilityStoredLabelFromMenuElement
{
  if (self)
  {
    v2 = objc_getAssociatedObject(self, &___UIContextMenuCellContentViewAccessibility___accessibilityStoredLabelFromMenuElement);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)_accessibilitySetStoredLabelFromMenuElement:(uint64_t)element
{
  elementCopy = element;
  location = 0;
  objc_storeStrong(&location, a2);
  if (elementCopy)
  {
    __UIAccessibilitySetAssociatedObject();
  }

  objc_storeStrong(&location, 0);
}

- (id)_accessibilityStoredValueFromMenuElement
{
  if (self)
  {
    v2 = objc_getAssociatedObject(self, &___UIContextMenuCellContentViewAccessibility___accessibilityStoredValueFromMenuElement);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)_accessibilitySetStoredValueFromMenuElement:(uint64_t)element
{
  elementCopy = element;
  location = 0;
  objc_storeStrong(&location, a2);
  if (elementCopy)
  {
    __UIAccessibilitySetAssociatedObject();
  }

  objc_storeStrong(&location, 0);
}

- (id)_accessibilityStoredHintFromMenuElement
{
  if (self)
  {
    v2 = objc_getAssociatedObject(self, &___UIContextMenuCellContentViewAccessibility___accessibilityStoredHintFromMenuElement);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)_accessibilitySetStoredHintFromMenuElement:(uint64_t)element
{
  elementCopy = element;
  location = 0;
  objc_storeStrong(&location, a2);
  if (elementCopy)
  {
    __UIAccessibilitySetAssociatedObject();
  }

  objc_storeStrong(&location, 0);
}

- (id)_accessibilityStoredIdentifierFromMenuElement
{
  if (self)
  {
    v2 = objc_getAssociatedObject(self, &___UIContextMenuCellContentViewAccessibility___accessibilityStoredIdentifierFromMenuElement);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)_accessibilitySetStoredIdentifierFromMenuElement:(uint64_t)element
{
  elementCopy = element;
  location = 0;
  objc_storeStrong(&location, a2);
  if (elementCopy)
  {
    __UIAccessibilitySetAssociatedObject();
  }

  objc_storeStrong(&location, 0);
}

- (id)_accessibilityStoredTraitsFromMenuElement
{
  if (self)
  {
    v2 = objc_getAssociatedObject(self, &___UIContextMenuCellContentViewAccessibility___accessibilityStoredTraitsFromMenuElement);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)_accessibilitySetStoredTraitsFromMenuElement:(uint64_t)element
{
  elementCopy = element;
  location = 0;
  objc_storeStrong(&location, a2);
  if (elementCopy)
  {
    __UIAccessibilitySetAssociatedObject();
  }

  objc_storeStrong(&location, 0);
}

- (id)_accessibilityStoredUserInputLabelsFromMenuElement
{
  if (self)
  {
    v2 = objc_getAssociatedObject(self, &___UIContextMenuCellContentViewAccessibility___accessibilityStoredUserInputLabelsFromMenuElement);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)_accessibilitySetStoredUserInputLabelsFromMenuElement:(uint64_t)element
{
  elementCopy = element;
  location = 0;
  objc_storeStrong(&location, a2);
  if (elementCopy)
  {
    __UIAccessibilitySetAssociatedObject();
  }

  objc_storeStrong(&location, 0);
}

- (uint64_t)_accessibilityStoredElementsHidden
{
  if (self)
  {
    v2 = __UIAccessibilityGetAssociatedBool() & 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (uint64_t)_accessibilitySetStoredElementsHidden:(uint64_t)result
{
  if (result)
  {
    return __UIAccessibilitySetAssociatedBool();
  }

  return result;
}

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v9 = location;
  v8 = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v6 = @"_UIContextMenuCellContentView";
  v5 = "@";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v6 hasInstanceMethod:@"subtitleLabel" withFullSignature:{v5, 0}];
  v3 = "Q";
  [location[0] validateClass:v6 hasInstanceMethod:@"options" withFullSignature:0];
  v7 = "v";
  [location[0] validateClass:v6 hasInstanceMethod:@"_updateForOptionsChangeFromPreviousOptions:" withFullSignature:{v3, 0}];
  [location[0] validateClass:v6 hasInstanceMethod:@"iconImageView" withFullSignature:{v5, 0}];
  [location[0] validateClass:v6 hasInstanceMethod:@"keyShortcutInputView" withFullSignature:{v5, 0}];
  v4 = @"_UIKeyboardShortcutView";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v4 hasInstanceMethod:@"inputLabel" withFullSignature:{v5, 0}];
  [location[0] validateClass:v6 hasInstanceMethod:@"layoutSubviews" withFullSignature:{v7, 0}];
  objc_storeStrong(v9, v8);
}

- (unint64_t)accessibilityTraits
{
  selfCopy = self;
  v7 = a2;
  v6 = *MEMORY[0x29EDC7F70];
  v5 = [(_UIContextMenuCellContentViewAccessibility *)self safeUnsignedIntegerForKey:@"options"];
  if ((v5 & 4) == 4)
  {
    v6 |= *MEMORY[0x29EDC7FC0];
  }

  if ((v5 & 1) == 1)
  {
    v6 |= *MEMORY[0x29EDC7FA8];
  }

  location = [(_UIContextMenuCellContentViewAccessibility *)selfCopy _accessibilityStoredTraitsFromMenuElement];
  if (location)
  {
    v6 |= [location unsignedLongLongValue];
  }

  v3 = v6;
  objc_storeStrong(&location, 0);
  return v3;
}

- (int64_t)_accessibilityExpandedStatus
{
  v4 = [(_UIContextMenuCellContentViewAccessibility *)self safeUnsignedIntegerForKey:@"options"];
  if ((v4 & 0x10) == 0)
  {
    return 0;
  }

  v2 = 2;
  if ((v4 & 0x40) != 0)
  {
    return 1;
  }

  return v2;
}

- (id)accessibilityLabel
{
  selfCopy = self;
  v21[1] = a2;
  v21[0] = [(_UIContextMenuCellContentViewAccessibility *)self _accessibilityStoredLabelFromMenuElement];
  if ([v21[0] length])
  {
    accessibilityLabel4 = MEMORY[0x29EDC9748](v21[0]);
    v20 = 1;
  }

  else
  {
    v19 = [(_UIContextMenuCellContentViewAccessibility *)selfCopy _accessibilityStringForLabelKeyValues:@"titleLabel, subtitleLabel"];
    v18 = [(_UIContextMenuCellContentViewAccessibility *)selfCopy safeValueForKey:@"keyShortcutInputView"];
    if (v18)
    {
      v11 = [v18 safeValueForKey:@"modifiersLabel"];
      accessibilityLabel = [v11 accessibilityLabel];
      *&v2 = MEMORY[0x29EDC9740](v11).n128_u64[0];
      v13 = [v18 safeValueForKey:{@"inputLabel", v2}];
      accessibilityLabel2 = [v13 accessibilityLabel];
      lowercaseString = [accessibilityLabel2 lowercaseString];
      MEMORY[0x29EDC9740](accessibilityLabel2);
      MEMORY[0x29EDC9740](v13);
      v7 = accessibilityLabel;
      v8 = lowercaseString;
      v9 = @"__AXStringForVariablesSentinel";
      v3 = __UIAXStringForVariables();
      v4 = v19;
      v19 = v3;
      MEMORY[0x29EDC9740](v4);
      objc_storeStrong(&lowercaseString, 0);
      objc_storeStrong(&accessibilityLabel, 0);
    }

    if ([v19 length])
    {
      accessibilityLabel4 = MEMORY[0x29EDC9748](v19);
      v20 = 1;
    }

    else
    {
      v10 = [(_UIContextMenuCellContentViewAccessibility *)selfCopy safeValueForKey:@"iconImageView"];
      accessibilityLabel3 = [v10 accessibilityLabel];
      if ([accessibilityLabel3 length])
      {
        accessibilityLabel4 = MEMORY[0x29EDC9748](accessibilityLabel3);
      }

      else
      {
        v14.receiver = selfCopy;
        v14.super_class = _UIContextMenuCellContentViewAccessibility;
        accessibilityLabel4 = [(_UIContextMenuCellContentViewAccessibility *)&v14 accessibilityLabel];
      }

      v20 = 1;
      objc_storeStrong(&accessibilityLabel3, 0);
    }

    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v19, 0);
  }

  objc_storeStrong(v21, 0);
  v5 = accessibilityLabel4;

  return v5;
}

- (id)accessibilityValue
{
  selfCopy = self;
  location[1] = a2;
  location[0] = [(_UIContextMenuCellContentViewAccessibility *)self _accessibilityStoredValueFromMenuElement];
  if ([location[0] length])
  {
    accessibilityValue = MEMORY[0x29EDC9748](location[0]);
  }

  else
  {
    v4.receiver = selfCopy;
    v4.super_class = _UIContextMenuCellContentViewAccessibility;
    accessibilityValue = [(_UIContextMenuCellContentViewAccessibility *)&v4 accessibilityValue];
  }

  v5 = 1;
  objc_storeStrong(location, 0);
  v2 = accessibilityValue;

  return v2;
}

- (id)accessibilityHint
{
  selfCopy = self;
  location[1] = a2;
  location[0] = [(_UIContextMenuCellContentViewAccessibility *)self _accessibilityStoredHintFromMenuElement];
  if ([location[0] length])
  {
    accessibilityHint = MEMORY[0x29EDC9748](location[0]);
  }

  else
  {
    v4.receiver = selfCopy;
    v4.super_class = _UIContextMenuCellContentViewAccessibility;
    accessibilityHint = [(_UIContextMenuCellContentViewAccessibility *)&v4 accessibilityHint];
  }

  v5 = 1;
  objc_storeStrong(location, 0);
  v2 = accessibilityHint;

  return v2;
}

- (id)accessibilityIdentifier
{
  selfCopy = self;
  location[1] = a2;
  location[0] = [(_UIContextMenuCellContentViewAccessibility *)self _accessibilityStoredIdentifierFromMenuElement];
  if ([location[0] length])
  {
    accessibilityIdentifier = MEMORY[0x29EDC9748](location[0]);
  }

  else
  {
    v4.receiver = selfCopy;
    v4.super_class = _UIContextMenuCellContentViewAccessibility;
    accessibilityIdentifier = [(_UIContextMenuCellContentViewAccessibility *)&v4 accessibilityIdentifier];
  }

  v5 = 1;
  objc_storeStrong(location, 0);
  v2 = accessibilityIdentifier;

  return v2;
}

- (id)accessibilityUserInputLabels
{
  selfCopy = self;
  location[1] = a2;
  location[0] = [(_UIContextMenuCellContentViewAccessibility *)self _accessibilityStoredUserInputLabelsFromMenuElement];
  if ([location[0] count])
  {
    accessibilityUserInputLabels = MEMORY[0x29EDC9748](location[0]);
  }

  else
  {
    v4.receiver = selfCopy;
    v4.super_class = _UIContextMenuCellContentViewAccessibility;
    accessibilityUserInputLabels = [(_UIContextMenuCellContentViewAccessibility *)&v4 accessibilityUserInputLabels];
  }

  v5 = 1;
  objc_storeStrong(location, 0);
  v2 = accessibilityUserInputLabels;

  return v2;
}

- (BOOL)accessibilityElementsHidden
{
  selfCopy = self;
  v8 = a2;
  storedAccessibilityElementsHidden = [(_UIContextMenuCellContentViewAccessibility *)self storedAccessibilityElementsHidden];
  *&v2 = MEMORY[0x29EDC9740](storedAccessibilityElementsHidden).n128_u64[0];
  if (storedAccessibilityElementsHidden)
  {
    storedAccessibilityElementsHidden2 = [(_UIContextMenuCellContentViewAccessibility *)selfCopy storedAccessibilityElementsHidden];
    v10 = [storedAccessibilityElementsHidden2 BOOLValue] & 1;
    MEMORY[0x29EDC9740](storedAccessibilityElementsHidden2);
  }

  else
  {
    _accessibilityStoredElementsHidden = [(_UIContextMenuCellContentViewAccessibility *)selfCopy _accessibilityStoredElementsHidden];
    if (_accessibilityStoredElementsHidden)
    {
      return _accessibilityStoredElementsHidden & 1;
    }

    else
    {
      v6.receiver = selfCopy;
      v6.super_class = _UIContextMenuCellContentViewAccessibility;
      return [(_UIContextMenuCellContentViewAccessibility *)&v6 accessibilityElementsHidden];
    }
  }

  return v10;
}

- (void)_updateForOptionsChangeFromPreviousOptions:(unint64_t)options
{
  selfCopy = self;
  v6 = a2;
  optionsCopy = options;
  v4.receiver = self;
  v4.super_class = _UIContextMenuCellContentViewAccessibility;
  [(_UIContextMenuCellContentViewAccessibility *)&v4 _updateForOptionsChangeFromPreviousOptions:options];
  v3 = [(_UIContextMenuCellContentViewAccessibility *)selfCopy safeUnsignedIntegerForKey:@"options"];
  if ((optionsCopy & 0x40) == 0 && (v3 & 0x40) != 0)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
  }
}

@end