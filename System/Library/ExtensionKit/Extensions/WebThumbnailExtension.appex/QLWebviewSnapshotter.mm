@interface QLWebviewSnapshotter
- (CGSize)previewSize;
- (QLWebviewSnapshotter)initWithItem:(id)item previewSize:(CGSize)size;
- (void)_didFinishLoad;
- (void)_loadIfNeededAndExecuteBlock:(id)block;
- (void)_requestSnapshotThumbnailForRect:(CGRect)rect completion:(id)completion;
- (void)_setProcessPool;
- (void)_setupWebView;
- (void)cleanup;
- (void)load;
- (void)requestSnapshotThumbnail:(id)thumbnail;
- (void)requestSnapshotThumbnailForPage:(int64_t)page withXPathQuery:(id)query completion:(id)completion;
- (void)webView:(id)view startURLSchemeTask:(id)task;
@end

@implementation QLWebviewSnapshotter

- (QLWebviewSnapshotter)initWithItem:(id)item previewSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  itemCopy = item;
  v15.receiver = self;
  v15.super_class = QLWebviewSnapshotter;
  v9 = [(QLWebviewSnapshotter *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_item, item);
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
  webView = [(QLWebviewSnapshotter *)self webView];
  [webView _close];

  [(QLWebviewSnapshotter *)self setWebView:0];
}

- (void)_setProcessPool
{
  os_unfair_lock_lock(&unk_10000CC08);
  v3 = qword_10000CC10;
  webView = [(QLWebviewSnapshotter *)self webView];
  configuration = [webView configuration];
  v6 = configuration;
  if (v3)
  {
    [configuration setProcessPool:v3];
  }

  else
  {
    processPool = [configuration processPool];
    v8 = qword_10000CC10;
    qword_10000CC10 = processPool;
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
  preferences = [v3 preferences];
  [preferences _disableRichJavaScriptFeatures];
  [preferences _disableMediaPlaybackRelatedFeatures];
  processPool = [v3 processPool];
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

- (void)requestSnapshotThumbnailForPage:(int64_t)page withXPathQuery:(id)query completion:(id)completion
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100001420;
  v10[3] = &unk_100008358;
  queryCopy = query;
  selfCopy = self;
  completionCopy = completion;
  pageCopy = page;
  v8 = completionCopy;
  v9 = queryCopy;
  [(QLWebviewSnapshotter *)self _loadIfNeededAndExecuteBlock:v10];
}

- (void)requestSnapshotThumbnail:(id)thumbnail
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100001728;
  v4[3] = &unk_100008380;
  selfCopy = self;
  thumbnailCopy = thumbnail;
  v3 = thumbnailCopy;
  [(QLWebviewSnapshotter *)selfCopy _loadIfNeededAndExecuteBlock:v4];
}

- (void)_requestSnapshotThumbnailForRect:(CGRect)rect completion:(id)completion
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  completionCopy = completion;
  webView = [(QLWebviewSnapshotter *)self webView];
  [webView _convertPointFromContentsToView:{x, y}];
  v12 = v11;
  v14 = v13;

  webView2 = [(QLWebviewSnapshotter *)self webView];
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  MaxX = CGRectGetMaxX(v25);
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  [webView2 _convertPointFromContentsToView:{MaxX, CGRectGetMaxY(v26)}];
  v18 = v17;
  v20 = v19;

  webView3 = [(QLWebviewSnapshotter *)self webView];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100001924;
  v23[3] = &unk_1000083A8;
  v24 = completionCopy;
  v22 = completionCopy;
  [webView3 _snapshotRectAfterScreenUpdates:0 rectInViewCoordinates:v23 intoImageOfWidth:v12 completionHandler:{v14, v18 - v12, v20 - v14, 0.0}];
}

- (void)_loadIfNeededAndExecuteBlock:(id)block
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000019D0;
  v4[3] = &unk_100008380;
  v4[4] = self;
  blockCopy = block;
  v3 = blockCopy;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)_didFinishLoad
{
  [(QLWebviewSnapshotter *)self setLoaded:1];
  afterLoadingQueue = [(QLWebviewSnapshotter *)self afterLoadingQueue];
  dispatch_activate(afterLoadingQueue);
}

- (void)webView:(id)view startURLSchemeTask:(id)task
{
  taskCopy = task;
  request = [taskCopy request];
  v7 = [request URL];
  v20 = [NSURLComponents componentsWithURL:v7 resolvingAgainstBaseURL:0];

  path = [v20 path];
  item = [(QLWebviewSnapshotter *)self item];
  attachments = [item attachments];
  v11 = [attachments objectForKeyedSubscript:path];

  if (v11)
  {
    v12 = [NSURLResponse alloc];
    request2 = [taskCopy request];
    v14 = [request2 URL];
    contentType = [v11 contentType];
    preferredMIMEType = [contentType preferredMIMEType];
    data = [v11 data];
    v18 = [v12 initWithURL:v14 MIMEType:preferredMIMEType expectedContentLength:objc_msgSend(data textEncodingName:{"length"), 0}];

    [taskCopy didReceiveResponse:v18];
    data2 = [v11 data];
    [taskCopy didReceiveData:data2];

    [taskCopy didFinish];
  }

  else
  {
    v18 = [NSError errorWithDomain:NSURLErrorDomain code:-1100 userInfo:0];
    [taskCopy didFailWithError:v18];
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