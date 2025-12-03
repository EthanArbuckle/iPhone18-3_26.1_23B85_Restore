@interface BCCacheTransformController
- (BCCacheTransformController)initWithHighPriorityTargetQueue:(id)queue backgroundTargetQueue:(id)targetQueue transformer:(id)transformer;
- (void)_transformCompleteSource:(id)source to:(id)to forRequest:(id)request;
- (void)transformSource:(id)source to:(id)to forRequest:(id)request;
@end

@implementation BCCacheTransformController

- (BCCacheTransformController)initWithHighPriorityTargetQueue:(id)queue backgroundTargetQueue:(id)targetQueue transformer:(id)transformer
{
  queueCopy = queue;
  targetQueueCopy = targetQueue;
  transformerCopy = transformer;
  v18.receiver = self;
  v18.super_class = BCCacheTransformController;
  v11 = [(BCCacheTransformController *)&v18 init];
  v12 = v11;
  if (v11)
  {
    v11->_accessLock._os_unfair_lock_opaque = 0;
    v13 = +[NSMutableArray array];
    imagesProcessing = v12->_imagesProcessing;
    v12->_imagesProcessing = v13;

    objc_storeStrong(&v12->_transformer, transformer);
    v15 = [BICWorkQueue workQueueWithHighPriorityTargetQueue:queueCopy backgroundTargetQueue:targetQueueCopy numConcurrentWorkItems:1];
    workQueue = v12->_workQueue;
    v12->_workQueue = v15;

    [(BICWorkQueue *)v12->_workQueue setIdentifier:@"TransformController"];
  }

  return v12;
}

- (void)transformSource:(id)source to:(id)to forRequest:(id)request
{
  sourceCopy = source;
  toCopy = to;
  requestCopy = request;
  v11 = objc_alloc_init(BICDescribedImagePair);
  [(BICDescribedImagePair *)v11 setSourceImage:sourceCopy];
  [(BICDescribedImagePair *)v11 setDestinationImage:toCopy];
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v32 = sub_1400A4;
  v33 = &unk_2C7BC0;
  v36 = &v37;
  selfCopy = self;
  v12 = v11;
  v35 = v12;
  v13 = v31;
  os_unfair_lock_lock(&self->_accessLock);
  v32(v13);
  os_unfair_lock_unlock(&self->_accessLock);

  if (v38[3])
  {
    v14 = BCImageCacheLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v42 = toCopy;
      v43 = 2112;
      v44 = requestCopy;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "BCCacheTransformController: Transform is already in progress for: %@ for request: %@", buf, 0x16u);
    }
  }

  else
  {
    objc_initWeak(buf, self);
    processingOptions = [toCopy processingOptions];
    v16 = kBICCacheStatsCounterTransformSpine;
    if (!processingOptions)
    {
      v16 = kBICCacheStatsCounterTransformResize;
    }

    [BICCacheStats incrementCounter:*v16];
    [BICCacheStats logOperation:BICCacheStatsOperationTransformQueueStart[0] forRequest:requestCopy];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v27 = sub_140104;
    v28 = &unk_2C7BE8;
    selfCopy2 = self;
    v17 = v12;
    v30 = v17;
    v18 = v26;
    os_unfair_lock_lock(&self->_accessLock);
    v27(v18);
    os_unfair_lock_unlock(&self->_accessLock);

    workQueue = [(BCCacheTransformController *)self workQueue];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_140158;
    v20[3] = &unk_2CDED8;
    v21 = requestCopy;
    objc_copyWeak(&v25, buf);
    v22 = sourceCopy;
    v23 = toCopy;
    v24 = v17;
    [workQueue addWorkItemWithPriority:v21 description:@"Transformer transform" block:v20];

    objc_destroyWeak(&v25);
    objc_destroyWeak(buf);
  }

  _Block_object_dispose(&v37, 8);
}

- (void)_transformCompleteSource:(id)source to:(id)to forRequest:(id)request
{
  toCopy = to;
  requestCopy = request;
  v9 = BICCacheStatsOperationTransformEnd[0];
  sourceCopy = source;
  [BICCacheStats logOperation:v9 forRequest:requestCopy];
  if ([toCopy quality] == 101)
  {
    [BICCacheStats logOperation:BICCacheStatsOperationTransformedFromSmaller[0] forRequest:requestCopy];
  }

  delegate = [(BCCacheTransformController *)self delegate];
  [delegate transformResultSrc:sourceCopy result:toCopy forRequest:requestCopy];
}

@end