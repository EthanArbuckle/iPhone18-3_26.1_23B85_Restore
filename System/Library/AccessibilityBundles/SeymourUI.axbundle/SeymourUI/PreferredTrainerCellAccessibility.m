@interface PreferredTrainerCellAccessibility
- (unint64_t)accessibilityTraits;
- (void)accessibilityApplyState:(BOOL)a3;
@end

@implementation PreferredTrainerCellAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = PreferredTrainerCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(PreferredTrainerCellAccessibility *)&v3 accessibilityTraits];
}

- (void)accessibilityApplyState:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = PreferredTrainerCellAccessibility;
  [(PreferredTrainerCellAccessibility *)&v8 accessibilityApplyState:?];
  if (v3)
  {
    v5 = [(PreferredTrainerCellAccessibility *)self accessibilityTraits];
    v6 = *MEMORY[0x29EDC7FC0] | v5;
  }

  else
  {
    v7 = *MEMORY[0x29EDC7FC0];
    v6 = [(PreferredTrainerCellAccessibility *)self accessibilityTraits]& ~v7;
  }

  [(PreferredTrainerCellAccessibility *)self setAccessibilityTraits:v6];
}

@end