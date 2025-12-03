@interface ANPlaybackManager
+ (id)managerWithEndpointID:(id)d;
- (ANPlaybackManager)initWithEndpointID:(id)d;
- (ANPlaybackManagerDataSource)dataSource;
- (ANPlaybackManagerDelegate)delegate;
- (BOOL)_playAnnouncements:(id)announcements announceIDToStart:(id)start options:(unint64_t)options completionHandler:(id)handler;
- (BOOL)_playAnnouncementsWithIDs:(id)ds options:(unint64_t)options completionHandler:(id)handler;
- (BOOL)_startPlayingAnnouncements;
- (NSDictionary)lastPlayedAnnouncementInfo;
- (id)_announcementsForPlaybackOptions:(unint64_t)options fromAnnouncements:(id)announcements;
- (id)_createTrackPlayerWithAnnouncement:(id)announcement options:(unint64_t)options anchorPoint:(unint64_t *)point;
- (id)_nextAnnouncementToPlay;
- (unint64_t)playbackItemCount;
- (unint64_t)playbackState;
- (void)_addAdditionalAnnouncementsIfNeeded;
- (void)_handlePlaybackEndedForPlayer:(id)player withError:(id)error;
- (void)_nextAnnouncementWithCompletionHandler:(id)handler;
- (void)_previousAnnouncementWithCompletionHandler:(id)handler;
- (void)_startPlayingAnnouncements;
- (void)_stopAudioPlayer;
- (void)_stopPlayingAnnouncementsWithCompletionHandler:(id)handler;
- (void)_updatePlaybackInfoForAnnouncementID:(id)d options:(unint64_t)options player:(id)player;
- (void)performPlaybackCommand:(id)command completionHandler:(id)handler;
- (void)playWithTonePlayer:(ANTonePlayer *)player toneFileURL:(NSURL *)l trackPlayer:(ANTrackPlayer *)trackPlayer completionHandler:(id)handler;
- (void)trackPlayer:(id)player didFinishPlayingTrackType:(int64_t)type announcementID:(id)d error:(id)error;
- (void)trackPlayer:(id)player didUpdatePlaybackState:(unint64_t)state announcementID:(id)d;
- (void)updatePlaybackForAnnouncementID:(id)d options:(unint64_t)options;
@end

@implementation ANPlaybackManager

