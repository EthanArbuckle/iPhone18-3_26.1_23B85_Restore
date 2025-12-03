@interface _SFReaderViewController
- (SFReaderViewControllerDelegate)delegate;
- (_SFReaderViewController)initWithOriginalWebView:(id)view;
- (void)_webView:(id)view contextMenuConfigurationForElement:(id)element completionHandler:(id)handler;
- (void)_webView:(id)view contextMenuDidEndForElement:(id)element;
- (void)_webView:(id)view contextMenuForElement:(id)element willCommitWithAnimator:(id)animator;
- (void)_webView:(id)view contextMenuWillPresentForElement:(id)element;
- (void)loadView;
@end

@implementation _SFReaderViewController

- (_SFReaderViewController)initWithOriginalWebView:(id)view
{
  viewCopy = view;
  v9.receiver = self;
  v9.super_class = _SFReaderViewController;
  v5 = [(_SFReaderViewController *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_originalWebView, viewCopy);
    v7 = v6;
  }

  return v6;
}

- (void)loadView
{
  WeakRetained = objc_loadWeakRetained(&self->_originalWebView);
  v3 = objc_alloc_init(MEMORY[0x1E69853A8]);
  configuration = [WeakRetained configuration];
  processPool = [configuration processPool];
  [v3 setProcessPool:processPool];

  [v3 _setRelatedWebView:WeakRetained];
  [v3 _setAlternateWebViewForNavigationGestures:WeakRetained];
  [v3 _setGroupIdentifier:@"Reader"];
  configuration2 = [WeakRetained configuration];
  websiteDataStore = [configuration2 websiteDataStore];
  [v3 setWebsiteDataStore:websiteDataStore];

  [v3 setAllowsPictureInPictureMediaPlayback:0];
  v8 = _SFApplicationNameForUserAgent();
  [v3 setApplicationNameForUserAgent:v8];

  [v3 _setNeedsStorageAccessFromFileURLsQuirk:0];
  safari_readerUserContentController = [MEMORY[0x1E6985350] safari_readerUserContentController];
  [v3 setUserContentController:safari_readerUserContentController];

  configuration3 = [WeakRetained configuration];
  preferences = [configuration3 preferences];
  _mediaCapabilityGrantsEnabled = [preferences _mediaCapabilityGrantsEnabled];
  preferences2 = [v3 preferences];
  [preferences2 _setMediaCapabilityGrantsEnabled:_mediaCapabilityGrantsEnabled];

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

- (void)_webView:(id)view contextMenuConfigurationForElement:(id)element completionHandler:(id)handler
{
  elementCopy = element;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained contextMenuConfigurationForReaderViewController:self element:elementCopy completionHandler:handlerCopy];
  }

  else
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (void)_webView:(id)view contextMenuWillPresentForElement:(id)element
{
  elementCopy = element;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained readerViewController:self contextMenuWillPresentForElement:elementCopy];
}

- (void)_webView:(id)view contextMenuForElement:(id)element willCommitWithAnimator:(id)animator
{
  animatorCopy = animator;
  elementCopy = element;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained readerViewController:self contextMenuForElement:elementCopy willCommitWithAnimator:animatorCopy];
}

- (void)_webView:(id)view contextMenuDidEndForElement:(id)element
{
  elementCopy = element;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained readerViewController:self contextMenuDidEndForElement:elementCopy];
}

- (SFReaderViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end