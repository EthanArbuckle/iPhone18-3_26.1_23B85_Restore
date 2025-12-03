@interface WKInterfaceDate
- (void)setCalendar:(id)calendar;
- (void)setTextColor:(id)color;
- (void)setTimeZone:(id)zone;
@end

@implementation WKInterfaceDate

- (void)setTimeZone:(id)zone
{
  name = [zone name];
  [(WKInterfaceObject *)self _sendValueChanged:name forProperty:@"timezone"];
}

- (void)setCalendar:(id)calendar
{
  calendarIdentifier = [calendar calendarIdentifier];
  [(WKInterfaceObject *)self _sendValueChanged:calendarIdentifier forProperty:@"calendar"];
}

- (void)setTextColor:(id)color
{
  v4 = [SPColorWrapper wrapperForColor:color];
  [(WKInterfaceObject *)self _sendValueChanged:v4 forProperty:@"color"];
}

@end