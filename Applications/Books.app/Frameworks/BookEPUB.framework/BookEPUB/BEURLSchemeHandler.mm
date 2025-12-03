@interface BEURLSchemeHandler
+ (id)schemeHandlerForCacheItem:(id)item;
- (BEURLSchemeHandler)init;
- (id)_taskForHandler:(id)handler;
- (void)_executeBlockWithLock:(id)lock;
- (void)_removeTaskForHandler:(id)handler;
- (void)urlHandler:(id)handler didFailWithError:(id)error;
- (void)urlHandler:(id)handler didReceiveData:(id)data;
- (void)urlHandler:(id)handler didReceiveResponse:(id)response;
- (void)urlHandlerDidFinish:(id)finish;
- (void)webView:(id)view startURLSchemeTask:(id)task;
- (void)webView:(id)view stopURLSchemeTask:(id)task;
@end

@implementation BEURLSchemeHandler

- (BEURLSchemeHandler)init
{
  v8.receiver = self;
  v8.super_class = BEURLSchemeHandler;
  v2 = [(BEURLSchemeHandler *)&v8 init];
  if (v2)
  {
    v3 = [NSMapTable mapTableWithKeyOptions:512 valueOptions:512];
    urlHandlerToTaskMap = v2->_urlHandlerToTaskMap;
    v2->_urlHandlerToTaskMap = v3;

    v5 = [NSMapTable mapTableWithKeyOptions:512 valueOptions:512];
    taskToURLHandlerMap = v2->_taskToURLHandlerMap;
    v2->_taskToURLHandlerMap = v5;

    v2->_accessLock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

+ (id)schemeHandlerForCacheItem:(id)item
{
  itemCopy = item;
  v4 = objc_alloc_init(BEURLSchemeHandler);
  [(BEURLSchemeHandler *)v4 setCacheItem:itemCopy];

  return v4;
}

- (void)webView:(id)view startURLSchemeTask:(id)task
{
  taskCopy = task;
  v6 = [BEURLHandler alloc];
  cacheItem = [(BEURLSchemeHandler *)self cacheItem];
  v8 = [(BEURLHandler *)v6 initWithQueueMode:1 cacheItem:cacheItem];

  [(BEURLHandler *)v8 setDelegate:self];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_2AA78;
  v12[3] = &unk_3281E8;
  v12[4] = self;
  v13 = taskCopy;
  v14 = v8;
  v9 = v8;
  v10 = taskCopy;
  [(BEURLSchemeHandler *)self _executeBlockWithLock:v12];
  request = [v10 request];
  [(BEURLHandler *)v9 loadRequest:request];
}

- (void)webView:(id)view stopURLSchemeTask:(id)task
{
  viewCopy = view;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_2AC10;
  v15 = sub_2AC20;
  v16 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_2AC28;
  v8[3] = &unk_328F18;
  v8[4] = self;
  v10 = &v11;
  taskCopy = task;
  v9 = taskCopy;
  [(BEURLSchemeHandler *)self _executeBlockWithLock:v8];
  [v12[5] stopLoading];

  _Block_object_dispose(&v11, 8);
}

- (void)urlHandler:(id)handler didReceiveResponse:(id)response
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2AD88;
  block[3] = &unk_3281E8;
  block[4] = self;
  handlerCopy = handler;
  responseCopy = response;
  v5 = responseCopy;
  v6 = handlerCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)urlHandler:(id)handler didReceiveData:(id)data
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2AEA4;
  block[3] = &unk_3281E8;
  block[4] = self;
  handlerCopy = handler;
  dataCopy = data;
  v5 = dataCopy;
  v6 = handlerCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)urlHandlerDidFinish:(id)finish
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_2AF94;
  v4[3] = &unk_328358;
  v4[4] = self;
  finishCopy = finish;
  v3 = finishCopy;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)urlHandler:(id)handler didFailWithError:(id)error
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2B0B4;
  block[3] = &unk_3281E8;
  block[4] = self;
  handlerCopy = handler;
  errorCopy = error;
  v5 = errorCopy;
  v6 = handlerCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (id)_taskForHandler:(id)handler
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_2AC10;
  v16 = sub_2AC20;
  v17 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_2B2D0;
  v8[3] = &unk_3281C0;
  v11 = &v12;
  selfCopy = self;
  handlerCopy = handler;
  v10 = handlerCopy;
  [(BEURLSchemeHandler *)selfCopy _executeBlockWithLock:v8];
  v4 = v13[5];
  if (!v4)
  {
    v5 = _BookEPUBLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = handlerCopy;
    }

    v4 = v13[5];
  }

  v6 = v4;

  _Block_object_dispose(&v12, 8);

  return v6;
}

- (void)_removeTaskForHandler:(id)handler
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_2B3D0;
  v4[3] = &unk_328358;
  selfCopy = self;
  handlerCopy = handler;
  v3 = handlerCopy;
  [(BEURLSchemeHandler *)selfCopy _executeBlockWithLock:v4];
}

- (void)_executeBlockWithLock:(id)lock
{
  if (lock)
  {
    lockCopy = lock;
    os_unfair_lock_lock(&self->_accessLock);
    lockCopy[2](lockCopy);

    os_unfair_lock_unlock(&self->_accessLock);
  }
}

@end