@interface ANTonePlayer
- (ANTonePlayer)initWithAudioSessionID:(unsigned int)d endpointUUID:(id)iD;
- (BOOL)_activateAudioSessionForPlayer:(id)player error:(id *)error;
- (void)_callHandler:(id)handler;
- (void)_deactivateAudioSession;
- (void)_deregisterForNotificationsWithAudioSession:(id)session;
- (void)_handleFailure;
- (void)_handlePlayerItemFailedToPlayToEnd:(id)end;
- (void)_handlePlayerItemPlayedToEnd:(id)end;
- (void)_playFileURL:(id)l;
- (void)_playSystemSoundWithFileURL:(id)l;
- (void)_registerForNotificationsWithAudioSession:(id)session;
- (void)audioSessionInterruptionHandler:(id)handler;
- (void)dealloc;
- (void)playFileURL:(id)l completionHandler:(id)handler;
- (void)playSystemSoundWithFileURL:(id)l completionHandler:(id)handler;
- (void)playerRateChangedHandler:(id)handler;
- (void)stop;
@end

@implementation ANTonePlayer

- (ANTonePlayer)initWithAudioSessionID:(unsigned int)d endpointUUID:(id)iD
{
  iDCopy = iD;
  v14.receiver = self;
  v14.super_class = ANTonePlayer;
  v8 = [(ANTonePlayer *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_endpointUUID, iD);
    v9->_proxyAudioSessionID = d;
    v9->_usingProxyAudioSession = 0;
    endpointUUID = v9->_endpointUUID;
    ANLogBuildCategoryName();
    v11 = ANLogWithCategory();
    log = v9->_log;
    v9->_log = v11;
  }

  return v9;
}

- (void)dealloc
{
  audioSession = [(ANTonePlayer *)self audioSession];
  [(ANTonePlayer *)self _deregisterForNotificationsWithAudioSession:audioSession];

  v4.receiver = self;
  v4.super_class = ANTonePlayer;
  [(ANTonePlayer *)&v4 dealloc];
}

- (void)playFileURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  [(ANTonePlayer *)self setHandler:handler];
  v7 = MEMORY[0x277CB83F8];
  proxyAudioSessionID = [(ANTonePlayer *)self proxyAudioSessionID];
  endpointUUID = [(ANTonePlayer *)self endpointUUID];
  v19 = 0;
  v10 = [v7 audioSessionWithProxyAudioSessionID:proxyAudioSessionID endpointID:endpointUUID error:&v19];
  v11 = v19;
  [(ANTonePlayer *)self setAudioSession:v10];

  audioSession = [(ANTonePlayer *)self audioSession];

  if (audioSession)
  {
    audioSession2 = [(ANTonePlayer *)self audioSession];
    opaqueSessionID = [audioSession2 opaqueSessionID];
    proxyAudioSessionID2 = [(ANTonePlayer *)self proxyAudioSessionID];

    if (opaqueSessionID == proxyAudioSessionID2)
    {
      [(ANTonePlayer *)self setUsingProxyAudioSession:1];
    }

    else
    {
      [(ANTonePlayer *)self setUsingProxyAudioSession:0];
      [(ANTonePlayer *)self setProxyAudioSessionID:0];
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__ANTonePlayer_playFileURL_completionHandler___block_invoke;
    block[3] = &unk_278C86378;
    block[4] = self;
    v18 = lCopy;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    v16 = [(ANTonePlayer *)self log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [ANTonePlayer playFileURL:v11 completionHandler:v16];
    }

    [(ANTonePlayer *)self _playSystemSoundWithFileURL:lCopy];
  }
}

- (void)playSystemSoundWithFileURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  [(ANTonePlayer *)self setHandler:handler];
  [(ANTonePlayer *)self _playSystemSoundWithFileURL:lCopy];
}

- (void)stop
{
  player = [(ANTonePlayer *)self player];
  [player pause];
}

