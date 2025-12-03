@interface SeymourUI_StandardFilterCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (unint64_t)accessibilityTraits;
- (void)accessibilityApplyState:(BOOL)state disabled:(BOOL)disabled;
@end

@implementation SeymourUI_StandardFilterCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SeymourUI.StandardFilterCell" hasInstanceMethod:@"accessibilityApplyState:disabled:" withFullSignature:{"v", "B", "B", 0}];
  [validationsCopy validateClass:@"SeymourUI.StandardFilterCell" isKindOfClass:@"UICollectionViewCell"];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = SeymourUI_StandardFilterCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(SeymourUI_StandardFilterCellAccessibility *)&v3 accessibilityTraits];
}

- (void)accessibilityApplyState:(BOOL)state disabled:(BOOL)disabled
{
  disabledCopy = disabled;
  stateCopy = state;
  v11.receiver = self;
  v11.super_class = SeymourUI_StandardFilterCellAccessibility;
  [SeymourUI_StandardFilterCellAccessibility accessibilityApplyState:sel_accessibilityApplyState_disabled_ disabled:?];
  if (!stateCopy || !disabledCopy)
  {
    if (disabledCopy)
    {
      accessibilityTraits = [(SeymourUI_StandardFilterCellAccessibility *)self accessibilityTraits];
      [(SeymourUI_StandardFilterCellAccessibility *)self setAccessibilityTraits:*MEMORY[0x29EDC7FA8] | accessibilityTraits];
    }

    else
    {
      [(SeymourUI_StandardFilterCellAccessibility *)self setAccessibilityTraits:[(SeymourUI_StandardFilterCellAccessibility *)self accessibilityTraits]& ~*MEMORY[0x29EDC7FA8]];
      if (stateCopy)
      {
        accessibilityTraits2 = [(SeymourUI_StandardFilterCellAccessibility *)self accessibilityTraits];
        v9 = *MEMORY[0x29EDC7FC0] | accessibilityTraits2;
LABEL_8:
        [(SeymourUI_StandardFilterCellAccessibility *)self setAccessibilityTraits:v9];
        return;
      }
    }

    v10 = *MEMORY[0x29EDC7FC0];
    v9 = [(SeymourUI_StandardFilterCellAccessibility *)self accessibilityTraits]& ~v10;
    goto LABEL_8;
  }
}

@end