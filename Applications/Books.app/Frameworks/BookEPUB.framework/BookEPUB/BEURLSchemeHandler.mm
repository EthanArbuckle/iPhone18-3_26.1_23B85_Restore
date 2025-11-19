@interface BEURLSchemeHandler
+ (id)schemeHandlerForCacheItem:(id)a3;
- (BEURLSchemeHandler)init;
- (id)_taskForHandler:(id)a3;
- (void)_executeBlockWithLock:(id)a3;
- (void)_removeTaskForHandler:(id)a3;
- (void)urlHandler:(id)a3 didFailWithError:(id)a4;
- (void)urlHandler:(id)a3 didReceiveData:(id)a4;
- (void)urlHandler:(id)a3 didReceiveResponse:(id)a4;
- (void)urlHandlerDidFinish:(id)a3;
- (void)webView:(id)a3 startURLSchemeTask:(id)a4;
- (void)webView:(id)a3 stopURLSchemeTask:(id)a4;
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

+ (id)schemeHandlerForCacheItem:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(BEURLSchemeHandler);
  [(BEURLSchemeHandler *)v4 setCacheItem:v3];

  return v4;
}

- (void)webView:(id)a3 startURLSchemeTask:(id)a4
{
  v5 = a4;
  v6 = [BEURLHandler alloc];
  v7 = [(BEURLSchemeHandler *)self cacheItem];
  v8 = [(BEURLHandler *)v6 initWithQueueMode:1 cacheItem:v7];

  [(BEURLHandler *)v8 setDelegate:self];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_2AA78;
  v12[3] = &unk_3281E8;
  v12[4] = self;
  v13 = v5;
  v14 = v8;
  v9 = v8;
  v10 = v5;
  [(BEURLSchemeHandler *)self _executeBlockWithLock:v12];
  v11 = [v10 request];
  [(BEURLHandler *)v9 loadRequest:v11];
}

- (void)webView:(id)a3 stopURLSchemeTask:(id)a4
{
  v6 = a3;
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
  v7 = a4;
  v9 = v7;
  [(BEURLSchemeHandler *)self _executeBlockWithLock:v8];
  [v12[5] stopLoading];

  _Block_object_dispose(&v11, 8);
}

- (void)urlHandler:(id)a3 didReceiveResponse:(id)a4
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2AD88;
  block[3] = &unk_3281E8;
  block[4] = self;
  v8 = a3;
  v9 = a4;
  v5 = v9;
  v6 = v8;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)urlHandler:(id)a3 didReceiveData:(id)a4
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2AEA4;
  block[3] = &unk_3281E8;
  block[4] = self;
  v8 = a3;
  v9 = a4;
  v5 = v9;
  v6 = v8;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)urlHandlerDidFinish:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_2AF94;
  v4[3] = &unk_328358;
  v4[4] = self;
  v5 = a3;
  v3 = v5;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)urlHandler:(id)a3 didFailWithError:(id)a4
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2B0B4;
  block[3] = &unk_3281E8;
  block[4] = self;
  v8 = a3;
  v9 = a4;
  v5 = v9;
  v6 = v8;
  dispatch_async(&_dispatch_main_q, block);
}

- (id)_taskForHandler:(id)a3
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
  v9 = self;
  v3 = a3;
  v10 = v3;
  [(BEURLSchemeHandler *)v9 _executeBlockWithLock:v8];
  v4 = v13[5];
  if (!v4)
  {
    v5 = _BookEPUBLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = v3;
    }

    v4 = v13[5];
  }

  v6 = v4;

  _Block_object_dispose(&v12, 8);

  return v6;
}

- (void)_removeTaskForHandler:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_2B3D0;
  v4[3] = &unk_328358;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(BEURLSchemeHandler *)v5 _executeBlockWithLock:v4];
}

- (void)_executeBlockWithLock:(id)a3
{
  if (a3)
  {
    v4 = a3;
    os_unfair_lock_lock(&self->_accessLock);
    v4[2](v4);

    os_unfair_lock_unlock(&self->_accessLock);
  }
}

@end