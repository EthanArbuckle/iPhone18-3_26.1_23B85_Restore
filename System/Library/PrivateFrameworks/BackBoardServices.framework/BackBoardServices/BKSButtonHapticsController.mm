@interface BKSButtonHapticsController
+ (id)sharedInstance;
@end

@implementation BKSButtonHapticsController

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_6761 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_6761, &__block_literal_global_6762);
  }

  v3 = sharedInstance_controller_6763;

  return v3;
}

uint64_t __44__BKSButtonHapticsController_sharedInstance__block_invoke()
{
  sharedInstance_controller_6763 = objc_alloc_init(BKSButtonHapticsController);

  return MEMORY[0x1EEE66BB8]();
}

@end