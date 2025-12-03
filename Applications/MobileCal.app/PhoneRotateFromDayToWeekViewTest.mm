@interface PhoneRotateFromDayToWeekViewTest
- (id)checkTestPreconditions;
- (void)_setupViewToDate:(id)date;
@end

@implementation PhoneRotateFromDayToWeekViewTest

- (void)_setupViewToDate:(id)date
{
  dateCopy = date;
  application = [(ApplicationTest *)self application];
  rootNavigationController = [application rootNavigationController];
  resetToMonthView = [rootNavigationController resetToMonthView];

  date = [dateCopy date];
  [resetToMonthView showDate:date animated:0];

  v8 = [resetToMonthView pushedDayViewControllerWithDate:dateCopy animated:0];
}

- (id)checkTestPreconditions
{
  if (EKUIUseLargeFormatPhoneUI())
  {
    return @"Test cannot be run on plus sized phones";
  }

  else
  {
    return 0;
  }
}

@end