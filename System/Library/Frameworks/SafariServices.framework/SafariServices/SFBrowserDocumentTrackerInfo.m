@interface SFBrowserDocumentTrackerInfo
+ (BOOL)trackingPreventionEnabled;
- (SFBrowserDocumentTrackerInfo)initWithDocument:(id)a3;
- (_SFBrowserDocument)document;
- (void)_flushKnownTrackingThirdParties;
- (void)_resetKnownTrackingThirdParties;
- (void)_updateKnownTrackingThirdPartiesWithCompletionHandler:(id)a3;
- (void)dealloc;
- (void)documentDidCommitNavigation;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)updateKnownTrackingThirdPartiesWithCompletionHandler:(id)a3;
@end

@implementation SFBrowserDocumentTrackerInfo

- (SFBrowserDocumentTrackerInfo)initWithDocument:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SFBrowserDocumentTrackerInfo;
  v5 = [(SFBrowserDocumentTrackerInfo *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_document, v4);
    v6->_cachedTrackingPreventionEnabled = +[SFBrowserDocumentTrackerInfo trackingPreventionEnabled];
    v7 = objc_alloc_init(MEMORY[0x1E69C8FF0]);
    queryParameterFilteringDataQueue = v6->_queryParameterFilteringDataQueue;
    v6->_queryParameterFilteringDataQueue = v7;

    [(SFBrowserDocumentTrackerInfo *)v6 _resetKnownTrackingThirdParties];
    v9 = [MEMORY[0x1E695E000] webui_defaults];
    [v9 addObserver:v6 forKeyPath:*MEMORY[0x1E69E30E0] options:0 context:kvoContext];

    v10 = v6;
  }

  return v6;
}

+ (BOOL)trackingPreventionEnabled
{
  v2 = [MEMORY[0x1E695AC00] sharedHTTPCookieStorage];
  v3 = [v2 webui_trackerProtectionEnabled];

  return v3;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E695E000] webui_defaults];
  [v3 removeObserver:self forKeyPath:*MEMORY[0x1E69E30E0] context:kvoContext];

  v4.receiver = self;
  v4.super_class = SFBrowserDocumentTrackerInfo;
  [(SFBrowserDocumentTrackerInfo *)&v4 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (kvoContext == a6 && [v10 isEqualToString:*MEMORY[0x1E69E30E0]])
  {
    [(SFBrowserDocumentTrackerInfo *)self _flushKnownTrackingThirdParties];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SFBrowserDocumentTrackerInfo;
    [(SFBrowserDocumentTrackerInfo *)&v13 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (void)updateKnownTrackingThirdPartiesWithCompletionHandler:(id)a3
{
  v4 = a3;
  self->_cachedTrackingPreventionEnabled = +[SFBrowserDocumentTrackerInfo trackingPreventionEnabled];
  [(SFBrowserDocumentTrackerInfo *)self _updateKnownTrackingThirdPartiesWithCompletionHandler:v4];
}

- (void)documentDidCommitNavigation
{
  v3 = [MEMORY[0x1E695DF00] date];
  lastNavigationCommitDate = self->_lastNavigationCommitDate;
  self->_lastNavigationCommitDate = v3;

  [(SFBrowserDocumentTrackerInfo *)self _resetKnownTrackingThirdParties];
  queryParameterFilteringDataQueue = self->_queryParameterFilteringDataQueue;

  [(WBSQueryParameterFilteringDataQueue *)queryParameterFilteringDataQueue commitPendingData];
}

- (void)_updateKnownTrackingThirdPartiesWithCompletionHandler:(id)a3
{
  v4 = a3;
  cachedTrackingPreventionEnabled = self->_cachedTrackingPreventionEnabled;
  v6 = MEMORY[0x1E69C9810];
  WeakRetained = objc_loadWeakRetained(&self->_document);
  v8 = [WeakRetained webView];
  lastNavigationCommitDate = self->_lastNavigationCommitDate;
  v10 = [MEMORY[0x1E695DF00] distantFuture];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __86__SFBrowserDocumentTrackerInfo__updateKnownTrackingThirdPartiesWithCompletionHandler___block_invoke;
  v12[3] = &unk_1E8490F40;
  v14 = cachedTrackingPreventionEnabled;
  v12[4] = self;
  v13 = v4;
  v11 = v4;
  [v6 getKnownTrackingDomainsForWebView:v8 after:lastNavigationCommitDate before:v10 completionHandler:v12];
}

void __86__SFBrowserDocumentTrackerInfo__updateKnownTrackingThirdPartiesWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = a2;
  v5 = *(a1 + 32);
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((v5 + 24));
  v8 = [WeakRetained privacyReportShouldSeparateBlockedTrackers];

  if (v8)
  {
    v9 = 40;
  }

  else
  {
    v9 = 48;
  }

  v10 = [*(*(a1 + 32) + v9) setByAddingObjectsFromArray:v6];

  v11 = *(a1 + 32);
  v12 = *(v11 + v9);
  *(v11 + v9) = v10;

  if (*(a1 + 48))
  {
    v13 = 48;
  }

  else
  {
    v13 = 32;
  }

  v14 = [*(*(a1 + 32) + v13) setByAddingObjectsFromArray:v17];
  v15 = *(a1 + 32);
  v16 = *(v15 + v13);
  *(v15 + v13) = v14;

  (*(*(a1 + 40) + 16))();
}

- (void)_resetKnownTrackingThirdParties
{
  v3 = [MEMORY[0x1E695DFD8] set];
  allowedKnownTrackingThirdParties = self->_allowedKnownTrackingThirdParties;
  self->_allowedKnownTrackingThirdParties = v3;

  v5 = [MEMORY[0x1E695DFD8] set];
  blockedKnownTrackingThirdParties = self->_blockedKnownTrackingThirdParties;
  self->_blockedKnownTrackingThirdParties = v5;

  v7 = [MEMORY[0x1E695DFD8] set];
  preventedKnownTrackingThirdParties = self->_preventedKnownTrackingThirdParties;
  self->_preventedKnownTrackingThirdParties = v7;
}

- (void)_flushKnownTrackingThirdParties
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __63__SFBrowserDocumentTrackerInfo__flushKnownTrackingThirdParties__block_invoke;
  v3[3] = &unk_1E848F810;
  v3[4] = self;
  [(SFBrowserDocumentTrackerInfo *)self _updateKnownTrackingThirdPartiesWithCompletionHandler:v3];
  self->_cachedTrackingPreventionEnabled = +[SFBrowserDocumentTrackerInfo trackingPreventionEnabled];
}

void __63__SFBrowserDocumentTrackerInfo__flushKnownTrackingThirdParties__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__SFBrowserDocumentTrackerInfo__flushKnownTrackingThirdParties__block_invoke_2;
  block[3] = &unk_1E848F810;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __63__SFBrowserDocumentTrackerInfo__flushKnownTrackingThirdParties__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  v5 = [WeakRetained webView];

  v2 = v5;
  if (v5)
  {
    v3 = [v5 configuration];
    v4 = [v3 websiteDataStore];

    if (objc_opt_respondsToSelector())
    {
      [v4 _clearLoadedSubresourceDomainsFor:v5];
    }

    else if (objc_opt_respondsToSelector())
    {
      [v4 _clearLoadedThirdPartyDomainsFor:v5];
    }

    v2 = v5;
  }
}

- (_SFBrowserDocument)document
{
  WeakRetained = objc_loadWeakRetained(&self->_document);

  return WeakRetained;
}

@end