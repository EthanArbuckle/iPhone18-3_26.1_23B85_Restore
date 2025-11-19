@interface LSApplicationWorkspace(SafariServicesExtras)
- (uint64_t)_sf_shouldOpenURLInQuicklook:()SafariServicesExtras;
- (uint64_t)_sf_shouldOverrideiCloudSharingURL:()SafariServicesExtras withAppRedirectURL:referrerURL:loadedUsingDesktopUserAgent:;
- (void)_sf_openURL:()SafariServicesExtras inApplication:withOptions:completionHandler:;
- (void)_sf_tryOpeningURLInDefaultApp:()SafariServicesExtras isContentManaged:completionHandler:;
@end

@implementation LSApplicationWorkspace(SafariServicesExtras)

- (void)_sf_openURL:()SafariServicesExtras inApplication:withOptions:completionHandler:
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __104__LSApplicationWorkspace_SafariServicesExtras___sf_openURL_inApplication_withOptions_completionHandler___block_invoke;
  block[3] = &unk_1E8491DA8;
  v22 = v12;
  v23 = v13;
  block[4] = a1;
  v20 = v10;
  v21 = v11;
  v15 = v12;
  v16 = v11;
  v17 = v10;
  v18 = v13;
  dispatch_async(v14, block);
}

- (uint64_t)_sf_shouldOverrideiCloudSharingURL:()SafariServicesExtras withAppRedirectURL:referrerURL:loadedUsingDesktopUserAgent:
{
  if (a6)
  {
    return [a4 safari_hasScheme:@"icloud-sharing"] ^ 1;
  }

  else
  {
    return 1;
  }
}

- (uint64_t)_sf_shouldOpenURLInQuicklook:()SafariServicesExtras
{
  v29[7] = *MEMORY[0x1E69E9840];
  v3 = a3;
  *buf = *MEMORY[0x1E695DAA0];
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:1];
  *&v24 = 0;
  v5 = [v3 promisedItemResourceValuesForKeys:v4 error:&v24];
  v6 = v24;
  v7 = [v5 objectForKeyedSubscript:*MEMORY[0x1E695DC68]];

  if (v6)
  {
    v8 = WBS_LOG_CHANNEL_PREFIXDownloads();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(LSApplicationWorkspace(SafariServicesExtras) *)v3 _sf_shouldOpenURLInQuicklook:v8, v6];
    }
  }

  else if (v7)
  {
    v10 = v7;
    goto LABEL_10;
  }

  v9 = [v3 pathExtension];
  if ([v9 length])
  {
    v10 = [MEMORY[0x1E6982C40] typeWithFilenameExtension:v9];
  }

  else
  {
    v10 = 0;
  }

LABEL_10:
  if (v10)
  {
    v11 = v10;
    v12 = *MEMORY[0x1E6982EE8];
    v29[0] = *MEMORY[0x1E6982E30];
    v29[1] = v12;
    v13 = *MEMORY[0x1E6982F10];
    v29[2] = *MEMORY[0x1E6982CD0];
    v29[3] = v13;
    v14 = *MEMORY[0x1E6982D30];
    v29[4] = *MEMORY[0x1E6982D48];
    v29[5] = v14;
    v29[6] = *MEMORY[0x1E6982DA8];
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:7];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v16 = v15;
    v17 = [v16 countByEnumeratingWithState:&v24 objects:buf count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v25;
      while (2)
      {
        v20 = 0;
        do
        {
          if (*v25 != v19)
          {
            objc_enumerationMutation(v16);
          }

          if ([v11 conformsToType:*(*(&v24 + 1) + 8 * v20)])
          {

            v22 = WBS_LOG_CHANNEL_PREFIXDownloads();
            v21 = 1;
            if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              *buf = 138477827;
              *&buf[4] = v11;
              _os_log_impl(&dword_1D4644000, v22, OS_LOG_TYPE_INFO, "Preferring QuickLook for type %{private}@", buf, 0xCu);
            }

            goto LABEL_23;
          }

          ++v20;
        }

        while (v18 != v20);
        v18 = [v16 countByEnumeratingWithState:&v24 objects:buf count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }
  }

  v21 = 0;
LABEL_23:

  return v21;
}

- (void)_sf_tryOpeningURLInDefaultApp:()SafariServicesExtras isContentManaged:completionHandler:
{
  v7 = a3;
  if (a5)
  {
    v8 = a5;
  }

  else
  {
    v8 = &__block_literal_global_23;
  }

  v9 = _Block_copy(v8);
  v10 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __113__LSApplicationWorkspace_SafariServicesExtras___sf_tryOpeningURLInDefaultApp_isContentManaged_completionHandler___block_invoke_2;
  block[3] = &unk_1E8491DF8;
  v14 = v7;
  v15 = v9;
  v16 = a4;
  v11 = v9;
  v12 = v7;
  dispatch_async(v10, block);
}

- (void)_sf_shouldOpenURLInQuicklook:()SafariServicesExtras .cold.1(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [a3 safari_privacyPreservingDescription];
  v7 = 138740227;
  v8 = a1;
  v9 = 2114;
  v10 = v6;
  _os_log_error_impl(&dword_1D4644000, v5, OS_LOG_TYPE_ERROR, "Failed to lookup type identifier for %{sensitive}@: %{public}@", &v7, 0x16u);
}

@end