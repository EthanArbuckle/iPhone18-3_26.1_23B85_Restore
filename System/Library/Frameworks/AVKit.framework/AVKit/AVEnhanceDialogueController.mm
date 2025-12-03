@interface AVEnhanceDialogueController
+ (id)queue;
- (AVEnhanceDialogueController)init;
- (NSArray)availableLevels;
- (int64_t)currentLevel;
- (void)_updateActuallyEnabledStateIfNeeded;
- (void)_updateCurrentAudioRouteSupported;
- (void)_updateCurrentContentSupported;
- (void)dealloc;
- (void)setCurrentLevel:(int64_t)level;
- (void)setEnabled:(BOOL)enabled;
- (void)setPlayerController:(id)controller;
@end

@implementation AVEnhanceDialogueController

- (void)_updateCurrentAudioRouteSupported
{
  if (self)
  {
    v2 = _AVLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_18B49C000, v2, OS_LOG_TYPE_DEFAULT, "Checking Enhance Dialogue support for current audio route.", buf, 2u);
    }

    playerController = [self playerController];
    player = [playerController player];
    objc_initWeak(buf, self);
    v5 = +[AVEnhanceDialogueController queue];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __64__AVEnhanceDialogueController__updateCurrentAudioRouteSupported__block_invoke;
    v7[3] = &unk_1E7209A10;
    objc_copyWeak(&v9, buf);
    v8 = player;
    v6 = player;
    dispatch_async(v5, v7);

    objc_destroyWeak(&v9);
    objc_destroyWeak(buf);
  }
}

+ (id)queue
{
  if (queue_onceToken != -1)
  {
    dispatch_once(&queue_onceToken, &__block_literal_global_26670);
  }

  v3 = queue_queue;

  return v3;
}

void __64__AVEnhanceDialogueController__updateCurrentAudioRouteSupported__block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (*(a1 + 32))
    {
      v3 = +[AVKitGlobalSettings shared];
      v4 = [v3 enhanceDialogueEnabled];

      if (v4)
      {
        v35 = 0;
        v5 = [MEMORY[0x1E69583C0] currentRouteSupportsEnhanceDialogue:&v35];
        v6 = v35;
        v7 = _AVLog();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = @"NO";
          if (v5)
          {
            v8 = @"YES";
          }

          *buf = 138412546;
          v38 = v8;
          v39 = 2112;
          v40 = v6;
          _os_log_impl(&dword_18B49C000, v7, OS_LOG_TYPE_DEFAULT, "Enhance Dialogue isDefaultAudioDeviceSupported:%@ error: %@", buf, 0x16u);
        }

        if (v6)
        {
          v9 = _AVLog();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            v22 = [v6 localizedDescription];
            v23 = [v22 cStringUsingEncoding:4];
            *buf = 136315138;
            v38 = v23;
            _os_log_error_impl(&dword_18B49C000, v9, OS_LOG_TYPE_ERROR, "Unable to check audio route for Enhance Dialogue support: %s", buf, 0xCu);
          }
        }

        if (v5)
        {
          v10 = [*(a1 + 32) audioSession];
          v11 = [v10 routingContextUID];
          v12 = [MEMORY[0x1E69587F0] outputContextForID:v11];
          v13 = _AVLog();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412802;
            v38 = v12;
            v39 = 2112;
            v40 = v11;
            v41 = 2112;
            v42 = v10;
            _os_log_impl(&dword_18B49C000, v13, OS_LOG_TYPE_DEFAULT, "Enhance Dialogue routingContext: %@ id: %@, sess: %@", buf, 0x20u);
          }

          if (v12)
          {
            v33 = 0u;
            v34 = 0u;
            v31 = 0u;
            v32 = 0u;
            v27 = v12;
            v14 = [v12 outputDevices];
            v15 = [v14 countByEnumeratingWithState:&v31 objects:v36 count:16];
            if (v15)
            {
              v16 = v15;
              v24 = v11;
              v25 = v10;
              v26 = v6;
              v17 = *v32;
              while (2)
              {
                for (i = 0; i != v16; ++i)
                {
                  if (*v32 != v17)
                  {
                    objc_enumerationMutation(v14);
                  }

                  v19 = *(*(&v31 + 1) + 8 * i);
                  v20 = _AVLog();
                  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
                  {
                    v21 = [v19 deviceType];
                    *buf = 134217984;
                    v38 = v21;
                    _os_log_impl(&dword_18B49C000, v20, OS_LOG_TYPE_DEFAULT, "Enhance Dialogue audio route type: %ld", buf, 0xCu);
                  }

                  if ([v19 deviceType])
                  {
                    LOBYTE(v4) = 1;
                    goto LABEL_31;
                  }
                }

                v16 = [v14 countByEnumeratingWithState:&v31 objects:v36 count:16];
                if (v16)
                {
                  continue;
                }

                break;
              }

              LOBYTE(v4) = 0;
LABEL_31:
              v10 = v25;
              v6 = v26;
              v11 = v24;
            }

            else
            {
              LOBYTE(v4) = 0;
            }

            v12 = v27;
          }

          else
          {
            LOBYTE(v4) = 0;
          }
        }

        else
        {
          LOBYTE(v4) = 0;
        }

        goto LABEL_37;
      }
    }

    else
    {
      LOBYTE(v4) = 0;
    }

    LOBYTE(v5) = 0;
