@interface MPDownloadProgressView
- (MPDownloadProgressView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setCenterImage:(id)image;
- (void)setDownloadProgress:(double)downloadProgress;
- (void)setOuterRingColor:(id)color;
@end

@implementation MPDownloadProgressView

- (void)setOuterRingColor:(id)color
{
  colorCopy = color;
  if (self->_outerRingColor != colorCopy)
  {
    v7 = colorCopy;
    objc_storeStrong(&self->_outerRingColor, color);
    layer = [(UIView *)self->_outerRingView layer];
    [layer setBorderColor:{-[UIColor CGColor](self->_outerRingColor, "CGColor")}];

    colorCopy = v7;
  }
}

- (void)setDownloadProgress:(double)downloadProgress
{
  if (vabdd_f64(downloadProgress, self->_downloadProgress) >= 0.00000011920929)
  {
    self->_downloadProgress = downloadProgress;
    v4 = vabdd_f64(0.0, downloadProgress);
    progressView = self->_progressView;
    if (downloadProgress < 0.0 || v4 < 0.00000011920929)
    {
      [(_MPDownloadProgressRingView *)progressView removeFromSuperview];
      v7 = self->_progressView;
      self->_progressView = 0;
    }

    else
    {
      if (!progressView)
      {
        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 3221225472;
        v8[2] = __46__MPDownloadProgressView_setDownloadProgress___block_invoke;
        v8[3] = &unk_1E7682518;
        v8[4] = self;
        [MEMORY[0x1E69DD250] performWithoutAnimation:v8];
        progressView = self->_progressView;
        downloadProgress = self->_downloadProgress;
      }

      [(_MPDownloadProgressRingView *)progressView setProgress:downloadProgress, v4];
    }
  }
}

uint64_t __46__MPDownloadProgressView_setDownloadProgress___block_invoke(uint64_t a1)
{
  v2 = [_MPDownloadProgressRingView alloc];
  [*(a1 + 32) bounds];
  v3 = [(_MPDownloadProgressRingView *)v2 initWithFrame:?];
  v4 = *(a1 + 32);
  v5 = *(v4 + 424);
  *(v4 + 424) = v3;

  [*(*(a1 + 32) + 424) setProgress:0.0];
  v6 = *(a1 + 32);
  v7 = v6[53];

  return [v6 addSubview:v7];
}

- (void)setCenterImage:(id)image
{
  imageCopy = image;
  if (self->_centerImage != imageCopy)
  {
    v10 = imageCopy;
    objc_storeStrong(&self->_centerImage, image);
    centerImageView = self->_centerImageView;
    if (self->_centerImage)
    {
      if (!centerImageView)
      {
        v7 = objc_alloc(MEMORY[0x1E69DCAE0]);
        v8 = [v7 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
        v9 = self->_centerImageView;
        self->_centerImageView = v8;

        [(MPDownloadProgressView *)self addSubview:self->_centerImageView];
        centerImageView = self->_centerImageView;
      }

      [(UIImageView *)centerImageView setHidden:0];
      [(UIImageView *)self->_centerImageView setImage:self->_centerImage];
    }

    else
    {
      [(UIImageView *)centerImageView setHidden:1];
    }

    [(MPDownloadProgressView *)self setNeedsLayout];
    imageCopy = v10;
  }
}

- (void)layoutSubviews
{
  v28.receiver = self;
  v28.super_class = MPDownloadProgressView;
  [(MPDownloadProgressView *)&v28 layoutSubviews];
  traitCollection = [(MPDownloadProgressView *)self traitCollection];
  [traitCollection displayScale];
  SafeScaleForValue = MPFloatGetSafeScaleForValue(v4);
  v26 = SafeScaleForValue;

  [(MPDownloadProgressView *)self bounds];
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
  [(_MPDownloadProgressRingView *)self->_progressView setFrame:x, y, width, height];
  [(UIImageView *)self->_centerImageView frame];
  [(UIImageView *)self->_centerImageView sizeThatFits:width, height];
  v25 = SafeScaleForValue;
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
}

- (MPDownloadProgressView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = MPDownloadProgressView;
  v3 = [(MPDownloadProgressView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DD250]);
    [(MPDownloadProgressView *)v3 bounds];
    v5 = [v4 initWithFrame:?];
    outerRingView = v3->_outerRingView;
    v3->_outerRingView = v5;

    [(UIView *)v3->_outerRingView setClipsToBounds:1];
    [(MPDownloadProgressView *)v3 addSubview:v3->_outerRingView];
  }

  return v3;
}

@end