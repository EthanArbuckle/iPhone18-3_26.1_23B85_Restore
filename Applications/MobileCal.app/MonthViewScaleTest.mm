@interface MonthViewScaleTest
- (void)setUp;
@end

@implementation MonthViewScaleTest

- (void)setUp
{
  v3 = +[CUIKPreferences sharedPreferences];
  [v3 setMonthViewScaleSize:1];

  v4 = [(ApplicationTest *)self application];
  v7 = [v4 rootNavigationController];

  v5 = [v7 resetToMonthView];
  monthViewController = self->_monthViewController;
  self->_monthViewController = v5;
}

@end