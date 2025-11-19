@interface PadRotateWeekViewFromPortraitTest
- (void)_setupViewToDate:(id)a3;
@end

@implementation PadRotateWeekViewFromPortraitTest

- (void)_setupViewToDate:(id)a3
{
  v4 = a3;
  v5 = [(ApplicationTest *)self application];
  v6 = [v5 rootNavigationController];
  v7 = [v6 resetToWeekView];

  [v7 setDisplayedDate:v4 animated:0];
}

@end