@interface NSUserDefaults
+ (void)crl_registerDefaults;
@end

@implementation NSUserDefaults

+ (void)crl_registerDefaults
{
  if (crl_registerDefaults_onceToken != -1)
  {
    +[NSUserDefaults(CRLAdditions) crl_registerDefaults];
  }
}

@end