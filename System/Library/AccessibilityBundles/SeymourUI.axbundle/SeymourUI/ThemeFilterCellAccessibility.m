@interface ThemeFilterCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
- (void)accessibilityApplyState:(BOOL)a3 disabled:(BOOL)a4;
@end

@implementation ThemeFilterCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SeymourUI.DurationFilterCell" hasInstanceMethod:@"accessibilityApplyState:disabled:" withFullSignature:{"v", "B", "B", 0}];
  [v3 validateClass:@"SeymourUI.ThemeFilterCell" hasSwiftField:@"themeLabel" withSwiftType:"UILabel"];
}

- (id)accessibilityLabel
{
  v2 = [(ThemeFilterCellAccessibility *)self safeSwiftValueForKey:@"themeLabel"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = ThemeFilterCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(ThemeFilterCellAccessibility *)&v3 accessibilityTraits];
}

- (void)accessibilityApplyState:(BOOL)a3 disabled:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v11.receiver = self;
  v11.super_class = ThemeFilterCellAccessibility;
  [ThemeFilterCellAccessibility accessibilityApplyState:sel_accessibilityApplyState_disabled_ disabled:?];
  if (!v5 || !v4)
  {
    if (v4)
    {
      v7 = [(ThemeFilterCellAccessibility *)self accessibilityTraits];
      [(ThemeFilterCellAccessibility *)self setAccessibilityTraits:*MEMORY[0x29EDC7FA8] | v7];
    }

    else
    {
      [(ThemeFilterCellAccessibility *)self setAccessibilityTraits:[(ThemeFilterCellAccessibility *)self accessibilityTraits]& ~*MEMORY[0x29EDC7FA8]];
      if (v5)
      {
        v8 = [(ThemeFilterCellAccessibility *)self accessibilityTraits];
        v9 = *MEMORY[0x29EDC7FC0] | v8;
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