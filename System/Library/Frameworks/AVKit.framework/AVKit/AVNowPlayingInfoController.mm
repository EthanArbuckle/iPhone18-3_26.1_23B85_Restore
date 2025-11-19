@interface AVNowPlayingInfoController
+ (id)_avMediaCharacteristics;
+ (id)_mediaRemoteLanguageOptionCharacteristicForAVMediaCharacteristic:(id)a3;
+ (id)_mediaRemoteLanguageOptionCharacteristicsForAVMediaSelectionOption:(id)a3;
+ (void)_createMediaRemoteLanguageOptionGroupWithAVMediaSelectionOptions:(id)a3;
+ (void)_createMediaRemoteLanguageOptionWithAVMediaSelectionOption:(id)a3;
+ (void)sharedNowPlayingInfoControllerWithCompletion:(id)a3;
- (AVNowPlayingInfoController)init;
- (AVPlayerController)playerControllerToActivateAfterDelay;
- (NSTimer)startNowPlayingUpdatesTimer;
- (id)_availableLanguageOptions;
- (id)_createNowPlayingInfoFromPlaybackInfo:(id)a3;
- (id)_currentLanguageOptions;
- (id)_makeCommandsAndStatesDictionaryForPlayerController:(id)a3;
- (id)_makePlaybackInfoDictionary;
- (unsigned)_handleRemoteCommand:(unsigned int)a3 options:(id)a4;
- (void)_setNowPlayingInfoNeedsUpdate;
- (void)_updateNowPlayingInfo:(id)a3 commandsAndStates:(id)a4;
- (void)_updateNowPlayingInfoIfNeeded;
- (void)_updateRegisteredRemoteCommandEnabledStatesWithCommandsAndStates:(id)a3;
- (void)dealloc;
- (void)setEnabled:(BOOL)a3;
- (void)setOverrideParentApplicationDisplayIdentifier:(id)a3;
- (void)setPlayerController:(id)a3;
- (void)setRequiresLinearPlayback:(BOOL)a3;
- (void)setSuspended:(BOOL)a3;
- (void)startNowPlayingUpdatesForPlayerController:(id)a3 afterDelay:(double)a4;
- (void)stopNowPlayingUpdatesForPlayerController:(id)a3;
@end

@implementation AVNowPlayingInfoController

- (NSTimer)startNowPlayingUpdatesTimer
{
  WeakRetained = objc_loadWeakRetained(&self->_startNowPlayingUpdatesTimer);

  return WeakRetained;
}

- (AVPlayerController)playerControllerToActivateAfterDelay
{
  WeakRetained = objc_loadWeakRetained(&self->_playerControllerToActivateAfterDelay);

  return WeakRetained;
}

- (id)_currentLanguageOptions
{
  v2 = [(AVNowPlayingInfoController *)self playerController];
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [v2 currentAudioMediaSelectionOption];
  if (v4)
  {
    v5 = [objc_opt_class() _createMediaRemoteLanguageOptionWithAVMediaSelectionOption:v4];
    if (v5)
    {
      v6 = v5;
      [v3 addObject:v5];
    }
  }

  v7 = [v2 currentLegibleMediaSelectionOption];
  if (v7)
  {
    v8 = [objc_opt_class() _createMediaRemoteLanguageOptionWithAVMediaSelectionOption:v7];
    if (v8)
    {
      v9 = v8;
      [v3 addObject:v8];
    }
  }

  return v3;
}

- (id)_availableLanguageOptions
{
  v2 = [(AVNowPlayingInfoController *)self playerController];
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [v2 audioMediaSelectionOptions];
  if ([v4 count])
  {
    v5 = [objc_opt_class() _createMediaRemoteLanguageOptionGroupWithAVMediaSelectionOptions:v4];
    if (v5)
    {
      v6 = v5;
      [v3 addObject:v5];
    }
  }

  v7 = [v2 legibleMediaSelectionOptions];
  if ([v7 count])
  {
    v8 = [objc_opt_class() _createMediaRemoteLanguageOptionGroupWithAVMediaSelectionOptions:v7];
    if (v8)
    {
      v9 = v8;
      [v3 addObject:v8];
    }
  }

  return v3;
}

- (unsigned)_handleRemoteCommand:(unsigned int)a3 options:(id)a4
{
  v70[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  if ([(AVNowPlayingInfoController *)self isEnabled])
  {
    v7 = [(AVNowPlayingInfoController *)self playerController];
    if (v7)
    {
      v8 = 0;
      switch(a3)
      {
        case 0u:
          v9 = _AVLog();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_18B49C000, v9, OS_LOG_TYPE_DEFAULT, "Play command", buf, 2u);
          }

          if (![v7 canPlay])
          {
            goto LABEL_102;
          }

          [v7 play:0];
          goto LABEL_97;
        case 1u:
          v24 = _AVLog();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_18B49C000, v24, OS_LOG_TYPE_DEFAULT, "Pause command", buf, 2u);
          }

          if (![v7 canPause])
          {
            goto LABEL_102;
          }

          [v7 pause:0];
          goto LABEL_97;
        case 2u:
          v20 = _AVLog();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_18B49C000, v20, OS_LOG_TYPE_DEFAULT, "Toggle play pause command", buf, 2u);
          }

          if (![v7 canTogglePlayback])
          {
            goto LABEL_102;
          }

          [v7 togglePlayback:0];
          goto LABEL_97;
        case 3u:
          v34 = _AVLog();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_18B49C000, v34, OS_LOG_TYPE_DEFAULT, "Stop command", buf, 2u);
          }

          if ([v7 canPause])
          {
            [v7 pause:0];
            v8 = 0;
          }

          else
          {
            v8 = 2;
          }

          v51 = [MEMORY[0x1E696AD88] defaultCenter];
          [v51 postNotificationName:@"AVNowPlayingInfoControllerDidReceiveStopCommandEventNotification" object:self];

          goto LABEL_98;
        case 4u:
          v35 = _AVLog();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_18B49C000, v35, OS_LOG_TYPE_DEFAULT, "Next track command", buf, 2u);
          }

          if ([v7 canSeekChapterForward])
          {
            [v7 seekChapterForward:0];
            goto LABEL_97;
          }

          if (![v7 canSeek])
          {
            goto LABEL_102;
          }

          v52 = _AVLog();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_18B49C000, v52, OS_LOG_TYPE_DEFAULT, "Can not seek chapter forward; skipping forward instead", buf, 2u);
          }

          v13 = [MEMORY[0x1E696AD88] defaultCenter];
          v69 = @"AVNowPlayingInfoSkipCommandDirectionKey";
          v14 = [MEMORY[0x1E696AD98] numberWithInt:1];
          v70[0] = v14;
          v39 = MEMORY[0x1E695DF20];
          v40 = v70;
          v41 = &v69;
          goto LABEL_95;
        case 5u:
          v21 = _AVLog();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_18B49C000, v21, OS_LOG_TYPE_DEFAULT, "Previous track command", buf, 2u);
          }

          if ([v7 canSeekChapterBackward])
          {
            [v7 seekChapterBackward:0];
            goto LABEL_97;
          }

          if (![v7 canSeek])
          {
LABEL_102:
            v8 = 2;
            goto LABEL_98;
          }

          v38 = _AVLog();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_18B49C000, v38, OS_LOG_TYPE_DEFAULT, "Can not seek chapter backward; skipping backward instead", buf, 2u);
          }

          v13 = [MEMORY[0x1E696AD88] defaultCenter];
          v67 = @"AVNowPlayingInfoSkipCommandDirectionKey";
          v14 = [MEMORY[0x1E696AD98] numberWithInt:0];
          v68 = v14;
          v39 = MEMORY[0x1E695DF20];
          v40 = &v68;
          v41 = &v67;
