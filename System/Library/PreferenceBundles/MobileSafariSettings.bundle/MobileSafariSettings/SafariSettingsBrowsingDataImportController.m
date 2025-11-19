@interface SafariSettingsBrowsingDataImportController
- (SafariSettingsBrowsingDataImportController)init;
- (id)_getComposedIdentifiersOfExtensionsDownloadedFromLockupViewsFromListOfExtensions:(id)a3 extensionsController:(id)a4;
- (void)_computeNumberOfBookmarksToBeImportedFromURL:(id)a3 completionHandler:(id)a4;
- (void)_computeNumberOfChromeExtensionsToBeImportedFromURL:(id)a3 completionHandler:(id)a4;
- (void)_computeNumberOfChromeHistorySitesToBeImportedFromURL:(id)a3 completionHandler:(id)a4;
- (void)_computeNumberOfCreditCardsToBeImportedFromURL:(id)a3 completionHandler:(id)a4;
- (void)_computeNumberOfExtensionsToBeImportedFromURL:(id)a3 completionHandler:(id)a4;
- (void)_computeNumberOfHistorySitesToBeImportedFromURL:(id)a3 completionHandler:(id)a4;
- (void)_generateLockupViewsForAvailableAppsWithWebBookmarksSettingsGateway:(id)a3 completionHandler:(id)a4;
- (void)_importBookmarksFromURL:(id)a3 completionHandler:(id)a4;
- (void)_importChromeExtensionsFromURL:(id)a3 completionHandler:(id)a4;
- (void)_importChromeHistoryFromURL:(id)a3 completionHandler:(id)a4;
- (void)_importCreditCardsFromURL:(id)a3 completionHandler:(id)a4;
- (void)_importExtensionsFromURL:(id)a3 completionHandler:(id)a4;
- (void)_importHistoryFromURL:(id)a3 completionHandler:(id)a4;
- (void)_postExtensionsChangedNotification;
- (void)_recomputeFrequentlyVisitedSites;
- (void)_scanImportURLs:(id)a3 sandboxExtensions:(id)a4 completionHandler:(id)a5;
- (void)contentBlockerManagerExtensionListDidChange:(id)a3;
- (void)dealloc;
- (void)enableExtensionWithComposedIdentifier:(id)a3 adamIdentifier:(id)a4 alternatePlatformAppBundleIdentifier:(id)a5 alternatePlatformExtensionBundleIdentifier:(id)a6;
- (void)extensionsControllerExtensionListDidChange:(id)a3;
- (void)importCreditCardDataWithCardNumber:(id)a3 cardName:(id)a4 cardholderName:(id)a5 cardExpirationMonth:(id)a6 cardExpirationYear:(id)a7 lastUsedDate:(id)a8;
@end

@implementation SafariSettingsBrowsingDataImportController

- (SafariSettingsBrowsingDataImportController)init
{
  v30.receiver = self;
  v30.super_class = SafariSettingsBrowsingDataImportController;
  v2 = [(SafariSettingsBrowsingDataImportController *)&v30 init];
  v3 = v2;
  if (v2)
  {
    [(SafariSettingsBrowsingDataImportController *)v2 setSelectedProfileIdentifierToImportInto:WBSDefaultProfileIdentifier];
    v3->_importedCreditCardsCount = 0;
    v4 = +[NSCountedSet set];
    availableAppsWithExtensions = v3->_availableAppsWithExtensions;
    v3->_availableAppsWithExtensions = v4;

    v6 = +[NSMutableSet set];
    enabledExtensionsComposedIdentifiers = v3->_enabledExtensionsComposedIdentifiers;
    v3->_enabledExtensionsComposedIdentifiers = v6;

    v8 = +[NSMutableSet set];
    composedIdentifiersForLockupViewExtensions = v3->_composedIdentifiersForLockupViewExtensions;
    v3->_composedIdentifiersForLockupViewExtensions = v8;

    v10 = [NSString stringWithFormat:@"com.apple.Safari.%@.%p.internalQueue", objc_opt_class(), v3];
    v11 = [v10 UTF8String];
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create(v11, v12);
    internalQueue = v3->_internalQueue;
    v3->_internalQueue = v13;

    v15 = [SFExtensionsProfilesDataSource alloc];
    v16 = +[SafariSettingsController tabGroupManager];
    v17 = [v15 initWithTabGroupManager:v16];

    v18 = +[SafariSettingsController tabGroupManager];
    v19 = [(SafariSettingsBrowsingDataImportController *)v3 selectedProfileIdentifierToImportInto];
    v20 = [v18 profileWithIdentifier:v19];
    v21 = [v20 serverID];

    v22 = [v17 profileServerIDToContentBlockerManagers];
    v23 = [v22 objectForKeyedSubscript:v21];
    contentBlockerManager = v3->_contentBlockerManager;
    v3->_contentBlockerManager = v23;

    v25 = [v17 profileServerIDToWebExtensionsControllers];
    v26 = [v25 objectForKeyedSubscript:v21];
    webExtensionsController = v3->_webExtensionsController;
    v3->_webExtensionsController = v26;

    [(SFContentBlockerManager *)v3->_contentBlockerManager addObserver:v3];
    [(SFWebExtensionsController *)v3->_webExtensionsController addObserver:v3];
    v28 = v3;
  }

  return v3;
}

