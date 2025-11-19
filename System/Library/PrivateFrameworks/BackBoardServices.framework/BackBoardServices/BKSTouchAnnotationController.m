@interface BKSTouchAnnotationController
+ (id)sharedInstance;
@end

@implementation BKSTouchAnnotationController

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_6747 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_6747, &__block_literal_global_6748);
  }

  v3 = sharedInstance_controller;

  return v3;
}

uint64_t __46__BKSTouchAnnotationController_sharedInstance__block_invoke()
{
  sharedInstance_controller = objc_alloc_init(BKSTouchAnnotationController);

  return MEMORY[0x1EEE66BB8]();
}

@end