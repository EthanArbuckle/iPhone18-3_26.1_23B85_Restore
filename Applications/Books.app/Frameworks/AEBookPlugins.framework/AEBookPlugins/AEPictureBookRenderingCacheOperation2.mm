@interface AEPictureBookRenderingCacheOperation2
+ (id)renderCacheWithOptions:(unint64_t)a3;
- (AEPaginatedBookSnapshotWebViewBuilder)webViewBuilder;
- (AEPictureBookRenderingCacheOperation2)initWithOptions:(int64_t)a3;
- (AEPictureBookRenderingPiggyBack)piggyBack;
- (CGSize)snapshotSize;
- (id)generateImage:(CGSize)a3;
- (void)_releaseWebView;
- (void)_snapshotPathForKey:(id *)a3 name:(id *)a4;
- (void)_takeSnapshot;
- (void)_takeSnapshotWhenReady;
- (void)_takeSnapshotWithConfiguration:(id)a3 retryOnBlank:(BOOL)a4 completionHandler:(id)a5;
- (void)_timeoutWaitingForFirstPaint;
- (void)_updateSignal;
- (void)addExtraCompletion:(id)a3;
- (void)navigationHandler:(id)a3 didFinishLoadOfURL:(id)a4;
- (void)navigationHandler:(id)a3 failedToLoadURL:(id)a4 error:(id)a5;
- (void)navigationHandlerFirstSignificantPaintCompleted:(id)a3;
- (void)setupWebView;
@end

@implementation AEPictureBookRenderingCacheOperation2

+ (id)renderCacheWithOptions:(unint64_t)a3
{
  v3 = [[AEPictureBookRenderingCacheOperation2 alloc] initWithOptions:a3];

  return v3;
}

- (AEPictureBookRenderingCacheOperation2)initWithOptions:(int64_t)a3
{
  v4.receiver = self;
  v4.super_class = AEPictureBookRenderingCacheOperation2;
  result = [(AEPictureBookRenderingCacheOperation2 *)&v4 initWithOptions:a3];
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
    v35 = [(AEPictureBookRenderingCacheOperation2 *)self dispatchSemaphore];
    dispatch_semaphore_signal(v35);
  }

  else
  {
    v3 = [(AEPictureBookRenderingCacheOperation2 *)self pageNumber];
    if (!self->_webView)
    {
      [(AEPictureBookRenderingCacheOperation2 *)self desiredSize];
      width = v4;
      height = v6;
      v8 = [(AEPictureBookRenderingCacheOperation2 *)self bookInfoSnapshot];
      [v8 fixedLayoutSize];
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
      v14 = [(AEPictureBookRenderingCacheOperation2 *)self bookInfoSnapshot];
      v15 = [WeakRetained webViewForSnapshotting:v14 size:{width, height}];
      webView = self->_webView;
      self->_webView = v15;

      v17 = [(WKWebView *)self->_webView scrollView];
      [v17 _setPocketsEnabled:0];

      v18 = [(WKWebView *)self->_webView be_navigationHandler];
      [v18 setDelegate:self];
    }

    v19 = objc_loadWeakRetained(&self->_piggyBack);

    if (v19)
    {
      v20 = (v3 - 1);
      v21 = [(AEPictureBookRenderingCacheOperation2 *)self bookInfoSnapshot];
      v22 = [v21 spineIndexInPackage];
      v23 = +[BECFIUtilitiesJS textNodeCharacterCountsScriptForSpineIndex:documentOrdinal:](BECFIUtilitiesJS, "textNodeCharacterCountsScriptForSpineIndex:documentOrdinal:", [v22 integerValue], v20);

      v24 = [(AEPictureBookRenderingCacheOperation2 *)self piggyBack];
      v25 = [v24 navigationInfoHrefsForOrdinal:v20];
      v26 = [BECFIUtilitiesJS cfisForHrefsScript:v25];

      objc_initWeak(&location, self);
      v27 = [(WKWebView *)self->_webView be_navigationHandler];
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
      [v27 performAfterLoadCompleteOrFailure:v36];

      objc_destroyWeak(v39);
      objc_destroyWeak(&location);
    }

    v30 = [(AEPictureBookRenderingCacheOperation2 *)self webView];
    v31 = [(AEPictureBookRenderingCacheOperation2 *)self url];
    v32 = BEURLHandleriBooksImgUrlFromiBooksURL();
    v33 = [NSURLRequest requestWithURL:v32];
    v34 = [v30 loadRequest:v33];
  }
}