- (void)dealloc
{
  [(SFContentBlockerManager *)self->_contentBlockerManager removeObserver:self];
  [(SFWebExtensionsController *)self->_webExtensionsController removeObserver:self];
  v3.receiver = self;
  v3.super_class = SafariSettingsBrowsingDataImportController;
  [(SafariSettingsBrowsingDataImportController *)&v3 dealloc];
}

- (void)_recomputeFrequentlyVisitedSites
{
  if (bookmarkQueue_once != -1)
  {
    [SafariSettingsBrowsingDataImportController _recomputeFrequentlyVisitedSites];
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __78__SafariSettingsBrowsingDataImportController__recomputeFrequentlyVisitedSites__block_invoke;
  block[3] = &unk_895D8;
  block[4] = self;
  dispatch_async(bookmarkQueue_queue, block);
}

void __78__SafariSettingsBrowsingDataImportController__recomputeFrequentlyVisitedSites__block_invoke(uint64_t a1)
{
  v2 = [WBSFrequentlyVisitedSitesBannedURLStore alloc];
  v3 = [*(a1 + 32) selectedProfileIdentifierToImportInto];
  v4 = SafariFrequentlyVisitedSitesBannedURLStoreURLForProfileWithIdentifier(v3);
  v11 = [v2 initWithStoreURL:v4 history:0];

  v5 = [FrequentlyVisitedSitesController alloc];
  v6 = +[WebBookmarkCollection safariBookmarkCollection];
  v7 = +[SafariSettingsController tabGroupManager];
  v8 = [v7 tabCollection];
  v9 = [*(a1 + 32) selectedProfileIdentifierToImportInto];
  v10 = [(FrequentlyVisitedSitesController *)v5 initWithBookmarkCollection:v6 history:0 bannedURLStore:v11 tabCollection:v8 profileIdentifier:v9];

  [(FrequentlyVisitedSitesController *)v10 clearFrequentlyVisitedSites];
}

- (void)_scanImportURLs:(id)a3 sandboxExtensions:(id)a4 completionHandler:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(WebBookmarksSettingsGateway);
  [v10 scanImportURLs:v9 sandboxExtensions:v8 completionHandler:v7];
}

- (void)_importHistoryFromURL:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(WebBookmarksSettingsGateway);
  v9 = CFAbsoluteTimeGetCurrent() - WBUHistoryDefaultItemAgeLimit;
  v10 = [(SafariSettingsBrowsingDataImportController *)self selectedProfileIdentifierToImportInto];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = __86__SafariSettingsBrowsingDataImportController__importHistoryFromURL_completionHandler___block_invoke;
  v12[3] = &unk_8ACF0;
  v12[4] = self;
  v13 = v6;
  v11 = v6;
  [v8 importSafariHistoryFromURL:v7 ageLimit:v10 profileIdentifier:v12 completionHandler:v9];
}

