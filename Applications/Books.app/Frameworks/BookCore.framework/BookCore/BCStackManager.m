@interface BCStackManager
- (BCStackManager)initWithHighPriorityTargetQueue:(id)a3 backgroundTargetQueue:(id)a4 renderer:(id)a5;
- (void)_renderCompleteSource:(id)a3 to:(id)a4 forRequest:(id)a5;
- (void)renderStackFromSource:(id)a3 forRequest:(id)a4;
@end

@implementation BCStackManager

- (BCStackManager)initWithHighPriorityTargetQueue:(id)a3 backgroundTargetQueue:(id)a4 renderer:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = BCStackManager;
  v11 = [(BCStackManager *)&v18 init];
  v12 = v11;
  if (v11)
  {
    v11->_accessLock._os_unfair_lock_opaque = 0;
    v13 = +[NSMutableArray array];
    imagesProcessing = v12->_imagesProcessing;
    v12->_imagesProcessing = v13;

    objc_storeStrong(&v12->_renderer, a5);
    v15 = [BICWorkQueue workQueueWithHighPriorityTargetQueue:v8 backgroundTargetQueue:v9 numConcurrentWorkItems:6];
    workQueue = v12->_workQueue;
    v12->_workQueue = v15;

    [(BICWorkQueue *)v12->_workQueue setIdentifier:@"StackManager"];
    [(BICWorkQueue *)v12->_workQueue setManualCompletion:1];
    [(BICWorkQueue *)v12->_workQueue setWorkItemTimeout:10.0];
  }

  return v12;
}

- (void)renderStackFromSource:(id)a3 forRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v26 = sub_4F1C;
  v27 = &unk_2C7BC0;
  v30 = &v31;
  v28 = self;
  v8 = v6;
  v29 = v8;
  v9 = v25;
  os_unfair_lock_lock(&self->_accessLock);
  v26(v9);
  os_unfair_lock_unlock(&self->_accessLock);

  v10 = *(v32 + 24);
  if (v10 == 1)
  {
    v11 = BCImageCacheLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v36 = v8;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "BCStackManager: Already Rendering stack for: %@", buf, 0xCu);
    }

    v10 = *(v32 + 24);
  }

  if (!v10)
  {
    v12 = BCImageCacheLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v36 = v8;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "BCStackManager: Rendering stack for: %@", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    [BICCacheStats incrementCounter:kBICCacheStatsCounterStacks[0]];
    [BICCacheStats logOperation:BICCacheStatsOperationStackCreationQueueStart[0] forRequest:v7];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v21 = sub_4F7C;
    v22 = &unk_2C7BE8;
    v23 = self;
    v13 = v8;
    v24 = v13;
    v14 = v20;
    os_unfair_lock_lock(&self->_accessLock);
    v21(v14);
    os_unfair_lock_unlock(&self->_accessLock);

    v15 = [(BCStackManager *)self workQueue];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_4FD0;
    v16[3] = &unk_2C7C88;
    objc_copyWeak(&v19, buf);
    v17 = v7;
    v18 = v13;
    [v15 addWorkItemWithPriority:v17 description:@"StackManager render stack" block:v16];

    objc_destroyWeak(&v19);
    objc_destroyWeak(buf);
  }

  _Block_object_dispose(&v31, 8);
}

- (void)_renderCompleteSource:(id)a3 to:(id)a4 forRequest:(id)a5
{
  v8 = a3;
  v9 = BICCacheStatsOperationStackCreationEnd[0];
  v10 = a5;
  v11 = a4;
  [BICCacheStats logOperation:v9 forRequest:v10];
  v12 = BCImageCacheLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v14 = 138412290;
    v15 = v8;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "BCStackManager: Completed Rendering stack for: %@", &v14, 0xCu);
  }

  v13 = [(BCStackManager *)self delegate];
  [v13 stackRenderingResultSrc:v8 result:v11 forRequest:v10];
}

@end