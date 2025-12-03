@interface AEPictureBookRenderingCacheOperation2
+ (id)renderCacheWithOptions:(unint64_t)options;
- (AEPaginatedBookSnapshotWebViewBuilder)webViewBuilder;
- (AEPictureBookRenderingCacheOperation2)initWithOptions:(int64_t)options;
- (AEPictureBookRenderingPiggyBack)piggyBack;
- (CGSize)snapshotSize;
- (id)generateImage:(CGSize)image;
- (void)_releaseWebView;
- (void)_snapshotPathForKey:(id *)key name:(id *)name;
- (void)_takeSnapshot;
- (void)_takeSnapshotWhenReady;
- (void)_takeSnapshotWithConfiguration:(id)configuration retryOnBlank:(BOOL)blank completionHandler:(id)handler;
- (void)_timeoutWaitingForFirstPaint;
- (void)_updateSignal;
- (void)addExtraCompletion:(id)completion;
- (void)navigationHandler:(id)handler didFinishLoadOfURL:(id)l;
- (void)navigationHandler:(id)handler failedToLoadURL:(id)l error:(id)error;
- (void)navigationHandlerFirstSignificantPaintCompleted:(id)completed;
- (void)setupWebView;
@end

@implementation AEPictureBookRenderingCacheOperation2

+ (id)renderCacheWithOptions:(unint64_t)options
{
  v3 = [[AEPictureBookRenderingCacheOperation2 alloc] initWithOptions:options];

  return v3;
}

- (AEPictureBookRenderingCacheOperation2)initWithOptions:(int64_t)options
{
  v4.receiver = self;
  v4.super_class = AEPictureBookRenderingCacheOperation2;
  result = [(AEPictureBookRenderingCacheOperation2 *)&v4 initWithOptions:options];
  if (result)
  {
    result->_extraCompletionsAccessLock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (void)setupWebView
{
  if ([(AEPictureBookRenderingCacheOperation2 *)self isCancelled])
  {
    dispatchSemaphore = [(AEPictureBookRenderingCacheOperation2 *)self dispatchSemaphore];
    dispatch_semaphore_signal(dispatchSemaphore);
  }

  else
  {
    pageNumber = [(AEPictureBookRenderingCacheOperation2 *)self pageNumber];
    if (!self->_webView)
    {
      [(AEPictureBookRenderingCacheOperation2 *)self desiredSize];
      width = v4;
      height = v6;
      bookInfoSnapshot = [(AEPictureBookRenderingCacheOperation2 *)self bookInfoSnapshot];
      [bookInfoSnapshot fixedLayoutSize];
      v10 = v9;
      v12 = v11;

      if (width / v10 < BEWebViewMinimumZoomScale)
      {
        v42.size.width = v10 * BEWebViewMinimumZoomScale;
        v42.size.height = v12 * BEWebViewMinimumZoomScale;
        v42.origin.x = 0.0;
        v42.origin.y = 0.0;
        v43 = CGRectIntegral(v42);
        width = v43.size.width;
        height = v43.size.height;
      }

      WeakRetained = objc_loadWeakRetained(&self->_webViewBuilder);
      bookInfoSnapshot2 = [(AEPictureBookRenderingCacheOperation2 *)self bookInfoSnapshot];
      v15 = [WeakRetained webViewForSnapshotting:bookInfoSnapshot2 size:{width, height}];
      webView = self->_webView;
      self->_webView = v15;

      scrollView = [(WKWebView *)self->_webView scrollView];
      [scrollView _setPocketsEnabled:0];

      be_navigationHandler = [(WKWebView *)self->_webView be_navigationHandler];
      [be_navigationHandler setDelegate:self];
    }

    v19 = objc_loadWeakRetained(&self->_piggyBack);

    if (v19)
    {
      v20 = (pageNumber - 1);
      bookInfoSnapshot3 = [(AEPictureBookRenderingCacheOperation2 *)self bookInfoSnapshot];
      spineIndexInPackage = [bookInfoSnapshot3 spineIndexInPackage];
      v23 = +[BECFIUtilitiesJS textNodeCharacterCountsScriptForSpineIndex:documentOrdinal:](BECFIUtilitiesJS, "textNodeCharacterCountsScriptForSpineIndex:documentOrdinal:", [spineIndexInPackage integerValue], v20);

      piggyBack = [(AEPictureBookRenderingCacheOperation2 *)self piggyBack];
      v25 = [piggyBack navigationInfoHrefsForOrdinal:v20];
      v26 = [BECFIUtilitiesJS cfisForHrefsScript:v25];

      objc_initWeak(&location, self);
      be_navigationHandler2 = [(WKWebView *)self->_webView be_navigationHandler];
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_E0F2C;
      v36[3] = &unk_1E59D8;
      objc_copyWeak(v39, &location);
      v39[1] = v20;
      v28 = v26;
      v37 = v28;
      v29 = v23;
      v38 = v29;
      [be_navigationHandler2 performAfterLoadCompleteOrFailure:v36];

      objc_destroyWeak(v39);
      objc_destroyWeak(&location);
    }

    webView = [(AEPictureBookRenderingCacheOperation2 *)self webView];
    v31 = [(AEPictureBookRenderingCacheOperation2 *)self url];
    v32 = BEURLHandleriBooksImgUrlFromiBooksURL();
    v33 = [NSURLRequest requestWithURL:v32];
    v34 = [webView loadRequest:v33];
  }
}

- (void)_snapshotPathForKey:(id *)key name:(id *)name
{
  if (key && name)
  {
    storageKey = [(AEPictureBookRenderingCacheOperation2 *)self storageKey];
    v7 = [storageKey componentsSeparatedByString:@""];;
    v8 = [v7 objectAtIndex:1];
    *key = [NSString stringWithFormat:@"snap_%@", v8];

    v9 = [(WKWebView *)self->_webView URL];
    lastPathComponent = [v9 lastPathComponent];
    stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];

    *name = [NSString stringWithFormat:@"%@/dump_%@_%@_%p", *key, stringByDeletingPathExtension, storageKey, self->_webView];
  }

  else
  {
    v12 = _AELog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "Must supply pointers for folder and name", buf, 2u);
    }

    BUAssertionFailed();
  }
}

