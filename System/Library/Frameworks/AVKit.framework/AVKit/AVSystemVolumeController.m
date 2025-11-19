@interface AVSystemVolumeController
+ (NSMutableSet)windowSceneVolumeHUDAssertions;
+ (id)volumeController;
- (AVSystemVolumeController)init;
- (void)_applyProposedVolumeIfNeeded;
- (void)_applyProposedVolumeImmediately;
- (void)_handleCurrentRouteHasVolumeControlDidChangeNotification:(id)a3;
- (void)_handleSystemControllerServerDiedNotification;
- (void)_handleSystemVolumeDidChangeNotification:(id)a3;
- (void)_observeSystemControllerIfNeeded;
- (void)_performOnMainThread:(id)a3;
- (void)_postNotificationForNameIfFullyInitialized:(id)a3 userInfo:(id)a4;
- (void)_removeVolumeHUDAssertionsForClientID:(id)a3;
- (void)_setupSystemController;
- (void)_unobserveSystemControllerIfNeeded;
- (void)beginChangingVolume;
- (void)dealloc;
- (void)endChangingVolume;
- (void)setClientWithIdentifier:(id)a3 forWindowSceneSessionWithIdentifier:(id)a4;
- (void)setPrefersSystemVolumeHUDHidden:(BOOL)a3;
- (void)setSharedSystemController:(id)a3;
- (void)setSystemVolumeHUDEnabled:(BOOL)a3 forSceneVolumeHudAssertion:(id)a4;
- (void)setSystemVolumeHUDEnabled:(BOOL)a3 forWindowSceneSessionIdentifier:(id)a4;
- (void)setTargetVolume:(float)a3;
- (void)setVolume:(float)a3 shouldShowHUD:(BOOL)a4;
@end

@implementation AVSystemVolumeController

- (void)setPrefersSystemVolumeHUDHidden:(BOOL)a3
{
  v34 = *MEMORY[0x1E69E9840];
  self->_prefersSystemVolumeHUDHidden = a3;
  if (!self->_uniqueIdentifier || !self->_windowSceneSessionIdentifier)
  {
    v4 = _AVLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v33 = "[AVSystemVolumeController setPrefersSystemVolumeHUDHidden:]";
      _os_log_impl(&dword_18B49C000, v4, OS_LOG_TYPE_DEFAULT, "%s Attempted to set SystemVolumeHUD visibility before setting Client Identifier or Scene Identifier.", buf, 0xCu);
    }
  }

  v5 = [objc_opt_class() windowSceneVolumeHUDAssertions];
  v6 = [v5 copy];

  if (self->_prefersSystemVolumeHUDHidden)
  {
    if (self->_windowSceneSessionIdentifier)
    {
      v7 = [[AVVolumeHUDAssertion alloc] initWithSceneIdentifier:self->_windowSceneSessionIdentifier clientIdentifier:self->_uniqueIdentifier];
      [(AVVolumeHUDAssertion *)v7 setDelegate:self];
      [(AVVolumeHUDAssertion *)v7 setPrefersSystemVolumeHUDHidden:1];
      v8 = [objc_opt_class() windowSceneVolumeHUDAssertions];
      [v8 addObject:v7];
    }
  }

  else
  {
    [(AVSystemVolumeController *)self _removeVolumeHUDAssertionsForClientID:self->_uniqueIdentifier];
  }

  v9 = [objc_opt_class() windowSceneVolumeHUDAssertions];
  v10 = [v9 mutableCopy];
  [v10 minusSet:v6];
  v11 = [v6 mutableCopy];
  [v11 minusSet:v9];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v27;
    do
    {
      v16 = 0;
      do
      {
        if (*v27 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(AVSystemVolumeController *)self setSystemVolumeHUDEnabled:0 forSceneVolumeHudAssertion:*(*(&v26 + 1) + 8 * v16++)];
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v14);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v17 = v11;
  v18 = [v17 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v23;
    do
    {
      v21 = 0;
      do
      {
        if (*v23 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [(AVSystemVolumeController *)self setSystemVolumeHUDEnabled:1 forSceneVolumeHudAssertion:*(*(&v22 + 1) + 8 * v21++), v22];
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v19);
  }
}

- (void)_performOnMainThread:(id)a3
{
  v4 = a3;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v4[2](v4, self);
  }

  else
  {
    objc_initWeak(&location, self);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__AVSystemVolumeController__performOnMainThread___block_invoke;
    block[3] = &unk_1E7209978;
    objc_copyWeak(&v7, &location);
    v6 = v4;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

uint64_t __49__AVSystemVolumeController__performOnMainThread___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    WeakRetained = (*(*(a1 + 32) + 16))();
    v3 = v5;
  }

  return MEMORY[0x1EEE66BB8](WeakRetained, v3);
}

- (void)_applyProposedVolumeImmediately
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = _AVLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(AVSystemVolumeController *)self targetVolumeInternal];
    [v4 floatValue];
    v6 = v5;
    v7 = [(AVSystemVolumeController *)self volumeCategory];
    v14 = 136315650;
    v15 = "[AVSystemVolumeController _applyProposedVolumeImmediately]";
    v16 = 2048;
    v17 = v6;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&dword_18B49C000, v3, OS_LOG_TYPE_DEFAULT, "%s Setting volume on AVSystemController to: %.2f for category: %@", &v14, 0x20u);
  }

  v8 = [(AVSystemVolumeController *)self sharedSystemController];
  v9 = [(AVSystemVolumeController *)self targetVolumeInternal];
  [v9 floatValue];
  v11 = v10;
  v12 = [(AVSystemVolumeController *)self volumeCategory];
  LODWORD(v13) = v11;
  [v8 setVolumeTo:v12 forCategory:v13];
}

