@interface MusicDownloadProgressView
- (MusicDownloadProgressView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setCenterImage:(id)image;
- (void)setDownloadProgress:(double)progress;
- (void)setOuterRingColor:(id)color;
- (void)tintColorDidChange;
- (void)updateOuterRingColor;
@end

@implementation MusicDownloadProgressView

- (MusicDownloadProgressView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = MusicDownloadProgressView;
  v3 = [(MusicDownloadProgressView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [UIView alloc];
    [(MusicDownloadProgressView *)v3 bounds];
    v5 = [v4 initWithFrame:?];
    outerRingView = v3->_outerRingView;
    v3->_outerRingView = v5;

    [(UIView *)v3->_outerRingView setClipsToBounds:1];
    [(MusicDownloadProgressView *)v3 addSubview:v3->_outerRingView];
  }

  return v3;
}

- (void)layoutSubviews
{
  v28.receiver = self;
  v28.super_class = MusicDownloadProgressView;
  [(MusicDownloadProgressView *)&v28 layoutSubviews];
  traitCollection = [(MusicDownloadProgressView *)self traitCollection];
  [traitCollection displayScale];
  MTMPUFloatGetSafeScaleForValue();
  v5 = v4;
  v26 = v4;

  [(MusicDownloadProgressView *)self bounds];
  x = v29.origin.x;
  y = v29.origin.y;
  width = v29.size.width;
  height = v29.size.height;
  v10 = CGRectGetWidth(v29);
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  v11 = CGRectGetHeight(v30);
  if (v10 < v11)
  {
    v11 = v10;
  }

  v27 = v11 * 0.5;
  [(_MusicDownloadProgressRingView *)self->_progressView setFrame:x, y, width, height];
  [(UIImageView *)self->_centerImageView frame];
  [(UIImageView *)self->_centerImageView sizeThatFits:width, height];
  v25 = v5;
  UIRectCenteredIntegralRectScale();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [(UIImage *)self->_centerImage alignmentRectInsets];
  [(UIImageView *)self->_centerImageView setFrame:v13 + v23, v15 + v20, v17 - (v23 + v21), v19 - (v20 + v22)];
  [(UIView *)self->_outerRingView setFrame:x, y, width, height];
  layer = [(UIView *)self->_outerRingView layer];
  [layer setCornerRadius:v27];
  [layer setBorderWidth:1.0 / v26 + 2.0];
  [(MusicDownloadProgressView *)self updateOuterRingColor];
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = MusicDownloadProgressView;
  [(MusicDownloadProgressView *)&v3 tintColorDidChange];
  [(MusicDownloadProgressView *)self updateOuterRingColor];
}

- (void)setCenterImage:(id)image
{
  imageCopy = image;
  if (self->_centerImage != imageCopy)
  {
    v9 = imageCopy;
    objc_storeStrong(&self->_centerImage, image);
    centerImageView = self->_centerImageView;
    if (self->_centerImage)
    {
      if (!centerImageView)
      {
        v7 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
        v8 = self->_centerImageView;
        self->_centerImageView = v7;

        [(MusicDownloadProgressView *)self addSubview:self->_centerImageView];
        centerImageView = self->_centerImageView;
      }

      [(UIImageView *)centerImageView setHidden:0];
      [(UIImageView *)self->_centerImageView setImage:self->_centerImage];
    }

    else
    {
      [(UIImageView *)centerImageView setHidden:1];
    }

    [(MusicDownloadProgressView *)self setNeedsLayout];
    imageCopy = v9;
  }
}

- (void)setDownloadProgress:(double)progress
{
  if ((MTMPUFloatEqualToFloat() & 1) == 0)
  {
    self->_downloadProgress = progress;
    v5 = MTMPUFloatLessThanOrEqualToFloat();
    progressView = self->_progressView;
    if (v5)
    {
      [(_MusicDownloadProgressRingView *)progressView removeFromSuperview];
      v7 = self->_progressView;
      self->_progressView = 0;
    }

    else
    {
      if (!progressView)
      {
        v8[0] = _NSConcreteStackBlock;
        v8[1] = 3221225472;
        v8[2] = __49__MusicDownloadProgressView_setDownloadProgress___block_invoke;
        v8[3] = &unk_3B43C8;
        v8[4] = self;
        [UIView performWithoutAnimation:v8];
        progressView = self->_progressView;
      }

      [(_MusicDownloadProgressRingView *)progressView setProgress:self->_downloadProgress];
    }
  }
}

void __49__MusicDownloadProgressView_setDownloadProgress___block_invoke(uint64_t a1)
{
  v2 = [_MusicDownloadProgressRingView alloc];
  [*(a1 + 32) bounds];
  v3 = [(_MusicDownloadProgressRingView *)v2 initWithFrame:?];
  [*(a1 + 32) setProgressView:v3];

  v4 = [*(a1 + 32) progressView];
  [v4 setProgress:0.0];

  v5 = *(a1 + 32);
  v6 = [v5 progressView];
  [v5 addSubview:v6];
}

- (void)updateOuterRingColor
{
  v3 = +[UIColor secondarySystemBackgroundColor];
  [(MusicDownloadProgressView *)self setOuterRingColor:v3];
}

- (void)setOuterRingColor:(id)color
{
  outerRingView = self->_outerRingView;
  colorCopy = color;
  layer = [(UIView *)outerRingView layer];
  cGColor = [colorCopy CGColor];

  [layer setBorderColor:cGColor];
}

@end