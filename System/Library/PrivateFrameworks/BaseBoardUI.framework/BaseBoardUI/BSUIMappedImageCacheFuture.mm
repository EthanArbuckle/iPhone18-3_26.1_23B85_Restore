@interface BSUIMappedImageCacheFuture
- (BSUIMappedImageCacheFuture)init;
- (os_unfair_lock_s)cacheImage;
- (void)dealloc;
- (void)submitWorkBlock:(uint64_t)a1;
@end

@implementation BSUIMappedImageCacheFuture

- (os_unfair_lock_s)cacheImage
{
  if (a1)
  {
    v1 = a1;
    os_unfair_lock_lock(a1 + 2);
    v2 = *&v1[8]._os_unfair_lock_opaque;
    if (v2)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __40__BSUIMappedImageCacheFuture_cacheImage__block_invoke;
      v7[3] = &unk_1E76B7FB8;
      v7[4] = v1;
      (*(v2 + 16))(v2, v7);
      if ((v1[10]._os_unfair_lock_opaque & 1) == 0)
      {
        v5 = [MEMORY[0x1E696AAA8] currentHandler];
        v6 = MEMORY[0x1A58E5D00](*&v1[8]._os_unfair_lock_opaque);
        [v5 handleFailureInMethod:sel_cacheImage object:v1 file:@"BSUIMappedImageCacheFuture.m" lineNumber:72 description:{@"workCompletion of BSUIMappedImageCacheFuture was not called synchronously within its work block : %@", v6}];
      }

      v3 = *&v1[8]._os_unfair_lock_opaque;
      *&v1[8]._os_unfair_lock_opaque = 0;
    }

    os_unfair_lock_unlock(v1 + 2);
    a1 = *&v1[12]._os_unfair_lock_opaque;
  }

  return a1;
}

- (BSUIMappedImageCacheFuture)init
{
  v11.receiver = self;
  v11.super_class = BSUIMappedImageCacheFuture;
  v2 = [(BSUIMappedImageCacheFuture *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = objc_opt_new();
    submitted = v3->_submitted;
    v3->_submitted = v4;

    v6 = [MEMORY[0x1E696AF00] currentThread];
    submissionThread = v3->_submissionThread;
    v3->_submissionThread = v6;

    v8 = dispatch_get_global_queue(9, 0);
    workQueue = v3->_workQueue;
    v3->_workQueue = v8;

    os_unfair_lock_lock(&v3->_lock);
  }

  return v3;
}

void __40__BSUIMappedImageCacheFuture_cacheImage__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 48), a2);
  v4 = a2;
  *(*(a1 + 32) + 40) = 1;
}

- (void)dealloc
{
  if (([(BSAtomicSignal *)self->_submitted hasBeenSignalled]& 1) == 0)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"BSUIMappedImageCacheFuture.m" lineNumber:40 description:@"work was never submitted to future"];
  }

  if (!self->_lock_workCompletionWasCalled)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"BSUIMappedImageCacheFuture.m" lineNumber:41 description:@"work completion was never called for future"];
  }

  v6.receiver = self;
  v6.super_class = BSUIMappedImageCacheFuture;
  [(BSUIMappedImageCacheFuture *)&v6 dealloc];
}

- (void)submitWorkBlock:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (!v3)
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:sel_submitWorkBlock_ object:a1 file:@"BSUIMappedImageCacheFuture.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"workBlock"}];
    }

    if (([*(a1 + 16) signal] & 1) == 0)
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      [v12 handleFailureInMethod:sel_submitWorkBlock_ object:a1 file:@"BSUIMappedImageCacheFuture.m" lineNumber:51 description:@"attempted to submit more than one workBlock"];
    }

    v5 = *(a1 + 24);
    v6 = [MEMORY[0x1E696AF00] currentThread];
    LOBYTE(v5) = [v5 isEqual:v6];

    if ((v5 & 1) == 0)
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      [v13 handleFailureInMethod:sel_submitWorkBlock_ object:a1 file:@"BSUIMappedImageCacheFuture.m" lineNumber:52 description:@"attempted to submit the workBlock on a different thread than the initializer"];
    }

    v7 = *(a1 + 24);
    *(a1 + 24) = 0;

    v8 = [v4 copy];
    v9 = *(a1 + 32);
    *(a1 + 32) = v8;

    os_unfair_lock_unlock((a1 + 8));
    v10 = *(a1 + 56);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__BSUIMappedImageCacheFuture_submitWorkBlock___block_invoke;
    block[3] = &unk_1E76B7BA8;
    block[4] = a1;
    dispatch_async(v10, block);
  }
}

@end