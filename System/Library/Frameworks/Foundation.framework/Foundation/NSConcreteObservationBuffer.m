@interface NSConcreteObservationBuffer
- (NSConcreteObservationBuffer)initWithMaximumObjectCount:(unint64_t)a3 fullPolicy:(int64_t)a4 outputQueue:(id)a5;
- (void)_alreadyOnQueueEmitAllObjects;
- (void)_alreadyOnQueueEmitObject;
- (void)_receiveBox:(id)a3;
- (void)dealloc;
- (void)emitAllObjects;
- (void)emitObject;
@end

@implementation NSConcreteObservationBuffer

- (NSConcreteObservationBuffer)initWithMaximumObjectCount:(unint64_t)a3 fullPolicy:(int64_t)a4 outputQueue:(id)a5
{
  v11 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = NSConcreteObservationBuffer;
  v8 = [NSObservationBuffer initWithMaximumObjectCount:sel_initWithMaximumObjectCount_fullPolicy_outputQueue_ fullPolicy:? outputQueue:?];
  if (v8)
  {
    v8->_dequeue = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8->_policy = a4;
    v8->_maxCount = a3;
    v8->_outputQueue = a5;
    v8->_inputQueue = dispatch_queue_create("Input Queue", 0);
    v8->_automaticallyEmitsObjects = 1;
    pthread_mutex_init(&v8->_lock, 0);
  }

  return v8;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&self->_lock);

  self->_dequeue = 0;
  pthread_mutex_unlock(&self->_lock);

  dispatch_release(self->_inputQueue);
  v3.receiver = self;
  v3.super_class = NSConcreteObservationBuffer;
  [(NSObservationSource *)&v3 dealloc];
}

