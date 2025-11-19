@interface FIUIWorkoutCompletionPercentageRingViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation FIUIWorkoutCompletionPercentageRingViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"FIUIWorkoutCompletionPercentageRingViewCell" hasInstanceMethod:@"ringsView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"FIUIWorkoutCompletionPercentageRingViewCell" hasInstanceMethod:@"typeLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"FIUIWorkoutCompletionPercentageRingViewCell" hasInstanceMethod:@"secondaryLabel" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(FIUIWorkoutCompletionPercentageRingViewCellAccessibility *)self safeValueForKey:@"typeLabel"];
  v4 = [v3 accessibilityLabel];

  v5 = [(FIUIWorkoutCompletionPercentageRingViewCellAccessibility *)self safeValueForKey:@"ringsView"];
  v6 = [v5 accessibilityLabel];

  v7 = [(FIUIWorkoutCompletionPercentageRingViewCellAccessibility *)self safeValueForKey:@"secondaryLabel"];
  v8 = [v7 accessibilityLabel];

  [v8 length];
  v9 = __UIAXStringForVariables();

  return v9;
}

@end