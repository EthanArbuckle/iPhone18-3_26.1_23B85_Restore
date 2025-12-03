@interface AVSystemVolumeController
+ (NSMutableSet)windowSceneVolumeHUDAssertions;
+ (id)volumeController;
- (AVSystemVolumeController)init;
- (void)_applyProposedVolumeIfNeeded;
- (void)_applyProposedVolumeImmediately;
- (void)_handleCurrentRouteHasVolumeControlDidChangeNotification:(id)notification;
- (void)_handleSystemControllerServerDiedNotification;
- (void)_handleSystemVolumeDidChangeNotification:(id)notification;
- (void)_observeSystemControllerIfNeeded;
- (void)_performOnMainThread:(id)thread;
- (void)_postNotificationForNameIfFullyInitialized:(id)initialized userInfo:(id)info;
- (void)_removeVolumeHUDAssertionsForClientID:(id)d;
- (void)_setupSystemController;
- (void)_unobserveSystemControllerIfNeeded;
- (void)beginChangingVolume;
- (void)dealloc;
- (void)endChangingVolume;
- (void)setClientWithIdentifier:(id)identifier forWindowSceneSessionWithIdentifier:(id)withIdentifier;
- (void)setPrefersSystemVolumeHUDHidden:(BOOL)hidden;
- (void)setSharedSystemController:(id)controller;
- (void)setSystemVolumeHUDEnabled:(BOOL)enabled forSceneVolumeHudAssertion:(id)assertion;
- (void)setSystemVolumeHUDEnabled:(BOOL)enabled forWindowSceneSessionIdentifier:(id)identifier;
- (void)setTargetVolume:(float)volume;
- (void)setVolume:(float)volume shouldShowHUD:(BOOL)d;
@end

@implementation AVSystemVolumeController

- (void)setPrefersSystemVolumeHUDHidden:(BOOL)hidden
{
  v34 = *MEMORY[0x1E69E9840];
  self->_prefersSystemVolumeHUDHidden = hidden;
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

  windowSceneVolumeHUDAssertions = [objc_opt_class() windowSceneVolumeHUDAssertions];
  v6 = [windowSceneVolumeHUDAssertions copy];

  if (self->_prefersSystemVolumeHUDHidden)
  {
    if (self->_windowSceneSessionIdentifier)
    {
      v7 = [[AVVolumeHUDAssertion alloc] initWithSceneIdentifier:self->_windowSceneSessionIdentifier clientIdentifier:self->_uniqueIdentifier];
      [(AVVolumeHUDAssertion *)v7 setDelegate:self];
      [(AVVolumeHUDAssertion *)v7 setPrefersSystemVolumeHUDHidden:1];
      windowSceneVolumeHUDAssertions2 = [objc_opt_class() windowSceneVolumeHUDAssertions];
      [windowSceneVolumeHUDAssertions2 addObject:v7];
    }
  }

  else
  {
    [(AVSystemVolumeController *)self _removeVolumeHUDAssertionsForClientID:self->_uniqueIdentifier];
  }

  windowSceneVolumeHUDAssertions3 = [objc_opt_class() windowSceneVolumeHUDAssertions];
  v10 = [windowSceneVolumeHUDAssertions3 mutableCopy];
  [v10 minusSet:v6];
  v11 = [v6 mutableCopy];
  [v11 minusSet:windowSceneVolumeHUDAssertions3];
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

- (void)_performOnMainThread:(id)thread
{
  threadCopy = thread;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    threadCopy[2](threadCopy, self);
  }

  else
  {
    objc_initWeak(&location, self);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__AVSystemVolumeController__performOnMainThread___block_invoke;
    block[3] = &unk_1E7209978;
    objc_copyWeak(&v7, &location);
    v6 = threadCopy;
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
    targetVolumeInternal = [(AVSystemVolumeController *)self targetVolumeInternal];
    [targetVolumeInternal floatValue];
    v6 = v5;
    volumeCategory = [(AVSystemVolumeController *)self volumeCategory];
    v14 = 136315650;
    v15 = "[AVSystemVolumeController _applyProposedVolumeImmediately]";
    v16 = 2048;
    v17 = v6;
    v18 = 2112;
    v19 = volumeCategory;
    _os_log_impl(&dword_18B49C000, v3, OS_LOG_TYPE_DEFAULT, "%s Setting volume on AVSystemController to: %.2f for category: %@", &v14, 0x20u);
  }

  sharedSystemController = [(AVSystemVolumeController *)self sharedSystemController];
  targetVolumeInternal2 = [(AVSystemVolumeController *)self targetVolumeInternal];
  [targetVolumeInternal2 floatValue];
  v11 = v10;
  volumeCategory2 = [(AVSystemVolumeController *)self volumeCategory];
  LODWORD(v13) = v11;
  [sharedSystemController setVolumeTo:volumeCategory2 forCategory:v13];
}

