@interface VNDetectorAsyncTasksQueueCache
+ (id)queueLabelWithUniqueAppendix:(id)appendix;
+ (id)sharedCache;
@end

@implementation VNDetectorAsyncTasksQueueCache

+ (id)queueLabelWithUniqueAppendix:(id)appendix
{
  appendixCopy = appendix;
  appendixCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"com.apple.VN.detectorAsyncTasksQueue.%@", appendixCopy];

  return appendixCopy;
}

+ (id)sharedCache
{
  if (+[VNDetectorAsyncTasksQueueCache sharedCache]::onceToken != -1)
  {
    dispatch_once(&+[VNDetectorAsyncTasksQueueCache sharedCache]::onceToken, &__block_literal_global_137);
  }

  v3 = +[VNDetectorAsyncTasksQueueCache sharedCache]::cache;

  return v3;
}

uint64_t __45__VNDetectorAsyncTasksQueueCache_sharedCache__block_invoke()
{
  +[VNDetectorAsyncTasksQueueCache sharedCache]::cache = objc_alloc_init(VNDetectorAsyncTasksQueueCache);

  return MEMORY[0x1EEE66BB8]();
}

@end