@interface MTEpisodeArtworkView
- (CGSize)sizeThatFits:(CGSize)fits;
- (MTEpisodeArtworkView)initWithFrame:(CGRect)frame;
- (MTNowPlayingIndicatorView)barsView;
- (MTVibrantImageView)vibrantImageView;
- (UIImage)artwork;
- (UIImageView)imageView;
- (UIView)dimmingView;
- (id)_blurredArtworkForArtwork:(id)artwork;
- (void)_updateBarMetricsForArtworkSize:(CGSize)size;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setArtwork:(id)artwork;
- (void)setCurrentPlayerItem:(BOOL)item;
- (void)startObservingPlaybackState;
- (void)stopObservingPlaybackState;
- (void)updatePlaybackState;
@end

@implementation MTEpisodeArtworkView

- (MTEpisodeArtworkView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = MTEpisodeArtworkView;
  v3 = [(MTEpisodeArtworkView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    imageView = [(MTEpisodeArtworkView *)v3 imageView];
    [(MTEpisodeArtworkView *)v4 addSubview:imageView];

    [(MTEpisodeArtworkView *)v4 setUserInteractionEnabled:0];
  }

  return v4;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = MTEpisodeArtworkView;
  [(MTEpisodeArtworkView *)&v4 dealloc];
}

- (UIImage)artwork
{
  imageView = [(MTEpisodeArtworkView *)self imageView];
  image = [imageView image];

  return image;
}

- (void)setArtwork:(id)artwork
{
  artworkCopy = artwork;
  imageView = [(MTEpisodeArtworkView *)self imageView];
  [imageView setImage:artworkCopy];

  isCurrentPlayerItem = [(MTEpisodeArtworkView *)self isCurrentPlayerItem];
  if (isCurrentPlayerItem)
  {
    v6 = [(MTEpisodeArtworkView *)self _blurredArtworkForArtwork:artworkCopy];
  }

  else
  {
    v6 = 0;
  }

  vibrantImageView = [(MTEpisodeArtworkView *)self vibrantImageView];
  [vibrantImageView setImage:v6];

  if (isCurrentPlayerItem)
  {
  }
}

- (MTVibrantImageView)vibrantImageView
{
  vibrantImageView = self->_vibrantImageView;
  if (!vibrantImageView)
  {
    v4 = objc_opt_new();
    v5 = self->_vibrantImageView;
    self->_vibrantImageView = v4;

    barsView = [(MTEpisodeArtworkView *)self barsView];
    [(MTVibrantImageView *)self->_vibrantImageView setMaskView:barsView];

    vibrantImageView = self->_vibrantImageView;
  }

  return vibrantImageView;
}

- (void)setCurrentPlayerItem:(BOOL)item
{
  if (self->_currentPlayerItem != item)
  {
    v17 = v6;
    v18 = v5;
    v19 = v4;
    v20 = v3;
    self->_currentPlayerItem = item;
    if (item)
    {
      dimmingView = [(MTEpisodeArtworkView *)self dimmingView];
      [(MTEpisodeArtworkView *)self addSubview:dimmingView];

      vibrantImageView = [(MTEpisodeArtworkView *)self vibrantImageView];
      image = [vibrantImageView image];

      if (!image)
      {
        artwork = [(MTEpisodeArtworkView *)self artwork];
        v14 = [(MTEpisodeArtworkView *)self _blurredArtworkForArtwork:artwork];
        vibrantImageView2 = [(MTEpisodeArtworkView *)self vibrantImageView];
        [vibrantImageView2 setImage:v14];
      }

      v16 = [(MTEpisodeArtworkView *)self vibrantImageView:v17];
      [(MTEpisodeArtworkView *)self addSubview:v16];

      [(MTEpisodeArtworkView *)self startObservingPlaybackState];
    }

    else
    {
      [(UIView *)self->_dimmingView removeFromSuperview];
      [(MTVibrantImageView *)self->_vibrantImageView removeFromSuperview];
      [(MTEpisodeArtworkView *)self stopObservingPlaybackState];
    }

    [(MTEpisodeArtworkView *)self updatePlaybackState];
  }
}

- (void)startObservingPlaybackState
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"updatePlaybackState" name:IMAVPlayerNotification_StateDidChange object:0];
}

- (void)stopObservingPlaybackState
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:IMAVPlayerNotification_StateDidChange object:0];
}

- (void)updatePlaybackState
{
  if ([(MTEpisodeArtworkView *)self isCurrentPlayerItem])
  {
    v3 = +[MTPlayerController defaultInstance];
    isTargetPlaying = [v3 isTargetPlaying];

    if (isTargetPlaying)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }
  }

  else
  {
    v5 = 0;
  }

  barsView = self->_barsView;

  [(MTNowPlayingIndicatorView *)barsView setPlaybackState:v5];
}

