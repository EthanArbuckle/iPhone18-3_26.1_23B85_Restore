@interface AMSBag(AppleMediaServicesUI)
+ (uint64_t)amsui_internalBag;
@end

@implementation AMSBag(AppleMediaServicesUI)

+ (uint64_t)amsui_internalBag
{
  if (amsui_internalBag_onceToken != -1)
  {
    +[AMSBag(AppleMediaServicesUI) amsui_internalBag];
  }

  v1 = MEMORY[0x1E698C7D8];

  return [v1 bagForProfile:@"appstored" profileVersion:@"1"];
}

@end