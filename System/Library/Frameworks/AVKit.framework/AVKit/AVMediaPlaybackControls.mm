@interface AVMediaPlaybackControls
- (AVMediaPlaybackControls)initWithPlayer:(id)a3;
- (AVMediaPlaybackControls)initWithSource:(id)a3;
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
- (void)playbackControlsViewBackwardSecondaryControlWasPressed:(id)a3;
- (void)playbackControlsViewForwardSecondaryControlWasPressed:(id)a3;
- (void)playbackControlsViewPlayPauseButtonWasPressed:(id)a3;
- (void)setBackwardSecondaryControlConfiguration:(id)a3;
- (void)setForwardSecondaryControlConfiguration:(id)a3;
- (void)setPlayer:(id)a3;
- (void)setSource:(id)a3;
@end

@implementation AVMediaPlaybackControls

- (AVMediaPlaybackControlsDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)playbackControlsViewForwardSecondaryControlWasPressed:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_player)
  {
    if ([v4 forwardSecondaryControlIcon])
    {
      if ([v5 forwardSecondaryControlIcon] != 2)
      {
        goto LABEL_10;
      }

      v6 = [(AVMediaPlaybackControls *)self playerController];
      [v6 seekToEnd:self];
    }

    else
    {
      v6 = [(AVMediaPlaybackControls *)self playerController];
      [v6 currentTime];
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

      [v6 seekToTime:v8 + CMTimeGetSeconds(&time)];
    }
  }

LABEL_10:
  v10 = [(AVMediaPlaybackControls *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [(AVMediaPlaybackControls *)self delegate];
    [v12 mediaPlaybackControlsForwardSecondaryControlPressed:self];
  }
}

- (void)playbackControlsViewBackwardSecondaryControlWasPressed:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_player && ![v4 backwardSecondaryControlIcon])
  {
    v6 = [(AVMediaPlaybackControls *)self playerController];
    [v6 currentTime];
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

    [v6 seekToTime:v8 - CMTimeGetSeconds(&time)];
  }

  v10 = [(AVMediaPlaybackControls *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [(AVMediaPlaybackControls *)self delegate];
    [v12 mediaPlaybackControlsBackwardSecondaryControlPressed:self];
  }
}

- (void)playbackControlsViewPlayPauseButtonWasPressed:(id)a3
{
  v8 = a3;
  if (self->_player)
  {
    v4 = [(AVMediaPlaybackControls *)self playerController];
    [v4 togglePlayback:self];
  }

  v5 = [(AVMediaPlaybackControls *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(AVMediaPlaybackControls *)self delegate];
    [v7 mediaPlaybackControlsPlayPauseButtonPressed:self];
  }
}

- (AVMediaSecondaryPlaybackControlConfiguration)forwardSecondaryControlConfiguration
{
  v2 = [(AVMediaSecondaryPlaybackControlConfiguration *)self->_forwardSecondaryControlConfiguration copy];

  return v2;
}

