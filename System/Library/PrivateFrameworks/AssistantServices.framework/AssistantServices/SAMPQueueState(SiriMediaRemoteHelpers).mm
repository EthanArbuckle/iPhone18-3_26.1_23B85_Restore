@interface SAMPQueueState(SiriMediaRemoteHelpers)
- (id)_mediaItemIdURLFromNowPlayingInfo:()SiriMediaRemoteHelpers;
- (id)_mediaTypeFromNowPlayingInfo:()SiriMediaRemoteHelpers;
- (void)_af_setNowPlayingInfo:()SiriMediaRemoteHelpers mediaType:;
- (void)_af_setShuffleModeFromNowPlayingInfo:()SiriMediaRemoteHelpers;
- (void)_af_validateAndFinalize;
@end

@implementation SAMPQueueState(SiriMediaRemoteHelpers)

- (void)_af_validateAndFinalize
{
  v13 = *MEMORY[0x1E69E9840];
  applicationIdentifier = [self applicationIdentifier];

  if (!applicationIdentifier)
  {
    if ([self state] == 1)
    {
      v3 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v9 = 136315138;
        v10 = "[SAMPQueueState(SiriMediaRemoteHelpers) _af_validateAndFinalize]";
        _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s NowPlaying reports we are playing, but we have no ApplicationDisplayID for who is playing", &v9, 0xCu);
      }
    }

    listeningToItem = [self listeningToItem];

    if (listeningToItem)
    {
      v5 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v6 = v5;
        listeningToItem2 = [self listeningToItem];
        v9 = 136315394;
        v10 = "[SAMPQueueState(SiriMediaRemoteHelpers) _af_validateAndFinalize]";
        v11 = 2112;
        v12 = listeningToItem2;
        _os_log_impl(&dword_1912FE000, v6, OS_LOG_TYPE_INFO, "%s We have a NowPlaying listeningToItem but no ApplicationDisplayID for it %@", &v9, 0x16u);
      }
    }

    [self setState:3];
    [self setListeningToItem:0];
    [self setPlaybackQueuePosition:0];
    [self setSource:0];
    [self setPlaybackRate:0];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_af_setNowPlayingInfo:()SiriMediaRemoteHelpers mediaType:
{
  v64 = *MEMORY[0x1E69E9840];
  v6 = AFValidatedNowPlayingInfo(a3);
  v7 = [v6 objectForKey:*MEMORY[0x1E69B0F20]];
  bOOLValue = [v7 BOOLValue];

  v9 = 0x1E69C78D0;
  if (!bOOLValue)
  {
    v9 = 0x1E69C78D8;
  }

  v10 = objc_alloc_init(*v9);
  v11 = [v6 objectForKey:*MEMORY[0x1E69B1030]];
  [v10 setTitle:v11];

  v12 = [v6 objectForKey:*MEMORY[0x1E69B0E40]];
  [v10 setAlbum:v12];

  v13 = [v6 objectForKey:*MEMORY[0x1E69B0E58]];
  [v10 setArtist:v13];

  v14 = [v6 objectForKey:*MEMORY[0x1E69B0EA0]];
  [v10 setBrandIdentifier:v14];

  v15 = [v6 objectForKey:*MEMORY[0x1E69B0F00]];
  [v10 setExternalIdentifier:v15];

  v16 = AFGetCurrentItemAdamIDFromNowPlayingInfo(v6);
  stringValue = [v16 stringValue];
  [v10 setAdamIdentifier:stringValue];

  switch(a4)
  {
    case 0:
      v19 = [self _mediaTypeFromNowPlayingInfo:v6];
LABEL_12:
      [v10 setMediaType:v19];
      goto LABEL_14;
    case 1:
      v18 = MEMORY[0x1E69C8058];
      goto LABEL_8;
    case 2:
      v18 = MEMORY[0x1E69C8060];
LABEL_8:
      v19 = *v18;
      goto LABEL_11;
  }

  v19 = 0;
LABEL_11:
  if ([v19 length])
  {
    goto LABEL_12;
  }

  v20 = [self _mediaTypeFromNowPlayingInfo:v6];
  [v10 setMediaType:v20];

LABEL_14:
  v21 = [self _mediaItemIdURLFromNowPlayingInfo:v6];
  [v10 setIdentifier:v21];

  v22 = objc_alloc_init(MEMORY[0x1E69C78F0]);
  v23 = [v6 objectForKey:*MEMORY[0x1E69B0EE8]];
  v24 = v23;
  if (v23)
  {
    [v23 doubleValue];
    v26 = v25;
    [v22 setDurationMillis:(v25 * 1000.0)];
  }

  else
  {
    v26 = -1.0;
  }

  v27 = [v6 objectForKey:*MEMORY[0x1E69B0EF0]];
  v28 = MEMORY[0x1E69B0F80];
  if (v27)
  {
    v29 = [v6 objectForKey:*MEMORY[0x1E69B1028]];
    if (v29)
    {
      date = [MEMORY[0x1E695DF00] date];
      [date timeIntervalSinceDate:v29];
      v32 = v31;

      v33 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *v61 = 136315394;
        *&v61[4] = "[SAMPQueueState(SiriMediaRemoteHelpers) _af_setNowPlayingInfo:mediaType:]";
        *&v61[12] = 2048;
        *&v61[14] = v32;
        _os_log_impl(&dword_1912FE000, v33, OS_LOG_TYPE_INFO, "%s infoToNowOffset = %g", v61, 0x16u);
      }
    }

    else
    {
      v32 = 0.0;
    }

    v34 = [v6 objectForKey:*v28];
    v35 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *v61 = 136315394;
      *&v61[4] = "[SAMPQueueState(SiriMediaRemoteHelpers) _af_setNowPlayingInfo:mediaType:]";
      *&v61[12] = 2112;
      *&v61[14] = v34;
      _os_log_impl(&dword_1912FE000, v35, OS_LOG_TYPE_INFO, "%s playbackRate = %@", v61, 0x16u);
    }

    if (v34)
    {
      [v34 doubleValue];
      v32 = v32 * v36;
      v37 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *v61 = 136315394;
        *&v61[4] = "[SAMPQueueState(SiriMediaRemoteHelpers) _af_setNowPlayingInfo:mediaType:]";
        *&v61[12] = 2048;
        *&v61[14] = v32;
        _os_log_impl(&dword_1912FE000, v37, OS_LOG_TYPE_INFO, "%s adjusted infoToNowOffset = %g", v61, 0x16u);
      }
    }

    [v27 doubleValue];
    v39 = v32 + v38;
    if (v39 >= v26)
    {
      v40 = v26;
    }

    else
    {
      v40 = v39;
    }

    if (v26 <= 0.0)
    {
      v41 = v39;
    }

    else
    {
      v41 = v40;
    }

    v42 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *v61 = 136315394;
      *&v61[4] = "[SAMPQueueState(SiriMediaRemoteHelpers) _af_setNowPlayingInfo:mediaType:]";
      *&v61[12] = 2048;
      *&v61[14] = v41;
      _os_log_impl(&dword_1912FE000, v42, OS_LOG_TYPE_INFO, "%s calculatedElapsedTime = %g", v61, 0x16u);
    }

    [v22 setPlaybackPositionMillis:(v41 * 1000.0)];

    v28 = MEMORY[0x1E69B0F80];
  }

  else if (!v24)
  {
    if (bOOLValue)
    {
      goto LABEL_44;
    }

    goto LABEL_40;
  }

  [v10 setPlaybackInfo:v22];
  if (bOOLValue)
  {
    goto LABEL_44;
  }

