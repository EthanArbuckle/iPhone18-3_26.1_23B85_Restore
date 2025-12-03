@interface BuddyUITableViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)isAccessibilityElement;
- (CGRect)accessibilityFrame;
- (id)_accessibilityScannerGroupElements;
- (id)_accessibilitySupplementaryHeaderViews;
- (id)_axChoiceController;
- (id)_axPrimaryChoiceButton;
- (id)_axSecondaryChoiceButton;
- (id)_axSortedAccessibleSubviews;
- (id)accessibilityElementAtIndex:(int64_t)index;
- (int64_t)accessibilityElementCount;
- (int64_t)indexOfAccessibilityElement:(id)element;
@end

@implementation BuddyUITableViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SetupChoiceController"];
  [validationsCopy validateClass:@"SetupChoiceController" hasInstanceVariable:@"_primaryChoiceButton" withType:"UIButton"];
  [validationsCopy validateClass:@"SetupChoiceController" hasInstanceVariable:@"_secondaryChoiceButton" withType:"UIButton"];
}

- (BOOL)isAccessibilityElement
{
  accessibilityIdentifier = [(BuddyUITableViewAccessibility *)self accessibilityIdentifier];
  v4 = [accessibilityIdentifier isEqualToString:@"BuddyMagnifyView"];

  if (v4)
  {
    return 0;
  }

  v6 = [(BuddyUITableViewAccessibility *)self safeValueForKey:@"delegate"];
  NSClassFromString(&cfstr_Buddytableview.isa);
  if (objc_opt_isKindOfClass() & 1) != 0 || (NSClassFromString(&cfstr_Cdptableviewco.isa), (objc_opt_isKindOfClass()))
  {
    isAccessibilityElement = 0;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = BuddyUITableViewAccessibility;
    isAccessibilityElement = [(BuddyUITableViewAccessibility *)&v8 isAccessibilityElement];
  }

  return isAccessibilityElement;
}

- (id)_axSortedAccessibleSubviews
{
  v2 = [(BuddyUITableViewAccessibility *)self safeValueForKey:@"_accessibleSubviews"];
  v3 = [v2 sortedArrayUsingSelector:sel_accessibilityCompareGeometry_];

  return v3;
}

- (id)_axChoiceController
{
  if (_axChoiceController_onceToken != -1)
  {
    [BuddyUITableViewAccessibility _axChoiceController];
  }

  delegate = [(BuddyUITableViewAccessibility *)self delegate];
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    delegate = 0;
  }

  return delegate;
}

Class __52__BuddyUITableViewAccessibility__axChoiceController__block_invoke()
{
  result = NSClassFromString(&cfstr_Setupchoicecon.isa);
  _axChoiceController_SetupChoiceControllerClass = result;
  return result;
}

- (id)_axPrimaryChoiceButton
{
  _axChoiceController = [(BuddyUITableViewAccessibility *)self _axChoiceController];
  v3 = [_axChoiceController safeValueForKey:@"_primaryChoiceButton"];

  return v3;
}

- (id)_axSecondaryChoiceButton
{
  _axChoiceController = [(BuddyUITableViewAccessibility *)self _axChoiceController];
  v3 = [_axChoiceController safeValueForKey:@"_secondaryChoiceButton"];

  return v3;
}

- (int64_t)accessibilityElementCount
{
  accessibilityIdentifier = [(BuddyUITableViewAccessibility *)self accessibilityIdentifier];
  v4 = [accessibilityIdentifier isEqualToString:@"BuddyMagnifyView"];

  if (v4)
  {
    _axSortedAccessibleSubviews = [(BuddyUITableViewAccessibility *)self _axSortedAccessibleSubviews];
    v6 = [_axSortedAccessibleSubviews count];

    return v6;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = BuddyUITableViewAccessibility;
    accessibilityElementCount = [(BuddyUITableViewAccessibility *)&v11 accessibilityElementCount];
    result = 0x7FFFFFFFFFFFFFFFLL;
    if (accessibilityElementCount != 0x7FFFFFFFFFFFFFFFLL)
    {
      _axPrimaryChoiceButton = [(BuddyUITableViewAccessibility *)self _axPrimaryChoiceButton];

      if (_axPrimaryChoiceButton)
      {
        ++accessibilityElementCount;
      }

      _axSecondaryChoiceButton = [(BuddyUITableViewAccessibility *)self _axSecondaryChoiceButton];

      if (_axSecondaryChoiceButton)
      {
        return (accessibilityElementCount + 1);
      }

      else
      {
        return accessibilityElementCount;
      }
    }
  }

  return result;
}

- (id)_accessibilityScannerGroupElements
{
  _axPrimaryChoiceButton = [(BuddyUITableViewAccessibility *)self _axPrimaryChoiceButton];
  _axSecondaryChoiceButton = [(BuddyUITableViewAccessibility *)self _axSecondaryChoiceButton];
  if (_axPrimaryChoiceButton | _axSecondaryChoiceButton || (-[BuddyUITableViewAccessibility accessibilityIdentifier](self, "accessibilityIdentifier"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isEqualToString:@"BuddyMagnifyView"], v5, (v6 & 1) != 0))
  {
    _accessibilityScannerGroupElements = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = BuddyUITableViewAccessibility;
    _accessibilityScannerGroupElements = [(BuddyUITableViewAccessibility *)&v9 _accessibilityScannerGroupElements];
  }

  return _accessibilityScannerGroupElements;
}

