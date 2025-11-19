@interface ABCSemiDailyMaintenanceActivity
+ (id)sharedInstance;
@end

@implementation ABCSemiDailyMaintenanceActivity

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_61 != -1)
  {
    +[ABCSemiDailyMaintenanceActivity sharedInstance];
  }

  v3 = sharedInstance_sSharedActivity_60;

  return v3;
}

uint64_t __49__ABCSemiDailyMaintenanceActivity_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(ABCSemiDailyMaintenanceActivity);
  v1 = sharedInstance_sSharedActivity_60;
  sharedInstance_sSharedActivity_60 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end