LABEL_95:
          v15 = [v39 dictionaryWithObjects:v40 forKeys:v41 count:1];
          [v13 postNotificationName:@"AVNowPlayingInfoControllerDidReceiveSkipCommandEventNotification" object:self userInfo:v15];
LABEL_96:

          goto LABEL_97;
        case 8u:
          v25 = _AVLog();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_18B49C000, v25, OS_LOG_TYPE_DEFAULT, "Begin fast forward command", buf, 2u);
          }

          if (![v7 hasContent])
          {
            goto LABEL_102;
          }

          [v7 beginScanningForward:0];
          goto LABEL_97;
        case 9u:
          v26 = _AVLog();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_18B49C000, v26, OS_LOG_TYPE_DEFAULT, "End fast forward command", buf, 2u);
          }

          [v7 endScanningForward:0];
          goto LABEL_97;
        case 0xAu:
          v37 = _AVLog();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_18B49C000, v37, OS_LOG_TYPE_DEFAULT, "Begin rewind command", buf, 2u);
          }

          if (![v7 hasContent])
          {
            goto LABEL_102;
          }

          [v7 beginScanningBackward:0];
          goto LABEL_97;
        case 0xBu:
          v36 = _AVLog();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_18B49C000, v36, OS_LOG_TYPE_DEFAULT, "End rewind command", buf, 2u);
          }

          [v7 endScanningBackward:0];
          goto LABEL_97;
        case 0x11u:
          v12 = _AVLog();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_18B49C000, v12, OS_LOG_TYPE_DEFAULT, "Skip forward command", buf, 2u);
          }

          if (![v7 canSeek])
          {
            goto LABEL_102;
          }

          v13 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69B1238]];
          v14 = [MEMORY[0x1E696AD88] defaultCenter];
          v65[0] = @"AVNowPlayingInfoSkipCommandDirectionKey";
          v15 = [MEMORY[0x1E696AD98] numberWithInt:1];
          v65[1] = @"AVNowPlayingInfoSkipCommandInterval";
          v66[0] = v15;
          v66[1] = v13;
          v16 = MEMORY[0x1E695DF20];
          v17 = v66;
          v18 = v65;
          goto LABEL_35;
        case 0x12u:
          v22 = _AVLog();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_18B49C000, v22, OS_LOG_TYPE_DEFAULT, "Skip backward command", buf, 2u);
          }

          if (![v7 canSeek])
          {
            goto LABEL_102;
          }

          v13 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69B1238]];
          v14 = [MEMORY[0x1E696AD88] defaultCenter];
          v63[0] = @"AVNowPlayingInfoSkipCommandDirectionKey";
          v15 = [MEMORY[0x1E696AD98] numberWithInt:0];
          v63[1] = @"AVNowPlayingInfoSkipCommandInterval";
          v64[0] = v15;
          v64[1] = v13;
          v16 = MEMORY[0x1E695DF20];
          v17 = v64;
          v18 = v63;
LABEL_35:
          v23 = [v16 dictionaryWithObjects:v17 forKeys:v18 count:2];
          [v14 postNotificationName:@"AVNowPlayingInfoControllerDidReceiveSkipCommandEventNotification" object:self userInfo:v23];

          goto LABEL_96;
        case 0x13u:
          v19 = _AVLog();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_18B49C000, v19, OS_LOG_TYPE_DEFAULT, "Change playback rate command", buf, 2u);
          }

          v11 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69B1188]];
          if ([v7 canTogglePlayback])
          {
            [v11 doubleValue];
            [v7 setRate:?];
LABEL_22:
            v8 = 0;
          }

          else
          {
            v8 = 2;
          }

          goto LABEL_109;
        case 0x18u:
          v10 = _AVLog();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_18B49C000, v10, OS_LOG_TYPE_DEFAULT, "Seek to playback position command", buf, 2u);
          }

          v11 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69B1168]];
          v8 = 2;
          if (![v7 canSeek] || !v11)
          {
            goto LABEL_109;
          }

          [v11 doubleValue];
          [v7 seekToTime:?];
          goto LABEL_22;
        case 0x1Bu:
          v27 = _AVLog();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_18B49C000, v27, OS_LOG_TYPE_DEFAULT, "Enable language option command", buf, 2u);
          }

          [v6 objectForKeyedSubscript:*MEMORY[0x1E69B1148]];
          v28 = MRLanguageOptionCreateFromExternalRepresentation();
          v11 = MRLanguageOptionCopyIdentifier();
          v29 = MEMORY[0x18CFF8110](v28);
          if (v29 == 1)
          {
            [v7 legibleMediaSelectionOptions];
          }

          else
          {
            [v7 audioMediaSelectionOptions];
          }

          v58 = 0u;
          v59 = 0u;
          v56 = 0u;
          v42 = v57 = 0u;
          v43 = [v42 countByEnumeratingWithState:&v56 objects:v62 count:16];
          if (!v43)
          {
            goto LABEL_85;
          }

          v44 = v43;
          v55 = v29;
          v45 = *v57;
          break;
        case 0x1Cu:
          v30 = _AVLog();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_18B49C000, v30, OS_LOG_TYPE_DEFAULT, "Disable language option command", buf, 2u);
          }

          [v6 objectForKeyedSubscript:*MEMORY[0x1E69B1148]];
          v31 = MRLanguageOptionCreateFromExternalRepresentation();
          v32 = MEMORY[0x18CFF8110]();
          if (!v31)
          {
            goto LABEL_102;
          }

          if (v32 == 1)
          {
            v33 = [MEMORY[0x1E6987FD8] avkit_offOption];
            [v7 setCurrentLegibleMediaSelectionOption:v33];
          }

          else
          {
            [v7 setCurrentAudioMediaSelectionOption:0];
          }

          goto LABEL_97;
        default:
          goto LABEL_98;
      }

