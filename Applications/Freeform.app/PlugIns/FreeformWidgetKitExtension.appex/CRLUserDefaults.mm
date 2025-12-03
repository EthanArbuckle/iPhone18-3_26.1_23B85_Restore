@interface CRLUserDefaults
+ (NSDictionary)defaultDefaults;
+ (void)registerUserDefaults;
@end

@implementation CRLUserDefaults

+ (NSDictionary)defaultDefaults
{
  if (qword_10002CD48[0] != -1)
  {
    sub_10001C404();
  }

  v3 = qword_10002CD40;

  return v3;
}

+ (void)registerUserDefaults
{
  v4 = +[NSUserDefaults standardUserDefaults];
  defaultDefaults = [self defaultDefaults];
  [v4 registerDefaults:defaultDefaults];
}

@end