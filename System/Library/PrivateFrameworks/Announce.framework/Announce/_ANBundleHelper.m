@interface _ANBundleHelper
+ (id)currentBundle;
@end

@implementation _ANBundleHelper

+ (id)currentBundle
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32___ANBundleHelper_currentBundle__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (currentBundle_onceToken != -1)
  {
    dispatch_once(&currentBundle_onceToken, block);
  }

  v2 = currentBundle_bundle;

  return v2;
}

@end