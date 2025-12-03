@interface PHSOSKappaDialCountdownViewModel
- (NSString)subtitleString;
- (NSString)titleString;
- (id)countdownString:(unint64_t)string;
- (unint64_t)countdownWithAudio;
@end

@implementation PHSOSKappaDialCountdownViewModel

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

- (unint64_t)countdownWithAudio
{
  if ([SOSUtilities BOOLOverrideForDefaultsKey:@"debug.countdown.mute" defaultValue:0])
  {
    return 0;
  }

  else
  {
    return 30;
  }
}

- (id)countdownString:(unint64_t)string
{
  v3 = [NSNumber numberWithUnsignedInteger:string];
  v4 = [NSNumberFormatter localizedStringFromNumber:v3 numberStyle:0];

  return v4;
}

@end