- (void)_applyProposedVolumeIfNeeded
{
  v3 = [(AVSystemVolumeController *)self targetVolumeInternal];
  if (!v3)
  {
    return;
  }

  v20 = v3;
  v4 = [(AVSystemVolumeController *)self targetVolumeInternal];
  [v4 floatValue];
  v6 = v5;
  [(AVSystemVolumeController *)self volume];
  if (v6 == v7)
  {
  }

  else
  {
    v8 = [(AVSystemVolumeController *)self targetVolumeInternal];
    [v8 floatValue];
    if (v9 == 0.0)
    {

LABEL_11:
      if ([(AVSystemVolumeController *)self volumeChangesThrottled]|| ![(AVSystemVolumeController *)self isChangingVolume])
      {
        if (![(AVSystemVolumeController *)self isChangingVolume])
        {

          [(AVSystemVolumeController *)self _applyProposedVolumeImmediately];
        }
      }

      else
      {
        [(AVSystemVolumeController *)self setVolumeChangesThrottled:1];
        [(AVSystemVolumeController *)self _applyProposedVolumeImmediately];
        objc_initWeak(&location, self);
        v17 = MEMORY[0x1E695DFF0];
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __56__AVSystemVolumeController__applyProposedVolumeIfNeeded__block_invoke;
        v21[3] = &unk_1E7209DA8;
        objc_copyWeak(&v22, &location);
        v18 = [v17 timerWithTimeInterval:0 repeats:v21 block:0.1];
        [v18 setTolerance:0.025];
        v19 = [MEMORY[0x1E695DFD0] mainRunLoop];
        [v19 addTimer:v18 forMode:*MEMORY[0x1E695DA28]];

        objc_destroyWeak(&v22);
        objc_destroyWeak(&location);
      }

      return;
    }

    [(AVSystemVolumeController *)self volume];
    v11 = v10;
    v12 = [(AVSystemVolumeController *)self targetVolumeInternal];
    [v12 floatValue];
    v14 = v11 - v13;

    v15 = -v14;
    if (v14 >= 0.0)
    {
      v15 = v14;
    }

    v16 = v15;

    if (v16 > 0.01)
    {
      goto LABEL_11;
    }
  }
}

void __56__AVSystemVolumeController__applyProposedVolumeIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setVolumeChangesThrottled:0];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 _applyProposedVolumeIfNeeded];
}

- (void)_handleCurrentRouteHasVolumeControlDidChangeNotification:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69AEA80]];
  v6 = [v5 BOOLValue];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __85__AVSystemVolumeController__handleCurrentRouteHasVolumeControlDidChangeNotification___block_invoke;
  v7[3] = &__block_descriptor_33_e34_v16__0__AVSystemVolumeController_8l;
  v8 = v6;
  [(AVSystemVolumeController *)self _performOnMainThread:v7];
}

