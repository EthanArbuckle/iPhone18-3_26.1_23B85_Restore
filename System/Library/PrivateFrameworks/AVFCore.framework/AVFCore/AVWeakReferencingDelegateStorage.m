@interface AVWeakReferencingDelegateStorage
- (AVWeakReferencingDelegateStorage)init;
- (OS_dispatch_queue)delegateQueue;
- (id)delegate;
- (void)dealloc;
- (void)getRetainedDelegate:(id *)a3 retainedDelegateQueue:(id *)a4;
- (void)setDelegate:(id)a3 queue:(id)a4;
@end

@implementation AVWeakReferencingDelegateStorage

- (AVWeakReferencingDelegateStorage)init
{
  v8.receiver = self;
  v8.super_class = AVWeakReferencingDelegateStorage;
  v2 = [(AVWeakReferencingDelegateStorage *)&v8 init];
  if (v2)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    v5 = [objc_msgSend(v3 stringWithFormat:@"<%@: %p> delegate serialization queue", NSStringFromClass(v4), v2), "UTF8String"];
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v2->_ivarAccessQueue = dispatch_queue_create(v5, v6);
  }

  return v2;
}

- (void)dealloc
{
  ivarAccessQueue = self->_ivarAccessQueue;
  if (ivarAccessQueue)
  {
    dispatch_release(ivarAccessQueue);
  }

  delegateQueue = self->_delegateQueue;
  if (delegateQueue)
  {
    dispatch_release(delegateQueue);
  }

  v5.receiver = self;
  v5.super_class = AVWeakReferencingDelegateStorage;
  [(AVWeakReferencingDelegateStorage *)&v5 dealloc];
}

- (id)delegate
{
  v3 = 0;
  [(AVWeakReferencingDelegateStorage *)self getRetainedDelegate:&v3 retainedDelegateQueue:0];
  return v3;
}

- (OS_dispatch_queue)delegateQueue
{
  object = 0;
  [(AVWeakReferencingDelegateStorage *)self getRetainedDelegate:0 retainedDelegateQueue:&object];
  result = object;
  if (object)
  {
    dispatch_release(object);
    return object;
  }

  return result;
}

- (void)getRetainedDelegate:(id *)a3 retainedDelegateQueue:(id *)a4
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3052000000;
  v19 = __Block_byref_object_copy__24;
  v20 = __Block_byref_object_dispose__24;
  v21 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = __Block_byref_object_copy__24;
  v14 = __Block_byref_object_dispose__24;
  v15 = 0;
  ivarAccessQueue = self->_ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__AVWeakReferencingDelegateStorage_getRetainedDelegate_retainedDelegateQueue___block_invoke;
  block[3] = &unk_1E74627B8;
  block[4] = self;
  block[5] = &v16;
  block[6] = &v10;
  dispatch_sync(ivarAccessQueue, block);
  if (a3)
  {
    *a3 = v17[5];
  }

  if (a4)
  {
    v7 = v11[5];
    if (v7)
    {
      dispatch_retain(v11[5]);
    }

    *a4 = v7;
  }

  v8 = v11[5];
  if (v8)
  {
    dispatch_release(v8);
  }

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v16, 8);
}

void __78__AVWeakReferencingDelegateStorage_getRetainedDelegate_retainedDelegateQueue___block_invoke(void *a1)
{
  *(*(a1[5] + 8) + 40) = objc_loadWeakRetained((a1[4] + 16));
  v2 = a1[4];
  v3 = *(v2 + 24);
  if (v3)
  {
    dispatch_retain(*(v2 + 24));
  }

  *(*(a1[6] + 8) + 40) = v3;
}

- (void)setDelegate:(id)a3 queue:(id)a4
{
  if (!a3 && a4)
  {
    v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", a4, v4, v5, v6, v7, "newDelegateQueue == NULL"), 0}];
    objc_exception_throw(v9);
  }

  ivarAccessQueue = self->_ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__AVWeakReferencingDelegateStorage_setDelegate_queue___block_invoke;
  block[3] = &unk_1E7460E90;
  block[4] = self;
  block[5] = a3;
  block[6] = a4;
  dispatch_sync(ivarAccessQueue, block);
}

void __54__AVWeakReferencingDelegateStorage_setDelegate_queue___block_invoke(uint64_t a1)
{
  objc_storeWeak((*(a1 + 32) + 16), *(a1 + 40));
  v2 = *(a1 + 48);
  if (v2)
  {
    dispatch_retain(v2);
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  if (v4)
  {
    dispatch_release(v4);
    v3 = *(a1 + 32);
  }

  *(v3 + 24) = *(a1 + 48);
}

@end