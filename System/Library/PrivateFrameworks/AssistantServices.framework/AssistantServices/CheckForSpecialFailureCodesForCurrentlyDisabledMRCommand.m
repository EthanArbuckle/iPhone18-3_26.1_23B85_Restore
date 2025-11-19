@interface CheckForSpecialFailureCodesForCurrentlyDisabledMRCommand
@end

@implementation CheckForSpecialFailureCodesForCurrentlyDisabledMRCommand

void ___CheckForSpecialFailureCodesForCurrentlyDisabledMRCommand_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = MEMORY[0x1E69C7778];
  v7 = a2;
  v8 = [v6 alloc];
  v9 = [v8 initWithErrorCode:*MEMORY[0x1E69C8050]];
  v10 = [v7 objectForKey:*MEMORY[0x1E69B0F28]];

  v11 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v12 = &stru_1F0512680;
    *v15 = 136315650;
    *&v15[4] = "_CheckForSpecialFailureCodesForCurrentlyDisabledMRCommand_block_invoke";
    *&v15[12] = 2112;
    if (v5)
    {
      v12 = v5;
    }

    *&v15[14] = v10;
    v16 = 2112;
    v17 = v12;
    _os_log_impl(&dword_1912FE000, v11, OS_LOG_TYPE_INFO, "%s kMRMediaRemoteNowPlayingInfoIsAlwaysLive = %@ %@", v15, 0x20u);
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [v10 BOOLValue])
  {
    v13 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      *v15 = 136315138;
      *&v15[4] = "_CheckForSpecialFailureCodesForCurrentlyDisabledMRCommand_block_invoke";
      _os_log_impl(&dword_1912FE000, v13, OS_LOG_TYPE_INFO, "%s Reporting SAMPExceededSkipLimitErrorCode instead, because media is always live", v15, 0xCu);
    }

    [v9 setErrorCode:{*MEMORY[0x1E69C8038], *v15}];
  }

  (*(*(a1 + 32) + 16))();

  v14 = *MEMORY[0x1E69E9840];
}

@end