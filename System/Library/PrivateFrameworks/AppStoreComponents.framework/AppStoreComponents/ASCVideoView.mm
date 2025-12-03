@interface ASCVideoView
- (ASCVideoView)initWithCoder:(id)coder;
- (ASCVideoView)initWithFrame:(CGRect)frame;
- (ASCVideoView)initWithFrame:(CGRect)frame videoURL:(id)l screenshotDisplayConfiguration:(id)configuration;
- (ASCVideoViewDelegate)delegate;
- (BOOL)isMuted;
- (CGSize)preferredVideoSize;
- (void)dealloc;
- (void)layoutSubviews;
- (void)pauseVideo;
- (void)playVideo;
- (void)playerDidPlayToEndTime:(id)time;
- (void)resetVideo;
- (void)setImage:(id)image;
- (void)setMuted:(BOOL)muted;
- (void)toggleIsPlaying;
@end

@implementation ASCVideoView

- (ASCVideoView)initWithFrame:(CGRect)frame videoURL:(id)l screenshotDisplayConfiguration:(id)configuration
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  lCopy = l;
  configurationCopy = configuration;
  v30.receiver = self;
  v30.super_class = ASCVideoView;
  height = [(ASCVideoView *)&v30 initWithFrame:x, y, width, height];
  if (height)
  {
    height2 = [[ASCBorderedScreenshotView alloc] initWithFrame:configurationCopy screenshotDisplayConfiguration:x, y, width, height];
    previewFrameArtwork = height->_previewFrameArtwork;
    height->_previewFrameArtwork = height2;

    v16 = [configurationCopy copy];
    screenshotDisplayConfiguration = height->_screenshotDisplayConfiguration;
    height->_screenshotDisplayConfiguration = v16;

    v18 = MEMORY[0x277CE6598];
    v19 = [MEMORY[0x277CBEBC0] URLWithString:lCopy];
    v20 = [v18 playerWithURL:v19];
    player = height->_player;
    height->_player = v20;

    v22 = [MEMORY[0x277CE65D8] playerLayerWithPlayer:height->_player];
    playerLayer = height->_playerLayer;
    height->_playerLayer = v22;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v25 = *MEMORY[0x277CE60C0];
    currentItem = [(AVPlayer *)height->_player currentItem];
    [defaultCenter addObserver:height selector:sel_playerDidPlayToEndTime_ name:v25 object:currentItem];

    [(ASCVideoView *)height addSubview:height->_previewFrameArtwork];
    layer = [(ASCVideoView *)height layer];
    [layer addSublayer:height->_playerLayer];

    [(AVPlayerLayer *)height->_playerLayer setHidden:1];
    layer2 = [(ASCVideoView *)height layer];
    [layer2 setMasksToBounds:1];

    [(ASCVideoView *)height setLayoutMargins:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
    [(ASCVideoView *)height setUserInteractionEnabled:0];
  }

  return height;
}

- (ASCVideoView)initWithFrame:(CGRect)frame
{
  [(ASCVideoView *)self doesNotRecognizeSelector:a2, frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];

  return 0;
}

