@interface ATXSuggestedPagesClient
+ (id)tapToRadarURLForModeName:(id)name;
- (ATXSuggestedPagesClient)init;
- (BOOL)allowsSuggestionsForModeUUID:(id)d;
- (void)_createInstalledPagesTrackerIfNeeded;
- (void)didAddAppsWithBundleIds:(id)ids suggestedPage:(id)page;
- (void)didInstallSuggestedPage:(id)page;
- (void)didRemoveAppsWithBundleIds:(id)ids suggestedPage:(id)page;
- (void)sendModificationMetricsToCoreAnalyticsWithBundleIds:(id)ids suggestedPage:(id)page isAdded:(BOOL)added;
- (void)suggestedPagesWithFilter:(id)filter layoutOptions:(id)options completionHandler:(id)handler;
- (void)updateSuggestedPagesWithCompletionHandler:(id)handler;
@end

@implementation ATXSuggestedPagesClient

- (ATXSuggestedPagesClient)init
{
  v11.receiver = self;
  v11.super_class = ATXSuggestedPagesClient;
  v2 = [(ATXSuggestedPagesClient *)&v11 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.proactive.SuggestedPages" options:0];
    xpcConnection = v2->_xpcConnection;
    v2->_xpcConnection = v3;

    v5 = v2->_xpcConnection;
    v6 = ATXSuggestedPagesInterface();
    [(NSXPCConnection *)v5 setRemoteObjectInterface:v6];

    [(NSXPCConnection *)v2->_xpcConnection setInterruptionHandler:&__block_literal_global_7];
    [(NSXPCConnection *)v2->_xpcConnection setInvalidationHandler:&__block_literal_global_10];
    [(NSXPCConnection *)v2->_xpcConnection resume];
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("ATXSuggestedPagesClient.queue", v7);
    queue = v2->_queue;
    v2->_queue = v8;
  }

  return v2;
}

void __31__ATXSuggestedPagesClient_init__block_invoke()
{
  v0 = __atxlog_handle_modes();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __31__ATXSuggestedPagesClient_init__block_invoke_cold_1(v0);
  }
}

void __31__ATXSuggestedPagesClient_init__block_invoke_8()
{
  v0 = __atxlog_handle_modes();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_1BF549000, v0, OS_LOG_TYPE_INFO, "ATXSuggestedPagesClient: invalidation handler called", v1, 2u);
  }
}

- (void)suggestedPagesWithFilter:(id)filter layoutOptions:(id)options completionHandler:(id)handler
{
  filterCopy = filter;
  optionsCopy = options;
  handlerCopy = handler;
  v11 = dispatch_get_global_queue(25, 0);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __84__ATXSuggestedPagesClient_suggestedPagesWithFilter_layoutOptions_completionHandler___block_invoke;
  v15[3] = &unk_1E80C1468;
  v16 = filterCopy;
  selfCopy = self;
  v18 = optionsCopy;
  v19 = handlerCopy;
  v12 = optionsCopy;
  v13 = handlerCopy;
  v14 = filterCopy;
  dispatch_async(v11, v15);
}

void __84__ATXSuggestedPagesClient_suggestedPagesWithFilter_layoutOptions_completionHandler___block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [v2 cachedSuggestedPagesForPageType:{objc_msgSend(*(a1 + 32), "pageType")}];
  if ([v3 count])
  {
    v4 = __atxlog_handle_modes();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BF549000, v4, OS_LOG_TYPE_DEFAULT, "ATXSuggestedPagesClient: Shortcircuiting call to duetexpertd and returning cached pages", buf, 2u);
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v5 = *(*(a1 + 40) + 8);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __84__ATXSuggestedPagesClient_suggestedPagesWithFilter_layoutOptions_completionHandler___block_invoke_13;
    v7[3] = &unk_1E80C08E0;
    v8 = *(a1 + 56);
    v6 = [v5 remoteObjectProxyWithErrorHandler:v7];
    [v6 suggestedPagesWithFilter:*(a1 + 32) layoutOptions:*(a1 + 48) completionHandler:*(a1 + 56)];
  }
}

