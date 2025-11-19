@interface EnvironmentManager
+ (id)sharedInstance;
- (id)dumpStatus;
@end

@implementation EnvironmentManager

+ (id)sharedInstance
{
  if (qword_100063040 != -1)
  {
    sub_1000227D8();
  }

  v3 = qword_100063038;

  return v3;
}

- (id)dumpStatus
{
  v8[0] = @"biometry";
  v2 = +[BiometryHelper sharedInstance];
  v3 = [v2 dumpStatus];
  v8[1] = @"passcode";
  v9[0] = v3;
  v4 = +[LAPasscodeHelper sharedInstance];
  v5 = [v4 dumpStatus];
  v9[1] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2];

  return v6;
}

@end