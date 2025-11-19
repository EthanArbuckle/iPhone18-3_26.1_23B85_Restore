@interface ANBundleHelper
@end

@implementation ANBundleHelper

uint64_t __32___ANBundleHelper_currentBundle__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  currentBundle_bundle = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return MEMORY[0x2821F96F8]();
}

@end