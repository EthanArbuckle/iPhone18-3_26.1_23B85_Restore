@interface MPVolumeHardwareButtonController
+ (MPVolumeHardwareButtonController)sharedController;
- (double)_calculateButtonRepeatDelay;
- (id)_init;
- (void)_applicationDidBecomeActiveNotification;
- (void)_applicationWillResignActiveNotification;
- (void)_changeVolumeBy:(double)a3;
- (void)_commitVolumeChange;
- (void)_registerForButtonNotificationsIfNeeded;
- (void)_unregisterForButtonNotificationsIfNeeded;
- (void)cancelVolumeEvent;
- (void)decreaseVolume;
- (void)handleVolumeButtonWithType:(int64_t)a3 down:(BOOL)a4;
- (void)handleVolumeDownButton;
- (void)handleVolumeUpButton;
- (void)increaseVolume;
- (void)setActiveDataSource:(id)a3;
@end

@implementation MPVolumeHardwareButtonController

+ (MPVolumeHardwareButtonController)sharedController
{
  if (sharedController_onceToken_7819 != -1)
  {
    dispatch_once(&sharedController_onceToken_7819, &__block_literal_global_7820);
  }

  v3 = sharedController_controller;

  return v3;
}

void __52__MPVolumeHardwareButtonController_sharedController__block_invoke()
{
  v0 = [[MPVolumeHardwareButtonController alloc] _init];
  v1 = sharedController_controller;
  sharedController_controller = v0;
}

- (id)_init
{
  v5.receiver = self;
  v5.super_class = MPVolumeHardwareButtonController;
  v2 = [(MPVolumeHardwareButtonController *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 addObserver:v2 selector:sel__applicationDidBecomeActiveNotification name:*MEMORY[0x1E69DDAB0] object:0];
    [v3 addObserver:v2 selector:sel__applicationWillResignActiveNotification name:*MEMORY[0x1E69DDBC8] object:0];
  }

  return v2;
}

- (void)cancelVolumeEvent
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel_increaseVolume object:0];
  v3 = MEMORY[0x1E69E58C0];

  [v3 cancelPreviousPerformRequestsWithTarget:self selector:sel_decreaseVolume object:0];
}

- (void)_registerForButtonNotificationsIfNeeded
{
  if (!self->_didRegisterForButtonNotifications)
  {
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 addObserver:self selector:sel__volumeUpButtonTouchDown_ name:*MEMORY[0x1E69DE868] object:0];
    [v5 addObserver:self selector:sel__volumeUpButtonTouchUp_ name:*MEMORY[0x1E69DE870] object:0];
    [v5 addObserver:self selector:sel__volumeDownButtonTouchDown_ name:*MEMORY[0x1E69DE858] object:0];
    [v5 addObserver:self selector:sel__volumeDownButtonTouchUp_ name:*MEMORY[0x1E69DE860] object:0];
    v4 = MPUIApplication();
    [v4 setWantsVolumeButtonEvents:1];

    self->_didRegisterForButtonNotifications = 1;
  }
}

- (void)_applicationDidBecomeActiveNotification
{
  activeDataSource = self->_activeDataSource;
  if (activeDataSource && [(MPVolumeControllerDataSource *)activeDataSource applicationShouldOverrideHardwareVolumeBehavior])
  {

    [(MPVolumeHardwareButtonController *)self _registerForButtonNotificationsIfNeeded];
  }

  else
  {

    [(MPVolumeHardwareButtonController *)self _unregisterForButtonNotificationsIfNeeded];
  }
}

- (void)_applicationWillResignActiveNotification
{
  [(MPVolumeHardwareButtonController *)self _unregisterForButtonNotificationsIfNeeded];

  [(MPVolumeHardwareButtonController *)self cancelVolumeEvent];
}

- (void)_unregisterForButtonNotificationsIfNeeded
{
  if (self->_didRegisterForButtonNotifications)
  {
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 removeObserver:self name:*MEMORY[0x1E69DE868] object:0];
    [v5 removeObserver:self name:*MEMORY[0x1E69DE870] object:0];
    [v5 removeObserver:self name:*MEMORY[0x1E69DE858] object:0];
    [v5 removeObserver:self name:*MEMORY[0x1E69DE860] object:0];
    v4 = MPUIApplication();
    [v4 setWantsVolumeButtonEvents:0];

    self->_didRegisterForButtonNotifications = 0;
  }
}

- (void)handleVolumeUpButton
{
  [(MPVolumeControllerDataSource *)self->_activeDataSource volume];
  self->_pendingVolumeChange = v3;
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel_decreaseVolume object:0];
  self->_debounceVolumeRepeat = 1;

  [(MPVolumeHardwareButtonController *)self increaseVolume];
}

- (void)handleVolumeDownButton
{
  [(MPVolumeControllerDataSource *)self->_activeDataSource volume];
  self->_pendingVolumeChange = v3;
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel_increaseVolume object:0];
  self->_debounceVolumeRepeat = 1;

  [(MPVolumeHardwareButtonController *)self decreaseVolume];
}

