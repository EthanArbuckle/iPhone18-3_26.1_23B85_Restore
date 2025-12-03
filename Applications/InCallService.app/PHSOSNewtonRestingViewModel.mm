@interface PHSOSNewtonRestingViewModel
- (NSString)subtitleString;
- (NSString)titleString;
@end

@implementation PHSOSNewtonRestingViewModel

- (NSString)titleString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"SOS_NEWTON_RESTING_VIEW_TITLE" value:&stru_100361FD0 table:@"Localizable-Stewie"];

  return v3;
}

- (NSString)subtitleString
{
  dateOfSOSEvent = [(PHSOSNewtonRestingViewModel *)self dateOfSOSEvent];
  v3 = sub_100062F88(dateOfSOSEvent);

  return v3;
}

@end