- (ANPlaybackManager)initWithEndpointID:(id)d
{
  dCopy = d;
  v16.receiver = self;
  v16.super_class = ANPlaybackManager;
  v6 = [(ANPlaybackManager *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_endpointID, d);
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

+ (id)managerWithEndpointID:(id)d
{
  dCopy = d;
  v4 = [[ANPlaybackManager alloc] initWithEndpointID:dCopy];

  return v4;
}

- (void)performPlaybackCommand:(id)command completionHandler:(id)handler
{
  commandCopy = command;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  playbackQueue = [(ANPlaybackManager *)self playbackQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__ANPlaybackManager_performPlaybackCommand_completionHandler___block_invoke;
  v11[3] = &unk_278C86A80;
  objc_copyWeak(&v14, &location);
  v12 = commandCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = commandCopy;
  dispatch_async(playbackQueue, v11);

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

- (void)updatePlaybackForAnnouncementID:(id)d options:(unint64_t)options
{
  dCopy = d;
  playbackQueue = [(ANPlaybackManager *)self playbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__ANPlaybackManager_updatePlaybackForAnnouncementID_options___block_invoke;
  block[3] = &unk_278C866B8;
  block[4] = self;
  v10 = dCopy;
  optionsCopy = options;
  v8 = dCopy;
  dispatch_async(playbackQueue, block);
}

- (NSDictionary)lastPlayedAnnouncementInfo
{
  playbackQueue = [(ANPlaybackManager *)self playbackQueue];
  dispatch_assert_queue_not_V2(playbackQueue);

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__2;
  v12 = __Block_byref_object_dispose__2;
  v13 = 0;
  playbackQueue2 = [(ANPlaybackManager *)self playbackQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__ANPlaybackManager_lastPlayedAnnouncementInfo__block_invoke;
  v7[3] = &unk_278C86AA8;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(playbackQueue2, v7);

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
  audioPlayer = [(ANPlaybackManager *)self audioPlayer];
  playbackState = [audioPlayer playbackState];

  return playbackState;
}

- (unint64_t)playbackItemCount
{
  announcementsToPlay = [(ANPlaybackManager *)self announcementsToPlay];
  v3 = [announcementsToPlay count];

  return v3;
}

- (void)_updatePlaybackInfoForAnnouncementID:(id)d options:(unint64_t)options player:(id)player
{
  v57 = *MEMORY[0x277D85DE8];
  dCopy = d;
  playerCopy = player;
  playbackQueue = [(ANPlaybackManager *)self playbackQueue];
  dispatch_assert_queue_V2(playbackQueue);

  v11 = [(ANPlaybackManager *)self log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:options & 1];
    LODWORD(v56[0]) = 138412546;
    *(v56 + 4) = dCopy;
    WORD2(v56[1]) = 2112;
    *(&v56[1] + 6) = v12;
    _os_log_impl(&dword_23F525000, v11, OS_LOG_TYPE_DEFAULT, "Updating Playback Info with Announcement ID = %@, Playing = %@", v56, 0x16u);
  }

  v13 = [(ANPlaybackManager *)self log];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    playbackInfo = [(ANPlaybackManager *)self playbackInfo];
    LODWORD(v56[0]) = 138412290;
    *(v56 + 4) = playbackInfo;
    _os_log_impl(&dword_23F525000, v13, OS_LOG_TYPE_DEFAULT, "[BEFORE] Playback Info: %@", v56, 0xCu);
  }

  if ((options & 1) == 0)
  {
    playbackInfo2 = [(ANPlaybackManager *)self playbackInfo];
    v16 = *MEMORY[0x277CEA790];
    v17 = [playbackInfo2 objectForKeyedSubscript:*MEMORY[0x277CEA790]];

    playbackInfo3 = [(ANPlaybackManager *)self playbackInfo];
    v19 = *MEMORY[0x277CEA770];
    v20 = [playbackInfo3 objectForKeyedSubscript:*MEMORY[0x277CEA770]];

    if (v17)
    {
      bOOLValue = [v17 BOOLValue];
      if (dCopy)
      {
        if (!bOOLValue && v20 && [v20 isEqualToString:dCopy])
        {
          v22 = [(ANPlaybackManager *)self log];
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(v56[0]) = 138412290;
            *(v56 + 4) = dCopy;
            _os_log_impl(&dword_23F525000, v22, OS_LOG_TYPE_DEFAULT, "Ignoring dupe stop update for Announcement %@", v56, 0xCu);
          }

          goto LABEL_39;
        }
      }
    }

    playbackInfo4 = [(ANPlaybackManager *)self playbackInfo];
    [playbackInfo4 setObject:&unk_2851C49F8 forKeyedSubscript:v16];

    v32 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:mach_absolute_time()];
    playbackInfo5 = [(ANPlaybackManager *)self playbackInfo];
    [playbackInfo5 setObject:v32 forKeyedSubscript:*MEMORY[0x277CEA788]];

    date = [MEMORY[0x277CBEAA8] date];
    playbackInfo6 = [(ANPlaybackManager *)self playbackInfo];
    [playbackInfo6 setObject:date forKeyedSubscript:*MEMORY[0x277CEA780]];

    if (playerCopy)
    {
      v36 = MEMORY[0x277CCAE60];
      queuePlayer = [playerCopy queuePlayer];
      v38 = queuePlayer;
      if (queuePlayer)
      {
        [queuePlayer currentTime];
      }

      else
      {
        memset(v56, 0, sizeof(v56));
      }

      v39 = [v36 valueWithCMTime:v56];
      playbackInfo7 = [(ANPlaybackManager *)self playbackInfo];
      [playbackInfo7 setObject:v39 forKeyedSubscript:*MEMORY[0x277CEA778]];
    }

    if (!dCopy)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (dCopy)
  {
    playbackInfo8 = [(ANPlaybackManager *)self playbackInfo];
    [playbackInfo8 setObject:&unk_2851C49E0 forKeyedSubscript:*MEMORY[0x277CEA790]];

    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:mach_absolute_time()];
    playbackInfo9 = [(ANPlaybackManager *)self playbackInfo];
    [playbackInfo9 setObject:v24 forKeyedSubscript:*MEMORY[0x277CEA7A8]];

    date2 = [MEMORY[0x277CBEAA8] date];
    playbackInfo10 = [(ANPlaybackManager *)self playbackInfo];
    [playbackInfo10 setObject:date2 forKeyedSubscript:*MEMORY[0x277CEA7A0]];

    if (playerCopy)
    {
      v28 = MEMORY[0x277CCAE60];
      queuePlayer2 = [playerCopy queuePlayer];
      v30 = queuePlayer2;
      if (queuePlayer2)
      {
        [queuePlayer2 currentTime];
      }

      else
      {
        memset(v56, 0, sizeof(v56));
      }

      v41 = [v28 valueWithCMTime:v56];
      playbackInfo11 = [(ANPlaybackManager *)self playbackInfo];
      [playbackInfo11 setObject:v41 forKeyedSubscript:*MEMORY[0x277CEA798]];
    }

    v43 = [(ANPlaybackManager *)self playbackInfo:v56[0]];
    [v43 setObject:0 forKeyedSubscript:*MEMORY[0x277CEA788]];

    playbackInfo12 = [(ANPlaybackManager *)self playbackInfo];
    [playbackInfo12 setObject:0 forKeyedSubscript:*MEMORY[0x277CEA780]];

    playbackInfo13 = [(ANPlaybackManager *)self playbackInfo];
    [playbackInfo13 setObject:0 forKeyedSubscript:*MEMORY[0x277CEA778]];

    v19 = *MEMORY[0x277CEA770];
LABEL_30:
    v46 = [(ANPlaybackManager *)self playbackInfo:v56[0]];
    [v46 setObject:dCopy forKeyedSubscript:v19];

LABEL_31:
    v47 = [(ANPlaybackManager *)self playbackInfo:v56[0]];
    v17 = [v47 objectForKeyedSubscript:v19];

    if (v17)
    {
      delegate = [(ANPlaybackManager *)self delegate];
      v49 = delegate;
      if (options)
      {
        [delegate playbackManager:self didStartPlayingAnnouncement:v17];
      }

      else
      {
        [delegate playbackManager:self didFinishPlayingAnnouncement:v17 withOptions:options];
      }
    }

    v50 = [(ANPlaybackManager *)self log];
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      playbackInfo14 = [(ANPlaybackManager *)self playbackInfo];
      LODWORD(v56[0]) = 138412290;
      *(v56 + 4) = playbackInfo14;
      _os_log_impl(&dword_23F525000, v50, OS_LOG_TYPE_DEFAULT, "[AFTER] Playback Info: %@", v56, 0xCu);
    }

    delegate2 = [(ANPlaybackManager *)self delegate];
    playbackInfo15 = [(ANPlaybackManager *)self playbackInfo];
    v54 = [playbackInfo15 copy];
    [delegate2 playbackManager:self didUpdatePlaybackInfo:v54];

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

- (void)_stopPlayingAnnouncementsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [(ANPlaybackManager *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_23F525000, v5, OS_LOG_TYPE_DEFAULT, "Stopping Playback", v8, 2u);
  }

  [(ANPlaybackManager *)self _stopAudioPlayer];
  v6 = [MEMORY[0x277CCA9B8] an_errorWithCode:1037 component:*MEMORY[0x277CEA9C0]];
  audioPlayer = [(ANPlaybackManager *)self audioPlayer];
  [(ANPlaybackManager *)self _handlePlaybackEndedForPlayer:audioPlayer withError:v6];

  handlerCopy[2](handlerCopy, 0);
}

- (void)_nextAnnouncementWithCompletionHandler:(id)handler
{
  v21 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = [(ANPlaybackManager *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 136315138;
    v20 = "[ANPlaybackManager _nextAnnouncementWithCompletionHandler:]";
    _os_log_impl(&dword_23F525000, v5, OS_LOG_TYPE_DEFAULT, "%s", &v19, 0xCu);
  }

  audioPlayer = [(ANPlaybackManager *)self audioPlayer];
  playbackState = [audioPlayer playbackState];

  if (playbackState == 1)
  {
    [(ANPlaybackManager *)self _addAdditionalAnnouncementsIfNeeded];
    audioPlayer2 = [(ANPlaybackManager *)self audioPlayer];
    numberActiveTracks = [audioPlayer2 numberActiveTracks];

    if (numberActiveTracks > 1)
    {
      audioPlayer3 = [(ANPlaybackManager *)self audioPlayer];
      [audioPlayer3 nextWithCompletionHandler:handlerCopy];
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

  audioPlayer3 = [v10 an_errorWithCode:v12 component:v11];
  handlerCopy[2](handlerCopy, audioPlayer3);
  v14 = +[ANAnalytics shared];
  code = [audioPlayer3 code];
  endpointID = [(ANPlaybackManager *)self endpointID];
  v17 = [ANAnalyticsContext contextWithEndpointID:endpointID];
  [v14 error:code context:v17];

LABEL_9:
  v18 = *MEMORY[0x277D85DE8];
}

- (void)_previousAnnouncementWithCompletionHandler:(id)handler
{
  v16 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = [(ANPlaybackManager *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315138;
    v15 = "[ANPlaybackManager _previousAnnouncementWithCompletionHandler:]";
    _os_log_impl(&dword_23F525000, v5, OS_LOG_TYPE_DEFAULT, "%s", &v14, 0xCu);
  }

  audioPlayer = [(ANPlaybackManager *)self audioPlayer];
  playbackState = [audioPlayer playbackState];

  if (playbackState == 1)
  {
    audioPlayer2 = [(ANPlaybackManager *)self audioPlayer];
    [audioPlayer2 previousWithCompletionHandler:handlerCopy];
  }

  else
  {
    audioPlayer2 = [MEMORY[0x277CCA9B8] an_errorWithCode:1020 component:*MEMORY[0x277CEA9C0]];
    handlerCopy[2](handlerCopy, audioPlayer2);
    v9 = +[ANAnalytics shared];
    code = [audioPlayer2 code];
    endpointID = [(ANPlaybackManager *)self endpointID];
    v12 = [ANAnalyticsContext contextWithEndpointID:endpointID];
    [v9 error:code context:v12];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)_playAnnouncements:(id)announcements announceIDToStart:(id)start options:(unint64_t)options completionHandler:(id)handler
{
  v46 = *MEMORY[0x277D85DE8];
  announcementsCopy = announcements;
  startCopy = start;
  handlerCopy = handler;
  audioPlayer = [(ANPlaybackManager *)self audioPlayer];
  playbackState = [audioPlayer playbackState];

  if (playbackState)
  {
    v15 = [(ANPlaybackManager *)self log];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349056;
      v45 = playbackState;
      _os_log_impl(&dword_23F525000, v15, OS_LOG_TYPE_DEFAULT, "Already playing. Current playback state = %{public}lu. Stopping before proceeding.", buf, 0xCu);
    }

    [(ANPlaybackManager *)self _stopAudioPlayer];
    audioPlayer2 = [(ANPlaybackManager *)self audioPlayer];
    [(ANPlaybackManager *)self _handlePlaybackEndedForPlayer:audioPlayer2 withError:0];
  }

  self->_playbackOptions = options;
  [(ANPlaybackManager *)self setLastAnnoucementIndex:0];
  dataSource = [(ANPlaybackManager *)self dataSource];
  [dataSource cleanUpOldAnnouncementsForPlaybackManager:self];

  v18 = objc_alloc(MEMORY[0x277CBEB40]);
  v19 = [(ANPlaybackManager *)self _announcementsForPlaybackOptions:options fromAnnouncements:announcementsCopy];
  v20 = [v18 initWithArray:v19];
  [(ANPlaybackManager *)self setAnnouncementsToPlay:v20];

  if (startCopy)
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    announcementsToPlay = [(ANPlaybackManager *)self announcementsToPlay];
    v22 = [announcementsToPlay countByEnumeratingWithState:&v39 objects:v43 count:16];
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
          objc_enumerationMutation(announcementsToPlay);
        }

        identifier = [*(*(&v39 + 1) + 8 * v25) identifier];
        v27 = [identifier isEqual:startCopy];

        if (v27)
        {
          break;
        }

        [(ANPlaybackManager *)self setLastAnnoucementIndex:[(ANPlaybackManager *)self lastAnnoucementIndex]+ 1];
        if (v23 == ++v25)
        {
          v23 = [announcementsToPlay countByEnumeratingWithState:&v39 objects:v43 count:16];
          if (v23)
          {
            goto LABEL_8;
          }

          break;
        }
      }
    }

    lastAnnoucementIndex = [(ANPlaybackManager *)self lastAnnoucementIndex];
    announcementsToPlay2 = [(ANPlaybackManager *)self announcementsToPlay];
    v30 = [announcementsToPlay2 count];

    if (lastAnnoucementIndex >= v30)
    {
      [(ANPlaybackManager *)self setLastAnnoucementIndex:0];
    }
  }

  announcementsToPlay3 = [(ANPlaybackManager *)self announcementsToPlay];
  v32 = [announcementsToPlay3 count];

  if (v32)
  {
    [(ANPlaybackManager *)self setPlaybackCompletionHandler:handlerCopy];
    _startPlayingAnnouncements = [(ANPlaybackManager *)self _startPlayingAnnouncements];
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
    handlerCopy[2](handlerCopy, 0);
    delegate = [(ANPlaybackManager *)self delegate];
    audioPlayer3 = [(ANPlaybackManager *)self audioPlayer];
    [delegate playbackManager:self didUpdatePlaybackState:objc_msgSend(audioPlayer3 announcement:{"playbackState"), 0}];

    _startPlayingAnnouncements = 0;
  }

  v37 = *MEMORY[0x277D85DE8];
  return _startPlayingAnnouncements;
}

- (BOOL)_playAnnouncementsWithIDs:(id)ds options:(unint64_t)options completionHandler:(id)handler
{
  v25 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  handlerCopy = handler;
  firstObject = [dsCopy firstObject];
  v11 = [(ANPlaybackManager *)self log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 136315650;
    v20 = "[ANPlaybackManager _playAnnouncementsWithIDs:options:completionHandler:]";
    v21 = 2112;
    v22 = firstObject;
    v23 = 2048;
    optionsCopy = options;
    _os_log_impl(&dword_23F525000, v11, OS_LOG_TYPE_DEFAULT, "%s: announceIDToStart %@, options %ld", &v19, 0x20u);
  }

  v12 = [dsCopy count];
  dataSource = [(ANPlaybackManager *)self dataSource];
  v14 = dataSource;
  if (v12)
  {
    [dataSource playbackManager:self announcementsForIdentifiers:dsCopy];
  }

  else
  {
    [dataSource announcementsForPlaybackManager:self];
  }
  v15 = ;

  v16 = [(ANPlaybackManager *)self _playAnnouncements:v15 announceIDToStart:firstObject options:options completionHandler:handlerCopy];
  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (id)_announcementsForPlaybackOptions:(unint64_t)options fromAnnouncements:(id)announcements
{
  optionsCopy = options;
  v5 = ~options;
  announcementsCopy = announcements;
  v7 = announcementsCopy;
  if ((v5 & 0xC0) == 0)
  {
    goto LABEL_2;
  }

  if (optionsCopy < 0)
  {
    unplayedAnnouncements = [announcementsCopy unplayedAnnouncements];
  }

  else
  {
    if ((optionsCopy & 0x40) == 0)
    {
LABEL_2:
      unplayedAnnouncements = announcementsCopy;
      goto LABEL_7;
    }

    unplayedAnnouncements = [announcementsCopy playedAnnouncements];
  }

LABEL_7:
  v9 = unplayedAnnouncements;

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

    dataSource = [(ANPlaybackManager *)self dataSource];
    v5 = [dataSource announcementsForPlaybackManager:self];

    v44 = v5;
    v6 = [(ANPlaybackManager *)self _announcementsForPlaybackOptions:[(ANPlaybackManager *)self playbackOptions] fromAnnouncements:v5];
    v7 = [(ANPlaybackManager *)self log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      playbackOptions = [(ANPlaybackManager *)self playbackOptions];
      v9 = [v6 count];
      *buf = 134218240;
      v50 = playbackOptions;
      v51 = 2048;
      v52 = v9;
      _os_log_impl(&dword_23F525000, v7, OS_LOG_TYPE_DEFAULT, "Current Announcements in Storage for Playback Options (%lu): %lu", buf, 0x16u);
    }

    v10 = [(ANPlaybackManager *)self log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      announcementsToPlay = [(ANPlaybackManager *)self announcementsToPlay];
      v12 = [announcementsToPlay count];
      *buf = 134217984;
      v50 = v12;
      _os_log_impl(&dword_23F525000, v10, OS_LOG_TYPE_DEFAULT, "Current Announcements in Playback Queue: = %lu", buf, 0xCu);
    }

    announcementsToPlay2 = [(ANPlaybackManager *)self announcementsToPlay];
    lastObject = [announcementsToPlay2 lastObject];

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
          receiptTimestamp = [lastObject receiptTimestamp];
          [receiptTimestamp timeIntervalSince1970];
          v23 = v22;
          receiptTimestamp2 = [v20 receiptTimestamp];
          [receiptTimestamp2 timeIntervalSince1970];
          v26 = v25;

          if (v23 <= v26)
          {
            announcementsToPlay3 = [(ANPlaybackManager *)self announcementsToPlay];
            v28 = [announcementsToPlay3 containsObject:v20];

            if ((v28 & 1) == 0)
            {
              announcementsToPlay4 = [(ANPlaybackManager *)self announcementsToPlay];
              [announcementsToPlay4 addObject:v20];

              v30 = [(ANPlaybackManager *)self log];
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
              {
                identifier = [v20 identifier];
                *buf = 138412290;
                v50 = identifier;
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

  announcementsToPlay5 = [(ANPlaybackManager *)self announcementsToPlay];
  if (announcementsToPlay5)
  {
    announcementsToPlay6 = [(ANPlaybackManager *)self announcementsToPlay];
    v34 = [announcementsToPlay6 count];
    lastAnnoucementIndex = [(ANPlaybackManager *)self lastAnnoucementIndex];

    if (v34 <= lastAnnoucementIndex)
    {
      announcementsToPlay5 = 0;
    }

    else
    {
      announcementsToPlay7 = [(ANPlaybackManager *)self announcementsToPlay];
      announcementsToPlay5 = [announcementsToPlay7 objectAtIndex:{-[ANPlaybackManager lastAnnoucementIndex](self, "lastAnnoucementIndex")}];

      v37 = [(ANPlaybackManager *)self log];
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = [(ANPlaybackManager *)self lastAnnoucementIndex]+ 1;
        announcementsToPlay8 = [(ANPlaybackManager *)self announcementsToPlay];
        v40 = [announcementsToPlay8 count];
        identifier2 = [announcementsToPlay5 identifier];
        *buf = 134218498;
        v50 = v38;
        v51 = 2048;
        v52 = v40;
        v53 = 2112;
        v54 = identifier2;
        _os_log_impl(&dword_23F525000, v37, OS_LOG_TYPE_DEFAULT, "Next Announcement To Play (%ld of %ld): %@", buf, 0x20u);
      }

      [(ANPlaybackManager *)self setLastAnnoucementIndex:[(ANPlaybackManager *)self lastAnnoucementIndex]+ 1];
    }
  }

  v42 = *MEMORY[0x277D85DE8];

  return announcementsToPlay5;
}

- (id)_createTrackPlayerWithAnnouncement:(id)announcement options:(unint64_t)options anchorPoint:(unint64_t *)point
{
  v63 = *MEMORY[0x277D85DE8];
  announcementCopy = announcement;
  playbackDeadline = [announcementCopy playbackDeadline];
  v10 = [(ANPlaybackManager *)self log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.value) = 138412290;
    *(&buf.value + 4) = playbackDeadline;
    _os_log_impl(&dword_23F525000, v10, OS_LOG_TYPE_DEFAULT, "PlaybackDeadline: %@", &buf, 0xCu);
  }

  if ((options & 0x10) != 0)
  {
    v14 = [ANAnchorTrackPlayer alloc];
    endpointID = [(ANPlaybackManager *)self endpointID];
    v16 = [(ANTrackPlayer *)v14 initWithOptions:options endpointUUID:endpointID];

    v13 = v16;
    memset(&buf, 0, sizeof(buf));
    if (announcementCopy)
    {
      [announcementCopy cmStartTime];
    }

    machStartTime = [announcementCopy machStartTime];
    if ((options & 4) != 0)
    {
      memset(&v60, 0, sizeof(v60));
      HostTimeClock = CMClockGetHostTimeClock();
      CMClockGetTime(&v60, HostTimeClock);
      time1 = v60;
      time2 = buf;
      if (CMTimeCompare(&time1, &time2) == 1)
      {
        [MEMORY[0x277CEABE0] machTimeToSeconds:machStartTime];
        v20 = v19;
        if (([announcementCopy statusFlags] & 3) == 0)
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
          endpointID2 = [(ANPlaybackManager *)self endpointID];
          v25 = [ANAnalyticsContext contextWithEndpointID:endpointID2];
          [v23 error:5003 context:v25];
        }

        [MEMORY[0x277CEABE0] machTimeToSeconds:mach_absolute_time()];
        v27 = v26;
        mEMORY[0x277CEAB80] = [MEMORY[0x277CEAB80] sharedInstance];
        v29 = [mEMORY[0x277CEAB80] numberForDefault:*MEMORY[0x277CEA840]];
        [v29 doubleValue];
        v31 = v30;

        CMTimeMakeWithSeconds(&time2, v31, v60.timescale);
        v58 = v60;
        CMTimeAdd(&time1, &v58, &time2);
        buf = time1;
        machStartTime = [MEMORY[0x277CEABE0] secondsToMachTime:v27 + v31];
        v32 = [(ANPlaybackManager *)self log];
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(time1.value) = 134218240;
          *(&time1.value + 4) = buf.value / buf.timescale;
          LOWORD(time1.flags) = 2048;
          *(&time1.flags + 2) = machStartTime;
          _os_log_impl(&dword_23F525000, v32, OS_LOG_TYPE_DEFAULT, "Updated CM Start Time = %lld, Mach Start Time = %llu", &time1, 0x16u);
        }
      }
    }

    v60 = buf;
    [(ANSimpleTrackPlayer *)v13 setStartTime:&v60];
    *point = machStartTime;
  }

  else
  {
    v11 = [ANSimpleTrackPlayer alloc];
    endpointID3 = [(ANPlaybackManager *)self endpointID];
    v13 = [(ANTrackPlayer *)v11 initWithOptions:options endpointUUID:endpointID3];

    *point = mach_absolute_time();
  }

  [(ANTrackPlayer *)v13 setDelegate:self];
  playbackQueue = [(ANPlaybackManager *)self playbackQueue];
  [(ANTrackPlayer *)v13 setDelegateQueue:playbackQueue];

  mEMORY[0x277CEAB80]2 = [MEMORY[0x277CEAB80] sharedInstance];
  v35 = [mEMORY[0x277CEAB80]2 numberForDefault:*MEMORY[0x277CEA858]];
  [v35 doubleValue];
  [(ANTrackPlayer *)v13 setSilenceBetweenEachTrack:v36 / 1000.0];

  if ((options & 2) != 0)
  {
    v37 = MEMORY[0x277CBEBC0];
    v38 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v39 = [v38 pathForResource:@"AnnounceNotification" ofType:@"wav"];
    v40 = [v37 fileURLWithPath:v39];
    [(ANTrackPlayer *)v13 setAudioFileAtStart:v40];

    mEMORY[0x277CEAB80]3 = [MEMORY[0x277CEAB80] sharedInstance];
    v42 = [mEMORY[0x277CEAB80]3 numberForDefault:*MEMORY[0x277CEA860]];
    [v42 doubleValue];
    v44 = v43;

    [(ANTrackPlayer *)v13 setTrimStartTone:v44];
  }

  if ((options & 8) == 0)
  {
    v45 = MEMORY[0x277CBEBC0];
    v46 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v47 = [v46 pathForResource:@"AnnounceInBetween" ofType:@"wav"];
    v48 = [v45 fileURLWithPath:v47];
    [(ANTrackPlayer *)v13 setAudioFileTransition:v48];

    mEMORY[0x277CEAB80]4 = [MEMORY[0x277CEAB80] sharedInstance];
    v50 = [mEMORY[0x277CEAB80]4 numberForDefault:*MEMORY[0x277CEA870]];
    [v50 doubleValue];
    v52 = v51;

    [(ANTrackPlayer *)v13 setTrimTransitionTone:v52];
  }

  mEMORY[0x277CEAB80]5 = [MEMORY[0x277CEAB80] sharedInstance];
  v54 = [mEMORY[0x277CEAB80]5 numberForDefault:*MEMORY[0x277CEA848]];
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
    announcementsToPlay = [(ANPlaybackManager *)self announcementsToPlay];
    v5 = [announcementsToPlay count];
    v6 = v5 - [(ANPlaybackManager *)self lastAnnoucementIndex];
    announcementsToPlay2 = [(ANPlaybackManager *)self announcementsToPlay];
    *buf = 134218240;
    v47 = v6;
    v48 = 2048;
    v49 = [announcementsToPlay2 count];
    _os_log_impl(&dword_23F525000, v3, OS_LOG_TYPE_DEFAULT, "Will Play (%ld of %ld) Announcements", buf, 0x16u);
  }

  _nextAnnouncementToPlay = [(ANPlaybackManager *)self _nextAnnouncementToPlay];
  if (_nextAnnouncementToPlay)
  {
    endpointID = [(ANPlaybackManager *)self endpointID];
    an_isLocalDevice = [endpointID an_isLocalDevice];

    if (an_isLocalDevice)
    {
      v11 = [(ANPlaybackManager *)self playbackOptions]& 2;
      v12 = v11 & 0xFFFFFFFFFFFFFFFELL | ([(ANPlaybackManager *)self playbackOptions]>> 8) & 1;
      mEMORY[0x277CEABE8] = [MEMORY[0x277CEABE8] sharedController];
      [mEMORY[0x277CEABE8] setVolumeWithOptions:v12];
    }

    v45 = 0;
    v14 = [(ANPlaybackManager *)self _createTrackPlayerWithAnnouncement:_nextAnnouncementToPlay options:[(ANPlaybackManager *)self playbackOptions] anchorPoint:&v45];
    [(ANPlaybackManager *)self setAudioPlayer:v14];

    audioPlayer2 = _nextAnnouncementToPlay;
    array = [MEMORY[0x277CBEB18] array];
    *&v17 = 138412546;
    v43 = v17;
    while (1)
    {
      filePath = [audioPlayer2 filePath];
      v19 = filePath != 0;
      if (!filePath)
      {
        break;
      }

      v20 = filePath;
      v21 = [MEMORY[0x277CBEBC0] fileURLWithPath:filePath];
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
          endpointID2 = [(ANPlaybackManager *)self endpointID];
          v28 = [ANAnalyticsContext contextWithEndpointID:endpointID2];
          [v26 error:5032 context:v28];
        }
      }

      audioPlayer = [(ANPlaybackManager *)self audioPlayer];
      filePath2 = [audioPlayer2 filePath];
      identifier = [audioPlayer2 identifier];
      [audioPlayer add:filePath2 announcementID:identifier];

      identifier2 = [audioPlayer2 identifier];
      [array addObject:identifier2];

      _nextAnnouncementToPlay2 = [(ANPlaybackManager *)self _nextAnnouncementToPlay];

      audioPlayer2 = _nextAnnouncementToPlay2;
      if (!_nextAnnouncementToPlay2)
      {
        audioPlayer2 = [(ANPlaybackManager *)self audioPlayer];
        v44[0] = MEMORY[0x277D85DD0];
        v44[1] = 3221225472;
        v44[2] = __47__ANPlaybackManager__startPlayingAnnouncements__block_invoke;
        v44[3] = &unk_278C86AD0;
        v44[4] = self;
        v44[5] = v45;
        [(ANPlaybackManager *)self playWithTonePlayer:0 toneFileURL:0 trackPlayer:audioPlayer2 completionHandler:v44];
        goto LABEL_19;
      }
    }

    v35 = [(ANPlaybackManager *)self log];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      [(ANPlaybackManager *)audioPlayer2 _startPlayingAnnouncements];
    }

    v36 = +[ANAnalytics shared];
    endpointID3 = [(ANPlaybackManager *)self endpointID];
    v38 = [ANAnalyticsContext contextWithEndpointID:endpointID3];
    [v36 error:5034 context:v38];

    audioPlayer3 = [(ANPlaybackManager *)self audioPlayer];
    v40 = [MEMORY[0x277CCA9B8] an_errorWithCode:5034 component:*MEMORY[0x277CEA9C0]];
    [(ANPlaybackManager *)self _handlePlaybackEndedForPlayer:audioPlayer3 withError:v40];

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
  audioPlayer = [(ANPlaybackManager *)self audioPlayer];

  if (audioPlayer)
  {
    v4 = dispatch_group_create();
    dispatch_group_enter(v4);
    audioPlayer2 = [(ANPlaybackManager *)self audioPlayer];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __37__ANPlaybackManager__stopAudioPlayer__block_invoke;
    v7[3] = &unk_278C86910;
    v8 = v4;
    v6 = v4;
    [audioPlayer2 stopWithCompletionHandler:v7];

    dispatch_group_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  }
}

