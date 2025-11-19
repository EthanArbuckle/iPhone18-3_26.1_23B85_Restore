@interface ANPlaybackManager
+ (id)managerWithEndpointID:(id)a3;
- (ANPlaybackManager)initWithEndpointID:(id)a3;
- (ANPlaybackManagerDataSource)dataSource;
- (ANPlaybackManagerDelegate)delegate;
- (BOOL)_playAnnouncements:(id)a3 announceIDToStart:(id)a4 options:(unint64_t)a5 completionHandler:(id)a6;
- (BOOL)_playAnnouncementsWithIDs:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5;
- (BOOL)_startPlayingAnnouncements;
- (NSDictionary)lastPlayedAnnouncementInfo;
- (id)_announcementsForPlaybackOptions:(unint64_t)a3 fromAnnouncements:(id)a4;
- (id)_createTrackPlayerWithAnnouncement:(id)a3 options:(unint64_t)a4 anchorPoint:(unint64_t *)a5;
- (id)_nextAnnouncementToPlay;
- (unint64_t)playbackItemCount;
- (unint64_t)playbackState;
- (void)_addAdditionalAnnouncementsIfNeeded;
- (void)_handlePlaybackEndedForPlayer:(id)a3 withError:(id)a4;
- (void)_nextAnnouncementWithCompletionHandler:(id)a3;
- (void)_previousAnnouncementWithCompletionHandler:(id)a3;
- (void)_startPlayingAnnouncements;
- (void)_stopAudioPlayer;
- (void)_stopPlayingAnnouncementsWithCompletionHandler:(id)a3;
- (void)_updatePlaybackInfoForAnnouncementID:(id)a3 options:(unint64_t)a4 player:(id)a5;
- (void)performPlaybackCommand:(id)a3 completionHandler:(id)a4;
- (void)playWithTonePlayer:(ANTonePlayer *)a3 toneFileURL:(NSURL *)a4 trackPlayer:(ANTrackPlayer *)a5 completionHandler:(id)a6;
- (void)trackPlayer:(id)a3 didFinishPlayingTrackType:(int64_t)a4 announcementID:(id)a5 error:(id)a6;
- (void)trackPlayer:(id)a3 didUpdatePlaybackState:(unint64_t)a4 announcementID:(id)a5;
- (void)updatePlaybackForAnnouncementID:(id)a3 options:(unint64_t)a4;
@end

@implementation ANPlaybackManager

- (ANPlaybackManager)initWithEndpointID:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = ANPlaybackManager;
  v6 = [(ANPlaybackManager *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_endpointID, a3);
    v8 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v9 = dispatch_queue_create("com.apple.announce.playbackQueue", v8);
    playbackQueue = v7->_playbackQueue;
    v7->_playbackQueue = v9;

    v11 = objc_opt_new();
    playbackInfo = v7->_playbackInfo;
    v7->_playbackInfo = v11;

    ANLogBuildCategoryName();
    v13 = ANLogWithCategory();
    log = v7->_log;
    v7->_log = v13;
  }

  return v7;
}

+ (id)managerWithEndpointID:(id)a3
{
  v3 = a3;
  v4 = [[ANPlaybackManager alloc] initWithEndpointID:v3];

  return v4;
}

- (void)performPlaybackCommand:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(ANPlaybackManager *)self playbackQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__ANPlaybackManager_performPlaybackCommand_completionHandler___block_invoke;
  v11[3] = &unk_278C86A80;
  objc_copyWeak(&v14, &location);
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __62__ANPlaybackManager_performPlaybackCommand_completionHandler___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    *buf = 138412290;
    v28 = v4;
    _os_log_impl(&dword_23F525000, v3, OS_LOG_TYPE_DEFAULT, "Performing Playback Command: %@", buf, 0xCu);
  }

  v5 = [*(a1 + 32) operation];
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      [WeakRetained _nextAnnouncementWithCompletionHandler:*(a1 + 40)];
      goto LABEL_16;
    }

    if (v5 == 3)
    {
      [WeakRetained _previousAnnouncementWithCompletionHandler:*(a1 + 40)];
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  if (!v5)
  {
    v8 = [*(a1 + 32) announcementIdentifiers];
    v9 = [WeakRetained _playAnnouncementsWithIDs:v8 options:objc_msgSend(*(a1 + 32) completionHandler:{"options"), *(a1 + 40)}];

    if (!v9)
    {
      goto LABEL_16;
    }

    v10 = [WeakRetained announcementsToPlay];
    v7 = [v10 lastObject];

    if (v7)
    {
      v11 = [WeakRetained endpointID];
      v26 = [ANAnalyticsContext contextWithEndpointID:v11];

      v12 = +[ANAnalytics shared];
      v13 = [MEMORY[0x277CBEAA8] now];
      v14 = [v7 creationTimestamp];
      [v13 timeIntervalSinceDate:v14];
      v16 = v15;
      v17 = [MEMORY[0x277CBEAA8] now];
      v18 = [v7 playbackDeadline];
      [v17 timeIntervalSinceDate:v18];
      v20 = v19;
      v21 = MEMORY[0x277CEAB48];
      v22 = [*(a1 + 32) clientIdentifier];
      v23 = [v21 sourceFromString:v22];
      v24 = [WeakRetained announcementsToPlay];
      [v12 announcementPlayed:v7 withTime:v23 deadlineViolation:objc_msgSend(v24 playbackSource:"count") ofGroupCount:v26 context:{v16, v20}];
    }

LABEL_14:

    goto LABEL_16;
  }

  if (v5 != 1)
  {
LABEL_10:
    v6 = *(a1 + 40);
    v7 = [MEMORY[0x277CCA9B8] an_errorWithCode:1050 component:*MEMORY[0x277CEA9C0]];
    (*(v6 + 16))(v6, v7);
    goto LABEL_14;
  }

  [WeakRetained _stopPlayingAnnouncementsWithCompletionHandler:*(a1 + 40)];
LABEL_16:

  v25 = *MEMORY[0x277D85DE8];
}

