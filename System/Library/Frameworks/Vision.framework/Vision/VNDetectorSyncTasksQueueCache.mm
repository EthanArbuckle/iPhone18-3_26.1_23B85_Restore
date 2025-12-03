@interface VNDetectorSyncTasksQueueCache
+ (id)queueLabelWithUniqueAppendix:(id)appendix;
+ (id)sharedCache;
@end

@implementation VNDetectorSyncTasksQueueCache

+ (id)queueLabelWithUniqueAppendix:(id)appendix
{
  appendixCopy = appendix;
  appendixCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"com.apple.VN.detectorSyncTasksQueue.%@", appendixCopy];

  return appendixCopy;
}

+ (id)sharedCache
{
  if (+[VNDetectorSyncTasksQueueCache sharedCache]::onceToken != -1)
  {
    dispatch_once(&+[VNDetectorSyncTasksQueueCache sharedCache]::onceToken, &__block_literal_global_147);
  }

  v3 = +[VNDetectorSyncTasksQueueCache sharedCache]::cache;

  return v3;
}

uint64_t __44__VNDetectorSyncTasksQueueCache_sharedCache__block_invoke()
{
  +[VNDetectorSyncTasksQueueCache sharedCache]::cache = objc_alloc_init(VNDetectorSyncTasksQueueCache);

  return MEMORY[0x1EEE66BB8]();
}

@end