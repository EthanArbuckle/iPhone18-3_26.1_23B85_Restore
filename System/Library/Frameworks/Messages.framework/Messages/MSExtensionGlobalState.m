@interface MSExtensionGlobalState
@end

@implementation MSExtensionGlobalState

uint64_t __41___MSExtensionGlobalState_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance = objc_alloc_init(_MSExtensionGlobalState);

  return MEMORY[0x1EEE66BB8]();
}

@end