@interface ASCVideoView
- (ASCVideoView)initWithCoder:(id)a3;
- (ASCVideoView)initWithFrame:(CGRect)a3;
- (ASCVideoView)initWithFrame:(CGRect)a3 videoURL:(id)a4 screenshotDisplayConfiguration:(id)a5;
- (ASCVideoViewDelegate)delegate;
- (BOOL)isMuted;
- (CGSize)preferredVideoSize;
- (void)dealloc;
- (void)layoutSubviews;
- (void)pauseVideo;
- (void)playVideo;
- (void)playerDidPlayToEndTime:(id)a3;
- (void)resetVideo;
- (void)setImage:(id)a3;
- (void)setMuted:(BOOL)a3;
- (void)toggleIsPlaying;
@end

@implementation ASCVideoView

- (ASCVideoView)initWithFrame:(CGRect)a3 videoURL:(id)a4 screenshotDisplayConfiguration:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = a4;
  v12 = a5;
  v30.receiver = self;
  v30.super_class = ASCVideoView;
  v13 = [(ASCVideoView *)&v30 initWithFrame:x, y, width, height];
  if (v13)
  {
    v14 = [[ASCBorderedScreenshotView alloc] initWithFrame:v12 screenshotDisplayConfiguration:x, y, width, height];
    previewFrameArtwork = v13->_previewFrameArtwork;
    v13->_previewFrameArtwork = v14;

    v16 = [v12 copy];
    screenshotDisplayConfiguration = v13->_screenshotDisplayConfiguration;
    v13->_screenshotDisplayConfiguration = v16;

    v18 = MEMORY[0x277CE6598];
    v19 = [MEMORY[0x277CBEBC0] URLWithString:v11];
    v20 = [v18 playerWithURL:v19];
    player = v13->_player;
    v13->_player = v20;

    v22 = [MEMORY[0x277CE65D8] playerLayerWithPlayer:v13->_player];
    playerLayer = v13->_playerLayer;
    v13->_playerLayer = v22;

    v24 = [MEMORY[0x277CCAB98] defaultCenter];
    v25 = *MEMORY[0x277CE60C0];
    v26 = [(AVPlayer *)v13->_player currentItem];
    [v24 addObserver:v13 selector:sel_playerDidPlayToEndTime_ name:v25 object:v26];

    [(ASCVideoView *)v13 addSubview:v13->_previewFrameArtwork];
    v27 = [(ASCVideoView *)v13 layer];
    [v27 addSublayer:v13->_playerLayer];

    [(AVPlayerLayer *)v13->_playerLayer setHidden:1];
    v28 = [(ASCVideoView *)v13 layer];
    [v28 setMasksToBounds:1];

    [(ASCVideoView *)v13 setLayoutMargins:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
    [(ASCVideoView *)v13 setUserInteractionEnabled:0];
  }

  return v13;
}

- (ASCVideoView)initWithFrame:(CGRect)a3
{
  [(ASCVideoView *)self doesNotRecognizeSelector:a2, a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];

  return 0;
}

- (ASCVideoView)initWithCoder:(id)a3
{
  [(ASCVideoView *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ASCVideoView;
  [(ASCVideoView *)&v4 dealloc];
}

- (void)layoutSubviews
{
  v16.receiver = self;
  v16.super_class = ASCVideoView;
  [(ASCVideoView *)&v16 layoutSubviews];
  v3 = [(ASCVideoView *)self screenshotDisplayConfiguration];
  [(ASCVideoView *)self bounds];
  [v3 cornerRadiusForSize:{v4, v5}];
  v7 = v6;
  v8 = [(ASCVideoView *)self layer];
  [v8 setCornerRadius:v7];

  v9 = [(ASCVideoView *)self screenshotDisplayConfiguration];
  v10 = [v9 cornerCurve];
  v11 = [(ASCVideoView *)self layer];
  [v11 setCornerCurve:v10];

  v12 = [(ASCVideoView *)self screenshotDisplayConfiguration];
  v13 = [v12 maskedCorners];
  v14 = [(ASCVideoView *)self layer];
  [v14 setMaskedCorners:v13];

  v15 = [(ASCVideoView *)self layer];
  [v15 setMasksToBounds:1];

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
  v2 = [(ASCVideoView *)self player];
  v3 = [v2 isMuted];

  return v3;
}

- (void)setMuted:(BOOL)a3
{
  v3 = a3;
  v4 = [(ASCVideoView *)self player];
  [v4 setMuted:v3];
}

- (void)setImage:(id)a3
{
  v4 = a3;
  v6 = [(ASCVideoView *)self previewFrameArtwork];
  v5 = [v6 artworkView];
  [v5 setImage:v4];
}

- (void)playVideo
{
  v3 = [(ASCVideoView *)self player];

  if (v3)
  {
    v4 = [(ASCVideoView *)self playerLayer];
    [v4 setHidden:0];

    v5 = [(ASCVideoView *)self previewFrameArtwork];
    [v5 setHidden:1];

    v6 = [(ASCVideoView *)self player];
    [v6 play];

    self->_isPlaying = 1;
    v7 = [(ASCVideoView *)self delegate];
    [v7 videoView:self videoStateDidChange:0];
  }
}

- (void)pauseVideo
{
  v3 = [(ASCVideoView *)self player];

  if (v3)
  {
    v4 = [(ASCVideoView *)self player];
    [v4 pause];

    self->_isPlaying = 0;
    v5 = [(ASCVideoView *)self delegate];
    [v5 videoView:self videoStateDidChange:1];
  }
}

- (void)resetVideo
{
  v3 = [(ASCVideoView *)self player];

  if (v3)
  {
    v4 = [(ASCVideoView *)self playerLayer];
    [v4 setHidden:1];

    v5 = [(ASCVideoView *)self previewFrameArtwork];
    [v5 setHidden:0];

    v6 = [(ASCVideoView *)self player];
    [v6 pause];

    v7 = [(ASCVideoView *)self player];
    CMTimeMakeWithSeconds(&v8, 0.0, 1);
    [v7 seekToTime:&v8];

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

- (void)playerDidPlayToEndTime:(id)a3
{
  v4 = [(ASCVideoView *)self delegate];
  [v4 videoView:self videoStateDidChange:2];

  if ([(ASCVideoView *)self isLoopingEnabled])
  {
    v5 = [(ASCVideoView *)self player];
    CMTimeMakeWithSeconds(&v6, 0.0, 1);
    [v5 seekToTime:&v6];

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