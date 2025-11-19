@interface AFGetNowPlayingInfoDictionary
@end

@implementation AFGetNowPlayingInfoDictionary

void ___AFGetNowPlayingInfoDictionary_block_invoke_120(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a5;
  [a2 firstObject];
  v8 = MRContentItemCopyNowPlayingInfo();
  (*(*(a1 + 32) + 16))();
}

void ___AFGetNowPlayingInfoDictionary_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___AFGetNowPlayingInfoDictionary_block_invoke_2;
  block[3] = &unk_1E73496E8;
  v11 = v5;
  v12 = v6;
  v7 = *(a1 + 32);
  v13 = *(a1 + 40);
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, block);
}

void ___AFGetNowPlayingInfoDictionary_block_invoke_2(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  if (v2 && !a1[5])
  {
    v6 = [v2 playbackQueue];
    v7 = [v6 contentItems];
    v12 = [v7 firstObject];

    v8 = a1[6];
    v9 = [v12 nowPlayingInfo];
    (*(v8 + 16))(v8, v9, 0);

    v10 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v3 = AFSiriLogContextUtility;
    if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_ERROR))
    {
      v11 = a1[5];
      *buf = 136315394;
      v14 = "_AFGetNowPlayingInfoDictionary_block_invoke_2";
      v15 = 2112;
      v16 = v11;
      _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s Failed to get response: %@", buf, 0x16u);
    }

    v4 = a1[5];
    (*(a1[6] + 16))();
    v5 = *MEMORY[0x1E69E9840];
  }
}

@end