- (void)_playSystemSoundWithFileURL:(id)l
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D26E58];
  lCopy = l;
  sharedAVSystemController = [v4 sharedAVSystemController];
  an_isCarPlayConnected = [sharedAVSystemController an_isCarPlayConnected];

  v8 = [(ANTonePlayer *)self log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v22 = an_isCarPlayConnected;
    _os_log_impl(&dword_23F525000, v8, OS_LOG_TYPE_DEFAULT, "CarPlay is Connected: %d", buf, 8u);
  }

  outSystemSoundID = 0;
  AudioServicesCreateSystemSoundID(lCopy, &outSystemSoundID);

  v9 = objc_opt_new();
  v10 = v9;
  if (an_isCarPlayConnected)
  {
    [v9 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CBA648]];
  }

  v11 = [(ANTonePlayer *)self log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v22 = outSystemSoundID;
    v23 = 2112;
    v24 = v10;
    _os_log_impl(&dword_23F525000, v11, OS_LOG_TYPE_DEFAULT, "Playing system sound. SoundID=%u, options=%@", buf, 0x12u);
  }

  v12 = dispatch_get_global_queue(25, 0);
  v13 = dispatch_time(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__ANTonePlayer__playSystemSoundWithFileURL___block_invoke;
  block[3] = &unk_278C86988;
  v19 = outSystemSoundID;
  v17 = v10;
  selfCopy = self;
  v14 = v10;
  dispatch_after(v13, v12, block);

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __44__ANTonePlayer__playSystemSoundWithFileURL___block_invoke(uint64_t a1)
{
  v4 = *(a1 + 48);
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  return AudioServicesPlaySystemSoundWithOptions();
}

uint64_t __44__ANTonePlayer__playSystemSoundWithFileURL___block_invoke_2(uint64_t a1)
{
  AudioServicesDisposeSystemSoundID(*(a1 + 40));
  v2 = *(a1 + 32);

  return [v2 _callHandler:0];
}

- (void)_playFileURL:(id)l
{
  v4 = [MEMORY[0x277CE6598] playerWithURL:l];
  [(ANTonePlayer *)self setPlayer:v4];

  player = [(ANTonePlayer *)self player];
  v20 = 0;
  v6 = [(ANTonePlayer *)self _activateAudioSessionForPlayer:player error:&v20];
  v7 = v20;

  if (v6)
  {
    audioSession = [(ANTonePlayer *)self audioSession];
    [(ANTonePlayer *)self _registerForNotificationsWithAudioSession:audioSession];

    player2 = [(ANTonePlayer *)self player];
    currentItem = [player2 currentItem];
    [(ANTonePlayer *)self setPlayerItem:currentItem];

    endpointUUID = [(ANTonePlayer *)self endpointUUID];
    if (!endpointUUID || (v12 = endpointUUID, -[ANTonePlayer endpointUUID](self, "endpointUUID"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 an_isLocalDevice], v13, v12, v14))
    {
      mEMORY[0x277CEABE8] = [MEMORY[0x277CEABE8] sharedController];
      [mEMORY[0x277CEABE8] setVolumeWithOptions:1];
    }

    player3 = [(ANTonePlayer *)self player];
    [player3 play];

    v17 = [(ANTonePlayer *)self log];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_23F525000, v17, OS_LOG_TYPE_DEFAULT, "Playback started", v19, 2u);
    }
  }

  else
  {
    v18 = [(ANTonePlayer *)self log];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [(ANTonePlayer *)v7 _playFileURL:v18];
    }

    [(ANTonePlayer *)self _callHandler:v7];
  }
}

- (BOOL)_activateAudioSessionForPlayer:(id)player error:(id *)error
{
  playerCopy = player;
  audioSession = [(ANTonePlayer *)self audioSession];
  [playerCopy setAudioSession:audioSession];

  if ([(ANTonePlayer *)self usingProxyAudioSession])
  {
    v8 = [(ANTonePlayer *)self log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_23F525000, v8, OS_LOG_TYPE_DEFAULT, "Using proxy audio session. Skipping activation.", v12, 2u);
    }

    return 1;
  }

  else
  {
    audioSession2 = [(ANTonePlayer *)self audioSession];
    v11 = [audioSession2 setActive:1 error:error];

    return v11;
  }
}

