@interface WFTriggerOptionSelectionViewAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation WFTriggerOptionSelectionViewAccessibility

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = WFTriggerOptionSelectionViewAccessibility;
  v3 = *MEMORY[0x29EDC7F70] | [(WFTriggerOptionSelectionViewAccessibility *)&v7 accessibilityTraits];
  v4 = [(WFTriggerOptionSelectionViewAccessibility *)self safeBoolForKey:@"selected"];
  v5 = *MEMORY[0x29EDC7FC0];
  if (!v4)
  {
    v5 = 0;
  }

  return v3 | v5;
}

@end