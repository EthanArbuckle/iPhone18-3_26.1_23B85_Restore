@interface SeymourUI_StandardFilterCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (unint64_t)accessibilityTraits;
- (void)accessibilityApplyState:(BOOL)a3 disabled:(BOOL)a4;
@end

@implementation SeymourUI_StandardFilterCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SeymourUI.StandardFilterCell" hasInstanceMethod:@"accessibilityApplyState:disabled:" withFullSignature:{"v", "B", "B", 0}];
  [v3 validateClass:@"SeymourUI.StandardFilterCell" isKindOfClass:@"UICollectionViewCell"];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = SeymourUI_StandardFilterCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(SeymourUI_StandardFilterCellAccessibility *)&v3 accessibilityTraits];
}

- (void)accessibilityApplyState:(BOOL)a3 disabled:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v11.receiver = self;
  v11.super_class = SeymourUI_StandardFilterCellAccessibility;
  [SeymourUI_StandardFilterCellAccessibility accessibilityApplyState:sel_accessibilityApplyState_disabled_ disabled:?];
  if (!v5 || !v4)
  {
    if (v4)
    {
      v7 = [(SeymourUI_StandardFilterCellAccessibility *)self accessibilityTraits];
      [(SeymourUI_StandardFilterCellAccessibility *)self setAccessibilityTraits:*MEMORY[0x29EDC7FA8] | v7];
    }

    else
    {
      [(SeymourUI_StandardFilterCellAccessibility *)self setAccessibilityTraits:[(SeymourUI_StandardFilterCellAccessibility *)self accessibilityTraits]& ~*MEMORY[0x29EDC7FA8]];
      if (v5)
      {
        v8 = [(SeymourUI_StandardFilterCellAccessibility *)self accessibilityTraits];
        v9 = *MEMORY[0x29EDC7FC0] | v8;
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