- (void)updatePlaybackForAnnouncementID:(id)a3 options:(unint64_t)a4
{
  v6 = a3;
  v7 = [(ANPlaybackManager *)self playbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__ANPlaybackManager_updatePlaybackForAnnouncementID_options___block_invoke;
  block[3] = &unk_278C866B8;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(v7, block);
}

- (NSDictionary)lastPlayedAnnouncementInfo
{
  v3 = [(ANPlaybackManager *)self playbackQueue];
  dispatch_assert_queue_not_V2(v3);

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__2;
  v12 = __Block_byref_object_dispose__2;
  v13 = 0;
  v4 = [(ANPlaybackManager *)self playbackQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__ANPlaybackManager_lastPlayedAnnouncementInfo__block_invoke;
  v7[3] = &unk_278C86AA8;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(v4, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __47__ANPlaybackManager_lastPlayedAnnouncementInfo__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) playbackInfo];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (unint64_t)playbackState
{
  v2 = [(ANPlaybackManager *)self audioPlayer];
  v3 = [v2 playbackState];

  return v3;
}

- (unint64_t)playbackItemCount
{
  v2 = [(ANPlaybackManager *)self announcementsToPlay];
  v3 = [v2 count];

  return v3;
}

- (void)_updatePlaybackInfoForAnnouncementID:(id)a3 options:(unint64_t)a4 player:(id)a5
{
  v57 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [(ANPlaybackManager *)self playbackQueue];
  dispatch_assert_queue_V2(v10);

  v11 = [(ANPlaybackManager *)self log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4 & 1];
    LODWORD(v56[0]) = 138412546;
    *(v56 + 4) = v8;
    WORD2(v56[1]) = 2112;
    *(&v56[1] + 6) = v12;
    _os_log_impl(&dword_23F525000, v11, OS_LOG_TYPE_DEFAULT, "Updating Playback Info with Announcement ID = %@, Playing = %@", v56, 0x16u);
  }

  v13 = [(ANPlaybackManager *)self log];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [(ANPlaybackManager *)self playbackInfo];
    LODWORD(v56[0]) = 138412290;
    *(v56 + 4) = v14;
    _os_log_impl(&dword_23F525000, v13, OS_LOG_TYPE_DEFAULT, "[BEFORE] Playback Info: %@", v56, 0xCu);
  }

  if ((a4 & 1) == 0)
  {
    v15 = [(ANPlaybackManager *)self playbackInfo];
    v16 = *MEMORY[0x277CEA790];
    v17 = [v15 objectForKeyedSubscript:*MEMORY[0x277CEA790]];

    v18 = [(ANPlaybackManager *)self playbackInfo];
    v19 = *MEMORY[0x277CEA770];
    v20 = [v18 objectForKeyedSubscript:*MEMORY[0x277CEA770]];

    if (v17)
    {
      v21 = [v17 BOOLValue];
      if (v8)
      {
        if (!v21 && v20 && [v20 isEqualToString:v8])
        {
          v22 = [(ANPlaybackManager *)self log];
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(v56[0]) = 138412290;
            *(v56 + 4) = v8;
            _os_log_impl(&dword_23F525000, v22, OS_LOG_TYPE_DEFAULT, "Ignoring dupe stop update for Announcement %@", v56, 0xCu);
          }

          goto LABEL_39;
        }
      }
    }

    v31 = [(ANPlaybackManager *)self playbackInfo];
    [v31 setObject:&unk_2851C49F8 forKeyedSubscript:v16];

    v32 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:mach_absolute_time()];
    v33 = [(ANPlaybackManager *)self playbackInfo];
    [v33 setObject:v32 forKeyedSubscript:*MEMORY[0x277CEA788]];

    v34 = [MEMORY[0x277CBEAA8] date];
    v35 = [(ANPlaybackManager *)self playbackInfo];
    [v35 setObject:v34 forKeyedSubscript:*MEMORY[0x277CEA780]];

    if (v9)
    {
      v36 = MEMORY[0x277CCAE60];
      v37 = [v9 queuePlayer];
      v38 = v37;
      if (v37)
      {
        [v37 currentTime];
      }

      else
      {
        memset(v56, 0, sizeof(v56));
      }

      v39 = [v36 valueWithCMTime:v56];
      v40 = [(ANPlaybackManager *)self playbackInfo];
      [v40 setObject:v39 forKeyedSubscript:*MEMORY[0x277CEA778]];
    }

    if (!v8)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (v8)
  {
    v23 = [(ANPlaybackManager *)self playbackInfo];
    [v23 setObject:&unk_2851C49E0 forKeyedSubscript:*MEMORY[0x277CEA790]];

    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:mach_absolute_time()];
    v25 = [(ANPlaybackManager *)self playbackInfo];
    [v25 setObject:v24 forKeyedSubscript:*MEMORY[0x277CEA7A8]];

    v26 = [MEMORY[0x277CBEAA8] date];
    v27 = [(ANPlaybackManager *)self playbackInfo];
    [v27 setObject:v26 forKeyedSubscript:*MEMORY[0x277CEA7A0]];

    if (v9)
    {
      v28 = MEMORY[0x277CCAE60];
      v29 = [v9 queuePlayer];
      v30 = v29;
      if (v29)
      {
        [v29 currentTime];
      }

      else
      {
        memset(v56, 0, sizeof(v56));
      }

      v41 = [v28 valueWithCMTime:v56];
      v42 = [(ANPlaybackManager *)self playbackInfo];
      [v42 setObject:v41 forKeyedSubscript:*MEMORY[0x277CEA798]];
    }

    v43 = [(ANPlaybackManager *)self playbackInfo:v56[0]];
    [v43 setObject:0 forKeyedSubscript:*MEMORY[0x277CEA788]];

    v44 = [(ANPlaybackManager *)self playbackInfo];
    [v44 setObject:0 forKeyedSubscript:*MEMORY[0x277CEA780]];

    v45 = [(ANPlaybackManager *)self playbackInfo];
    [v45 setObject:0 forKeyedSubscript:*MEMORY[0x277CEA778]];

    v19 = *MEMORY[0x277CEA770];
