@interface SFAddToHomeScreenViewController
- (NSString)trustedClientBundleIdentifier;
- (SFAddToHomeScreenViewController)initWithAddToHomeScreenActivityItem:(id)item completion:(id)completion;
- (SFAddToHomeScreenViewController)initWithWebView:(id)view completion:(id)completion;
- (id)_issueReadOnlySandboxExtensionForURL:(id)l;
- (id)_stagedCookiesDirectoryURL;
- (id)serviceProxy;
- (void)_addPlaceholderView;
- (void)_addRemoteViewControllerIfNeeded;
- (void)_connectToService;
- (void)_copyCurrentCookiesToStagingDirectory;
- (void)_didLoadRemoteViewController:(id)controller;
- (void)_fetchWebClipMetadataViaJavaScript;
- (void)_initializeViewService;
- (void)_removePlaceholderView;
- (void)_removeStageCookiesDirectoryIfNeeded;
- (void)dataProvider:(id)provider didFinishWithResult:(BOOL)result;
- (void)loadView;
- (void)remoteViewController:(id)controller didFinishWithResult:(BOOL)result;
- (void)serviceProxyWillQueueInvocation:(id)invocation;
- (void)viewDidLoad;
@end

@implementation SFAddToHomeScreenViewController

- (SFAddToHomeScreenViewController)initWithWebView:(id)view completion:(id)completion
{
  viewCopy = view;
  completionCopy = completion;
  v22.receiver = self;
  v22.super_class = SFAddToHomeScreenViewController;
  v9 = [(SFAddToHomeScreenViewController *)&v22 init];
  if (v9)
  {
    v10 = [viewCopy URL];
    initialURL = v9->_initialURL;
    v9->_initialURL = v10;

    objc_storeStrong(&v9->_webView, view);
    v12 = _Block_copy(completionCopy);
    completionHandler = v9->_completionHandler;
    v9->_completionHandler = v12;

    if ([MEMORY[0x1E696AAE8] safari_isSafariViewServiceBundle])
    {
      v14 = objc_alloc_init(SFWebAppDataProvider);
      provider = v9->_provider;
      v9->_provider = v14;

      [(SFWebAppDataProvider *)v9->_provider setDelegate:v9];
    }

    else
    {
      [(SFAddToHomeScreenViewController *)v9 _initializeViewService];
    }

    webView = v9->_webView;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __62__SFAddToHomeScreenViewController_initWithWebView_completion___block_invoke;
    v20[3] = &unk_1E8493918;
    v17 = v9;
    v21 = v17;
    [(WKWebView *)webView _getApplicationManifestWithCompletionHandler:v20];
    v18 = v17;
  }

  return v9;
}

void __62__SFAddToHomeScreenViewController_initWithWebView_completion___block_invoke(uint64_t a1, void *a2)
{
  v22 = a2;
  objc_storeStrong((*(a1 + 32) + 1032), a2);
  v4 = objc_opt_new();
  v5 = v4;
  v6 = *(a1 + 32);
  v7 = *(v6 + 1032);
  if (v7)
  {
    [v4 setObject:v7 forKeyedSubscript:@"Manifest"];
    v6 = *(a1 + 32);
  }

  v8 = [*(v6 + 1024) title];

  if (v8)
  {
    v9 = [*(*(a1 + 32) + 1024) title];
    [v5 setObject:v9 forKeyedSubscript:@"PageTitle"];
  }

  v10 = [*(*(a1 + 32) + 1024) URL];

  if (v10)
  {
    v11 = [*(*(a1 + 32) + 1024) URL];
    [v5 setObject:v11 forKeyedSubscript:@"PageURL"];
  }

  v12 = [*(*(a1 + 32) + 1024) themeColor];

  if (v12)
  {
    v13 = [*(*(a1 + 32) + 1024) themeColor];
    [v5 setObject:v13 forKeyedSubscript:@"PageThemeColor"];
  }

  v14 = [*(*(a1 + 32) + 1024) underPageBackgroundColor];

  if (v14)
  {
    v15 = [*(*(a1 + 32) + 1024) underPageBackgroundColor];
    [v5 setObject:v15 forKeyedSubscript:@"UnderPageBackgroundColor"];
  }

  v16 = [MEMORY[0x1E696AAE8] safari_isSafariViewServiceBundle];
  v17 = *(a1 + 32);
  if (v16)
  {
    [*(v17 + 1056) prepareWithManifestData:v5];
    v18 = [*(*(a1 + 32) + 1056) activityViewController];
    [*(a1 + 32) addChildViewController:v18];
    v19 = [v18 view];
    v20 = [*(a1 + 32) view];
    [v20 addSubview:v19];

    v21 = [*(a1 + 32) view];
    [v21 bounds];
    [v19 setFrame:?];

    [v19 setAutoresizingMask:18];
  }

  else
  {
    [*(v17 + 1008) didFetchManifestData:v5];
  }

  [*(a1 + 32) _fetchWebClipMetadataViaJavaScript];
}

