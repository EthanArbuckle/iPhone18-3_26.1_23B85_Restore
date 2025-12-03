@interface AVMediaDataRequester
- (AVMediaDataRequester)initWithMediaDataConsumer:(id)consumer requestQueue:(id)queue requestBlock:(id)block;
- (BOOL)_isInvalidatePending;
- (void)_requestMediaDataIfReady;
- (void)_setInvalidatePending;
- (void)dealloc;
- (void)invalidate;
- (void)startRequestingMediaData;
@end

@implementation AVMediaDataRequester

- (AVMediaDataRequester)initWithMediaDataConsumer:(id)consumer requestQueue:(id)queue requestBlock:(id)block
{
  v25.receiver = self;
  v25.super_class = AVMediaDataRequester;
  v9 = [(AVMediaDataRequester *)&v25 init];
  v10 = v9;
  if (v9)
  {
    if (consumer)
    {
      if (queue)
      {
        if (block)
        {
          if (objc_opt_respondsToSelector())
          {
            v10->_mediaDataConsumer = consumer;
            dispatch_retain(queue);
            v10->_requestQueue = queue;
            v10->_requestBlock = [block copy];
            v10->_invalidateMutex = FigSimpleMutexCreate();
            return v10;
          }

          v23 = v10;
          v18 = MEMORY[0x1E695DF30];
          v19 = *MEMORY[0x1E695D940];
          v20 = "[mediaDataConsumer respondsToSelector:@selector(isReadyForMoreMediaData)]";
        }

        else
        {
          v22 = v9;
          v18 = MEMORY[0x1E695DF30];
          v19 = *MEMORY[0x1E695D940];
          v20 = "requestBlock != nil";
        }
      }

      else
      {
        v21 = v9;
        v18 = MEMORY[0x1E695DF30];
        v19 = *MEMORY[0x1E695D940];
        v20 = "requestQueue != NULL";
      }
    }

    else
    {
      v12 = v9;
      v18 = MEMORY[0x1E695DF30];
      v19 = *MEMORY[0x1E695D940];
      v20 = "mediaDataConsumer != nil";
    }

    v24 = [v18 exceptionWithName:v19 reason:AVMethodExceptionReasonWithObjectAndSelector(v10 userInfo:{a2, @"invalid parameter not satisfying: %s", v13, v14, v15, v16, v17, v20), 0}];
    objc_exception_throw(v24);
  }

  return v10;
}

- (void)dealloc
{
  requestQueue = self->_requestQueue;
  if (requestQueue)
  {
    dispatch_release(requestQueue);
  }

  if (self->_invalidateMutex)
  {
    FigSimpleMutexDestroy();
    self->_invalidateMutex = 0;
  }

  v4.receiver = self;
  v4.super_class = AVMediaDataRequester;
  [(AVMediaDataRequester *)&v4 dealloc];
}

- (void)startRequestingMediaData
{
  requestQueue = self->_requestQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__AVMediaDataRequester_startRequestingMediaData__block_invoke;
  block[3] = &unk_1E7460C00;
  block[4] = self;
  dispatch_async(requestQueue, block);
}

- (void)_setInvalidatePending
{
  FigSimpleMutexLock();
  self->_invalidatePending = 1;

  FigSimpleMutexUnlock();
}

- (BOOL)_isInvalidatePending
{
  FigSimpleMutexLock();
  invalidatePending = self->_invalidatePending;
  FigSimpleMutexUnlock();
  return invalidatePending;
}

- (void)invalidate
{
  [(AVMediaDataRequester *)self _setInvalidatePending];
  requestQueue = self->_requestQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__AVMediaDataRequester_invalidate__block_invoke;
  block[3] = &unk_1E7460C00;
  block[4] = self;
  dispatch_async(requestQueue, block);
}

void __34__AVMediaDataRequester_invalidate__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  if (v3)
  {

    *(*(a1 + 32) + 24) = 0;
    v2 = *(a1 + 32);
  }

  v4 = *(v2 + 8);
  if (v4)
  {

    *(*(a1 + 32) + 8) = 0;
  }
}

- (void)_requestMediaDataIfReady
{
  v3 = objc_autoreleasePoolPush();
  if ([(AVMediaDataRequesterConsumer *)self->_mediaDataConsumer isReadyForMoreMediaData])
  {
    if (self->_requestBlock)
    {
      if (![(AVMediaDataRequester *)self _isInvalidatePending])
      {
        (*(self->_requestBlock + 2))();
        if ([(AVMediaDataRequesterConsumer *)self->_mediaDataConsumer isReadyForMoreMediaData])
        {
          if (self->_requestBlock)
          {
            requestQueue = self->_requestQueue;
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __48__AVMediaDataRequester__requestMediaDataIfReady__block_invoke;
            block[3] = &unk_1E7460C00;
            block[4] = self;
            dispatch_async(requestQueue, block);
          }
        }
      }
    }
  }

  objc_autoreleasePoolPop(v3);
}

@end