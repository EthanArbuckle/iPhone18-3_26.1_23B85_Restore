@interface SFWebArchiveActivityItemProvider
@end

@implementation SFWebArchiveActivityItemProvider

void __60___SFWebArchiveActivityItemProvider__webArchiveItemProvider__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60___SFWebArchiveActivityItemProvider__webArchiveItemProvider__block_invoke_2;
  v6[3] = &unk_1E8490208;
  v4 = *(a1 + 32);
  v6[4] = *(a1 + 40);
  v7 = v3;
  v5 = v3;
  [v4 generateWebArchiveWithCompletionHandler:v6];
}

void __60___SFWebArchiveActivityItemProvider__webArchiveItemProvider__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v8 = WBS_LOG_CHANNEL_PREFIXDownloads();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __60___SFWebArchiveActivityItemProvider__webArchiveItemProvider__block_invoke_2_cold_1(v8, v7);
    }
  }

  [*(*(a1 + 32) + 320) setSize:{objc_msgSend(v5, "fileSize")}];
  v9 = *(a1 + 40);
  v10 = [v5 savedURLWithProperExtension];
  (*(v9 + 16))(v9, v10, 0);
}

void __60___SFWebArchiveActivityItemProvider__webArchiveItemProvider__block_invoke_2_cold_1(void *a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_1D4644000, v3, OS_LOG_TYPE_ERROR, "Unable to generate SFQuickLookDocument for saving: %{public}@", &v5, 0xCu);
}

@end