- (SFAddToHomeScreenViewController)initWithAddToHomeScreenActivityItem:(id)item completion:(id)completion
{
  itemCopy = item;
  completionCopy = completion;
  v38.receiver = self;
  v38.super_class = SFAddToHomeScreenViewController;
  v8 = [(SFAddToHomeScreenViewController *)&v38 init];
  if (!v8)
  {
    goto LABEL_14;
  }

  v9 = _Block_copy(completionCopy);
  completionHandler = v8->_completionHandler;
  v8->_completionHandler = v9;

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  title = [itemCopy title];
  [dictionary setObject:title forKeyedSubscript:@"PageTitle"];

  v13 = [itemCopy URL];
  [dictionary setObject:v13 forKeyedSubscript:@"PageURL"];

  v14 = [itemCopy URL];
  initialURL = v8->_initialURL;
  v8->_initialURL = v14;

  [(SFAddToHomeScreenViewController *)v8 _initializeViewService];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __82__SFAddToHomeScreenViewController_initWithAddToHomeScreenActivityItem_completion___block_invoke;
  aBlock[3] = &unk_1E8493940;
  v16 = v8;
  v37 = v16;
  v17 = _Block_copy(aBlock);
  if (objc_opt_respondsToSelector())
  {
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __82__SFAddToHomeScreenViewController_initWithAddToHomeScreenActivityItem_completion___block_invoke_2;
    v31[3] = &unk_1E8493990;
    v32 = itemCopy;
    v33 = dictionary;
    v34 = v16;
    v35 = v17;
    [v32 getHomeScreenWebAppInfoWithCompletionHandler:v31];

    v18 = v32;
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      (*(v17 + 2))(v17, dictionary);
      goto LABEL_8;
    }

    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __82__SFAddToHomeScreenViewController_initWithAddToHomeScreenActivityItem_completion___block_invoke_10;
    v27[3] = &unk_1E84939E0;
    v28 = itemCopy;
    v29 = dictionary;
    v30 = v17;
    [v28 getWebAppManifestWithCompletionHandler:v27];

    v18 = v28;
  }

LABEL_8:
  if (objc_opt_respondsToSelector())
  {
    iconItemProvider = [itemCopy iconItemProvider];
    if (iconItemProvider && [iconItemProvider canLoadObjectOfClass:objc_opt_class()])
    {
      v20 = objc_opt_class();
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __82__SFAddToHomeScreenViewController_initWithAddToHomeScreenActivityItem_completion___block_invoke_16;
      v24[3] = &unk_1E8493A08;
      v25 = itemCopy;
      v26 = v16;
      v21 = [iconItemProvider loadObjectOfClass:v20 completionHandler:v24];
    }
  }

  v22 = v16;

LABEL_14:
  return v8;
}

uint64_t __82__SFAddToHomeScreenViewController_initWithAddToHomeScreenActivityItem_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(*(a1 + 32) + 1008) didFetchManifestData:a2];
  v3 = *(*(a1 + 32) + 1008);

  return [v3 didFetchWebClipMetadata:0];
}