LABEL_79:
      v46 = 0;
      while (1)
      {
        if (*v57 != v45)
        {
          objc_enumerationMutation(v42);
        }

        v47 = *(*(&v56 + 1) + 8 * v46);
        v48 = [v47 mediaRemoteIdentifier];
        v49 = [v48 isEqualToString:v11];

        if (v49)
        {
          break;
        }

        if (v44 == ++v46)
        {
          v44 = [v42 countByEnumeratingWithState:&v56 objects:v62 count:16];
          if (v44)
          {
            goto LABEL_79;
          }

LABEL_85:
          v8 = 2;
          v50 = v42;
          goto LABEL_107;
        }
      }

      v50 = v47;

      if (!v50)
      {
        v8 = 2;
        goto LABEL_108;
      }

      if (v55 == 1)
      {
        [v7 setCurrentLegibleMediaSelectionOption:v50];
      }

      else
      {
        [v7 setCurrentAudioMediaSelectionOption:v50];
      }

      v8 = 0;
LABEL_107:

LABEL_108:
LABEL_109:
    }

    else
    {
LABEL_97:
      v8 = 0;
    }

LABEL_98:
  }

  else
  {
    v8 = 0;
  }

  v53 = _AVLog();
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v61 = v8;
    _os_log_impl(&dword_18B49C000, v53, OS_LOG_TYPE_DEFAULT, "Remote Command Status: %ld", buf, 0xCu);
  }

  return v8;
}

- (void)_updateRegisteredRemoteCommandEnabledStatesWithCommandsAndStates:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    objc_initWeak(&location, self);
    backgroundQueue = self->_backgroundQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __95__AVNowPlayingInfoController__updateRegisteredRemoteCommandEnabledStatesWithCommandsAndStates___block_invoke;
    block[3] = &unk_1E7209A10;
    objc_copyWeak(&v22, &location);
    v21 = v4;
    dispatch_async(backgroundQueue, block);

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  else
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    obj = [v4 allKeys];
    v7 = [obj countByEnumeratingWithState:&v16 objects:v26 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      v10 = *MEMORY[0x1E69B0CC0];
      do
      {
        v11 = 0;
        do
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v16 + 1) + 8 * v11);
          v13 = MRMediaRemoteCommandInfoCreate();
          [v12 unsignedIntValue];
          MRMediaRemoteCommandInfoSetCommand();
          v14 = [v4 objectForKeyedSubscript:v12];
          [v14 BOOLValue];
          MRMediaRemoteCommandInfoSetEnabled();

          if ([v12 unsignedIntegerValue] == 17 || objc_msgSend(v12, "unsignedIntegerValue") == 18)
          {
            v24 = v10;
            v25 = &unk_1EFF12DE8;
            [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
            MRMediaRemoteCommandInfoSetOptions();
          }

          CFArrayAppendValue(Mutable, v13);
          CFRelease(v13);
          ++v11;
        }

        while (v8 != v11);
        v8 = [obj countByEnumeratingWithState:&v16 objects:v26 count:16];
      }

      while (v8);
    }

    MRMediaRemoteGetLocalOrigin();
    MRMediaRemoteSetSupportedCommands();
    CFRelease(Mutable);
  }
}

void __95__AVNowPlayingInfoController__updateRegisteredRemoteCommandEnabledStatesWithCommandsAndStates___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updateRegisteredRemoteCommandEnabledStatesWithCommandsAndStates:*(a1 + 32)];
}

