@interface TrainerFilterCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (unint64_t)accessibilityTraits;
- (void)accessibilityApplyState:(BOOL)a3 disabled:(BOOL)a4;
@end

@implementation TrainerFilterCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SeymourUI.TrainerFilterCell" hasInstanceMethod:@"accessibilityApplyState:disabled:" withFullSignature:{"v", "B", "B", 0}];
  [v3 validateClass:@"SeymourUI.TrainerFilterCell" isKindOfClass:@"UICollectionViewCell"];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = TrainerFilterCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(TrainerFilterCellAccessibility *)&v3 accessibilityTraits];
}

- (void)accessibilityApplyState:(BOOL)a3 disabled:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v11.receiver = self;
  v11.super_class = TrainerFilterCellAccessibility;
  [TrainerFilterCellAccessibility accessibilityApplyState:sel_accessibilityApplyState_disabled_ disabled:?];
  if (!v5 || !v4)
  {
    if (v4)
    {
      v7 = [(TrainerFilterCellAccessibility *)self accessibilityTraits];
      [(TrainerFilterCellAccessibility *)self setAccessibilityTraits:*MEMORY[0x29EDC7FA8] | v7];
    }

    else
    {
      [(TrainerFilterCellAccessibility *)self setAccessibilityTraits:[(TrainerFilterCellAccessibility *)self accessibilityTraits]& ~*MEMORY[0x29EDC7FA8]];
      if (v5)
      {
        v8 = [(TrainerFilterCellAccessibility *)self accessibilityTraits];
        v9 = *MEMORY[0x29EDC7FC0] | v8;
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