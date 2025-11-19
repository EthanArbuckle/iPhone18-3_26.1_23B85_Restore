@interface WorkoutPlanScheduledItemCellAccessibility
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation WorkoutPlanScheduledItemCellAccessibility

- (id)accessibilityLabel
{
  v2 = [(WorkoutPlanScheduledItemCellAccessibility *)self _accessibilityTextForSubhierarchyIncludingHeaders:0 focusableItems:1 exclusions:0];
  v4 = _accessibilityReplaceStylsticBulletsForSpeaking(v2, v3);

  return v4;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = WorkoutPlanScheduledItemCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(WorkoutPlanScheduledItemCellAccessibility *)&v3 accessibilityTraits];
}

@end