- (void)setForwardSecondaryControlConfiguration:(id)a3
{
  if (self->_forwardSecondaryControlConfiguration != a3)
  {
    v4 = [a3 copy];
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
      v4 = [v2 type];
      if (v4 == 2)
      {
        v5 = 1;
      }

      else
      {
        v5 = 2 * (v4 == 3);
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

- (void)setBackwardSecondaryControlConfiguration:(id)a3
{
  if (self->_backwardSecondaryControlConfiguration != a3)
  {
    v4 = [a3 copy];
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
      v4 = [v2 type];
      if (v4 == 2)
      {
        v5 = 1;
      }

      else
      {
        v5 = 2 * (v4 == 3);
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

- (void)setSource:(id)a3
{
  v5 = a3;
  if (self->_source != v5)
  {
    v7 = v5;
    [(AVObservationController *)self->_observationController stopAllObservation];
    player = self->_player;
    self->_player = 0;

    objc_storeStrong(&self->_source, a3);
    [(AVMediaPlaybackControls *)self _startObservations];
    [(AVMediaPlaybackControls *)self _updatePlayPauseButtonIcon];
    v5 = v7;
  }
}

- (void)_startObservations
{
  v6[4] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (*(a1 + 432))
    {
      v2 = *(a1 + 408);
      v6[0] = @"playerController.rate";
      v6[1] = @"playerController.timeControlStatus";
      v6[2] = @"playerController.playbackSuspended";
      v6[3] = @"playerController.suspendedRate";
      v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:4];
      v4 = [v2 startObserving:a1 keyPaths:v3 observationHandler:&__block_literal_global_4942];
    }

    else if (*(a1 + 440))
    {
      v5 = [*(a1 + 408) startObserving:a1 keyPath:@"source.playing" observationHandler:&__block_literal_global_60];
    }
  }
}

- (void)_updatePlayPauseButtonIcon
{
  if (a1)
  {
    if (a1[54])
    {
      v2 = [a1 playerController];
      if ([v2 timeControlStatus])
      {
        v3 = 0;
      }

      else
      {
        [v2 rate];
        v3 = v6 == 0.0;
      }

      if ([v2 avkit_isAVPlayerControllerOrSubclass])
      {
        [v2 suspendedRate];
        v8 = [v2 isPlaybackSuspended] ^ 1 | (v7 == 0.0);
      }

      else
      {
        v8 = 1;
      }

      v5 = v3 & v8;
    }

    else
    {
      v4 = a1[55];
      if (v4)
      {
        v5 = [v4 isPlaying] ^ 1;
      }

      else
      {
        v5 = 1;
      }
    }

    v9 = [a1 playbackControlsView];
    [v9 setPlayPauseButtonShowsPlayIcon:v5];
  }
}

- (void)setPlayer:(id)a3
{
  v5 = a3;
  if (self->_player != v5)
  {
    v9 = v5;
    [(AVObservationController *)self->_observationController stopAllObservation];
    source = self->_source;
    self->_source = 0;

    objc_storeStrong(&self->_player, a3);
    v7 = [[AVPlayerController alloc] initWithPlayer:v9];
    playerController = self->_playerController;
    self->_playerController = v7;

    [(AVMediaPlaybackControls *)self _startObservations];
    [(AVMediaPlaybackControls *)self _updatePlayPauseButtonIcon];
    v5 = v9;
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
  v3 = [(AVMediaPlaybackControls *)self playbackControlsView];
  [(AVMediaPlaybackControls *)self bounds];
  [v3 setFrame:?];
}

- (void)didMoveToWindow
{
  v12.receiver = self;
  v12.super_class = AVMediaPlaybackControls;
  [(AVMediaPlaybackControls *)&v12 didMoveToWindow];
  v3 = [(AVMediaPlaybackControls *)self window];

  if (v3)
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
        v6 = [MEMORY[0x1E69DCEB0] avkit_mainScreen];
        v7 = [v6 traitCollection];

        v8 = [[AVMobileChromelessControlsStyleSheet alloc] initWithTraitCollection:v7];
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

- (AVMediaPlaybackControls)initWithSource:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AVMediaPlaybackControls;
  v6 = [(AVMediaPlaybackControls *)&v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_source, a3);
    [(AVMediaPlaybackControls *)v7 _commonInit];
  }

  return v7;
}

- (uint64_t)_commonInit
{
  v2 = objc_alloc_init(AVMediaSecondaryPlaybackControlConfiguration);
  v3 = *(a1 + 416);
  *(a1 + 416) = v2;

  v4 = objc_alloc_init(AVMediaSecondaryPlaybackControlConfiguration);
  v5 = *(a1 + 424);
  *(a1 + 424) = v4;

  return MEMORY[0x1EEE66BB8](v4, v5);
}

- (AVMediaPlaybackControls)initWithPlayer:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = AVMediaPlaybackControls;
  v6 = [(AVMediaPlaybackControls *)&v11 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_player, a3);
    v8 = [[AVPlayerController alloc] initWithPlayer:v5];
    playerController = v7->_playerController;
    v7->_playerController = v8;

    [(AVMediaPlaybackControls *)v7 _commonInit];
  }

  return v7;
}

@end