id __86__SafariSettingsBrowsingDataImportController__importHistoryFromURL_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  if (a3)
  {
    v4 = *(v3 + 16);
    v5 = *(a1 + 40);

    return v4(v5, 0);
  }

  else
  {
    v8 = [[WBSBrowsingDataImportData alloc] initWithNumberOfItemsSuccessfullyImported:a2 numberOfItemsFailedToImport:0 errorMessage:0];
    (*(v3 + 16))(v3, v8, 0);

    v9 = *(a1 + 32);

    return [v9 _recomputeFrequentlyVisitedSites];
  }
}

- (void)_importBookmarksFromURL:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(WebBookmarksSettingsGateway);
  v8 = [objc_opt_class() suggestedImportedBookmarksFolderName];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __88__SafariSettingsBrowsingDataImportController__importBookmarksFromURL_completionHandler___block_invoke;
  v10[3] = &unk_89808;
  v11 = v5;
  v9 = v5;
  [v7 importBookmarksFromURL:v6 inFolderWithSuggestedName:v8 completionHandler:v10];
}

void __88__SafariSettingsBrowsingDataImportController__importBookmarksFromURL_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    v4 = *(v3 + 16);
    v5 = *(a1 + 32);

    v4(v5, 0);
  }

  else
  {
    v6 = [[WBSBrowsingDataImportData alloc] initWithNumberOfItemsSuccessfullyImported:a2 numberOfItemsFailedToImport:0 errorMessage:0];
    (*(v3 + 16))(v3, v6, 0);
  }
}

- (void)_importExtensionsFromURL:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __89__SafariSettingsBrowsingDataImportController__importExtensionsFromURL_completionHandler___block_invoke;
  block[3] = &unk_895D8;
  block[4] = self;
  v8 = a3;
  dispatch_async(internalQueue, block);
  v9 = objc_alloc_init(WebBookmarksSettingsGateway);
  [v9 setExtensionsImporterDelegate:self];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = __89__SafariSettingsBrowsingDataImportController__importExtensionsFromURL_completionHandler___block_invoke_2;
  v12[3] = &unk_8AD18;
  v12[4] = self;
  v13 = v9;
  v14 = v6;
  v10 = v6;
  v11 = v9;
  [v11 importExtensionsFromURL:v8 completionHandler:v12];
}

void __89__SafariSettingsBrowsingDataImportController__importExtensionsFromURL_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 64);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __89__SafariSettingsBrowsingDataImportController__importExtensionsFromURL_completionHandler___block_invoke_3;
  v8[3] = &unk_8A2B0;
  v8[4] = v5;
  v9 = v3;
  v10 = v4;
  v11 = *(a1 + 48);
  v7 = v3;
  dispatch_async(v6, v8);
}

id __89__SafariSettingsBrowsingDataImportController__importExtensionsFromURL_completionHandler___block_invoke_3(void *a1)
{
  --*(a1[4] + 16);
  v2 = a1 + 5;
  if (a1[5])
  {
    v3 = WBS_LOG_CHANNEL_PREFIXImport();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __89__SafariSettingsBrowsingDataImportController__importExtensionsFromURL_completionHandler___block_invoke_3_cold_1(v2, v3);
    }
  }

  v4 = a1[4];
  if (!v4[2])
  {
    return [v4 _generateLockupViewsForAvailableAppsWithWebBookmarksSettingsGateway:a1[6] completionHandler:a1[7]];
  }

  v5 = a1[5];
  return (*(a1[7] + 16))();
}

- (void)_importChromeExtensionsFromURL:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __95__SafariSettingsBrowsingDataImportController__importChromeExtensionsFromURL_completionHandler___block_invoke;
  block[3] = &unk_895D8;
  block[4] = self;
  v8 = a3;
  dispatch_async(internalQueue, block);
  v9 = objc_alloc_init(WebBookmarksSettingsGateway);
  [v9 setExtensionsImporterDelegate:self];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = __95__SafariSettingsBrowsingDataImportController__importChromeExtensionsFromURL_completionHandler___block_invoke_2;
  v12[3] = &unk_8AD18;
  v12[4] = self;
  v13 = v9;
  v14 = v6;
  v10 = v6;
  v11 = v9;
  [v11 importChromeExtensionsFromURL:v8 completionHandler:v12];
}

