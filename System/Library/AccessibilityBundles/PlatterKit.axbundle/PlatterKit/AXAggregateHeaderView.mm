@interface AXAggregateHeaderView
- (AXAggregateHeaderView)initWithAccessibilityContainer:(id)container iconButtons:(id)buttons dateLabel:(id)label titleLabel:(id)titleLabel;
- (BOOL)_axIsHeaderViewActionable;
- (BOOL)accessibilityActivate;
- (CGPoint)accessibilityActivationPoint;
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation AXAggregateHeaderView

- (AXAggregateHeaderView)initWithAccessibilityContainer:(id)container iconButtons:(id)buttons dateLabel:(id)label titleLabel:(id)titleLabel
{
  v31 = *MEMORY[0x29EDCA608];
  containerCopy = container;
  buttonsCopy = buttons;
  labelCopy = label;
  titleLabelCopy = titleLabel;
  array = [MEMORY[0x29EDB8DE8] array];
  [array axSafelyAddObjectsFromArray:buttonsCopy];
  [array axSafelyAddObject:titleLabelCopy];
  [array axSafelyAddObject:labelCopy];
  v29.receiver = self;
  v29.super_class = AXAggregateHeaderView;
  v15 = [(UIAccessibilityAggregateElement *)&v29 initWithAccessibilityContainer:containerCopy representedElements:array];
  v16 = v15;
  if (v15)
  {
    v24 = containerCopy;
    objc_storeStrong(&v15->_iconButtons, buttons);
    objc_storeStrong(&v16->_titleLabel, titleLabel);
    objc_storeStrong(&v16->_dateLabel, label);
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v17 = v16->_iconButtons;
    v18 = [(NSArray *)v17 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v26;
      do
      {
        v21 = 0;
        do
        {
          if (*v26 != v20)
          {
            objc_enumerationMutation(v17);
          }

          [*(*(&v25 + 1) + 8 * v21++) accessibilitySetIdentification:@"HeaderAppIcon"];
        }

        while (v19 != v21);
        v19 = [(NSArray *)v17 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v19);
    }

    containerCopy = v24;
  }

  v22 = *MEMORY[0x29EDCA608];
  return v16;
}

- (CGPoint)accessibilityActivationPoint
{
  iconButtons = [(AXAggregateHeaderView *)self iconButtons];
  firstObject = [iconButtons firstObject];
  [firstObject accessibilityActivationPoint];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.y = v9;
  result.x = v8;
  return result;
}

- (BOOL)accessibilityActivate
{
  iconButtons = [(AXAggregateHeaderView *)self iconButtons];
  v4 = [iconButtons count];

  if (v4 >= 2)
  {
    selfCopy = self;
    _AXAssert();
  }

  _axIsHeaderViewActionable = [(AXAggregateHeaderView *)self _axIsHeaderViewActionable];
  if (_axIsHeaderViewActionable)
  {
    objc_opt_class();
    iconButtons2 = [(AXAggregateHeaderView *)self iconButtons];
    firstObject = [iconButtons2 firstObject];
    v8 = __UIAccessibilityCastAsClass();

    [v8 sendActionsForControlEvents:64];
  }

  return _axIsHeaderViewActionable;
}

- (id)accessibilityLabel
{
  titleLabel = [(AXAggregateHeaderView *)self titleLabel];
  accessibilityLabel = [titleLabel accessibilityLabel];
  dateLabel = [(AXAggregateHeaderView *)self dateLabel];
  accessibilityLabel2 = [dateLabel accessibilityLabel];
  v6 = __UIAXStringForVariables();

  return v6;
}

- (id)accessibilityHint
{
  if ([(AXAggregateHeaderView *)self _axIsHeaderViewActionable])
  {
    v3 = MEMORY[0x29EDBA0F8];
    v4 = accessibilityLocalizedString(@"notification.icon.button.hint");
    titleLabel = [(AXAggregateHeaderView *)self titleLabel];
    accessibilityLabel = [titleLabel accessibilityLabel];
    v7 = [v3 stringWithFormat:v4, accessibilityLabel];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)accessibilityTraits
{
  _axIsHeaderViewActionable = [(AXAggregateHeaderView *)self _axIsHeaderViewActionable];
  v3 = *MEMORY[0x29EDC7F70];
  if (!_axIsHeaderViewActionable)
  {
    v3 = 0;
  }

  return v3 | *MEMORY[0x29EDC7F80];
}

- (id)_accessibilitySupplementaryFooterViews
{
  iconButtons = [(AXAggregateHeaderView *)self iconButtons];
  v4 = [iconButtons count];

  if (v4 < 2)
  {
    v9.receiver = self;
    v9.super_class = AXAggregateHeaderView;
    _accessibilitySupplementaryFooterViews = [(AXAggregateHeaderView *)&v9 _accessibilitySupplementaryFooterViews];
  }

  else
  {
    iconButtons2 = [(AXAggregateHeaderView *)self iconButtons];
    iconButtons3 = [(AXAggregateHeaderView *)self iconButtons];
    _accessibilitySupplementaryFooterViews = [iconButtons2 subarrayWithRange:{1, objc_msgSend(iconButtons3, "count") - 1}];
  }

  return _accessibilitySupplementaryFooterViews;
}

- (BOOL)_axIsHeaderViewActionable
{
  titleLabel = [(AXAggregateHeaderView *)self titleLabel];
  accessibilityLabel = [titleLabel accessibilityLabel];
  if ([accessibilityLabel length])
  {
    iconButtons = [(AXAggregateHeaderView *)self iconButtons];
    firstObject = [iconButtons firstObject];
    if ([firstObject _accessibilityViewIsVisible])
    {
      iconButtons2 = [(AXAggregateHeaderView *)self iconButtons];
      firstObject2 = [iconButtons2 firstObject];
      allTargets = [firstObject2 allTargets];
      v10 = [allTargets count] != 0;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end