LABEL_40:
  title = [v10 title];
  if (title || ([v10 album], (title = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v10, "artist"), (title = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    identifier = [v10 identifier];

    if (!identifier)
    {

      [self setListeningToItem:0];
      goto LABEL_48;
    }
  }

LABEL_44:
  [self setListeningToItem:v10];
  if (v10)
  {
    v44 = [v6 objectForKey:*MEMORY[0x1E69B0FA8]];

    v45 = MEMORY[0x1E69C8030];
    if (!v44)
    {
      v45 = MEMORY[0x1E69C8028];
    }

    [self setSource:*v45];
    v46 = [v6 objectForKey:*MEMORY[0x1E69B0F60]];
    [self setCurrentItemSteerable:{objc_msgSend(v46, "BOOLValue")}];
  }

LABEL_48:
  v47 = objc_alloc_init(MEMORY[0x1E69C78E8]);
  v48 = [v6 objectForKey:*MEMORY[0x1E69B0FA0]];
  [v47 setIndex:{objc_msgSend(v48, "unsignedIntegerValue")}];
  v49 = [v6 objectForKey:*MEMORY[0x1E69B1048]];
  [v47 setQueueSize:{objc_msgSend(v49, "unsignedIntegerValue")}];
  [self setPlaybackQueuePosition:v47];
  v50 = [v6 objectForKey:*v28];
  [v50 doubleValue];
  v52 = v51;

  v53 = [objc_alloc(MEMORY[0x1E696AD98]) initWithDouble:v52];
  [self setPlaybackRate:v53];

  v54 = [v6 objectForKey:*MEMORY[0x1E69B0EB8]];
  if ([v54 count])
  {
    v55 = objc_alloc_init(MEMORY[0x1E695DF90]);
    *v61 = MEMORY[0x1E69E9820];
    *&v61[8] = 3221225472;
    *&v61[16] = ___ListeningToContainerFromNowPlayingInfo_block_invoke;
    v62 = &unk_1E7347DC8;
    v56 = v55;
    v63 = v56;
    [v54 enumerateKeysAndObjectsUsingBlock:v61];
  }

  else
  {
    v57 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *v61 = 136315138;
      *&v61[4] = "_ListeningToContainerFromNowPlayingInfo";
      _os_log_impl(&dword_1912FE000, v57, OS_LOG_TYPE_INFO, "%s No container info", v61, 0xCu);
    }

    v56 = 0;
  }

  [self setCurrentListeningToContainer:v56];
  [self _af_setShuffleModeFromNowPlayingInfo:v6];
  v58 = AFLanguageOptionsForNowPlayingInfo(v6);
  [self setAudioAndSubtitleLanguageOptions:v58];

  v59 = *MEMORY[0x1E69E9840];
}