void __82__SFAddToHomeScreenViewController_initWithAddToHomeScreenActivityItem_completion___block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__SFAddToHomeScreenViewController_initWithAddToHomeScreenActivityItem_completion___block_invoke_3;
  block[3] = &unk_1E8493968;
  v12 = v3;
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  *&v8 = v6;
  *(&v8 + 1) = v7;
  *&v9 = v4;
  *(&v9 + 1) = v5;
  v13 = v9;
  v14 = v8;
  v10 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __82__SFAddToHomeScreenViewController_initWithAddToHomeScreenActivityItem_completion___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) manifest];

  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x1E69853C0]);
    v4 = [*(a1 + 32) manifest];
    v5 = [v4 jsonData];
    v6 = [*(a1 + 32) manifest];
    v7 = [v6 manifestURL];
    v8 = [*(a1 + 40) URL];
    v9 = [v3 initWithJSONData:v5 manifestURL:v7 documentURL:v8];

    if (v9)
    {
      [*(a1 + 48) setObject:v9 forKeyedSubscript:@"Manifest"];
      v10 = [*(a1 + 32) websiteCookies];

      if (v10)
      {
        v11 = [*(a1 + 32) websiteCookies];
        v12 = *(a1 + 56);
        v13 = *(v12 + 1072);
        *(v12 + 1072) = v11;

        [*(a1 + 56) _copyCurrentCookiesToStagingDirectory];
LABEL_12:

        return (*(*(a1 + 64) + 16))();
      }

      v15 = WBS_LOG_CHANNEL_PREFIXWebApp();
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_12;
      }

      *buf = 0;
      v16 = "Website cookies not provided.";
      v17 = buf;
    }

    else
    {
      v15 = WBS_LOG_CHANNEL_PREFIXWebApp();
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_12;
      }

      v20 = 0;
      v16 = "Could not create _WKApplicationManifest.";
      v17 = &v20;
    }

    _os_log_impl(&dword_1D4644000, v15, OS_LOG_TYPE_DEFAULT, v16, v17, 2u);
    goto LABEL_12;
  }

  v14 = WBS_LOG_CHANNEL_PREFIXWebApp();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *v19 = 0;
    _os_log_impl(&dword_1D4644000, v14, OS_LOG_TYPE_DEFAULT, "SFAddToHomeScreenInfo or BEWebAppManifest was nil. Cannot apply to web clip.", v19, 2u);
  }

  return (*(*(a1 + 64) + 16))();
}

void __82__SFAddToHomeScreenViewController_initWithAddToHomeScreenActivityItem_completion___block_invoke_10(id *a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __82__SFAddToHomeScreenViewController_initWithAddToHomeScreenActivityItem_completion___block_invoke_2_11;
  v5[3] = &unk_1E84939B8;
  v6 = v3;
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

uint64_t __82__SFAddToHomeScreenViewController_initWithAddToHomeScreenActivityItem_completion___block_invoke_2_11(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = objc_alloc(MEMORY[0x1E69853C0]);
    v3 = [*(a1 + 32) jsonData];
    v4 = [*(a1 + 32) manifestURL];
    v5 = [*(a1 + 40) URL];
    v6 = [v2 initWithJSONData:v3 manifestURL:v4 documentURL:v5];

    if (v6)
    {
      [*(a1 + 48) setObject:v6 forKeyedSubscript:@"Manifest"];
    }

    else
    {
      v8 = WBS_LOG_CHANNEL_PREFIXWebApp();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1D4644000, v8, OS_LOG_TYPE_DEFAULT, "Could not create _WKApplicationManifest.", buf, 2u);
      }
    }
  }

  else
  {
    v7 = WBS_LOG_CHANNEL_PREFIXWebApp();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1D4644000, v7, OS_LOG_TYPE_DEFAULT, "BEWebAppManifest was nil. Cannot apply to web clip.", v10, 2u);
    }
  }

  return (*(*(a1 + 56) + 16))();
}

void __82__SFAddToHomeScreenViewController_initWithAddToHomeScreenActivityItem_completion___block_invoke_16(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    [*(*(a1 + 40) + 1008) didReceiveWebClipIcon:v5];
  }

  else if (v6)
  {
    v8 = WBS_LOG_CHANNEL_PREFIXWebApp();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __82__SFAddToHomeScreenViewController_initWithAddToHomeScreenActivityItem_completion___block_invoke_16_cold_1(a1, v8, v7);
    }
  }
}

- (id)_stagedCookiesDirectoryURL
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  temporaryDirectory = [defaultManager temporaryDirectory];
  v4 = [temporaryDirectory URLByAppendingPathComponent:@"StagedCookies"];

  return v4;
}

