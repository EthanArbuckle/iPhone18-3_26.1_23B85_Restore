@interface WGWidgetListEditViewTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_axIsAddCell;
- (BOOL)accessibilityActivate;
- (CGPoint)accessibilityActivationPoint;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation WGWidgetListEditViewTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"UITableViewCell" hasInstanceMethod:@"textLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UILabel" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WGWidgetListEditViewTableViewCell" hasInstanceMethod:@"showsDot" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"UITableViewCellAccessibility" hasInstanceMethod:@"_accessibilityCellEditingControl" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UITableViewCellAccessibility" hasInstanceMethod:@"_accessibilityCellReorderControl" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = &stru_2A23BC4B0;
  if ([(WGWidgetListEditViewTableViewCellAccessibility *)self _axIsAddCell])
  {
    v3 = accessibilityLocalizedString(@"add.widget");
  }

  objc_opt_class();
  v4 = [(WGWidgetListEditViewTableViewCellAccessibility *)self safeValueForKeyPath:@"textLabel.text"];
  v5 = __UIAccessibilityCastAsClass();

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = &stru_2A23BC4B0;
  }

  v7 = v6;

  v8 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", v3, v7];

  if (([(WGWidgetListEditViewTableViewCellAccessibility *)self safeBoolForKey:@"showsDot"]& 1) != 0)
  {
    v11 = accessibilityLocalizedString(@"new.widget");
    v9 = __UIAXStringForVariables();
  }

  else
  {
    v9 = __UIAXStringForVariables();
  }

  return v9;
}

- (unint64_t)accessibilityTraits
{
  v2 = *MEMORY[0x29EDC7F70];
  _axIsAddCell = [(WGWidgetListEditViewTableViewCellAccessibility *)self _axIsAddCell];
  v4 = *MEMORY[0x29EDC7510];
  if (_axIsAddCell)
  {
    v4 = 0;
  }

  return v4 | v2;
}

- (BOOL)accessibilityActivate
{
  if ([(WGWidgetListEditViewTableViewCellAccessibility *)self _axIsAddCell])
  {
    LOBYTE(v9) = 0;
    objc_opt_class();
    v3 = [(WGWidgetListEditViewTableViewCellAccessibility *)self safeValueForKey:@"_accessibilityCellEditingControl"];
    v4 = __UIAccessibilityCastAsClass();

    [v4 sendActionsForControlEvents:64];
    v5 = 1;
  }

  else
  {
    _privateAccessibilityCustomActions = [(WGWidgetListEditViewTableViewCellAccessibility *)self _privateAccessibilityCustomActions];
    firstObject = [_privateAccessibilityCustomActions firstObject];

    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    v4 = firstObject;
    AXPerformSafeBlock();
    v5 = *(v10 + 24);

    _Block_object_dispose(&v9, 8);
  }

  return v5 & 1;
}

void __71__WGWidgetListEditViewTableViewCellAccessibility_accessibilityActivate__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) _accessibilityCustomActionIdentifier];
  *(*(*(a1 + 48) + 8) + 24) = [v2 _accessibilityPerformCustomActionWithIdentifier:v3];
}

- (CGPoint)accessibilityActivationPoint
{
  v3 = [(WGWidgetListEditViewTableViewCellAccessibility *)self safeValueForKey:@"_accessibilityCellEditingControl"];
  if (![(WGWidgetListEditViewTableViewCellAccessibility *)self _accessibilityIsFKARunningForFocusItem])
  {
    v6 = [(WGWidgetListEditViewTableViewCellAccessibility *)self safeValueForKey:@"_accessibilityCellReorderControl"];
    v7 = v6;
    if (!v6)
    {
      if (!v3)
      {
        v14.receiver = self;
        v14.super_class = WGWidgetListEditViewTableViewCellAccessibility;
        [(WGWidgetListEditViewTableViewCellAccessibility *)&v14 accessibilityActivationPoint];
        goto LABEL_11;
      }

      v6 = v3;
    }

    [v6 accessibilityActivationPoint];
LABEL_11:
    v8 = v10;
    v9 = v11;

    goto LABEL_12;
  }

  if (v3)
  {
    [v3 accessibilityActivationPoint];
  }

  else
  {
    v15.receiver = self;
    v15.super_class = WGWidgetListEditViewTableViewCellAccessibility;
    [(WGWidgetListEditViewTableViewCellAccessibility *)&v15 accessibilityActivationPoint];
  }

  v8 = v4;
  v9 = v5;
LABEL_12:

  v12 = v8;
  v13 = v9;
  result.y = v13;
  result.x = v12;
  return result;
}

- (BOOL)_axIsAddCell
{
  _privateAccessibilityCustomActions = [(WGWidgetListEditViewTableViewCellAccessibility *)self _privateAccessibilityCustomActions];
  v3 = [_privateAccessibilityCustomActions count] == 0;

  return v3;
}

@end