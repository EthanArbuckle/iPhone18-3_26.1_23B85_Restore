@interface SLURLPreviewGenerator
- (BOOL)webView:(id)a3 shouldStartLoadWithRequest:(id)a4 navigationType:(int64_t)a5;
- (SLURLPreviewGenerator)initWithFrame:(CGRect)a3;
- (void)_callCompletionWithPreview:(id)a3;
- (void)dealloc;
- (void)loadURL:(id)a3 completion:(id)a4;
- (void)uiWebView:(id)a3 decidePolicyForGeolocationRequestFromOrigin:(id)a4 frame:(id)a5 listener:(id)a6;
- (void)webView:(id)a3 didFailLoadWithError:(id)a4;
- (void)webViewDidFinishLoad:(id)a3;
@end

@implementation SLURLPreviewGenerator

- (SLURLPreviewGenerator)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
    v12 = [(UIWebView *)v9->_webView _browserView];
    v13 = [v12 webView];

    [v13 setUIDelegate:v9];
  }

  return v9;
}

- (void)dealloc
{
  v4 = self;
  _SLLog(v2, 7, @"SLURLPreviewGenerator %@ dealloc");
  if (self->_completion)
  {
    [(SLURLPreviewGenerator *)self _callCompletionWithPreview:0, v4];
  }

  [(UIWebView *)self->_webView setDelegate:0, v4];
  [(UIWebView *)self->_webView stopLoading];
  v5.receiver = self;
  v5.super_class = SLURLPreviewGenerator;
  [(SLURLPreviewGenerator *)&v5 dealloc];
}

- (void)_callCompletionWithPreview:(id)a3
{
  v8 = a3;
  _SLLog(v3, 7, @"SLURLPreviewGenerator %@ _callCompletionWithPreview: %@");
  v7 = MEMORY[0x1C6917BF0](self->_completion);
  _SLLog(v3, 7, @"_completion %@");

  completion = self->_completion;
  if (completion)
  {
    completion[2](completion, v8);
    v6 = self->_completion;
    self->_completion = 0;
  }
}

- (void)loadURL:(id)a3 completion:(id)a4
{
  v15 = a3;
  v7 = a4;
  _SLLog(v4, 7, @"SLURLPreviewGenerator %@ loadURL:completion: with %@");
  if ([v15 loadingInUIWebViewWillLaunchAnotherApp])
  {
    _SLLog(v4, 7, @"SLURLPreviewGenerator not loading a preview that would launch another app.");
LABEL_3:
    v7[2](v7, 0);
    goto LABEL_8;
  }

  v8 = [v15 scheme];
  if ([v8 isEqualToString:@"http"])
  {
  }

  else
  {
    v9 = [v15 scheme];
    v10 = [v9 isEqualToString:@"https"];

    if (!v10)
    {
      v14 = [v15 scheme];
      _SLLog(v4, 7, @"SLURLPreviewGenerator not loading a preview for url with unsupported scheme '%@'.");

      goto LABEL_3;
    }
  }

  v11 = [v7 copy];
  completion = self->_completion;
  self->_completion = v11;

  v13 = [objc_alloc(MEMORY[0x1E696AD68]) initWithURL:v15];
  [v13 setHTTPShouldHandleCookies:0];
  [(UIWebView *)self->_webView loadRequest:v13];

LABEL_8:
}

- (BOOL)webView:(id)a3 shouldStartLoadWithRequest:(id)a4 navigationType:(int64_t)a5
{
  v8 = a4;
  _SLLog(v5, 7, @"SLURLPreviewGenerator %@ shouldStartLoadWithRequest: %@ navigationType: %d");
  v9 = [v8 URL];

  v10 = [v9 loadingInUIWebViewWillLaunchAnotherApp];
  if (v10)
  {
    _SLLog(v5, 7, @"SLURLPreviewGenerator not loading a preview that would launch another app.");
    [(SLURLPreviewGenerator *)self _callCompletionWithPreview:0];
  }

  return v10 ^ 1;
}

- (void)webViewDidFinishLoad:(id)a3
{
  v8 = [(UIWebView *)self->_webView isLoading];
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

- (void)webView:(id)a3 didFailLoadWithError:(id)a4
{
  webView = self->_webView;
  v7 = a4;
  v8 = [(UIWebView *)webView isLoading];
  _SLLog(v4, 7, @"SLURLPreviewGenerator %@ webView:didFailLoadWithError: %@ still loading %d");

  if (![(UIWebView *)self->_webView isLoading:self])
  {

    [(SLURLPreviewGenerator *)self _callCompletionWithPreview:0];
  }
}

- (void)uiWebView:(id)a3 decidePolicyForGeolocationRequestFromOrigin:(id)a4 frame:(id)a5 listener:(id)a6
{
  v7 = a6;
  v6 = v7;
  WebThreadRun();
}

@end