- (void)layoutSubviews
{
  [(MTEpisodeArtworkView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  imageView = [(MTEpisodeArtworkView *)self imageView];
  [imageView setFrame:{v4, v6, v8, v10}];

  superview = [(UIView *)self->_dimmingView superview];

  if (superview)
  {
    dimmingView = [(MTEpisodeArtworkView *)self dimmingView];
    [dimmingView setFrame:{v4, v6, v8, v10}];
  }

  superview2 = [(MTVibrantImageView *)self->_vibrantImageView superview];

  if (superview2)
  {
    [(MTVibrantImageView *)self->_vibrantImageView setFrame:v4, v6, v8, v10];

    [(MTEpisodeArtworkView *)self _updateBarMetricsForArtworkSize:v8, v10];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  imageView = [(MTEpisodeArtworkView *)self imageView];
  [imageView sizeThatFits:{width, height}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (UIImageView)imageView
{
  imageView = self->_imageView;
  if (!imageView)
  {
    v4 = objc_opt_new();
    v5 = self->_imageView;
    self->_imageView = v4;

    v6 = +[UIColor artworkBorderColor];
    cGColor = [v6 CGColor];
    layer = [(UIImageView *)self->_imageView layer];
    [layer setBorderColor:cGColor];

    v9 = +[UIScreen mainScreen];
    [v9 scale];
    v11 = v10;

    layer2 = [(UIImageView *)self->_imageView layer];
    [layer2 setBorderWidth:1.0 / v11];

    imageView = self->_imageView;
  }

  return imageView;
}

- (UIView)dimmingView
{
  dimmingView = self->_dimmingView;
  if (!dimmingView)
  {
    v4 = objc_opt_new();
    v5 = self->_dimmingView;
    self->_dimmingView = v4;

    v6 = [UIColor colorWithWhite:0.0 alpha:0.32];
    [(UIView *)self->_dimmingView setBackgroundColor:v6];

    dimmingView = self->_dimmingView;
  }

  return dimmingView;
}

- (MTNowPlayingIndicatorView)barsView
{
  barsView = self->_barsView;
  if (!barsView)
  {
    v4 = objc_opt_new();
    v5 = self->_barsView;
    self->_barsView = v4;

    if (isTV())
    {
      v6 = 3;
    }

    else
    {
      v6 = 4;
    }

    [(MTNowPlayingIndicatorView *)self->_barsView setNumberOfLevels:v6];
    [(MTNowPlayingIndicatorView *)self->_barsView setBounceStyle:1];
    [(MTNowPlayingIndicatorView *)self->_barsView setLevelWidth:3.5];
    [(MTNowPlayingIndicatorView *)self->_barsView setInterLevelSpacing:2.0];
    [(MTNowPlayingIndicatorView *)self->_barsView setLevelCornerRadius:1.0];
    barsView = self->_barsView;
  }

  return barsView;
}

- (id)_blurredArtworkForArtwork:(id)artwork
{
  artworkCopy = artwork;
  v4 = [_UIBackdropViewSettings settingsForPrivateStyle:2020];
  v5 = +[UIScreen mainScreen];
  [v5 scale];
  v7 = v6;

  [v4 setBlurRadius:1.0 / v7 * 8.0];
  v8 = [artworkCopy _applyBackdropViewSettings:v4 includeTints:1 includeBlur:1];

  return v8;
}

- (void)_updateBarMetricsForArtworkSize:(CGSize)size
{
  if (self->_barsView)
  {
    v4 = isTV();
    v5 = isTV();
    isTV();
    isTV();
    [(MTNowPlayingIndicatorView *)self->_barsView numberOfLevels];
    isTV();
    IMRoundToPixel();
    v24 = v6;
    IMRoundToPixel();
    if (v7 < 1.0)
    {
      v7 = 1.0;
    }

    v23 = v7;
    IMRoundToPixel();
    if (v8 < 2.0)
    {
      v8 = 2.0;
    }

    v22 = v8;
    IMRoundToPixel();
    if (v9 < 1.0)
    {
      v9 = 1.0;
    }

    v21 = v9;
    v10 = 0.0;
    if ((isTV() & 1) == 0)
    {
      if (v5)
      {
        v10 = 0.0;
      }

      else
      {
        v10 = 4.0;
      }

      if (v4)
      {
        v11 = 0.0;
      }

      else
      {
        v11 = 1.0;
      }

      IMRoundToPixel();
      if (v12 < v11)
      {
        v12 = v11;
      }

      if (v12 < v10)
      {
        v10 = v12;
      }
    }

    IMRoundToPixel();
    v14 = v13;
    IMRoundToPixel();
    v16 = v15;
    IMRoundToPixel();
    v18 = v17;
    IMRoundToPixel();
    [(MTNowPlayingIndicatorView *)self->_barsView setFrame:v18, v19, v14, v16];
    [(MTNowPlayingIndicatorView *)self->_barsView setMaximumLevelHeight:v24];
    [(MTNowPlayingIndicatorView *)self->_barsView setMinimumLevelHeight:v23];
    [(MTNowPlayingIndicatorView *)self->_barsView setLevelWidth:v22];
    [(MTNowPlayingIndicatorView *)self->_barsView setInterLevelSpacing:v21];
    barsView = self->_barsView;

    [(MTNowPlayingIndicatorView *)barsView setLevelCornerRadius:v10];
  }
}

@end