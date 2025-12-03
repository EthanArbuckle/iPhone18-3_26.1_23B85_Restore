@interface SoundDetectionHistoryCell
- (SoundDetectionHistoryCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (id)avAudioSessionForPlayback;
- (void)_playButtonTapped:(id)tapped;
- (void)_setPlayButtonState:(BOOL)state;
- (void)_setupAudioPlayer:(id)player;
- (void)avAudioSessionForPlayback;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation SoundDetectionHistoryCell

- (SoundDetectionHistoryCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  specifierCopy = specifier;
  v16.receiver = self;
  v16.super_class = SoundDetectionHistoryCell;
  v9 = [(SoundDetectionHistoryCell *)&v16 initWithStyle:3 reuseIdentifier:identifier specifier:specifierCopy];
  if (v9)
  {
    v10 = [UIImage systemImageNamed:@"play.fill"];
    v11 = [UIButton systemButtonWithImage:v10 target:v9 action:"_playButtonTapped:"];
    contentView = [(SoundDetectionHistoryCell *)v9 contentView];
    [contentView addSubview:v11];

    [(SoundDetectionHistoryCell *)v9 setAccessoryView:v11];
    playButton = v9->_playButton;
    v9->_playButton = v11;
    v14 = v11;

    objc_storeStrong(&v9->_specifier, specifier);
  }

  return v9;
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v12.receiver = self;
  v12.super_class = SoundDetectionHistoryCell;
  [(SoundDetectionHistoryCell *)&v12 refreshCellContentsWithSpecifier:specifierCopy];
  [(SoundDetectionHistoryCell *)self setUserInteractionEnabled:1];
  name = [specifierCopy propertyForKey:PSTitleKey];
  v6 = [specifierCopy propertyForKey:PSValueKey];
  if (!name)
  {
    name = [specifierCopy name];
  }

  titleLabel = [(SoundDetectionHistoryCell *)self titleLabel];
  [titleLabel setText:name];

  if (v6)
  {
    valueLabel = [(SoundDetectionHistoryCell *)self valueLabel];
    [valueLabel setText:v6];

    valueLabel2 = [(SoundDetectionHistoryCell *)self valueLabel];
    [valueLabel2 setHidden:0];
  }

  v10 = [specifierCopy propertyForKey:@"audioFilePath"];
  if (v10)
  {
    objc_storeStrong(&self->_audioFilePath, v10);
    [(SoundDetectionHistoryCell *)self _setupAudioPlayer:v10];
  }

  specifier = self->_specifier;
  self->_specifier = specifierCopy;

  [(SoundDetectionHistoryCell *)self setNeedsUpdateConstraints];
  [(SoundDetectionHistoryCell *)self setNeedsDisplay];
}

- (void)_playButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  avAudioPlayer = self->_avAudioPlayer;
  if (avAudioPlayer)
  {
    isPlaying = [(AVAudioPlayer *)avAudioPlayer isPlaying];
    v7 = self->_avAudioPlayer;
    if (isPlaying)
    {
      [(AVAudioPlayer *)v7 stop];
      selfCopy2 = self;
      v9 = 0;
    }

    else
    {
      [(AVAudioPlayer *)v7 prepareToPlay];
      [(AVAudioPlayer *)self->_avAudioPlayer play];
      selfCopy2 = self;
      v9 = 1;
    }

    [(SoundDetectionHistoryCell *)selfCopy2 _setPlayButtonState:v9];
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

- (void)_setPlayButtonState:(BOOL)state
{
  playButton = self->_playButton;
  if (state)
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

- (void)_setupAudioPlayer:(id)player
{
  v4 = [NSURL fileURLWithPath:player];
  v12 = 0;
  v5 = [[AVAudioPlayer alloc] initWithContentsOfURL:v4 error:&v12];
  v6 = v12;
  avAudioPlayer = self->_avAudioPlayer;
  self->_avAudioPlayer = v5;

  v8 = self->_avAudioPlayer;
  avAudioSessionForPlayback = [(SoundDetectionHistoryCell *)self avAudioSessionForPlayback];
  [(AVAudioPlayer *)v8 setAudioSession:avAudioSessionForPlayback];

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
  selfCopy = self;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Ultron History - Failed to set up aux session for playback: %@", &v2, 0xCu);
}

@end