@interface AVAssetWriterInputMediaDataRequester
- (AVAssetWriterInputMediaDataRequester)initWithRequestQueue:(id)a3 requestBlock:(id)a4;
- (AVAssetWriterInputMediaDataRequesterDelegate)delegate;
- (void)_collectUncollectables_invokedFromDeallocAndFinalize;
- (void)dealloc;
- (void)requestMediaDataIfNecessary;
- (void)setDelegate:(id)a3;
@end

@implementation AVAssetWriterInputMediaDataRequester

- (AVAssetWriterInputMediaDataRequester)initWithRequestQueue:(id)a3 requestBlock:(id)a4
{
  v21.receiver = self;
  v21.super_class = AVAssetWriterInputMediaDataRequester;
  v7 = [(AVAssetWriterInputMediaDataRequester *)&v21 init];
  v8 = v7;
  if (v7)
  {
    if (a3)
    {
      if (a4)
      {
        dispatch_retain(a3);
        v8->_requestQueue = a3;
        v8->_requestBlock = [a4 copy];
        v8->_ivarAccessQueue = av_readwrite_dispatch_queue_create("com.apple.avfoundation.mediadatarequester.ivars");
        return v8;
      }

      v19 = v7;
      v16 = MEMORY[0x1E695DF30];
      v17 = *MEMORY[0x1E695D940];
      v18 = "block != nil";
    }

    else
    {
      v10 = v7;
      v16 = MEMORY[0x1E695DF30];
      v17 = *MEMORY[0x1E695D940];
      v18 = "queue != NULL";
    }

    v20 = [v16 exceptionWithName:v17 reason:AVMethodExceptionReasonWithObjectAndSelector(v8 userInfo:{a2, @"invalid parameter not satisfying: %s", v11, v12, v13, v14, v15, v18), 0}];
    objc_exception_throw(v20);
  }

  return v8;
}

- (void)_collectUncollectables_invokedFromDeallocAndFinalize
{
  requestQueue = self->_requestQueue;
  if (requestQueue)
  {
    dispatch_release(requestQueue);
  }

  ivarAccessQueue = self->_ivarAccessQueue;
  if (ivarAccessQueue)
  {

    dispatch_release(ivarAccessQueue);
  }
}

- (void)dealloc
{
  [(AVAssetWriterInputMediaDataRequester *)self _collectUncollectables_invokedFromDeallocAndFinalize];
  v3.receiver = self;
  v3.super_class = AVAssetWriterInputMediaDataRequester;
  [(AVAssetWriterInputMediaDataRequester *)&v3 dealloc];
}

- (AVAssetWriterInputMediaDataRequesterDelegate)delegate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__12;
  v10 = __Block_byref_object_dispose__12;
  v11 = 0;
  ivarAccessQueue = self->_ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__AVAssetWriterInputMediaDataRequester_delegate__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = [v7[5] referencedObject];

  _Block_object_dispose(&v6, 8);
  return v3;
}

id __48__AVAssetWriterInputMediaDataRequester_delegate__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 32);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)setDelegate:(id)a3
{
  v4 = [[AVWeakReference alloc] initWithReferencedObject:a3];
  ivarAccessQueue = self->_ivarAccessQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__AVAssetWriterInputMediaDataRequester_setDelegate___block_invoke;
  v6[3] = &unk_1E7460DF0;
  v6[4] = v4;
  v6[5] = self;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v6);
}

void __52__AVAssetWriterInputMediaDataRequester_setDelegate___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);

  *(*(a1 + 40) + 32) = *(a1 + 32);
}

- (void)requestMediaDataIfNecessary
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(AVAssetWriterInputMediaDataRequester *)self delegate];
  if (v4)
  {
    if ([(AVAssetWriterInputMediaDataRequesterDelegate *)v4 mediaDataRequesterShouldRequestMediaData])
    {
      (*(self->_requestBlock + 2))();
      v5 = [(AVAssetWriterInputMediaDataRequester *)self delegate];
      if (v5)
      {
        if ([(AVAssetWriterInputMediaDataRequesterDelegate *)v5 mediaDataRequesterShouldRequestMediaData])
        {
          v6 = [(AVAssetWriterInputMediaDataRequester *)self requestQueue];
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __67__AVAssetWriterInputMediaDataRequester_requestMediaDataIfNecessary__block_invoke;
          block[3] = &unk_1E7460C00;
          block[4] = self;
          dispatch_async(v6, block);
        }
      }
    }
  }

  objc_autoreleasePoolPop(v3);
}

@end