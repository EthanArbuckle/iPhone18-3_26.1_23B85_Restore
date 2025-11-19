@interface ModalityPickerItemCellAccessibility
- (unint64_t)accessibilityTraits;
- (void)accessibilityApplyState:(BOOL)a3 disabled:(BOOL)a4;
@end

@implementation ModalityPickerItemCellAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = ModalityPickerItemCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(ModalityPickerItemCellAccessibility *)&v3 accessibilityTraits];
}

- (void)accessibilityApplyState:(BOOL)a3 disabled:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v11.receiver = self;
  v11.super_class = ModalityPickerItemCellAccessibility;
  [ModalityPickerItemCellAccessibility accessibilityApplyState:sel_accessibilityApplyState_disabled_ disabled:?];
  if (!v5 || !v4)
  {
    if (v4)
    {
      v7 = [(ModalityPickerItemCellAccessibility *)self accessibilityTraits];
      [(ModalityPickerItemCellAccessibility *)self setAccessibilityTraits:*MEMORY[0x29EDC7FA8] | v7];
    }

    else
    {
      [(ModalityPickerItemCellAccessibility *)self setAccessibilityTraits:[(ModalityPickerItemCellAccessibility *)self accessibilityTraits]& ~*MEMORY[0x29EDC7FA8]];
      if (v5)
      {
        v8 = [(ModalityPickerItemCellAccessibility *)self accessibilityTraits];
        v9 = *MEMORY[0x29EDC7FC0] | v8;
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