- (void)_applyProposedVolumeIfNeeded
{
  targetVolumeInternal = [(AVSystemVolumeController *)self targetVolumeInternal];
  if (!targetVolumeInternal)
  {
    return;
  }

  v20 = targetVolumeInternal;
  targetVolumeInternal2 = [(AVSystemVolumeController *)self targetVolumeInternal];
  [targetVolumeInternal2 floatValue];
  v6 = v5;
  [(AVSystemVolumeController *)self volume];
  if (v6 == v7)
  {
  }

  else
  {
    targetVolumeInternal3 = [(AVSystemVolumeController *)self targetVolumeInternal];
    [targetVolumeInternal3 floatValue];
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
        mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
        [mainRunLoop addTimer:v18 forMode:*MEMORY[0x1E695DA28]];

        objc_destroyWeak(&v22);
        objc_destroyWeak(&location);
      }

      return;
    }

    [(AVSystemVolumeController *)self volume];
    v11 = v10;
    targetVolumeInternal4 = [(AVSystemVolumeController *)self targetVolumeInternal];
    [targetVolumeInternal4 floatValue];
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

- (void)_handleCurrentRouteHasVolumeControlDidChangeNotification:(id)notification
{
  userInfo = [notification userInfo];
  v5 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69AEA80]];
  bOOLValue = [v5 BOOLValue];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __85__AVSystemVolumeController__handleCurrentRouteHasVolumeControlDidChangeNotification___block_invoke;
  v7[3] = &__block_descriptor_33_e34_v16__0__AVSystemVolumeController_8l;
  v8 = bOOLValue;
  [(AVSystemVolumeController *)self _performOnMainThread:v7];
}

void __85__AVSystemVolumeController__handleCurrentRouteHasVolumeControlDidChangeNotification___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setCurrentRouteHasVolumeControl:v2];
  [v3 _postNotificationForNameIfFullyInitialized:@"AVVolumeControllerCurrentRouteHasVolumeControlChangedNotification" userInfo:0];
}

- (void)_handleSystemVolumeDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69AE9F8]];
  volumeCategory = [(AVSystemVolumeController *)self volumeCategory];
  v8 = [v6 isEqualToString:volumeCategory];

  if (v8)
  {
    userInfo2 = [notificationCopy userInfo];
    v10 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x1E69AEA18]];
    [v10 floatValue];
    v12 = v11;

    userInfo3 = [notificationCopy userInfo];
    v14 = [userInfo3 objectForKeyedSubscript:*MEMORY[0x1E69AEA10]];

    v15 = [v14 isEqualToString:@"ExplicitVolumeChange"];
    v16 = [v14 isEqualToString:@"RouteChange"];
    v17 = [v14 isEqualToString:@"VolumeLimitChange"];
    if ((v15 & 1) != 0 || (v16 & 1) != 0 || v17)
    {
      userInfo4 = [notificationCopy userInfo];
      v19 = [userInfo4 objectForKeyedSubscript:*MEMORY[0x1E69AEA08]];
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
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self name:*MEMORY[0x1E69AECB8] object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 removeObserver:self name:*MEMORY[0x1E69AEA78] object:0];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 removeObserver:self name:*MEMORY[0x1E69AECE8] object:0];
  }
}

