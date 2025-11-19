@interface PhonePlusRotateDayTest
- (void)_setupViewToDate:(id)a3;
@end

@implementation PhonePlusRotateDayTest

- (void)_setupViewToDate:(id)a3
{
  v4 = a3;
  v5 = [(ApplicationTest *)self application];
  v6 = [v5 rootNavigationController];
  v7 = [v6 resetToDayView];

  [v7 selectDate:v4 animated:0];
}

@end