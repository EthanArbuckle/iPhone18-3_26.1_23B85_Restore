@interface PHSOSKappaCheckInViewModel
- (NSString)subtitleString;
- (NSString)titleString;
@end

@implementation PHSOSKappaCheckInViewModel

- (NSString)titleString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"SOS_KAPPA_CHECK_IN_VIEW_TITLE" value:&stru_100361FD0 table:@"Localizable-kappa"];

  return v3;
}

- (NSString)subtitleString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"SOS_KAPPA_CHECK_IN_VIEW_SUBTITLE" value:&stru_100361FD0 table:@"Localizable-kappa"];

  return v3;
}

@end