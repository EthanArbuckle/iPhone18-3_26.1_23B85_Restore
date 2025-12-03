@interface PhonePlusRotateYearTest
- (void)_setupViewToDate:(id)date;
@end

@implementation PhonePlusRotateYearTest

- (void)_setupViewToDate:(id)date
{
  dateCopy = date;
  application = [(ApplicationTest *)self application];
  rootNavigationController = [application rootNavigationController];
  resetToYearView = [rootNavigationController resetToYearView];

  date = [dateCopy date];

  [resetToYearView showDate:date animated:0];
}

@end