LABEL_37:
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64__AVEnhanceDialogueController__updateCurrentAudioRouteSupported__block_invoke_69;
    block[3] = &unk_1E720A0B8;
    objc_copyWeak(&v29, (a1 + 40));
    v30 = v4 & v5;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    objc_destroyWeak(&v29);
  }
}

- (void)_updateCurrentContentSupported
{
  v23 = *MEMORY[0x1E69E9840];
  playerController = [(AVEnhanceDialogueController *)self playerController];
  hasEnabledAudio = [playerController hasEnabledAudio];

  cachedAudioSessionMode = [(AVEnhanceDialogueController *)self cachedAudioSessionMode];
  v6 = *MEMORY[0x1E6958148];

  if (cachedAudioSessionMode == v6)
  {
    playerController2 = [(AVEnhanceDialogueController *)self playerController];
    hasEnhancedDialogueEligibleAudio = [playerController2 hasEnhancedDialogueEligibleAudio];
  }

  else
  {
    hasEnhancedDialogueEligibleAudio = 0;
  }

  v9 = _AVLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = hasEnabledAudio & hasEnhancedDialogueEligibleAudio;
    v11 = "NO";
    if ((hasEnabledAudio & hasEnhancedDialogueEligibleAudio) != 0)
    {
      v12 = "YES";
    }

    else
    {
      v12 = "NO";
    }

    if (hasEnabledAudio)
    {
      v13 = "YES";
    }

    else
    {
      v13 = "NO";
    }

    v15 = 136446978;
    v16 = v12;
    if (cachedAudioSessionMode == v6)
    {
      v14 = "YES";
    }

    else
    {
      v14 = "NO";
    }

    v17 = 2082;
    v18 = v13;
    v19 = 2082;
    v20 = v14;
    if (hasEnhancedDialogueEligibleAudio)
    {
      v11 = "YES";
    }

    v21 = 2082;
    v22 = v11;
    _os_log_impl(&dword_18B49C000, v9, OS_LOG_TYPE_DEFAULT, "Enhance Dialogue support for current content: %{public}s (hasAudio: %{public}s, isMovie: %{public}s, isAudioDSPEligible: %{public}s)", &v15, 0x2Au);
  }

  else
  {
    v10 = hasEnabledAudio & hasEnhancedDialogueEligibleAudio;
  }

  [(AVEnhanceDialogueController *)self setCurrentContentSupported:v10 & 1];
}

- (NSArray)availableLevels
{
  array = [MEMORY[0x1E695DF70] array];
  v4 = +[AVKitGlobalSettings shared];
  if ([v4 enhanceDialogueEnabled] && -[AVEnhanceDialogueController currentAudioRouteSupported](self, "currentAudioRouteSupported"))
  {
    playerController = [(AVEnhanceDialogueController *)self playerController];
    hasEnhancedDialogueEligibleAudio = [playerController hasEnhancedDialogueEligibleAudio];

    if (hasEnhancedDialogueEligibleAudio)
    {
      if (_AXSExtendedVoiceIsolationMediaModesEnabled())
      {
        [array addObject:&unk_1EFF12BF0];
      }

      [array addObject:&unk_1EFF12C08];
      [array addObject:&unk_1EFF12C20];
      [array addObject:&unk_1EFF12C38];
    }
  }

  else
  {
  }

  v7 = [array copy];

  return v7;
}