void __95__SafariSettingsBrowsingDataImportController__importChromeExtensionsFromURL_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 64);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __95__SafariSettingsBrowsingDataImportController__importChromeExtensionsFromURL_completionHandler___block_invoke_3;
  v8[3] = &unk_8A2B0;
  v8[4] = v5;
  v9 = v3;
  v10 = v4;
  v11 = *(a1 + 48);
  v7 = v3;
  dispatch_async(v6, v8);
}

id __95__SafariSettingsBrowsingDataImportController__importChromeExtensionsFromURL_completionHandler___block_invoke_3(void *a1)
{
  --*(a1[4] + 16);
  v2 = a1 + 5;
  if (a1[5])
  {
    v3 = WBS_LOG_CHANNEL_PREFIXImport();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __95__SafariSettingsBrowsingDataImportController__importChromeExtensionsFromURL_completionHandler___block_invoke_3_cold_1(v2, v3);
    }
  }

  v4 = a1[4];
  if (!v4[2])
  {
    return [v4 _generateLockupViewsForAvailableAppsWithWebBookmarksSettingsGateway:a1[6] completionHandler:a1[7]];
  }

  v5 = a1[5];
  return (*(a1[7] + 16))();
}

- (void)_generateLockupViewsForAvailableAppsWithWebBookmarksSettingsGateway:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[WBSASCLockupViewGenerator sharedGenerator];
  v9 = [(NSCountedSet *)self->_availableAppsWithExtensions allObjects];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = __132__SafariSettingsBrowsingDataImportController__generateLockupViewsForAvailableAppsWithWebBookmarksSettingsGateway_completionHandler___block_invoke;
  v12[3] = &unk_8ADE8;
  v13 = v6;
  v14 = v7;
  v12[4] = self;
  v10 = v6;
  v11 = v7;
  [v8 generateLockupViewsForAvailableApps:v9 lockupViewType:1 maintainRequestedOrderOfApps:0 completionHandler:v12];
}

void __132__SafariSettingsBrowsingDataImportController__generateLockupViewsForAvailableAppsWithWebBookmarksSettingsGateway_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 64);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __132__SafariSettingsBrowsingDataImportController__generateLockupViewsForAvailableAppsWithWebBookmarksSettingsGateway_completionHandler___block_invoke_2;
  v7[3] = &unk_8ADC0;
  v8 = v3;
  v9 = v4;
  v11 = *(a1 + 48);
  v10 = *(a1 + 40);
  v6 = v3;
  dispatch_async(v5, v7);
}

void __132__SafariSettingsBrowsingDataImportController__generateLockupViewsForAvailableAppsWithWebBookmarksSettingsGateway_completionHandler___block_invoke_2(uint64_t a1)
{
  v16 = [*(a1 + 32) safari_filterObjectsUsingBlock:&__block_literal_global_17];
  v2 = [v16 safari_mapObjectsUsingBlock:&__block_literal_global_35];
  v3 = [NSSet setWithArray:v2];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v17 = a1;
  v4 = [*(*(a1 + 40) + 48) allObjects];
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v19;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [v10 adamID];
        v12 = [v3 containsObject:v11];

        if (v12)
        {
          v7 += [*(v17[5] + 48) countForObject:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v13 = [[WBSBrowsingDataImportData alloc] initWithNumberOfItemsSuccessfullyImported:objc_msgSend(*(v17[5] + 40) numberOfItemsFailedToImport:"count") errorMessage:{v7, 0}];
  [v13 setExtensionLockupViews:v16];
  (*(v17[7] + 16))();
  v14 = v17[6];
  objc_opt_class();
  v15 = v17[5];
  objc_opt_class();
}

BOOL __132__SafariSettingsBrowsingDataImportController__generateLockupViewsForAvailableAppsWithWebBookmarksSettingsGateway_completionHandler___block_invoke_3(id a1, ASCLockupView *a2)
{
  v2 = [(ASCLockupView *)a2 lockup];
  v3 = [v2 offer];
  v4 = ([v3 flags] & 0x10) == 0;

  return v4;
}

NSString *__cdecl __132__SafariSettingsBrowsingDataImportController__generateLockupViewsForAvailableAppsWithWebBookmarksSettingsGateway_completionHandler___block_invoke_4(id a1, ASCLockupView *a2)
{
  v2 = [(ASCLockupView *)a2 lockup];
  v3 = [v2 id];
  v4 = [v3 stringValue];

  return v4;
}

- (void)_importCreditCardsFromURL:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(WebBookmarksSettingsGateway);
  [v8 setCreditCardImporterDelegate:self];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __90__SafariSettingsBrowsingDataImportController__importCreditCardsFromURL_completionHandler___block_invoke;
  v11[3] = &unk_8AE38;
  v12 = v8;
  v13 = v6;
  v11[4] = self;
  v9 = v8;
  v10 = v6;
  [v9 importCreditCardsFromURL:v7 completionHandler:v11];
}

void __90__SafariSettingsBrowsingDataImportController__importCreditCardsFromURL_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 64);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __90__SafariSettingsBrowsingDataImportController__importCreditCardsFromURL_completionHandler___block_invoke_2;
  v9[3] = &unk_8AE10;
  v10 = v3;
  v5 = *(a1 + 48);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v13 = v5;
  v11 = v6;
  v12 = v7;
  v8 = v3;
  dispatch_sync(v4, v9);
}

