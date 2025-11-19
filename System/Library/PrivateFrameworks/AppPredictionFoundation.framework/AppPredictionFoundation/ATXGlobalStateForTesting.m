@interface ATXGlobalStateForTesting
+ (id)sharedInstance;
@end

@implementation ATXGlobalStateForTesting

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[ATXGlobalStateForTesting sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

uint64_t __42__ATXGlobalStateForTesting_sharedInstance__block_invoke()
{
  result = [MEMORY[0x277D42590] isInternalBuild];
  if (result)
  {
    sharedInstance_sharedInstance = objc_alloc_init(ATXGlobalStateForTesting);

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

@end