@interface SafariWebsiteDataDataSource
+ (void)_clearContentBlockerStatisticsForProfileWithIdentifier:(id)a3;
+ (void)deleteAllDataForProfileWithIdentifier:(id)a3;
- (id)removeDataMessage;
- (id)removeDataPromptTitle;
- (void)_addWebSecurityDomainsToArray:(id)a3 withCompletion:(id)a4;
- (void)_addWebsiteDataRecord:(id)a3 toArray:(id)a4;
- (void)createSpecifiersWithCompletionHandler:(id)a3;
- (void)deleteDataForSpecifier:(id)a3;
@end

@implementation SafariWebsiteDataDataSource

- (id)removeDataPromptTitle
{
  if (_SFDeviceIsPad())
  {
    v2 = @"Remove Website Data";
  }

  else
  {
    v2 = @"Remove Website Data Message";
  }

  v3 = SafariSettingsLocalizedString(v2, @"Storage");

  return v3;
}

- (id)removeDataMessage
{
  if (_SFDeviceIsPad())
  {
    v2 = SafariSettingsLocalizedString(@"Remove Website Data Message", @"Storage");
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)createSpecifiersWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  objc_initWeak(&location, self);
  v6 = dispatch_get_global_queue(0, 0);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __69__SafariWebsiteDataDataSource_createSpecifiersWithCompletionHandler___block_invoke;
  v9[3] = &unk_8A7D8;
  objc_copyWeak(&v12, &location);
  v10 = v5;
  v11 = v4;
  v7 = v5;
  v8 = v4;
  dispatch_async(v6, v9);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __69__SafariWebsiteDataDataSource_createSpecifiersWithCompletionHandler___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v3 = a1[4];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = __69__SafariWebsiteDataDataSource_createSpecifiersWithCompletionHandler___block_invoke_2;
    v4[3] = &unk_8A7D8;
    objc_copyWeak(&v7, a1 + 6);
    v6 = a1[5];
    v5 = a1[4];
    [WeakRetained _addWebSecurityDomainsToArray:v3 withCompletion:v4];

    objc_destroyWeak(&v7);
  }

  else
  {
    (*(a1[5] + 2))();
  }
}

void __69__SafariWebsiteDataDataSource_createSpecifiersWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v2 = *(a1 + 32);
  }

  (*(*(a1 + 40) + 16))();
}

+ (void)deleteAllDataForProfileWithIdentifier:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = UIBackgroundTaskInvalid;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = __69__SafariWebsiteDataDataSource_deleteAllDataForProfileWithIdentifier___block_invoke;
  v12[3] = &unk_8A108;
  v12[4] = &v13;
  v5 = [UIApp beginBackgroundTaskWithName:@"com.apple.mobilesafari.settings.DeleteAllDataAndCachesTask" expirationHandler:v12];
  v14[3] = v5;
  +[CloudTabServices clearTabsForCurrentDevice];
  killSafari();
  killSafariViewService();
  [a1 _clearContentBlockerStatisticsForProfileWithIdentifier:v4];
  v6 = dispatch_group_create();
  v7 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __69__SafariWebsiteDataDataSource_deleteAllDataForProfileWithIdentifier___block_invoke_27;
  block[3] = &unk_895D8;
  v11 = v4;
  v8 = v4;
  dispatch_group_async(v6, v7, block);

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __69__SafariWebsiteDataDataSource_deleteAllDataForProfileWithIdentifier___block_invoke_2;
  v9[3] = &unk_8A108;
  v9[4] = &v13;
  dispatch_group_notify(v6, &_dispatch_main_q, v9);

  _Block_object_dispose(&v13, 8);
}

id __69__SafariWebsiteDataDataSource_deleteAllDataForProfileWithIdentifier___block_invoke(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXWebsiteData();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    __69__SafariWebsiteDataDataSource_deleteAllDataForProfileWithIdentifier___block_invoke_cold_1(v2);
  }

  return [UIApp endBackgroundTask:*(*(*(a1 + 32) + 8) + 24)];
}

