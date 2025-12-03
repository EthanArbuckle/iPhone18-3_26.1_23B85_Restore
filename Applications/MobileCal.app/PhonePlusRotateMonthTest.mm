@interface PhonePlusRotateMonthTest
- (void)_setupViewToDate:(id)date;
@end

@implementation PhonePlusRotateMonthTest

- (void)_setupViewToDate:(id)date
{
  dateCopy = date;
  application = [(ApplicationTest *)self application];
  rootNavigationController = [application rootNavigationController];
  resetToMonthView = [rootNavigationController resetToMonthView];

  date = [dateCopy date];

  [resetToMonthView showDate:date animated:0];
}

@end