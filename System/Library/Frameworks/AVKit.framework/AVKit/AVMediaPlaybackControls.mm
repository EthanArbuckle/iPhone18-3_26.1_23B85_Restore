@interface AVMediaPlaybackControls
- (AVMediaPlaybackControls)initWithPlayer:(id)player;
- (AVMediaPlaybackControls)initWithSource:(id)source;
- (AVMediaPlaybackControlsDelegate)delegate;
- (AVMediaSecondaryPlaybackControlConfiguration)backwardSecondaryControlConfiguration;
- (AVMediaSecondaryPlaybackControlConfiguration)forwardSecondaryControlConfiguration;
- (CGSize)intrinsicContentSize;
- (uint64_t)_commonInit;
- (uint64_t)_updateBackwardSecondaryControlIcon;
- (uint64_t)_updateForwardSecondaryControlIcon;
- (void)_startObservations;
- (void)_updatePlayPauseButtonIcon;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)playbackControlsViewBackwardSecondaryControlWasPressed:(id)pressed;
- (void)playbackControlsViewForwardSecondaryControlWasPressed:(id)pressed;
- (void)playbackControlsViewPlayPauseButtonWasPressed:(id)pressed;
- (void)setBackwardSecondaryControlConfiguration:(id)configuration;
- (void)setForwardSecondaryControlConfiguration:(id)configuration;
- (void)setPlayer:(id)player;
- (void)setSource:(id)source;
@end

@implementation AVMediaPlaybackControls

- (AVMediaPlaybackControlsDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)playbackControlsViewForwardSecondaryControlWasPressed:(id)pressed
{
  pressedCopy = pressed;
  v5 = pressedCopy;
  if (self->_player)
  {
    if ([pressedCopy forwardSecondaryControlIcon])
    {
      if ([v5 forwardSecondaryControlIcon] != 2)
      {
        goto LABEL_10;
      }

      playerController = [(AVMediaPlaybackControls *)self playerController];
      [playerController seekToEnd:self];
    }

    else
    {
      playerController = [(AVMediaPlaybackControls *)self playerController];
      [playerController currentTime];
      v8 = v7;
      forwardSecondaryControlConfiguration = self->_forwardSecondaryControlConfiguration;
      if (forwardSecondaryControlConfiguration)
      {
        [(AVMediaSecondaryPlaybackControlConfiguration *)forwardSecondaryControlConfiguration skipInterval];
      }

      else
      {
        memset(&time, 0, sizeof(time));
      }

      [playerController seekToTime:v8 + CMTimeGetSeconds(&time)];
    }
  }

LABEL_10:
  delegate = [(AVMediaPlaybackControls *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    delegate2 = [(AVMediaPlaybackControls *)self delegate];
    [delegate2 mediaPlaybackControlsForwardSecondaryControlPressed:self];
  }
}

- (void)playbackControlsViewBackwardSecondaryControlWasPressed:(id)pressed
{
  pressedCopy = pressed;
  v5 = pressedCopy;
  if (self->_player && ![pressedCopy backwardSecondaryControlIcon])
  {
    playerController = [(AVMediaPlaybackControls *)self playerController];
    [playerController currentTime];
    v8 = v7;
    backwardSecondaryControlConfiguration = self->_backwardSecondaryControlConfiguration;
    if (backwardSecondaryControlConfiguration)
    {
      [(AVMediaSecondaryPlaybackControlConfiguration *)backwardSecondaryControlConfiguration skipInterval];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    [playerController seekToTime:v8 - CMTimeGetSeconds(&time)];
  }

  delegate = [(AVMediaPlaybackControls *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    delegate2 = [(AVMediaPlaybackControls *)self delegate];
    [delegate2 mediaPlaybackControlsBackwardSecondaryControlPressed:self];
  }
}

- (void)playbackControlsViewPlayPauseButtonWasPressed:(id)pressed
{
  pressedCopy = pressed;
  if (self->_player)
  {
    playerController = [(AVMediaPlaybackControls *)self playerController];
    [playerController togglePlayback:self];
  }

  delegate = [(AVMediaPlaybackControls *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(AVMediaPlaybackControls *)self delegate];
    [delegate2 mediaPlaybackControlsPlayPauseButtonPressed:self];
  }
}

- (AVMediaSecondaryPlaybackControlConfiguration)forwardSecondaryControlConfiguration
{
  v2 = [(AVMediaSecondaryPlaybackControlConfiguration *)self->_forwardSecondaryControlConfiguration copy];

  return v2;
}

- (void)setForwardSecondaryControlConfiguration:(id)configuration
{
  if (self->_forwardSecondaryControlConfiguration != configuration)
  {
    v4 = [configuration copy];
    forwardSecondaryControlConfiguration = self->_forwardSecondaryControlConfiguration;
    self->_forwardSecondaryControlConfiguration = v4;

    [(AVMediaPlaybackControls *)self _updateForwardSecondaryControlIcon];
  }
}

- (uint64_t)_updateForwardSecondaryControlIcon
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 424);
    v3 = *(v1 + 456);
    if (v2)
    {
      type = [v2 type];
      if (type == 2)
      {
        v5 = 1;
      }

      else
      {
        v5 = 2 * (type == 3);
      }

      [v3 setForwardSecondaryControlIcon:v5];
      [*(v1 + 456) setForwardSecondaryControlEnabled:{objc_msgSend(*(v1 + 424), "isEnabled")}];
      v6 = *(v1 + 456);
      v7 = *(v1 + 424);
      if (v7)
      {
        [v7 skipInterval];
      }

      else
      {
        memset(v9, 0, sizeof(v9));
      }

      [v6 setForwardSecondaryControlSkipInterval:v9];
      return [*(v1 + 456) setShowsForwardSecondaryPlaybackButton:1];
    }

    else
    {
      v8 = *(v1 + 456);

      return [v8 setShowsForwardSecondaryPlaybackButton:0];
    }
  }

  return result;
}