- (void)_removeStageCookiesDirectoryIfNeeded
{
  v4 = a2;
  safari_privacyPreservingDescription = [a3 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_4(&dword_1D4644000, v6, v7, "Failed to clean up staged cookies, URL: %@, error: %{public}@", v8, v9, v10, v11, v12);
}

- (id)_issueReadOnlySandboxExtensionForURL:(id)l
{
  [l fileSystemRepresentation];
  v3 = sandbox_extension_issue_file();
  if (v3)
  {
    v4 = v3;
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v3];
    free(v4);
  }

  else
  {
    v6 = WBS_LOG_CHANNEL_PREFIXWebApp();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SFAddToHomeScreenViewController _issueReadOnlySandboxExtensionForURL:v6];
    }

    v5 = 0;
  }

  return v5;
}

- (void)_copyCurrentCookiesToStagingDirectory
{
  [(SFAddToHomeScreenViewController *)self _removeStageCookiesDirectoryIfNeeded];
  _stagedCookiesDirectoryURL = [(SFAddToHomeScreenViewController *)self _stagedCookiesDirectoryURL];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __72__SFAddToHomeScreenViewController__copyCurrentCookiesToStagingDirectory__block_invoke;
  v15 = &unk_1E848FCC0;
  selfCopy = self;
  v4 = _stagedCookiesDirectoryURL;
  v17 = v4;
  v5 = _Block_copy(&v12);
  if (self->_webView)
  {
    mEMORY[0x1E69C9790] = [MEMORY[0x1E69C9790] sharedController];
    [mEMORY[0x1E69C9790] copyCookiesFromWebView:self->_webView intoFolderAtURL:v4 completionHandler:v5];
  }

  else if (self->_cookies)
  {
    mEMORY[0x1E69C9790]2 = [MEMORY[0x1E69C9790] sharedController];
    cookies = self->_cookies;
    host = [(NSURL *)self->_initialURL host];
    safari_highLevelDomainFromHost = [host safari_highLevelDomainFromHost];
    v11 = [mEMORY[0x1E69C9790]2 copyCookiesFromArray:cookies matchingDomain:safari_highLevelDomainFromHost intoFolderAtURL:v4];

    v5[2](v5, v11);
  }
}

void __72__SFAddToHomeScreenViewController__copyCurrentCookiesToStagingDirectory__block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) _issueReadOnlySandboxExtensionForURL:*(a1 + 40)];
    if (v3)
    {
      v8 = v3;
      v4 = [MEMORY[0x1E696AAE8] safari_isSafariViewServiceBundle];
      v6 = *(a1 + 32);
      v5 = *(a1 + 40);
      if (v4)
      {
        [*(v6 + 1056) updateWithStagedCookiesDirectoryURL:v5 sandboxExtensionToken:v8];
      }

      else
      {
        [*(v6 + 1008) didCopyStagedCookiesToURL:v5 sandboxExtensionToken:v8];
      }

      v3 = v8;
    }
  }

  else
  {
    v7 = WBS_LOG_CHANNEL_PREFIXWebApp();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __72__SFAddToHomeScreenViewController__copyCurrentCookiesToStagingDirectory__block_invoke_cold_1(v7);
    }
  }
}

- (void)_fetchWebClipMetadataViaJavaScript
{
  v3 = +[_SFWebClipMetadataFetcher metadataFetcherScriptSource];
  v4 = [v3 stringByAppendingString:@"return WebClipMetadataFinderJS.webClipMetadata()"];;

  webView = self->_webView;
  v6 = [MEMORY[0x1E6985318] worldWithName:@"WebClipMetadataFetcherWorld"];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__SFAddToHomeScreenViewController__fetchWebClipMetadataViaJavaScript__block_invoke;
  v7[3] = &unk_1E8493A30;
  v7[4] = self;
  [(WKWebView *)webView callAsyncJavaScript:v4 arguments:0 inFrame:0 inContentWorld:v6 completionHandler:v7];
}

