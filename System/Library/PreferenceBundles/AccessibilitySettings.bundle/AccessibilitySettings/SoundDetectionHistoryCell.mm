@interface SoundDetectionHistoryCell
- (SoundDetectionHistoryCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (id)avAudioSessionForPlayback;
- (void)_playButtonTapped:(id)a3;
- (void)_setPlayButtonState:(BOOL)a3;
- (void)_setupAudioPlayer:(id)a3;
- (void)avAudioSessionForPlayback;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation SoundDetectionHistoryCell

- (SoundDetectionHistoryCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v8 = a5;
  v16.receiver = self;
  v16.super_class = SoundDetectionHistoryCell;
  v9 = [(SoundDetectionHistoryCell *)&v16 initWithStyle:3 reuseIdentifier:a4 specifier:v8];
  if (v9)
  {
    v10 = [UIImage systemImageNamed:@"play.fill"];
    v11 = [UIButton systemButtonWithImage:v10 target:v9 action:"_playButtonTapped:"];
    v12 = [(SoundDetectionHistoryCell *)v9 contentView];
    [v12 addSubview:v11];

    [(SoundDetectionHistoryCell *)v9 setAccessoryView:v11];
    playButton = v9->_playButton;
    v9->_playButton = v11;
    v14 = v11;

    objc_storeStrong(&v9->_specifier, a5);
  }

  return v9;
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SoundDetectionHistoryCell;
  [(SoundDetectionHistoryCell *)&v12 refreshCellContentsWithSpecifier:v4];
  [(SoundDetectionHistoryCell *)self setUserInteractionEnabled:1];
  v5 = [v4 propertyForKey:PSTitleKey];
  v6 = [v4 propertyForKey:PSValueKey];
  if (!v5)
  {
    v5 = [v4 name];
  }

  v7 = [(SoundDetectionHistoryCell *)self titleLabel];
  [v7 setText:v5];

  if (v6)
  {
    v8 = [(SoundDetectionHistoryCell *)self valueLabel];
    [v8 setText:v6];

    v9 = [(SoundDetectionHistoryCell *)self valueLabel];
    [v9 setHidden:0];
  }

  v10 = [v4 propertyForKey:@"audioFilePath"];
  if (v10)
  {
    objc_storeStrong(&self->_audioFilePath, v10);
    [(SoundDetectionHistoryCell *)self _setupAudioPlayer:v10];
  }

  specifier = self->_specifier;
  self->_specifier = v4;

  [(SoundDetectionHistoryCell *)self setNeedsUpdateConstraints];
  [(SoundDetectionHistoryCell *)self setNeedsDisplay];
}

- (void)_playButtonTapped:(id)a3
{
  v4 = a3;
  avAudioPlayer = self->_avAudioPlayer;
  if (avAudioPlayer)
  {
    v6 = [(AVAudioPlayer *)avAudioPlayer isPlaying];
    v7 = self->_avAudioPlayer;
    if (v6)
    {
      [(AVAudioPlayer *)v7 stop];
      v8 = self;
      v9 = 0;
    }

    else
    {
      [(AVAudioPlayer *)v7 prepareToPlay];
      [(AVAudioPlayer *)self->_avAudioPlayer play];
      v8 = self;
      v9 = 1;
    }

    [(SoundDetectionHistoryCell *)v8 _setPlayButtonState:v9];
  }

  else
  {
    v10 = AXLogUltron();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SoundDetectionHistoryCell _playButtonTapped:v10];
    }
  }
}

- (void)_setPlayButtonState:(BOOL)a3
{
  playButton = self->_playButton;
  if (a3)
  {
    v4 = @"stop.fill";
  }

  else
  {
    v4 = @"play.fill";
  }

  v5 = [UIImage systemImageNamed:v4];
  [(UIButton *)playButton setImage:v5 forState:0];
}

- (void)_setupAudioPlayer:(id)a3
{
  v4 = [NSURL fileURLWithPath:a3];
  v12 = 0;
  v5 = [[AVAudioPlayer alloc] initWithContentsOfURL:v4 error:&v12];
  v6 = v12;
  avAudioPlayer = self->_avAudioPlayer;
  self->_avAudioPlayer = v5;

  v8 = self->_avAudioPlayer;
  v9 = [(SoundDetectionHistoryCell *)self avAudioSessionForPlayback];
  [(AVAudioPlayer *)v8 setAudioSession:v9];

  [(AVAudioPlayer *)self->_avAudioPlayer setDelegate:self];
  LODWORD(v10) = 1.0;
  [(AVAudioPlayer *)self->_avAudioPlayer setVolume:v10];
  [(AVAudioPlayer *)self->_avAudioPlayer setNumberOfLoops:0];
  if (v6)
  {
    v11 = AXLogUltron();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(SoundDetectionHistoryCell *)v6 _setupAudioPlayer:v11];
    }
  }
}

- (id)avAudioSessionForPlayback
{
  avAudioSession = self->_avAudioSession;
  if (!avAudioSession)
  {
    v4 = +[AVAudioSession auxiliarySession];
    v5 = self->_avAudioSession;
    self->_avAudioSession = v4;

    v6 = self->_avAudioSession;
    v10 = 0;
    [(AVAudioSession *)v6 setCategory:AVAudioSessionCategoryPlayback mode:AVAudioSessionModeDefault options:1 error:&v10];
    v7 = v10;
    if (v7)
    {
      v8 = AXLogUltron();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(SoundDetectionHistoryCell *)v7 avAudioSessionForPlayback];
      }
    }

    avAudioSession = self->_avAudioSession;
  }

  return avAudioSession;
}

- (void)_setupAudioPlayer:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Ultron History - Error setting up audio session. Error: %@", &v2, 0xCu);
}

- (void)avAudioSessionForPlayback
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Ultron History - Failed to set up aux session for playback: %@", &v2, 0xCu);
}

@end