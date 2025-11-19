@interface PHSOSDialCountdownViewModel
- (NSString)subtitleString;
- (NSString)titleString;
- (id)countdownString:(unint64_t)a3;
@end

@implementation PHSOSDialCountdownViewModel

- (NSString)titleString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"EMERGENCY_SOS" value:&stru_100361FD0 table:@"InCallService"];

  return v3;
}

- (NSString)subtitleString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"SOS_COUNTDOWN_SUBTITLE" value:&stru_100361FD0 table:@"InCallService"];

  return v3;
}

- (id)countdownString:(unint64_t)a3
{
  v3 = [NSNumber numberWithUnsignedInteger:a3];
  v4 = [NSNumberFormatter localizedStringFromNumber:v3 numberStyle:0];

  return v4;
}

@end