void __85__AVSystemVolumeController__handleCurrentRouteHasVolumeControlDidChangeNotification___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setCurrentRouteHasVolumeControl:v2];
  [v3 _postNotificationForNameIfFullyInitialized:@"AVVolumeControllerCurrentRouteHasVolumeControlChangedNotification" userInfo:0];
}

- (void)_handleSystemVolumeDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69AE9F8]];
  v7 = [(AVSystemVolumeController *)self volumeCategory];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    v9 = [v4 userInfo];
    v10 = [v9 objectForKeyedSubscript:*MEMORY[0x1E69AEA18]];
    [v10 floatValue];
    v12 = v11;

    v13 = [v4 userInfo];
    v14 = [v13 objectForKeyedSubscript:*MEMORY[0x1E69AEA10]];

    v15 = [v14 isEqualToString:@"ExplicitVolumeChange"];
    v16 = [v14 isEqualToString:@"RouteChange"];
    v17 = [v14 isEqualToString:@"VolumeLimitChange"];
    if ((v15 & 1) != 0 || (v16 & 1) != 0 || v17)
    {
      v18 = [v4 userInfo];
      v19 = [v18 objectForKeyedSubscript:*MEMORY[0x1E69AEA08]];
      v20 = [v19 BOOLValue] ^ 1;

      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __69__AVSystemVolumeController__handleSystemVolumeDidChangeNotification___block_invoke;
      v21[3] = &__block_descriptor_38_e34_v16__0__AVSystemVolumeController_8l;
      v23 = v16;
      v22 = v12;
      v24 = v20;
      [(AVSystemVolumeController *)self _performOnMainThread:v21];
    }
  }
}

void __69__AVSystemVolumeController__handleSystemVolumeDidChangeNotification___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if ((*(a1 + 36) & 1) == 0)
  {
    LODWORD(v3) = *(a1 + 32);
LABEL_7:
    [v7 setVolume:*(a1 + 37) shouldShowHUD:v3];
    v4 = v7;
    goto LABEL_8;
  }

  [v7 volume];
  v4 = v7;
  v5 = *&v3;
  LODWORD(v3) = *(a1 + 32);
  v6 = v5 - *&v3;
  if (v6 < 0.0)
  {
    v6 = -v6;
  }

  if (v6 > 0.001)
  {
    goto LABEL_7;
  }

LABEL_8:
}

- (void)_handleSystemControllerServerDiedNotification
{
  [(AVSystemVolumeController *)self setSharedSystemController:0];
  [(AVSystemVolumeController *)self setFullyInitialized:0];

  [(AVSystemVolumeController *)self _setupSystemController];
}

- (void)_unobserveSystemControllerIfNeeded
{
  if (self->_observingSystemController)
  {
    self->_observingSystemController = 0;
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 removeObserver:self name:*MEMORY[0x1E69AECB8] object:0];

    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 removeObserver:self name:*MEMORY[0x1E69AEA78] object:0];

    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 removeObserver:self name:*MEMORY[0x1E69AECE8] object:0];
  }
}

- (void)_observeSystemControllerIfNeeded
{
  if (!self->_observingSystemController)
  {
    self->_observingSystemController = 1;
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 addObserver:self selector:sel__handleSystemControllerServerDiedNotification name:*MEMORY[0x1E69AECB8] object:0];

    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 addObserver:self selector:sel__handleCurrentRouteHasVolumeControlDidChangeNotification_ name:*MEMORY[0x1E69AEA78] object:0];

    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 addObserver:self selector:sel__handleSystemVolumeDidChangeNotification_ name:*MEMORY[0x1E69AECE8] object:0];
  }
}

- (void)_setupSystemController
{
  objc_initWeak(&location, self);
  systemControllerQueue = self->_systemControllerQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__AVSystemVolumeController__setupSystemController__block_invoke;
  v4[3] = &unk_1E7209EA8;
  objc_copyWeak(&v5, &location);
  dispatch_async(systemControllerQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __50__AVSystemVolumeController__setupSystemController__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained _requestSharedSystemController];
    v5 = [v4 currentRouteHasVolumeControl];
    v6 = v5;
    v14 = 0;
    if (v5)
    {
      [v4 getVolume:&v14 forCategory:@"Audio/Video"];
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __50__AVSystemVolumeController__setupSystemController__block_invoke_2;
    block[3] = &unk_1E7209410;
    objc_copyWeak(&v11, (a1 + 32));
    v9 = v4;
    v10 = @"Audio/Video";
    v13 = v6;
    v12 = v14;
    v7 = v4;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    objc_destroyWeak(&v11);
  }
}

