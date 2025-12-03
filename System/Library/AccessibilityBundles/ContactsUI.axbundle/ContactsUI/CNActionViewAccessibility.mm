@interface CNActionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityCustomActions;
- (id)_axActionItem;
- (id)accessibilityLabel;
- (id)accessibilityUserInputLabels;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityLongPressActionView:(id)view;
- (void)setTitle:(id)title;
@end

@implementation CNActionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CNActionView" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CNActionView" hasInstanceMethod:@"platterBoxView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CNActionView" hasInstanceMethod:@"disabled" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"CNActionView" hasInstanceMethod:@"type" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CNActionView" hasInstanceMethod:@"setTitle:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"CNActionView" hasProperty:@"style" withType:"q"];
  [validationsCopy validateClass:@"CNActionsView"];
  [validationsCopy validateClass:@"CNFaceTimeCell"];
  [validationsCopy validateClass:@"CNActionView" hasInstanceMethod:@"actionDelegate" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CNActionsView" hasInstanceMethod:@"actionsDelegate" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CNContactInlineActionsViewController" hasInstanceMethod:@"defaultActionPerType" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CNActionsView" hasInstanceMethod:@"didPressActionView: longPress:" withFullSignature:{"v", "@", "B", 0}];
}

- (id)_axActionItem
{
  v3 = [(CNActionViewAccessibility *)self _accessibilityAncestorIsKindOf:MEMORY[0x29C2D1D40](@"CNActionsView", a2)];
  v4 = [v3 safeValueForKey:@"actionsDelegate"];
  objc_opt_class();
  v5 = [v4 safeValueForKey:@"defaultActionPerType"];
  v6 = __UIAccessibilityCastAsClass();

  v7 = [(CNActionViewAccessibility *)self safeValueForKey:@"type"];
  v8 = [v6 objectForKeyedSubscript:v7];

  return v8;
}

- (id)accessibilityLabel
{
  v3 = [(CNActionViewAccessibility *)self _accessibilityAncestorIsKindOf:MEMORY[0x29C2D1D40](@"CNFaceTimeCell", a2)];

  objc_opt_class();
  v4 = [(CNActionViewAccessibility *)self safeValueForKey:@"titleLabel"];
  v5 = __UIAccessibilityCastAsClass();

  v6 = [(CNActionViewAccessibility *)self safeValueForKey:@"type"];
  v7 = labelForActionType(v6, v3 != 0);

  accessibilityLabel = [v5 accessibilityLabel];
  if (!v5 || ![v5 _accessibilityViewIsVisible])
  {
    v13 = [(CNActionViewAccessibility *)self safeValueForKey:@"type"];
    v19 = labelForActionType(v13, v3 != 0);
LABEL_10:

    goto LABEL_11;
  }

  _axActionItem = [(CNActionViewAccessibility *)self _axActionItem];
  if (_axActionItem)
  {
    v10 = _axActionItem;
    v11 = [accessibilityLabel localizedCaseInsensitiveCompare:v7];

    if (v11)
    {
      v12 = [(CNActionViewAccessibility *)self safeValueForKey:@"type"];
      v13 = labelForActionType(v12, v3 != 0);

      accessibilityLabel2 = [v5 accessibilityLabel];
      v15 = accessibilityLabel2;
      if (v13)
      {
        lowercaseString = [accessibilityLabel2 lowercaseString];
        lowercaseString2 = [v13 lowercaseString];
        v18 = [lowercaseString containsString:lowercaseString2];

        if (v18)
        {

          v13 = 0;
        }
      }

      v19 = __UIAXStringForVariables();

      goto LABEL_10;
    }
  }

  v19 = accessibilityLabel;
LABEL_11:

  return v19;
}

- (id)accessibilityUserInputLabels
{
  v9 = 0;
  objc_opt_class();
  v3 = [(CNActionViewAccessibility *)self safeValueForKey:@"titleLabel"];
  v4 = __UIAccessibilityCastAsClass();

  if (v4 && [v4 _accessibilityViewIsVisible])
  {
    accessibilityLabel = [v4 accessibilityLabel];
    accessibilityUserInputLabels = MEMORY[0x29C2D1D70]();
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CNActionViewAccessibility;
    accessibilityUserInputLabels = [(CNActionViewAccessibility *)&v8 accessibilityUserInputLabels];
  }

  return accessibilityUserInputLabels;
}

- (unint64_t)accessibilityTraits
{
  v2 = *MEMORY[0x29EDC7F70];
  v3 = [(CNActionViewAccessibility *)self safeBoolForKey:@"disabled"];
  v4 = *MEMORY[0x29EDC7FA8];
  if (!v3)
  {
    v4 = 0;
  }

  return v4 | v2;
}

- (void)_accessibilityLongPressActionView:(id)view
{
  v4 = [(CNActionViewAccessibility *)self safeValueForKey:@"actionDelegate"];
  v3 = v4;
  AXPerformSafeBlock();
}

void __63__CNActionViewAccessibility__accessibilityLongPressActionView___block_invoke(uint64_t a1)
{
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 40) accessibilityFrame];
    UIRectGetCenter();
    v2 = [MEMORY[0x29EDBA168] valueWithCGPoint:?];
    [*(a1 + 40) _accessibilityShowContextMenuForElement:*(a1 + 40) targetPointValue:v2];
    [*(a1 + 32) didPressActionView:*(a1 + 40) longPress:1];
  }
}

- (id)_accessibilityCustomActions
{
  array = [MEMORY[0x29EDB8DE8] array];
  _axActionItem = [(CNActionViewAccessibility *)self _axActionItem];

  if (_axActionItem)
  {
    v5 = objc_alloc(MEMORY[0x29EDC78E0]);
    v6 = accessibilityLocalizedString(@"modify.selection");
    v7 = [v5 initWithName:v6 target:self selector:sel__accessibilityLongPressActionView_];

    [array axSafelyAddObject:v7];
  }

  return array;
}

- (void)setTitle:(id)title
{
  v3.receiver = self;
  v3.super_class = CNActionViewAccessibility;
  [(CNActionViewAccessibility *)&v3 setTitle:title];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

@end