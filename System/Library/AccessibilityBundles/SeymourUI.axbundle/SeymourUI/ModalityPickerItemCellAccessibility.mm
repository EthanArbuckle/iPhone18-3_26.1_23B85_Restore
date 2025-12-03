@interface ModalityPickerItemCellAccessibility
- (unint64_t)accessibilityTraits;
- (void)accessibilityApplyState:(BOOL)state disabled:(BOOL)disabled;
@end

@implementation ModalityPickerItemCellAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = ModalityPickerItemCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(ModalityPickerItemCellAccessibility *)&v3 accessibilityTraits];
}

- (void)accessibilityApplyState:(BOOL)state disabled:(BOOL)disabled
{
  disabledCopy = disabled;
  stateCopy = state;
  v11.receiver = self;
  v11.super_class = ModalityPickerItemCellAccessibility;
  [ModalityPickerItemCellAccessibility accessibilityApplyState:sel_accessibilityApplyState_disabled_ disabled:?];
  if (!stateCopy || !disabledCopy)
  {
    if (disabledCopy)
    {
      accessibilityTraits = [(ModalityPickerItemCellAccessibility *)self accessibilityTraits];
      [(ModalityPickerItemCellAccessibility *)self setAccessibilityTraits:*MEMORY[0x29EDC7FA8] | accessibilityTraits];
    }

    else
    {
      [(ModalityPickerItemCellAccessibility *)self setAccessibilityTraits:[(ModalityPickerItemCellAccessibility *)self accessibilityTraits]& ~*MEMORY[0x29EDC7FA8]];
      if (stateCopy)
      {
        accessibilityTraits2 = [(ModalityPickerItemCellAccessibility *)self accessibilityTraits];
        v9 = *MEMORY[0x29EDC7FC0] | accessibilityTraits2;
LABEL_8:
        [(ModalityPickerItemCellAccessibility *)self setAccessibilityTraits:v9];
        return;
      }
    }

    v10 = *MEMORY[0x29EDC7FC0];
    v9 = [(ModalityPickerItemCellAccessibility *)self accessibilityTraits]& ~v10;
    goto LABEL_8;
  }
}

@end