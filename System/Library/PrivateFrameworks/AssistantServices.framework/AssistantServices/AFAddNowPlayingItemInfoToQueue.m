@interface AFAddNowPlayingItemInfoToQueue
@end

@implementation AFAddNowPlayingItemInfoToQueue

void ___AFAddNowPlayingItemInfoToQueue_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v75 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a5;
  v9 = v8;
  if (v8)
  {
    v10 = [v8 domain];
    v11 = [v10 isEqualToString:*MEMORY[0x1E69B0DC0]];

    if (v11 && ((v12 = [v9 code], v12 == 35) || v12 == 4))
    {
      v13 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v14 = *(a1 + 32);
        *buf = 136315394;
        v68 = "_AFAddNowPlayingItemInfoToQueue_block_invoke";
        v69 = 2048;
        v70 = v14;
        _os_log_impl(&dword_1912FE000, v13, OS_LOG_TYPE_INFO, "%s group=%p No NowPlaying info because nothing is playing right now.", buf, 0x16u);
      }
    }

    else
    {
      v15 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        v47 = *(a1 + 32);
        *buf = 136315650;
        v68 = "_AFAddNowPlayingItemInfoToQueue_block_invoke";
        v69 = 2048;
        v70 = v47;
        v71 = 2112;
        v72 = v9;
        _os_log_error_impl(&dword_1912FE000, v15, OS_LOG_TYPE_ERROR, "%s group=%p Error getting NowPlaying queue %@", buf, 0x20u);
      }
    }
  }

  v16 = [v7 count];
  v17 = AFSiriLogContextDaemon;
  v48 = v9;
  if (!v16 && os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v18 = *(a1 + 32);
    *buf = 136315394;
    v68 = "_AFAddNowPlayingItemInfoToQueue_block_invoke";
    v69 = 2048;
    v70 = v18;
    _os_log_impl(&dword_1912FE000, v17, OS_LOG_TYPE_INFO, "%s group=%p no contentItems", buf, 0x16u);
    v17 = AFSiriLogContextDaemon;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v19 = *(a1 + 32);
    *buf = 136315906;
    v68 = "_AFAddNowPlayingItemInfoToQueue_block_invoke";
    v69 = 2048;
    v70 = v19;
    v71 = 2048;
    v72 = v16;
    v73 = 2048;
    v74 = a3;
    _os_log_impl(&dword_1912FE000, v17, OS_LOG_TYPE_INFO, "%s group=%p contentItems has %lu items location %ld", buf, 0x2Au);
  }

  if (v16 >= 1)
  {
    v20 = 0;
    v49 = a1;
    v50 = v7;
    v52 = v16;
    do
    {
      v21 = v20 + a3;
      v22 = [v7 objectAtIndex:v20];
      if (v20 + a3)
      {
        v23 = [MEMORY[0x1E69C78D8] _af_mediaItemWithMRContentItemRef:v22];
        if (v21 == 1)
        {
          v42 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
          {
            v43 = *(a1 + 32);
            v44 = v42;
            v45 = [v23 title];
            *buf = 136315650;
            v68 = "_AFAddNowPlayingItemInfoToQueue_block_invoke";
            v69 = 2048;
            v70 = v43;
            v16 = v52;
            v71 = 2112;
            v72 = v45;
            _os_log_impl(&dword_1912FE000, v44, OS_LOG_TYPE_INFO, "%s group=%p next: %@", buf, 0x20u);
          }

          [*(a1 + 40) setNextListeningToItem:v23];
        }

        else if (v21 == -1)
        {
          v24 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
          {
            v25 = *(a1 + 32);
            v26 = v24;
            v27 = [v23 title];
            *buf = 136315650;
            v68 = "_AFAddNowPlayingItemInfoToQueue_block_invoke";
            v69 = 2048;
            v70 = v25;
            v16 = v52;
            v71 = 2112;
            v72 = v27;
            _os_log_impl(&dword_1912FE000, v26, OS_LOG_TYPE_INFO, "%s group=%p previous: %@", buf, 0x20u);
          }

          [*(a1 + 40) setPreviousListenedToItem:v23];
        }
      }

      else
      {
        v53 = v20;
        v28 = MRContentItemCopyNowPlayingInfo();
        v29 = *(a1 + 32);
        v23 = v28;
        v30 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          v31 = MEMORY[0x1E696AD98];
          v32 = v30;
          v33 = [v31 numberWithUnsignedInteger:{objc_msgSend(v23, "count")}];
          *buf = 136315650;
          v68 = "_LogNowPlayingInfo";
          v69 = 2048;
          v70 = v29;
          v71 = 2112;
          v72 = v33;
          _os_log_impl(&dword_1912FE000, v32, OS_LOG_TYPE_INFO, "%s group=%p got NowPlaying info with %@ keys:", buf, 0x20u);
        }

        if (AFIsInternalInstall_onceToken != -1)
        {
          dispatch_once(&AFIsInternalInstall_onceToken, &__block_literal_global_164_46064);
        }

        if (AFIsInternalInstall_isInternal == 1)
        {
          v51 = v23;
          v57 = 0u;
          v58 = 0u;
          v55 = 0u;
          v56 = 0u;
          v34 = v23;
          v35 = [v34 countByEnumeratingWithState:&v55 objects:buf count:16];
          if (v35)
          {
            v36 = v35;
            v37 = *v56;
            do
            {
              for (i = 0; i != v36; ++i)
              {
                if (*v56 != v37)
                {
                  objc_enumerationMutation(v34);
                }

                v39 = *(*(&v55 + 1) + 8 * i);
                v40 = [v34 objectForKey:v39];
                v41 = AFSiriLogContextDaemon;
                if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
                {
                  *v59 = 136315906;
                  v60 = "_LogNowPlayingInfo";
                  v61 = 2048;
                  v62 = v29;
                  v63 = 2112;
                  v64 = v39;
                  v65 = 2112;
                  v66 = v40;
                  _os_log_impl(&dword_1912FE000, v41, OS_LOG_TYPE_INFO, "%s %p         %@ -> %@:", v59, 0x2Au);
                }
              }

              v36 = [v34 countByEnumeratingWithState:&v55 objects:buf count:16];
            }

            while (v36);
          }

          a1 = v49;
          v7 = v50;
          v16 = v52;
          v23 = v51;
        }

        [*(a1 + 40) _af_setNowPlayingInfo:v23 mediaType:MRContentItemGetMediaType()];
        v20 = v53;
      }

      ++v20;
    }

    while (v20 != v16);
  }

  dispatch_group_leave(*(a1 + 32));

  v46 = *MEMORY[0x1E69E9840];
}

@end