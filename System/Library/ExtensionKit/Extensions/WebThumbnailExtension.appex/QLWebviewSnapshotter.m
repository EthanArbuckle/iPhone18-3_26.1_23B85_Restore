@interface QLWebviewSnapshotter
- (CGSize)previewSize;
- (QLWebviewSnapshotter)initWithItem:(id)a3 previewSize:(CGSize)a4;
- (void)_didFinishLoad;
- (void)_loadIfNeededAndExecuteBlock:(id)a3;
- (void)_requestSnapshotThumbnailForRect:(CGRect)a3 completion:(id)a4;
- (void)_setProcessPool;
- (void)_setupWebView;
- (void)cleanup;
- (void)load;
- (void)requestSnapshotThumbnail:(id)a3;
- (void)requestSnapshotThumbnailForPage:(int64_t)a3 withXPathQuery:(id)a4 completion:(id)a5;
- (void)webView:(id)a3 startURLSchemeTask:(id)a4;
@end

@implementation QLWebviewSnapshotter

- (QLWebviewSnapshotter)initWithItem:(id)a3 previewSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v8 = a3;
  v15.receiver = self;
  v15.super_class = QLWebviewSnapshotter;
  v9 = [(QLWebviewSnapshotter *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_item, a3);
    v10->_previewSize.width = width;
    v10->_previewSize.height = height;
    v11 = dispatch_queue_attr_make_initially_inactive(0);
    v12 = dispatch_queue_create_with_target_V2("com.apple.quicklook.thumbnailing.web.afterloading.queue", v11, &_dispatch_main_q);
    afterLoadingQueue = v10->_afterLoadingQueue;
    v10->_afterLoadingQueue = v12;
  }

  return v10;
}

- (void)load
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100000F4C;
  block[3] = &unk_100008308;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)cleanup
{
  v3 = [(QLWebviewSnapshotter *)self webView];
  [v3 _close];

  [(QLWebviewSnapshotter *)self setWebView:0];
}

- (void)_setProcessPool
{
  os_unfair_lock_lock(&unk_10000CC08);
  v3 = qword_10000CC10;
  v4 = [(QLWebviewSnapshotter *)self webView];
  v5 = [v4 configuration];
  v6 = v5;
  if (v3)
  {
    [v5 setProcessPool:v3];
  }

  else
  {
    v7 = [v5 processPool];
    v8 = qword_10000CC10;
    qword_10000CC10 = v7;
  }

  os_unfair_lock_unlock(&unk_10000CC08);
}

- (void)_setupWebView
{
  v13 = objc_opt_new();
  [v13 setAllowsContentJavaScript:0];
  v3 = objc_alloc_init(WKWebViewConfiguration);
  v4 = objc_opt_new();
  [v3 _setAllowedNetworkHosts:v4];

  v5 = +[WKWebsiteDataStore nonPersistentDataStore];
  [v3 setWebsiteDataStore:v5];

  [v3 setDefaultWebpagePreferences:v13];
  v6 = [v3 preferences];
  [v6 _disableRichJavaScriptFeatures];
  [v6 _disableMediaPlaybackRelatedFeatures];
  v7 = [v3 processPool];
  WKContextSetCacheModel();

  WKPreferencesSetLocalStorageEnabled();
  WKPreferencesSetDatabasesEnabled();
  WKPreferencesSetEncodingDetectorEnabled();
  [v3 setURLSchemeHandler:self forURLScheme:@"cid"];
  v8 = [WKWebView alloc];
  [(QLWebviewSnapshotter *)self previewSize];
  v10 = v9;
  [(QLWebviewSnapshotter *)self previewSize];
  v12 = [v8 initWithFrame:v3 configuration:{0.0, 0.0, v10, v11}];
  [(QLWebviewSnapshotter *)self setWebView:v12];

  [(WKWebView *)self->_webView _setBackgroundExtendsBeyondPage:1];
  [(QLWebviewSnapshotter *)self _setProcessPool];
}

- (void)requestSnapshotThumbnailForPage:(int64_t)a3 withXPathQuery:(id)a4 completion:(id)a5
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100001420;
  v10[3] = &unk_100008358;
  v11 = a4;
  v12 = self;
  v13 = a5;
  v14 = a3;
  v8 = v13;
  v9 = v11;
  [(QLWebviewSnapshotter *)self _loadIfNeededAndExecuteBlock:v10];
}

- (void)requestSnapshotThumbnail:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100001728;
  v4[3] = &unk_100008380;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(QLWebviewSnapshotter *)v5 _loadIfNeededAndExecuteBlock:v4];
}

- (void)_requestSnapshotThumbnailForRect:(CGRect)a3 completion:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v10 = [(QLWebviewSnapshotter *)self webView];
  [v10 _convertPointFromContentsToView:{x, y}];
  v12 = v11;
  v14 = v13;

  v15 = [(QLWebviewSnapshotter *)self webView];
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  MaxX = CGRectGetMaxX(v25);
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  [v15 _convertPointFromContentsToView:{MaxX, CGRectGetMaxY(v26)}];
  v18 = v17;
  v20 = v19;

  v21 = [(QLWebviewSnapshotter *)self webView];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100001924;
  v23[3] = &unk_1000083A8;
  v24 = v9;
  v22 = v9;
  [v21 _snapshotRectAfterScreenUpdates:0 rectInViewCoordinates:v23 intoImageOfWidth:v12 completionHandler:{v14, v18 - v12, v20 - v14, 0.0}];
}

- (void)_loadIfNeededAndExecuteBlock:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000019D0;
  v4[3] = &unk_100008380;
  v4[4] = self;
  v5 = a3;
  v3 = v5;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)_didFinishLoad
{
  [(QLWebviewSnapshotter *)self setLoaded:1];
  v3 = [(QLWebviewSnapshotter *)self afterLoadingQueue];
  dispatch_activate(v3);
}

- (void)webView:(id)a3 startURLSchemeTask:(id)a4
{
  v5 = a4;
  v6 = [v5 request];
  v7 = [v6 URL];
  v20 = [NSURLComponents componentsWithURL:v7 resolvingAgainstBaseURL:0];

  v8 = [v20 path];
  v9 = [(QLWebviewSnapshotter *)self item];
  v10 = [v9 attachments];
  v11 = [v10 objectForKeyedSubscript:v8];

  if (v11)
  {
    v12 = [NSURLResponse alloc];
    v13 = [v5 request];
    v14 = [v13 URL];
    v15 = [v11 contentType];
    v16 = [v15 preferredMIMEType];
    v17 = [v11 data];
    v18 = [v12 initWithURL:v14 MIMEType:v16 expectedContentLength:objc_msgSend(v17 textEncodingName:{"length"), 0}];

    [v5 didReceiveResponse:v18];
    v19 = [v11 data];
    [v5 didReceiveData:v19];

    [v5 didFinish];
  }

  else
  {
    v18 = [NSError errorWithDomain:NSURLErrorDomain code:-1100 userInfo:0];
    [v5 didFailWithError:v18];
  }
}

- (CGSize)previewSize
{
  objc_copyStruct(v4, &self->_previewSize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

@end