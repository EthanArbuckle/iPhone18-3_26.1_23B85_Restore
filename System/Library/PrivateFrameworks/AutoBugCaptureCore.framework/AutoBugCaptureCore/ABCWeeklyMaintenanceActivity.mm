@interface ABCWeeklyMaintenanceActivity
+ (id)sharedInstance;
@end

@implementation ABCWeeklyMaintenanceActivity

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_71 != -1)
  {
    +[ABCWeeklyMaintenanceActivity sharedInstance];
  }

  v3 = sharedInstance_sSharedActivity_70;

  return v3;
}

uint64_t __46__ABCWeeklyMaintenanceActivity_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(ABCWeeklyMaintenanceActivity);
  v1 = sharedInstance_sSharedActivity_70;
  sharedInstance_sSharedActivity_70 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end