@interface SafariSettingsBrowsingDataExportController
- (unint64_t)_numberOfBookmarksToBeExported;
- (unint64_t)_numberOfDescendantsInBookmarkFolder:(id)a3 collection:(id)a4;
- (unint64_t)_numberOfExtensionsToBeExported;
- (void)_exportExtensionsToDirectoryWithURL:(id)a3 completionHandler:(id)a4;
- (void)_exportHistoryToDirectoryWithURL:(id)a3 completionHandler:(id)a4;
- (void)_numberOfHistorySitesToBeExportedWithCompletionHandler:(id)a3;
@end

@implementation SafariSettingsBrowsingDataExportController

- (void)_exportHistoryToDirectoryWithURL:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(SafariSettingsBrowsingDataExportController *)self profileIdentifiersToExportFrom];
  v8 = +[SafariSettingsController tabGroupManager];
  [SFSafariSettingsBrowsingDataExportController exportHistoryToDirectoryWithURL:v7 profileIdentifiersToExportFrom:v9 tabGroupManager:v8 completionHandler:v6];
}

- (void)_exportExtensionsToDirectoryWithURL:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(SafariSettingsBrowsingDataExportController *)self profileIdentifiersToExportFrom];
  v8 = +[SafariSettingsController tabGroupManager];
  [SFSafariSettingsBrowsingDataExportController exportExtensionsToDirectoryWithURL:v7 profileIdentifiersToExportFrom:v9 tabGroupManager:v8 completionHandler:v6];
}

- (void)_numberOfHistorySitesToBeExportedWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(WebBookmarksSettingsGateway);
  v6 = [(SafariSettingsBrowsingDataExportController *)self profileIdentifiersToExportFrom];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __101__SafariSettingsBrowsingDataExportController__numberOfHistorySitesToBeExportedWithCompletionHandler___block_invoke;
  v8[3] = &unk_89808;
  v9 = v4;
  v7 = v4;
  [v5 numberOfHistorySitesToBeExportedWithProfileIdentifiers:v6 completionHandler:v8];
}

void __101__SafariSettingsBrowsingDataExportController__numberOfHistorySitesToBeExportedWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXExport();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __101__SafariSettingsBrowsingDataExportController__numberOfHistorySitesToBeExportedWithCompletionHandler___block_invoke_cold_1(v5, v4);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (unint64_t)_numberOfExtensionsToBeExported
{
  v3 = +[NSMutableSet set];
  v4 = [SFExtensionsProfilesDataSource alloc];
  v5 = +[SafariSettingsController tabGroupManager];
  v28 = [v4 initWithTabGroupManager:v5];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = [(SafariSettingsBrowsingDataExportController *)self profileIdentifiersToExportFrom];
  v29 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (v29)
  {
    v27 = *v37;
    do
    {
      v6 = 0;
      do
      {
        if (*v37 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v31 = v6;
        v7 = *(*(&v36 + 1) + 8 * v6);
        v8 = +[SafariSettingsController tabGroupManager];
        v9 = [v8 profileWithIdentifier:v7];
        v10 = [v9 serverID];

        v11 = [v28 profileServerIDToContentBlockerManagers];
        v12 = [v11 objectForKeyedSubscript:v10];
        v41[0] = v12;
        v13 = [v28 profileServerIDToWebExtensionsControllers];
        v30 = v10;
        v14 = [v13 objectForKeyedSubscript:v10];
        v41[1] = v14;
        v15 = [NSArray arrayWithObjects:v41 count:2];

        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v16 = v15;
        v17 = [v16 countByEnumeratingWithState:&v32 objects:v40 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v33;
          do
          {
            v20 = 0;
            do
            {
              if (*v33 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = [*(*(&v32 + 1) + 8 * v20) extensionsDataForExport];
              v22 = [v21 safari_mapObjectsUsingBlock:&__block_literal_global];
              v23 = [NSSet setWithArray:v22];
              [v3 unionSet:v23];

              v20 = v20 + 1;
            }

            while (v18 != v20);
            v18 = [v16 countByEnumeratingWithState:&v32 objects:v40 count:16];
          }

          while (v18);
        }

        v6 = v31 + 1;
      }

      while ((v31 + 1) != v29);
      v29 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
    }

    while (v29);
  }

  v24 = [v3 count];
  return v24;
}

- (unint64_t)_numberOfBookmarksToBeExported
{
  v3 = +[WebBookmarkCollection safariBookmarkCollection];
  v4 = [v3 rootBookmark];
  v5 = [(SafariSettingsBrowsingDataExportController *)self _numberOfDescendantsInBookmarkFolder:v4 collection:v3];

  return v5;
}

- (unint64_t)_numberOfDescendantsInBookmarkFolder:(id)a3 collection:(id)a4
{
  v6 = a4;
  v7 = [v6 listWithID:objc_msgSend(a3 skipOffset:"identifier") includeHidden:{0, 1}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [v7 bookmarkArray];
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v17;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v16 + 1) + 8 * i);
        if (![v14 isHidden] || (objc_msgSend(v14, "isReadingListFolder") & 1) != 0 || (objc_msgSend(v14, "isBookmarksBarFolder") & 1) != 0 || objc_msgSend(v14, "isBookmarksMenuFolder"))
        {
          if ([v14 isFolder])
          {
            v11 += [(SafariSettingsBrowsingDataExportController *)self _numberOfDescendantsInBookmarkFolder:v14 collection:v6];
          }

          ++v11;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __101__SafariSettingsBrowsingDataExportController__numberOfHistorySitesToBeExportedWithCompletionHandler___block_invoke_cold_1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "Error computing the number of history items that will be exported: %{public}@", &v5, 0xCu);
}

@end