- (void)_alreadyOnQueueEmitObject
{
  v15[1] = *MEMORY[0x1E69E9840];
  v3 = _popFront(self);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v12 = __56__NSConcreteObservationBuffer__alreadyOnQueueEmitObject__block_invoke;
  v13 = &unk_1E69F30D8;
  v14 = self;
  v15[0] = 0;
  v4 = v3[1];
  v5 = *(v3 + 6);
  StackObservedValueClassAndBoxSize = getStackObservedValueClassAndBoxSize(v15);
  MEMORY[0x1EEE9AC00](StackObservedValueClassAndBoxSize);
  v9 = objc_constructInstance(v8, &v11[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9[6] = v5;
  *(v9 + 1) = v4;
  *(v9 + 2) = self;
  v12(v11, v9);
}

id __56__NSConcreteObservationBuffer__alreadyOnQueueEmitObject__block_invoke(id result, uint64_t a2)
{
  v3 = *MEMORY[0x1E69E9840];
  if (*(a2 + 24))
  {
    v2.receiver = *(result + 4);
    v2.super_class = NSConcreteObservationBuffer;
    return objc_msgSendSuper2(&v2, sel__receiveBox_, a2);
  }

  return result;
}

- (void)emitObject
{
  v3[5] = *MEMORY[0x1E69E9840];
  outputQueue = self->_outputQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __41__NSConcreteObservationBuffer_emitObject__block_invoke;
  v3[3] = &unk_1E69F2C00;
  v3[4] = self;
  [(NSOperationQueue *)outputQueue addOperationWithBlock:v3];
}

- (void)_alreadyOnQueueEmitAllObjects
{
  v14 = *MEMORY[0x1E69E9840];
  dispatch_suspend(self->_inputQueue);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v10 = __60__NSConcreteObservationBuffer__alreadyOnQueueEmitAllObjects__block_invoke;
  v11 = &unk_1E69F6A10;
  v12 = self;
  if (!self->_state)
  {
    __60__NSConcreteObservationBuffer__alreadyOnQueueEmitAllObjects__block_invoke(v9, &emptyValue, 1);
    goto LABEL_12;
  }

  pthread_mutex_lock(&self->_lock);
  v3 = [(NSMutableArray *)self->_dequeue copy];
  [(NSMutableArray *)self->_dequeue removeAllObjects];
  updated = updateState(self);
  pthread_mutex_unlock(&self->_lock);
  if (updated == 1)
  {
    goto LABEL_5;
  }

  if (updated == 2)
  {
    updated = 0;
LABEL_5:
    v5 = [(NSConcreteObservationBuffer *)self bufferFullHandler];
    v5[2](v5, updated);
  }

  memset(v13, 0, sizeof(v13));
  v6 = [v3 count];
  v7 = v6;
  v8 = v13;
  if (v6 >= 0x21)
  {
    v8 = malloc_type_malloc(8 * v6, 0x80040B8603338uLL);
  }

  [v3 getObjects:v8 range:{0, v7}];
  v10(v9, v8, v7);
  if (v8 != v13)
  {
    free(v8);
  }

LABEL_12:
  dispatch_resume(self->_inputQueue);
}

uint64_t __60__NSConcreteObservationBuffer__alreadyOnQueueEmitAllObjects__block_invoke(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v19[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v3 = a3;
    v5 = result;
    v14 = MEMORY[0x1E69E9820];
    do
    {
      v6 = *a2++;
      v7 = *(v5 + 32);
      v15[0] = v14;
      v15[1] = 3221225472;
      v16 = __60__NSConcreteObservationBuffer__alreadyOnQueueEmitAllObjects__block_invoke_2;
      v17 = &unk_1E69F30D8;
      v18 = v7;
      v19[0] = 0;
      v8 = *(v6 + 8);
      v9 = *(v6 + 24);
      StackObservedValueClassAndBoxSize = getStackObservedValueClassAndBoxSize(v19);
      MEMORY[0x1EEE9AC00](StackObservedValueClassAndBoxSize);
      v13 = objc_constructInstance(v12, &v15[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
      v13[6] = v9;
      *(v13 + 1) = v8;
      *(v13 + 2) = v7;
      result = v16(v15, v13);
      --v3;
    }

    while (v3);
  }

  return result;
}

id __60__NSConcreteObservationBuffer__alreadyOnQueueEmitAllObjects__block_invoke_2(id result, uint64_t a2)
{
  v3 = *MEMORY[0x1E69E9840];
  if (*(a2 + 24))
  {
    v2.receiver = *(result + 4);
    v2.super_class = NSConcreteObservationBuffer;
    return objc_msgSendSuper2(&v2, sel__receiveBox_, a2);
  }

  return result;
}

- (void)emitAllObjects
{
  v3[5] = *MEMORY[0x1E69E9840];
  outputQueue = self->_outputQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __45__NSConcreteObservationBuffer_emitAllObjects__block_invoke;
  v3[3] = &unk_1E69F2C00;
  v3[4] = self;
  [(NSOperationQueue *)outputQueue addOperationWithBlock:v3];
}

- (void)_receiveBox:(id)a3
{
  v8[6] = *MEMORY[0x1E69E9840];
  if (self->_state == 2)
  {
    policy = self->_policy;
    if (policy == 2)
    {
      [(NSConcreteObservationBuffer *)self _mergeChanges];
    }

    else if (policy == 1)
    {
      do
      {
        _popFront(self);
      }

      while (self->_state == 2);
    }
  }

  v6 = [a3 copyToHeap];
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3052000000;
  v8[3] = __Block_byref_object_copy__20;
  v8[4] = __Block_byref_object_dispose__20;
  v8[5] = self;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__NSConcreteObservationBuffer__receiveBox___block_invoke;
  block[3] = &unk_1E69F6900;
  block[4] = v6;
  block[5] = v8;
  dispatch_sync(self->_inputQueue, block);
  _Block_object_dispose(v8, 8);
}

uint64_t __43__NSConcreteObservationBuffer__receiveBox___block_invoke(uint64_t result)
{
  v1 = *(*(*(result + 40) + 8) + 40);
  if (v1)
  {
    v2 = result;
    pthread_mutex_lock((v1 + 72));
    [*(v1 + 136) addObject:*(v2 + 32)];

    updated = updateState(v1);
    result = pthread_mutex_unlock((v1 + 72));
    if (updated == 1 || updated == 2)
    {
      v4 = *([v1 bufferFullHandler] + 16);

      return v4();
    }
  }

  return result;
}

@end