- (AVMediaSecondaryPlaybackControlConfiguration)backwardSecondaryControlConfiguration
{
  v2 = [(AVMediaSecondaryPlaybackControlConfiguration *)self->_backwardSecondaryControlConfiguration copy];

  return v2;
}

- (void)setBackwardSecondaryControlConfiguration:(id)configuration
{
  if (self->_backwardSecondaryControlConfiguration != configuration)
  {
    v4 = [configuration copy];
    backwardSecondaryControlConfiguration = self->_backwardSecondaryControlConfiguration;
    self->_backwardSecondaryControlConfiguration = v4;

    [(AVMediaPlaybackControls *)self _updateBackwardSecondaryControlIcon];
  }
}

- (uint64_t)_updateBackwardSecondaryControlIcon
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 416);
    v3 = *(v1 + 456);
    if (v2)
    {
      type = [v2 type];
      if (type == 2)
      {
        v5 = 1;
      }

      else
      {
        v5 = 2 * (type == 3);
      }

      [v3 setBackwardSecondaryControlIcon:v5];
      [*(v1 + 456) setBackwardSecondaryControlEnabled:{objc_msgSend(*(v1 + 416), "isEnabled")}];
      v6 = *(v1 + 456);
      v7 = *(v1 + 416);
      if (v7)
      {
        [v7 skipInterval];
      }

      else
      {
        memset(v9, 0, sizeof(v9));
      }

      [v6 setBackwardSecondaryControlSkipInterval:v9];
      return [*(v1 + 456) setShowsBackwardSecondaryPlaybackButton:1];
    }

    else
    {
      v8 = *(v1 + 456);

      return [v8 setShowsBackwardSecondaryPlaybackButton:0];
    }
  }

  return result;
}

