@interface ABCDailyMaintenanceActivity
+ (id)sharedInstance;
@end

@implementation ABCDailyMaintenanceActivity

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_3 != -1)
  {
    +[ABCDailyMaintenanceActivity sharedInstance];
  }

  v3 = sharedInstance_sSharedActivity;

  return v3;
}

uint64_t __45__ABCDailyMaintenanceActivity_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(ABCDailyMaintenanceActivity);
  v1 = sharedInstance_sSharedActivity;
  sharedInstance_sSharedActivity = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end