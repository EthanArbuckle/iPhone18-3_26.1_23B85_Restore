@interface WKInterfaceDate
- (void)setCalendar:(id)a3;
- (void)setTextColor:(id)a3;
- (void)setTimeZone:(id)a3;
@end

@implementation WKInterfaceDate

- (void)setTimeZone:(id)a3
{
  v4 = [a3 name];
  [(WKInterfaceObject *)self _sendValueChanged:v4 forProperty:@"timezone"];
}

- (void)setCalendar:(id)a3
{
  v4 = [a3 calendarIdentifier];
  [(WKInterfaceObject *)self _sendValueChanged:v4 forProperty:@"calendar"];
}

- (void)setTextColor:(id)a3
{
  v4 = [SPColorWrapper wrapperForColor:a3];
  [(WKInterfaceObject *)self _sendValueChanged:v4 forProperty:@"color"];
}

@end