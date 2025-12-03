@interface FIUIWorkoutCompletionPercentageRingViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation FIUIWorkoutCompletionPercentageRingViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"FIUIWorkoutCompletionPercentageRingViewCell" hasInstanceMethod:@"ringsView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"FIUIWorkoutCompletionPercentageRingViewCell" hasInstanceMethod:@"typeLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"FIUIWorkoutCompletionPercentageRingViewCell" hasInstanceMethod:@"secondaryLabel" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(FIUIWorkoutCompletionPercentageRingViewCellAccessibility *)self safeValueForKey:@"typeLabel"];
  accessibilityLabel = [v3 accessibilityLabel];

  v5 = [(FIUIWorkoutCompletionPercentageRingViewCellAccessibility *)self safeValueForKey:@"ringsView"];
  accessibilityLabel2 = [v5 accessibilityLabel];

  v7 = [(FIUIWorkoutCompletionPercentageRingViewCellAccessibility *)self safeValueForKey:@"secondaryLabel"];
  accessibilityLabel3 = [v7 accessibilityLabel];

  [accessibilityLabel3 length];
  v9 = __UIAXStringForVariables();

  return v9;
}

@end