LABEL_30:
    v46 = [(ANPlaybackManager *)self playbackInfo:v56[0]];
    [v46 setObject:v8 forKeyedSubscript:v19];

LABEL_31:
    v47 = [(ANPlaybackManager *)self playbackInfo:v56[0]];
    v17 = [v47 objectForKeyedSubscript:v19];

    if (v17)
    {
      v48 = [(ANPlaybackManager *)self delegate];
      v49 = v48;
      if (a4)
      {
        [v48 playbackManager:self didStartPlayingAnnouncement:v17];
      }

      else
      {
        [v48 playbackManager:self didFinishPlayingAnnouncement:v17 withOptions:a4];
      }
    }

    v50 = [(ANPlaybackManager *)self log];
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      v51 = [(ANPlaybackManager *)self playbackInfo];
      LODWORD(v56[0]) = 138412290;
      *(v56 + 4) = v51;
      _os_log_impl(&dword_23F525000, v50, OS_LOG_TYPE_DEFAULT, "[AFTER] Playback Info: %@", v56, 0xCu);
    }

    v52 = [(ANPlaybackManager *)self delegate];
    v53 = [(ANPlaybackManager *)self playbackInfo];
    v54 = [v53 copy];
    [v52 playbackManager:self didUpdatePlaybackInfo:v54];

    goto LABEL_39;
  }

  v17 = [(ANPlaybackManager *)self log];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    [ANPlaybackManager _updatePlaybackInfoForAnnouncementID:v17 options:? player:?];
  }

LABEL_39:

  v55 = *MEMORY[0x277D85DE8];
}

- (void)_stopPlayingAnnouncementsWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(ANPlaybackManager *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_23F525000, v5, OS_LOG_TYPE_DEFAULT, "Stopping Playback", v8, 2u);
  }

  [(ANPlaybackManager *)self _stopAudioPlayer];
  v6 = [MEMORY[0x277CCA9B8] an_errorWithCode:1037 component:*MEMORY[0x277CEA9C0]];
  v7 = [(ANPlaybackManager *)self audioPlayer];
  [(ANPlaybackManager *)self _handlePlaybackEndedForPlayer:v7 withError:v6];

  v4[2](v4, 0);
}

- (void)_nextAnnouncementWithCompletionHandler:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ANPlaybackManager *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 136315138;
    v20 = "[ANPlaybackManager _nextAnnouncementWithCompletionHandler:]";
    _os_log_impl(&dword_23F525000, v5, OS_LOG_TYPE_DEFAULT, "%s", &v19, 0xCu);
  }

  v6 = [(ANPlaybackManager *)self audioPlayer];
  v7 = [v6 playbackState];

  if (v7 == 1)
  {
    [(ANPlaybackManager *)self _addAdditionalAnnouncementsIfNeeded];
    v8 = [(ANPlaybackManager *)self audioPlayer];
    v9 = [v8 numberActiveTracks];

    if (v9 > 1)
    {
      v13 = [(ANPlaybackManager *)self audioPlayer];
      [v13 nextWithCompletionHandler:v4];
      goto LABEL_9;
    }

    v10 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277CEA9C0];
    v12 = 1021;
  }

  else
  {
    v10 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277CEA9C0];
    v12 = 1020;
  }

  v13 = [v10 an_errorWithCode:v12 component:v11];
  v4[2](v4, v13);
  v14 = +[ANAnalytics shared];
  v15 = [v13 code];
  v16 = [(ANPlaybackManager *)self endpointID];
  v17 = [ANAnalyticsContext contextWithEndpointID:v16];
  [v14 error:v15 context:v17];

LABEL_9:
  v18 = *MEMORY[0x277D85DE8];
}

