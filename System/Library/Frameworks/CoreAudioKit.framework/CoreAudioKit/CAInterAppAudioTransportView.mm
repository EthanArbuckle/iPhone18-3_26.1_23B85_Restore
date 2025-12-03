@interface CAInterAppAudioTransportView
- (BOOL)isHostConnected;
- (CAInterAppAudioTransportView)initWithCoder:(id)coder;
- (CAInterAppAudioTransportView)initWithFrame:(CGRect)frame;
- (UIColor)recordButtonColor;
- (UIColor)rewindButtonColor;
- (id)getPlayTimeString;
- (void)appHasGoneForeground;
- (void)audioUnitPropertyChangedListener:(void *)listener unit:(OpaqueAudioComponentInstance *)unit propID:(unsigned int)d scope:(unsigned int)scope element:(unsigned int)element;
- (void)dealloc;
- (void)getHostCallbackInfo;
- (void)initialize;
- (void)layoutSubviews;
- (void)pollHost;
- (void)rewindAction:(id)action;
- (void)sendStateToRemoteHost:(unsigned int)host;
- (void)setCurrentTimeLabelFont:(UIFont *)currentTimeLabelFont;
- (void)setEnabled:(BOOL)enabled;
- (void)setOutputAudioUnit:(AudioUnit)au;
- (void)setPauseButtonColor:(UIColor *)pauseButtonColor;
- (void)setPlayButtonColor:(UIColor *)playButtonColor;
- (void)setRecordButtonColor:(UIColor *)recordButtonColor;
- (void)setRewindButtonColor:(UIColor *)rewindButtonColor;
- (void)startPollingPlayer;
- (void)stopPollingPlayer;
- (void)togglePlayback:(id)playback;
- (void)updateStatefromTransportCallBack;
- (void)updateTransportControls;
@end

@implementation CAInterAppAudioTransportView

- (void)initialize
{
  -[CAInterAppAudioTransportView setBackgroundColor:](self, "setBackgroundColor:", [MEMORY[0x277D75348] clearColor]);
  [(CAInterAppAudioTransportView *)self frame];
  v4 = v3;
  v5 = floorf(v4);
  v6 = [CAUITransportButton alloc];
  [(CAInterAppAudioTransportView *)self frame];
  v8 = v7 - v5;
  self->playPauseButton = [(CAUITransportButton *)v6 initWithFrame:(floorf(v8) * 0.5), 0.0, v5, v5];
  v9 = [CAUITransportButton alloc];
  [(CAUITransportButton *)self->playPauseButton frame];
  self->rewindButton = [(CAUITransportButton *)v9 initWithFrame:v10 - v5 + -35.0, 0.0, v5, v5];
  v11 = [CAUITransportButton alloc];
  [(CAUITransportButton *)self->playPauseButton frame];
  self->recordButton = [(CAUITransportButton *)v11 initWithFrame:v12 + v5 + 35.0, 0.0, v5, v5];
  [(CAUITransportButton *)self->rewindButton setDrawingStyle:1];
  [(CAUITransportButton *)self->playPauseButton setDrawingStyle:2];
  [(CAUITransportButton *)self->recordButton setDrawingStyle:4];
  -[CAUITransportButton setFillColor:](self->rewindButton, "setFillColor:", [objc_msgSend(MEMORY[0x277D75348] colorWithWhite:0.063000001 alpha:{1.0), "CGColor"}]);
  v13 = [MEMORY[0x277D75348] colorWithWhite:0.063000001 alpha:1.0];
  self->pauseButtonColor = v13;
  v14 = v13;
  self->playButtonColor = v14;
  [(CAUITransportButton *)self->playPauseButton setFillColor:[(UIColor *)v14 CGColor]];
  -[CAUITransportButton setFillColor:](self->recordButton, "setFillColor:", [objc_msgSend(MEMORY[0x277D75348] colorWithRed:0.984000027 green:0.250999987 blue:0.172999993 alpha:{1.0), "CGColor"}]);
  [(CAUITransportButton *)self->rewindButton addTarget:self action:sel_rewindAction_ forControlEvents:64];
  [(CAUITransportButton *)self->playPauseButton addTarget:self action:sel_togglePlayback_ forControlEvents:64];
  [(CAUITransportButton *)self->recordButton addTarget:self action:sel_toggleRecording_ forControlEvents:64];
  [(CAInterAppAudioTransportView *)self addSubview:self->rewindButton];
  [(CAInterAppAudioTransportView *)self addSubview:self->playPauseButton];
  [(CAInterAppAudioTransportView *)self addSubview:self->recordButton];
  v15 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
  v16 = objc_alloc(MEMORY[0x277D756B8]);
  self->currentTimeLabel = [v16 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  -[CAInterAppAudioTransportView setLabelColor:](self, "setLabelColor:", [MEMORY[0x277D75348] blackColor]);
  [(UILabel *)self->currentTimeLabel setText:@"00:00:00"];
  [(UILabel *)self->currentTimeLabel setFont:[(CAInterAppAudioTransportView *)self currentTimeLabelFont]];
  [(UILabel *)self->currentTimeLabel setTextColor:[(CAInterAppAudioTransportView *)self labelColor]];
  -[UILabel setBackgroundColor:](self->currentTimeLabel, "setBackgroundColor:", [MEMORY[0x277D75348] clearColor]);
  [(UILabel *)self->currentTimeLabel setTextAlignment:0];
  [(CAInterAppAudioTransportView *)self setCurrentTimeLabelFont:v15];
  [(CAInterAppAudioTransportView *)self addSubview:self->currentTimeLabel];
  self->_playing = 0;
  self->_recording = 0;
  self->_connected = 0;
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_appHasGoneInBackground name:*MEMORY[0x277D76660] object:0];
  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_appHasGoneForeground name:*MEMORY[0x277D76758] object:0];
  self->inForeground = [objc_msgSend(MEMORY[0x277D75128] "sharedApplication")] != 2;

  [(CAInterAppAudioTransportView *)self updateTransportControls];
}

