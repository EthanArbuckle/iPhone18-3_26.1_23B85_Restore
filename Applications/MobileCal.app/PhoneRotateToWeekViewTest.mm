@interface PhoneRotateToWeekViewTest
- (id)checkTestPreconditions;
- (void)_setupViewToDate:(id)date;
@end

@implementation PhoneRotateToWeekViewTest

- (void)_setupViewToDate:(id)date
{
  dateCopy = date;
  application = [(ApplicationTest *)self application];
  rootNavigationController = [application rootNavigationController];
  resetToYearView = [rootNavigationController resetToYearView];

  date = [dateCopy date];

  [resetToYearView showDate:date animated:0];
}

- (id)checkTestPreconditions
{
  if (EKUIUseLargeFormatPhoneUI())
  {
    return @"Test cannot be run on plus-sized phones";
  }

  else
  {
    return 0;
  }
}

@end