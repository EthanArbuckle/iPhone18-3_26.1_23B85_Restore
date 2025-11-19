@interface HUGridCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_axIsActiveGridCell;
- (id)_accessibilitySupportGesturesAttributes;
- (id)_axServiceStateString;
- (id)accessibilityCustomActions;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)_axOpenQuickControls;
@end

@implementation HUGridCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"HUGridCell" hasInstanceMethod:@"primaryState" withFullSignature:{"q", 0}];
  [v3 validateClass:@"HUGridCell" hasInstanceMethod:@"item" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HUGridCell" hasInstanceVariable:@"_rearranging" withType:"BOOL"];
  [v3 validateClass:@"HUGridStatusCell" isKindOfClass:@"UICollectionViewCell"];
  [v3 validateClass:@"HUGridCell" isKindOfClass:@"UICollectionViewCell"];
  [v3 validateClass:@"HFAbstractControlStatusItem"];
  [v3 validateClass:@"HUGridServicePlaceholderCell"];
  [v3 validateClass:@"HUGridHomeCell"];
}

- (id)accessibilityLabel
{
  v7.receiver = self;
  v7.super_class = HUGridCellAccessibility;
  v2 = [(HUGridCellAccessibility *)&v7 accessibilityLabel];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = UIAXStringForAllChildren();
  }

  v5 = v4;

  return v5;
}

- (id)accessibilityValue
{
  if ([(HUGridCellAccessibility *)self _axIsActiveGridCell])
  {
    v3 = [(HUGridCellAccessibility *)self _axServiceStateString];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = HUGridCellAccessibility;
    v3 = [(HUGridCellAccessibility *)&v5 accessibilityValue];
  }

  return v3;
}

- (id)_axServiceStateString
{
  v2 = [(HUGridCellAccessibility *)self safeUnsignedIntegerForKey:@"primaryState"];
  if (v2 == 1)
  {
    v3 = @"service.cell.state.off";
    goto LABEL_5;
  }

  if (v2 == 2)
  {
    v3 = @"service.cell.state.on";
LABEL_5:
    v4 = accessibilityHomeUILocalizedString(v3);
    goto LABEL_7;
  }

  v4 = 0;
LABEL_7:

  return v4;
}

- (id)accessibilityCustomActions
{
  v10[1] = *MEMORY[0x29EDCA608];
  if ([(HUGridCellAccessibility *)self _axIsActiveGridCell])
  {
    v3 = objc_alloc(MEMORY[0x29EDC78E0]);
    v4 = accessibilityHomeUILocalizedString(@"grid.cell.open.controls");
    v5 = [v3 initWithName:v4 target:self selector:sel__axOpenQuickControls];

    v10[0] = v5;
    v6 = [MEMORY[0x29EDB8D80] arrayWithObjects:v10 count:1];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = HUGridCellAccessibility;
    v6 = [(HUGridCellAccessibility *)&v9 accessibilityCustomActions];
  }

  v7 = *MEMORY[0x29EDCA608];

  return v6;
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = HUGridCellAccessibility;
  v3 = [(HUGridCellAccessibility *)&v7 accessibilityTraits];
  v4 = [(HUGridCellAccessibility *)self safeBoolForKey:@"_rearranging"];
  v5 = *MEMORY[0x29EDC7528];
  if (!v4)
  {
    v5 = *MEMORY[0x29EDC7F70];
  }

  return v5 | v3;
}

- (id)accessibilityHint
{
  if ([(HUGridCellAccessibility *)self safeBoolForKey:@"_rearranging"])
  {
    v3 = accessibilityHomeUILocalizedString(@"grid.cell.reorder.hint");
  }

  else
  {
    v5.receiver = self;
    v5.super_class = HUGridCellAccessibility;
    v3 = [(HUGridCellAccessibility *)&v5 accessibilityHint];
  }

  return v3;
}

- (void)_axOpenQuickControls
{
  v3 = [MEMORY[0x29EDBA068] defaultCenter];
  [v3 postNotificationName:AXOpenControlsNotification object:self];
}

- (id)_accessibilitySupportGesturesAttributes
{
  v8[1] = *MEMORY[0x29EDCA608];
  v6[0] = @"AXSupportedGestureTypeKey";
  v6[1] = @"AXOrbGestureMode";
  v7[0] = &unk_2A21CEBB0;
  v7[1] = &unk_2A21CEBC8;
  v2 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  v8[0] = v2;
  v3 = [MEMORY[0x29EDB8D80] arrayWithObjects:v8 count:1];

  v4 = *MEMORY[0x29EDCA608];

  return v3;
}

- (BOOL)_axIsActiveGridCell
{
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = [v3 contentView];
  v5 = [v4 gestureRecognizers];
  v6 = [v5 ax_containsObjectUsingBlock:&__block_literal_global_6];

  MEMORY[0x29C2DA460](@"HUGridStatusCell");
  if (objc_opt_isKindOfClass())
  {
    v7 = [(HUGridCellAccessibility *)self safeValueForKey:@"item"];
    MEMORY[0x29C2DA460](@"HFAbstractControlStatusItem");
    isKindOfClass = objc_opt_isKindOfClass();

    v9 = isKindOfClass & v6;
  }

  else
  {
    MEMORY[0x29C2DA460](@"HUGridServicePlaceholderCell");
    v10 = objc_opt_isKindOfClass();
    MEMORY[0x29C2DA460](@"HUGridHomeCell");
    v11 = objc_opt_isKindOfClass();
    if (v6)
    {
      v9 = (v10 | v11) ^ 1;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9 & 1;
}

uint64_t __46__HUGridCellAccessibility__axIsActiveGridCell__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end