void __50__AVSystemVolumeController__setupSystemController__block_invoke_2(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _observeSystemControllerIfNeeded];
    [v3 setSharedSystemController:*(a1 + 32)];
    objc_storeStrong(v3 + 7, *(a1 + 40));
    [v3 setCurrentRouteHasVolumeControl:*(a1 + 60)];
    LODWORD(v4) = *(a1 + 56);
    [v3 setVolume:1 shouldShowHUD:v4];
    [v3 setFullyInitialized:1];
    v6 = @"AVVolumeControllerVolumeDidChangeNotificationIsInitialValueKey";
    v7[0] = MEMORY[0x1E695E118];
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
    [v3 _postNotificationForNameIfFullyInitialized:@"AVVolumeControllerVolumeChangedNotification" userInfo:v5];

    [v3 _postNotificationForNameIfFullyInitialized:@"AVVolumeControllerCurrentRouteHasVolumeControlChangedNotification" userInfo:0];
  }
}

- (void)_postNotificationForNameIfFullyInitialized:(id)a3 userInfo:(id)a4
{
  v8 = a3;
  v6 = a4;
  if ([(AVSystemVolumeController *)self isFullyInitialized])
  {
    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 postNotificationName:v8 object:self userInfo:v6];
  }
}

- (void)setSharedSystemController:(id)a3
{
  v10[3] = *MEMORY[0x1E69E9840];
  v5 = a3;
  sharedSystemController = self->_sharedSystemController;
  p_sharedSystemController = &self->_sharedSystemController;
  if (sharedSystemController != v5)
  {
    objc_storeStrong(p_sharedSystemController, a3);
    if (*p_sharedSystemController)
    {
      v8 = *MEMORY[0x1E69AEA78];
      v10[0] = *MEMORY[0x1E69AECB8];
      v10[1] = v8;
      v10[2] = *MEMORY[0x1E69AECE8];
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:3];
      [(AVSystemController *)*p_sharedSystemController setAttribute:v9 forKey:*MEMORY[0x1E69AECD8] error:0];
    }
  }
}

- (void)setVolume:(float)a3 shouldShowHUD:(BOOL)a4
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (a3 == 0.0 || a3 == 1.0)
  {
    goto LABEL_8;
  }

  v6 = self->_volume - a3;
  if (v6 < 0.0)
  {
    v6 = -v6;
  }

  if (v6 > 0.001)
  {
LABEL_8:
    self->_volume = a3;
    v9 = @"AVVolumeControllerVolumeDidChangeNotificationShowHUDKey";
    v7 = [MEMORY[0x1E696AD98] numberWithBool:a4];
    v10[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    [(AVSystemVolumeController *)self _postNotificationForNameIfFullyInitialized:@"AVVolumeControllerVolumeChangedNotification" userInfo:v8];
  }
}

- (void)setSystemVolumeHUDEnabled:(BOOL)a3 forWindowSceneSessionIdentifier:(id)a4
{
  v4 = a3;
  v32 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = MEMORY[0x1E69DDA98];
  v7 = [*MEMORY[0x1E69DDA98] avkit_windowSceneWithSessionIdentifier:v5];
  v8 = _AVLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"Disabling";
    *buf = 136315906;
    v25 = "[AVSystemVolumeController setSystemVolumeHUDEnabled:forWindowSceneSessionIdentifier:]";
    if (v4)
    {
      v9 = @"Enabling";
    }

    v26 = 2112;
    v27 = v9;
    v28 = 2112;
    v29 = v7;
    v30 = 2112;
    v31 = v5;
    _os_log_impl(&dword_18B49C000, v8, OS_LOG_TYPE_DEFAULT, "%s %@ volume HUD for windowScene: %@ with ID: %@", buf, 0x2Au);
  }

  if (!v7)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = [*v6 openSessions];
    v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      do
      {
        v15 = 0;
        do
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v19 + 1) + 8 * v15) persistentIdentifier];
          [v10 addObject:v16];

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v13);
    }

    v17 = _AVLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v10 componentsJoinedByString:{@", "}];
      *buf = 136315650;
      v25 = "[AVSystemVolumeController setSystemVolumeHUDEnabled:forWindowSceneSessionIdentifier:]";
      v26 = 2112;
      v27 = v5;
      v28 = 2112;
      v29 = v18;
      _os_log_impl(&dword_18B49C000, v17, OS_LOG_TYPE_DEFAULT, "%s WindowScene with ID: %@ is nonexist. Existing session identifiers are %@", buf, 0x20u);
    }
  }

  [v7 _setSystemVolumeHUDEnabled:v4];
}

