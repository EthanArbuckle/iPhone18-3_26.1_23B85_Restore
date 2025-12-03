@interface VNControlledCapacityTasksQueue
+ (void)setRequiresHighQoS:(BOOL)s;
+ (void)setTasksTimeout:(int64_t)timeout;
- (BOOL)currentQueueIsSynchronizationQueue;
- (BOOL)dispatchGroupWait:(id)wait error:(id *)error;
- (VNControlledCapacityTasksQueue)initWithDispatchQueueLabel:(id)label maximumTasksCount:(int64_t)count;
- (id)description;
- (void)dispatchGroupAsyncByPreservingQueueCapacity:(id)capacity block:(id)block;
- (void)dispatchSyncByPreservingQueueCapacity:(id)capacity;
- (void)setMaximumTasksCount:(int64_t)count;
@end

@implementation VNControlledCapacityTasksQueue

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Controlled Capacity Tasks Queue: %@; %@", self->_queue, self->_semaphore];

  return v2;
}

- (void)setMaximumTasksCount:(int64_t)count
{
  if (count <= 0)
  {
    [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Maximum queue tasks count (%ld) must be a positive number", count];
    [VNError VNAssert:0 log:?];
  }

  else
  {
    self->_maximumTasksCount = count;
    self->_semaphore = dispatch_semaphore_create(count);
  }

  MEMORY[0x1EEE66BB8]();
}

- (BOOL)currentQueueIsSynchronizationQueue
{
  label = dispatch_queue_get_label(self->_queue);
  [VNError VNAssert:label != 0 log:@"Synchronization queue must be initialized"];
  v3 = dispatch_queue_get_label(0);
  if (v3)
  {
    LOBYTE(v3) = strcmp(label, v3) == 0;
  }

  return v3;
}

- (BOOL)dispatchGroupWait:(id)wait error:(id *)error
{
  waitCopy = wait;
  v6 = +[VNControlledCapacityTasksQueue tasksTimeout];
  if (v6 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = dispatch_time(0, v6);
  }

  v8 = dispatch_group_wait(waitCopy, v7);
  v9 = v8;
  if (error && v8)
  {
    *error = [VNError errorForExecutionTimeoutWithLocalizedDescription:@"Timed out waiting for dispatch_group_wait completion"];
  }

  return v9 == 0;
}

- (void)dispatchSyncByPreservingQueueCapacity:(id)capacity
{
  semaphore = self->_semaphore;
  capacityCopy = capacity;
  dispatch_semaphore_wait(semaphore, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_sync(self->_queue, capacityCopy);

  v6 = self->_semaphore;

  dispatch_semaphore_signal(v6);
}

- (void)dispatchGroupAsyncByPreservingQueueCapacity:(id)capacity block:(id)block
{
  semaphore = self->_semaphore;
  blockCopy = block;
  group = capacity;
  dispatch_semaphore_wait(semaphore, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_group_async(group, self->_queue, blockCopy);
}

- (VNControlledCapacityTasksQueue)initWithDispatchQueueLabel:(id)label maximumTasksCount:(int64_t)count
{
  labelCopy = label;
  v21.receiver = self;
  v21.super_class = VNControlledCapacityTasksQueue;
  v7 = [(VNControlledCapacityTasksQueue *)&v21 init];
  v8 = v7;
  v9 = 0;
  if (count >= 1 && v7)
  {
    targetHighPriorityQueue = [objc_opt_class() targetHighPriorityQueue];

    v11 = labelCopy;
    uTF8String = [labelCopy UTF8String];
    [objc_opt_class() dispatchQueueAttribute];
    if (targetHighPriorityQueue)
      v13 = {;
      targetHighPriorityQueue2 = [objc_opt_class() targetHighPriorityQueue];
      v15 = dispatch_queue_create_with_target_V2(uTF8String, v13, targetHighPriorityQueue2);
      queue = v8->_queue;
      v8->_queue = v15;
    }

    else
      v13 = {;
      v17 = dispatch_queue_create(uTF8String, v13);
      targetHighPriorityQueue2 = v8->_queue;
      v8->_queue = v17;
    }

    v8->_maximumTasksCount = count;
    v18 = dispatch_semaphore_create(count);
    semaphore = v8->_semaphore;
    v8->_semaphore = v18;

    v9 = v8;
  }

  return v9;
}

+ (void)setRequiresHighQoS:(BOOL)s
{
  os_unfair_lock_lock(&_requiresHighQoSLock);
  _requiresHighQoS = s;

  os_unfair_lock_unlock(&_requiresHighQoSLock);
}

+ (void)setTasksTimeout:(int64_t)timeout
{
  os_unfair_lock_lock(&_tasksTimeoutLock);
  _tasksTimeout = timeout;

  os_unfair_lock_unlock(&_tasksTimeoutLock);
}

@end