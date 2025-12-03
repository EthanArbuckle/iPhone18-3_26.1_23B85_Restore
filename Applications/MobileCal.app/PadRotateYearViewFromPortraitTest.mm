@interface PadRotateYearViewFromPortraitTest
- (void)_setupViewToDate:(id)date;
@end

@implementation PadRotateYearViewFromPortraitTest

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