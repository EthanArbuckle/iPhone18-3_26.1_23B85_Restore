@interface CPInhibitorManager
@end

@implementation CPInhibitorManager

uint64_t __37___CPInhibitorManager_sharedInstance__block_invoke()
{
  sharedInstance__sharedManager = objc_alloc_init(_CPInhibitorManager);

  return MEMORY[0x1EEE66BB8]();
}

@end