- (CAInterAppAudioTransportView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = CAInterAppAudioTransportView;
  v3 = [(CAInterAppAudioTransportView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CAInterAppAudioTransportView *)v3 initialize];
  }

  return v4;
}

- (CAInterAppAudioTransportView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CAInterAppAudioTransportView;
  v3 = [(CAInterAppAudioTransportView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(CAInterAppAudioTransportView *)v3 initialize];
  }

  return v4;
}

- (void)dealloc
{
  callBackInfo = self->callBackInfo;
  if (callBackInfo)
  {
    free(callBackInfo);
  }

  v4.receiver = self;
  v4.super_class = CAInterAppAudioTransportView;
  [(CAInterAppAudioTransportView *)&v4 dealloc];
}

- (void)setEnabled:(BOOL)enabled
{
  if (self->enabled != enabled)
  {
    v4 = enabled;
    [(CAUITransportButton *)self->recordButton setEnabled:?];
    [(CAUITransportButton *)self->playPauseButton setEnabled:v4];
    rewindButton = self->rewindButton;

    [(CAUITransportButton *)rewindButton setEnabled:v4];
  }
}

- (void)setCurrentTimeLabelFont:(UIFont *)currentTimeLabelFont
{
  v14[1] = *MEMORY[0x277D85DE8];
  [(UILabel *)self->currentTimeLabel setFont:?];
  text = [(UILabel *)self->currentTimeLabel text];
  v13 = *MEMORY[0x277D740A8];
  v14[0] = currentTimeLabelFont;
  -[NSString sizeWithAttributes:](text, "sizeWithAttributes:", [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1]);
  v7 = v6;
  v9 = v8;
  [(CAInterAppAudioTransportView *)self frame];
  v11 = v10 - v7;
  [(CAInterAppAudioTransportView *)self frame];
  [(UILabel *)self->currentTimeLabel setFrame:v11, (v12 - v9) * 0.5, v7, v9];
}

- (UIColor)rewindButtonColor
{
  v2 = MEMORY[0x277D75348];
  fillColor = [(CAUITransportButton *)self->rewindButton fillColor];

  return [v2 colorWithCGColor:fillColor];
}

