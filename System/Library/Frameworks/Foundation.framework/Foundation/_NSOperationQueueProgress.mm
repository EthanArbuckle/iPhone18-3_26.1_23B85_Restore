@interface _NSOperationQueueProgress
- (id)initWithQueue:(id)result;
- (void)setTotalUnitCount:(int64_t)count;
@end

@implementation _NSOperationQueueProgress

- (id)initWithQueue:(id)result
{
  v4 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3.receiver = result;
    v3.super_class = _NSOperationQueueProgress;
    result = objc_msgSendSuper2(&v3, sel_initWithParent_userInfo_, 0, 0);
    if (result)
    {
      *(result + 15) = a2;
      *(result + 32) = 0;
    }
  }

  return result;
}

- (void)setTotalUnitCount:(int64_t)count
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = _NSOperationQueueProgress;
  [(NSProgress *)&v4 setTotalUnitCount:count];
  os_unfair_lock_lock(&self->_queueLock);
  atomic_store(1u, &self->_queue->_iqp.__progressReporting);
  os_unfair_lock_unlock(&self->_queueLock);
}

@end