- (void)_previousAnnouncementWithCompletionHandler:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ANPlaybackManager *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315138;
    v15 = "[ANPlaybackManager _previousAnnouncementWithCompletionHandler:]";
    _os_log_impl(&dword_23F525000, v5, OS_LOG_TYPE_DEFAULT, "%s", &v14, 0xCu);
  }

  v6 = [(ANPlaybackManager *)self audioPlayer];
  v7 = [v6 playbackState];

  if (v7 == 1)
  {
    v8 = [(ANPlaybackManager *)self audioPlayer];
    [v8 previousWithCompletionHandler:v4];
  }

  else
  {
    v8 = [MEMORY[0x277CCA9B8] an_errorWithCode:1020 component:*MEMORY[0x277CEA9C0]];
    v4[2](v4, v8);
    v9 = +[ANAnalytics shared];
    v10 = [v8 code];
    v11 = [(ANPlaybackManager *)self endpointID];
    v12 = [ANAnalyticsContext contextWithEndpointID:v11];
    [v9 error:v10 context:v12];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)_playAnnouncements:(id)a3 announceIDToStart:(id)a4 options:(unint64_t)a5 completionHandler:(id)a6
{
  v46 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(ANPlaybackManager *)self audioPlayer];
  v14 = [v13 playbackState];

  if (v14)
  {
    v15 = [(ANPlaybackManager *)self log];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349056;
      v45 = v14;
      _os_log_impl(&dword_23F525000, v15, OS_LOG_TYPE_DEFAULT, "Already playing. Current playback state = %{public}lu. Stopping before proceeding.", buf, 0xCu);
    }

    [(ANPlaybackManager *)self _stopAudioPlayer];
    v16 = [(ANPlaybackManager *)self audioPlayer];
    [(ANPlaybackManager *)self _handlePlaybackEndedForPlayer:v16 withError:0];
  }

  self->_playbackOptions = a5;
  [(ANPlaybackManager *)self setLastAnnoucementIndex:0];
  v17 = [(ANPlaybackManager *)self dataSource];
  [v17 cleanUpOldAnnouncementsForPlaybackManager:self];

  v18 = objc_alloc(MEMORY[0x277CBEB40]);
  v19 = [(ANPlaybackManager *)self _announcementsForPlaybackOptions:a5 fromAnnouncements:v10];
  v20 = [v18 initWithArray:v19];
  [(ANPlaybackManager *)self setAnnouncementsToPlay:v20];

  if (v11)
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v21 = [(ANPlaybackManager *)self announcementsToPlay];
    v22 = [v21 countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v40;
LABEL_8:
      v25 = 0;
      while (1)
      {
        if (*v40 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = [*(*(&v39 + 1) + 8 * v25) identifier];
        v27 = [v26 isEqual:v11];

        if (v27)
        {
          break;
        }

        [(ANPlaybackManager *)self setLastAnnoucementIndex:[(ANPlaybackManager *)self lastAnnoucementIndex]+ 1];
        if (v23 == ++v25)
        {
          v23 = [v21 countByEnumeratingWithState:&v39 objects:v43 count:16];
          if (v23)
          {
            goto LABEL_8;
          }

          break;
        }
      }
    }

    v28 = [(ANPlaybackManager *)self lastAnnoucementIndex];
    v29 = [(ANPlaybackManager *)self announcementsToPlay];
    v30 = [v29 count];

    if (v28 >= v30)
    {
      [(ANPlaybackManager *)self setLastAnnoucementIndex:0];
    }
  }

  v31 = [(ANPlaybackManager *)self announcementsToPlay];
  v32 = [v31 count];

  if (v32)
  {
    [(ANPlaybackManager *)self setPlaybackCompletionHandler:v12];
    v33 = [(ANPlaybackManager *)self _startPlayingAnnouncements];
  }

  else
  {
    v34 = [(ANPlaybackManager *)self log];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23F525000, v34, OS_LOG_TYPE_DEFAULT, "Received playback request but there is nothing to play. Not returning error.", buf, 2u);
    }

    [(ANPlaybackManager *)self setAnnouncementsToPlay:0];
    v12[2](v12, 0);
    v35 = [(ANPlaybackManager *)self delegate];
    v36 = [(ANPlaybackManager *)self audioPlayer];
    [v35 playbackManager:self didUpdatePlaybackState:objc_msgSend(v36 announcement:{"playbackState"), 0}];

    v33 = 0;
  }

  v37 = *MEMORY[0x277D85DE8];
  return v33;
}

- (BOOL)_playAnnouncementsWithIDs:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [v8 firstObject];
  v11 = [(ANPlaybackManager *)self log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 136315650;
    v20 = "[ANPlaybackManager _playAnnouncementsWithIDs:options:completionHandler:]";
    v21 = 2112;
    v22 = v10;
    v23 = 2048;
    v24 = a4;
    _os_log_impl(&dword_23F525000, v11, OS_LOG_TYPE_DEFAULT, "%s: announceIDToStart %@, options %ld", &v19, 0x20u);
  }

  v12 = [v8 count];
  v13 = [(ANPlaybackManager *)self dataSource];
  v14 = v13;
  if (v12)
  {
    [v13 playbackManager:self announcementsForIdentifiers:v8];
  }

  else
  {
    [v13 announcementsForPlaybackManager:self];
  }
  v15 = ;

  v16 = [(ANPlaybackManager *)self _playAnnouncements:v15 announceIDToStart:v10 options:a4 completionHandler:v9];
  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (id)_announcementsForPlaybackOptions:(unint64_t)a3 fromAnnouncements:(id)a4
{
  v4 = a3;
  v5 = ~a3;
  v6 = a4;
  v7 = v6;
  if ((v5 & 0xC0) == 0)
  {
    goto LABEL_2;
  }

  if (v4 < 0)
  {
    v8 = [v6 unplayedAnnouncements];
  }

  else
  {
    if ((v4 & 0x40) == 0)
    {
LABEL_2:
      v8 = v6;
      goto LABEL_7;
    }

    v8 = [v6 playedAnnouncements];
  }

LABEL_7:
  v9 = v8;

  return v9;
}

