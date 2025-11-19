@interface NSUserDefaults
+ (void)crl_registerDefaults;
@end

@implementation NSUserDefaults

+ (void)crl_registerDefaults
{
  if (qword_1000D93A0 != -1)
  {
    sub_100089A0C();
  }
}

@end