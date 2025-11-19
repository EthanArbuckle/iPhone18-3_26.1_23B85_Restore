@interface AVSwitchToLatestPublisher
+ (id)switchToLatestPublisherWithUpstream:(id)a3;
- (AVSwitchToLatestPublisher)initWithUpstream:(id)a3;
- (id)subscribeRequestingInitialValue:(BOOL)a3 block:(id)a4;
- (void)dealloc;
@end

@implementation AVSwitchToLatestPublisher

- (AVSwitchToLatestPublisher)initWithUpstream:(id)a3
{
  v6.receiver = self;
  v6.super_class = AVSwitchToLatestPublisher;
  v4 = [(AVPublisher *)&v6 init];
  if (v4)
  {
    v4->_callbackMutex = FigReentrantMutexCreate();
    v4->_upstream = a3;
    v4->_publisherIndex = 0;
  }

  return v4;
}

+ (id)switchToLatestPublisherWithUpstream:(id)a3
{
  v3 = [[AVSwitchToLatestPublisher alloc] initWithUpstream:a3];

  return v3;
}

- (void)dealloc
{
  [(AVNotificationSubscription *)self->_outputPublisherSubscription cancel];

  FigSimpleMutexDestroy();
  v3.receiver = self;
  v3.super_class = AVSwitchToLatestPublisher;
  [(AVPublisher *)&v3 dealloc];
}

- (id)subscribeRequestingInitialValue:(BOOL)a3 block:(id)a4
{
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v13 = a3;
  objc_initWeak(&location, self);
  upstream = self->_upstream;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__AVSwitchToLatestPublisher_subscribeRequestingInitialValue_block___block_invoke;
  v9[3] = &unk_1E7463608;
  objc_copyWeak(&v10, &location);
  v9[4] = a4;
  v9[5] = v12;
  v7 = [(AVPublisher *)upstream subscribeRequestingInitialValue:1 block:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
  _Block_object_dispose(v12, 8);
  return v7;
}

void __67__AVSwitchToLatestPublisher_subscribeRequestingInitialValue_block___block_invoke(uint64_t a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  Weak = objc_loadWeak((a1 + 48));
  if (Weak)
  {
    v6 = Weak;
    FigSimpleMutexLock();
    v7 = *(v6 + 8) + 1;
    *(v6 + 8) = v7;
    [*(v6 + 3) cancel];

    *(v6 + 3) = 0;
    if (a2)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __67__AVSwitchToLatestPublisher_subscribeRequestingInitialValue_block___block_invoke_2;
      v9[3] = &unk_1E74635E0;
      objc_copyWeak(&v11, (a1 + 48));
      v12 = v7;
      v10 = *(a1 + 32);
      *(v6 + 3) = [a2 subscribeRequestingInitialValue:1 block:v9];
      objc_destroyWeak(&v11);
    }

    else
    {
      v8 = *(*(a1 + 40) + 8);
      if (*(v8 + 24) == 1)
      {
        (*(*(a1 + 32) + 16))();
        v8 = *(*(a1 + 40) + 8);
      }

      *(v8 + 24) = 1;
    }

    FigSimpleMutexUnlock();
  }

  objc_autoreleasePoolPop(v4);
}

void __67__AVSwitchToLatestPublisher_subscribeRequestingInitialValue_block___block_invoke_2(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  Weak = objc_loadWeak((a1 + 48));
  if (Weak)
  {
    v4 = Weak;
    FigSimpleMutexLock();
    if (v4[8] == *(a1 + 56))
    {
      v5 = *(*(a1 + 40) + 8);
      if (*(v5 + 24) == 1)
      {
        (*(*(a1 + 32) + 16))();
        v5 = *(*(a1 + 40) + 8);
      }

      *(v5 + 24) = 1;
    }

    FigSimpleMutexUnlock();
  }

  objc_autoreleasePoolPop(v2);
}

@end