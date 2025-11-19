@interface SFSafariDataSharingController
@end

@implementation SFSafariDataSharingController

void __50___SFSafariDataSharingController_sharedController__block_invoke()
{
  v0 = objc_alloc_init(_SFSafariDataSharingController);
  v1 = sharedController_sharedController_0;
  sharedController_sharedController_0 = v0;
}

void __61___SFSafariDataSharingController_checkInAppBundleIDIfNeeded___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  [*(a1 + 32) _loadAppBundlesWithSeparateDataIfNeeded];
  if (([*(*v2 + 16) containsObject:v2[1]] & 1) == 0)
  {
    [*(*(a1 + 32) + 16) addObject:*(a1 + 40)];
    v3 = [MEMORY[0x1E695E000] safari_browserDefaults];
    [v3 setObject:*(*(a1 + 32) + 16) forKey:@"AppBundleIDsWithSeperateData"];
    [v3 synchronize];
    v4 = WBS_LOG_CHANNEL_PREFIXViewService();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_1D4644000, v4, OS_LOG_TYPE_INFO, "Apps currently using SafariViewController in Separated data mode...", v6, 2u);
    }

    v5 = WBS_LOG_CHANNEL_PREFIXViewService();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __61___SFSafariDataSharingController_checkInAppBundleIDIfNeeded___block_invoke_cold_1(v2, v5);
    }
  }
}

void __54___SFSafariDataSharingController_clearAllWebsitesData__block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695E000] safari_browserDefaults];
  v3 = [v2 arrayForKey:@"AppBundleIDsWithSeperateData"];
  v4 = [v3 mutableCopy];

  if ([v4 count])
  {
    v5 = [MEMORY[0x1E696AC08] defaultManager];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v18 = v4;
    obj = v4;
    v6 = [obj countByEnumeratingWithState:&v20 objects:v26 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v21;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v21 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v20 + 1) + 8 * i);
          v11 = [*(a1 + 32) systemDataContainerURLWithAppBundleID:v10];
          v12 = [v11 URLByAppendingPathComponent:@"/Library"];

          v13 = [v12 path];
          v14 = [v5 fileExistsAtPath:v13];

          if (v14)
          {
            [v5 removeItemAtURL:v12 error:0];
          }

          else
          {
            v15 = WBS_LOG_CHANNEL_PREFIXViewService();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_1D4644000, v15, OS_LOG_TYPE_INFO, "Skip clearing data for app since it has been uninstalled", buf, 2u);
            }

            v16 = WBS_LOG_CHANNEL_PREFIXViewService();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138477827;
              v25 = v10;
              _os_log_debug_impl(&dword_1D4644000, v16, OS_LOG_TYPE_DEBUG, "App bundle ID: %{private}@", buf, 0xCu);
            }
          }
        }

        v7 = [obj countByEnumeratingWithState:&v20 objects:v26 count:16];
      }

      while (v7);
    }

    v17 = [MEMORY[0x1E695E000] safari_browserDefaults];
    [v17 removeObjectForKey:@"AppBundleIDsWithSeperateData"];
    [v17 synchronize];

    v4 = v18;
  }
}

void __61___SFSafariDataSharingController_checkInAppBundleIDIfNeeded___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(*a1 + 16);
  v3 = 138477827;
  v4 = v2;
  _os_log_debug_impl(&dword_1D4644000, a2, OS_LOG_TYPE_DEBUG, "... apps: %{private}@", &v3, 0xCu);
}

@end