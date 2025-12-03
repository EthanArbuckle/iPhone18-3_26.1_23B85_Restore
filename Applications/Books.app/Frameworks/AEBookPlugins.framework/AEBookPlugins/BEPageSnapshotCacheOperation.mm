@interface BEPageSnapshotCacheOperation
- (BEPageSnapshotCacheDataSource)dataSource;
- (BEPageSnapshotCacheOperation)initWithDataSource:(id)source;
- (CGSize)snapshotSize;
- (id)callbackInvocationWithImage:(id)image;
- (id)generateImage:(CGSize)image;
- (void)addExtraCompletion:(id)completion;
@end

@implementation BEPageSnapshotCacheOperation

- (BEPageSnapshotCacheOperation)initWithDataSource:(id)source
{
  sourceCopy = source;
  v8.receiver = self;
  v8.super_class = BEPageSnapshotCacheOperation;
  v5 = [(BEPageSnapshotCacheOperation *)&v8 initWithOptions:0];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_dataSource, sourceCopy);
    v6->_extraCompletionsAccessLock._os_unfair_lock_opaque = 0;
  }

  return v6;
}

- (id)callbackInvocationWithImage:(id)image
{
  imageCopy = image;
  v5 = [(BEPageSnapshotCacheOperation *)self renderingCacheCallbackInvocationWithImage:imageCopy pageNumber:[(BEPageSnapshotCacheOperation *)self pageNumber]];

  return v5;
}

- (id)generateImage:(CGSize)image
{
  if (([(BEPageSnapshotCacheOperation *)self isCancelled:image.width]& 1) != 0)
  {
    v4 = 0;
  }

  else
  {
    v5 = dispatch_semaphore_create(0);
    [(BEPageSnapshotCacheOperation *)self setDispatchSemaphore:v5];

    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = sub_A5A10;
    v19 = sub_A5A20;
    v20 = 0;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_A5A28;
    block[3] = &unk_1E5030;
    block[4] = self;
    block[5] = &v15;
    dispatch_async(&_dispatch_main_q, block);
    dispatchSemaphore = [(BEPageSnapshotCacheOperation *)self dispatchSemaphore];
    dispatch_semaphore_wait(dispatchSemaphore, 0xFFFFFFFFFFFFFFFFLL);

    if (([(BEPageSnapshotCacheOperation *)self isCancelled]& 1) != 0)
    {
      v4 = 0;
    }

    else
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v10 = sub_A5B58;
      v11 = &unk_1E5030;
      selfCopy = self;
      v13 = &v15;
      v7 = v9;
      os_unfair_lock_lock(&self->_extraCompletionsAccessLock);
      v10(v7);
      os_unfair_lock_unlock(&self->_extraCompletionsAccessLock);

      v4 = v16[5];
    }

    _Block_object_dispose(&v15, 8);
  }

  return v4;
}

- (void)addExtraCompletion:(id)completion
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_A5DD8;
  v5[3] = &unk_1E3F50;
  selfCopy = self;
  completionCopy = completion;
  v4 = completionCopy;
  os_unfair_lock_lock(&selfCopy->_extraCompletionsAccessLock);
  sub_A5DD8(v5);
  os_unfair_lock_unlock(&self->_extraCompletionsAccessLock);
}

- (CGSize)snapshotSize
{
  width = self->snapshotSize.width;
  height = self->snapshotSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (BEPageSnapshotCacheDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end