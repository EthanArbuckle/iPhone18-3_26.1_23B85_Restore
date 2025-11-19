@interface SFReaderEnabledWebViewController
- (void)createReaderWebViewForReaderController:(id)a3;
- (void)dealloc;
- (void)didFindAppBannerWithContent:(id)a3;
- (void)invalidate;
- (void)loadView;
- (void)readerController:(id)a3 contentDidBecomeReadyWithDetectedLanguage:(id)a4;
- (void)readerController:(id)a3 didClickLinkInReaderWithRequest:(id)a4;
- (void)readerController:(id)a3 didClickLinkRequestingNewWindowInReaderWithRequest:(id)a4;
- (void)readerController:(id)a3 didDetermineAdditionalTextSamples:(id)a4 dueTo:(int64_t)a5;
- (void)readerController:(id)a3 didDetermineReaderAvailability:(id)a4 dueTo:(int64_t)a5;
- (void)setUpReaderWithReaderWebView:(id)a3;
- (void)webView:(id)a3 didCommitNavigation:(id)a4;
@end

@implementation SFReaderEnabledWebViewController

- (void)dealloc
{
  [(_SFReaderController *)self->_readerController invalidate];
  v3.receiver = self;
  v3.super_class = SFReaderEnabledWebViewController;
  [(SFWebViewController *)&v3 dealloc];
}

- (void)loadView
{
  v11.receiver = self;
  v11.super_class = SFReaderEnabledWebViewController;
  [(SFWebViewController *)&v11 loadView];
  v3 = [_SFReaderController alloc];
  v4 = [(SFWebViewController *)self webView];
  v5 = [(_SFReaderController *)v3 initWithWebView:v4];
  readerController = self->_readerController;
  self->_readerController = v5;

  [(_SFReaderController *)self->_readerController setDelegate:self];
  v7 = [MEMORY[0x1E69853F8] remoteObjectInterfaceWithProtocol:&unk_1F50A8848];
  appBannerMetaTagContentObserverInterface = self->_appBannerMetaTagContentObserverInterface;
  self->_appBannerMetaTagContentObserverInterface = v7;

  v9 = [(SFWebViewController *)self webView];
  v10 = [v9 _remoteObjectRegistry];
  [v10 registerExportedObject:self interface:self->_appBannerMetaTagContentObserverInterface];
}

- (void)setUpReaderWithReaderWebView:(id)a3
{
  v11 = a3;
  [(_SFReaderController *)self->_readerController didCreateReaderWebView:?];
  v4 = [(_SFReaderController *)self->_readerController configurationManager];
  v5 = [v4 configurationToSendToWebPage];

  [(_SFReaderController *)self->_readerController setReaderInitialTopScrollOffset:0 configuration:v5 isViewingArchive:0];
  [v11 setNavigationDelegate:self->_readerController];
  v6 = MEMORY[0x1E695AC68];
  v7 = [(_SFReaderController *)self->_readerController readerURL];
  v8 = [v6 safari_nonAppInitiatedRequestWithURL:v7];

  v9 = [v8 safari_requestBySettingAdvancedPrivacyProtectionsFlagIsEnabled:self->_supportsAdvancedPrivacyProtections];

  v10 = [v11 loadRequest:v9];
}

- (void)invalidate
{
  v6.receiver = self;
  v6.super_class = SFReaderEnabledWebViewController;
  [(SFWebViewController *)&v6 invalidate];
  if (self->_appBannerMetaTagContentObserverInterface)
  {
    v3 = [(SFWebViewController *)self webView];
    v4 = [v3 _remoteObjectRegistry];
    [v4 unregisterExportedObject:self interface:self->_appBannerMetaTagContentObserverInterface];

    appBannerMetaTagContentObserverInterface = self->_appBannerMetaTagContentObserverInterface;
    self->_appBannerMetaTagContentObserverInterface = 0;
  }
}

- (void)webView:(id)a3 didCommitNavigation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8.receiver = self;
  v8.super_class = SFReaderEnabledWebViewController;
  [(SFWebViewController *)&v8 webView:v6 didCommitNavigation:v7];
  [(_SFReaderController *)self->_readerController setReaderAvailable:0];
}

- (void)readerController:(id)a3 didDetermineReaderAvailability:(id)a4 dueTo:(int64_t)a5
{
  v10 = a4;
  v7 = [MEMORY[0x1E69C8810] sharedLogger];
  [v7 didDetermineReaderAvailability:{objc_msgSend(v10, "isReaderAvailable")}];

  v8 = [(SFWebViewController *)self delegate];
  [v8 webViewControllerDidDetermineReaderAvailability:self dueTo:a5];
  if (objc_opt_respondsToSelector())
  {
    v9 = [v10 textSamples];
    [v8 webViewController:self didExtractTextSamplesForTranslation:v9];
  }
}

- (void)readerController:(id)a3 didDetermineAdditionalTextSamples:(id)a4 dueTo:(int64_t)a5
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = WBS_LOG_CHANNEL_PREFIXTranslation();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v10 = [v6 textSamples];
    v11 = 134217984;
    v12 = [v10 count];
    _os_log_debug_impl(&dword_1D4644000, v7, OS_LOG_TYPE_DEBUG, "Determined %lu additional text samples for translation", &v11, 0xCu);
  }

  v8 = [(SFWebViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v9 = [v6 textSamples];
    [v8 webViewController:self didExtractTextSamplesForTranslation:v9];
  }
}

- (void)readerController:(id)a3 didClickLinkRequestingNewWindowInReaderWithRequest:(id)a4
{
  v6 = a4;
  v5 = [(SFWebViewController *)self delegate];
  [v5 webViewController:self didClickLinkInReaderWithRequest:v6];
}

- (void)readerController:(id)a3 didClickLinkInReaderWithRequest:(id)a4
{
  v6 = a4;
  v5 = [(SFWebViewController *)self delegate];
  [v5 webViewController:self didClickLinkInReaderWithRequest:v6];
}

- (void)createReaderWebViewForReaderController:(id)a3
{
  v4 = [(SFWebViewController *)self delegate];
  [v4 createReaderWebViewForWebViewController:self];
}

- (void)readerController:(id)a3 contentDidBecomeReadyWithDetectedLanguage:(id)a4
{
  v5 = [(SFWebViewController *)self delegate:a3];
  if (objc_opt_respondsToSelector())
  {
    [v5 webViewControllerReaderDidBecomeReady:self];
  }
}

- (void)didFindAppBannerWithContent:(id)a3
{
  v5 = a3;
  v4 = [(SFWebViewController *)self delegate];
  [v4 webViewController:self didFindAppBannerWithContent:v5];
}

@end