- (id)_nextAnnouncementToPlay
{
  v56 = *MEMORY[0x277D85DE8];
  if (([(ANPlaybackManager *)self playbackOptions]& 0x20) != 0)
  {
    v3 = [(ANPlaybackManager *)self log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23F525000, v3, OS_LOG_TYPE_DEFAULT, "Checking for new announcements to play", buf, 2u);
    }

    v4 = [(ANPlaybackManager *)self dataSource];
    v5 = [v4 announcementsForPlaybackManager:self];

    v44 = v5;
    v6 = [(ANPlaybackManager *)self _announcementsForPlaybackOptions:[(ANPlaybackManager *)self playbackOptions] fromAnnouncements:v5];
    v7 = [(ANPlaybackManager *)self log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(ANPlaybackManager *)self playbackOptions];
      v9 = [v6 count];
      *buf = 134218240;
      v50 = v8;
      v51 = 2048;
      v52 = v9;
      _os_log_impl(&dword_23F525000, v7, OS_LOG_TYPE_DEFAULT, "Current Announcements in Storage for Playback Options (%lu): %lu", buf, 0x16u);
    }

    v10 = [(ANPlaybackManager *)self log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(ANPlaybackManager *)self announcementsToPlay];
      v12 = [v11 count];
      *buf = 134217984;
      v50 = v12;
      _os_log_impl(&dword_23F525000, v10, OS_LOG_TYPE_DEFAULT, "Current Announcements in Playback Queue: = %lu", buf, 0xCu);
    }

    v13 = [(ANPlaybackManager *)self announcementsToPlay];
    v14 = [v13 lastObject];

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v15 = v6;
    v16 = [v15 countByEnumeratingWithState:&v45 objects:v55 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v46;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v46 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v45 + 1) + 8 * i);
          v21 = [v14 receiptTimestamp];
          [v21 timeIntervalSince1970];
          v23 = v22;
          v24 = [v20 receiptTimestamp];
          [v24 timeIntervalSince1970];
          v26 = v25;

          if (v23 <= v26)
          {
            v27 = [(ANPlaybackManager *)self announcementsToPlay];
            v28 = [v27 containsObject:v20];

            if ((v28 & 1) == 0)
            {
              v29 = [(ANPlaybackManager *)self announcementsToPlay];
              [v29 addObject:v20];

              v30 = [(ANPlaybackManager *)self log];
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
              {
                v31 = [v20 identifier];
                *buf = 138412290;
                v50 = v31;
                _os_log_impl(&dword_23F525000, v30, OS_LOG_TYPE_DEFAULT, "Added Announcement to Play Queue: %@", buf, 0xCu);
              }
            }
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v45 objects:v55 count:16];
      }

      while (v17);
    }
  }

  v32 = [(ANPlaybackManager *)self announcementsToPlay];
  if (v32)
  {
    v33 = [(ANPlaybackManager *)self announcementsToPlay];
    v34 = [v33 count];
    v35 = [(ANPlaybackManager *)self lastAnnoucementIndex];

    if (v34 <= v35)
    {
      v32 = 0;
    }

    else
    {
      v36 = [(ANPlaybackManager *)self announcementsToPlay];
      v32 = [v36 objectAtIndex:{-[ANPlaybackManager lastAnnoucementIndex](self, "lastAnnoucementIndex")}];

      v37 = [(ANPlaybackManager *)self log];
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = [(ANPlaybackManager *)self lastAnnoucementIndex]+ 1;
        v39 = [(ANPlaybackManager *)self announcementsToPlay];
        v40 = [v39 count];
        v41 = [v32 identifier];
        *buf = 134218498;
        v50 = v38;
        v51 = 2048;
        v52 = v40;
        v53 = 2112;
        v54 = v41;
        _os_log_impl(&dword_23F525000, v37, OS_LOG_TYPE_DEFAULT, "Next Announcement To Play (%ld of %ld): %@", buf, 0x20u);
      }

      [(ANPlaybackManager *)self setLastAnnoucementIndex:[(ANPlaybackManager *)self lastAnnoucementIndex]+ 1];
    }
  }

  v42 = *MEMORY[0x277D85DE8];

  return v32;
}

