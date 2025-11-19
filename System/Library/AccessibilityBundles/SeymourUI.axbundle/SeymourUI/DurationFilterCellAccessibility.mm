@interface DurationFilterCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
- (void)accessibilityApplyState:(BOOL)a3 disabled:(BOOL)a4;
@end

@implementation DurationFilterCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SeymourUI.DurationFilterCell" hasInstanceMethod:@"accessibilityApplyState:disabled:" withFullSignature:{"v", "B", "B", 0}];
  [v3 validateClass:@"SeymourUI.DurationFilterCell" hasInstanceMethod:@"durationLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SeymourUI.DurationFilterCell" isKindOfClass:@"UICollectionViewCell"];
}

- (id)accessibilityLabel
{
  v2 = [(DurationFilterCellAccessibility *)self safeValueForKey:@"durationLabel"];
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = v3;
  if (v3)
  {
    v5 = [v3 text];
    v6 = [v5 intValue];

    v7 = MEMORY[0x29EDBA0F8];
    v8 = accessibilityLocalizedString(@"duration.format");
    v9 = [v7 stringWithFormat:v8, v6];
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

- (void)accessibilityApplyState:(BOOL)a3 disabled:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v11.receiver = self;
  v11.super_class = DurationFilterCellAccessibility;
  [DurationFilterCellAccessibility accessibilityApplyState:sel_accessibilityApplyState_disabled_ disabled:?];
  if (!v5 || !v4)
  {
    if (v4)
    {
      v7 = [(DurationFilterCellAccessibility *)self accessibilityTraits];
      [(DurationFilterCellAccessibility *)self setAccessibilityTraits:*MEMORY[0x29EDC7FA8] | v7];
    }

    else
    {
      [(DurationFilterCellAccessibility *)self setAccessibilityTraits:[(DurationFilterCellAccessibility *)self accessibilityTraits]& ~*MEMORY[0x29EDC7FA8]];
      if (v5)
      {
        v8 = [(DurationFilterCellAccessibility *)self accessibilityTraits];
        v9 = *MEMORY[0x29EDC7FC0] | v8;
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