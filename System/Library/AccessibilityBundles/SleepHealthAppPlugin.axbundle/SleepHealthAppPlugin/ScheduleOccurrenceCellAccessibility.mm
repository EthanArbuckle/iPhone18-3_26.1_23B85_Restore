@interface ScheduleOccurrenceCellAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation ScheduleOccurrenceCellAccessibility

- (unint64_t)accessibilityTraits
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  isUserInteractionEnabled = [v2 isUserInteractionEnabled];
  v4 = MEMORY[0x29EDC7F70];
  if (!isUserInteractionEnabled)
  {
    v4 = MEMORY[0x29EDC7FA0];
  }

  v5 = *v4;

  return v5;
}

@end