void __84__ATXSuggestedPagesClient_suggestedPagesWithFilter_layoutOptions_completionHandler___block_invoke_13(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_modes();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __84__ATXSuggestedPagesClient_suggestedPagesWithFilter_layoutOptions_completionHandler___block_invoke_13_cold_1(v3, v4);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)updateSuggestedPagesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  xpcConnection = self->_xpcConnection;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __69__ATXSuggestedPagesClient_updateSuggestedPagesWithCompletionHandler___block_invoke;
  v8[3] = &unk_1E80C08E0;
  v9 = handlerCopy;
  v6 = handlerCopy;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 updateSuggestedPagesWithCompletionHandler:v6];
}

- (BOOL)allowsSuggestionsForModeUUID:(id)d
{
  dCopy = d;
  [(ATXSuggestedPagesClient *)self _createInstalledPagesTrackerIfNeeded];
  v5 = objc_alloc_init(ATXHomeScreenConfigCache);
  v6 = [(ATXHomeScreenConfigCache *)v5 loadHomeScreenPageConfigurationsIncludingHidden:1 error:0];
  if ([v6 count] == 15)
  {
    v7 = __atxlog_handle_modes();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BF549000, v7, OS_LOG_TYPE_DEFAULT, "Not allowing suggested pages; the user is already at the page limit", buf, 2u);
    }

    v8 = 0;
  }

  else
  {
    v7 = [(ATXInstalledSuggestedPagesTracker *)self->_tracker identifierOfSuggestedPageForModeUUID:dCopy];
    if ([v7 length])
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __56__ATXSuggestedPagesClient_allowsSuggestionsForModeUUID___block_invoke;
      v13[3] = &unk_1E80C1490;
      v7 = v7;
      v14 = v7;
      v9 = [v6 bs_firstObjectPassingTest:v13];
      v10 = v9;
      if (v9)
      {
        associatedModeUUIDs = [v9 associatedModeUUIDs];
        v8 = [associatedModeUUIDs count] == 0;
      }

      else
      {
        v8 = 1;
      }
    }

    else
    {
      v8 = 1;
    }
  }

  return v8;
}

uint64_t __56__ATXSuggestedPagesClient_allowsSuggestionsForModeUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)didInstallSuggestedPage:(id)page
{
  pageCopy = page;
  uniqueIdentifier = [pageCopy uniqueIdentifier];
  v6 = [uniqueIdentifier length];

  if (v6)
  {
    [(ATXSuggestedPagesClient *)self _createInstalledPagesTrackerIfNeeded];
    tracker = self->_tracker;
    uniqueIdentifier2 = [pageCopy uniqueIdentifier];
    associatedModeUUIDs = [pageCopy associatedModeUUIDs];
    anyObject = [associatedModeUUIDs anyObject];
    -[ATXInstalledSuggestedPagesTracker storePageIdentifier:modeUUID:forPageType:](tracker, "storePageIdentifier:modeUUID:forPageType:", uniqueIdentifier2, anyObject, [pageCopy suggestedPageType]);
  }

  else
  {
    v11 = __atxlog_handle_modes();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [ATXSuggestedPagesClient didInstallSuggestedPage:v11];
    }
  }
}

- (void)didAddAppsWithBundleIds:(id)ids suggestedPage:(id)page
{
  tracker = self->_tracker;
  pageCopy = page;
  idsCopy = ids;
  suggestedPageType = [pageCopy suggestedPageType];
  uniqueIdentifier = [pageCopy uniqueIdentifier];
  [(ATXInstalledSuggestedPagesTracker *)tracker trackSuggestedHomePageWithAction:2 pageType:suggestedPageType identifier:uniqueIdentifier];

  [(ATXSuggestedPagesClient *)self sendModificationMetricsToCoreAnalyticsWithBundleIds:idsCopy suggestedPage:pageCopy isAdded:1];
}

- (void)didRemoveAppsWithBundleIds:(id)ids suggestedPage:(id)page
{
  tracker = self->_tracker;
  pageCopy = page;
  idsCopy = ids;
  suggestedPageType = [pageCopy suggestedPageType];
  uniqueIdentifier = [pageCopy uniqueIdentifier];
  [(ATXInstalledSuggestedPagesTracker *)tracker trackSuggestedHomePageWithAction:2 pageType:suggestedPageType identifier:uniqueIdentifier];

  [(ATXSuggestedPagesClient *)self sendModificationMetricsToCoreAnalyticsWithBundleIds:idsCopy suggestedPage:pageCopy isAdded:0];
}