- (void)_deactivateAudioSession
{
  v19 = *MEMORY[0x277D85DE8];
  if (![(ANTonePlayer *)self usingProxyAudioSession])
  {
    audioSession = [(ANTonePlayer *)self audioSession];
    opaqueSessionID = [audioSession opaqueSessionID];

    audioSession2 = [(ANTonePlayer *)self audioSession];
    v12 = 0;
    v7 = [audioSession2 setActive:0 withOptions:1 error:&v12];
    v3 = v12;

    v8 = [(ANTonePlayer *)self log];
    v9 = v8;
    if (v7)
    {
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
LABEL_9:

        goto LABEL_10;
      }

      audioSession3 = [(ANTonePlayer *)self audioSession];
      *buf = 138412546;
      v14 = audioSession3;
      v15 = 1024;
      v16 = opaqueSessionID;
      _os_log_impl(&dword_23F525000, v9, OS_LOG_TYPE_DEFAULT, "Deactivated audio session %@ (ID = %d)", buf, 0x12u);
    }

    else
    {
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }

      audioSession3 = [(ANTonePlayer *)self audioSession];
      *buf = 138412802;
      v14 = audioSession3;
      v15 = 1024;
      v16 = opaqueSessionID;
      v17 = 2112;
      v18 = v3;
      _os_log_error_impl(&dword_23F525000, v9, OS_LOG_TYPE_ERROR, "Failed to deactivate audio session %@ (ID = %d), Error = %@", buf, 0x1Cu);
    }

    goto LABEL_9;
  }

  v3 = [(ANTonePlayer *)self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23F525000, v3, OS_LOG_TYPE_DEFAULT, "Using proxy audio session. Skipping deactivation.", buf, 2u);
  }

LABEL_10:

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_registerForNotificationsWithAudioSession:(id)session
{
  v4 = MEMORY[0x277CCAB98];
  sessionCopy = session;
  defaultCenter = [v4 defaultCenter];
  [defaultCenter addObserver:self selector:sel_audioSessionInterruptionHandler_ name:*MEMORY[0x277CB8068] object:sessionCopy];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel__handleFailure name:*MEMORY[0x277CB8098] object:0];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter3 addObserver:self selector:sel__handleFailure name:*MEMORY[0x277CB80A0] object:0];

  defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter4 addObserver:self selector:sel__handlePlayerItemPlayedToEnd_ name:*MEMORY[0x277CE60C0] object:0];

  defaultCenter5 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter5 addObserver:self selector:sel__handlePlayerItemFailedToPlayToEnd_ name:*MEMORY[0x277CE60D0] object:0];

  defaultCenter6 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter6 addObserver:self selector:sel_playerRateChangedHandler_ name:*MEMORY[0x277CE6158] object:0];
}

- (void)_deregisterForNotificationsWithAudioSession:(id)session
{
  v4 = MEMORY[0x277CCAB98];
  sessionCopy = session;
  defaultCenter = [v4 defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277CB8068] object:sessionCopy];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 removeObserver:self name:*MEMORY[0x277CB8098] object:0];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter3 removeObserver:self name:*MEMORY[0x277CB80A0] object:0];

  defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter4 removeObserver:self name:*MEMORY[0x277CE60C0] object:0];

  defaultCenter5 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter5 removeObserver:self name:*MEMORY[0x277CE60D0] object:0];

  defaultCenter6 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter6 removeObserver:self name:*MEMORY[0x277CE6158] object:0];
}

- (void)audioSessionInterruptionHandler:(id)handler
{
  v22 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  object = [handlerCopy object];
  if (object && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    audioSession = [(ANTonePlayer *)self audioSession];

    v7 = [(ANTonePlayer *)self log];
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (object != audioSession)
    {
      if (v8)
      {
        audioSession2 = [(ANTonePlayer *)self audioSession];
        v18 = 138412546;
        v19 = audioSession2;
        v20 = 2112;
        v21 = object;
        _os_log_impl(&dword_23F525000, v7, OS_LOG_TYPE_DEFAULT, "Received Audio Session Interruption Notification for different Audio Session. Expected: %@, Actual: %@", &v18, 0x16u);
      }

      goto LABEL_8;
    }

    if (v8)
    {
      v18 = 138412290;
      v19 = object;
      _os_log_impl(&dword_23F525000, v7, OS_LOG_TYPE_DEFAULT, "Received Audio Session Interruption Notification for Audio Session %@", &v18, 0xCu);
    }

    userInfo = [handlerCopy userInfo];
    v7 = userInfo;
    if (userInfo)
    {
      v12 = [userInfo valueForKey:*MEMORY[0x277CB8080]];
      v13 = v12;
      if (v12)
      {
        unsignedIntegerValue = [v12 unsignedIntegerValue];
        v15 = [(ANTonePlayer *)self log];
        player = v15;
        if (!unsignedIntegerValue)
        {
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v18) = 0;
            _os_log_impl(&dword_23F525000, player, OS_LOG_TYPE_DEFAULT, "Audio Session Interruption Ended. Not playing. Doing nothing.", &v18, 2u);
          }

          goto LABEL_29;
        }

        if (unsignedIntegerValue == 1)
        {
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v18) = 0;
            _os_log_impl(&dword_23F525000, player, OS_LOG_TYPE_DEFAULT, "Audio Session Interruption Began", &v18, 2u);
          }

          player = [(ANTonePlayer *)self player];
          [player pause];
        }

        else if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [ANTonePlayer audioSessionInterruptionHandler:];
        }
      }

      else
      {
        player = [(ANTonePlayer *)self log];
        if (os_log_type_enabled(player, OS_LOG_TYPE_ERROR))
        {
          [ANTonePlayer audioSessionInterruptionHandler:];
        }
      }

      [(ANTonePlayer *)self _handleFailure];