- (id)_createTrackPlayerWithAnnouncement:(id)a3 options:(unint64_t)a4 anchorPoint:(unint64_t *)a5
{
  v63 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [v8 playbackDeadline];
  v10 = [(ANPlaybackManager *)self log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.value) = 138412290;
    *(&buf.value + 4) = v9;
    _os_log_impl(&dword_23F525000, v10, OS_LOG_TYPE_DEFAULT, "PlaybackDeadline: %@", &buf, 0xCu);
  }

  if ((a4 & 0x10) != 0)
  {
    v14 = [ANAnchorTrackPlayer alloc];
    v15 = [(ANPlaybackManager *)self endpointID];
    v16 = [(ANTrackPlayer *)v14 initWithOptions:a4 endpointUUID:v15];

    v13 = v16;
    memset(&buf, 0, sizeof(buf));
    if (v8)
    {
      [v8 cmStartTime];
    }

    v17 = [v8 machStartTime];
    if ((a4 & 4) != 0)
    {
      memset(&v60, 0, sizeof(v60));
      HostTimeClock = CMClockGetHostTimeClock();
      CMClockGetTime(&v60, HostTimeClock);
      time1 = v60;
      time2 = buf;
      if (CMTimeCompare(&time1, &time2) == 1)
      {
        [MEMORY[0x277CEABE0] machTimeToSeconds:v17];
        v20 = v19;
        if (([v8 statusFlags] & 3) == 0)
        {
          v21 = [(ANPlaybackManager *)self log];
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            [MEMORY[0x277CEABE0] machTimeToSeconds:mach_absolute_time()];
            LODWORD(time1.value) = 134218240;
            *(&time1.value + 4) = v20;
            LOWORD(time1.flags) = 2048;
            *(&time1.flags + 2) = v22;
            _os_log_impl(&dword_23F525000, v21, OS_LOG_TYPE_DEFAULT, "Announcement will play in the past: %f, now: %f", &time1, 0x16u);
          }

          v23 = +[ANAnalytics shared];
          v24 = [(ANPlaybackManager *)self endpointID];
          v25 = [ANAnalyticsContext contextWithEndpointID:v24];
          [v23 error:5003 context:v25];
        }

        [MEMORY[0x277CEABE0] machTimeToSeconds:mach_absolute_time()];
        v27 = v26;
        v28 = [MEMORY[0x277CEAB80] sharedInstance];
        v29 = [v28 numberForDefault:*MEMORY[0x277CEA840]];
        [v29 doubleValue];
        v31 = v30;

        CMTimeMakeWithSeconds(&time2, v31, v60.timescale);
        v58 = v60;
        CMTimeAdd(&time1, &v58, &time2);
        buf = time1;
        v17 = [MEMORY[0x277CEABE0] secondsToMachTime:v27 + v31];
        v32 = [(ANPlaybackManager *)self log];
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(time1.value) = 134218240;
          *(&time1.value + 4) = buf.value / buf.timescale;
          LOWORD(time1.flags) = 2048;
          *(&time1.flags + 2) = v17;
          _os_log_impl(&dword_23F525000, v32, OS_LOG_TYPE_DEFAULT, "Updated CM Start Time = %lld, Mach Start Time = %llu", &time1, 0x16u);
        }
      }
    }

    v60 = buf;
    [(ANSimpleTrackPlayer *)v13 setStartTime:&v60];
    *a5 = v17;
  }

  else
  {
    v11 = [ANSimpleTrackPlayer alloc];
    v12 = [(ANPlaybackManager *)self endpointID];
    v13 = [(ANTrackPlayer *)v11 initWithOptions:a4 endpointUUID:v12];

    *a5 = mach_absolute_time();
  }

  [(ANTrackPlayer *)v13 setDelegate:self];
  v33 = [(ANPlaybackManager *)self playbackQueue];
  [(ANTrackPlayer *)v13 setDelegateQueue:v33];

  v34 = [MEMORY[0x277CEAB80] sharedInstance];
  v35 = [v34 numberForDefault:*MEMORY[0x277CEA858]];
  [v35 doubleValue];
  [(ANTrackPlayer *)v13 setSilenceBetweenEachTrack:v36 / 1000.0];

  if ((a4 & 2) != 0)
  {
    v37 = MEMORY[0x277CBEBC0];
    v38 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v39 = [v38 pathForResource:@"AnnounceNotification" ofType:@"wav"];
    v40 = [v37 fileURLWithPath:v39];
    [(ANTrackPlayer *)v13 setAudioFileAtStart:v40];

    v41 = [MEMORY[0x277CEAB80] sharedInstance];
    v42 = [v41 numberForDefault:*MEMORY[0x277CEA860]];
    [v42 doubleValue];
    v44 = v43;

    [(ANTrackPlayer *)v13 setTrimStartTone:v44];
  }

  if ((a4 & 8) == 0)
  {
    v45 = MEMORY[0x277CBEBC0];
    v46 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v47 = [v46 pathForResource:@"AnnounceInBetween" ofType:@"wav"];
    v48 = [v45 fileURLWithPath:v47];
    [(ANTrackPlayer *)v13 setAudioFileTransition:v48];

    v49 = [MEMORY[0x277CEAB80] sharedInstance];
    v50 = [v49 numberForDefault:*MEMORY[0x277CEA870]];
    [v50 doubleValue];
    v52 = v51;

    [(ANTrackPlayer *)v13 setTrimTransitionTone:v52];
  }

  v53 = [MEMORY[0x277CEAB80] sharedInstance];
  v54 = [v53 numberForDefault:*MEMORY[0x277CEA848]];
  [v54 doubleValue];
  [(ANTrackPlayer *)v13 setPreviousSkipGoesToPreviousTrackDelta:v55 / 1000.0];

  v56 = *MEMORY[0x277D85DE8];

  return v13;
}

- (BOOL)_startPlayingAnnouncements
{
  v50 = *MEMORY[0x277D85DE8];
  v3 = [(ANPlaybackManager *)self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(ANPlaybackManager *)self announcementsToPlay];
    v5 = [v4 count];
    v6 = v5 - [(ANPlaybackManager *)self lastAnnoucementIndex];
    v7 = [(ANPlaybackManager *)self announcementsToPlay];
    *buf = 134218240;
    v47 = v6;
    v48 = 2048;
    v49 = [v7 count];
    _os_log_impl(&dword_23F525000, v3, OS_LOG_TYPE_DEFAULT, "Will Play (%ld of %ld) Announcements", buf, 0x16u);
  }

  v8 = [(ANPlaybackManager *)self _nextAnnouncementToPlay];
  if (v8)
  {
    v9 = [(ANPlaybackManager *)self endpointID];
    v10 = [v9 an_isLocalDevice];

    if (v10)
    {
      v11 = [(ANPlaybackManager *)self playbackOptions]& 2;
      v12 = v11 & 0xFFFFFFFFFFFFFFFELL | ([(ANPlaybackManager *)self playbackOptions]>> 8) & 1;
      v13 = [MEMORY[0x277CEABE8] sharedController];
      [v13 setVolumeWithOptions:v12];
    }

    v45 = 0;
    v14 = [(ANPlaybackManager *)self _createTrackPlayerWithAnnouncement:v8 options:[(ANPlaybackManager *)self playbackOptions] anchorPoint:&v45];
    [(ANPlaybackManager *)self setAudioPlayer:v14];

    v15 = v8;
    v16 = [MEMORY[0x277CBEB18] array];
    *&v17 = 138412546;
    v43 = v17;
    while (1)
    {
      v18 = [v15 filePath];
      v19 = v18 != 0;
      if (!v18)
      {
        break;
      }

      v20 = v18;
      v21 = [MEMORY[0x277CBEBC0] fileURLWithPath:v18];
      v22 = v21;
      if (v21)
      {
        [v21 audioDuration];
        if (v23 == 0.0)
        {
          v24 = *&v23;
          v25 = [(ANPlaybackManager *)self log];
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            *buf = v43;
            v47 = v22;
            v48 = 2048;
            v49 = v24;
            _os_log_error_impl(&dword_23F525000, v25, OS_LOG_TYPE_ERROR, "Adding empty audio file to player: %@, duration = %f seconds", buf, 0x16u);
          }

          v26 = +[ANAnalytics shared];
          v27 = [(ANPlaybackManager *)self endpointID];
          v28 = [ANAnalyticsContext contextWithEndpointID:v27];
          [v26 error:5032 context:v28];
        }
      }

      v29 = [(ANPlaybackManager *)self audioPlayer];
      v30 = [v15 filePath];
      v31 = [v15 identifier];
      [v29 add:v30 announcementID:v31];

      v32 = [v15 identifier];
      [v16 addObject:v32];

      v33 = [(ANPlaybackManager *)self _nextAnnouncementToPlay];

      v15 = v33;
      if (!v33)
      {
        v15 = [(ANPlaybackManager *)self audioPlayer];
        v44[0] = MEMORY[0x277D85DD0];
        v44[1] = 3221225472;
        v44[2] = __47__ANPlaybackManager__startPlayingAnnouncements__block_invoke;
        v44[3] = &unk_278C86AD0;
        v44[4] = self;
        v44[5] = v45;
        [(ANPlaybackManager *)self playWithTonePlayer:0 toneFileURL:0 trackPlayer:v15 completionHandler:v44];
        goto LABEL_19;
      }
    }

    v35 = [(ANPlaybackManager *)self log];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      [(ANPlaybackManager *)v15 _startPlayingAnnouncements];
    }

    v36 = +[ANAnalytics shared];
    v37 = [(ANPlaybackManager *)self endpointID];
    v38 = [ANAnalyticsContext contextWithEndpointID:v37];
    [v36 error:5034 context:v38];

    v39 = [(ANPlaybackManager *)self audioPlayer];
    v40 = [MEMORY[0x277CCA9B8] an_errorWithCode:5034 component:*MEMORY[0x277CEA9C0]];
    [(ANPlaybackManager *)self _handlePlaybackEndedForPlayer:v39 withError:v40];

