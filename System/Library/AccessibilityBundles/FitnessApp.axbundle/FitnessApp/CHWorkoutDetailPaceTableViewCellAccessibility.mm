@interface CHWorkoutDetailPaceTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)configureWithWorkout:(id)workout workoutActivity:(id)activity dataCalculator:(id)calculator;
@end

@implementation CHWorkoutDetailPaceTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CHWorkoutDetailPaceTableViewCell" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"CHWorkoutDetailPaceTableViewCell" hasInstanceVariable:@"_valueLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"CHWorkoutDetailPaceTableViewCell" hasInstanceMethod:@"configureWithWorkout:workoutActivity:dataCalculator:" withFullSignature:{"v", "@", "@", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v8.receiver = self;
  v8.super_class = CHWorkoutDetailPaceTableViewCellAccessibility;
  [(CHWorkoutDetailPaceTableViewCellAccessibility *)&v8 _accessibilityLoadAccessibilityInformation];
  v3 = [(CHWorkoutDetailPaceTableViewCellAccessibility *)self safeUIViewForKey:@"_valueLabel"];
  accessibilityLabel = [v3 accessibilityLabel];

  v5 = [(CHWorkoutDetailPaceTableViewCellAccessibility *)self safeValueForKey:@"_titleLabel"];
  v6 = accessibilityAttributedStringForPaceContainingString(accessibilityLabel);
  accessibilityLabel2 = [v5 accessibilityLabel];
  [(CHWorkoutDetailPaceTableViewCellAccessibility *)self setAccessibilityLabel:accessibilityLabel2];

  [(CHWorkoutDetailPaceTableViewCellAccessibility *)self setAccessibilityValue:v6];
}

- (void)configureWithWorkout:(id)workout workoutActivity:(id)activity dataCalculator:(id)calculator
{
  v10.receiver = self;
  v10.super_class = CHWorkoutDetailPaceTableViewCellAccessibility;
  workoutCopy = workout;
  [(CHWorkoutDetailPaceTableViewCellAccessibility *)&v10 configureWithWorkout:workoutCopy workoutActivity:activity dataCalculator:calculator];
  workoutActivityType = [workoutCopy workoutActivityType];

  if (workoutActivityType != &dword_C + 1)
  {
    [(CHWorkoutDetailPaceTableViewCellAccessibility *)self _accessibilityLoadAccessibilityInformation];
  }
}

@end