- (void)setCurrentLevel:(int64_t)level
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = +[AVKitGlobalSettings shared];
  enhanceDialogueEnabled = [v5 enhanceDialogueEnabled];

  if (enhanceDialogueEnabled)
  {
    [(AVEnhanceDialogueController *)self willChangeValueForKey:@"currentLevel"];
    if (level == 3)
    {
      if (!_AXSExtendedVoiceIsolationMediaModesEnabled())
      {
        v7 = _AVLog();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_18B49C000, v7, OS_LOG_TYPE_ERROR, "Attempting to set Enhance Dialogue to FullIsolation when Extended Voice Isolation is disabled.", buf, 2u);
        }
      }

      objc_opt_self();
      level = 3;
    }

    else
    {
      objc_opt_self();
      if (level >= 4)
      {
        v8 = _AVLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          levelCopy = level;
          _os_log_error_impl(&dword_18B49C000, v8, OS_LOG_TYPE_ERROR, "Unknown AVEnhanceDialogueLevel: %ld", buf, 0xCu);
        }

        level = 0;
      }
    }

    v14 = 0;
    v9 = [MEMORY[0x1E69583C0] setEnhanceDialogueLevel:level error:&v14];
    v10 = v14;
    if ((v9 & 1) == 0)
    {
      v11 = _AVLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        localizedDescription = [v10 localizedDescription];
        v13 = [localizedDescription cStringUsingEncoding:4];
        *buf = 136315138;
        levelCopy = v13;
        _os_log_error_impl(&dword_18B49C000, v11, OS_LOG_TYPE_ERROR, "Unable to set Enhance Dialogue level: %s", buf, 0xCu);
      }
    }

    [(AVEnhanceDialogueController *)self didChangeValueForKey:@"currentLevel"];
  }
}

- (int64_t)currentLevel
{
  v18 = *MEMORY[0x1E69E9840];
  v15 = 0;
  v3 = +[AVKitGlobalSettings shared];
  if (![v3 enhanceDialogueEnabled] || !-[AVEnhanceDialogueController currentAudioRouteSupported](self, "currentAudioRouteSupported"))
  {

    goto LABEL_18;
  }

  currentContentSupported = [(AVEnhanceDialogueController *)self currentContentSupported];

  if (!currentContentSupported)
  {
LABEL_18:
    objc_opt_self();
    return 0;
  }

  v14 = 0;
  v5 = [MEMORY[0x1E69583C0] getEnhanceDialogueLevel:&v15 error:&v14];
  v6 = v14;
  if ((v5 & 1) == 0)
  {
    v7 = _AVLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      localizedDescription = [v6 localizedDescription];
      v13 = [localizedDescription cStringUsingEncoding:4];
      *buf = 136315138;
      v17 = v13;
      _os_log_error_impl(&dword_18B49C000, v7, OS_LOG_TYPE_ERROR, "Unable to get Enhance Dialogue level: %s", buf, 0xCu);
    }
  }

  if (v15 == 3 && !_AXSExtendedVoiceIsolationMediaModesEnabled())
  {
    v8 = _AVLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18B49C000, v8, OS_LOG_TYPE_DEFAULT, "Enhance Dialogue level was reported to be FullyIsolate but Extended Voice Isolation is disabled.", buf, 2u);
    }
  }

  v9 = v15;
  objc_opt_self();
  if (v9 >= 4)
  {
    v10 = _AVLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v17 = v9;
      _os_log_error_impl(&dword_18B49C000, v10, OS_LOG_TYPE_ERROR, "Unknown AVAudioApplicationEnhanceDialogueLevel: %ld", buf, 0xCu);
    }

    return 0;
  }

  return v9;
}

