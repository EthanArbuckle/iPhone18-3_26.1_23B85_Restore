@interface ASOServicePresentationQueue
+ (OS_os_log)log;
- (ASOServicePresentationQueue)init;
- (ASOServicePresentationQueueDelegate)delegate;
- (void)queueDismissOverlay;
- (void)queuePresentOverlayWithConfiguration:(id)a3 delegate:(id)a4;
- (void)removePendingPresentationOperations;
@end

@implementation ASOServicePresentationQueue

+ (OS_os_log)log
{
  if (qword_10002C770 != -1)
  {
    sub_100017EEC();
  }

  v3 = qword_10002C778;

  return v3;
}

- (ASOServicePresentationQueue)init
{
  v9.receiver = self;
  v9.super_class = ASOServicePresentationQueue;
  v2 = [(ASOServicePresentationQueue *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.AppStoreOverlays.ViewService.presentation", v3);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v4;

    v6 = objc_alloc_init(NSOperationQueue);
    queue = v2->_queue;
    v2->_queue = v6;

    [(NSOperationQueue *)v2->_queue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v2->_queue setSuspended:0];
  }

  return v2;
}

- (void)removePendingPresentationOperations
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(ASOServicePresentationQueue *)self queue];
  v3 = [v2 operations];

  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && ([v8 isExecuting] & 1) == 0 && (objc_msgSend(v8, "isCancelled") & 1) == 0)
        {
          [v8 cancel];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)queuePresentOverlayWithConfiguration:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[ASOServicePresentationQueue log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Queuing overlay presentation", buf, 2u);
  }

  v9 = [(ASOServicePresentationQueue *)self accessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000081A0;
  block[3] = &unk_100024E20;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, block);
}

- (void)queueDismissOverlay
{
  v3 = +[ASOServicePresentationQueue log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Queuing overlay dismiss", buf, 2u);
  }

  v4 = [(ASOServicePresentationQueue *)self accessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000082F4;
  block[3] = &unk_1000250B8;
  block[4] = self;
  dispatch_async(v4, block);
}

- (ASOServicePresentationQueueDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end