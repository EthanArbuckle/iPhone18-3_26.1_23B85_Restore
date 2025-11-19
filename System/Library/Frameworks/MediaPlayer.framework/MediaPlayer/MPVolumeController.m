@interface MPVolumeController
+ (id)descriptionForWarningState:(int64_t)a3;
- (MPVolumeController)init;
- (MPVolumeController)initWithDataSource:(id)a3;
- (MPVolumeControllerDelegate)delegate;
- (void)beginDecreasingRelativeVolume;
- (void)beginIncreasingRelativeVolume;
- (void)decreaseVolume;
- (void)endDecreasingRelativeVolume;
- (void)endIncreasingRelativeVolume;
- (void)increaseVolume;
- (void)setDataSource:(id)a3;
- (void)setVolume:(float)a3 withNotificationDelay:(float)a4;
- (void)setVolumeAudioCategory:(id)a3;
- (void)volumeControllerDataSource:(id)a3 didChangeMuted:(BOOL)a4;
- (void)volumeControllerDataSource:(id)a3 didChangeVolume:(float)a4 silenceVolumeHUD:(BOOL)a5;
- (void)volumeControllerDataSource:(id)a3 didChangeVolumeAudioCategory:(id)a4;
- (void)volumeControllerDataSource:(id)a3 didChangeVolumeCapabilities:(unsigned int)a4;
- (void)volumeControllerDataSource:(id)a3 didChangeVolumeControlAvailability:(BOOL)a4;
- (void)volumeControllerDataSource:(id)a3 didChangeVolumeLabel:(id)a4;
@end

@implementation MPVolumeController

- (MPVolumeControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setVolumeAudioCategory:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MPVolumeControllerDataSource *)self->_dataSource setVolumeAudioCategory:v4];
  }
}

- (void)volumeControllerDataSource:(id)a3 didChangeVolumeAudioCategory:(id)a4
{
  v4 = [MPVolumeHUDController sharedInstance:a3];
  [v4 setNeedsUpdate];
}

- (void)volumeControllerDataSource:(id)a3 didChangeVolumeLabel:(id)a4
{
  v6 = a4;
  v5 = [(MPVolumeController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 volumeController:self volumeControlLabelDidChange:v6];
  }
}

- (void)volumeControllerDataSource:(id)a3 didChangeVolumeCapabilities:(unsigned int)a4
{
  v4 = *&a4;
  v14 = *MEMORY[0x1E69E9840];
  v6 = os_log_create("com.apple.amp.mediaplayer", "Volume");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = MRMediaRemotePickedRouteVolumeControlCapabilitiesCopyDescription();
    v10 = 138412546;
    v11 = v7;
    v12 = 2114;
    v13 = v8;
    _os_log_impl(&dword_1A238D000, v6, OS_LOG_TYPE_DEFAULT, "%@ volumeControlCapabilitiesDidChange capabilities:%{public}@", &v10, 0x16u);
  }

  v9 = [(MPVolumeController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v9 volumeController:self volumeControlCapabilitiesDidChange:v4];
  }
}

- (void)volumeControllerDataSource:(id)a3 didChangeVolumeControlAvailability:(BOOL)a4
{
  v4 = a4;
  v12 = *MEMORY[0x1E69E9840];
  v6 = os_log_create("com.apple.amp.mediaplayer", "Volume");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = objc_opt_class();
    v10 = 1024;
    v11 = v4;
    _os_log_impl(&dword_1A238D000, v6, OS_LOG_TYPE_DEFAULT, "%@ volumeControlAvailableDidChange available: %{BOOL}u", &v8, 0x12u);
  }

  v7 = [(MPVolumeController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v7 volumeController:self volumeControlAvailableDidChange:v4];
  }
}

- (void)volumeControllerDataSource:(id)a3 didChangeVolume:(float)a4 silenceVolumeHUD:(BOOL)a5
{
  v5 = a5;
  v8 = [(MPVolumeController *)self delegate];
  v10 = v8;
  if (!self->_volumeChangeCoalescingCount)
  {
    v13 = v8;
    if (objc_opt_respondsToSelector())
    {
      *&v11 = a4;
      v8 = [v13 volumeController:self volumeValueDidChange:v5 silenceVolumeHUD:v11];
    }

    else
    {
      v8 = objc_opt_respondsToSelector();
      v10 = v13;
      if ((v8 & 1) == 0)
      {
        goto LABEL_7;
      }

      *&v12 = a4;
      v8 = [v13 volumeController:self volumeValueDidChange:v12];
    }

    v10 = v13;
  }

LABEL_7:

  MEMORY[0x1EEE66BE0](v8, v9, v10);
}

