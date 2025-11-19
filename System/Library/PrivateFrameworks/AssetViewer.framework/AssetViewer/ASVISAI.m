@interface ASVISAI
+ (BOOL)isAppleInternalInstall;
@end

@implementation ASVISAI

+ (BOOL)isAppleInternalInstall
{
  if (isAppleInternalInstall_onceToken != -1)
  {
    +[ASVISAI isAppleInternalInstall];
  }

  return isAppleInternalInstall_isAppleInternalInstall;
}

uint64_t __33__ASVISAI_isAppleInternalInstall__block_invoke()
{
  result = MGGetBoolAnswer();
  isAppleInternalInstall_isAppleInternalInstall = result;
  return result;
}

@end