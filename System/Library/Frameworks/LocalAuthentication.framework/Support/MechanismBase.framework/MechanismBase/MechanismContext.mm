@interface MechanismContext
+ (MechanismContext)sharedInstance;
@end

@implementation MechanismContext

+ (MechanismContext)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[MechanismContext sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_0;

  return v3;
}

uint64_t __34__MechanismContext_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_0 = objc_alloc_init(MechanismContext);

  return MEMORY[0x2821F96F8]();
}

@end