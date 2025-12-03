@interface VNRequestPerformingPriorityGroup2AsyncTasksQueueCache
+ (id)queueLabelWithUniqueAppendix:(id)appendix;
+ (id)sharedCache;
@end

@implementation VNRequestPerformingPriorityGroup2AsyncTasksQueueCache

+ (id)queueLabelWithUniqueAppendix:(id)appendix
{
  appendixCopy = appendix;
  appendixCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"com.apple.VN.VNRequestPerformingPriorityGroup2AsyncTasksQueue.%@", appendixCopy];

  return appendixCopy;
}

+ (id)sharedCache
{
  if (+[VNRequestPerformingPriorityGroup2AsyncTasksQueueCache sharedCache]::onceToken != -1)
  {
    dispatch_once(&+[VNRequestPerformingPriorityGroup2AsyncTasksQueueCache sharedCache]::onceToken, &__block_literal_global_117);
  }

  v3 = +[VNRequestPerformingPriorityGroup2AsyncTasksQueueCache sharedCache]::cache;

  return v3;
}

uint64_t __68__VNRequestPerformingPriorityGroup2AsyncTasksQueueCache_sharedCache__block_invoke()
{
  +[VNRequestPerformingPriorityGroup2AsyncTasksQueueCache sharedCache]::cache = objc_alloc_init(VNRequestPerformingPriorityGroup2AsyncTasksQueueCache);

  return MEMORY[0x1EEE66BB8]();
}

@end