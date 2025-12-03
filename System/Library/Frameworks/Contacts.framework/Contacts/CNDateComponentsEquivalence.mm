@interface CNDateComponentsEquivalence
+ (BOOL)canUnifyComponents:(id)components withComponents:(id)withComponents;
+ (BOOL)isCalendar:(id)calendar equivalentToCalendar:(id)toCalendar;
+ (BOOL)isComponent:(int64_t)component equivalentToComponent:(int64_t)toComponent;
@end

@implementation CNDateComponentsEquivalence

+ (BOOL)canUnifyComponents:(id)components withComponents:(id)withComponents
{
  componentsCopy = components;
  withComponentsCopy = withComponents;
  if ([self isComponent:objc_msgSend(componentsCopy equivalentToComponent:{"era"), objc_msgSend(withComponentsCopy, "era")}] && objc_msgSend(self, "isComponent:equivalentToComponent:", objc_msgSend(componentsCopy, "year"), objc_msgSend(withComponentsCopy, "year")) && objc_msgSend(self, "isComponent:equivalentToComponent:", objc_msgSend(componentsCopy, "month"), objc_msgSend(withComponentsCopy, "month")) && (v8 = objc_msgSend(componentsCopy, "isLeapMonth"), v8 == objc_msgSend(withComponentsCopy, "isLeapMonth")) && objc_msgSend(self, "isComponent:equivalentToComponent:", objc_msgSend(componentsCopy, "day"), objc_msgSend(withComponentsCopy, "day")))
  {
    calendar = [componentsCopy calendar];
    calendar2 = [withComponentsCopy calendar];
    v11 = [self isCalendar:calendar equivalentToCalendar:calendar2];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (BOOL)isComponent:(int64_t)component equivalentToComponent:(int64_t)toComponent
{
  if (component == toComponent)
  {
    return 1;
  }

  else
  {
    return (component == 0x7FFFFFFFFFFFFFFFLL) ^ (toComponent == 0x7FFFFFFFFFFFFFFFLL);
  }
}

+ (BOOL)isCalendar:(id)calendar equivalentToCalendar:(id)toCalendar
{
  if ((calendar == 0) == (toCalendar != 0))
  {
    return 1;
  }

  else
  {
    return [calendar isEqual:toCalendar];
  }
}

@end