- (void)setSource:(id)source
{
  sourceCopy = source;
  if (self->_source != sourceCopy)
  {
    v7 = sourceCopy;
    [(AVObservationController *)self->_observationController stopAllObservation];
    player = self->_player;
    self->_player = 0;

    objc_storeStrong(&self->_source, source);
    [(AVMediaPlaybackControls *)self _startObservations];
    [(AVMediaPlaybackControls *)self _updatePlayPauseButtonIcon];
    sourceCopy = v7;
  }
}

- (void)_startObservations
{
  v6[4] = *MEMORY[0x1E69E9840];
  if (self)
  {
    if (*(self + 432))
    {
      v2 = *(self + 408);
      v6[0] = @"playerController.rate";
      v6[1] = @"playerController.timeControlStatus";
      v6[2] = @"playerController.playbackSuspended";
      v6[3] = @"playerController.suspendedRate";
      v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:4];
      v4 = [v2 startObserving:self keyPaths:v3 observationHandler:&__block_literal_global_4942];
    }

    else if (*(self + 440))
    {
      v5 = [*(self + 408) startObserving:self keyPath:@"source.playing" observationHandler:&__block_literal_global_60];
    }
  }
}

- (void)_updatePlayPauseButtonIcon
{
  if (self)
  {
    if (self[54])
    {
      playerController = [self playerController];
      if ([playerController timeControlStatus])
      {
        v3 = 0;
      }

      else
      {
        [playerController rate];
        v3 = v6 == 0.0;
      }

      if ([playerController avkit_isAVPlayerControllerOrSubclass])
      {
        [playerController suspendedRate];
        v8 = [playerController isPlaybackSuspended] ^ 1 | (v7 == 0.0);
      }

      else
      {
        v8 = 1;
      }

      v5 = v3 & v8;
    }

    else
    {
      v4 = self[55];
      if (v4)
      {
        v5 = [v4 isPlaying] ^ 1;
      }

      else
      {
        v5 = 1;
      }
    }

    playbackControlsView = [self playbackControlsView];
    [playbackControlsView setPlayPauseButtonShowsPlayIcon:v5];
  }
}

- (void)setPlayer:(id)player
{
  playerCopy = player;
  if (self->_player != playerCopy)
  {
    v9 = playerCopy;
    [(AVObservationController *)self->_observationController stopAllObservation];
    source = self->_source;
    self->_source = 0;

    objc_storeStrong(&self->_player, player);
    v7 = [[AVPlayerController alloc] initWithPlayer:v9];
    playerController = self->_playerController;
    self->_playerController = v7;

    [(AVMediaPlaybackControls *)self _startObservations];
    [(AVMediaPlaybackControls *)self _updatePlayPauseButtonIcon];
    playerCopy = v9;
  }
}

