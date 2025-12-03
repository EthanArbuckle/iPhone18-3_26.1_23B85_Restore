@interface EKCalendarItemCalendarEditItemAccessibility
- (id)cellForSubitemAtIndex:(unint64_t)index;
@end

@implementation EKCalendarItemCalendarEditItemAccessibility

- (id)cellForSubitemAtIndex:(unint64_t)index
{
  v8.receiver = self;
  v8.super_class = EKCalendarItemCalendarEditItemAccessibility;
  v3 = [(EKCalendarItemCalendarEditItemAccessibility *)&v8 cellForSubitemAtIndex:index];
  detailTextLabel = [v3 detailTextLabel];
  text = [detailTextLabel text];
  detailTextLabel2 = [v3 detailTextLabel];
  [detailTextLabel2 setAccessibilityLabel:text];

  return v3;
}

@end