uint64_t __90__SafariSettingsBrowsingDataImportController__importCreditCardsFromURL_completionHandler___block_invoke_2(void *a1)
{
  v1 = a1[7];
  if (a1[4])
  {
    v2 = *(v1 + 16);
    v3 = a1[7];

    return v2(v3, 0);
  }

  else
  {
    v6 = [[WBSBrowsingDataImportData alloc] initWithNumberOfItemsSuccessfullyImported:*(a1[5] + 8) numberOfItemsFailedToImport:0 errorMessage:0];
    (*(v1 + 16))(v1, v6, 0);

    v7 = a1[6];
    objc_opt_class();
    v8 = a1[5];

    return objc_opt_class();
  }
}

- (void)_importChromeHistoryFromURL:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(WebBookmarksSettingsGateway);
  v9 = CFAbsoluteTimeGetCurrent() - WBUHistoryDefaultItemAgeLimit;
  v10 = [(SafariSettingsBrowsingDataImportController *)self selectedProfileIdentifierToImportInto];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = __92__SafariSettingsBrowsingDataImportController__importChromeHistoryFromURL_completionHandler___block_invoke;
  v12[3] = &unk_8ACF0;
  v12[4] = self;
  v13 = v6;
  v11 = v6;
  [v8 importChromeHistoryFromURL:v7 ageLimit:v10 profileIdentifier:v12 completionHandler:v9];
}

id __92__SafariSettingsBrowsingDataImportController__importChromeHistoryFromURL_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  if (a3)
  {
    v4 = *(v3 + 16);
    v5 = *(a1 + 40);

    return v4(v5, 0);
  }

  else
  {
    v8 = [[WBSBrowsingDataImportData alloc] initWithNumberOfItemsSuccessfullyImported:a2 numberOfItemsFailedToImport:0 errorMessage:0];
    (*(v3 + 16))(v3, v8, 0);

    v9 = *(a1 + 32);

    return [v9 _recomputeFrequentlyVisitedSites];
  }
}

- (void)_computeNumberOfHistorySitesToBeImportedFromURL:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(WebBookmarksSettingsGateway);
  v8 = WBSHistoryExportDataType;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __112__SafariSettingsBrowsingDataImportController__computeNumberOfHistorySitesToBeImportedFromURL_completionHandler___block_invoke;
  v10[3] = &unk_89808;
  v11 = v5;
  v9 = v5;
  [v7 computeNumberOfItemsToBeImportedFromURL:v6 exportMetadataDataType:v8 completionHandler:v10];
}

void __112__SafariSettingsBrowsingDataImportController__computeNumberOfHistorySitesToBeImportedFromURL_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXImport();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __112__SafariSettingsBrowsingDataImportController__computeNumberOfHistorySitesToBeImportedFromURL_completionHandler___block_invoke_cold_1(v5);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_computeNumberOfChromeHistorySitesToBeImportedFromURL:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(WebBookmarksSettingsGateway);
  v8 = WBSChromeHistoryExportDataType;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __118__SafariSettingsBrowsingDataImportController__computeNumberOfChromeHistorySitesToBeImportedFromURL_completionHandler___block_invoke;
  v10[3] = &unk_89808;
  v11 = v5;
  v9 = v5;
  [v7 computeNumberOfItemsToBeImportedFromURL:v6 exportMetadataDataType:v8 completionHandler:v10];
}