- (CGSize)intrinsicContentSize
{
  [(AVMobileChromelessPlaybackControlsView *)self->_playbackControlsView intrinsicContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = AVMediaPlaybackControls;
  [(AVMediaPlaybackControls *)&v4 layoutSubviews];
  playbackControlsView = [(AVMediaPlaybackControls *)self playbackControlsView];
  [(AVMediaPlaybackControls *)self bounds];
  [playbackControlsView setFrame:?];
}

- (void)didMoveToWindow
{
  v12.receiver = self;
  v12.super_class = AVMediaPlaybackControls;
  [(AVMediaPlaybackControls *)&v12 didMoveToWindow];
  window = [(AVMediaPlaybackControls *)self window];

  if (window)
  {
    if (self)
    {
      if (!self->_observationController)
      {
        v4 = [[AVObservationController alloc] initWithOwner:self];
        observationController = self->_observationController;
        self->_observationController = v4;
      }

      [(AVMediaPlaybackControls *)self _startObservations];
      if (!self->_playbackControlsView)
      {
        avkit_mainScreen = [MEMORY[0x1E69DCEB0] avkit_mainScreen];
        traitCollection = [avkit_mainScreen traitCollection];

        v8 = [[AVMobileChromelessControlsStyleSheet alloc] initWithTraitCollection:traitCollection];
        v9 = [[AVMobileChromelessPlaybackControlsView alloc] initWithStyleSheet:v8];
        [(AVMobileChromelessPlaybackControlsView *)v9 setAutoresizingMask:0];
        [(AVMobileChromelessPlaybackControlsView *)v9 setDelegate:self];
        [(AVMobileChromelessPlaybackControlsView *)v9 setShowsPlayPauseButton:1];
        backwardSecondaryControlConfiguration = self->_backwardSecondaryControlConfiguration;
        if (backwardSecondaryControlConfiguration)
        {
          [(AVMediaSecondaryPlaybackControlConfiguration *)backwardSecondaryControlConfiguration skipInterval];
        }

        else
        {
          v13 = 0;
          v14 = 0;
          v15 = 0;
        }

        [(AVMobileChromelessPlaybackControlsView *)v9 setBackwardSecondaryControlSkipInterval:&v13];
        forwardSecondaryControlConfiguration = self->_forwardSecondaryControlConfiguration;
        if (forwardSecondaryControlConfiguration)
        {
          [(AVMediaSecondaryPlaybackControlConfiguration *)forwardSecondaryControlConfiguration skipInterval];
        }

        else
        {
          v13 = 0;
          v14 = 0;
          v15 = 0;
        }

        [(AVMobileChromelessPlaybackControlsView *)v9 setForwardSecondaryControlSkipInterval:&v13];
        [(AVMediaPlaybackControls *)self setPlaybackControlsView:v9];
        [(AVMediaPlaybackControls *)self addSubview:self->_playbackControlsView];
      }
    }

    else
    {
      [(AVMediaPlaybackControls *)0 _startObservations];
    }

    [(AVMediaPlaybackControls *)self _updatePlayPauseButtonIcon];
    [(AVMediaPlaybackControls *)self _updateBackwardSecondaryControlIcon];
    [(AVMediaPlaybackControls *)self _updateForwardSecondaryControlIcon];
  }

  else if (self)
  {
    [(AVObservationController *)self->_observationController stopAllObservation];
  }
}

- (void)dealloc
{
  if (self)
  {
    [(AVObservationController *)self->_observationController stopAllObservation];
  }

  observationController = self->_observationController;
  self->_observationController = 0;

  playerController = self->_playerController;
  self->_playerController = 0;

  v5.receiver = self;
  v5.super_class = AVMediaPlaybackControls;
  [(AVMediaPlaybackControls *)&v5 dealloc];
}

- (AVMediaPlaybackControls)initWithSource:(id)source
{
  sourceCopy = source;
  v9.receiver = self;
  v9.super_class = AVMediaPlaybackControls;
  v6 = [(AVMediaPlaybackControls *)&v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_source, source);
    [(AVMediaPlaybackControls *)v7 _commonInit];
  }

  return v7;
}

- (uint64_t)_commonInit
{
  v2 = objc_alloc_init(AVMediaSecondaryPlaybackControlConfiguration);
  v3 = *(self + 416);
  *(self + 416) = v2;

  v4 = objc_alloc_init(AVMediaSecondaryPlaybackControlConfiguration);
  v5 = *(self + 424);
  *(self + 424) = v4;

  return MEMORY[0x1EEE66BB8](v4, v5);
}

- (AVMediaPlaybackControls)initWithPlayer:(id)player
{
  playerCopy = player;
  v11.receiver = self;
  v11.super_class = AVMediaPlaybackControls;
  v6 = [(AVMediaPlaybackControls *)&v11 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_player, player);
    v8 = [[AVPlayerController alloc] initWithPlayer:playerCopy];
    playerController = v7->_playerController;
    v7->_playerController = v8;

    [(AVMediaPlaybackControls *)v7 _commonInit];
  }

  return v7;
}

@end