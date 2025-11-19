@interface VNSyncTasksQueueCache
- (id)queueWithUniqueAppendix:(id)a3;
@end

@implementation VNSyncTasksQueueCache

- (id)queueWithUniqueAppendix:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v8.receiver = self;
  v8.super_class = VNSyncTasksQueueCache;
  v6 = [(VNTasksQueueCache *)&v8 _queueWithUniqueAppendix:v4 queueClass:v5];

  return v6;
}

@end