- (void)setRewindButtonColor:(UIColor *)rewindButtonColor
{
  cGColor = [(UIColor *)rewindButtonColor CGColor];
  rewindButton = self->rewindButton;

  [(CAUITransportButton *)rewindButton setFillColor:cGColor];
}

- (void)setPlayButtonColor:(UIColor *)playButtonColor
{
  v5 = playButtonColor;

  self->playButtonColor = playButtonColor;
  if ([(CAUITransportButton *)self->playPauseButton drawingStyle]== 3)
  {
    cGColor = [(UIColor *)self->playButtonColor CGColor];
    playPauseButton = self->playPauseButton;

    [(CAUITransportButton *)playPauseButton setFillColor:cGColor];
  }
}

- (void)setPauseButtonColor:(UIColor *)pauseButtonColor
{
  v5 = pauseButtonColor;

  self->pauseButtonColor = pauseButtonColor;
  if ([(CAUITransportButton *)self->playPauseButton drawingStyle]== 2)
  {
    cGColor = [(UIColor *)self->pauseButtonColor CGColor];
    playPauseButton = self->playPauseButton;

    [(CAUITransportButton *)playPauseButton setFillColor:cGColor];
  }
}

- (UIColor)recordButtonColor
{
  v2 = MEMORY[0x277D75348];
  fillColor = [(CAUITransportButton *)self->recordButton fillColor];

  return [v2 colorWithCGColor:fillColor];
}

- (void)setRecordButtonColor:(UIColor *)recordButtonColor
{
  cGColor = [(UIColor *)recordButtonColor CGColor];
  recordButton = self->recordButton;

  [(CAUITransportButton *)recordButton setFillColor:cGColor];
}

- (void)setOutputAudioUnit:(AudioUnit)au
{
  outputUnit = self->outputUnit;
  if (outputUnit != au)
  {
    if (outputUnit)
    {
      v6 = AudioUnitRemovePropertyListenerWithUserData(outputUnit, 0x65u, _CAIAAAUTransportPropertyChangeDispatcher, self);
      if (v6)
      {
        NSLog(&cfstr_ErrorRemovingP.isa, v6);
      }

      v7 = AudioUnitRemovePropertyListenerWithUserData(self->outputUnit, 0x7DDu, _CAIAAAUTransportPropertyChangeDispatcher, self);
      if (v7)
      {
        NSLog(&cfstr_ErrorRemovingP_0.isa, v7);
      }
    }

    self->outputUnit = au;
    if (au)
    {
      v8 = AudioUnitAddPropertyListener(au, 0x65u, _CAIAAAUTransportPropertyChangeDispatcher, self);
      if (v8)
      {
        NSLog(&cfstr_ErrorAddingPro.isa, v8);
      }

      v9 = AudioUnitAddPropertyListener(self->outputUnit, 0x7DDu, _CAIAAAUTransportPropertyChangeDispatcher, self);
      if (v9)
      {
        NSLog(&cfstr_ErrorAddingPro_0.isa, v9);
      }
    }
  }
}

- (void)startPollingPlayer
{
  if ([(CAInterAppAudioTransportView *)self isHostConnected]&& self->inForeground && !self->pollingPlayerTimer)
  {
    self->pollingPlayerTimer = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel_pollHost selector:0 userInfo:1 repeats:0.05];
  }
}

- (void)stopPollingPlayer
{
  pollingPlayerTimer = self->pollingPlayerTimer;
  if (pollingPlayerTimer)
  {
    [(NSTimer *)pollingPlayerTimer invalidate];
    self->pollingPlayerTimer = 0;
  }
}

- (void)pollHost
{
  if ([(CAInterAppAudioTransportView *)self isHostConnected])
  {
    getPlayTimeString = [(CAInterAppAudioTransportView *)self getPlayTimeString];
    currentTimeLabel = self->currentTimeLabel;

    [(UILabel *)currentTimeLabel setText:getPlayTimeString];
  }
}

- (id)getPlayTimeString
{
  [(CAInterAppAudioTransportView *)self updateStatefromTransportCallBack];
  playTime = self->_playTime;
  [objc_msgSend(MEMORY[0x277CB83F8] "sharedInstance")];

  return formattedTimeStringForFrameCountAndSampleRate(playTime, v4, 0);
}