LABEL_19:
  }

  else
  {
    v34 = [MEMORY[0x277CCA9B8] an_errorWithCode:1022 component:*MEMORY[0x277CEA9C0]];
    [(ANPlaybackManager *)self _handlePlaybackEndedForPlayer:0 withError:v34];

    v19 = 0;
  }

  v41 = *MEMORY[0x277D85DE8];
  return v19;
}

void __47__ANPlaybackManager__startPlayingAnnouncements__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) playbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__ANPlaybackManager__startPlayingAnnouncements__block_invoke_2;
  block[3] = &unk_278C866B8;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v5;
  v11 = v6;
  v7 = v3;
  dispatch_async(v4, block);
}

void __47__ANPlaybackManager__startPlayingAnnouncements__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(a1 + 32))
  {
    v3 = [*(a1 + 40) audioPlayer];
    v4 = *(a1 + 32);
    v5 = v3;
    [v2 _handlePlaybackEndedForPlayer:? withError:?];
  }

  else
  {
    v5 = [*(a1 + 40) delegate];
    [v5 playbackManager:*(a1 + 40) didStartPlayingAnnouncementsAtMachAbsoluteTime:*(a1 + 48)];
  }
}

- (void)_stopAudioPlayer
{
  v3 = [(ANPlaybackManager *)self audioPlayer];

  if (v3)
  {
    v4 = dispatch_group_create();
    dispatch_group_enter(v4);
    v5 = [(ANPlaybackManager *)self audioPlayer];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __37__ANPlaybackManager__stopAudioPlayer__block_invoke;
    v7[3] = &unk_278C86910;
    v8 = v4;
    v6 = v4;
    [v5 stopWithCompletionHandler:v7];

    dispatch_group_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  }
}

- (void)_handlePlaybackEndedForPlayer:(id)a3 withError:(id)a4
{
  v17 = a4;
  v6 = a3;
  [(ANPlaybackManager *)self setAnnouncementsToPlay:0];
  [v6 end];
  if (v17)
  {
    v7 = 10;
  }

  else
  {
    v7 = 14;
  }

  v8 = [v6 activelyPlayingAnnouncementID];
  [(ANPlaybackManager *)self _updatePlaybackInfoForAnnouncementID:v8 options:v7 player:v6];

  if (v17)
  {
    v9 = v17;
    if ([v17 code] != 1037)
    {
      goto LABEL_8;
    }
  }

  v9 = 0;
LABEL_8:
  v10 = [(ANPlaybackManager *)self playbackCompletionHandler];

  if (v10)
  {
    v11 = [(ANPlaybackManager *)self playbackCompletionHandler];
    (v11)[2](v11, v9);

    [(ANPlaybackManager *)self setPlaybackCompletionHandler:0];
  }

  if (v9)
  {
    v12 = +[ANAnalytics shared];
    v13 = [v9 code];
    v14 = [(ANPlaybackManager *)self endpointID];
    v15 = [ANAnalyticsContext contextWithEndpointID:v14];
    [v12 error:v13 context:v15];
  }

  v16 = [(ANPlaybackManager *)self delegate];
  [v16 playbackManagerDidFinishPlayingAnnouncements:self];
}

