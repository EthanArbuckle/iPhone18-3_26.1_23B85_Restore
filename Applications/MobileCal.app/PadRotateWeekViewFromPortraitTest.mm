@interface PadRotateWeekViewFromPortraitTest
- (void)_setupViewToDate:(id)date;
@end

@implementation PadRotateWeekViewFromPortraitTest

- (void)_setupViewToDate:(id)date
{
  dateCopy = date;
  application = [(ApplicationTest *)self application];
  rootNavigationController = [application rootNavigationController];
  resetToWeekView = [rootNavigationController resetToWeekView];

  [resetToWeekView setDisplayedDate:dateCopy animated:0];
}

@end