- (void)setPlayerController:(id)controller
{
  v18[1] = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  if (self->_playerController != controllerCopy)
  {
    v12 = controllerCopy;
    [(AVEnhanceDialogueController *)self willChangeValueForKey:@"playerController"];
    [(AVObservationController *)self->_observationController stopAllObservation];
    objc_storeStrong(&self->_playerController, controller);
    *buf = @"playerController.currentAssetIfReady";
    v15 = @"playerController.rate";
    v16 = @"cachedAudioSessionMode";
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:3];
    observationController = [(AVEnhanceDialogueController *)self observationController];
    v8 = [observationController startObserving:self keyPaths:v6 includeInitialValue:1 observationHandler:&__block_literal_global_46];
    [observationController startObservingNotificationForName:*MEMORY[0x1E69586A8] object:0 notificationCenter:0 observationHandler:&__block_literal_global_49_26638];
    [observationController startObservingNotificationForName:*MEMORY[0x1E69586B0] object:0 notificationCenter:0 observationHandler:&__block_literal_global_51_26639];
    v9 = [observationController startObserving:self keyPath:@"mode" includeInitialValue:0 observationHandler:&__block_literal_global_56_26641];
    [observationController startObservingNotificationForName:*MEMORY[0x1E6987A30] object:0 notificationCenter:0 observationHandler:&__block_literal_global_58_26642];

    [(AVEnhanceDialogueController *)self _updateActuallyEnabledStateIfNeeded];
    [(AVEnhanceDialogueController *)self _updateCurrentAudioRouteSupported];
    v10 = _AVLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18B49C000, v10, OS_LOG_TYPE_DEFAULT, "Checking current audio session mode.", buf, 2u);
    }

    objc_initWeak(&location, self);
    v11 = +[AVEnhanceDialogueController queue];
    *buf = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __60__AVEnhanceDialogueController__updateCachedAudioSessionMode__block_invoke;
    v17 = &unk_1E7209EA8;
    objc_copyWeak(v18, &location);
    dispatch_async(v11, buf);

    objc_destroyWeak(v18);
    objc_destroyWeak(&location);
    [(AVEnhanceDialogueController *)self didChangeValueForKey:@"playerController"];
    controllerCopy = v12;
  }
}

- (void)_updateActuallyEnabledStateIfNeeded
{
  v38 = *MEMORY[0x1E69E9840];
  if (self)
  {
    enabled = [self enabled];
    playerController = [self playerController];
    hasEnabledAudio = [playerController hasEnabledAudio];

    cachedAudioSessionMode = [self cachedAudioSessionMode];
    v6 = *MEMORY[0x1E6958148];

    if (cachedAudioSessionMode == v6)
    {
      playerController2 = [self playerController];
      hasEnhancedDialogueEligibleAudio = [playerController2 hasEnhancedDialogueEligibleAudio];
    }

    else
    {
      hasEnhancedDialogueEligibleAudio = 0;
    }

    playerController3 = [self playerController];
    [playerController3 rate];
    v11 = v10;

    if (v11 > 0.0)
    {
      v12 = enabled & hasEnabledAudio & hasEnhancedDialogueEligibleAudio;
    }

    else
    {
      v12 = 0;
    }

    v13 = +[AVEnhanceDialogueOptInManager sharedInstance];
    v14 = [v13 isEnhanceDialogueAllowedUsingController:self];

    v15 = _AVLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 136447746;
      v16 = "NO";
      if (enabled)
      {
        v17 = "YES";
      }

      else
      {
        v17 = "NO";
      }

      if (hasEnabledAudio)
      {
        v18 = "YES";
      }

      else
      {
        v18 = "NO";
      }

      if (hasEnhancedDialogueEligibleAudio)
      {
        v19 = "YES";
      }

      else
      {
        v19 = "NO";
      }

      if (cachedAudioSessionMode == v6)
      {
        v20 = "YES";
      }

      else
      {
        v20 = "NO";
      }

      v25 = v17;
      v26 = 2082;
      v27 = v18;
      v28 = 2082;
      v29 = v19;
      if (v11 <= 0.0)
      {
        v21 = "NO";
      }

      else
      {
        v21 = "YES";
      }

      v30 = 2082;
      v31 = v20;
      if (v12)
      {
        v22 = "YES";
      }

      else
      {
        v22 = "NO";
      }

      v32 = 2082;
      if (v14)
      {
        v16 = "YES";
      }

      v33 = v21;
      v34 = 2082;
      v35 = v22;
      v36 = 2082;
      v37 = v16;
      _os_log_impl(&dword_18B49C000, v15, OS_LOG_TYPE_DEFAULT, "Enhance Dialogue support for current content isEnabled: %{public}s doesCurrentAssetHaveAudio: %{public}s, isAudioDSPEligible: %{public}s, isAudioOfTypeMovie: %{public}s, isPlayerPlaying: %{public}s, shouldBeOptedIn: %{public}s, isOptedIn: %{public}s)", &v24, 0x48u);
    }

    if (v14 & 1 | ((v12 & 1) == 0))
    {
      if (v12 & 1 | ((v14 & 1) == 0))
      {
        return;
      }

      v23 = +[AVEnhanceDialogueOptInManager sharedInstance];
      [v23 optOutEnhanceDialogueController:self];
    }

    else
    {
      v23 = +[AVEnhanceDialogueOptInManager sharedInstance];
      [v23 optInEnhanceDialogueController:self];
    }
  }
}