void __69__SafariWebsiteDataDataSource_deleteAllDataForProfileWithIdentifier___block_invoke_27(uint64_t a1)
{
  v2 = +[SafariSettingsTaskHandler sharedHandler];
  v3 = [WBSettingsTask taskForDeletingAllWebsiteDataInProfileWithIdentifier:*(a1 + 32)];
  [v2 enqueueTask:v3];

  v4 = +[_SFBrowserSavedState sharedBrowserSavedState];
  [v4 clearActiveProfileReferencesOnWindowsWithProfileIdentifier:*(a1 + 32)];

  v5 = +[_SFBrowserSavedState sharedBrowserSavedState];
  [v5 clearSavedTabsForProfileWithIdentifier:*(a1 + 32) closingDatabase:0];

  v6 = +[NSFileManager defaultManager];
  v7 = SafariSettingsDirectoryPath();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = [v6 _web_visibleItemsInDirectoryAtPath:{v7, 0}];
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        if ([v13 hasPrefix:@"BrowserState.db"])
        {
          v14 = [v7 stringByAppendingPathComponent:v13];
          [v6 _web_removeFileOnlyAtPath:v14];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  v15 = [WBSettingsTask taskWithType:2];
  [v2 enqueueTask:v15];

  v16 = _CFURLStorageSessionCreate();
  if (v16)
  {
    v17 = v16;
    v18 = _CFURLStorageSessionCopyCookieStorage();
    if (v18)
    {
      v19 = v18;
      CFHTTPCookieStorageDeleteAllCookies();
      CFRelease(v19);
    }

    CFRelease(v17);
  }

  v20 = +[_SFSafariDataSharingController sharedController];
  [v20 clearAllWebsitesData];
}

+ (void)_clearContentBlockerStatisticsForProfileWithIdentifier:(id)a3
{
  v3 = a3;
  if ([WBSContentBlockerStatisticsSQLiteStore storeExistsForProfileWithIdentifier:v3])
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = UIBackgroundTaskInvalid;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = __86__SafariWebsiteDataDataSource__clearContentBlockerStatisticsForProfileWithIdentifier___block_invoke;
    v9[3] = &unk_8A108;
    v9[4] = &v10;
    v4 = [UIApp beginBackgroundTaskWithName:@"com.apple.mobilesafari.ClearAllStatistics" expirationHandler:v9];
    v11[3] = v4;
    [WBSContentBlockerStatisticsSQLiteStore storeForProfileWithIdentifier:v3];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = __86__SafariWebsiteDataDataSource__clearContentBlockerStatisticsForProfileWithIdentifier___block_invoke_2;
    v5 = v6[3] = &unk_8A800;
    v7 = v5;
    v8 = &v10;
    [v5 clearAllStatisticsWithCompletionHandler:v6];

    _Block_object_dispose(&v10, 8);
  }
}

void __86__SafariWebsiteDataDataSource__clearContentBlockerStatisticsForProfileWithIdentifier___block_invoke_2(uint64_t a1)
{
  v2 = dispatch_get_global_queue(25, 0);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __86__SafariWebsiteDataDataSource__clearContentBlockerStatisticsForProfileWithIdentifier___block_invoke_3;
  v5[3] = &unk_8A800;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = v3;
  v7 = v4;
  dispatch_async(v2, v5);
}

id __86__SafariWebsiteDataDataSource__clearContentBlockerStatisticsForProfileWithIdentifier___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) closeDatabase];
  v2 = UIApp;
  v3 = *(*(*(a1 + 40) + 8) + 24);

  return [v2 endBackgroundTask:v3];
}

- (void)deleteDataForSpecifier:(id)a3
{
  v3 = [a3 userInfo];
  v4 = [v3 objectForKeyedSubscript:@"websiteDataRecordKey"];

  if (v4)
  {
    killSafari();
    v5 = +[SafariSettingsTaskHandler sharedHandler];
    v6 = [WBSettingsTask taskForDeletingIndividualWebsiteDataWithRecord:v4];
    [v5 enqueueTask:v6];

    v7 = +[WBSSavedAccountStore sharedStore];
    v8 = [v4 domain];
    v10 = v8;
    v9 = [NSArray arrayWithObjects:&v10 count:1];
    [v7 removeLegacyPlatformCredentialsForDomains:v9];
  }
}

- (void)_addWebsiteDataRecord:(id)a3 toArray:(id)a4
{
  v14[0] = @"name";
  v5 = a4;
  v6 = a3;
  v7 = [v6 domain];
  v15[0] = v7;
  v14[1] = @"userInfo";
  v12[0] = @"websiteDataRecordKey";
  v12[1] = @"profileIdentifiersKey";
  v13[0] = v6;
  v8 = [v6 profileIdentifiers];
  v13[1] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];
  v15[1] = v9;
  v14[2] = @"usage";
  v10 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v6 usage]);
  v15[2] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:3];

  [v5 addObject:v11];
}

- (void)_addWebSecurityDomainsToArray:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(WebBookmarksSettingsGateway);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __76__SafariWebsiteDataDataSource__addWebSecurityDomainsToArray_withCompletion___block_invoke;
  v11[3] = &unk_8A828;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 getSafariWebDataUsageWithCompletion:v11];
}

void __76__SafariWebsiteDataDataSource__addWebSecurityDomainsToArray_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(a1 + 32) _addWebsiteDataRecord:*(*(&v8 + 1) + 8 * v7) toArray:*(a1 + 40)];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  dispatch_async(&_dispatch_main_q, *(a1 + 48));
}

@end