- (id)generateImage:(CGSize)image
{
  if (([(AEPictureBookRenderingCacheOperation2 *)self isCancelled:image.width]& 1) != 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(AEPictureBookRenderingCacheOperation2 *)self url];

    if (v4)
    {
      v5 = dispatch_semaphore_create(0);
      [(AEPictureBookRenderingCacheOperation2 *)self setDispatchSemaphore:v5];

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_E1628;
      block[3] = &unk_1E2BD0;
      block[4] = self;
      dispatch_async(&_dispatch_main_q, block);
      dispatchSemaphore = [(AEPictureBookRenderingCacheOperation2 *)self dispatchSemaphore];
      dispatch_semaphore_wait(dispatchSemaphore, 0xFFFFFFFFFFFFFFFFLL);

      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_E1630;
      v16[3] = &unk_1E2BD0;
      v16[4] = self;
      dispatch_async(&_dispatch_main_q, v16);

      isCancelled = [(AEPictureBookRenderingCacheOperation2 *)self isCancelled];
      image = 0;
      if ((isCancelled & 1) == 0)
      {
        image = [(AEPictureBookRenderingCacheOperation2 *)self image];
      }

      v10 = _NSConcreteStackBlock;
      v11 = 3221225472;
      v12 = sub_E1638;
      v13 = &unk_1E3F50;
      selfCopy = self;
      v4 = image;
      v15 = v4;
      os_unfair_lock_lock(&self->_extraCompletionsAccessLock);
      sub_E1638(&v10);
      os_unfair_lock_unlock(&self->_extraCompletionsAccessLock);
      [(AEPictureBookRenderingCacheOperation2 *)self setImage:0, v10, v11];
    }
  }

  return v4;
}

- (void)navigationHandlerFirstSignificantPaintCompleted:(id)completed
{
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_timeoutWaitingForFirstPaint" object:0];
  if (([(AEPictureBookRenderingCacheOperation2 *)self isCancelled]& 1) != 0)
  {
    dispatchSemaphore = [(AEPictureBookRenderingCacheOperation2 *)self dispatchSemaphore];
    dispatch_semaphore_signal(dispatchSemaphore);
  }

  else
  {
    [(AEPictureBookRenderingCacheOperation2 *)self setDidFinishRendering:1];
    if ([(AEPictureBookRenderingCacheOperation2 *)self didFinishLoading])
    {

      [(AEPictureBookRenderingCacheOperation2 *)self _takeSnapshotWhenReady];
    }
  }
}

- (void)navigationHandler:(id)handler didFinishLoadOfURL:(id)l
{
  if (([(AEPictureBookRenderingCacheOperation2 *)self isCancelled:handler]& 1) != 0)
  {

    [(AEPictureBookRenderingCacheOperation2 *)self _updateSignal];
  }

  else
  {
    [(AEPictureBookRenderingCacheOperation2 *)self setDidFinishLoading:1];
    if ([(AEPictureBookRenderingCacheOperation2 *)self didFinishRendering])
    {

      [(AEPictureBookRenderingCacheOperation2 *)self _takeSnapshotWhenReady];
    }

    else
    {

      [(AEPictureBookRenderingCacheOperation2 *)self performSelector:"_timeoutWaitingForFirstPaint" withObject:0 afterDelay:5.0];
    }
  }
}

