@interface MPHSBrowserDelegate
- (void)browser:(id)a3 didAddLibrary:(id)a4;
- (void)browser:(id)a3 didRemoveLibrary:(id)a4;
@end

@implementation MPHSBrowserDelegate

- (void)browser:(id)a3 didRemoveLibrary:(id)a4
{
  v5 = a3;
  v6 = a4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __48__MPHSBrowserDelegate_browser_didRemoveLibrary___block_invoke;
  v9[3] = &unk_1E76823C0;
  v10 = v6;
  v11 = v5;
  v7 = v5;
  v8 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v9);
}

void __48__MPHSBrowserDelegate_browser_didRemoveLibrary___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = +[MPMediaLibrary mediaLibraries];
  v3 = [v2 valueForKey:@"libraryDataProvider"];

  v4 = [v3 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = [v8 homeSharingLibrary];
          v10 = [v9 isEqual:*(a1 + 32)];

          if (v10)
          {
            v11 = os_log_create("com.apple.amp.mediaplayer", "HomeSharing");
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              v12 = *(a1 + 40);
              *buf = 138543618;
              v18 = v12;
              v19 = 2114;
              v20 = v8;
              _os_log_impl(&dword_1A238D000, v11, OS_LOG_TYPE_DEFAULT, "[MPHomeSharingML3DataProvider] [Browse] Browser: %{public}@ Removed %{public}@", buf, 0x16u);
            }

            [MPMediaLibrary removeLibraryDataProvider:v8 removalReason:1];
            goto LABEL_14;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v21 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:
}

- (void)browser:(id)a3 didAddLibrary:(id)a4
{
  v4 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__MPHSBrowserDelegate_browser_didAddLibrary___block_invoke;
  block[3] = &unk_1E7682518;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __45__MPHSBrowserDelegate_browser_didAddLibrary___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.amp.mediaplayer", "HomeSharing");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) name];
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_1A238D000, v2, OS_LOG_TYPE_DEFAULT, "[MPHomeSharingML3DataProvider] [Browse] Found library %{public}@", &v6, 0xCu);
  }

  v4 = [[MPHomeSharingML3DataProvider alloc] initWithHomeSharingLibrary:*(a1 + 32)];
  [MPMediaLibrary addLibraryDataProvider:v4];
  v5 = os_log_create("com.apple.amp.mediaplayer", "HomeSharing");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEFAULT, "[MPHomeSharingML3DataProvider] [Browse] Added %{public}@", &v6, 0xCu);
  }
}

@end