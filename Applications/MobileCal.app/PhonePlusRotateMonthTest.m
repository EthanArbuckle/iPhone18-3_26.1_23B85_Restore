@interface PhonePlusRotateMonthTest
- (void)_setupViewToDate:(id)a3;
@end

@implementation PhonePlusRotateMonthTest

- (void)_setupViewToDate:(id)a3
{
  v4 = a3;
  v5 = [(ApplicationTest *)self application];
  v6 = [v5 rootNavigationController];
  v8 = [v6 resetToMonthView];

  v7 = [v4 date];

  [v8 showDate:v7 animated:0];
}

@end