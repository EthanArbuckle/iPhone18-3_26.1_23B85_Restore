@interface PhonePlusRotateDayTest
- (void)_setupViewToDate:(id)date;
@end

@implementation PhonePlusRotateDayTest

- (void)_setupViewToDate:(id)date
{
  dateCopy = date;
  application = [(ApplicationTest *)self application];
  rootNavigationController = [application rootNavigationController];
  resetToDayView = [rootNavigationController resetToDayView];

  [resetToDayView selectDate:dateCopy animated:0];
}

@end