@interface ThemeFilterCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
- (void)accessibilityApplyState:(BOOL)state disabled:(BOOL)disabled;
@end

@implementation ThemeFilterCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SeymourUI.DurationFilterCell" hasInstanceMethod:@"accessibilityApplyState:disabled:" withFullSignature:{"v", "B", "B", 0}];
  [validationsCopy validateClass:@"SeymourUI.ThemeFilterCell" hasSwiftField:@"themeLabel" withSwiftType:"UILabel"];
}

- (id)accessibilityLabel
{
  v2 = [(ThemeFilterCellAccessibility *)self safeSwiftValueForKey:@"themeLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = ThemeFilterCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(ThemeFilterCellAccessibility *)&v3 accessibilityTraits];
}

- (void)accessibilityApplyState:(BOOL)state disabled:(BOOL)disabled
{
  disabledCopy = disabled;
  stateCopy = state;
  v11.receiver = self;
  v11.super_class = ThemeFilterCellAccessibility;
  [ThemeFilterCellAccessibility accessibilityApplyState:sel_accessibilityApplyState_disabled_ disabled:?];
  if (!stateCopy || !disabledCopy)
  {
    if (disabledCopy)
    {
      accessibilityTraits = [(ThemeFilterCellAccessibility *)self accessibilityTraits];
      [(ThemeFilterCellAccessibility *)self setAccessibilityTraits:*MEMORY[0x29EDC7FA8] | accessibilityTraits];
    }

    else
    {
      [(ThemeFilterCellAccessibility *)self setAccessibilityTraits:[(ThemeFilterCellAccessibility *)self accessibilityTraits]& ~*MEMORY[0x29EDC7FA8]];
      if (stateCopy)
      {
        accessibilityTraits2 = [(ThemeFilterCellAccessibility *)self accessibilityTraits];
        v9 = *MEMORY[0x29EDC7FC0] | accessibilityTraits2;
LABEL_8:
        [(ThemeFilterCellAccessibility *)self setAccessibilityTraits:v9];
        return;
      }
    }

    v10 = *MEMORY[0x29EDC7FC0];
    v9 = [(ThemeFilterCellAccessibility *)self accessibilityTraits]& ~v10;
    goto LABEL_8;
  }
}

@end