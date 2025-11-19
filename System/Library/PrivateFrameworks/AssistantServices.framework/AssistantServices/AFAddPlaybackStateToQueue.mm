@interface AFAddPlaybackStateToQueue
@end

@implementation AFAddPlaybackStateToQueue

void ___AFAddPlaybackStateToQueue_block_invoke(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = AFStringFromMRPlaybackState(a2);
    v15 = 136315650;
    v16 = "_AFAddPlaybackStateToQueue_block_invoke";
    v17 = 2048;
    v18 = v5;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&dword_1912FE000, v6, OS_LOG_TYPE_INFO, "%s group=%p MRMediaRemoteGetNowPlayingApplicationPlaybackState gave us state %@", &v15, 0x20u);
  }

  if (a2 == 4)
  {
    v8 = AFSiriLogContextUtility;
    if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      v10 = *(a1 + 48);
      v11 = v8;
      v12 = AFStringFromMRPlaybackState(v10);
      v15 = 136315650;
      v16 = "_AFAddPlaybackStateToQueue_block_invoke";
      v17 = 2048;
      v18 = v9;
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&dword_1912FE000, v11, OS_LOG_TYPE_INFO, "%s group=%p Treating kMRPlaybackStateInterrupted as %@", &v15, 0x20u);
    }

    LODWORD(a2) = *(a1 + 48);
  }

  if ((a2 - 1) > 4)
  {
    v13 = 0;
  }

  else
  {
    v13 = dword_1914CFE54[(a2 - 1)];
  }

  [*(a1 + 40) setState:v13];
  dispatch_group_leave(*(a1 + 32));
  v14 = *MEMORY[0x1E69E9840];
}

@end