- (void)_snapshotPathForKey:(id *)a3 name:(id *)a4
{
  if (a3 && a4)
  {
    v13 = [(AEPictureBookRenderingCacheOperation2 *)self storageKey];
    v7 = [v13 componentsSeparatedByString:@""];;
    v8 = [v7 objectAtIndex:1];
    *a3 = [NSString stringWithFormat:@"snap_%@", v8];

    v9 = [(WKWebView *)self->_webView URL];
    v10 = [v9 lastPathComponent];
    v11 = [v10 stringByDeletingPathExtension];

    *a4 = [NSString stringWithFormat:@"%@/dump_%@_%@_%p", *a3, v11, v13, self->_webView];
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

- (id)generateImage:(CGSize)a3
{
  if (([(AEPictureBookRenderingCacheOperation2 *)self isCancelled:a3.width]& 1) != 0)
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
      v6 = [(AEPictureBookRenderingCacheOperation2 *)self dispatchSemaphore];
      dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);

      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_E1630;
      v16[3] = &unk_1E2BD0;
      v16[4] = self;
      dispatch_async(&_dispatch_main_q, v16);

      v7 = [(AEPictureBookRenderingCacheOperation2 *)self isCancelled];
      v8 = 0;
      if ((v7 & 1) == 0)
      {
        v8 = [(AEPictureBookRenderingCacheOperation2 *)self image];
      }

      v10 = _NSConcreteStackBlock;
      v11 = 3221225472;
      v12 = sub_E1638;
      v13 = &unk_1E3F50;
      v14 = self;
      v4 = v8;
      v15 = v4;
      os_unfair_lock_lock(&self->_extraCompletionsAccessLock);
      sub_E1638(&v10);
      os_unfair_lock_unlock(&self->_extraCompletionsAccessLock);
      [(AEPictureBookRenderingCacheOperation2 *)self setImage:0, v10, v11];
    }
  }

  return v4;
}

- (void)navigationHandlerFirstSignificantPaintCompleted:(id)a3
{
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_timeoutWaitingForFirstPaint" object:0];
  if (([(AEPictureBookRenderingCacheOperation2 *)self isCancelled]& 1) != 0)
  {
    v4 = [(AEPictureBookRenderingCacheOperation2 *)self dispatchSemaphore];
    dispatch_semaphore_signal(v4);
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

- (void)navigationHandler:(id)a3 didFinishLoadOfURL:(id)a4
{
  if (([(AEPictureBookRenderingCacheOperation2 *)self isCancelled:a3]& 1) != 0)
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

- (void)navigationHandler:(id)a3 failedToLoadURL:(id)a4 error:(id)a5
{
  v5 = [(AEPictureBookRenderingCacheOperation2 *)self dispatchSemaphore:a3];
  dispatch_semaphore_signal(v5);
}

- (void)_takeSnapshot
{
  v3 = [(AEPictureBookRenderingCacheOperation2 *)self storageKey];

  if (v3)
  {
    objc_initWeak(&location, self);
    v4 = [(AEPictureBookRenderingCacheOperation2 *)self dispatchSemaphore];
    v5 = objc_alloc_init(WKSnapshotConfiguration);
    v6 = [(AEPictureBookRenderingCacheOperation2 *)self bookInfoSnapshot];
    v7 = [v6 isFixedLayout];

    if (v7)
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
    v9 = v4;
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

- (void)_takeSnapshotWithConfiguration:(id)a3 retryOnBlank:(BOOL)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  objc_initWeak(&location, self);
  v10 = [(AEPictureBookRenderingCacheOperation2 *)self webView];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_E1DEC;
  v13[3] = &unk_1E5A78;
  objc_copyWeak(&v16, &location);
  v17 = a4;
  v11 = v8;
  v14 = v11;
  v12 = v9;
  v15 = v12;
  [v10 takeSnapshotWithConfiguration:v11 completionHandler:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)_releaseWebView
{
  v3 = [(AEPictureBookRenderingCacheOperation2 *)self webView];

  if (v3)
  {
    v4 = [(AEPictureBookRenderingCacheOperation2 *)self webView];
    v5 = [v4 be_navigationHandler];
    [v5 setDelegate:0];

    v6 = [(AEPictureBookRenderingCacheOperation2 *)self webView];
    [v6 stopLoading];

    [(AEPictureBookRenderingCacheOperation2 *)self setWebView:0];
  }
}

- (void)_updateSignal
{
  v3 = [(AEPictureBookRenderingCacheOperation2 *)self piggyBack];
  v4 = [(AEPictureBookRenderingCacheOperation2 *)self textNodeCharacterCounts];
  v5 = [(AEPictureBookRenderingCacheOperation2 *)self cfisForHrefs];
  [v3 renderingCacheOperationCompleted:self textNodeCharacterCounts:v4 cfisForHrefs:v5];

  v6 = [(AEPictureBookRenderingCacheOperation2 *)self dispatchSemaphore];
  dispatch_semaphore_signal(v6);
}

- (void)addExtraCompletion:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_E22CC;
  v5[3] = &unk_1E3F50;
  v6 = self;
  v7 = a3;
  v4 = v7;
  os_unfair_lock_lock(&v6->_extraCompletionsAccessLock);
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