- (void)setSystemVolumeHUDEnabled:(BOOL)a3 forSceneVolumeHudAssertion:(id)a4
{
  v4 = a3;
  v21 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = _AVLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (v4)
    {
      v8 = @"Enabling";
    }

    else
    {
      v8 = @"Disabling";
    }

    v9 = [v6 sceneIdentifier];
    v10 = [v6 clientIdentifier];
    v13 = 136315906;
    v14 = "[AVSystemVolumeController setSystemVolumeHUDEnabled:forSceneVolumeHudAssertion:]";
    v15 = 2112;
    v16 = v8;
    v17 = 2112;
    v18 = v9;
    v19 = 2112;
    v20 = v10;
    _os_log_impl(&dword_18B49C000, v7, OS_LOG_TYPE_DEFAULT, "%s %@ volume HUD for windowScene with scene ID: %@, unique ID: %@", &v13, 0x2Au);
  }

  if ([*MEMORY[0x1E69DDA98] _appAdoptsUISceneLifecycle])
  {
    v11 = [getMPVolumeHUDControllerClass() sharedInstance];
    [v11 addVolumeDisplay:v6];

    [v6 setPrefersSystemVolumeHUDHidden:v4 ^ 1];
    v12 = [getMPVolumeHUDControllerClass() sharedInstance];
    [v12 setNeedsUpdate];
  }

  else
  {
    v12 = [v6 sceneIdentifier];
    [(AVSystemVolumeController *)self setSystemVolumeHUDEnabled:v4 forWindowSceneSessionIdentifier:v12];
  }
}

- (void)_removeVolumeHUDAssertionsForClientID:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() windowSceneVolumeHUDAssertions];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __66__AVSystemVolumeController__removeVolumeHUDAssertionsForClientID___block_invoke;
  v8[3] = &unk_1E72093E8;
  v9 = v3;
  v5 = v3;
  v6 = [v4 objectsPassingTest:v8];

  v7 = [objc_opt_class() windowSceneVolumeHUDAssertions];
  [v7 minusSet:v6];
}

BOOL __66__AVSystemVolumeController__removeVolumeHUDAssertionsForClientID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 clientIdentifier];
  if ([v4 isEqualToString:*(a1 + 32)])
  {
    v5 = 1;
  }

  else if (*(a1 + 32))
  {
    v5 = 0;
  }

  else
  {
    v6 = [v3 clientIdentifier];
    v5 = v6 == 0;
  }

  return v5;
}

- (void)setClientWithIdentifier:(id)a3 forWindowSceneSessionWithIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  objc_storeStrong(&self->_uniqueIdentifier, a3);
  objc_storeStrong(&self->_windowSceneSessionIdentifier, a4);
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __88__AVSystemVolumeController_setClientWithIdentifier_forWindowSceneSessionWithIdentifier___block_invoke;
    block[3] = &unk_1E72093C0;
    block[4] = self;
    v10 = v7;
    v11 = v8;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)endChangingVolume
{
  [(AVSystemVolumeController *)self setChangingVolume:0];
  [(AVSystemVolumeController *)self setVolumeChangesThrottled:0];
  [(AVSystemVolumeController *)self _applyProposedVolumeIfNeeded];
  [(AVSystemVolumeController *)self setTargetVolumeInternal:0];

  [(AVSystemVolumeController *)self setMaximumTargetVolumeSinceChangingVolumeBegan:0];
}

