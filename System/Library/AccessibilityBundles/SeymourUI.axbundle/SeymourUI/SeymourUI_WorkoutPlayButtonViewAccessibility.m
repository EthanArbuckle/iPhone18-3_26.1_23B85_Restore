@interface SeymourUI_WorkoutPlayButtonViewAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation SeymourUI_WorkoutPlayButtonViewAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = SeymourUI_WorkoutPlayButtonViewAccessibility;
  return *MEMORY[0x29EDC7F70] | [(SeymourUI_WorkoutPlayButtonViewAccessibility *)&v3 accessibilityTraits]| *MEMORY[0x29EDC7FC8];
}

@end