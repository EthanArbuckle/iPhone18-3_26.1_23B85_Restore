@interface WorkoutsListContentViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_isDateInLastWeek:(id)week;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation WorkoutsListContentViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"FitnessApp.WorkoutsListContentView" hasSwiftField:@"workout" withSwiftType:"Optional<HKWorkout>"];
  [validationsCopy validateClass:@"FitnessApp.WorkoutsListContentView" hasSwiftField:@"dateLabel" withSwiftType:"UILabel"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v10.receiver = self;
  v10.super_class = WorkoutsListContentViewAccessibility;
  [(WorkoutsListContentViewAccessibility *)&v10 _accessibilityLoadAccessibilityInformation];
  objc_initWeak(&location, self);
  LOBYTE(from) = 0;
  objc_opt_class();
  v3 = [(WorkoutsListContentViewAccessibility *)self safeSwiftValueForKey:@"dateLabel"];
  v4 = __UIAccessibilityCastAsClass();

  objc_initWeak(&from, v4);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __82__WorkoutsListContentViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v5[3] = &unk_1C5B8;
  objc_copyWeak(&v6, &location);
  objc_copyWeak(&v7, &from);
  [v4 setAccessibilityLabelBlock:v5];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&from);

  objc_destroyWeak(&location);
}

id __82__WorkoutsListContentViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  objc_opt_class();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained safeSwiftValueForKey:@"workout"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 startDate];
  if (v5 && (v6 = objc_loadWeakRetained((a1 + 32)), v7 = [v6 _isDateInLastWeek:v5], v6, (v7 & 1) == 0))
  {
    v9 = AXDateStringForFormat();
  }

  else
  {
    v8 = objc_loadWeakRetained((a1 + 40));
    v9 = [v8 text];
  }

  return v9;
}

- (BOOL)_isDateInLastWeek:(id)week
{
  weekCopy = week;
  v4 = +[NSCalendar currentCalendar];
  v5 = +[NSDate date];
  v6 = [v4 dateByAddingUnit:16 value:-6 toDate:v5 options:0];

  v7 = +[NSCalendar currentCalendar];
  v8 = [v7 startOfDayForDate:v6];

  v9 = [weekCopy laterDate:v8];

  return v9 == weekCopy;
}

@end