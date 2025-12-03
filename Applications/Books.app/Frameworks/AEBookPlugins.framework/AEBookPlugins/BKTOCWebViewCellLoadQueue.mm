@interface BKTOCWebViewCellLoadQueue
- (BKTOCImageCache2)imageCache;
- (BKTOCWebViewCellLoadQueue)init;
- (WKWebView)webView;
- (id)dequeueRequest;
- (void)_measureContentAndSetFrame;
- (void)_notifyRequesterAndSendNextRequestOfPreferredHeight:(double)height error:(id)error;
- (void)_sendNextRequest;
- (void)_snapshotCurrentContent;
- (void)enqueueRequest:(id)request;
- (void)setDefaultFrameAndPositionWebView;
- (void)setFrameAndPositionWebView:(CGRect)view;
- (void)setWebView:(id)view;
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

- (void)enqueueRequest:(id)request
{
  [(NSMutableOrderedSet *)self->_requests addObject:request];

  [(BKTOCWebViewCellLoadQueue *)self _sendNextRequest];
}

- (id)dequeueRequest
{
  if ([(NSMutableOrderedSet *)self->_requests count])
  {
    lastObject = [(NSMutableOrderedSet *)self->_requests lastObject];
    [(NSMutableOrderedSet *)self->_requests removeObjectAtIndex:[(NSMutableOrderedSet *)self->_requests count]- 1];
  }

  else
  {
    lastObject = 0;
  }

  return lastObject;
}

- (void)setWebView:(id)view
{
  viewCopy = view;
  v4 = objc_storeWeak(&self->_webView, viewCopy);
  [viewCopy setNavigationDelegate:self];

  [(BKTOCWebViewCellLoadQueue *)self _sendNextRequest];
}

- (void)setFrameAndPositionWebView:(CGRect)view
{
  height = view.size.height;
  width = view.size.width;
  y = view.origin.y;
  v7 = -CGRectGetWidth(view);
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
      isEmpty = [(BKTOCWebViewCellLoadQueue *)self isEmpty];

      if ((isEmpty & 1) == 0)
      {
        dequeueRequest = [(BKTOCWebViewCellLoadQueue *)self dequeueRequest];
        currentRequest = self->_currentRequest;
        self->_currentRequest = dequeueRequest;

        v8 = self->_currentRequest;
        if (v8)
        {
          htmlContentString = [(BKTOCWebViewCellLoadRequest *)v8 htmlContentString];
          v14 = [htmlContentString dataUsingEncoding:4];

          baseURL = [(BKTOCWebViewCellLoadRequest *)self->_currentRequest baseURL];
          v11 = objc_loadWeakRetained(&self->_webView);
          v12 = [v11 loadData:v14 MIMEType:BEXBEHTMLContentType characterEncodingName:BEUTF8StringEncodingName baseURL:baseURL];

          requester = [(BKTOCWebViewCellLoadRequest *)self->_currentRequest requester];
          [requester contentBeganLoadingForRequest:self->_currentRequest];
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

- (void)_notifyRequesterAndSendNextRequestOfPreferredHeight:(double)height error:(id)error
{
  currentRequest = self->_currentRequest;
  errorCopy = error;
  requester = [(BKTOCWebViewCellLoadRequest *)currentRequest requester];
  [requester contentFinishedLoadingForRequest:self->_currentRequest preferredHeight:errorCopy error:height];

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