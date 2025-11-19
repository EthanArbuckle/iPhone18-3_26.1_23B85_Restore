@interface _SFReaderViewController
- (SFReaderViewControllerDelegate)delegate;
- (_SFReaderViewController)initWithOriginalWebView:(id)a3;
- (void)_webView:(id)a3 contextMenuConfigurationForElement:(id)a4 completionHandler:(id)a5;
- (void)_webView:(id)a3 contextMenuDidEndForElement:(id)a4;
- (void)_webView:(id)a3 contextMenuForElement:(id)a4 willCommitWithAnimator:(id)a5;
- (void)_webView:(id)a3 contextMenuWillPresentForElement:(id)a4;
- (void)loadView;
@end

@implementation _SFReaderViewController

- (_SFReaderViewController)initWithOriginalWebView:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _SFReaderViewController;
  v5 = [(_SFReaderViewController *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_originalWebView, v4);
    v7 = v6;
  }

  return v6;
}

- (void)loadView
{
  WeakRetained = objc_loadWeakRetained(&self->_originalWebView);
  v3 = objc_alloc_init(MEMORY[0x1E69853A8]);
  v4 = [WeakRetained configuration];
  v5 = [v4 processPool];
  [v3 setProcessPool:v5];

  [v3 _setRelatedWebView:WeakRetained];
  [v3 _setAlternateWebViewForNavigationGestures:WeakRetained];
  [v3 _setGroupIdentifier:@"Reader"];
  v6 = [WeakRetained configuration];
  v7 = [v6 websiteDataStore];
  [v3 setWebsiteDataStore:v7];

  [v3 setAllowsPictureInPictureMediaPlayback:0];
  v8 = _SFApplicationNameForUserAgent();
  [v3 setApplicationNameForUserAgent:v8];

  [v3 _setNeedsStorageAccessFromFileURLsQuirk:0];
  v9 = [MEMORY[0x1E6985350] safari_readerUserContentController];
  [v3 setUserContentController:v9];

  v10 = [WeakRetained configuration];
  v11 = [v10 preferences];
  v12 = [v11 _mediaCapabilityGrantsEnabled];
  v13 = [v3 preferences];
  [v13 _setMediaCapabilityGrantsEnabled:v12];

  v14 = [_SFWebView alloc];
  [WeakRetained frame];
  v15 = [(_SFWebView *)v14 initWithFrame:v3 configuration:?];
  if (objc_opt_respondsToSelector())
  {
    [(_SFWebView *)v15 _grantAccessToAssetServices];
  }

  [(_SFWebView *)v15 _setBackgroundExtendsBeyondPage:1];
  [(_SFWebView *)v15 setAccessibilityIdentifier:@"ReaderView"];
  [(_SFWebView *)v15 setAllowsLinkPreview:1];
  [(_SFWebView *)v15 setAutoresizingMask:18];
  [(_SFWebView *)v15 setUIDelegate:self];
  [(_SFWebView *)v15 setInspectable:1];
  [(_SFReaderViewController *)self setView:v15];
}

- (void)_webView:(id)a3 contextMenuConfigurationForElement:(id)a4 completionHandler:(id)a5
{
  v10 = a4;
  v7 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained contextMenuConfigurationForReaderViewController:self element:v10 completionHandler:v7];
  }

  else
  {
    v7[2](v7, 0);
  }
}

- (void)_webView:(id)a3 contextMenuWillPresentForElement:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained readerViewController:self contextMenuWillPresentForElement:v5];
}

- (void)_webView:(id)a3 contextMenuForElement:(id)a4 willCommitWithAnimator:(id)a5
{
  v7 = a5;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained readerViewController:self contextMenuForElement:v8 willCommitWithAnimator:v7];
}

- (void)_webView:(id)a3 contextMenuDidEndForElement:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained readerViewController:self contextMenuDidEndForElement:v5];
}

- (SFReaderViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end