- (void)_timeoutWaitingForFirstPaint
{
  v3 = BCIMLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_138D9C(self, v3);
  }

  [(AEPictureBookRenderingCacheOperation2 *)self _updateSignal];
}

- (void)_takeSnapshotWhenReady
{
  webView = self->_webView;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_E1A48;
  v3[3] = &unk_1E2BD0;
  v3[4] = self;
  [(WKWebView *)webView _doAfterNextPresentationUpdate:v3];
}

- (void)navigationHandler:(id)handler failedToLoadURL:(id)l error:(id)error
{
  v5 = [(AEPictureBookRenderingCacheOperation2 *)self dispatchSemaphore:handler];
  dispatch_semaphore_signal(v5);
}

- (void)_takeSnapshot
{
  storageKey = [(AEPictureBookRenderingCacheOperation2 *)self storageKey];

  if (storageKey)
  {
    objc_initWeak(&location, self);
    dispatchSemaphore = [(AEPictureBookRenderingCacheOperation2 *)self dispatchSemaphore];
    v5 = objc_alloc_init(WKSnapshotConfiguration);
    bookInfoSnapshot = [(AEPictureBookRenderingCacheOperation2 *)self bookInfoSnapshot];
    isFixedLayout = [bookInfoSnapshot isFixedLayout];

    if (isFixedLayout)
    {
      [(AEPictureBookRenderingCacheOperation2 *)self desiredSize];
      v8 = [NSNumber numberWithDouble:?];
      [v5 setSnapshotWidth:v8];
    }

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_E1C3C;
    v10[3] = &unk_1E5A00;
    objc_copyWeak(&v12, &location);
    v9 = dispatchSemaphore;
    v11 = v9;
    [(AEPictureBookRenderingCacheOperation2 *)self _takeSnapshotWithConfiguration:v5 retryOnBlank:1 completionHandler:v10];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  else
  {

    [(AEPictureBookRenderingCacheOperation2 *)self _updateSignal];
  }
}

- (void)_takeSnapshotWithConfiguration:(id)configuration retryOnBlank:(BOOL)blank completionHandler:(id)handler
{
  configurationCopy = configuration;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  webView = [(AEPictureBookRenderingCacheOperation2 *)self webView];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_E1DEC;
  v13[3] = &unk_1E5A78;
  objc_copyWeak(&v16, &location);
  blankCopy = blank;
  v11 = configurationCopy;
  v14 = v11;
  v12 = handlerCopy;
  v15 = v12;
  [webView takeSnapshotWithConfiguration:v11 completionHandler:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)_releaseWebView
{
  webView = [(AEPictureBookRenderingCacheOperation2 *)self webView];

  if (webView)
  {
    webView2 = [(AEPictureBookRenderingCacheOperation2 *)self webView];
    be_navigationHandler = [webView2 be_navigationHandler];
    [be_navigationHandler setDelegate:0];

    webView3 = [(AEPictureBookRenderingCacheOperation2 *)self webView];
    [webView3 stopLoading];

    [(AEPictureBookRenderingCacheOperation2 *)self setWebView:0];
  }
}

- (void)_updateSignal
{
  piggyBack = [(AEPictureBookRenderingCacheOperation2 *)self piggyBack];
  textNodeCharacterCounts = [(AEPictureBookRenderingCacheOperation2 *)self textNodeCharacterCounts];
  cfisForHrefs = [(AEPictureBookRenderingCacheOperation2 *)self cfisForHrefs];
  [piggyBack renderingCacheOperationCompleted:self textNodeCharacterCounts:textNodeCharacterCounts cfisForHrefs:cfisForHrefs];

  dispatchSemaphore = [(AEPictureBookRenderingCacheOperation2 *)self dispatchSemaphore];
  dispatch_semaphore_signal(dispatchSemaphore);
}

- (void)addExtraCompletion:(id)completion
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_E22CC;
  v5[3] = &unk_1E3F50;
  selfCopy = self;
  completionCopy = completion;
  v4 = completionCopy;
  os_unfair_lock_lock(&selfCopy->_extraCompletionsAccessLock);
  sub_E22CC(v5);
  os_unfair_lock_unlock(&self->_extraCompletionsAccessLock);
}

- (AEPictureBookRenderingPiggyBack)piggyBack
{
  WeakRetained = objc_loadWeakRetained(&self->_piggyBack);

  return WeakRetained;
}

- (AEPaginatedBookSnapshotWebViewBuilder)webViewBuilder
{
  WeakRetained = objc_loadWeakRetained(&self->_webViewBuilder);

  return WeakRetained;
}

- (CGSize)snapshotSize
{
  width = self->_snapshotSize.width;
  height = self->_snapshotSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end