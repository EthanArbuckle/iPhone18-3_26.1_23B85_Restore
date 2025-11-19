@interface CHWorkoutDetailAwardTableViewCellAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation CHWorkoutDetailAwardTableViewCellAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = CHWorkoutDetailAwardTableViewCellAccessibility;
  return UIAccessibilityTraitButton | [(CHWorkoutDetailAwardTableViewCellAccessibility *)&v3 accessibilityTraits];
}

@end