- (void)appHasGoneForeground
{
  self->inForeground = 1;
  if ([(CAInterAppAudioTransportView *)self isHostConnected])
  {
    [(CAInterAppAudioTransportView *)self startPollingPlayer];
  }

  else
  {
    [(CAInterAppAudioTransportView *)self stopPollingPlayer];
  }

  [(CAInterAppAudioTransportView *)self updateStatefromTransportCallBack];

  [(CAInterAppAudioTransportView *)self updateTransportControls];
}

- (void)getHostCallbackInfo
{
  if ([(CAInterAppAudioTransportView *)self isConnected])
  {
    callBackInfo = self->callBackInfo;
    if (callBackInfo)
    {
      free(callBackInfo);
    }

    ioDataSize = 40;
    v4 = malloc_type_malloc(0x28uLL, 0x800402FCC0CB6uLL);
    self->callBackInfo = v4;
    Property = AudioUnitGetProperty(self->outputUnit, 0x1Bu, 0, 0, v4, &ioDataSize);
    if (Property)
    {
      NSLog(&cfstr_ErrorOccuredFe.isa, Property);
      free(self->callBackInfo);
      self->callBackInfo = 0;
    }
  }
}

- (void)updateStatefromTransportCallBack
{
  if ([(CAInterAppAudioTransportView *)self isHostConnected])
  {
    if (self->inForeground)
    {
      if (self->callBackInfo || ([(CAInterAppAudioTransportView *)self getHostCallbackInfo], self->callBackInfo))
      {
        isPlaying = [(CAInterAppAudioTransportView *)self isPlaying];
        isRecording = [(CAInterAppAudioTransportView *)self isRecording];
        v7 = 0.0;
        v6 = 0;
        v4 = 0;
        v5 = 0;
        v3 = (self->callBackInfo->transportStateProc2)(self->callBackInfo->hostUserData, &isPlaying, &isRecording, 0, &v7, &v6, &v5, &v4);
        if (v3)
        {
          NSLog(&cfstr_ErrorOccuredFe_0.isa, v3);
        }

        else
        {
          self->_playing = isPlaying;
          self->_recording = isRecording;
          self->_playTime = v7;
        }
      }
    }
  }
}

- (BOOL)isHostConnected
{
  outputUnit = self->outputUnit;
  if (outputUnit)
  {
    ioDataSize = 4;
    outData = 0;
    if (!AudioUnitGetProperty(outputUnit, 0x65u, 0, 0, &outData, &ioDataSize))
    {
      v4 = outData;
      if ((((v4 == 0) ^ [(CAInterAppAudioTransportView *)self isConnected]) & 1) == 0)
      {
        self->_connected = outData != 0;
        if ([(CAInterAppAudioTransportView *)self isConnected])
        {
          [(CAInterAppAudioTransportView *)self getHostCallbackInfo];
        }
      }
    }
  }

  return [(CAInterAppAudioTransportView *)self isConnected];
}

- (void)rewindAction:(id)action
{
  [(CAInterAppAudioTransportView *)self sendStateToRemoteHost:3];
  [(CAInterAppAudioTransportView *)self updateStatefromTransportCallBack];

  [(CAInterAppAudioTransportView *)self updateTransportControls];
}

- (void)togglePlayback:(id)playback
{
  drawingStyle = [(CAUITransportButton *)self->playPauseButton drawingStyle];
  v5 = &OBJC_IVAR___CAInterAppAudioTransportView_pauseButtonColor;
  if (drawingStyle == 3)
  {
    v5 = &OBJC_IVAR___CAInterAppAudioTransportView_playButtonColor;
  }

  -[CAUITransportButton setFillColor:](self->playPauseButton, "setFillColor:", [*(&self->super.super.super.isa + *v5) CGColor]);
  [(CAInterAppAudioTransportView *)self sendStateToRemoteHost:1];

  [(CAInterAppAudioTransportView *)self startPollingPlayer];
}