- (void)_handlePlaybackEndedForPlayer:(id)player withError:(id)error
{
  errorCopy = error;
  playerCopy = player;
  [(ANPlaybackManager *)self setAnnouncementsToPlay:0];
  [playerCopy end];
  if (errorCopy)
  {
    v7 = 10;
  }

  else
  {
    v7 = 14;
  }

  activelyPlayingAnnouncementID = [playerCopy activelyPlayingAnnouncementID];
  [(ANPlaybackManager *)self _updatePlaybackInfoForAnnouncementID:activelyPlayingAnnouncementID options:v7 player:playerCopy];

  if (errorCopy)
  {
    v9 = errorCopy;
    if ([errorCopy code] != 1037)
    {
      goto LABEL_8;
    }
  }

  v9 = 0;
LABEL_8:
  playbackCompletionHandler = [(ANPlaybackManager *)self playbackCompletionHandler];

  if (playbackCompletionHandler)
  {
    playbackCompletionHandler2 = [(ANPlaybackManager *)self playbackCompletionHandler];
    (playbackCompletionHandler2)[2](playbackCompletionHandler2, v9);

    [(ANPlaybackManager *)self setPlaybackCompletionHandler:0];
  }

  if (v9)
  {
    v12 = +[ANAnalytics shared];
    code = [v9 code];
    endpointID = [(ANPlaybackManager *)self endpointID];
    v15 = [ANAnalyticsContext contextWithEndpointID:endpointID];
    [v12 error:code context:v15];
  }

  delegate = [(ANPlaybackManager *)self delegate];
  [delegate playbackManagerDidFinishPlayingAnnouncements:self];
}