void __118__SafariSettingsBrowsingDataImportController__computeNumberOfChromeHistorySitesToBeImportedFromURL_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXImport();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __112__SafariSettingsBrowsingDataImportController__computeNumberOfHistorySitesToBeImportedFromURL_completionHandler___block_invoke_cold_1(v5);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_computeNumberOfExtensionsToBeImportedFromURL:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(WebBookmarksSettingsGateway);
  v8 = WBSExtensionsExportDataType;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __110__SafariSettingsBrowsingDataImportController__computeNumberOfExtensionsToBeImportedFromURL_completionHandler___block_invoke;
  v10[3] = &unk_89808;
  v11 = v5;
  v9 = v5;
  [v7 computeNumberOfItemsToBeImportedFromURL:v6 exportMetadataDataType:v8 completionHandler:v10];
}

void __110__SafariSettingsBrowsingDataImportController__computeNumberOfExtensionsToBeImportedFromURL_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXImport();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __110__SafariSettingsBrowsingDataImportController__computeNumberOfExtensionsToBeImportedFromURL_completionHandler___block_invoke_cold_1(v5);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_computeNumberOfChromeExtensionsToBeImportedFromURL:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(WebBookmarksSettingsGateway);
  v8 = WBSChromeExtensionsExportDataType;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __116__SafariSettingsBrowsingDataImportController__computeNumberOfChromeExtensionsToBeImportedFromURL_completionHandler___block_invoke;
  v10[3] = &unk_89808;
  v11 = v5;
  v9 = v5;
  [v7 computeNumberOfItemsToBeImportedFromURL:v6 exportMetadataDataType:v8 completionHandler:v10];
}

void __116__SafariSettingsBrowsingDataImportController__computeNumberOfChromeExtensionsToBeImportedFromURL_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXImport();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __116__SafariSettingsBrowsingDataImportController__computeNumberOfChromeExtensionsToBeImportedFromURL_completionHandler___block_invoke_cold_1(v5);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_computeNumberOfBookmarksToBeImportedFromURL:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(WebBookmarksSettingsGateway);
  v8 = WBSBookmarksExportDataType;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __109__SafariSettingsBrowsingDataImportController__computeNumberOfBookmarksToBeImportedFromURL_completionHandler___block_invoke;
  v10[3] = &unk_89808;
  v11 = v5;
  v9 = v5;
  [v7 computeNumberOfItemsToBeImportedFromURL:v6 exportMetadataDataType:v8 completionHandler:v10];
}

void __109__SafariSettingsBrowsingDataImportController__computeNumberOfBookmarksToBeImportedFromURL_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXImport();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __109__SafariSettingsBrowsingDataImportController__computeNumberOfBookmarksToBeImportedFromURL_completionHandler___block_invoke_cold_1(v5);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_computeNumberOfCreditCardsToBeImportedFromURL:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(WebBookmarksSettingsGateway);
  v8 = WBSCreditCardExportDataType;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __111__SafariSettingsBrowsingDataImportController__computeNumberOfCreditCardsToBeImportedFromURL_completionHandler___block_invoke;
  v10[3] = &unk_89808;
  v11 = v5;
  v9 = v5;
  [v7 computeNumberOfItemsToBeImportedFromURL:v6 exportMetadataDataType:v8 completionHandler:v10];
}

void __111__SafariSettingsBrowsingDataImportController__computeNumberOfCreditCardsToBeImportedFromURL_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXImport();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __111__SafariSettingsBrowsingDataImportController__computeNumberOfCreditCardsToBeImportedFromURL_completionHandler___block_invoke_cold_1(v5);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)enableExtensionWithComposedIdentifier:(id)a3 adamIdentifier:(id)a4 alternatePlatformAppBundleIdentifier:(id)a5 alternatePlatformExtensionBundleIdentifier:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  internalQueue = self->_internalQueue;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = __179__SafariSettingsBrowsingDataImportController_enableExtensionWithComposedIdentifier_adamIdentifier_alternatePlatformAppBundleIdentifier_alternatePlatformExtensionBundleIdentifier___block_invoke;
  v16[3] = &unk_8AE60;
  v17 = v9;
  v18 = v10;
  v19 = self;
  v20 = v11;
  v13 = v11;
  v14 = v10;
  v15 = v9;
  dispatch_sync(internalQueue, v16);
}