LABEL_29:

      goto LABEL_8;
    }

    v17 = [(ANTonePlayer *)self log];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [ANTonePlayer audioSessionInterruptionHandler:];
    }

    [(ANTonePlayer *)self _handleFailure];
  }

  else
  {
    v7 = [(ANTonePlayer *)self log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [ANTonePlayer audioSessionInterruptionHandler:];
    }
  }

LABEL_8:

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_handleFailure
{
  v3 = [(ANTonePlayer *)self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23F525000, v3, OS_LOG_TYPE_DEFAULT, "Handling Failure. Deactivating Audio Session and Ending Playback.", v4, 2u);
  }

  [(ANTonePlayer *)self _deactivateAudioSession];
  [(ANTonePlayer *)self _callHandler:0];
}

- (void)_handlePlayerItemFailedToPlayToEnd:(id)end
{
  object = [end object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = object;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  playerItem = [(ANTonePlayer *)self playerItem];
  if (playerItem)
  {
    v8 = playerItem;
    playerItem2 = [(ANTonePlayer *)self playerItem];

    if (v6 == playerItem2)
    {
      v10 = [(ANTonePlayer *)self log];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [ANTonePlayer _handlePlayerItemFailedToPlayToEnd:];
      }

      [(ANTonePlayer *)self _handleFailure];
    }
  }
}

- (void)_handlePlayerItemPlayedToEnd:(id)end
{
  object = [end object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = object;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  playerItem = [(ANTonePlayer *)self playerItem];
  if (playerItem)
  {
    v8 = playerItem;
    playerItem2 = [(ANTonePlayer *)self playerItem];

    if (v6 == playerItem2)
    {
      v10 = [(ANTonePlayer *)self log];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&dword_23F525000, v10, OS_LOG_TYPE_DEFAULT, "Tone Player Finished Playing", v11, 2u);
      }

      [(ANTonePlayer *)self _deactivateAudioSession];
      [(ANTonePlayer *)self _callHandler:0];
    }
  }
}

- (void)playerRateChangedHandler:(id)handler
{
  v16 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  object = [handlerCopy object];
  if (object)
  {
    player = [(ANTonePlayer *)self player];

    if (object == player)
    {
      v7 = [(ANTonePlayer *)self log];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412290;
        v15 = *&handlerCopy;
        _os_log_impl(&dword_23F525000, v7, OS_LOG_TYPE_DEFAULT, "|> Rate Changed Notification: %@", &v14, 0xCu);
      }

      v8 = [(ANTonePlayer *)self log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        [object rate];
        v14 = 134217984;
        v15 = v9;
        _os_log_impl(&dword_23F525000, v8, OS_LOG_TYPE_DEFAULT, "|> Player Rate: %f", &v14, 0xCu);
      }

      userInfo = [handlerCopy userInfo];
      v11 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CE6160]];

      if (v11 && [v11 isEqualToString:*MEMORY[0x277CE6168]])
      {
        v12 = [(ANTonePlayer *)self log];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [ANTonePlayer playerRateChangedHandler:];
        }

        [(ANTonePlayer *)self _handleFailure];
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_callHandler:(id)handler
{
  handlerCopy = handler;
  handler = [(ANTonePlayer *)self handler];

  if (handler)
  {
    handler2 = [(ANTonePlayer *)self handler];
    (handler2)[2](handler2, handlerCopy);

    [(ANTonePlayer *)self setHandler:0];
  }
}

- (void)playFileURL:(uint64_t)a1 completionHandler:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_23F525000, a2, OS_LOG_TYPE_ERROR, "Failed to create Audio Session. Error = %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_playFileURL:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_23F525000, a2, OS_LOG_TYPE_ERROR, "Failed to activate Audio Session. Error = %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end