- (void)volumeControllerDataSource:(id)a3 didChangeMuted:(BOOL)a4
{
  v4 = a4;
  v6 = [(MPVolumeController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v6 volumeController:self mutedStateDidChange:v4];
  }
}

- (void)setDataSource:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"MPVolumeController.m" lineNumber:190 description:{@"Invalid parameter not satisfying: %@", @"dataSource"}];

    v6 = 0;
  }

  if (self->_dataSource != v6)
  {
    v8 = v6;
    objc_storeStrong(&self->_dataSource, a3);
    [(MPVolumeControllerDataSource *)self->_dataSource setDelegate:self];
    [(MPVolumeControllerDataSource *)self->_dataSource initializeVolume];
    v6 = v8;
  }
}

- (void)decreaseVolume
{
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    [(MPVolumeControllerDataSource *)self->_dataSource beginDecreasingRelativeVolume];
    dataSource = self->_dataSource;

    [(MPVolumeControllerDataSource *)dataSource endDecreasingRelativeVolume];
  }
}

- (void)increaseVolume
{
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    [(MPVolumeControllerDataSource *)self->_dataSource beginIncreasingRelativeVolume];
    dataSource = self->_dataSource;

    [(MPVolumeControllerDataSource *)dataSource endIncreasingRelativeVolume];
  }
}

- (void)endDecreasingRelativeVolume
{
  if (objc_opt_respondsToSelector())
  {
    dataSource = self->_dataSource;

    [(MPVolumeControllerDataSource *)dataSource endDecreasingRelativeVolume];
  }
}

- (void)beginDecreasingRelativeVolume
{
  if (objc_opt_respondsToSelector())
  {
    dataSource = self->_dataSource;

    [(MPVolumeControllerDataSource *)dataSource beginDecreasingRelativeVolume];
  }
}

- (void)endIncreasingRelativeVolume
{
  if (objc_opt_respondsToSelector())
  {
    dataSource = self->_dataSource;

    [(MPVolumeControllerDataSource *)dataSource endIncreasingRelativeVolume];
  }
}

- (void)beginIncreasingRelativeVolume
{
  if (objc_opt_respondsToSelector())
  {
    dataSource = self->_dataSource;

    [(MPVolumeControllerDataSource *)dataSource beginIncreasingRelativeVolume];
  }
}

- (void)setVolume:(float)a3 withNotificationDelay:(float)a4
{
  if ([(MPVolumeController *)self isVolumeControlAvailable])
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __54__MPVolumeController_setVolume_withNotificationDelay___block_invoke;
    v7[3] = &unk_1E7682398;
    v7[4] = self;
    v8 = a4;
    v9 = a3;
    dispatch_async(MEMORY[0x1E69E96A0], v7);
  }
}

uint64_t __54__MPVolumeController_setVolume_withNotificationDelay___block_invoke(uint64_t a1)
{
  ++*(*(a1 + 32) + 8);
  v2 = dispatch_time(0, (*(a1 + 40) * 1000000000.0));
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__MPVolumeController_setVolume_withNotificationDelay___block_invoke_2;
  block[3] = &unk_1E7682518;
  block[4] = *(a1 + 32);
  dispatch_after(v2, MEMORY[0x1E69E96A0], block);
  LODWORD(v3) = *(a1 + 44);
  return [*(*(a1 + 32) + 24) setVolume:v3];
}

void __54__MPVolumeController_setVolume_withNotificationDelay___block_invoke_2(uint64_t a1)
{
  --*(*(a1 + 32) + 8);
  v2 = *(a1 + 32);
  if (!v2[2])
  {
    v4 = [v2 delegate];
    if (objc_opt_respondsToSelector())
    {
      v3 = *(a1 + 32);
      [*(v3 + 24) volume];
      [v4 volumeController:v3 volumeValueDidChange:?];
    }
  }
}

- (MPVolumeController)initWithDataSource:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MPVolumeController;
  v5 = [(MPVolumeController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(MPVolumeController *)v5 setDataSource:v4];
  }

  return v6;
}

- (MPVolumeController)init
{
  v3 = objc_alloc_init(MPVolumeControllerSystemDataSource);
  v4 = [(MPVolumeController *)self initWithDataSource:v3];

  return v4;
}

+ (id)descriptionForWarningState:(int64_t)a3
{
  if (a3 > 4)
  {
    return 0;
  }

  else
  {
    return off_1E7676E48[a3];
  }
}

@end