void __179__SafariSettingsBrowsingDataImportController_enableExtensionWithComposedIdentifier_adamIdentifier_alternatePlatformAppBundleIdentifier_alternatePlatformExtensionBundleIdentifier___block_invoke(uint64_t a1)
{
  if (!*(a1 + 32) && *(a1 + 40))
  {
    v7 = [[WBSAvailableAppWithExtension alloc] initWithAdamID:*(a1 + 40) platformSpecificBundleID:0];
    [*(*(a1 + 48) + 48) addObject:?];
    goto LABEL_11;
  }

  v7 = [*(*(a1 + 48) + 24) _contentBlockerWithComposedIdentifier:?];
  if (v7)
  {
    [*(*(a1 + 48) + 24) setExtension:v7 isEnabled:1 byUserGesture:1];
  }

  v2 = [*(*(a1 + 48) + 32) webExtensionForComposedIdentifier:*(a1 + 32)];
  v3 = v2;
  if (v2)
  {
    v4 = *(*(a1 + 48) + 32);
    v5 = [v2 extension];
    [v4 setExtension:v5 isEnabled:1];
  }

  else if (!v7)
  {
    if (*(a1 + 40))
    {
      v6 = [[WBSAvailableAppWithExtension alloc] initWithAdamID:*(a1 + 40) platformSpecificBundleID:*(a1 + 56)];
      [*(*(a1 + 48) + 48) addObject:v6];
      [*(*(a1 + 48) + 56) addObject:*(a1 + 32)];
    }

    goto LABEL_10;
  }

  [*(*(a1 + 48) + 40) addObject:*(a1 + 32)];
  [*(a1 + 48) _postExtensionsChangedNotification];
LABEL_10:

LABEL_11:
}

- (void)importCreditCardDataWithCardNumber:(id)a3 cardName:(id)a4 cardholderName:(id)a5 cardExpirationMonth:(id)a6 cardExpirationYear:(id)a7 lastUsedDate:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __157__SafariSettingsBrowsingDataImportController_importCreditCardDataWithCardNumber_cardName_cardholderName_cardExpirationMonth_cardExpirationYear_lastUsedDate___block_invoke;
  block[3] = &unk_8AE88;
  block[4] = self;
  v28 = v14;
  v29 = v15;
  v30 = v16;
  v31 = v17;
  v32 = v18;
  v33 = v19;
  v21 = v19;
  v22 = v18;
  v23 = v17;
  v24 = v16;
  v25 = v15;
  v26 = v14;
  dispatch_async(internalQueue, block);
}

void __157__SafariSettingsBrowsingDataImportController_importCreditCardDataWithCardNumber_cardName_cardholderName_cardExpirationMonth_cardExpirationYear_lastUsedDate___block_invoke(void *a1)
{
  ++*(a1[4] + 8);
  v2 = +[WBSCreditCardDataController creditCardDataController];
  [v2 importCreditCardDataWithCardNumber:a1[5] cardName:a1[6] cardholderName:a1[7] cardExpirationMonth:a1[8] cardExpirationYear:a1[9] lastUsedDate:a1[10]];
}

- (void)contentBlockerManagerExtensionListDidChange:(id)a3
{
  v4 = a3;
  v5 = [v4 extensions];
  v6 = [v5 allObjects];
  v7 = [v4 webExtensionsController];
  v8 = [(SafariSettingsBrowsingDataImportController *)self _getComposedIdentifiersOfExtensionsDownloadedFromLockupViewsFromListOfExtensions:v6 extensionsController:v7];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [v4 _contentBlockerWithComposedIdentifier:{*(*(&v15 + 1) + 8 * v13), v15}];
        if (v14)
        {
          [v4 setExtension:v14 isEnabled:1 byUserGesture:1];
          [(SafariSettingsBrowsingDataImportController *)self _postExtensionsChangedNotification];
        }

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }
}