- (void)beginChangingVolume
{
  if (![(AVSystemVolumeController *)self isChangingVolume])
  {
    [(AVSystemVolumeController *)self setChangingVolume:1];
    v3 = MEMORY[0x1E696AD98];
    [(AVSystemVolumeController *)self volume];
    v4 = [v3 numberWithFloat:?];
    [(AVSystemVolumeController *)self setTargetVolumeInternal:v4];

    [(AVSystemVolumeController *)self setMaximumTargetVolumeSinceChangingVolumeBegan:0];
    prefersSystemVolumeHUDHidden = self->_prefersSystemVolumeHUDHidden;

    [(AVSystemVolumeController *)self setPrefersSystemVolumeHUDHidden:prefersSystemVolumeHUDHidden];
  }
}

- (void)setTargetVolume:(float)a3
{
  v19 = *MEMORY[0x1E69E9840];
  if (![(AVSystemVolumeController *)self isChangingVolume])
  {
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v16 = _AVMethodProem(self);
      v17 = 138412290;
      v18 = v16;
      _os_log_error_impl(&dword_18B49C000, v5, OS_LOG_TYPE_ERROR, "%@: It is an error to set the target volume without calling [AVVolumeController begin/endChangingVolume].", &v17, 0xCu);
    }
  }

  v6 = [(AVSystemVolumeController *)self maximumTargetVolumeSinceChangingVolumeBegan];
  v8 = v6;
  if (v6)
  {
    v9 = v6;
  }

  else
  {
    *&v7 = a3;
    v9 = [MEMORY[0x1E696AD98] numberWithFloat:v7];
  }

  v10 = v9;

  *&v11 = a3;
  v12 = [MEMORY[0x1E696AD98] numberWithFloat:v11];
  [(AVSystemVolumeController *)self setTargetVolumeInternal:v12];

  v13 = MEMORY[0x1E696AD98];
  [v10 floatValue];
  if (*&v14 >= a3)
  {
    [v10 floatValue];
    a3 = *&v14;
  }

  *&v14 = a3;
  v15 = [v13 numberWithFloat:v14];
  [(AVSystemVolumeController *)self setMaximumTargetVolumeSinceChangingVolumeBegan:v15];

  [(AVSystemVolumeController *)self _postNotificationForNameIfFullyInitialized:@"AVVolumeControllerVolumeChangedNotification" userInfo:0];
  [(AVSystemVolumeController *)self _applyProposedVolumeIfNeeded];
}

- (void)dealloc
{
  [(AVSystemVolumeController *)self _unobserveSystemControllerIfNeeded];
  v3.receiver = self;
  v3.super_class = AVSystemVolumeController;
  [(AVSystemVolumeController *)&v3 dealloc];
}

- (AVSystemVolumeController)init
{
  v7.receiver = self;
  v7.super_class = AVSystemVolumeController;
  v2 = [(AVSystemVolumeController *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v4 = dispatch_queue_create("com.apple.AVKit.AVSystemVolumeControllerQueue", v3);
    systemControllerQueue = v2->_systemControllerQueue;
    v2->_systemControllerQueue = v4;

    [(AVSystemVolumeController *)v2 _setupSystemController];
  }

  return v2;
}

+ (NSMutableSet)windowSceneVolumeHUDAssertions
{
  if (windowSceneVolumeHUDAssertions_onceToken != -1)
  {
    dispatch_once(&windowSceneVolumeHUDAssertions_onceToken, &__block_literal_global_26463);
  }

  v3 = windowSceneVolumeHUDAssertions_windowSceneVolumeHUDAssertions;

  return v3;
}

uint64_t __58__AVSystemVolumeController_windowSceneVolumeHUDAssertions__block_invoke()
{
  v0 = [MEMORY[0x1E695DFA8] set];
  v1 = windowSceneVolumeHUDAssertions_windowSceneVolumeHUDAssertions;
  windowSceneVolumeHUDAssertions_windowSceneVolumeHUDAssertions = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)volumeController
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__AVSystemVolumeController_volumeController__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (volumeController_onceToken != -1)
  {
    dispatch_once(&volumeController_onceToken, block);
  }

  v2 = volumeController_volumeController;

  return v2;
}

uint64_t __44__AVSystemVolumeController_volumeController__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = volumeController_volumeController;
  volumeController_volumeController = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

@end