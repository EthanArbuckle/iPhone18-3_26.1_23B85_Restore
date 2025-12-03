@interface PHSOSKappaNotifyCountdownViewModel
- (NSString)subtitleString;
- (NSString)titleString;
- (id)countdownString:(unint64_t)string;
@end

@implementation PHSOSKappaNotifyCountdownViewModel

- (NSString)titleString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"SOS_NOTIFICATION" value:&stru_100361FD0 table:@"InCallService"];

  return v3;
}

- (NSString)subtitleString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"SOS_KAPPA_CONTACT_NOTIFICATION_SUBTITLE" value:&stru_100361FD0 table:@"Localizable-kappa"];

  return v3;
}

- (id)countdownString:(unint64_t)string
{
  v3 = [NSNumber numberWithUnsignedInteger:string];
  v4 = [NSNumberFormatter localizedStringFromNumber:v3 numberStyle:0];

  return v4;
}

@end