@interface SFReaderEnabledWebViewController
- (void)createReaderWebViewForReaderController:(id)controller;
- (void)dealloc;
- (void)didFindAppBannerWithContent:(id)content;
- (void)invalidate;
- (void)loadView;
- (void)readerController:(id)controller contentDidBecomeReadyWithDetectedLanguage:(id)language;
- (void)readerController:(id)controller didClickLinkInReaderWithRequest:(id)request;
- (void)readerController:(id)controller didClickLinkRequestingNewWindowInReaderWithRequest:(id)request;
- (void)readerController:(id)controller didDetermineAdditionalTextSamples:(id)samples dueTo:(int64_t)to;
- (void)readerController:(id)controller didDetermineReaderAvailability:(id)availability dueTo:(int64_t)to;
- (void)setUpReaderWithReaderWebView:(id)view;
- (void)webView:(id)view didCommitNavigation:(id)navigation;
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
  webView = [(SFWebViewController *)self webView];
  v5 = [(_SFReaderController *)v3 initWithWebView:webView];
  readerController = self->_readerController;
  self->_readerController = v5;

  [(_SFReaderController *)self->_readerController setDelegate:self];
  v7 = [MEMORY[0x1E69853F8] remoteObjectInterfaceWithProtocol:&unk_1F50A8848];
  appBannerMetaTagContentObserverInterface = self->_appBannerMetaTagContentObserverInterface;
  self->_appBannerMetaTagContentObserverInterface = v7;

  webView2 = [(SFWebViewController *)self webView];
  _remoteObjectRegistry = [webView2 _remoteObjectRegistry];
  [_remoteObjectRegistry registerExportedObject:self interface:self->_appBannerMetaTagContentObserverInterface];
}

- (void)setUpReaderWithReaderWebView:(id)view
{
  viewCopy = view;
  [(_SFReaderController *)self->_readerController didCreateReaderWebView:?];
  configurationManager = [(_SFReaderController *)self->_readerController configurationManager];
  configurationToSendToWebPage = [configurationManager configurationToSendToWebPage];

  [(_SFReaderController *)self->_readerController setReaderInitialTopScrollOffset:0 configuration:configurationToSendToWebPage isViewingArchive:0];
  [viewCopy setNavigationDelegate:self->_readerController];
  v6 = MEMORY[0x1E695AC68];
  readerURL = [(_SFReaderController *)self->_readerController readerURL];
  v8 = [v6 safari_nonAppInitiatedRequestWithURL:readerURL];

  v9 = [v8 safari_requestBySettingAdvancedPrivacyProtectionsFlagIsEnabled:self->_supportsAdvancedPrivacyProtections];

  v10 = [viewCopy loadRequest:v9];
}

- (void)invalidate
{
  v6.receiver = self;
  v6.super_class = SFReaderEnabledWebViewController;
  [(SFWebViewController *)&v6 invalidate];
  if (self->_appBannerMetaTagContentObserverInterface)
  {
    webView = [(SFWebViewController *)self webView];
    _remoteObjectRegistry = [webView _remoteObjectRegistry];
    [_remoteObjectRegistry unregisterExportedObject:self interface:self->_appBannerMetaTagContentObserverInterface];

    appBannerMetaTagContentObserverInterface = self->_appBannerMetaTagContentObserverInterface;
    self->_appBannerMetaTagContentObserverInterface = 0;
  }
}

- (void)webView:(id)view didCommitNavigation:(id)navigation
{
  viewCopy = view;
  navigationCopy = navigation;
  v8.receiver = self;
  v8.super_class = SFReaderEnabledWebViewController;
  [(SFWebViewController *)&v8 webView:viewCopy didCommitNavigation:navigationCopy];
  [(_SFReaderController *)self->_readerController setReaderAvailable:0];
}

- (void)readerController:(id)controller didDetermineReaderAvailability:(id)availability dueTo:(int64_t)to
{
  availabilityCopy = availability;
  mEMORY[0x1E69C8810] = [MEMORY[0x1E69C8810] sharedLogger];
  [mEMORY[0x1E69C8810] didDetermineReaderAvailability:{objc_msgSend(availabilityCopy, "isReaderAvailable")}];

  delegate = [(SFWebViewController *)self delegate];
  [delegate webViewControllerDidDetermineReaderAvailability:self dueTo:to];
  if (objc_opt_respondsToSelector())
  {
    textSamples = [availabilityCopy textSamples];
    [delegate webViewController:self didExtractTextSamplesForTranslation:textSamples];
  }
}

- (void)readerController:(id)controller didDetermineAdditionalTextSamples:(id)samples dueTo:(int64_t)to
{
  v13 = *MEMORY[0x1E69E9840];
  samplesCopy = samples;
  v7 = WBS_LOG_CHANNEL_PREFIXTranslation();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    textSamples = [samplesCopy textSamples];
    v11 = 134217984;
    v12 = [textSamples count];
    _os_log_debug_impl(&dword_1D4644000, v7, OS_LOG_TYPE_DEBUG, "Determined %lu additional text samples for translation", &v11, 0xCu);
  }

  delegate = [(SFWebViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    textSamples2 = [samplesCopy textSamples];
    [delegate webViewController:self didExtractTextSamplesForTranslation:textSamples2];
  }
}

- (void)readerController:(id)controller didClickLinkRequestingNewWindowInReaderWithRequest:(id)request
{
  requestCopy = request;
  delegate = [(SFWebViewController *)self delegate];
  [delegate webViewController:self didClickLinkInReaderWithRequest:requestCopy];
}

- (void)readerController:(id)controller didClickLinkInReaderWithRequest:(id)request
{
  requestCopy = request;
  delegate = [(SFWebViewController *)self delegate];
  [delegate webViewController:self didClickLinkInReaderWithRequest:requestCopy];
}

- (void)createReaderWebViewForReaderController:(id)controller
{
  delegate = [(SFWebViewController *)self delegate];
  [delegate createReaderWebViewForWebViewController:self];
}

- (void)readerController:(id)controller contentDidBecomeReadyWithDetectedLanguage:(id)language
{
  v5 = [(SFWebViewController *)self delegate:controller];
  if (objc_opt_respondsToSelector())
  {
    [v5 webViewControllerReaderDidBecomeReady:self];
  }
}

- (void)didFindAppBannerWithContent:(id)content
{
  contentCopy = content;
  delegate = [(SFWebViewController *)self delegate];
  [delegate webViewController:self didFindAppBannerWithContent:contentCopy];
}

@end