- (void)_observeSystemControllerIfNeeded
{
  if (!self->_observingSystemController)
  {
    self->_observingSystemController = 1;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel__handleSystemControllerServerDiedNotification name:*MEMORY[0x1E69AECB8] object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:self selector:sel__handleCurrentRouteHasVolumeControlDidChangeNotification_ name:*MEMORY[0x1E69AEA78] object:0];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 addObserver:self selector:sel__handleSystemVolumeDidChangeNotification_ name:*MEMORY[0x1E69AECE8] object:0];
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

- (void)_postNotificationForNameIfFullyInitialized:(id)initialized userInfo:(id)info
{
  initializedCopy = initialized;
  infoCopy = info;
  if ([(AVSystemVolumeController *)self isFullyInitialized])
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:initializedCopy object:self userInfo:infoCopy];
  }
}

- (void)setSharedSystemController:(id)controller
{
  v10[3] = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  sharedSystemController = self->_sharedSystemController;
  p_sharedSystemController = &self->_sharedSystemController;
  if (sharedSystemController != controllerCopy)
  {
    objc_storeStrong(p_sharedSystemController, controller);
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

- (void)setVolume:(float)volume shouldShowHUD:(BOOL)d
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (volume == 0.0 || volume == 1.0)
  {
    goto LABEL_8;
  }

  v6 = self->_volume - volume;
  if (v6 < 0.0)
  {
    v6 = -v6;
  }

  if (v6 > 0.001)
  {
LABEL_8:
    self->_volume = volume;
    v9 = @"AVVolumeControllerVolumeDidChangeNotificationShowHUDKey";
    v7 = [MEMORY[0x1E696AD98] numberWithBool:d];
    v10[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    [(AVSystemVolumeController *)self _postNotificationForNameIfFullyInitialized:@"AVVolumeControllerVolumeChangedNotification" userInfo:v8];
  }
}

- (void)setSystemVolumeHUDEnabled:(BOOL)enabled forWindowSceneSessionIdentifier:(id)identifier
{
  enabledCopy = enabled;
  v32 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v6 = MEMORY[0x1E69DDA98];
  v7 = [*MEMORY[0x1E69DDA98] avkit_windowSceneWithSessionIdentifier:identifierCopy];
  v8 = _AVLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"Disabling";
    *buf = 136315906;
    v25 = "[AVSystemVolumeController setSystemVolumeHUDEnabled:forWindowSceneSessionIdentifier:]";
    if (enabledCopy)
    {
      v9 = @"Enabling";
    }

    v26 = 2112;
    v27 = v9;
    v28 = 2112;
    v29 = v7;
    v30 = 2112;
    v31 = identifierCopy;
    _os_log_impl(&dword_18B49C000, v8, OS_LOG_TYPE_DEFAULT, "%s %@ volume HUD for windowScene: %@ with ID: %@", buf, 0x2Au);
  }

  if (!v7)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    openSessions = [*v6 openSessions];
    v12 = [openSessions countByEnumeratingWithState:&v19 objects:v23 count:16];
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
            objc_enumerationMutation(openSessions);
          }

          persistentIdentifier = [*(*(&v19 + 1) + 8 * v15) persistentIdentifier];
          [v10 addObject:persistentIdentifier];

          ++v15;
        }

        while (v13 != v15);
        v13 = [openSessions countByEnumeratingWithState:&v19 objects:v23 count:16];
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
      v27 = identifierCopy;
      v28 = 2112;
      v29 = v18;
      _os_log_impl(&dword_18B49C000, v17, OS_LOG_TYPE_DEFAULT, "%s WindowScene with ID: %@ is nonexist. Existing session identifiers are %@", buf, 0x20u);
    }
  }

  [v7 _setSystemVolumeHUDEnabled:enabledCopy];
}