- (void)sendStateToRemoteHost:(unsigned int)host
{
  outputUnit = self->outputUnit;
  if (outputUnit)
  {
    v4 = *&host;
    inData = host;
    v5 = AudioUnitSetProperty(outputUnit, 0x7DCu, 0, 0, &inData, 4u);
    if (v5)
    {
      NSLog(&cfstr_ErrorUpdatingR.isa, v4, v5);
    }
  }
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = CAInterAppAudioTransportView;
  [(CAInterAppAudioTransportView *)&v10 layoutSubviews];
  [(CAInterAppAudioTransportView *)self frame];
  v4 = v3;
  v5 = floorf(v4);
  [(CAInterAppAudioTransportView *)self frame];
  v7 = v6 - v5;
  [(CAUITransportButton *)self->playPauseButton setFrame:(floorf(v7) * 0.5), 0.0, v5, v5];
  [(CAUITransportButton *)self->playPauseButton frame];
  [(CAUITransportButton *)self->rewindButton setFrame:v8 - v5 + -35.0, 0.0, v5, v5];
  [(CAUITransportButton *)self->playPauseButton frame];
  [(CAUITransportButton *)self->recordButton setFrame:v9 + v5 + 35.0, 0.0, v5, v5];
}

- (void)updateTransportControls
{
  if ([(CAInterAppAudioTransportView *)self isRecording])
  {
    v3 = 5;
  }

  else
  {
    v3 = 4;
  }

  [(CAUITransportButton *)self->recordButton setDrawingStyle:v3];
  v4 = 2;
  if (![(CAInterAppAudioTransportView *)self isPlaying])
  {
    if ([(CAInterAppAudioTransportView *)self isRecording])
    {
      v4 = 2;
    }

    else
    {
      v4 = 3;
    }
  }

  [(CAUITransportButton *)self->playPauseButton setDrawingStyle:v4];
  [(CAUITransportButton *)self->recordButton setEnabled:[(CAInterAppAudioTransportView *)self canRecord]];
  [(CAUITransportButton *)self->recordButton setUserInteractionEnabled:[(CAUITransportButton *)self->recordButton isEnabled]];
  if ([(CAUITransportButton *)self->recordButton isEnabled])
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.25;
  }

  [(CAUITransportButton *)self->recordButton setAlpha:v5];
  [(CAUITransportButton *)self->playPauseButton setEnabled:[(CAInterAppAudioTransportView *)self canPlay]];
  [(CAUITransportButton *)self->playPauseButton setUserInteractionEnabled:[(CAUITransportButton *)self->playPauseButton isEnabled]];
  if ([(CAUITransportButton *)self->playPauseButton isEnabled])
  {
    v6 = 1.0;
  }

  else
  {
    v6 = 0.25;
  }

  [(CAUITransportButton *)self->playPauseButton setAlpha:v6];
  [(CAUITransportButton *)self->rewindButton setEnabled:[(CAInterAppAudioTransportView *)self canRewind]];
  [(CAUITransportButton *)self->rewindButton setUserInteractionEnabled:[(CAUITransportButton *)self->rewindButton isEnabled]];
  if ([(CAUITransportButton *)self->rewindButton isEnabled])
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 0.25;
  }

  [(CAUITransportButton *)self->rewindButton setAlpha:v7];
  [(UILabel *)self->currentTimeLabel setEnabled:[(CAInterAppAudioTransportView *)self canPlay]];
  isEnabled = [(UILabel *)self->currentTimeLabel isEnabled];
  v9 = 0.5;
  if (isEnabled)
  {
    v9 = 1.0;
  }

  [(UILabel *)self->currentTimeLabel setAlpha:v9];

  [(CAInterAppAudioTransportView *)self setNeedsDisplay];
}

- (void)audioUnitPropertyChangedListener:(void *)listener unit:(OpaqueAudioComponentInstance *)unit propID:(unsigned int)d scope:(unsigned int)scope element:(unsigned int)element
{
  if (d == 2013)
  {
    [(CAInterAppAudioTransportView *)self updateStatefromTransportCallBack:listener];

    [(CAInterAppAudioTransportView *)self performSelectorOnMainThread:sel_updateTransportControls withObject:0 waitUntilDone:0];
  }

  else if (d == 101)
  {

    [(CAInterAppAudioTransportView *)self isHostConnected:listener];
  }
}

@end