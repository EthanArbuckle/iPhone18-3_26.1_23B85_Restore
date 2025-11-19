@interface _UIContextMenuCellContentViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
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
- (void)_accessibilitySetStoredHintFromMenuElement:(uint64_t)a1;
- (void)_accessibilitySetStoredIdentifierFromMenuElement:(uint64_t)a1;
- (void)_accessibilitySetStoredLabelFromMenuElement:(uint64_t)a1;
- (void)_accessibilitySetStoredTraitsFromMenuElement:(uint64_t)a1;
- (void)_accessibilitySetStoredUserInputLabelsFromMenuElement:(uint64_t)a1;
- (void)_accessibilitySetStoredValueFromMenuElement:(uint64_t)a1;
- (void)_updateForOptionsChangeFromPreviousOptions:(unint64_t)a3;
@end

@implementation _UIContextMenuCellContentViewAccessibility

- (id)_accessibilityStoredLabelFromMenuElement
{
  if (a1)
  {
    v2 = objc_getAssociatedObject(a1, &___UIContextMenuCellContentViewAccessibility___accessibilityStoredLabelFromMenuElement);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)_accessibilitySetStoredLabelFromMenuElement:(uint64_t)a1
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

- (id)_accessibilityStoredValueFromMenuElement
{
  if (a1)
  {
    v2 = objc_getAssociatedObject(a1, &___UIContextMenuCellContentViewAccessibility___accessibilityStoredValueFromMenuElement);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)_accessibilitySetStoredValueFromMenuElement:(uint64_t)a1
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

- (id)_accessibilityStoredHintFromMenuElement
{
  if (a1)
  {
    v2 = objc_getAssociatedObject(a1, &___UIContextMenuCellContentViewAccessibility___accessibilityStoredHintFromMenuElement);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)_accessibilitySetStoredHintFromMenuElement:(uint64_t)a1
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

- (id)_accessibilityStoredIdentifierFromMenuElement
{
  if (a1)
  {
    v2 = objc_getAssociatedObject(a1, &___UIContextMenuCellContentViewAccessibility___accessibilityStoredIdentifierFromMenuElement);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)_accessibilitySetStoredIdentifierFromMenuElement:(uint64_t)a1
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

- (id)_accessibilityStoredTraitsFromMenuElement
{
  if (a1)
  {
    v2 = objc_getAssociatedObject(a1, &___UIContextMenuCellContentViewAccessibility___accessibilityStoredTraitsFromMenuElement);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)_accessibilitySetStoredTraitsFromMenuElement:(uint64_t)a1
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

- (id)_accessibilityStoredUserInputLabelsFromMenuElement
{
  if (a1)
  {
    v2 = objc_getAssociatedObject(a1, &___UIContextMenuCellContentViewAccessibility___accessibilityStoredUserInputLabelsFromMenuElement);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)_accessibilitySetStoredUserInputLabelsFromMenuElement:(uint64_t)a1
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

- (uint64_t)_accessibilityStoredElementsHidden
{
  if (a1)
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

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v9 = location;
  v8 = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
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
  v8 = self;
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

  location = [(_UIContextMenuCellContentViewAccessibility *)v8 _accessibilityStoredTraitsFromMenuElement];
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
  v22 = self;
  v21[1] = a2;
  v21[0] = [(_UIContextMenuCellContentViewAccessibility *)self _accessibilityStoredLabelFromMenuElement];
  if ([v21[0] length])
  {
    v23 = MEMORY[0x29EDC9748](v21[0]);
    v20 = 1;
  }

  else
  {
    v19 = [(_UIContextMenuCellContentViewAccessibility *)v22 _accessibilityStringForLabelKeyValues:@"titleLabel, subtitleLabel"];
    v18 = [(_UIContextMenuCellContentViewAccessibility *)v22 safeValueForKey:@"keyShortcutInputView"];
    if (v18)
    {
      v11 = [v18 safeValueForKey:@"modifiersLabel"];
      v17 = [v11 accessibilityLabel];
      *&v2 = MEMORY[0x29EDC9740](v11).n128_u64[0];
      v13 = [v18 safeValueForKey:{@"inputLabel", v2}];
      v12 = [v13 accessibilityLabel];
      v16 = [v12 lowercaseString];
      MEMORY[0x29EDC9740](v12);
      MEMORY[0x29EDC9740](v13);
      v7 = v17;
      v8 = v16;
      v9 = @"__AXStringForVariablesSentinel";
      v3 = __UIAXStringForVariables();
      v4 = v19;
      v19 = v3;
      MEMORY[0x29EDC9740](v4);
      objc_storeStrong(&v16, 0);
      objc_storeStrong(&v17, 0);
    }

    if ([v19 length])
    {
      v23 = MEMORY[0x29EDC9748](v19);
      v20 = 1;
    }

    else
    {
      v10 = [(_UIContextMenuCellContentViewAccessibility *)v22 safeValueForKey:@"iconImageView"];
      v15 = [v10 accessibilityLabel];
      if ([v15 length])
      {
        v23 = MEMORY[0x29EDC9748](v15);
      }

      else
      {
        v14.receiver = v22;
        v14.super_class = _UIContextMenuCellContentViewAccessibility;
        v23 = [(_UIContextMenuCellContentViewAccessibility *)&v14 accessibilityLabel];
      }

      v20 = 1;
      objc_storeStrong(&v15, 0);
    }

    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v19, 0);
  }

  objc_storeStrong(v21, 0);
  v5 = v23;

  return v5;
}

- (id)accessibilityValue
{
  v7 = self;
  location[1] = a2;
  location[0] = [(_UIContextMenuCellContentViewAccessibility *)self _accessibilityStoredValueFromMenuElement];
  if ([location[0] length])
  {
    v8 = MEMORY[0x29EDC9748](location[0]);
  }

  else
  {
    v4.receiver = v7;
    v4.super_class = _UIContextMenuCellContentViewAccessibility;
    v8 = [(_UIContextMenuCellContentViewAccessibility *)&v4 accessibilityValue];
  }

  v5 = 1;
  objc_storeStrong(location, 0);
  v2 = v8;

  return v2;
}

- (id)accessibilityHint
{
  v7 = self;
  location[1] = a2;
  location[0] = [(_UIContextMenuCellContentViewAccessibility *)self _accessibilityStoredHintFromMenuElement];
  if ([location[0] length])
  {
    v8 = MEMORY[0x29EDC9748](location[0]);
  }

  else
  {
    v4.receiver = v7;
    v4.super_class = _UIContextMenuCellContentViewAccessibility;
    v8 = [(_UIContextMenuCellContentViewAccessibility *)&v4 accessibilityHint];
  }

  v5 = 1;
  objc_storeStrong(location, 0);
  v2 = v8;

  return v2;
}

- (id)accessibilityIdentifier
{
  v7 = self;
  location[1] = a2;
  location[0] = [(_UIContextMenuCellContentViewAccessibility *)self _accessibilityStoredIdentifierFromMenuElement];
  if ([location[0] length])
  {
    v8 = MEMORY[0x29EDC9748](location[0]);
  }

  else
  {
    v4.receiver = v7;
    v4.super_class = _UIContextMenuCellContentViewAccessibility;
    v8 = [(_UIContextMenuCellContentViewAccessibility *)&v4 accessibilityIdentifier];
  }

  v5 = 1;
  objc_storeStrong(location, 0);
  v2 = v8;

  return v2;
}

- (id)accessibilityUserInputLabels
{
  v7 = self;
  location[1] = a2;
  location[0] = [(_UIContextMenuCellContentViewAccessibility *)self _accessibilityStoredUserInputLabelsFromMenuElement];
  if ([location[0] count])
  {
    v8 = MEMORY[0x29EDC9748](location[0]);
  }

  else
  {
    v4.receiver = v7;
    v4.super_class = _UIContextMenuCellContentViewAccessibility;
    v8 = [(_UIContextMenuCellContentViewAccessibility *)&v4 accessibilityUserInputLabels];
  }

  v5 = 1;
  objc_storeStrong(location, 0);
  v2 = v8;

  return v2;
}

- (BOOL)accessibilityElementsHidden
{
  v9 = self;
  v8 = a2;
  v5 = [(_UIContextMenuCellContentViewAccessibility *)self storedAccessibilityElementsHidden];
  *&v2 = MEMORY[0x29EDC9740](v5).n128_u64[0];
  if (v5)
  {
    v4 = [(_UIContextMenuCellContentViewAccessibility *)v9 storedAccessibilityElementsHidden];
    v10 = [v4 BOOLValue] & 1;
    MEMORY[0x29EDC9740](v4);
  }

  else
  {
    v7 = [(_UIContextMenuCellContentViewAccessibility *)v9 _accessibilityStoredElementsHidden];
    if (v7)
    {
      return v7 & 1;
    }

    else
    {
      v6.receiver = v9;
      v6.super_class = _UIContextMenuCellContentViewAccessibility;
      return [(_UIContextMenuCellContentViewAccessibility *)&v6 accessibilityElementsHidden];
    }
  }

  return v10;
}

- (void)_updateForOptionsChangeFromPreviousOptions:(unint64_t)a3
{
  v7 = self;
  v6 = a2;
  v5 = a3;
  v4.receiver = self;
  v4.super_class = _UIContextMenuCellContentViewAccessibility;
  [(_UIContextMenuCellContentViewAccessibility *)&v4 _updateForOptionsChangeFromPreviousOptions:a3];
  v3 = [(_UIContextMenuCellContentViewAccessibility *)v7 safeUnsignedIntegerForKey:@"options"];
  if ((v5 & 0x40) == 0 && (v3 & 0x40) != 0)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
  }
}

@end