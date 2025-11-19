@interface AXAggregateHeaderView
- (AXAggregateHeaderView)initWithAccessibilityContainer:(id)a3 iconButtons:(id)a4 dateLabel:(id)a5 titleLabel:(id)a6;
- (BOOL)_axIsHeaderViewActionable;
- (BOOL)accessibilityActivate;
- (CGPoint)accessibilityActivationPoint;
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation AXAggregateHeaderView

- (AXAggregateHeaderView)initWithAccessibilityContainer:(id)a3 iconButtons:(id)a4 dateLabel:(id)a5 titleLabel:(id)a6
{
  v31 = *MEMORY[0x29EDCA608];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [MEMORY[0x29EDB8DE8] array];
  [v14 axSafelyAddObjectsFromArray:v11];
  [v14 axSafelyAddObject:v13];
  [v14 axSafelyAddObject:v12];
  v29.receiver = self;
  v29.super_class = AXAggregateHeaderView;
  v15 = [(UIAccessibilityAggregateElement *)&v29 initWithAccessibilityContainer:v10 representedElements:v14];
  v16 = v15;
  if (v15)
  {
    v24 = v10;
    objc_storeStrong(&v15->_iconButtons, a4);
    objc_storeStrong(&v16->_titleLabel, a6);
    objc_storeStrong(&v16->_dateLabel, a5);
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

    v10 = v24;
  }

  v22 = *MEMORY[0x29EDCA608];
  return v16;
}

- (CGPoint)accessibilityActivationPoint
{
  v2 = [(AXAggregateHeaderView *)self iconButtons];
  v3 = [v2 firstObject];
  [v3 accessibilityActivationPoint];
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
  v3 = [(AXAggregateHeaderView *)self iconButtons];
  v4 = [v3 count];

  if (v4 >= 2)
  {
    v10 = self;
    _AXAssert();
  }

  v5 = [(AXAggregateHeaderView *)self _axIsHeaderViewActionable];
  if (v5)
  {
    objc_opt_class();
    v6 = [(AXAggregateHeaderView *)self iconButtons];
    v7 = [v6 firstObject];
    v8 = __UIAccessibilityCastAsClass();

    [v8 sendActionsForControlEvents:64];
  }

  return v5;
}

- (id)accessibilityLabel
{
  v3 = [(AXAggregateHeaderView *)self titleLabel];
  v4 = [v3 accessibilityLabel];
  v5 = [(AXAggregateHeaderView *)self dateLabel];
  v8 = [v5 accessibilityLabel];
  v6 = __UIAXStringForVariables();

  return v6;
}

- (id)accessibilityHint
{
  if ([(AXAggregateHeaderView *)self _axIsHeaderViewActionable])
  {
    v3 = MEMORY[0x29EDBA0F8];
    v4 = accessibilityLocalizedString(@"notification.icon.button.hint");
    v5 = [(AXAggregateHeaderView *)self titleLabel];
    v6 = [v5 accessibilityLabel];
    v7 = [v3 stringWithFormat:v4, v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)accessibilityTraits
{
  v2 = [(AXAggregateHeaderView *)self _axIsHeaderViewActionable];
  v3 = *MEMORY[0x29EDC7F70];
  if (!v2)
  {
    v3 = 0;
  }

  return v3 | *MEMORY[0x29EDC7F80];
}

- (id)_accessibilitySupplementaryFooterViews
{
  v3 = [(AXAggregateHeaderView *)self iconButtons];
  v4 = [v3 count];

  if (v4 < 2)
  {
    v9.receiver = self;
    v9.super_class = AXAggregateHeaderView;
    v7 = [(AXAggregateHeaderView *)&v9 _accessibilitySupplementaryFooterViews];
  }

  else
  {
    v5 = [(AXAggregateHeaderView *)self iconButtons];
    v6 = [(AXAggregateHeaderView *)self iconButtons];
    v7 = [v5 subarrayWithRange:{1, objc_msgSend(v6, "count") - 1}];
  }

  return v7;
}

- (BOOL)_axIsHeaderViewActionable
{
  v3 = [(AXAggregateHeaderView *)self titleLabel];
  v4 = [v3 accessibilityLabel];
  if ([v4 length])
  {
    v5 = [(AXAggregateHeaderView *)self iconButtons];
    v6 = [v5 firstObject];
    if ([v6 _accessibilityViewIsVisible])
    {
      v7 = [(AXAggregateHeaderView *)self iconButtons];
      v8 = [v7 firstObject];
      v9 = [v8 allTargets];
      v10 = [v9 count] != 0;
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