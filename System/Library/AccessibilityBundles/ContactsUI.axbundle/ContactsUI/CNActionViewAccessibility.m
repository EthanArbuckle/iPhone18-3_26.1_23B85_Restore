@interface CNActionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilityCustomActions;
- (id)_axActionItem;
- (id)accessibilityLabel;
- (id)accessibilityUserInputLabels;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityLongPressActionView:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation CNActionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CNActionView" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CNActionView" hasInstanceMethod:@"platterBoxView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CNActionView" hasInstanceMethod:@"disabled" withFullSignature:{"B", 0}];
  [v3 validateClass:@"CNActionView" hasInstanceMethod:@"type" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CNActionView" hasInstanceMethod:@"setTitle:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"CNActionView" hasProperty:@"style" withType:"q"];
  [v3 validateClass:@"CNActionsView"];
  [v3 validateClass:@"CNFaceTimeCell"];
  [v3 validateClass:@"CNActionView" hasInstanceMethod:@"actionDelegate" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CNActionsView" hasInstanceMethod:@"actionsDelegate" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CNContactInlineActionsViewController" hasInstanceMethod:@"defaultActionPerType" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CNActionsView" hasInstanceMethod:@"didPressActionView: longPress:" withFullSignature:{"v", "@", "B", 0}];
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

  v8 = [v5 accessibilityLabel];
  if (!v5 || ![v5 _accessibilityViewIsVisible])
  {
    v13 = [(CNActionViewAccessibility *)self safeValueForKey:@"type"];
    v19 = labelForActionType(v13, v3 != 0);
LABEL_10:

    goto LABEL_11;
  }

  v9 = [(CNActionViewAccessibility *)self _axActionItem];
  if (v9)
  {
    v10 = v9;
    v11 = [v8 localizedCaseInsensitiveCompare:v7];

    if (v11)
    {
      v12 = [(CNActionViewAccessibility *)self safeValueForKey:@"type"];
      v13 = labelForActionType(v12, v3 != 0);

      v14 = [v5 accessibilityLabel];
      v15 = v14;
      if (v13)
      {
        v16 = [v14 lowercaseString];
        v17 = [v13 lowercaseString];
        v18 = [v16 containsString:v17];

        if (v18)
        {

          v13 = 0;
        }
      }

      v19 = __UIAXStringForVariables();

      goto LABEL_10;
    }
  }

  v19 = v8;
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
    v5 = [v4 accessibilityLabel];
    v6 = MEMORY[0x29C2D1D70]();
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CNActionViewAccessibility;
    v6 = [(CNActionViewAccessibility *)&v8 accessibilityUserInputLabels];
  }

  return v6;
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

- (void)_accessibilityLongPressActionView:(id)a3
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
  v3 = [MEMORY[0x29EDB8DE8] array];
  v4 = [(CNActionViewAccessibility *)self _axActionItem];

  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x29EDC78E0]);
    v6 = accessibilityLocalizedString(@"modify.selection");
    v7 = [v5 initWithName:v6 target:self selector:sel__accessibilityLongPressActionView_];

    [v3 axSafelyAddObject:v7];
  }

  return v3;
}

- (void)setTitle:(id)a3
{
  v3.receiver = self;
  v3.super_class = CNActionViewAccessibility;
  [(CNActionViewAccessibility *)&v3 setTitle:a3];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

@end