- (id)_makeCommandsAndStatesDictionaryForPlayerController:(id)a3
{
  v55[16] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(AVNowPlayingInfoController *)self requiresLinearPlayback];
  v54[0] = &unk_1EFF12770;
  v53 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v5, "canPause")}];
  v55[0] = v53;
  v54[1] = &unk_1EFF12788;
  v52 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v5, "canPlay")}];
  v55[1] = v52;
  v54[2] = &unk_1EFF127A0;
  v51 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v5, "canPause")}];
  v55[2] = v51;
  v54[3] = &unk_1EFF127B8;
  v50 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v5, "canTogglePlayback")}];
  v55[3] = v50;
  v54[4] = &unk_1EFF127D0;
  v7 = MEMORY[0x1E696AD98];
  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = [v5 hasContent];
  }

  v49 = [v7 numberWithInt:v8];
  v55[4] = v49;
  v54[5] = &unk_1EFF127E8;
  v9 = MEMORY[0x1E696AD98];
  if (v6)
  {
    v10 = 0;
  }

  else
  {
    v10 = [v5 hasContent];
  }

  v48 = [v9 numberWithInt:v10];
  v55[5] = v48;
  v54[6] = &unk_1EFF12800;
  v11 = MEMORY[0x1E696AD98];
  if (v6)
  {
    v12 = 0;
  }

  else
  {
    v12 = [v5 hasContent];
  }

  v47 = [v11 numberWithInt:v12];
  v55[6] = v47;
  v54[7] = &unk_1EFF12818;
  v13 = MEMORY[0x1E696AD98];
  if (v6)
  {
    v14 = 0;
  }

  else
  {
    v14 = [v5 hasContent];
  }

  v46 = [v13 numberWithInt:v14];
  v55[7] = v46;
  v54[8] = &unk_1EFF12830;
  v15 = MEMORY[0x1E696AD98];
  if (v6)
  {
    v16 = 0;
  }

  else
  {
    v16 = [v5 canTogglePlayback];
  }

  v45 = [v15 numberWithInt:v16];
  v55[8] = v45;
  v54[9] = &unk_1EFF12848;
  v17 = MEMORY[0x1E696AD98];
  if (v6)
  {
    v18 = 0;
  }

  else
  {
    v18 = [v5 canSeek];
  }

  v44 = [v17 numberWithInt:v18];
  v55[9] = v44;
  v54[10] = &unk_1EFF12860;
  v19 = MEMORY[0x1E696AD98];
  if (v6)
  {
    v20 = 0;
  }

  else if ([v5 canSeekChapterForward])
  {
    v20 = 1;
  }

  else
  {
    v20 = [v5 canScanForward];
  }

  v43 = [v19 numberWithInt:v20];
  v55[10] = v43;
  v54[11] = &unk_1EFF12878;
  v21 = MEMORY[0x1E696AD98];
  if (v6)
  {
    v22 = 0;
  }

  else if ([v5 canSeekChapterBackward])
  {
    v22 = 1;
  }

  else
  {
    v22 = [v5 canScanBackward];
  }

  v42 = [v21 numberWithInt:v22];
  v55[11] = v42;
  v54[12] = &unk_1EFF12890;
  v23 = MEMORY[0x1E696AD98];
  if (v6)
  {
    v24 = 0;
  }

  else
  {
    v24 = [v5 canSeek];
  }

  v41 = [v23 numberWithInt:v24];
  v55[12] = v41;
  v54[13] = &unk_1EFF128A8;
  v25 = MEMORY[0x1E696AD98];
  if (v6)
  {
    v26 = 0;
  }

  else
  {
    v26 = [v5 canSeek];
  }

  v27 = [v25 numberWithInt:v26];
  v55[13] = v27;
  v54[14] = &unk_1EFF128C0;
  v28 = MEMORY[0x1E696AD98];
  v29 = [v5 audioMediaSelectionOptions];
  v30 = [v29 count];
  if (v30)
  {
    v31 = 1;
  }

  else
  {
    v40 = [v5 legibleMediaSelectionOptions];
    v31 = [v40 count] != 0;
  }

  v32 = [v28 numberWithInt:v31];
  v55[14] = v32;
  v54[15] = &unk_1EFF128D8;
  v33 = MEMORY[0x1E696AD98];
  v34 = [v5 audioMediaSelectionOptions];
  v35 = [v34 count];
  if (v35)
  {
    v36 = 1;
  }

  else
  {
    v3 = [v5 legibleMediaSelectionOptions];
    v36 = [v3 count] != 0;
  }

  v37 = [v33 numberWithInt:v36];
  v55[15] = v37;
  v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:v54 count:16];

  if (!v35)
  {
  }

  if (!v30)
  {
  }

  return v38;
}

- (id)_makePlaybackInfoDictionary
{
  if ([(AVNowPlayingInfoController *)self isEnabled])
  {
    v3 = [(AVNowPlayingInfoController *)self playerController];

    if (v3)
    {
      v3 = [MEMORY[0x1E695DF90] dictionary];
      v4 = [(AVNowPlayingInfoController *)self playerController];
      if ([v4 hasContent])
      {
        v5 = [v4 metadata];
        v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E6987678]];
        if (v6)
        {
          [v3 setObject:v6 forKeyedSubscript:*MEMORY[0x1E69B0E58]];
        }

        v36 = v6;
        v7 = [v5 objectForKeyedSubscript:*MEMORY[0x1E6987680]];
        if (v7)
        {
          [v3 setObject:v7 forKeyedSubscript:@"AVNowPlayingInfoMetadataCommonKeyArtworkImage"];
        }

        [v4 contentDurationWithinEndTimes];
        v8 = [MEMORY[0x1E696AD98] numberWithDouble:?];
        [v3 setObject:v8 forKeyedSubscript:*MEMORY[0x1E69B0EE8]];

        v9 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69876B8]];
        if (v9)
        {
          [v3 setObject:v9 forKeyedSubscript:*MEMORY[0x1E69B1030]];
        }

        v10 = *MEMORY[0x1E69B1068];
        if (([v4 hasEnabledVideo] & 1) == 0 && objc_msgSend(v4, "hasEnabledAudio"))
        {
          v11 = *MEMORY[0x1E69B1060];

          v10 = v11;
        }

        [v3 setObject:v10 forKeyedSubscript:*MEMORY[0x1E69B0F70]];
        v12 = [(AVNowPlayingInfoController *)self _availableLanguageOptions];
        v13 = [v12 count];

        if (v13)
        {
          [(AVNowPlayingInfoController *)self _availableLanguageOptions];
          ExternalRepresentation = MRLanguageOptionGroupsCreateExternalRepresentation();
          [v3 setObject:ExternalRepresentation forKeyedSubscript:*MEMORY[0x1E69B0E98]];
          CFRelease(ExternalRepresentation);
        }

        v15 = [(AVNowPlayingInfoController *)self _currentLanguageOptions];
        v16 = [v15 count];

        if (v16)
        {
          [(AVNowPlayingInfoController *)self _currentLanguageOptions];
          v17 = MRLanguageOptionsCreateExternalRepresentation();
          [v3 setObject:v17 forKeyedSubscript:*MEMORY[0x1E69B0EC8]];
          CFRelease(v17);
        }

        v18 = MEMORY[0x1E696AD98];
        v19 = [v4 timing];
        [v19 currentValue];
        v21 = v20;
        [v4 minTime];
        v23 = [v18 numberWithDouble:v21 - v22];
        [v3 setObject:v23 forKeyedSubscript:*MEMORY[0x1E69B0EF0]];

        v24 = MEMORY[0x1E696AD98];
        [v4 rate];
        v25 = [v24 numberWithDouble:?];
        [v3 setObject:v25 forKeyedSubscript:*MEMORY[0x1E69B0F80]];

        v26 = [v4 currentDate];
        [v3 setObject:v26 forKeyedSubscript:*MEMORY[0x1E69B0ED0]];

        v27 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "hasLiveStreamingContent")}];
        [v3 setObject:v27 forKeyedSubscript:*MEMORY[0x1E69B0F28]];

        v28 = [(AVNowPlayingInfoController *)self playerController];
        v29 = [v28 player];
        v30 = [v29 currentItem];
        v31 = [v30 externalMetadata];

        if ([v31 count])
        {
          __57__AVNowPlayingInfoController__makePlaybackInfoDictionary__block_invoke(v3, v31, @"avkt/ExternalContentIdentifier", *MEMORY[0x1E69B0F00]);
          __57__AVNowPlayingInfoController__makePlaybackInfoDictionary__block_invoke(v3, v31, @"avkt/ExternalUserProfileIdentifier", *MEMORY[0x1E69B0F08]);
          __57__AVNowPlayingInfoController__makePlaybackInfoDictionary__block_invoke(v3, v31, @"avkt/ServiceIdentifier", *MEMORY[0x1E69B0FD0]);
          __57__AVNowPlayingInfoController__makePlaybackInfoDictionary__block_invoke(v3, v31, @"avkt/iTunesStoreIdentifier", *MEMORY[0x1E69B1078]);
          __57__AVNowPlayingInfoController__makePlaybackInfoDictionary__block_invoke(v3, v31, @"avkt/BrandIdentifier", *MEMORY[0x1E69B0EA0]);
          __57__AVNowPlayingInfoController__makePlaybackInfoDictionary__block_invoke(v3, v31, @"avkt/PlaybackProgress", *MEMORY[0x1E69B0F78]);
          __57__AVNowPlayingInfoController__makePlaybackInfoDictionary__block_invoke(v3, v31, *MEMORY[0x1E6987668], *MEMORY[0x1E69B1030]);
          v32 = [MEMORY[0x1E6987FE0] metadataItemsFromArray:v31 filteredByIdentifier:*MEMORY[0x1E6987628]];
          v33 = [v32 firstObject];

          v34 = [v33 dataValue];
          if (v34)
          {
            [v3 setObject:v34 forKeyedSubscript:*MEMORY[0x1E69B0E68]];
          }
        }
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __57__AVNowPlayingInfoController__makePlaybackInfoDictionary__block_invoke(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a1;
  v7 = [MEMORY[0x1E6987FE0] metadataItemsFromArray:a2 filteredByIdentifier:a3];
  v8 = [v7 firstObject];
  v9 = [v8 stringValue];

  if (v9)
  {
    [v10 setObject:v9 forKeyedSubscript:a4];
  }
}