- (void)sendModificationMetricsToCoreAnalyticsWithBundleIds:(id)ids suggestedPage:(id)page isAdded:(BOOL)added
{
  idsCopy = ids;
  pageCopy = page;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __101__ATXSuggestedPagesClient_sendModificationMetricsToCoreAnalyticsWithBundleIds_suggestedPage_isAdded___block_invoke;
  block[3] = &unk_1E80C14B8;
  v14 = idsCopy;
  v15 = pageCopy;
  addedCopy = added;
  v11 = pageCopy;
  v12 = idsCopy;
  dispatch_async(queue, block);
}

void __101__ATXSuggestedPagesClient_sendModificationMetricsToCoreAnalyticsWithBundleIds_suggestedPage_isAdded___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v12;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v11 + 1) + 8 * i);
        v7 = objc_opt_new();
        [v7 setSource:0];
        v8 = NSStringFromATXSuggestedPageType([*(a1 + 40) suggestedPageType]);
        [v7 setSuggestedPageType:v8];

        if (*(a1 + 48))
        {
          v9 = @"AppAdded";
        }

        else
        {
          v9 = @"AppRemoved";
        }

        [v7 setEventType:v9];
        [v7 setAppBundleId:v6];
        [v7 logToCoreAnalytics];
      }

      v3 = [obj countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v3);
  }
}

- (void)_createInstalledPagesTrackerIfNeeded
{
  if (!self->_tracker)
  {
    v4 = objc_alloc_init(ATXInstalledSuggestedPagesTracker);
    tracker = self->_tracker;
    self->_tracker = v4;

    MEMORY[0x1EEE66BB8](v4, tracker);
  }
}

+ (id)tapToRadarURLForModeName:(id)name
{
  nameCopy = name;
  currentOsBuild = [MEMORY[0x1E69C5D08] currentOsBuild];
  internalDeviceCode = [MEMORY[0x1E69C5CF8] internalDeviceCode];
  v6 = objc_alloc(MEMORY[0x1E696AEC0]);
  if (internalDeviceCode)
  {
    v7 = currentOsBuild == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    nameCopy = [v6 initWithFormat:@"💬 %@ Page Suggestion Feedback", nameCopy, v18, v19];
  }

  else
  {
    nameCopy = [v6 initWithFormat:@"💬 %@/%@: %@ Page Suggestion Feedback", internalDeviceCode, currentOsBuild, nameCopy];
  }

  v9 = nameCopy;
  uRLQueryAllowedCharacterSet = [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
  v11 = [v9 stringByAddingPercentEncodingWithAllowedCharacters:uRLQueryAllowedCharacterSet];

  nameCopy2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"= = = Provide %@ Suggestion Feedback = = =\n\nAre there any apps or widgets that are missing that you would expect to see? If so, which ones?\n- - - - - - - - - - - - - - - - - - - - - - - - - - - -\n\n\nAre there any apps or widgets that should not be there? If so, which ones?\n- - - - - - - - - - - - - - - - - - - - - - - - - - - -\n\n\nAdditional Notes\n- - - - - - - - - - - - - - - - - - - - - - - - - - - -\n\n", nameCopy];
  uRLQueryAllowedCharacterSet2 = [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
  v14 = [nameCopy2 stringByAddingPercentEncodingWithAllowedCharacters:uRLQueryAllowedCharacterSet2];

  v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"tap-to-radar://new?ComponentID=1153724&ComponentName=Proactive%%20Mode%%20Intelligence&ComponentVersion=All&Classification=Enhancement&Reproducibility=Not%%20Applicable&Title=%@&Description=%@", v11, v14];
  v16 = [MEMORY[0x1E695DFF8] URLWithString:v15];

  return v16;
}

void __84__ATXSuggestedPagesClient_suggestedPagesWithFilter_layoutOptions_completionHandler___block_invoke_13_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1BF549000, a2, OS_LOG_TYPE_ERROR, "ATXSuggestedPagesClient: XPC failed: %@", &v2, 0xCu);
}

@end