@interface MusicDownloadProgressView
- (MusicDownloadProgressView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setCenterImage:(id)a3;
- (void)setDownloadProgress:(double)a3;
- (void)setOuterRingColor:(id)a3;
- (void)tintColorDidChange;
- (void)updateOuterRingColor;
@end

@implementation MusicDownloadProgressView

- (MusicDownloadProgressView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = MusicDownloadProgressView;
  v3 = [(MusicDownloadProgressView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v3 = [(MusicDownloadProgressView *)self traitCollection];
  [v3 displayScale];
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
  v24 = [(UIView *)self->_outerRingView layer];
  [v24 setCornerRadius:v27];
  [v24 setBorderWidth:1.0 / v26 + 2.0];
  [(MusicDownloadProgressView *)self updateOuterRingColor];
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = MusicDownloadProgressView;
  [(MusicDownloadProgressView *)&v3 tintColorDidChange];
  [(MusicDownloadProgressView *)self updateOuterRingColor];
}

- (void)setCenterImage:(id)a3
{
  v5 = a3;
  if (self->_centerImage != v5)
  {
    v9 = v5;
    objc_storeStrong(&self->_centerImage, a3);
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
    v5 = v9;
  }
}

- (void)setDownloadProgress:(double)a3
{
  if ((MTMPUFloatEqualToFloat() & 1) == 0)
  {
    self->_downloadProgress = a3;
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

- (void)setOuterRingColor:(id)a3
{
  outerRingView = self->_outerRingView;
  v4 = a3;
  v6 = [(UIView *)outerRingView layer];
  v5 = [v4 CGColor];

  [v6 setBorderColor:v5];
}

@end