void __60__AVEnhanceDialogueController__updateCachedAudioSessionMode__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = [MEMORY[0x1E6958460] sharedInstance];
    v4 = [v3 mode];

    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __60__AVEnhanceDialogueController__updateCachedAudioSessionMode__block_invoke_2;
    v5[3] = &unk_1E7209A10;
    objc_copyWeak(&v6, (a1 + 32));
    v5[4] = v4;
    dispatch_async(MEMORY[0x1E69E96A0], v5);
    objc_destroyWeak(&v6);
  }
}

void __60__AVEnhanceDialogueController__updateCachedAudioSessionMode__block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = _AVLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = 138412290;
      v6 = v4;
      _os_log_impl(&dword_18B49C000, v3, OS_LOG_TYPE_DEFAULT, "Current audio session mode: %@", &v5, 0xCu);
    }

    [WeakRetained setCachedAudioSessionMode:*(a1 + 32)];
  }
}

void __64__AVEnhanceDialogueController__updateCurrentAudioRouteSupported__block_invoke_69(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = _AVLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 40))
      {
        v4 = @"YES";
      }

      else
      {
        v4 = @"NO";
      }

      v5 = 138412290;
      v6 = v4;
      _os_log_impl(&dword_18B49C000, v3, OS_LOG_TYPE_DEFAULT, "Enhance Dialogue support for current audio route: %@", &v5, 0xCu);
    }

    [WeakRetained setCurrentAudioRouteSupported:*(a1 + 40)];
  }
}

void __49__AVEnhanceDialogueController__startObservations__block_invoke_5(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v10 = a2;
  v5 = a4;
  v6 = [v10 playerController];
  v7 = [v6 player];
  v8 = [v7 currentItem];
  v9 = [v5 object];

  LODWORD(v5) = [v8 isEqual:v9];
  if (v5)
  {
    [(AVEnhanceDialogueController *)v10 _updateActuallyEnabledStateIfNeeded];
    [v10 _updateCurrentContentSupported];
    [(AVEnhanceDialogueController *)v10 _updateCurrentAudioRouteSupported];
  }
}

void __49__AVEnhanceDialogueController__startObservations__block_invoke_4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a2;
  v6 = [a4 value];
  [v5 setCachedAudioSessionMode:v6];
}

void __49__AVEnhanceDialogueController__startObservations__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [(AVEnhanceDialogueController *)v2 _updateActuallyEnabledStateIfNeeded];
  [v2 _updateCurrentContentSupported];
  [(AVEnhanceDialogueController *)v2 _updateCurrentAudioRouteSupported];
}

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled != enabled)
  {
    [(AVEnhanceDialogueController *)self willChangeValueForKey:@"enabled"];
    self->_enabled = enabled;
    [(AVEnhanceDialogueController *)self _updateActuallyEnabledStateIfNeeded];
    [(AVEnhanceDialogueController *)self _updateCurrentAudioRouteSupported];

    [(AVEnhanceDialogueController *)self didChangeValueForKey:@"enabled"];
  }
}

- (void)dealloc
{
  observationController = [(AVEnhanceDialogueController *)self observationController];
  [observationController stopAllObservation];

  v4 = +[AVEnhanceDialogueOptInManager sharedInstance];
  v5 = [v4 isEnhanceDialogueAllowedUsingController:self];

  if (v5)
  {
    v6 = +[AVEnhanceDialogueOptInManager sharedInstance];
    [v6 optOutEnhanceDialogueController:self];
  }

  v7.receiver = self;
  v7.super_class = AVEnhanceDialogueController;
  [(AVEnhanceDialogueController *)&v7 dealloc];
}

- (AVEnhanceDialogueController)init
{
  v6.receiver = self;
  v6.super_class = AVEnhanceDialogueController;
  v2 = [(AVEnhanceDialogueController *)&v6 init];
  if (v2)
  {
    v3 = [[AVObservationController alloc] initWithOwner:v2];
    observationController = v2->_observationController;
    v2->_observationController = v3;

    [(AVEnhanceDialogueController *)v2 setCurrentAudioRouteSupported:0];
    [(AVEnhanceDialogueController *)v2 setCachedAudioSessionMode:*MEMORY[0x1E6958130]];
  }

  return v2;
}

uint64_t __36__AVEnhanceDialogueController_queue__block_invoke()
{
  v0 = dispatch_queue_create("com.apple.AVKit.EnhanceDialogue", 0);
  v1 = queue_queue;
  queue_queue = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end