- (void)extensionsControllerExtensionListDidChange:(id)a3
{
  v4 = a3;
  v5 = [v4 extensions];
  v6 = [(SafariSettingsBrowsingDataImportController *)self _getComposedIdentifiersOfExtensionsDownloadedFromLockupViewsFromListOfExtensions:v5 extensionsController:v4];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [v4 extensionWithComposedIdentifier:{*(*(&v13 + 1) + 8 * v11), v13}];
        if (v12)
        {
          [v4 setExtension:v12 isEnabled:1];
          [(SafariSettingsBrowsingDataImportController *)self _postExtensionsChangedNotification];
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (id)_getComposedIdentifiersOfExtensionsDownloadedFromLockupViewsFromListOfExtensions:(id)a3 extensionsController:(id)a4
{
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = __148__SafariSettingsBrowsingDataImportController__getComposedIdentifiersOfExtensionsDownloadedFromLockupViewsFromListOfExtensions_extensionsController___block_invoke;
  v16[3] = &unk_8AEB0;
  v17 = a4;
  v6 = v17;
  v7 = [a3 safari_mapObjectsUsingBlock:v16];
  v8 = [NSMutableSet setWithArray:v7];

  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __148__SafariSettingsBrowsingDataImportController__getComposedIdentifiersOfExtensionsDownloadedFromLockupViewsFromListOfExtensions_extensionsController___block_invoke_2;
  block[3] = &unk_896A0;
  v10 = v8;
  v14 = v10;
  v15 = self;
  dispatch_sync(internalQueue, block);
  v11 = v10;

  return v10;
}

id __148__SafariSettingsBrowsingDataImportController__getComposedIdentifiersOfExtensionsDownloadedFromLockupViewsFromListOfExtensions_extensionsController___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) intersectSet:*(*(a1 + 40) + 56)];
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 56);

  return [v3 minusSet:v2];
}

- (void)_postExtensionsChangedNotification
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.mobilesafari.SafariSettingsChangedExtensionSettings", 0, 0, 0);
}

void __89__SafariSettingsBrowsingDataImportController__importExtensionsFromURL_completionHandler___block_invoke_3_cold_1(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  v5 = [OUTLINED_FUNCTION_1() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_0, v6, v7, "Error importing extensions: %{public}@", v8, v9, v10, v11, v12);
}

void __95__SafariSettingsBrowsingDataImportController__importChromeExtensionsFromURL_completionHandler___block_invoke_3_cold_1(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  v5 = [OUTLINED_FUNCTION_1() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_0, v6, v7, "Error importing Chrome extensions: %{public}@", v8, v9, v10, v11, v12);
}

void __112__SafariSettingsBrowsingDataImportController__computeNumberOfHistorySitesToBeImportedFromURL_completionHandler___block_invoke_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_0, v4, v5, "Failed to compute the number of history sites to be imported: %{public}@", v6, v7, v8, v9, v10);
}

void __110__SafariSettingsBrowsingDataImportController__computeNumberOfExtensionsToBeImportedFromURL_completionHandler___block_invoke_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_0, v4, v5, "Failed to compute the number of extensions to be imported: %{public}@", v6, v7, v8, v9, v10);
}

void __116__SafariSettingsBrowsingDataImportController__computeNumberOfChromeExtensionsToBeImportedFromURL_completionHandler___block_invoke_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_0, v4, v5, "Failed to compute the number of Chrome extensions to be imported: %{public}@", v6, v7, v8, v9, v10);
}

void __109__SafariSettingsBrowsingDataImportController__computeNumberOfBookmarksToBeImportedFromURL_completionHandler___block_invoke_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_0, v4, v5, "Failed to compute the number of bookmarks to be imported: %{public}@", v6, v7, v8, v9, v10);
}

void __111__SafariSettingsBrowsingDataImportController__computeNumberOfCreditCardsToBeImportedFromURL_completionHandler___block_invoke_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_0, v4, v5, "Failed to compute the number of credit cards to be imported: %{public}@", v6, v7, v8, v9, v10);
}

@end