- (ASCVideoView)initWithCoder:(id)coder
{
  [(ASCVideoView *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = ASCVideoView;
  [(ASCVideoView *)&v4 dealloc];
}

- (void)layoutSubviews
{
  v16.receiver = self;
  v16.super_class = ASCVideoView;
  [(ASCVideoView *)&v16 layoutSubviews];
  screenshotDisplayConfiguration = [(ASCVideoView *)self screenshotDisplayConfiguration];
  [(ASCVideoView *)self bounds];
  [screenshotDisplayConfiguration cornerRadiusForSize:{v4, v5}];
  v7 = v6;
  layer = [(ASCVideoView *)self layer];
  [layer setCornerRadius:v7];

  screenshotDisplayConfiguration2 = [(ASCVideoView *)self screenshotDisplayConfiguration];
  cornerCurve = [screenshotDisplayConfiguration2 cornerCurve];
  layer2 = [(ASCVideoView *)self layer];
  [layer2 setCornerCurve:cornerCurve];

  screenshotDisplayConfiguration3 = [(ASCVideoView *)self screenshotDisplayConfiguration];
  maskedCorners = [screenshotDisplayConfiguration3 maskedCorners];
  layer3 = [(ASCVideoView *)self layer];
  [layer3 setMaskedCorners:maskedCorners];

  layer4 = [(ASCVideoView *)self layer];
  [layer4 setMasksToBounds:1];

  [(ASCVideoView *)self bounds];
  [(ASCBorderedScreenshotView *)self->_previewFrameArtwork setFrame:?];
  [(ASCVideoView *)self bounds];
  [(AVPlayerLayer *)self->_playerLayer setFrame:?];
}

- (CGSize)preferredVideoSize
{
  v4 = *MEMORY[0x277D768C8];
  v3 = *(MEMORY[0x277D768C8] + 8);
  v5 = *(MEMORY[0x277D768C8] + 16);
  v6 = *(MEMORY[0x277D768C8] + 24);
  [(ASCVideoView *)self bounds];
  v8 = v7 - (v3 + v6);
  [(ASCVideoView *)self bounds];
  v10 = v9 - (v4 + v5);
  v11 = v8;
  result.height = v10;
  result.width = v11;
  return result;
}

- (BOOL)isMuted
{
  player = [(ASCVideoView *)self player];
  isMuted = [player isMuted];

  return isMuted;
}

- (void)setMuted:(BOOL)muted
{
  mutedCopy = muted;
  player = [(ASCVideoView *)self player];
  [player setMuted:mutedCopy];
}

- (void)setImage:(id)image
{
  imageCopy = image;
  previewFrameArtwork = [(ASCVideoView *)self previewFrameArtwork];
  artworkView = [previewFrameArtwork artworkView];
  [artworkView setImage:imageCopy];
}

- (void)playVideo
{
  player = [(ASCVideoView *)self player];

  if (player)
  {
    playerLayer = [(ASCVideoView *)self playerLayer];
    [playerLayer setHidden:0];

    previewFrameArtwork = [(ASCVideoView *)self previewFrameArtwork];
    [previewFrameArtwork setHidden:1];

    player2 = [(ASCVideoView *)self player];
    [player2 play];

    self->_isPlaying = 1;
    delegate = [(ASCVideoView *)self delegate];
    [delegate videoView:self videoStateDidChange:0];
  }
}

- (void)pauseVideo
{
  player = [(ASCVideoView *)self player];

  if (player)
  {
    player2 = [(ASCVideoView *)self player];
    [player2 pause];

    self->_isPlaying = 0;
    delegate = [(ASCVideoView *)self delegate];
    [delegate videoView:self videoStateDidChange:1];
  }
}

- (void)resetVideo
{
  player = [(ASCVideoView *)self player];

  if (player)
  {
    playerLayer = [(ASCVideoView *)self playerLayer];
    [playerLayer setHidden:1];

    previewFrameArtwork = [(ASCVideoView *)self previewFrameArtwork];
    [previewFrameArtwork setHidden:0];

    player2 = [(ASCVideoView *)self player];
    [player2 pause];

    player3 = [(ASCVideoView *)self player];
    CMTimeMakeWithSeconds(&v8, 0.0, 1);
    [player3 seekToTime:&v8];

    self->_isPlaying = 0;
  }
}

- (void)toggleIsPlaying
{
  if ([(ASCVideoView *)self isPlaying])
  {

    [(ASCVideoView *)self pauseVideo];
  }

  else
  {

    [(ASCVideoView *)self playVideo];
  }
}

- (void)playerDidPlayToEndTime:(id)time
{
  delegate = [(ASCVideoView *)self delegate];
  [delegate videoView:self videoStateDidChange:2];

  if ([(ASCVideoView *)self isLoopingEnabled])
  {
    player = [(ASCVideoView *)self player];
    CMTimeMakeWithSeconds(&v6, 0.0, 1);
    [player seekToTime:&v6];

    [(ASCVideoView *)self playVideo];
  }

  else
  {

    [(ASCVideoView *)self resetVideo];
  }
}

- (ASCVideoViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end