@interface APSystemInternal
+ (BOOL)isAppleInternalInstall;
@end

@implementation APSystemInternal

+ (BOOL)isAppleInternalInstall
{
  if (qword_1EDBA4C18 != -1)
  {
    sub_1BADC5720();
  }

  return byte_1EDBA4C20;
}

@end