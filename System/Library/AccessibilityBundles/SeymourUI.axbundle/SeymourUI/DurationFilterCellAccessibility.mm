@interface DurationFilterCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
- (void)accessibilityApplyState:(BOOL)state disabled:(BOOL)disabled;
@end

@implementation DurationFilterCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SeymourUI.DurationFilterCell" hasInstanceMethod:@"accessibilityApplyState:disabled:" withFullSignature:{"v", "B", "B", 0}];
  [validationsCopy validateClass:@"SeymourUI.DurationFilterCell" hasInstanceMethod:@"durationLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SeymourUI.DurationFilterCell" isKindOfClass:@"UICollectionViewCell"];
}

- (id)accessibilityLabel
{
  v2 = [(DurationFilterCellAccessibility *)self safeValueForKey:@"durationLabel"];
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = v3;
  if (v3)
  {
    text = [v3 text];
    intValue = [text intValue];

    v7 = MEMORY[0x29EDBA0F8];
    v8 = accessibilityLocalizedString(@"duration.format");
    v9 = [v7 stringWithFormat:v8, intValue];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = DurationFilterCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(DurationFilterCellAccessibility *)&v3 accessibilityTraits];
}

- (void)accessibilityApplyState:(BOOL)state disabled:(BOOL)disabled
{
  disabledCopy = disabled;
  stateCopy = state;
  v11.receiver = self;
  v11.super_class = DurationFilterCellAccessibility;
  [DurationFilterCellAccessibility accessibilityApplyState:sel_accessibilityApplyState_disabled_ disabled:?];
  if (!stateCopy || !disabledCopy)
  {
    if (disabledCopy)
    {
      accessibilityTraits = [(DurationFilterCellAccessibility *)self accessibilityTraits];
      [(DurationFilterCellAccessibility *)self setAccessibilityTraits:*MEMORY[0x29EDC7FA8] | accessibilityTraits];
    }

    else
    {
      [(DurationFilterCellAccessibility *)self setAccessibilityTraits:[(DurationFilterCellAccessibility *)self accessibilityTraits]& ~*MEMORY[0x29EDC7FA8]];
      if (stateCopy)
      {
        accessibilityTraits2 = [(DurationFilterCellAccessibility *)self accessibilityTraits];
        v9 = *MEMORY[0x29EDC7FC0] | accessibilityTraits2;
LABEL_8:
        [(DurationFilterCellAccessibility *)self setAccessibilityTraits:v9];
        return;
      }
    }

    v10 = *MEMORY[0x29EDC7FC0];
    v9 = [(DurationFilterCellAccessibility *)self accessibilityTraits]& ~v10;
    goto LABEL_8;
  }
}

@end