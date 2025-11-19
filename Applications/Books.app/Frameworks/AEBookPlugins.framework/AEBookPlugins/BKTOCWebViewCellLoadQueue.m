@interface BKTOCWebViewCellLoadQueue
- (BKTOCImageCache2)imageCache;
- (BKTOCWebViewCellLoadQueue)init;
- (WKWebView)webView;
- (id)dequeueRequest;
- (void)_measureContentAndSetFrame;
- (void)_notifyRequesterAndSendNextRequestOfPreferredHeight:(double)a3 error:(id)a4;
- (void)_sendNextRequest;
- (void)_snapshotCurrentContent;
- (void)enqueueRequest:(id)a3;
- (void)setDefaultFrameAndPositionWebView;
- (void)setFrameAndPositionWebView:(CGRect)a3;
- (void)setWebView:(id)a3;
@end

@implementation BKTOCWebViewCellLoadQueue

- (BKTOCWebViewCellLoadQueue)init
{
  v6.receiver = self;
  v6.super_class = BKTOCWebViewCellLoadQueue;
  v2 = [(BKTOCWebViewCellLoadQueue *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableOrderedSet);
    requests = v2->_requests;
    v2->_requests = v3;
  }

  return v2;
}

- (void)enqueueRequest:(id)a3
{
  [(NSMutableOrderedSet *)self->_requests addObject:a3];

  [(BKTOCWebViewCellLoadQueue *)self _sendNextRequest];
}

- (id)dequeueRequest
{
  if ([(NSMutableOrderedSet *)self->_requests count])
  {
    v3 = [(NSMutableOrderedSet *)self->_requests lastObject];
    [(NSMutableOrderedSet *)self->_requests removeObjectAtIndex:[(NSMutableOrderedSet *)self->_requests count]- 1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setWebView:(id)a3
{
  v5 = a3;
  v4 = objc_storeWeak(&self->_webView, v5);
  [v5 setNavigationDelegate:self];

  [(BKTOCWebViewCellLoadQueue *)self _sendNextRequest];
}

- (void)setFrameAndPositionWebView:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  v7 = -CGRectGetWidth(a3);
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  [WeakRetained setFrame:{v7, y, width, height}];
}

- (void)setDefaultFrameAndPositionWebView
{
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  [WeakRetained frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;

  [(BKTOCWebViewCellLoadQueue *)self setFrameAndPositionWebView:v5, v7, v9, 54.0];
}

- (void)_sendNextRequest
{
  if (!self->_currentRequest)
  {
    WeakRetained = objc_loadWeakRetained(&self->_webView);
    if (WeakRetained)
    {
      v4 = WeakRetained;
      v5 = [(BKTOCWebViewCellLoadQueue *)self isEmpty];

      if ((v5 & 1) == 0)
      {
        v6 = [(BKTOCWebViewCellLoadQueue *)self dequeueRequest];
        currentRequest = self->_currentRequest;
        self->_currentRequest = v6;

        v8 = self->_currentRequest;
        if (v8)
        {
          v9 = [(BKTOCWebViewCellLoadRequest *)v8 htmlContentString];
          v14 = [v9 dataUsingEncoding:4];

          v10 = [(BKTOCWebViewCellLoadRequest *)self->_currentRequest baseURL];
          v11 = objc_loadWeakRetained(&self->_webView);
          v12 = [v11 loadData:v14 MIMEType:BEXBEHTMLContentType characterEncodingName:BEUTF8StringEncodingName baseURL:v10];

          v13 = [(BKTOCWebViewCellLoadRequest *)self->_currentRequest requester];
          [v13 contentBeganLoadingForRequest:self->_currentRequest];
        }
      }
    }
  }
}

- (void)_measureContentAndSetFrame
{
  objc_initWeak(&location, self);
  v5 = _NSConcreteStackBlock;
  v6 = 3221225472;
  v7 = sub_2D78C;
  v8 = &unk_1E36A8;
  objc_copyWeak(&v9, &location);
  v3 = objc_retainBlock(&v5);
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  [WeakRetained evaluateJavaScript:@"let container = document.getElementById('content_container');if (!container) {    container = document.body;}const rect = container.getBoundingClientRect();JSON.stringify({width: rect.width completionHandler:{height: rect.height});", v3, v5, v6, v7, v8}];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_snapshotCurrentContent
{
  objc_initWeak(&location, self);
  v5 = _NSConcreteStackBlock;
  v6 = 3221225472;
  v7 = sub_2DC84;
  v8 = &unk_1E36D0;
  objc_copyWeak(&v9, &location);
  v3 = objc_retainBlock(&v5);
  v4 = [(BKTOCWebViewCellLoadQueue *)self webView:v5];
  [v4 be_takeSnapshotWithDefaultConfigurationCompletion:v3];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_notifyRequesterAndSendNextRequestOfPreferredHeight:(double)a3 error:(id)a4
{
  currentRequest = self->_currentRequest;
  v7 = a4;
  v8 = [(BKTOCWebViewCellLoadRequest *)currentRequest requester];
  [v8 contentFinishedLoadingForRequest:self->_currentRequest preferredHeight:v7 error:a3];

  v9 = self->_currentRequest;
  self->_currentRequest = 0;

  [(BKTOCWebViewCellLoadQueue *)self _sendNextRequest];
}

- (WKWebView)webView
{
  WeakRetained = objc_loadWeakRetained(&self->_webView);

  return WeakRetained;
}

- (BKTOCImageCache2)imageCache
{
  WeakRetained = objc_loadWeakRetained(&self->_imageCache);

  return WeakRetained;
}

@end