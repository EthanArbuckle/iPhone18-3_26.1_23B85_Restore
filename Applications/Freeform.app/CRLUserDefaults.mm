@interface CRLUserDefaults
+ (NSDictionary)defaultDefaults;
+ (void)registerUserDefaults;
@end

@implementation CRLUserDefaults

+ (void)registerUserDefaults
{
  v4 = +[NSUserDefaults standardUserDefaults];
  defaultDefaults = [self defaultDefaults];
  [v4 registerDefaults:defaultDefaults];
}

+ (NSDictionary)defaultDefaults
{
  if (qword_101A35238 != -1)
  {
    sub_100008D58();
  }

  v3 = qword_101A35230;

  return v3;
}

@end