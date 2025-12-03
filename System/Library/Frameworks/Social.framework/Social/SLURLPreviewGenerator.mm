@interface SLURLPreviewGenerator
- (BOOL)webView:(id)view shouldStartLoadWithRequest:(id)request navigationType:(int64_t)type;
- (SLURLPreviewGenerator)initWithFrame:(CGRect)frame;
- (void)_callCompletionWithPreview:(id)preview;
- (void)dealloc;
- (void)loadURL:(id)l completion:(id)completion;
- (void)uiWebView:(id)view decidePolicyForGeolocationRequestFromOrigin:(id)origin frame:(id)frame listener:(id)listener;
- (void)webView:(id)view didFailLoadWithError:(id)error;
- (void)webViewDidFinishLoad:(id)load;
@end

@implementation SLURLPreviewGenerator

- (SLURLPreviewGenerator)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  _SLLog(v3, 7, @"SLURLPreviewGenerator %@ initWithFrame: %g %g %g %g");
  v17.receiver = self;
  v17.super_class = SLURLPreviewGenerator;
  v9 = [(SLURLPreviewGenerator *)&v17 init:self];
  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x1E69DD2E0]) initWithFrame:{x, y, width, height}];
    webView = v9->_webView;
    v9->_webView = v10;

    [(UIWebView *)v9->_webView setAllowsInlineMediaPlayback:0];
    [(UIWebView *)v9->_webView setMediaPlaybackRequiresUserAction:1];
    [(UIWebView *)v9->_webView setMediaPlaybackAllowsAirPlay:0];
    [(UIWebView *)v9->_webView setSuppressesIncrementalRendering:1];
    [(UIWebView *)v9->_webView setScalesPageToFit:1];
    [(UIWebView *)v9->_webView setDelegate:v9];
    _browserView = [(UIWebView *)v9->_webView _browserView];
    webView = [_browserView webView];

    [webView setUIDelegate:v9];
  }

  return v9;
}

- (void)dealloc
{
  selfCopy = self;
  _SLLog(v2, 7, @"SLURLPreviewGenerator %@ dealloc");
  if (self->_completion)
  {
    [(SLURLPreviewGenerator *)self _callCompletionWithPreview:0, selfCopy];
  }

  [(UIWebView *)self->_webView setDelegate:0, selfCopy];
  [(UIWebView *)self->_webView stopLoading];
  v5.receiver = self;
  v5.super_class = SLURLPreviewGenerator;
  [(SLURLPreviewGenerator *)&v5 dealloc];
}

- (void)_callCompletionWithPreview:(id)preview
{
  previewCopy = preview;
  _SLLog(v3, 7, @"SLURLPreviewGenerator %@ _callCompletionWithPreview: %@");
  v7 = MEMORY[0x1C6917BF0](self->_completion);
  _SLLog(v3, 7, @"_completion %@");

  completion = self->_completion;
  if (completion)
  {
    completion[2](completion, previewCopy);
    v6 = self->_completion;
    self->_completion = 0;
  }
}

- (void)loadURL:(id)l completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  _SLLog(v4, 7, @"SLURLPreviewGenerator %@ loadURL:completion: with %@");
  if ([lCopy loadingInUIWebViewWillLaunchAnotherApp])
  {
    _SLLog(v4, 7, @"SLURLPreviewGenerator not loading a preview that would launch another app.");
LABEL_3:
    completionCopy[2](completionCopy, 0);
    goto LABEL_8;
  }

  scheme = [lCopy scheme];
  if ([scheme isEqualToString:@"http"])
  {
  }

  else
  {
    scheme2 = [lCopy scheme];
    v10 = [scheme2 isEqualToString:@"https"];

    if (!v10)
    {
      scheme3 = [lCopy scheme];
      _SLLog(v4, 7, @"SLURLPreviewGenerator not loading a preview for url with unsupported scheme '%@'.");

      goto LABEL_3;
    }
  }

  v11 = [completionCopy copy];
  completion = self->_completion;
  self->_completion = v11;

  v13 = [objc_alloc(MEMORY[0x1E696AD68]) initWithURL:lCopy];
  [v13 setHTTPShouldHandleCookies:0];
  [(UIWebView *)self->_webView loadRequest:v13];

LABEL_8:
}

- (BOOL)webView:(id)view shouldStartLoadWithRequest:(id)request navigationType:(int64_t)type
{
  requestCopy = request;
  _SLLog(v5, 7, @"SLURLPreviewGenerator %@ shouldStartLoadWithRequest: %@ navigationType: %d");
  v9 = [requestCopy URL];

  loadingInUIWebViewWillLaunchAnotherApp = [v9 loadingInUIWebViewWillLaunchAnotherApp];
  if (loadingInUIWebViewWillLaunchAnotherApp)
  {
    _SLLog(v5, 7, @"SLURLPreviewGenerator not loading a preview that would launch another app.");
    [(SLURLPreviewGenerator *)self _callCompletionWithPreview:0];
  }

  return loadingInUIWebViewWillLaunchAnotherApp ^ 1;
}

- (void)webViewDidFinishLoad:(id)load
{
  isLoading = [(UIWebView *)self->_webView isLoading];
  _SLLog(v3, 7, @"SLURLPreviewGenerator %@ webViewDidFinishLoad: still loading %d");
  if (![(UIWebView *)self->_webView isLoading:self]&& self->_completion)
  {
    webView = self->_webView;
    [(UIWebView *)webView frame];
    v6 = [(UIWebView *)webView newSnapshotWithRect:?];
    _SLLog(v3, 7, @"SLURLPreviewGenerator %@ generated cgImage %p");
    v7 = [MEMORY[0x1E69DCAB8] imageWithCGImage:{v6, self, v6}];
    [(SLURLPreviewGenerator *)self _callCompletionWithPreview:v7];

    CGImageRelease(v6);
  }
}

- (void)webView:(id)view didFailLoadWithError:(id)error
{
  webView = self->_webView;
  errorCopy = error;
  isLoading = [(UIWebView *)webView isLoading];
  _SLLog(v4, 7, @"SLURLPreviewGenerator %@ webView:didFailLoadWithError: %@ still loading %d");

  if (![(UIWebView *)self->_webView isLoading:self])
  {

    [(SLURLPreviewGenerator *)self _callCompletionWithPreview:0];
  }
}

- (void)uiWebView:(id)view decidePolicyForGeolocationRequestFromOrigin:(id)origin frame:(id)frame listener:(id)listener
{
  listenerCopy = listener;
  v6 = listenerCopy;
  WebThreadRun();
}

@end