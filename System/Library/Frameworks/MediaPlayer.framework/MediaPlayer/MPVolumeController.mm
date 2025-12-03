@interface MPVolumeController
+ (id)descriptionForWarningState:(int64_t)state;
- (MPVolumeController)init;
- (MPVolumeController)initWithDataSource:(id)source;
- (MPVolumeControllerDelegate)delegate;
- (void)beginDecreasingRelativeVolume;
- (void)beginIncreasingRelativeVolume;
- (void)decreaseVolume;
- (void)endDecreasingRelativeVolume;
- (void)endIncreasingRelativeVolume;
- (void)increaseVolume;
- (void)setDataSource:(id)source;
- (void)setVolume:(float)volume withNotificationDelay:(float)delay;
- (void)setVolumeAudioCategory:(id)category;
- (void)volumeControllerDataSource:(id)source didChangeMuted:(BOOL)muted;
- (void)volumeControllerDataSource:(id)source didChangeVolume:(float)volume silenceVolumeHUD:(BOOL)d;
- (void)volumeControllerDataSource:(id)source didChangeVolumeAudioCategory:(id)category;
- (void)volumeControllerDataSource:(id)source didChangeVolumeCapabilities:(unsigned int)capabilities;
- (void)volumeControllerDataSource:(id)source didChangeVolumeControlAvailability:(BOOL)availability;
- (void)volumeControllerDataSource:(id)source didChangeVolumeLabel:(id)label;
@end

@implementation MPVolumeController

- (MPVolumeControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setVolumeAudioCategory:(id)category
{
  categoryCopy = category;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MPVolumeControllerDataSource *)self->_dataSource setVolumeAudioCategory:categoryCopy];
  }
}

- (void)volumeControllerDataSource:(id)source didChangeVolumeAudioCategory:(id)category
{
  v4 = [MPVolumeHUDController sharedInstance:source];
  [v4 setNeedsUpdate];
}

- (void)volumeControllerDataSource:(id)source didChangeVolumeLabel:(id)label
{
  labelCopy = label;
  delegate = [(MPVolumeController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate volumeController:self volumeControlLabelDidChange:labelCopy];
  }
}

- (void)volumeControllerDataSource:(id)source didChangeVolumeCapabilities:(unsigned int)capabilities
{
  v4 = *&capabilities;
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

  delegate = [(MPVolumeController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate volumeController:self volumeControlCapabilitiesDidChange:v4];
  }
}

- (void)volumeControllerDataSource:(id)source didChangeVolumeControlAvailability:(BOOL)availability
{
  availabilityCopy = availability;
  v12 = *MEMORY[0x1E69E9840];
  v6 = os_log_create("com.apple.amp.mediaplayer", "Volume");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = objc_opt_class();
    v10 = 1024;
    v11 = availabilityCopy;
    _os_log_impl(&dword_1A238D000, v6, OS_LOG_TYPE_DEFAULT, "%@ volumeControlAvailableDidChange available: %{BOOL}u", &v8, 0x12u);
  }

  delegate = [(MPVolumeController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate volumeController:self volumeControlAvailableDidChange:availabilityCopy];
  }
}

- (void)volumeControllerDataSource:(id)source didChangeVolume:(float)volume silenceVolumeHUD:(BOOL)d
{
  dCopy = d;
  delegate = [(MPVolumeController *)self delegate];
  v10 = delegate;
  if (!self->_volumeChangeCoalescingCount)
  {
    v13 = delegate;
    if (objc_opt_respondsToSelector())
    {
      *&v11 = volume;
      delegate = [v13 volumeController:self volumeValueDidChange:dCopy silenceVolumeHUD:v11];
    }

    else
    {
      delegate = objc_opt_respondsToSelector();
      v10 = v13;
      if ((delegate & 1) == 0)
      {
        goto LABEL_7;
      }

      *&v12 = volume;
      delegate = [v13 volumeController:self volumeValueDidChange:v12];
    }

    v10 = v13;
  }

LABEL_7:

  MEMORY[0x1EEE66BE0](delegate, v9, v10);
}

- (void)volumeControllerDataSource:(id)source didChangeMuted:(BOOL)muted
{
  mutedCopy = muted;
  delegate = [(MPVolumeController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate volumeController:self mutedStateDidChange:mutedCopy];
  }
}

- (void)setDataSource:(id)source
{
  sourceCopy = source;
  if (!sourceCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPVolumeController.m" lineNumber:190 description:{@"Invalid parameter not satisfying: %@", @"dataSource"}];

    sourceCopy = 0;
  }

  if (self->_dataSource != sourceCopy)
  {
    v8 = sourceCopy;
    objc_storeStrong(&self->_dataSource, source);
    [(MPVolumeControllerDataSource *)self->_dataSource setDelegate:self];
    [(MPVolumeControllerDataSource *)self->_dataSource initializeVolume];
    sourceCopy = v8;
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

- (void)setVolume:(float)volume withNotificationDelay:(float)delay
{
  if ([(MPVolumeController *)self isVolumeControlAvailable])
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __54__MPVolumeController_setVolume_withNotificationDelay___block_invoke;
    v7[3] = &unk_1E7682398;
    v7[4] = self;
    delayCopy = delay;
    volumeCopy = volume;
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

- (MPVolumeController)initWithDataSource:(id)source
{
  sourceCopy = source;
  v8.receiver = self;
  v8.super_class = MPVolumeController;
  v5 = [(MPVolumeController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(MPVolumeController *)v5 setDataSource:sourceCopy];
  }

  return v6;
}

- (MPVolumeController)init
{
  v3 = objc_alloc_init(MPVolumeControllerSystemDataSource);
  v4 = [(MPVolumeController *)self initWithDataSource:v3];

  return v4;
}

+ (id)descriptionForWarningState:(int64_t)state
{
  if (state > 4)
  {
    return 0;
  }

  else
  {
    return off_1E7676E48[state];
  }
}

@end