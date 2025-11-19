@interface SFWebArchiveProvider
@end

@implementation SFWebArchiveProvider

void __65___SFWebArchiveProvider_generateWebArchiveWithCompletionHandler___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (!*(v2 + 16))
  {
    WeakRetained = objc_loadWeakRetained((v2 + 40));
    v5 = WeakRetained;
    if (!WeakRetained)
    {
      v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"_SFWebArchiveErrorDomain" code:1 userInfo:0];
      (*(*(a1 + 40) + 16))();
      goto LABEL_10;
    }

    v6 = [WeakRetained _MIMEType];
    v7 = [*(a1 + 32) _webViewUTI];
    if (!UTTypeEqual(v7, *MEMORY[0x1E69637E8]))
    {
      v10 = UTTypeConformsTo(v7, *MEMORY[0x1E69638B0]);
      v11 = WBS_LOG_CHANNEL_PREFIXDownloads();
      v12 = v11;
      if (!v10)
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          v19 = v5;
          v20 = 2114;
          v21 = v6;
          _os_log_impl(&dword_1D4644000, v12, OS_LOG_TYPE_DEFAULT, "Not generating web archive for web view %p because the current document isn't a text-based document; mime type is %{public}@", buf, 0x16u);
        }

        v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"_SFWebArchiveErrorDomain" code:2 userInfo:0];
        (*(*(a1 + 40) + 16))();
        goto LABEL_8;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v19 = v6;
        _os_log_impl(&dword_1D4644000, v12, OS_LOG_TYPE_INFO, "Webpage is of mime type '%{public}@' instead of HTML, but will still generate a web archive", buf, 0xCu);
      }
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __65___SFWebArchiveProvider_generateWebArchiveWithCompletionHandler___block_invoke_4;
    v14[3] = &unk_1E84907F0;
    v15 = v5;
    v8 = *(a1 + 40);
    v16 = *(a1 + 32);
    v17 = v8;
    [v15 _getWebArchiveDataWithCompletionHandler:v14];

    v9 = v15;
LABEL_8:

LABEL_10:
    return;
  }

  v3 = *(a1 + 40);
  v13 = [v2 _quickLookDocument];
  (*(v3 + 16))(v3);
}

void __65___SFWebArchiveProvider_generateWebArchiveWithCompletionHandler___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v7 || ![v6 length])
  {
    v8 = WBS_LOG_CHANNEL_PREFIXDownloads();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __65___SFWebArchiveProvider_generateWebArchiveWithCompletionHandler___block_invoke_4_cold_1(a1, v8, v7);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v9 = *(a1 + 40);
    if (!v9[2])
    {
      objc_storeStrong(v9 + 2, a2);
      v9 = *(a1 + 40);
    }

    v10 = *(a1 + 48);
    v11 = [v9 _quickLookDocument];
    (*(v10 + 16))(v10, v11, 0);
  }
}

void __65___SFWebArchiveProvider_generateWebArchiveWithCompletionHandler___block_invoke_4_cold_1(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 safari_privacyPreservingDescription];
  v7 = 134218242;
  v8 = v4;
  v9 = 2114;
  v10 = v6;
  _os_log_error_impl(&dword_1D4644000, v5, OS_LOG_TYPE_ERROR, "Error generating web archive for web view %p: %{public}@", &v7, 0x16u);
}

@end