- (void)_updateNowPlayingInfo:(id)a3 commandsAndStates:(id)a4
{
  v7 = a3;
  v6 = a4;
  if ([v7 count])
  {
    MRMediaRemoteSetCanBeNowPlayingApplication();
  }

  MRMediaRemoteSetNowPlayingInfoWithMergePolicy();
  [(AVNowPlayingInfoController *)self _updateRegisteredRemoteCommandEnabledStatesWithCommandsAndStates:v6];
}

- (void)_updateNowPlayingInfoIfNeeded
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = _AVLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    nowPlayingInfoNeedsUpdate = self->_nowPlayingInfoNeedsUpdate;
    suspended = self->_suspended;
    enabled = self->_enabled;
    LODWORD(buf) = 67109632;
    HIDWORD(buf) = nowPlayingInfoNeedsUpdate;
    v18 = 1024;
    v19 = suspended;
    v20 = 1024;
    v21 = enabled;
    _os_log_impl(&dword_18B49C000, v3, OS_LOG_TYPE_DEFAULT, "Update now playing info:   needed: %d   suspended: %d   enabled: %d", &buf, 0x14u);
  }

  if (self->_nowPlayingInfoNeedsUpdate)
  {
    self->_nowPlayingInfoNeedsUpdate = 0;
    if (![(AVNowPlayingInfoController *)self isSuspended])
    {
      kdebug_trace();
      self->_nowPlayingInfoNeedsUpdate = 0;
      [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__updateNowPlayingInfoIfNeeded object:0];
      v7 = [(AVNowPlayingInfoController *)self _makePlaybackInfoDictionary];
      if ([(AVNowPlayingInfoController *)self isEnabled])
      {
        v8 = [(AVNowPlayingInfoController *)self playerController];
        v9 = [(AVNowPlayingInfoController *)self _makeCommandsAndStatesDictionaryForPlayerController:v8];
      }

      else
      {
        v9 = [(AVNowPlayingInfoController *)self _makeCommandsAndStatesDictionaryForPlayerController:0];
      }

      objc_initWeak(&buf, self);
      backgroundQueue = self->_backgroundQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __59__AVNowPlayingInfoController__updateNowPlayingInfoIfNeeded__block_invoke;
      block[3] = &unk_1E72095F0;
      objc_copyWeak(&v16, &buf);
      v11 = v7;
      v14 = v11;
      v12 = v9;
      v15 = v12;
      dispatch_async(backgroundQueue, block);
      kdebug_trace();

      objc_destroyWeak(&v16);
      objc_destroyWeak(&buf);
    }
  }
}

void __59__AVNowPlayingInfoController__updateNowPlayingInfoIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained _createNowPlayingInfoFromPlaybackInfo:*(a1 + 32)];
  [WeakRetained _updateNowPlayingInfo:v2 commandsAndStates:*(a1 + 40)];
}

- (void)_setNowPlayingInfoNeedsUpdate
{
  if (!self->_nowPlayingInfoNeedsUpdate && ![(AVNowPlayingInfoController *)self isSuspended])
  {
    self->_nowPlayingInfoNeedsUpdate = 1;

    [(AVNowPlayingInfoController *)self performSelector:sel__updateNowPlayingInfoIfNeeded withObject:0 afterDelay:0.0];
  }
}

- (id)_createNowPlayingInfoFromPlaybackInfo:(id)a3
{
  if (a3)
  {
    v3 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:?];
    v4 = [v3 objectForKeyedSubscript:@"AVNowPlayingInfoMetadataCommonKeyArtworkImage"];
    if (v4)
    {
      v5 = *MEMORY[0x1E69B0E68];
      v6 = [v3 objectForKeyedSubscript:*MEMORY[0x1E69B0E68]];

      if (!v6)
      {
        v7 = UIImagePNGRepresentation(v4);
        if (v7)
        {
          [v3 setObject:v7 forKeyedSubscript:v5];
        }
      }

      [v3 removeObjectForKey:@"AVNowPlayingInfoMetadataCommonKeyArtworkImage"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)stopNowPlayingUpdatesForPlayerController:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _AVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[AVNowPlayingInfoController stopNowPlayingUpdatesForPlayerController:]";
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s playerController: %@", &v10, 0x16u);
  }

  if (!v4 || ([(AVNowPlayingInfoController *)self playerController], v6 = objc_claimAutoreleasedReturnValue(), v6, v6 == v4))
  {
    [(AVNowPlayingInfoController *)self setPlayerController:0];
  }

  v7 = [(AVNowPlayingInfoController *)self playerControllerToActivateAfterDelay];
  v8 = [v4 isEqual:v7];

  if (v8)
  {
    v9 = [(AVNowPlayingInfoController *)self startNowPlayingUpdatesTimer];
    [v9 invalidate];

    [(AVNowPlayingInfoController *)self setPlayerControllerToActivateAfterDelay:0];
  }
}

