@interface CHWorkoutsListTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityPath;
@end

@implementation CHWorkoutsListTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CHWorkoutsListTableViewCell" hasSwiftField:@"workoutContentView" withSwiftType:"WorkoutsListContentView"];
  [validationsCopy validateClass:@"FitnessApp.WorkoutsListContentView" hasSwiftFieldOfAnyClass:@"insetContentView"];
}

- (id)accessibilityPath
{
  v3 = [(CHWorkoutsListTableViewCellAccessibility *)self safeSwiftValueForKey:@"workoutContentView"];
  v4 = [v3 safeSwiftValueForKey:@"insetContentView"];
  accessibilityPath = [v4 accessibilityPath];
  v6 = accessibilityPath;
  if (accessibilityPath)
  {
    accessibilityPath2 = accessibilityPath;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = CHWorkoutsListTableViewCellAccessibility;
    accessibilityPath2 = [(CHWorkoutsListTableViewCellAccessibility *)&v10 accessibilityPath];
  }

  v8 = accessibilityPath2;

  return v8;
}

@end