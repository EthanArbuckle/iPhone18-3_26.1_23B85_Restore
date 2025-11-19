@interface IMBTimeslotsContainerViewAccessibility
- (id)accessibilityElements;
@end

@implementation IMBTimeslotsContainerViewAccessibility

- (id)accessibilityElements
{
  objc_opt_class();
  v3 = [(IMBTimeslotsContainerViewAccessibility *)self safeValueForKey:@"timeslotViews"];
  v4 = __UIAccessibilityCastAsClass();

  return v4;
}

@end