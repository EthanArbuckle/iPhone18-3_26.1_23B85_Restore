@interface LPMediaPlaybackManager
+ (id)shared;
- (BOOL)_sharedSessionHasPlayingAudio;
- (BOOL)releaseDecodingResourcesForInactivePlayers;
- (LPMediaPlaybackManager)init;
- (id)audioSession;
- (void)_deactivateAllPlayingMediaPlayersExcept:(id)except;
- (void)_updateAudioSessionCategory;
- (void)_volumeChanged;
- (void)mediaPlayer:(id)player didChangeMutedState:(BOOL)state;
- (void)mediaPlayer:(id)player didChangePlayingState:(BOOL)state;
- (void)volumeChanged:(id)changed;
@end

@implementation LPMediaPlaybackManager

- (LPMediaPlaybackManager)init
{
  v12[1] = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = LPMediaPlaybackManager;
  v2 = [(LPMediaPlaybackManager *)&v11 init];
  if (v2)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    mediaPlayers = v2->_mediaPlayers;
    v2->_mediaPlayers = weakObjectsHashTable;

    mEMORY[0x1E69AED10] = [MEMORY[0x1E69AED10] sharedAVSystemController];
    v6 = MEMORY[0x1E69AECE8];
    v12[0] = *MEMORY[0x1E69AECE8];
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    [mEMORY[0x1E69AED10] setAttribute:v7 forKey:*MEMORY[0x1E69AECD8] error:0];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_volumeChanged_ name:*v6 object:0];

    v9 = v2;
  }

  return v2;
}

+ (id)shared
{
  v2 = shared_singleton_0;
  if (!shared_singleton_0)
  {
    v3 = objc_alloc_init(LPMediaPlaybackManager);
    v4 = shared_singleton_0;
    shared_singleton_0 = v3;

    v2 = shared_singleton_0;
  }

  return v2;
}

- (void)mediaPlayer:(id)player didChangePlayingState:(BOOL)state
{
  stateCopy = state;
  playerCopy = player;
  if (stateCopy && [playerCopy isActive])
  {
    [(LPMediaPlaybackManager *)self _deactivateAllPlayingMediaPlayersExcept:playerCopy];
  }

  [(LPMediaPlaybackManager *)self _updateAudioSessionCategory];
}

- (void)mediaPlayer:(id)player didChangeMutedState:(BOOL)state
{
  playerCopy = player;
  if (!state)
  {
    [(LPMediaPlaybackManager *)self _deactivateAllPlayingMediaPlayersExcept:playerCopy];
  }

  [(LPMediaPlaybackManager *)self _updateAudioSessionCategory];
}

- (void)_deactivateAllPlayingMediaPlayersExcept:(id)except
{
  v15 = *MEMORY[0x1E69E9840];
  exceptCopy = except;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_mediaPlayers;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (v9 != exceptCopy && [*(*(&v10 + 1) + 8 * v8) isActive] && objc_msgSend(v9, "isPlaying"))
        {
          [v9 setActive:0];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (BOOL)releaseDecodingResourcesForInactivePlayers
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_mediaPlayers;
  v3 = 0;
  v4 = [(NSHashTable *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          v3 |= [v7 releaseDecodingResourcesIfInactive];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [(NSHashTable *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  return v3 & 1;
}

- (id)audioSession
{
  v2 = audioSession_session;
  if (!audioSession_session)
  {
    initAuxiliarySession = [objc_alloc(MEMORY[0x1E6958460]) initAuxiliarySession];
    v4 = audioSession_session;
    audioSession_session = initAuxiliarySession;

    [audioSession_session setCategory:*MEMORY[0x1E6958038] error:0];
    v2 = audioSession_session;
  }

  return v2;
}

- (BOOL)_sharedSessionHasPlayingAudio
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_mediaPlayers;
  v3 = [(NSHashTable *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if ([v6 isMuted] & 1) == 0 && objc_msgSend(v6, "isPlaying") && (objc_msgSend(v6, "usesSharedAudioSession"))
        {
          LOBYTE(v3) = 1;
          goto LABEL_13;
        }
      }

      v3 = [(NSHashTable *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v3;
}

- (void)_updateAudioSessionCategory
{
  audioSession = [(LPMediaPlaybackManager *)self audioSession];
  _sharedSessionHasPlayingAudio = [(LPMediaPlaybackManager *)self _sharedSessionHasPlayingAudio];
  v4 = MEMORY[0x1E6958068];
  if (!_sharedSessionHasPlayingAudio)
  {
    v4 = MEMORY[0x1E6958038];
  }

  v5 = *v4;
  category = [audioSession category];
  v7 = [v5 isEqualToString:category];

  if ((v7 & 1) == 0)
  {
    [audioSession setCategory:v5 error:0];
  }
}

- (void)_volumeChanged
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v4 = self->_mediaPlayers;
  v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v5)
  {
    v6 = *v35;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v35 != v6)
      {
        objc_enumerationMutation(v4);
      }

      v8 = *(*(&v34 + 1) + 8 * v7);
      if ([v8 isFullScreen] & 1) != 0 || (objc_msgSend(v8, "isMuted") & 1) == 0 && (objc_msgSend(v8, "isPlaying"))
      {
        break;
      }

      if ([v8 shouldUnmuteWhenUserAdjustsVolume] && objc_msgSend(v8, "isPlaying"))
      {
        [v3 addObject:v8];
      }

      if (v5 == ++v7)
      {
        v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v34 objects:v40 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_14;
      }
    }
  }

  else
  {
LABEL_14:

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v9 = v3;
    v10 = [v9 countByEnumeratingWithState:&v30 objects:v39 count:16];
    if (v10)
    {
      v4 = 0;
      v11 = *v31;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v31 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v30 + 1) + 8 * i);
          lastInteractionTimestamp = [v13 lastInteractionTimestamp];
          if (lastInteractionTimestamp > [(NSHashTable *)v4 lastInteractionTimestamp])
          {
            v15 = v13;

            v4 = v15;
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v30 objects:v39 count:16];
      }

      while (v10);

      if (v4)
      {
        [(NSHashTable *)v4 setActive:1];
        goto LABEL_36;
      }
    }

    else
    {
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v16 = v9;
    v17 = 0;
    v18 = [v16 countByEnumeratingWithState:&v26 objects:v38 count:16];
    if (v18)
    {
      v19 = *v27;
      v20 = 0.0;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v27 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v22 = *(*(&v26 + 1) + 8 * j);
          [v22 unobscuredAreaFraction];
          v24 = v23;
          if (v23 > v20)
          {
            v25 = v22;

            v17 = v25;
            v20 = v24;
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v26 objects:v38 count:16];
      }

      while (v18);
    }

    [v17 setActive:1];
    v4 = 0;
  }

LABEL_36:
}

- (void)volumeChanged:(id)changed
{
  userInfo = [changed userInfo];
  v5 = [userInfo objectForKey:*MEMORY[0x1E69AEA10]];
  v6 = [v5 isEqualToString:@"ExplicitVolumeChange"];

  if (v6)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __40__LPMediaPlaybackManager_volumeChanged___block_invoke;
    block[3] = &unk_1E7A35450;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

@end