@interface AXQSMenuHelper
+ (id)sharedInstance;
@end

@implementation AXQSMenuHelper

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[AXQSMenuHelper sharedInstance];
  }

  v3 = sharedInstance__shared_0;

  return v3;
}

uint64_t __32__AXQSMenuHelper_sharedInstance__block_invoke()
{
  sharedInstance__shared_0 = objc_alloc_init(AXQSMenuHelper);

  return MEMORY[0x2A1C71028]();
}

@end