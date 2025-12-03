@interface COSSetupFlowPreferences
+ (unint64_t)position;
+ (void)beganController:(unint64_t)controller;
@end

@implementation COSSetupFlowPreferences

+ (void)beganController:(unint64_t)controller
{
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [NSNumber numberWithUnsignedInteger:controller];
  [v4 setObject:v5 forKey:@"CurrentController"];

  v6 = +[NSUserDefaults standardUserDefaults];
  [v6 synchronize];
}

+ (unint64_t)position
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"CurrentController"];

  if (v3)
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

@end