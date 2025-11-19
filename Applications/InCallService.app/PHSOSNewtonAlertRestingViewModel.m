@interface PHSOSNewtonAlertRestingViewModel
- (NSString)titleString;
@end

@implementation PHSOSNewtonAlertRestingViewModel

- (NSString)titleString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"SOS_NEWTON_RESTING_VIEW_TITLE" value:&stru_100361FD0 table:@"Localizable-Stewie"];

  return v3;
}

@end