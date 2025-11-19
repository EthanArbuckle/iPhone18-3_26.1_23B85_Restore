@interface CHWorkoutsListTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityPath;
@end

@implementation CHWorkoutsListTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CHWorkoutsListTableViewCell" hasSwiftField:@"workoutContentView" withSwiftType:"WorkoutsListContentView"];
  [v3 validateClass:@"FitnessApp.WorkoutsListContentView" hasSwiftFieldOfAnyClass:@"insetContentView"];
}

- (id)accessibilityPath
{
  v3 = [(CHWorkoutsListTableViewCellAccessibility *)self safeSwiftValueForKey:@"workoutContentView"];
  v4 = [v3 safeSwiftValueForKey:@"insetContentView"];
  v5 = [v4 accessibilityPath];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = CHWorkoutsListTableViewCellAccessibility;
    v7 = [(CHWorkoutsListTableViewCellAccessibility *)&v10 accessibilityPath];
  }

  v8 = v7;

  return v8;
}

@end