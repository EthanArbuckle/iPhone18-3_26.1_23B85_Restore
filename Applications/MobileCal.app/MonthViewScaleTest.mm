@interface MonthViewScaleTest
- (void)setUp;
@end

@implementation MonthViewScaleTest

- (void)setUp
{
  v3 = +[CUIKPreferences sharedPreferences];
  [v3 setMonthViewScaleSize:1];

  application = [(ApplicationTest *)self application];
  rootNavigationController = [application rootNavigationController];

  resetToMonthView = [rootNavigationController resetToMonthView];
  monthViewController = self->_monthViewController;
  self->_monthViewController = resetToMonthView;
}

@end