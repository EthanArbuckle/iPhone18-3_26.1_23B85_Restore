@interface VNAsyncTasksQueueCache
- (id)queueWithUniqueAppendix:(id)appendix;
@end

@implementation VNAsyncTasksQueueCache

- (id)queueWithUniqueAppendix:(id)appendix
{
  appendixCopy = appendix;
  v5 = objc_opt_class();
  v8.receiver = self;
  v8.super_class = VNAsyncTasksQueueCache;
  v6 = [(VNTasksQueueCache *)&v8 _queueWithUniqueAppendix:appendixCopy queueClass:v5];

  return v6;
}

@end