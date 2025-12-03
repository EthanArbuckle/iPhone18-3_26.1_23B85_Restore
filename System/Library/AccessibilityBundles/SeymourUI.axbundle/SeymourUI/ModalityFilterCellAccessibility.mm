@interface ModalityFilterCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (unint64_t)accessibilityTraits;
- (void)accessibilityApplyState:(BOOL)state disabled:(BOOL)disabled;
@end

@implementation ModalityFilterCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SeymourUI.ModalityFilterCell" hasInstanceMethod:@"accessibilityApplyState:disabled:" withFullSignature:{"v", "B", "B", 0}];
  [validationsCopy validateClass:@"SeymourUI.ModalityFilterCell" isKindOfClass:@"UICollectionViewCell"];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = ModalityFilterCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(ModalityFilterCellAccessibility *)&v3 accessibilityTraits];
}

- (void)accessibilityApplyState:(BOOL)state disabled:(BOOL)disabled
{
  disabledCopy = disabled;
  stateCopy = state;
  v11.receiver = self;
  v11.super_class = ModalityFilterCellAccessibility;
  [ModalityFilterCellAccessibility accessibilityApplyState:sel_accessibilityApplyState_disabled_ disabled:?];
  if (!stateCopy || !disabledCopy)
  {
    if (disabledCopy)
    {
      accessibilityTraits = [(ModalityFilterCellAccessibility *)self accessibilityTraits];
      [(ModalityFilterCellAccessibility *)self setAccessibilityTraits:*MEMORY[0x29EDC7FA8] | accessibilityTraits];
    }

    else
    {
      [(ModalityFilterCellAccessibility *)self setAccessibilityTraits:[(ModalityFilterCellAccessibility *)self accessibilityTraits]& ~*MEMORY[0x29EDC7FA8]];
      if (stateCopy)
      {
        accessibilityTraits2 = [(ModalityFilterCellAccessibility *)self accessibilityTraits];
        v9 = *MEMORY[0x29EDC7FC0] | accessibilityTraits2;
LABEL_8:
        [(ModalityFilterCellAccessibility *)self setAccessibilityTraits:v9];
        return;
      }
    }

    v10 = *MEMORY[0x29EDC7FC0];
    v9 = [(ModalityFilterCellAccessibility *)self accessibilityTraits]& ~v10;
    goto LABEL_8;
  }
}

@end