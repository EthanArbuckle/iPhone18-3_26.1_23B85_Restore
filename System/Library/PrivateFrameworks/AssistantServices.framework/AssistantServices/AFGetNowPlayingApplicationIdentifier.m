@interface AFGetNowPlayingApplicationIdentifier
@end

@implementation AFGetNowPlayingApplicationIdentifier

void ___AFGetNowPlayingApplicationIdentifier_block_invoke_118(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = MRNowPlayingClientGetBundleIdentifier();
  }

  else
  {
    v4 = a3;
    if (a3)
    {
      v5 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        v7 = 136315394;
        v8 = "_AFGetNowPlayingApplicationIdentifier_block_invoke";
        v9 = 2112;
        v10 = v4;
        _os_log_error_impl(&dword_1912FE000, v5, OS_LOG_TYPE_ERROR, "%s MRMediaRemoteGetNowPlayingClient failed with error %@", &v7, 0x16u);
      }

      v4 = 0;
    }
  }

  (*(*(a1 + 32) + 16))();

  v6 = *MEMORY[0x1E69E9840];
}

void ___AFGetNowPlayingApplicationIdentifier_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___AFGetNowPlayingApplicationIdentifier_block_invoke_2;
  block[3] = &unk_1E73496E8;
  v11 = v5;
  v12 = v6;
  v7 = *(a1 + 32);
  v13 = *(a1 + 40);
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, block);
}

void ___AFGetNowPlayingApplicationIdentifier_block_invoke_2(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  if (v2 && !a1[5])
  {
    v5 = a1[6];
    v10 = [v2 playerPath];
    v6 = [v10 client];
    v7 = [v6 bundleIdentifier];
    (*(v5 + 16))(v5, v7);

    v8 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v3 = AFSiriLogContextUtility;
    if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_ERROR))
    {
      v9 = a1[5];
      *buf = 136315394;
      v12 = "_AFGetNowPlayingApplicationIdentifier_block_invoke_2";
      v13 = 2112;
      v14 = v9;
      _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s Failed to get response: %@", buf, 0x16u);
    }

    (*(a1[6] + 16))();
    v4 = *MEMORY[0x1E69E9840];
  }
}

@end