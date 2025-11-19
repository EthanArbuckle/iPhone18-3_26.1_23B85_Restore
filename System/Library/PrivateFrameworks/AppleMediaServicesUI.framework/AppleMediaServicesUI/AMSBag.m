@interface AMSBag
@end

@implementation AMSBag

void __49__AMSBag_AppleMediaServicesUI__amsui_internalBag__block_invoke()
{
  v2 = objc_alloc_init(MEMORY[0x1E698CA40]);
  v0 = [MEMORY[0x1E698CA00] bagKeySet];
  [v2 unionBagKeySet:v0];

  v1 = [MEMORY[0x1E698CB88] bagKeySet];
  [v2 unionBagKeySet:v1];

  [MEMORY[0x1E698C7E0] registerBagKeySet:v2 forProfile:@"appstored" profileVersion:@"1"];
}

@end