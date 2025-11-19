@interface SFSafariSharingExtensionController
@end

@implementation SFSafariSharingExtensionController

void __98___SFSafariSharingExtensionController_runJavaScriptForSharingExtension_extraArguments_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WBS_LOG_CHANNEL_PREFIXExtensions();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __98___SFSafariSharingExtensionController_runJavaScriptForSharingExtension_extraArguments_completion___block_invoke_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  v12 = *(*(*(a1 + 32) + 8) + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, v3, 0);
    v13 = *(*(a1 + 32) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = 0;
  }

  else
  {
    v15 = WBS_LOG_CHANNEL_PREFIXExtensions();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_1D4644000, v15, OS_LOG_TYPE_DEFAULT, "completionHandler is nil, not doing anything with the result", v16, 2u);
    }
  }
}

void __98___SFSafariSharingExtensionController_runJavaScriptForSharingExtension_extraArguments_completion___block_invoke_50(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = WBS_LOG_CHANNEL_PREFIXExtensions();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v14 = 0;
      _os_log_impl(&dword_1D4644000, v4, OS_LOG_TYPE_INFO, "Timed out waiting on JavaScript to return result", v14, 2u);
    }

    (*(*(*(*(a1 + 32) + 8) + 40) + 16))();
    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = 0;
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __98___SFSafariSharingExtensionController_runJavaScriptForSharingExtension_extraArguments_completion___block_invoke_50_cold_1(v4, v7, v8, v9, v10, v11, v12, v13);
  }
}

@end