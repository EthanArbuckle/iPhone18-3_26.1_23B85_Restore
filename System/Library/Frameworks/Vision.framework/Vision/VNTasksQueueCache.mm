@interface VNTasksQueueCache
- (VNTasksQueueCache)init;
- (id)_queueWithUniqueAppendix:(id)a3 queueClass:(Class)a4;
- (void)releaseAllQueues;
- (void)releaseQueueWithUniqueAppendix:(id)a3;
- (void)setMaximumTasksCount:(int64_t)a3;
@end

@implementation VNTasksQueueCache

- (void)releaseAllQueues
{
  os_unfair_lock_lock(&self->_queueNameToTasksQueueDictionaryLock);
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  queueNameToTasksQueueDictionary = self->_queueNameToTasksQueueDictionary;
  self->_queueNameToTasksQueueDictionary = v3;

  os_unfair_lock_unlock(&self->_queueNameToTasksQueueDictionaryLock);
}

- (void)releaseQueueWithUniqueAppendix:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock(&self->_queueNameToTasksQueueDictionaryLock);
  v4 = [objc_opt_class() queueLabelWithUniqueAppendix:v5];
  [(NSMutableDictionary *)self->_queueNameToTasksQueueDictionary removeObjectForKey:v4];

  os_unfair_lock_unlock(&self->_queueNameToTasksQueueDictionaryLock);
}

- (void)setMaximumTasksCount:(int64_t)a3
{
  if (a3 >= 1 && [objc_opt_class() maximumAllowedTasksInTheQueue] >= a3)
  {
    os_unfair_lock_lock(&self->_queueNameToTasksQueueDictionaryLock);
    self->_maximumTasksCount = a3;
    queueNameToTasksQueueDictionary = self->_queueNameToTasksQueueDictionary;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __42__VNTasksQueueCache_setMaximumTasksCount___block_invoke;
    v7[3] = &unk_1E77B2E50;
    v7[4] = self;
    [(NSMutableDictionary *)queueNameToTasksQueueDictionary enumerateKeysAndObjectsUsingBlock:v7];
    os_unfair_lock_unlock(&self->_queueNameToTasksQueueDictionaryLock);
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Maximum queue tasks count (%ld) is outside of the allowed range [1; %ld]", a3, objc_msgSend(objc_opt_class(), "maximumAllowedTasksInTheQueue")];
    [VNError VNAssert:0 log:?];
  }
}

- (id)_queueWithUniqueAppendix:(id)a3 queueClass:(Class)a4
{
  v6 = a3;
  os_unfair_lock_lock(&self->_queueNameToTasksQueueDictionaryLock);
  v7 = [objc_opt_class() queueLabelWithUniqueAppendix:v6];
  v8 = [(NSMutableDictionary *)self->_queueNameToTasksQueueDictionary objectForKey:v7];
  if (!v8)
  {
    v8 = [[a4 alloc] initWithDispatchQueueLabel:v7 maximumTasksCount:{objc_msgSend(objc_opt_class(), "maximumAllowedTasksInTheQueue")}];
    [(NSMutableDictionary *)self->_queueNameToTasksQueueDictionary setObject:v8 forKeyedSubscript:v7];
    VNValidatedLog(1, @"Created new tasks queue: %@", v9, v10, v11, v12, v13, v14, v8);
  }

  os_unfair_lock_unlock(&self->_queueNameToTasksQueueDictionaryLock);

  return v8;
}

- (VNTasksQueueCache)init
{
  v7.receiver = self;
  v7.super_class = VNTasksQueueCache;
  v2 = [(VNTasksQueueCache *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    queueNameToTasksQueueDictionary = v2->_queueNameToTasksQueueDictionary;
    v2->_queueNameToTasksQueueDictionary = v3;

    v2->_queueNameToTasksQueueDictionaryLock._os_unfair_lock_opaque = 0;
    v2->_maximumTasksCount = [objc_opt_class() maximumAllowedTasksInTheQueue];
    v5 = v2;
  }

  return v2;
}

@end