- (void)trackPlayer:(id)player didUpdatePlaybackState:(unint64_t)state announcementID:(id)d
{
  v20 = *MEMORY[0x277D85DE8];
  dCopy = d;
  playerCopy = player;
  playbackQueue = [(ANPlaybackManager *)self playbackQueue];
  dispatch_assert_queue_V2(playbackQueue);

  v11 = [(ANPlaybackManager *)self log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 134218242;
    stateCopy = state;
    v18 = 2112;
    v19 = dCopy;
    _os_log_impl(&dword_23F525000, v11, OS_LOG_TYPE_DEFAULT, "Did Update Playback State: %lu, AnnouncementID: %@", &v16, 0x16u);
  }

  delegate = [(ANPlaybackManager *)self delegate];
  audioPlayer = [(ANPlaybackManager *)self audioPlayer];
  [delegate playbackManager:self didUpdatePlaybackState:objc_msgSend(audioPlayer announcement:{"playbackState"), dCopy}];

  if (state == 1)
  {
    v14 = 3;
  }

  else
  {
    v14 = 2;
  }

  [(ANPlaybackManager *)self _updatePlaybackInfoForAnnouncementID:dCopy options:v14 player:playerCopy];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)trackPlayer:(id)player didFinishPlayingTrackType:(int64_t)type announcementID:(id)d error:(id)error
{
  v36 = *MEMORY[0x277D85DE8];
  playerCopy = player;
  dCopy = d;
  errorCopy = error;
  playbackQueue = [(ANPlaybackManager *)self playbackQueue];
  dispatch_assert_queue_V2(playbackQueue);

  v14 = [(ANPlaybackManager *)self log];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v32 = 136315138;
    typeCopy = "[ANPlaybackManager trackPlayer:didFinishPlayingTrackType:announcementID:error:]";
    _os_log_impl(&dword_23F525000, v14, OS_LOG_TYPE_DEFAULT, "%s", &v32, 0xCu);
  }

  audioPlayer = [(ANPlaybackManager *)self audioPlayer];

  if (audioPlayer == playerCopy)
  {
    v16 = [(ANPlaybackManager *)self log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v32 = 134218242;
      typeCopy = type;
      v34 = 2112;
      typeCopy2 = dCopy;
      _os_log_impl(&dword_23F525000, v16, OS_LOG_TYPE_DEFAULT, "Audio Player Finished Playing trackType: %ld, AnnouncementID: %@", &v32, 0x16u);
    }

    if (errorCopy)
    {
      v17 = [(ANPlaybackManager *)self log];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [ANPlaybackManager trackPlayer:dCopy didFinishPlayingTrackType:errorCopy announcementID:v17 error:?];
      }

      [(ANPlaybackManager *)self _stopAudioPlayer];
      selfCopy2 = self;
      v19 = playerCopy;
      v20 = errorCopy;
LABEL_10:
      [(ANPlaybackManager *)selfCopy2 _handlePlaybackEndedForPlayer:v19 withError:v20];
      goto LABEL_11;
    }

    [(ANPlaybackManager *)self _addAdditionalAnnouncementsIfNeeded];
    audioPlayer2 = [(ANPlaybackManager *)self audioPlayer];
    numberActiveTracks = [audioPlayer2 numberActiveTracks];

    if (!numberActiveTracks)
    {
      v26 = [(ANPlaybackManager *)self log];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v32) = 0;
        _os_log_impl(&dword_23F525000, v26, OS_LOG_TYPE_DEFAULT, "Audio Player Finished, we are done!", &v32, 2u);
      }

      [(ANPlaybackManager *)self _stopAudioPlayer];
      selfCopy2 = self;
      v19 = playerCopy;
      v20 = 0;
      goto LABEL_10;
    }

    v24 = [(ANPlaybackManager *)self log];
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
    if (type)
    {
      if (v25)
      {
        v32 = 136315394;
        typeCopy = "[ANPlaybackManager trackPlayer:didFinishPlayingTrackType:announcementID:error:]";
        v34 = 2048;
        typeCopy2 = type;
        _os_log_impl(&dword_23F525000, v24, OS_LOG_TYPE_DEFAULT, "%s: Ignoring track player of type %ld", &v32, 0x16u);
      }
    }

    else
    {
      if (v25)
      {
        v32 = 136315138;
        typeCopy = "[ANPlaybackManager trackPlayer:didFinishPlayingTrackType:announcementID:error:]";
        _os_log_impl(&dword_23F525000, v24, OS_LOG_TYPE_DEFAULT, "%s: there are still outstanding players. Keep Announce active", &v32, 0xCu);
      }

      [(ANPlaybackManager *)self _updatePlaybackInfoForAnnouncementID:dCopy options:14 player:playerCopy];
      audioPlayer3 = [(ANPlaybackManager *)self audioPlayer];
      playbackState = [audioPlayer3 playbackState];

      if (playbackState)
      {
        audioPlayer4 = [(ANPlaybackManager *)self audioPlayer];
        activelyPlayingAnnouncementID = [audioPlayer4 activelyPlayingAnnouncementID];
        [(ANPlaybackManager *)self _updatePlaybackInfoForAnnouncementID:activelyPlayingAnnouncementID options:3 player:playerCopy];
      }

      else
      {
        v31 = ANLogHandlePlaybackManager();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v32 = 138412290;
          typeCopy = &stru_2851BDB18;
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

    _nextAnnouncementToPlay = [(ANPlaybackManager *)self _nextAnnouncementToPlay];
    if (_nextAnnouncementToPlay)
    {
      v5 = _nextAnnouncementToPlay;
      do
      {
        audioPlayer = [(ANPlaybackManager *)self audioPlayer];
        filePath = [v5 filePath];
        identifier = [v5 identifier];
        [audioPlayer add:filePath announcementID:identifier];

        _nextAnnouncementToPlay2 = [(ANPlaybackManager *)self _nextAnnouncementToPlay];

        v5 = _nextAnnouncementToPlay2;
      }

      while (_nextAnnouncementToPlay2);
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

- (void)playWithTonePlayer:(ANTonePlayer *)player toneFileURL:(NSURL *)l trackPlayer:(ANTrackPlayer *)trackPlayer completionHandler:(id)handler
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E39C9E8, &qword_23F58D708);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v24 - v13;
  v15 = _Block_copy(handler);
  v16 = swift_allocObject();
  v16[2] = player;
  v16[3] = l;
  v16[4] = trackPlayer;
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
  playerCopy = player;
  lCopy = l;
  trackPlayerCopy = trackPlayer;
  selfCopy = self;
  sub_23F57A118(0, 0, v14, &unk_23F58D728, v19);
}

- (void)_startPlayingAnnouncements
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  selfCopy = self;
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