- (void)startNowPlayingUpdatesForPlayerController:(id)a3 afterDelay:(double)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = _AVLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v20 = "[AVNowPlayingInfoController startNowPlayingUpdatesForPlayerController:afterDelay:]";
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_18B49C000, v7, OS_LOG_TYPE_DEFAULT, "%s playerController: %@", buf, 0x16u);
  }

  v8 = [(AVNowPlayingInfoController *)self playerController];
  if ([v6 isEqual:v8])
  {
  }

  else
  {
    v9 = [(AVNowPlayingInfoController *)self playerControllerToActivateAfterDelay];
    v10 = [v6 isEqual:v9];

    if ((v10 & 1) == 0)
    {
      [(AVNowPlayingInfoController *)self setPlayerControllerToActivateAfterDelay:v6];
      v11 = [(AVNowPlayingInfoController *)self playerController];
      [(AVNowPlayingInfoController *)self stopNowPlayingUpdatesForPlayerController:v11];

      objc_initWeak(buf, self);
      objc_initWeak(&location, v6);
      v12 = [(AVNowPlayingInfoController *)self startNowPlayingUpdatesTimer];
      [v12 invalidate];

      v13 = MEMORY[0x1E695DFF0];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __83__AVNowPlayingInfoController_startNowPlayingUpdatesForPlayerController_afterDelay___block_invoke;
      v15[3] = &unk_1E72078A8;
      objc_copyWeak(&v16, buf);
      objc_copyWeak(&v17, &location);
      v14 = [v13 scheduledTimerWithTimeInterval:0 repeats:v15 block:a4];
      [(AVNowPlayingInfoController *)self setStartNowPlayingUpdatesTimer:v14];

      objc_destroyWeak(&v17);
      objc_destroyWeak(&v16);
      objc_destroyWeak(&location);
      objc_destroyWeak(buf);
    }
  }
}

void __83__AVNowPlayingInfoController_startNowPlayingUpdatesForPlayerController_afterDelay___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained playerControllerToActivateAfterDelay];
  v4 = [v3 isEqual:v2];

  if (v4)
  {
    [WeakRetained setPlayerController:v2];
    [WeakRetained setPlayerControllerToActivateAfterDelay:0];
  }
}

- (void)setRequiresLinearPlayback:(BOOL)a3
{
  if (self->_requiresLinearPlayback != a3)
  {
    self->_requiresLinearPlayback = a3;
    [(AVNowPlayingInfoController *)self _setNowPlayingInfoNeedsUpdate];
  }
}

- (void)setOverrideParentApplicationDisplayIdentifier:(id)a3
{
  v8 = a3;
  if (![(NSString *)self->_overrideParentApplicationDisplayIdentifier isEqualToString:?])
  {
    v4 = [v8 copy];
    overrideParentApplicationDisplayIdentifier = self->_overrideParentApplicationDisplayIdentifier;
    self->_overrideParentApplicationDisplayIdentifier = v4;

    MRMediaRemoteGetLocalOrigin();
    if (self->_overrideParentApplicationDisplayIdentifier)
    {
      MRMediaRemoteSetParentApplication();
    }

    else
    {
      v6 = [MEMORY[0x1E696AAE8] mainBundle];
      v7 = [v6 bundleIdentifier];
      MRMediaRemoteSetParentApplication();
    }
  }
}

- (void)setEnabled:(BOOL)a3
{
  if (self->_enabled != a3)
  {
    self->_enabled = a3;
    [(AVNowPlayingInfoController *)self _setNowPlayingInfoNeedsUpdate];
  }
}

- (void)setSuspended:(BOOL)a3
{
  if (self->_suspended != a3)
  {
    self->_suspended = a3;
    if (!a3)
    {
      [(AVNowPlayingInfoController *)self _setNowPlayingInfoNeedsUpdate];
    }
  }
}

- (void)setPlayerController:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self->_playerController != v5)
  {
    v6 = _AVLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v18 = "[AVNowPlayingInfoController setPlayerController:]";
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_18B49C000, v6, OS_LOG_TYPE_DEFAULT, "%s playerController: %@", buf, 0x16u);
    }

    [(AVObservationController *)self->_keyValueObservationController stopAllObservation];
    objc_storeStrong(&self->_playerController, a3);
    if (self->_playerController)
    {
      v16[0] = @"playerController.hasContent";
      v16[1] = @"playerController.contentDuration";
      v16[2] = @"playerController.playing";
      v16[3] = @"playerController.rate";
      v16[4] = @"playerController.metadata";
      v16[5] = @"playerController.hasLiveStreamingContent";
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:6];
      v8 = [(AVObservationController *)self->_keyValueObservationController startObserving:self keyPaths:v7 observationHandler:&__block_literal_global_53];
      keyValueObservationController = self->_keyValueObservationController;
      v10 = [(AVNowPlayingInfoController *)self playerController];
      v11 = [v10 player];
      v12 = [v11 currentItem];
      [(AVObservationController *)keyValueObservationController startObservingNotificationForName:@"AVPlayerItemAVKitDataDidChangeNotification" object:v12 notificationCenter:0 observationHandler:&__block_literal_global_56];

      [(AVObservationController *)self->_keyValueObservationController startObservingNotificationForName:@"AVPlayerControllerSelectedMediaOptionDidChangeNotification" object:0 notificationCenter:0 observationHandler:&__block_literal_global_58];
      v15[0] = @"playerController.canPause";
      v15[1] = @"playerController.canPlay";
      v15[2] = @"playerController.canTogglePlayback";
      v15[3] = @"playerController.canSeek";
      v15[4] = @"playerController.canScanForward";
      v15[5] = @"playerController.canScanBackward";
      v15[6] = @"playerController.canSeekChapterForward";
      v15[7] = @"playerController.canSeekChapterBackward";
      v15[8] = @"playerController.audioMediaSelectionOptions";
      v15[9] = @"playerController.legibleMediaSelectionOptions";
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:10];
      v14 = [(AVObservationController *)self->_keyValueObservationController startObserving:self keyPaths:v13 observationHandler:&__block_literal_global_90];
    }

    [(AVNowPlayingInfoController *)self _setNowPlayingInfoNeedsUpdate];
  }
}