- (void)setSystemVolumeHUDEnabled:(BOOL)enabled forSceneVolumeHudAssertion:(id)assertion
{
  enabledCopy = enabled;
  v21 = *MEMORY[0x1E69E9840];
  assertionCopy = assertion;
  v7 = _AVLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (enabledCopy)
    {
      v8 = @"Enabling";
    }

    else
    {
      v8 = @"Disabling";
    }

    sceneIdentifier = [assertionCopy sceneIdentifier];
    clientIdentifier = [assertionCopy clientIdentifier];
    v13 = 136315906;
    v14 = "[AVSystemVolumeController setSystemVolumeHUDEnabled:forSceneVolumeHudAssertion:]";
    v15 = 2112;
    v16 = v8;
    v17 = 2112;
    v18 = sceneIdentifier;
    v19 = 2112;
    v20 = clientIdentifier;
    _os_log_impl(&dword_18B49C000, v7, OS_LOG_TYPE_DEFAULT, "%s %@ volume HUD for windowScene with scene ID: %@, unique ID: %@", &v13, 0x2Au);
  }

  if ([*MEMORY[0x1E69DDA98] _appAdoptsUISceneLifecycle])
  {
    sharedInstance = [getMPVolumeHUDControllerClass() sharedInstance];
    [sharedInstance addVolumeDisplay:assertionCopy];

    [assertionCopy setPrefersSystemVolumeHUDHidden:enabledCopy ^ 1];
    sharedInstance2 = [getMPVolumeHUDControllerClass() sharedInstance];
    [sharedInstance2 setNeedsUpdate];
  }

  else
  {
    sharedInstance2 = [assertionCopy sceneIdentifier];
    [(AVSystemVolumeController *)self setSystemVolumeHUDEnabled:enabledCopy forWindowSceneSessionIdentifier:sharedInstance2];
  }
}

- (void)_removeVolumeHUDAssertionsForClientID:(id)d
{
  dCopy = d;
  windowSceneVolumeHUDAssertions = [objc_opt_class() windowSceneVolumeHUDAssertions];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __66__AVSystemVolumeController__removeVolumeHUDAssertionsForClientID___block_invoke;
  v8[3] = &unk_1E72093E8;
  v9 = dCopy;
  v5 = dCopy;
  v6 = [windowSceneVolumeHUDAssertions objectsPassingTest:v8];

  windowSceneVolumeHUDAssertions2 = [objc_opt_class() windowSceneVolumeHUDAssertions];
  [windowSceneVolumeHUDAssertions2 minusSet:v6];
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

- (void)setClientWithIdentifier:(id)identifier forWindowSceneSessionWithIdentifier:(id)withIdentifier
{
  identifierCopy = identifier;
  withIdentifierCopy = withIdentifier;
  objc_storeStrong(&self->_uniqueIdentifier, identifier);
  objc_storeStrong(&self->_windowSceneSessionIdentifier, withIdentifier);
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __88__AVSystemVolumeController_setClientWithIdentifier_forWindowSceneSessionWithIdentifier___block_invoke;
    block[3] = &unk_1E72093C0;
    block[4] = self;
    v10 = identifierCopy;
    v11 = withIdentifierCopy;
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

- (void)setTargetVolume:(float)volume
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

  maximumTargetVolumeSinceChangingVolumeBegan = [(AVSystemVolumeController *)self maximumTargetVolumeSinceChangingVolumeBegan];
  v8 = maximumTargetVolumeSinceChangingVolumeBegan;
  if (maximumTargetVolumeSinceChangingVolumeBegan)
  {
    v9 = maximumTargetVolumeSinceChangingVolumeBegan;
  }

  else
  {
    *&v7 = volume;
    v9 = [MEMORY[0x1E696AD98] numberWithFloat:v7];
  }

  v10 = v9;

  *&v11 = volume;
  v12 = [MEMORY[0x1E696AD98] numberWithFloat:v11];
  [(AVSystemVolumeController *)self setTargetVolumeInternal:v12];

  v13 = MEMORY[0x1E696AD98];
  [v10 floatValue];
  if (*&v14 >= volume)
  {
    [v10 floatValue];
    volume = *&v14;
  }

  *&v14 = volume;
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
  block[4] = self;
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