@interface PHSOSKappaRestingViewModel
- (NSString)subtitleString;
- (NSString)titleString;
@end

@implementation PHSOSKappaRestingViewModel

- (NSString)titleString
{
  dateOfSOSEvent = [(PHSOSKappaRestingViewModel *)self dateOfSOSEvent];
  v3 = sub_100062E8C(dateOfSOSEvent);

  return v3;
}

- (NSString)subtitleString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"SOS_KAPPA_RESTING_VIEW_SUBTITLE" value:&stru_100361FD0 table:@"Localizable-kappa"];

  return v3;
}

@end