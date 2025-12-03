@interface TrainerFilterCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (unint64_t)accessibilityTraits;
- (void)accessibilityApplyState:(BOOL)state disabled:(BOOL)disabled;
@end

@implementation TrainerFilterCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SeymourUI.TrainerFilterCell" hasInstanceMethod:@"accessibilityApplyState:disabled:" withFullSignature:{"v", "B", "B", 0}];
  [validationsCopy validateClass:@"SeymourUI.TrainerFilterCell" isKindOfClass:@"UICollectionViewCell"];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = TrainerFilterCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(TrainerFilterCellAccessibility *)&v3 accessibilityTraits];
}

- (void)accessibilityApplyState:(BOOL)state disabled:(BOOL)disabled
{
  disabledCopy = disabled;
  stateCopy = state;
  v11.receiver = self;
  v11.super_class = TrainerFilterCellAccessibility;
  [TrainerFilterCellAccessibility accessibilityApplyState:sel_accessibilityApplyState_disabled_ disabled:?];
  if (!stateCopy || !disabledCopy)
  {
    if (disabledCopy)
    {
      accessibilityTraits = [(TrainerFilterCellAccessibility *)self accessibilityTraits];
      [(TrainerFilterCellAccessibility *)self setAccessibilityTraits:*MEMORY[0x29EDC7FA8] | accessibilityTraits];
    }

    else
    {
      [(TrainerFilterCellAccessibility *)self setAccessibilityTraits:[(TrainerFilterCellAccessibility *)self accessibilityTraits]& ~*MEMORY[0x29EDC7FA8]];
      if (stateCopy)
      {
        accessibilityTraits2 = [(TrainerFilterCellAccessibility *)self accessibilityTraits];
        v9 = *MEMORY[0x29EDC7FC0] | accessibilityTraits2;
LABEL_8:
        [(TrainerFilterCellAccessibility *)self setAccessibilityTraits:v9];
        return;
      }
    }

    v10 = *MEMORY[0x29EDC7FC0];
    v9 = [(TrainerFilterCellAccessibility *)self accessibilityTraits]& ~v10;
    goto LABEL_8;
  }
}

@end