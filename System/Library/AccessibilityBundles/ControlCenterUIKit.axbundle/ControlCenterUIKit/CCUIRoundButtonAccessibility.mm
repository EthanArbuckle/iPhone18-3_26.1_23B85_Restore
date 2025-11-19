@interface CCUIRoundButtonAccessibility
- (id)accessibilityCustomActions;
- (unint64_t)_accesibilityRawTraits;
- (unint64_t)accessibilityTraits;
@end

@implementation CCUIRoundButtonAccessibility

- (unint64_t)_accesibilityRawTraits
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  v3 = v2;
  v4 = *MEMORY[0x29EDC7F70];
  if (v2)
  {
    v5 = [v2 isEnabled];
    v6 = *MEMORY[0x29EDC7FA8];
    if (v5)
    {
      v6 = 0;
    }

    v4 |= v6;
    if ([v3 isSelected])
    {
      v4 |= *MEMORY[0x29EDC7FC0];
    }
  }

  return v4;
}

- (unint64_t)accessibilityTraits
{
  v3 = [(CCUIRoundButtonAccessibility *)self _accessibilityGetBlockForAttribute:4];
  v4 = v3;
  if (v3)
  {
    v5 = (*(v3 + 16))(v3);
  }

  else
  {
    v5 = [(CCUIRoundButtonAccessibility *)self _accesibilityRawTraits];
  }

  v6 = v5;

  return v6;
}

- (id)accessibilityCustomActions
{
  v5.receiver = self;
  v5.super_class = CCUIRoundButtonAccessibility;
  v2 = [(CCUIRoundButtonAccessibility *)&v5 accessibilityCustomActions];
  v3 = AXGuaranteedMutableArray();

  UIAccessibilityControlCenterAttachOpenCloseCustomActionsIfNeeded();

  return v3;
}

@end