void __50__AVNowPlayingInfoController_setPlayerController___block_invoke_4(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 isEnabled] && (objc_msgSend(v4, "isSuspended") & 1) == 0)
  {
    v2 = [v4 playerController];
    v3 = [v4 _makeCommandsAndStatesDictionaryForPlayerController:v2];

    [v4 _updateRegisteredRemoteCommandEnabledStatesWithCommandsAndStates:v3];
  }
}

void __50__AVNowPlayingInfoController_setPlayerController___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v5 = [a4 object];
  v6 = [v7 playerController];

  if (v5 == v6)
  {
    [v7 _setNowPlayingInfoNeedsUpdate];
  }
}

- (void)dealloc
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_commandHandlerIdentifier)
  {
    MRMediaRemoteRemoveCommandHandlerBlock();
  }

  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self->_playerControllerCurrentTimeJumpedObserver];

  [(AVObservationController *)self->_keyValueObservationController stopAllObservation];
  keyValueObservationController = self->_keyValueObservationController;
  self->_keyValueObservationController = 0;

  [(AVNowPlayingInfoController *)self _updateNowPlayingInfo:0 commandsAndStates:0];
  v5 = _AVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v8 = "[AVNowPlayingInfoController dealloc]";
    v9 = 1024;
    v10 = 130;
    v11 = 2048;
    v12 = self;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %d %p", buf, 0x1Cu);
  }

  v6.receiver = self;
  v6.super_class = AVNowPlayingInfoController;
  [(AVNowPlayingInfoController *)&v6 dealloc];
}

- (AVNowPlayingInfoController)init
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = _AVLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v18 = "[AVNowPlayingInfoController init]";
    v19 = 1024;
    v20 = 84;
    v21 = 2048;
    v22 = self;
    _os_log_impl(&dword_18B49C000, v3, OS_LOG_TYPE_DEFAULT, "%s %d %p", buf, 0x1Cu);
  }

  v16.receiver = self;
  v16.super_class = AVNowPlayingInfoController;
  v4 = [(AVNowPlayingInfoController *)&v16 init];
  v5 = v4;
  if (v4)
  {
    v4->_suspended = 0;
    v4->_enabled = 1;
    v6 = [[AVObservationController alloc] initWithOwner:v4];
    keyValueObservationController = v5->_keyValueObservationController;
    v5->_keyValueObservationController = v6;

    objc_initWeak(buf, v5);
    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    v9 = [MEMORY[0x1E696ADC8] mainQueue];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __34__AVNowPlayingInfoController_init__block_invoke;
    v14[3] = &unk_1E7208898;
    objc_copyWeak(&v15, buf);
    v10 = [v8 addObserverForName:@"AVPlayerControllerCurrentTimeJumpedNotification" object:0 queue:v9 usingBlock:v14];
    playerControllerCurrentTimeJumpedObserver = v5->_playerControllerCurrentTimeJumpedObserver;
    v5->_playerControllerCurrentTimeJumpedObserver = v10;

    objc_copyWeak(&v13, buf);
    v5->_commandHandlerIdentifier = MRMediaRemoteAddCommandHandlerBlock();
    objc_destroyWeak(&v13);
    objc_destroyWeak(&v15);
    objc_destroyWeak(buf);
  }

  return v5;
}

void __34__AVNowPlayingInfoController_init__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 object];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained playerController];

  if (v3 == v5)
  {
    v6 = objc_loadWeakRetained((a1 + 32));
    [v6 _setNowPlayingInfoNeedsUpdate];
  }
}

uint64_t __34__AVNowPlayingInfoController_init__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained _handleRemoteCommand:a2 options:a3];
  }

  else
  {
    v7 = 2;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v7];
  v11[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];

  return v9;
}

+ (id)_mediaRemoteLanguageOptionCharacteristicForAVMediaCharacteristic:(id)a3
{
  v3 = _mediaRemoteLanguageOptionCharacteristicForAVMediaCharacteristic____once;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&_mediaRemoteLanguageOptionCharacteristicForAVMediaCharacteristic____once, &__block_literal_global_142);
  }

  v5 = [_mediaRemoteLanguageOptionCharacteristicForAVMediaCharacteristic____mediaCharacteristicMapping objectForKey:v4];

  return v5;
}

void __95__AVNowPlayingInfoController__mediaRemoteLanguageOptionCharacteristicForAVMediaCharacteristic___block_invoke()
{
  v17[10] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6987558];
  v1 = *MEMORY[0x1E69B0BF0];
  v16[0] = *MEMORY[0x1E69B0BF8];
  v16[1] = v1;
  v2 = *MEMORY[0x1E6987550];
  v17[0] = v0;
  v17[1] = v2;
  v3 = *MEMORY[0x1E6987518];
  v4 = *MEMORY[0x1E69B0C08];
  v16[2] = *MEMORY[0x1E69B0BC8];
  v16[3] = v4;
  v5 = *MEMORY[0x1E6987588];
  v17[2] = v3;
  v17[3] = v5;
  v6 = *MEMORY[0x1E6987528];
  v7 = *MEMORY[0x1E69B0BE8];
  v16[4] = *MEMORY[0x1E69B0BD0];
  v16[5] = v7;
  v8 = *MEMORY[0x1E6987540];
  v17[4] = v6;
  v17[5] = v8;
  v9 = *MEMORY[0x1E6987530];
  v10 = *MEMORY[0x1E69B0C00];
  v16[6] = *MEMORY[0x1E69B0BD8];
  v16[7] = v10;
  v11 = *MEMORY[0x1E6987570];
  v17[6] = v9;
  v17[7] = v11;
  v12 = *MEMORY[0x1E69B0C10];
  v16[8] = *MEMORY[0x1E69B0BE0];
  v16[9] = v12;
  v13 = *MEMORY[0x1E6987598];
  v17[8] = *MEMORY[0x1E6987538];
  v17[9] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:10];
  v15 = _mediaRemoteLanguageOptionCharacteristicForAVMediaCharacteristic____mediaCharacteristicMapping;
  _mediaRemoteLanguageOptionCharacteristicForAVMediaCharacteristic____mediaCharacteristicMapping = v14;
}