- (void)handleVolumeButtonWithType:(int64_t)a3 down:(BOOL)a4
{
  v4 = a4;
  v14 = *MEMORY[0x1E69E9840];
  v7 = os_log_create("com.apple.amp.mediaplayer", "Volume");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"unknown";
    if (a3 == 102)
    {
      v8 = @"VOL+";
    }

    if (a3 == 103)
    {
      v8 = @"VOL-";
    }

    v9 = v8;
    v10 = 138543618;
    v11 = v9;
    v12 = 1024;
    v13 = v4;
    _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_DEFAULT, "[HardwareButtonController] Received hardware volume event: %{public}@, pressed: %{BOOL}u", &v10, 0x12u);
  }

  if (a3 == 102)
  {
    if (v4)
    {
      [(MPVolumeHardwareButtonController *)self handleVolumeUpButton];
      return;
    }
  }

  else
  {
    if (a3 != 103)
    {
      return;
    }

    if (v4)
    {
      [(MPVolumeHardwareButtonController *)self handleVolumeDownButton];
      return;
    }
  }

  [(MPVolumeHardwareButtonController *)self cancelVolumeEvent];
}

- (void)decreaseVolume
{
  v6[1] = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel_decreaseVolume object:0];
  [(MPVolumeHardwareButtonController *)self _changeVolumeBy:-0.0625];
  [(MPVolumeHardwareButtonController *)self _calculateButtonRepeatDelay];
  v4 = v3;
  v6[0] = *MEMORY[0x1E695DA28];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  [(MPVolumeHardwareButtonController *)self performSelector:sel_decreaseVolume withObject:0 afterDelay:v5 inModes:v4];

  self->_debounceVolumeRepeat = 0;
}

- (void)increaseVolume
{
  v6[1] = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel_increaseVolume object:0];
  [(MPVolumeHardwareButtonController *)self _changeVolumeBy:0.0625];
  [(MPVolumeHardwareButtonController *)self _calculateButtonRepeatDelay];
  v4 = v3;
  v6[0] = *MEMORY[0x1E695DA28];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  [(MPVolumeHardwareButtonController *)self performSelector:sel_increaseVolume withObject:0 afterDelay:v5 inModes:v4];

  self->_debounceVolumeRepeat = 0;
}

- (double)_calculateButtonRepeatDelay
{
  result = 0.1;
  if (self->_debounceVolumeRepeat)
  {
    return 0.6;
  }

  return result;
}

- (void)_commitVolumeChange
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.amp.mediaplayer", "Volume");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    pendingVolumeChange = self->_pendingVolumeChange;
    v6 = 134217984;
    v7 = pendingVolumeChange;
    _os_log_impl(&dword_1A238D000, v3, OS_LOG_TYPE_DEFAULT, "[HardwareButtonController] Committing volume change to: %f", &v6, 0xCu);
  }

  v5 = self->_pendingVolumeChange;
  *&v5 = v5;
  [(MPVolumeControllerDataSource *)self->_activeDataSource setVolume:v5];
  [(MPVolumeHardwareButtonController *)self cancelVolumeEvent];
}

- (void)_changeVolumeBy:(double)a3
{
  v3 = -a3;
  if (a3 >= 0.0)
  {
    v3 = a3;
  }

  if (v3 > 0.00000011920929)
  {
    v4 = self->_pendingVolumeChange + a3;
    if (v4 < 0.0)
    {
      v4 = 0.0;
    }

    self->_pendingVolumeChange = fmin(v4, 1.0);
    [(MPVolumeHardwareButtonController *)self _commitVolumeChange];
  }
}

- (void)setActiveDataSource:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  p_activeDataSource = &self->_activeDataSource;
  if (self->_activeDataSource != v5)
  {
    objc_storeStrong(&self->_activeDataSource, a3);
    v7 = os_log_create("com.apple.amp.mediaplayer", "Volume");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v11 = v5;
      _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_DEFAULT, "[HardwareButtonController] Volume dataSource changed to: %{public}@", buf, 0xCu);
    }

    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      [(MPVolumeHardwareButtonController *)self cancelVolumeEvent];
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __56__MPVolumeHardwareButtonController_setActiveDataSource___block_invoke;
      block[3] = &unk_1E7682518;
      block[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }

    if (*p_activeDataSource && [*p_activeDataSource applicationShouldOverrideHardwareVolumeBehavior])
    {
      [(MPVolumeHardwareButtonController *)self _registerForButtonNotificationsIfNeeded];
    }

    else
    {
      [(MPVolumeHardwareButtonController *)self _unregisterForButtonNotificationsIfNeeded];
    }

    [(MPVolumeControllerDataSource *)self->_activeDataSource reload];
    [(MPVolumeControllerDataSource *)self->_activeDataSource volume];
    self->_pendingVolumeChange = v8;
  }
}

@end