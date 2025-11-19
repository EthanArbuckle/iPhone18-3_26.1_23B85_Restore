@interface NSUserDefaults
+ (void)crl_registerDefaults;
@end

@implementation NSUserDefaults

+ (void)crl_registerDefaults
{
  if (qword_1000B4BA0 != -1)
  {
    sub_10007CE80();
  }
}

@end