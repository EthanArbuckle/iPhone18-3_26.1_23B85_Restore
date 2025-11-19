@interface VNControlledCapacityTasksQueue
+ (void)setRequiresHighQoS:(BOOL)a3;
+ (void)setTasksTimeout:(int64_t)a3;
- (BOOL)currentQueueIsSynchronizationQueue;
- (BOOL)dispatchGroupWait:(id)a3 error:(id *)a4;
- (VNControlledCapacityTasksQueue)initWithDispatchQueueLabel:(id)a3 maximumTasksCount:(int64_t)a4;
- (id)description;
- (void)dispatchGroupAsyncByPreservingQueueCapacity:(id)a3 block:(id)a4;
- (void)dispatchSyncByPreservingQueueCapacity:(id)a3;
- (void)setMaximumTasksCount:(int64_t)a3;
@end

@implementation VNControlledCapacityTasksQueue

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Controlled Capacity Tasks Queue: %@; %@", self->_queue, self->_semaphore];

  return v2;
}

- (void)setMaximumTasksCount:(int64_t)a3
{
  if (a3 <= 0)
  {
    [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Maximum queue tasks count (%ld) must be a positive number", a3];
    [VNError VNAssert:0 log:?];
  }

  else
  {
    self->_maximumTasksCount = a3;
    self->_semaphore = dispatch_semaphore_create(a3);
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

- (BOOL)dispatchGroupWait:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = +[VNControlledCapacityTasksQueue tasksTimeout];
  if (v6 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = dispatch_time(0, v6);
  }

  v8 = dispatch_group_wait(v5, v7);
  v9 = v8;
  if (a4 && v8)
  {
    *a4 = [VNError errorForExecutionTimeoutWithLocalizedDescription:@"Timed out waiting for dispatch_group_wait completion"];
  }

  return v9 == 0;
}

- (void)dispatchSyncByPreservingQueueCapacity:(id)a3
{
  semaphore = self->_semaphore;
  v5 = a3;
  dispatch_semaphore_wait(semaphore, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_sync(self->_queue, v5);

  v6 = self->_semaphore;

  dispatch_semaphore_signal(v6);
}

- (void)dispatchGroupAsyncByPreservingQueueCapacity:(id)a3 block:(id)a4
{
  semaphore = self->_semaphore;
  v7 = a4;
  group = a3;
  dispatch_semaphore_wait(semaphore, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_group_async(group, self->_queue, v7);
}

- (VNControlledCapacityTasksQueue)initWithDispatchQueueLabel:(id)a3 maximumTasksCount:(int64_t)a4
{
  v6 = a3;
  v21.receiver = self;
  v21.super_class = VNControlledCapacityTasksQueue;
  v7 = [(VNControlledCapacityTasksQueue *)&v21 init];
  v8 = v7;
  v9 = 0;
  if (a4 >= 1 && v7)
  {
    v10 = [objc_opt_class() targetHighPriorityQueue];

    v11 = v6;
    v12 = [v6 UTF8String];
    [objc_opt_class() dispatchQueueAttribute];
    if (v10)
      v13 = {;
      v14 = [objc_opt_class() targetHighPriorityQueue];
      v15 = dispatch_queue_create_with_target_V2(v12, v13, v14);
      queue = v8->_queue;
      v8->_queue = v15;
    }

    else
      v13 = {;
      v17 = dispatch_queue_create(v12, v13);
      v14 = v8->_queue;
      v8->_queue = v17;
    }

    v8->_maximumTasksCount = a4;
    v18 = dispatch_semaphore_create(a4);
    semaphore = v8->_semaphore;
    v8->_semaphore = v18;

    v9 = v8;
  }

  return v9;
}

+ (void)setRequiresHighQoS:(BOOL)a3
{
  os_unfair_lock_lock(&_requiresHighQoSLock);
  _requiresHighQoS = a3;

  os_unfair_lock_unlock(&_requiresHighQoSLock);
}

+ (void)setTasksTimeout:(int64_t)a3
{
  os_unfair_lock_lock(&_tasksTimeoutLock);
  _tasksTimeout = a3;

  os_unfair_lock_unlock(&_tasksTimeoutLock);
}

@end