- (id)accessibilityElementAtIndex:(int64_t)index
{
  accessibilityIdentifier = [(BuddyUITableViewAccessibility *)self accessibilityIdentifier];
  v6 = [accessibilityIdentifier isEqualToString:@"BuddyMagnifyView"];

  if (v6)
  {
    _axSortedAccessibleSubviews = [(BuddyUITableViewAccessibility *)self _axSortedAccessibleSubviews];
    v8 = [_axSortedAccessibleSubviews objectAtIndex:index];

    goto LABEL_17;
  }

  _axPrimaryChoiceButton = [(BuddyUITableViewAccessibility *)self _axPrimaryChoiceButton];
  _axSecondaryChoiceButton = [(BuddyUITableViewAccessibility *)self _axSecondaryChoiceButton];
  if (!(_axPrimaryChoiceButton | _axSecondaryChoiceButton))
  {
    goto LABEL_15;
  }

  accessibilityElementCount = [(BuddyUITableViewAccessibility *)self accessibilityElementCount];
  if (accessibilityElementCount == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_15;
  }

  v12 = accessibilityElementCount - 1;
  if (_axPrimaryChoiceButton && _axSecondaryChoiceButton)
  {
    if (v12 != index)
    {
      v12 = accessibilityElementCount - 2;
      goto LABEL_10;
    }

LABEL_14:
    v13 = _axSecondaryChoiceButton;
    goto LABEL_16;
  }

  if (!_axPrimaryChoiceButton)
  {
    if (!_axSecondaryChoiceButton || v12 != index)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_10:
  if (v12 != index)
  {
LABEL_15:
    v15.receiver = self;
    v15.super_class = BuddyUITableViewAccessibility;
    v13 = [(BuddyUITableViewAccessibility *)&v15 accessibilityElementAtIndex:index];
    goto LABEL_16;
  }

  v13 = _axPrimaryChoiceButton;
LABEL_16:
  v8 = v13;

LABEL_17:

  return v8;
}

- (int64_t)indexOfAccessibilityElement:(id)element
{
  elementCopy = element;
  accessibilityIdentifier = [(BuddyUITableViewAccessibility *)self accessibilityIdentifier];
  v6 = [accessibilityIdentifier isEqualToString:@"BuddyMagnifyView"];

  if (!v6)
  {
    _axPrimaryChoiceButton = [(BuddyUITableViewAccessibility *)self _axPrimaryChoiceButton];
    _axSecondaryChoiceButton = [(BuddyUITableViewAccessibility *)self _axSecondaryChoiceButton];
    if (!(_axPrimaryChoiceButton | _axSecondaryChoiceButton))
    {
      goto LABEL_5;
    }

    accessibilityElementCount = [(BuddyUITableViewAccessibility *)self accessibilityElementCount];
    if (accessibilityElementCount == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_5;
    }

    if (_axPrimaryChoiceButton && _axSecondaryChoiceButton)
    {
      if (_axSecondaryChoiceButton != elementCopy)
      {
        if (_axPrimaryChoiceButton == elementCopy)
        {
          v8 = (accessibilityElementCount - 2);
          goto LABEL_6;
        }

LABEL_5:
        v12.receiver = self;
        v12.super_class = BuddyUITableViewAccessibility;
        v8 = [(BuddyUITableViewAccessibility *)&v12 indexOfAccessibilityElement:elementCopy];
LABEL_6:

        goto LABEL_7;
      }
    }

    else if (_axPrimaryChoiceButton)
    {
      if (_axPrimaryChoiceButton != elementCopy)
      {
        goto LABEL_5;
      }
    }

    else if (!_axSecondaryChoiceButton || _axSecondaryChoiceButton != elementCopy)
    {
      goto LABEL_5;
    }

    v8 = (accessibilityElementCount - 1);
    goto LABEL_6;
  }

  _axPrimaryChoiceButton = [(BuddyUITableViewAccessibility *)self _axSortedAccessibleSubviews];
  v8 = [_axPrimaryChoiceButton indexOfObject:elementCopy];
LABEL_7:

  return v8;
}

- (id)_accessibilitySupplementaryHeaderViews
{
  accessibilityIdentifier = [(BuddyUITableViewAccessibility *)self accessibilityIdentifier];
  v4 = [accessibilityIdentifier isEqualToString:@"BuddyMagnifyView"];

  if (v4)
  {
    _accessibilitySupplementaryHeaderViews = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = BuddyUITableViewAccessibility;
    _accessibilitySupplementaryHeaderViews = [(BuddyUITableViewAccessibility *)&v7 _accessibilitySupplementaryHeaderViews];
  }

  return _accessibilitySupplementaryHeaderViews;
}

- (CGRect)accessibilityFrame
{
  accessibilityIdentifier = [(BuddyUITableViewAccessibility *)self accessibilityIdentifier];
  v4 = [accessibilityIdentifier isEqualToString:@"BuddyTableView"];

  if (v4)
  {
    [(BuddyUITableViewAccessibility *)self bounds];
    delegate = [(BuddyUITableViewAccessibility *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate tableView:self heightForHeaderInSection:{0, 0.0}];
    }

    UIAccessibilityFrameForBounds();
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
  }

  else
  {
    v22.receiver = self;
    v22.super_class = BuddyUITableViewAccessibility;
    [(BuddyUITableViewAccessibility *)&v22 accessibilityFrame];
    v7 = v14;
    v9 = v15;
    v11 = v16;
    v13 = v17;
  }

  v18 = v7;
  v19 = v9;
  v20 = v11;
  v21 = v13;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

@end