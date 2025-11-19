@interface PHSOSKappaAlertRestingViewModel
- (NSString)titleString;
@end

@implementation PHSOSKappaAlertRestingViewModel

- (NSString)titleString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"SOS_KAPPA_RESTING_VIEW_TITLE" value:&stru_100361FD0 table:@"Localizable-kappa"];

  return v3;
}

@end