void __69__SFAddToHomeScreenViewController__fetchWebClipMetadataViaJavaScript__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = WBS_LOG_CHANNEL_PREFIXViewService();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __69__SFAddToHomeScreenViewController__fetchWebClipMetadataViaJavaScript__block_invoke_cold_1(v7, v8);
    }

    v9 = [MEMORY[0x1E696AAE8] safari_isSafariViewServiceBundle];
    v10 = *(a1 + 32);
    if (v9)
    {
      [*(v10 + 1056) updateWithWebClipMetadata:MEMORY[0x1E695E0F8]];
    }

    else
    {
      [*(v10 + 1008) didFetchWebClipMetadata:0];
    }
  }

  else
  {
    objc_storeStrong((*(a1 + 32) + 1040), a2);
    v11 = objc_opt_new();
    v12 = v11;
    v13 = *(*(a1 + 32) + 1040);
    if (v13)
    {
      [v11 setObject:v13 forKeyedSubscript:@"MetaAndLinkTags"];
    }

    v14 = [MEMORY[0x1E696AAE8] safari_isSafariViewServiceBundle];
    v15 = *(a1 + 32);
    if (v14)
    {
      [*(v15 + 1056) updateWithWebClipMetadata:v12];
    }

    else
    {
      [*(v15 + 1008) didFetchWebClipMetadata:v12];
    }

    [*(a1 + 32) _copyCurrentCookiesToStagingDirectory];
  }
}

- (void)loadView
{
  v3.receiver = self;
  v3.super_class = SFAddToHomeScreenViewController;
  [(SFAddToHomeScreenViewController *)&v3 loadView];
  [(SFAddToHomeScreenViewController *)self _addPlaceholderView];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = SFAddToHomeScreenViewController;
  [(SFAddToHomeScreenViewController *)&v5 viewDidLoad];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  view = [(SFAddToHomeScreenViewController *)self view];
  [view setBackgroundColor:systemBackgroundColor];
}

- (void)_initializeViewService
{
  if (!self->_serviceProxy)
  {
    v3 = [[SFQueueingServiceViewControllerProxy alloc] initWithProtocol:&unk_1F50B2200];
    serviceProxy = self->_serviceProxy;
    self->_serviceProxy = v3;

    [(SFAddToHomeScreenServiceProtocol *)self->_serviceProxy setDelegate:self];

    [(SFAddToHomeScreenViewController *)self _connectToService];
  }
}

- (void)_connectToService
{
  invoke = [(_UIAsyncInvocation *)self->_cancelViewServiceRequest invoke];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__SFAddToHomeScreenViewController__connectToService__block_invoke;
  v6[3] = &unk_1E8492C38;
  v6[4] = self;
  v4 = [SFAddToHomeScreenRemoteViewController requestViewControllerWithConnectionHandler:v6];
  cancelViewServiceRequest = self->_cancelViewServiceRequest;
  self->_cancelViewServiceRequest = v4;
}

void __52__SFAddToHomeScreenViewController__connectToService__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 1000);
  *(v7 + 1000) = 0;

  if (v5)
  {
    [*(a1 + 32) _didLoadRemoteViewController:v5];
  }

  else
  {
    v9 = WBS_LOG_CHANNEL_PREFIXViewService();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __52__SFAddToHomeScreenViewController__connectToService__block_invoke_cold_1(v6, v9);
    }
  }
}

- (id)serviceProxy
{
  [(SFAddToHomeScreenViewController *)self _initializeViewService];
  serviceProxy = self->_serviceProxy;

  return serviceProxy;
}

- (void)_didLoadRemoteViewController:(id)controller
{
  controllerCopy = controller;
  objc_storeStrong(&self->_remoteViewController, controller);
  serviceViewControllerProxy = [controllerCopy serviceViewControllerProxy];
  [(SFAddToHomeScreenServiceProtocol *)self->_serviceProxy setTarget:serviceViewControllerProxy];

  [controllerCopy setDelegate:self];
  if ([MEMORY[0x1E696AAE8] safari_isSafariViewServiceBundle])
  {
    [(SFAddToHomeScreenViewController *)self _addRemoteViewControllerIfNeeded];
  }

  else
  {
    serviceProxy = self->_serviceProxy;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __64__SFAddToHomeScreenViewController__didLoadRemoteViewController___block_invoke;
    v8[3] = &unk_1E848F810;
    v8[4] = self;
    [(SFAddToHomeScreenServiceProtocol *)serviceProxy prepareForDisplayWithCompletionHandler:v8];
  }
}

