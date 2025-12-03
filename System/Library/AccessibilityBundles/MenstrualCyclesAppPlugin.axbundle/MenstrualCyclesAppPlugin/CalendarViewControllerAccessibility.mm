@interface CalendarViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)calendarDataSource:(id)source cellForItemIn:(id)in date:(id)date dayComponent:(int64_t)component indexPath:(id)path;
@end

@implementation CalendarViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MenstrualCyclesAppPlugin.CalendarDayCell" isKindOfClass:@"UICollectionViewCell"];
  [validationsCopy validateClass:@"MenstrualCyclesAppPlugin.CalendarViewController" hasInstanceMethod:@"calendarDataSource:cellForItemIn:date:dayComponent:indexPath:" withFullSignature:{"@", "@", "@", "q", "@", 0}];
}

- (id)calendarDataSource:(id)source cellForItemIn:(id)in date:(id)date dayComponent:(int64_t)component indexPath:(id)path
{
  sourceCopy = source;
  inCopy = in;
  dateCopy = date;
  pathCopy = path;
  v20.receiver = self;
  v20.super_class = CalendarViewControllerAccessibility;
  v16 = [(CalendarViewControllerAccessibility *)&v20 calendarDataSource:sourceCopy cellForItemIn:inCopy date:dateCopy dayComponent:component indexPath:pathCopy];
  objc_opt_class();
  v17 = __UIAccessibilityCastAsClass();
  objc_opt_class();
  v18 = __UIAccessibilityCastAsSafeCategory();
  [v18 setAccessibilityDate:v17];

  return v16;
}

@end