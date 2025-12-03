@interface BCStackManager
- (BCStackManager)initWithHighPriorityTargetQueue:(id)queue backgroundTargetQueue:(id)targetQueue renderer:(id)renderer;
- (void)_renderCompleteSource:(id)source to:(id)to forRequest:(id)request;
- (void)renderStackFromSource:(id)source forRequest:(id)request;
@end

@implementation BCStackManager

- (BCStackManager)initWithHighPriorityTargetQueue:(id)queue backgroundTargetQueue:(id)targetQueue renderer:(id)renderer
{
  queueCopy = queue;
  targetQueueCopy = targetQueue;
  rendererCopy = renderer;
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

    objc_storeStrong(&v12->_renderer, renderer);
    v15 = [BICWorkQueue workQueueWithHighPriorityTargetQueue:queueCopy backgroundTargetQueue:targetQueueCopy numConcurrentWorkItems:6];
    workQueue = v12->_workQueue;
    v12->_workQueue = v15;

    [(BICWorkQueue *)v12->_workQueue setIdentifier:@"StackManager"];
    [(BICWorkQueue *)v12->_workQueue setManualCompletion:1];
    [(BICWorkQueue *)v12->_workQueue setWorkItemTimeout:10.0];
  }

  return v12;
}

- (void)renderStackFromSource:(id)source forRequest:(id)request
{
  sourceCopy = source;
  requestCopy = request;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v26 = sub_4F1C;
  v27 = &unk_2C7BC0;
  v30 = &v31;
  selfCopy = self;
  v8 = sourceCopy;
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
    [BICCacheStats logOperation:BICCacheStatsOperationStackCreationQueueStart[0] forRequest:requestCopy];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v21 = sub_4F7C;
    v22 = &unk_2C7BE8;
    selfCopy2 = self;
    v13 = v8;
    v24 = v13;
    v14 = v20;
    os_unfair_lock_lock(&self->_accessLock);
    v21(v14);
    os_unfair_lock_unlock(&self->_accessLock);

    workQueue = [(BCStackManager *)self workQueue];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_4FD0;
    v16[3] = &unk_2C7C88;
    objc_copyWeak(&v19, buf);
    v17 = requestCopy;
    v18 = v13;
    [workQueue addWorkItemWithPriority:v17 description:@"StackManager render stack" block:v16];

    objc_destroyWeak(&v19);
    objc_destroyWeak(buf);
  }

  _Block_object_dispose(&v31, 8);
}

- (void)_renderCompleteSource:(id)source to:(id)to forRequest:(id)request
{
  sourceCopy = source;
  v9 = BICCacheStatsOperationStackCreationEnd[0];
  requestCopy = request;
  toCopy = to;
  [BICCacheStats logOperation:v9 forRequest:requestCopy];
  v12 = BCImageCacheLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v14 = 138412290;
    v15 = sourceCopy;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "BCStackManager: Completed Rendering stack for: %@", &v14, 0xCu);
  }

  delegate = [(BCStackManager *)self delegate];
  [delegate stackRenderingResultSrc:sourceCopy result:toCopy forRequest:requestCopy];
}

@end