- (void)trackPlayer:(id)a3 didUpdatePlaybackState:(unint64_t)a4 announcementID:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = a3;
  v10 = [(ANPlaybackManager *)self playbackQueue];
  dispatch_assert_queue_V2(v10);

  v11 = [(ANPlaybackManager *)self log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 134218242;
    v17 = a4;
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&dword_23F525000, v11, OS_LOG_TYPE_DEFAULT, "Did Update Playback State: %lu, AnnouncementID: %@", &v16, 0x16u);
  }

  v12 = [(ANPlaybackManager *)self delegate];
  v13 = [(ANPlaybackManager *)self audioPlayer];
  [v12 playbackManager:self didUpdatePlaybackState:objc_msgSend(v13 announcement:{"playbackState"), v8}];

  if (a4 == 1)
  {
    v14 = 3;
  }

  else
  {
    v14 = 2;
  }

  [(ANPlaybackManager *)self _updatePlaybackInfoForAnnouncementID:v8 options:v14 player:v9];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)trackPlayer:(id)a3 didFinishPlayingTrackType:(int64_t)a4 announcementID:(id)a5 error:(id)a6
{
  v36 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [(ANPlaybackManager *)self playbackQueue];
  dispatch_assert_queue_V2(v13);

  v14 = [(ANPlaybackManager *)self log];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v32 = 136315138;
    v33 = "[ANPlaybackManager trackPlayer:didFinishPlayingTrackType:announcementID:error:]";
    _os_log_impl(&dword_23F525000, v14, OS_LOG_TYPE_DEFAULT, "%s", &v32, 0xCu);
  }

  v15 = [(ANPlaybackManager *)self audioPlayer];

  if (v15 == v10)
  {
    v16 = [(ANPlaybackManager *)self log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v32 = 134218242;
      v33 = a4;
      v34 = 2112;
      v35 = v11;
      _os_log_impl(&dword_23F525000, v16, OS_LOG_TYPE_DEFAULT, "Audio Player Finished Playing trackType: %ld, AnnouncementID: %@", &v32, 0x16u);
    }

    if (v12)
    {
      v17 = [(ANPlaybackManager *)self log];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [ANPlaybackManager trackPlayer:v11 didFinishPlayingTrackType:v12 announcementID:v17 error:?];
      }

      [(ANPlaybackManager *)self _stopAudioPlayer];
      v18 = self;
      v19 = v10;
      v20 = v12;
LABEL_10:
      [(ANPlaybackManager *)v18 _handlePlaybackEndedForPlayer:v19 withError:v20];
      goto LABEL_11;
    }

    [(ANPlaybackManager *)self _addAdditionalAnnouncementsIfNeeded];
    v22 = [(ANPlaybackManager *)self audioPlayer];
    v23 = [v22 numberActiveTracks];

    if (!v23)
    {
      v26 = [(ANPlaybackManager *)self log];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v32) = 0;
        _os_log_impl(&dword_23F525000, v26, OS_LOG_TYPE_DEFAULT, "Audio Player Finished, we are done!", &v32, 2u);
      }

      [(ANPlaybackManager *)self _stopAudioPlayer];
      v18 = self;
      v19 = v10;
      v20 = 0;
      goto LABEL_10;
    }

    v24 = [(ANPlaybackManager *)self log];
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
    if (a4)
    {
      if (v25)
      {
        v32 = 136315394;
        v33 = "[ANPlaybackManager trackPlayer:didFinishPlayingTrackType:announcementID:error:]";
        v34 = 2048;
        v35 = a4;
        _os_log_impl(&dword_23F525000, v24, OS_LOG_TYPE_DEFAULT, "%s: Ignoring track player of type %ld", &v32, 0x16u);
      }
    }

    else
    {
      if (v25)
      {
        v32 = 136315138;
        v33 = "[ANPlaybackManager trackPlayer:didFinishPlayingTrackType:announcementID:error:]";
        _os_log_impl(&dword_23F525000, v24, OS_LOG_TYPE_DEFAULT, "%s: there are still outstanding players. Keep Announce active", &v32, 0xCu);
      }

      [(ANPlaybackManager *)self _updatePlaybackInfoForAnnouncementID:v11 options:14 player:v10];
      v27 = [(ANPlaybackManager *)self audioPlayer];
      v28 = [v27 playbackState];

      if (v28)
      {
        v29 = [(ANPlaybackManager *)self audioPlayer];
        v30 = [v29 activelyPlayingAnnouncementID];
        [(ANPlaybackManager *)self _updatePlaybackInfoForAnnouncementID:v30 options:3 player:v10];
      }

      else
      {
        v31 = ANLogHandlePlaybackManager();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v32 = 138412290;
          v33 = &stru_2851BDB18;
          _os_log_impl(&dword_23F525000, v31, OS_LOG_TYPE_DEFAULT, "%@Audio Player is stopped. Not updating playback info.", &v32, 0xCu);
        }
      }
    }
  }

LABEL_11:

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_addAdditionalAnnouncementsIfNeeded
{
  if (([(ANPlaybackManager *)self playbackOptions]& 0x20) != 0)
  {
    v3 = [(ANPlaybackManager *)self log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_23F525000, v3, OS_LOG_TYPE_DEFAULT, "Looking for new announcements", v10, 2u);
    }

    v4 = [(ANPlaybackManager *)self _nextAnnouncementToPlay];
    if (v4)
    {
      v5 = v4;
      do
      {
        v6 = [(ANPlaybackManager *)self audioPlayer];
        v7 = [v5 filePath];
        v8 = [v5 identifier];
        [v6 add:v7 announcementID:v8];

        v9 = [(ANPlaybackManager *)self _nextAnnouncementToPlay];

        v5 = v9;
      }

      while (v9);
    }
  }
}

- (ANPlaybackManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (ANPlaybackManagerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (void)playWithTonePlayer:(ANTonePlayer *)a3 toneFileURL:(NSURL *)a4 trackPlayer:(ANTrackPlayer *)a5 completionHandler:(id)a6
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E39C9E8, &qword_23F58D708);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v24 - v13;
  v15 = _Block_copy(a6);
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  v16[5] = v15;
  v16[6] = self;
  v17 = sub_23F5883B4();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_23F58E080;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_23F58D720;
  v19[5] = v18;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = self;
  sub_23F57A118(0, 0, v14, &unk_23F58D728, v19);
}

- (void)_startPlayingAnnouncements
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_23F525000, a2, OS_LOG_TYPE_ERROR, "Announcement does not contain a file path. Announcement: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)trackPlayer:(os_log_t)log didFinishPlayingTrackType:announcementID:error:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_23F525000, log, OS_LOG_TYPE_ERROR, "Audio Player Finished Playing with error. AnnouncementID = %@, Error = %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end