@interface ASDSyncTaskScheduler
+ (id)sharedInstance;
@end

@implementation ASDSyncTaskScheduler

+ (id)sharedInstance
{
  objc_opt_self();
  if (_MergedGlobals_22 != -1)
  {
    dispatch_once(&_MergedGlobals_22, &__block_literal_global);
  }

  v0 = qword_1ED90D428;

  return v0;
}

uint64_t __38__ASDSyncTaskScheduler_sharedInstance__block_invoke()
{
  qword_1ED90D428 = objc_alloc_init(ASDSyncTaskScheduler);

  return MEMORY[0x1EEE66BB8]();
}

@end