+ (id)_avMediaCharacteristics
{
  if (_avMediaCharacteristics___once != -1)
  {
    dispatch_once(&_avMediaCharacteristics___once, &__block_literal_global_140);
  }

  v3 = _avMediaCharacteristics___mediaCharacteristics;

  return v3;
}

void __53__AVNowPlayingInfoController__avMediaCharacteristics__block_invoke()
{
  v7[10] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6987550];
  v7[0] = *MEMORY[0x1E6987558];
  v7[1] = v0;
  v1 = *MEMORY[0x1E6987588];
  v7[2] = *MEMORY[0x1E6987518];
  v7[3] = v1;
  v2 = *MEMORY[0x1E6987540];
  v7[4] = *MEMORY[0x1E6987528];
  v7[5] = v2;
  v3 = *MEMORY[0x1E6987570];
  v7[6] = *MEMORY[0x1E6987530];
  v7[7] = v3;
  v4 = *MEMORY[0x1E6987598];
  v7[8] = *MEMORY[0x1E6987538];
  v7[9] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:10];
  v6 = _avMediaCharacteristics___mediaCharacteristics;
  _avMediaCharacteristics___mediaCharacteristics = v5;
}

+ (id)_mediaRemoteLanguageOptionCharacteristicsForAVMediaSelectionOption:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [a1 _avMediaCharacteristics];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v19 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        if ([v4 hasMediaCharacteristic:{v11, v16}])
        {
          v12 = [a1 _mediaRemoteLanguageOptionCharacteristicForAVMediaCharacteristic:v11];
          if (!v12)
          {
            __assert_rtn("+[AVNowPlayingInfoController _mediaRemoteLanguageOptionCharacteristicsForAVMediaSelectionOption:]", "AVNowPlayingInfoController_Mobile.m", 940, "mediaRemoteMediaCharacteristic");
          }

          v13 = v12;
          [v5 addObject:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = [v5 copy];

  return v14;
}

+ (void)_createMediaRemoteLanguageOptionWithAVMediaSelectionOption:(id)a3
{
  v4 = a3;
  [v4 hasMediaCharacteristic:*MEMORY[0x1E6987578]];
  v5 = [MEMORY[0x1E6987FD8] avkit_offOption];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    AutomaticLanguageOptionForType = 0;
  }

  else
  {
    v8 = [MEMORY[0x1E6987FD8] avkit_autoOption];
    v9 = [v4 isEqual:v8];

    if (v9)
    {
      AutomaticLanguageOptionForType = MRLanguageOptionCreateAutomaticLanguageOptionForType();
    }

    else
    {
      v10 = [a1 _mediaRemoteLanguageOptionCharacteristicsForAVMediaSelectionOption:v4];
      v11 = [v4 extendedLanguageTag];
      v12 = [v4 displayName];
      v13 = [v4 mediaRemoteIdentifier];
      AutomaticLanguageOptionForType = MRLanguageOptionCreate();
    }
  }

  return AutomaticLanguageOptionForType;
}

+ (void)_createMediaRemoteLanguageOptionGroupWithAVMediaSelectionOptions:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    v10 = *MEMORY[0x1E6987578];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        [v12 hasMediaCharacteristic:{v10, v17}];
        v13 = [a1 _createMediaRemoteLanguageOptionWithAVMediaSelectionOption:v12];
        if (v13)
        {
          v14 = v13;
          [v5 addObject:v13];
          CFRelease(v14);
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v15 = MRLanguageOptionGroupCreate();
  return v15;
}

+ (void)sharedNowPlayingInfoControllerWithCompletion:(id)a3
{
  v4 = [a3 copy];
  if (sharedNowPlayingInfoControllerWithCompletion__createQueueOnceToken != -1)
  {
    dispatch_once(&sharedNowPlayingInfoControllerWithCompletion__createQueueOnceToken, &__block_literal_global_5642);
  }

  v5 = sharedNowPlayingInfoControllerWithCompletion__nowPlayingInfoCreationQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __75__AVNowPlayingInfoController_sharedNowPlayingInfoControllerWithCompletion___block_invoke_2;
  v7[3] = &unk_1E7207810;
  v8 = v4;
  v9 = a1;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __75__AVNowPlayingInfoController_sharedNowPlayingInfoControllerWithCompletion___block_invoke_2(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__AVNowPlayingInfoController_sharedNowPlayingInfoControllerWithCompletion___block_invoke_3;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = *(a1 + 40);
  if (AVNowPlayingInfoSkipCommandInterval_block_invoke_createSharedControllerOnceToken[0] != -1)
  {
    dispatch_once(AVNowPlayingInfoSkipCommandInterval_block_invoke_createSharedControllerOnceToken, block);
  }

  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __75__AVNowPlayingInfoController_sharedNowPlayingInfoControllerWithCompletion___block_invoke_4;
  v2[3] = &unk_1E72099C8;
  v3 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
}

void __75__AVNowPlayingInfoController_sharedNowPlayingInfoControllerWithCompletion___block_invoke_3(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = AVNowPlayingInfoSkipCommandInterval_block_invoke_nowPlayingInfoController;
  AVNowPlayingInfoSkipCommandInterval_block_invoke_nowPlayingInfoController = v1;

  v3 = sharedNowPlayingInfoControllerWithCompletion__nowPlayingInfoCreationQueue;
  v4 = (AVNowPlayingInfoSkipCommandInterval_block_invoke_nowPlayingInfoController + 40);

  objc_storeStrong(v4, v3);
}

void __75__AVNowPlayingInfoController_sharedNowPlayingInfoControllerWithCompletion___block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v0 = dispatch_queue_create("com.apple.avkit.sharedNowPlayingInfoController", v2);
  v1 = sharedNowPlayingInfoControllerWithCompletion__nowPlayingInfoCreationQueue;
  sharedNowPlayingInfoControllerWithCompletion__nowPlayingInfoCreationQueue = v0;
}

@end