- (void)_af_setShuffleModeFromNowPlayingInfo:()SiriMediaRemoteHelpers
{
  v4 = [a3 objectForKey:*MEMORY[0x1E69B0FD8]];
  v7 = v4;
  if (v4 && (v5 = [v4 intValue] - 1, v5 <= 2))
  {
    v6 = qword_1E7347ED8[v5];
  }

  else
  {
    v6 = 0;
  }

  [self setShuffleEnabled:v6];
}

- (id)_mediaTypeFromNowPlayingInfo:()SiriMediaRemoteHelpers
{
  v3 = [a3 objectForKey:*MEMORY[0x1E69B0F70]];
  if ([v3 isEqualToString:*MEMORY[0x1E69B1060]] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E69B0DE8]) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E69B0DF0]) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E69B0DD0]))
  {
    v4 = MEMORY[0x1E69C8058];
LABEL_6:
    v5 = *v4;
    goto LABEL_7;
  }

  if ([v3 isEqualToString:*MEMORY[0x1E69B1068]])
  {
    v4 = MEMORY[0x1E69C8060];
    goto LABEL_6;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (id)_mediaItemIdURLFromNowPlayingInfo:()SiriMediaRemoteHelpers
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = AFGetCurrentItemAdamIDFromNowPlayingInfo(v3);
  stringValue = [v4 stringValue];

  if (stringValue)
  {
    stringValue2 = stringValue;
    v7 = @"store";
    goto LABEL_3;
  }

  v11 = [v3 objectForKey:*MEMORY[0x1E69B0F00]];
  if (v11)
  {
    v12 = v11;
    uRLPathAllowedCharacterSet = [MEMORY[0x1E696AB08] URLPathAllowedCharacterSet];
    stringValue2 = [v12 stringByAddingPercentEncodingWithAllowedCharacters:uRLPathAllowedCharacterSet];

    if (stringValue2)
    {
      v7 = @"external";
      goto LABEL_3;
    }
  }

  v14 = [v3 objectForKey:*MEMORY[0x1E69B1070]];
  if (!v14)
  {
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    uRLPathAllowedCharacterSet2 = [MEMORY[0x1E696AB08] URLPathAllowedCharacterSet];
    stringValue2 = [v14 stringByAddingPercentEncodingWithAllowedCharacters:uRLPathAllowedCharacterSet2];

    goto LABEL_14;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v17 = v16;
      v19 = 136315650;
      v20 = "_DeviceIdFromNowPlayingInfo";
      v21 = 2112;
      v22 = objc_opt_class();
      v23 = 2112;
      v24 = v14;
      v18 = v22;
      _os_log_impl(&dword_1912FE000, v17, OS_LOG_TYPE_INFO, "%s Bad NowPlaying Info, kMRMediaRemoteNowPlayingInfoUniqueIdentifier gave unexpected item of class %@,  %@", &v19, 0x20u);
    }

LABEL_19:

    stringValue2 = 0;
    v7 = 0;
    goto LABEL_3;
  }

  stringValue2 = [v14 stringValue];
LABEL_14:

  if (stringValue2)
  {
    v7 = @"device";
  }

  else
  {
    v7 = 0;
  }

LABEL_3:
  v8 = _AFMediaIdURLFromHostAndIdentifier(v7, stringValue2);

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

@end