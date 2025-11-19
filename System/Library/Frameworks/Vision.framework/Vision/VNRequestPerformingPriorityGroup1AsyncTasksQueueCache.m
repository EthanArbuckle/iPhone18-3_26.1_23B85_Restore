@interface VNRequestPerformingPriorityGroup1AsyncTasksQueueCache
+ (id)queueLabelWithUniqueAppendix:(id)a3;
+ (id)sharedCache;
@end

@implementation VNRequestPerformingPriorityGroup1AsyncTasksQueueCache

+ (id)queueLabelWithUniqueAppendix:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"com.apple.VN.VNRequestPerformingPriorityGroup1AsyncTasksQueue.%@", v3];

  return v4;
}

+ (id)sharedCache
{
  if (+[VNRequestPerformingPriorityGroup1AsyncTasksQueueCache sharedCache]::onceToken != -1)
  {
    dispatch_once(&+[VNRequestPerformingPriorityGroup1AsyncTasksQueueCache sharedCache]::onceToken, &__block_literal_global_6066);
  }

  v3 = +[VNRequestPerformingPriorityGroup1AsyncTasksQueueCache sharedCache]::cache;

  return v3;
}

uint64_t __68__VNRequestPerformingPriorityGroup1AsyncTasksQueueCache_sharedCache__block_invoke()
{
  +[VNRequestPerformingPriorityGroup1AsyncTasksQueueCache sharedCache]::cache = objc_alloc_init(VNRequestPerformingPriorityGroup1AsyncTasksQueueCache);

  return MEMORY[0x1EEE66BB8]();
}

@end