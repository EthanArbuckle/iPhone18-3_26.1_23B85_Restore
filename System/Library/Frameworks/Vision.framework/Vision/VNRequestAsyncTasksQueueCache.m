@interface VNRequestAsyncTasksQueueCache
+ (id)sharedCache;
@end

@implementation VNRequestAsyncTasksQueueCache

+ (id)sharedCache
{
  if (+[VNRequestAsyncTasksQueueCache sharedCache]::onceToken != -1)
  {
    dispatch_once(&+[VNRequestAsyncTasksQueueCache sharedCache]::onceToken, &__block_literal_global_127);
  }

  v3 = +[VNRequestAsyncTasksQueueCache sharedCache]::cache;

  return v3;
}

uint64_t __44__VNRequestAsyncTasksQueueCache_sharedCache__block_invoke()
{
  +[VNRequestAsyncTasksQueueCache sharedCache]::cache = objc_alloc_init(VNRequestAsyncTasksQueueCache);

  return MEMORY[0x1EEE66BB8]();
}

@end