- (void)_addRemoteViewControllerIfNeeded
{
  [(SFAddToHomeScreenViewController *)self _removePlaceholderView];
  [(SFAddToHomeScreenViewController *)self addChildViewController:self->_remoteViewController];
  view = [(SFAddToHomeScreenRemoteViewController *)self->_remoteViewController view];
  view2 = [(SFAddToHomeScreenViewController *)self view];
  [view2 addSubview:view];

  view3 = [(SFAddToHomeScreenViewController *)self view];
  [view3 bounds];
  [view setFrame:?];

  [view setAutoresizingMask:18];
  [(_UIRemoteViewController *)self->_remoteViewController didMoveToParentViewController:self];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  view4 = [(SFAddToHomeScreenViewController *)self view];
  [view4 setBackgroundColor:clearColor];
}

- (void)_addPlaceholderView
{
  v3 = objc_alloc(MEMORY[0x1E69DCCD8]);
  v4 = objc_alloc_init(SFWebClipPlaceholderViewController);
  v5 = [v3 initWithRootViewController:v4];
  wrappingPlaceholderNavigationController = self->_wrappingPlaceholderNavigationController;
  self->_wrappingPlaceholderNavigationController = v5;

  [(SFAddToHomeScreenViewController *)self addChildViewController:self->_wrappingPlaceholderNavigationController];
  view = [(SFAddToHomeScreenViewController *)self view];
  view2 = [(UINavigationController *)self->_wrappingPlaceholderNavigationController view];
  [view addSubview:view2];
  [view bounds];
  [view2 setFrame:?];
  [view2 setAutoresizingMask:18];
  [(UINavigationController *)self->_wrappingPlaceholderNavigationController didMoveToParentViewController:self];
}

- (void)_removePlaceholderView
{
  wrappingPlaceholderNavigationController = self->_wrappingPlaceholderNavigationController;
  if (wrappingPlaceholderNavigationController)
  {
    [(UINavigationController *)wrappingPlaceholderNavigationController willMoveToParentViewController:0];
    view = [(UINavigationController *)self->_wrappingPlaceholderNavigationController view];
    [view removeFromSuperview];

    [(UINavigationController *)self->_wrappingPlaceholderNavigationController removeFromParentViewController];
    v5 = self->_wrappingPlaceholderNavigationController;
    self->_wrappingPlaceholderNavigationController = 0;
  }
}

- (void)serviceProxyWillQueueInvocation:(id)invocation
{
  if (!self->_cancelViewServiceRequest)
  {
    [(SFAddToHomeScreenViewController *)self _connectToService];
  }
}

- (void)remoteViewController:(id)controller didFinishWithResult:(BOOL)result
{
  resultCopy = result;
  [(SFAddToHomeScreenViewController *)self _removeStageCookiesDirectoryIfNeeded];
  if (resultCopy)
  {
    [*MEMORY[0x1E69DDA98] suspend];
  }

  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    v7 = *(completionHandler + 2);

    v7();
  }
}

- (NSString)trustedClientBundleIdentifier
{
  if ([MEMORY[0x1E696AAE8] safari_isSafariViewServiceBundle])
  {
    return @"com.apple.mobilesafari";
  }

  else
  {
    return 0;
  }
}

- (void)dataProvider:(id)provider didFinishWithResult:(BOOL)result
{
  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    completionHandler[2](completionHandler, result);
  }
}

void __82__SFAddToHomeScreenViewController_initWithAddToHomeScreenActivityItem_completion___block_invoke_16_cold_1(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 URL];
  v7 = [a3 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_4(&dword_1D4644000, v8, v9, "Failed to receive icon, URL: %{sensitive}@, error: %{public}@", v10, v11, v12, v13, v14);
}

- (void)_issueReadOnlySandboxExtensionForURL:(void *)a1 .cold.1(void *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = *__error();
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_error_impl(&dword_1D4644000, v1, OS_LOG_TYPE_ERROR, "Failed to issue sandbox extension token for copying cookies, errno = %d", v3, 8u);
}

void __69__SFAddToHomeScreenViewController__fetchWebClipMetadataViaJavaScript__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138477827;
  v3 = a1;
  _os_log_error_impl(&dword_1D4644000, a2, OS_LOG_TYPE_ERROR, "Failed to get remote view controller with error: %{private}@", &v2, 0xCu);
}

void __52__SFAddToHomeScreenViewController__connectToService__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1D4644000, a2, OS_LOG_TYPE_ERROR, "Failed to get remote view controller with error: %{public}@", &v2, 0xCu);
}

@end