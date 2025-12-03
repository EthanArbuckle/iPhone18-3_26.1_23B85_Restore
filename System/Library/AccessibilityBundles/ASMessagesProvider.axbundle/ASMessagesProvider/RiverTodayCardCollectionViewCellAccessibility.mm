@interface RiverTodayCardCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation RiverTodayCardCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ASMessagesProvider.RiverTodayCardCollectionViewCell" hasSwiftField:@"labelsView" withSwiftType:"TodayCardLabelsView"];
  [validationsCopy validateClass:@"ASMessagesProvider.TodayCardLabelsView" hasSwiftField:@"badgeTransitioningContainer" withSwiftType:"TodayTransitioningLabelView"];
  [validationsCopy validateClass:@"ASMessagesProvider.TodayCardLabelsView" hasSwiftField:@"titleTransitioningContainer" withSwiftType:"TodayTransitioningLabelView"];
  [validationsCopy validateClass:@"ASMessagesProvider.TodayCardLabelsView" hasSwiftField:@"descriptionTransitioningContainer" withSwiftType:"TodayTransitioningLabelView"];
  [validationsCopy validateClass:@"ASMessagesProvider.TodayTransitioningLabelView" hasSwiftField:@"label" withSwiftType:"DynamicTypeLabel"];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = RiverTodayCardCollectionViewCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(RiverTodayCardCollectionViewCellAccessibility *)&v3 accessibilityTraits];
}

- (id)accessibilityLabel
{
  v2 = [(RiverTodayCardCollectionViewCellAccessibility *)self safeSwiftValueForKey:@"labelsView"];
  v3 = [v2 safeSwiftValueForKey:@"badgeTransitioningContainer"];
  v4 = [v3 safeSwiftValueForKey:@"label"];
  v5 = [v2 safeSwiftValueForKey:@"titleTransitioningContainer"];
  v6 = [v5 safeSwiftValueForKey:@"label"];
  v7 = [v2 safeSwiftValueForKey:@"descriptionTransitioningContainer"];
  v10 = [v7 safeSwiftValueForKey:@"label"];
  v8 = __UIAXStringForVariables();

  return v8;
}

@end