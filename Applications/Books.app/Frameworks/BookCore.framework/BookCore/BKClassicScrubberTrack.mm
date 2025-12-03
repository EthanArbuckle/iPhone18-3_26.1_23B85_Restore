@interface BKClassicScrubberTrack
- (void)_updateTrackForSize:(CGSize)size;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setLayoutDirection:(int64_t)direction;
- (void)setLoadingProgress:(double)progress;
- (void)setReadingProgress:(double)progress;
- (void)setRoundEndCaps:(BOOL)caps;
- (void)setThickness:(double)thickness;
- (void)setTrackBackgroundColor:(id)color;
- (void)setTrackForegroundColor:(id)color;
- (void)tintColorDidChange;
@end

@implementation BKClassicScrubberTrack

- (void)dealloc
{
  progressView = self->_progressView;
  self->_progressView = 0;

  trackBackgroundView = self->_trackBackgroundView;
  self->_trackBackgroundView = 0;

  v5.receiver = self;
  v5.super_class = BKClassicScrubberTrack;
  [(BKClassicScrubberTrack *)&v5 dealloc];
}

- (void)tintColorDidChange
{
  tintColor = [(BKClassicScrubberTrack *)self tintColor];
  [(UIView *)self->_progressView setBackgroundColor:tintColor];
}

- (void)_updateTrackForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  y = CGRectZero.origin.y;
  v69 = CGRectZero.size.height;
  v70 = CGRectZero.size.width;
  if (self->super._modern)
  {
    if ([(BKScrubberTrack *)self trackOrientation])
    {
      if ([(BKScrubberTrack *)self trackOrientation]!= 1)
      {
LABEL_12:
        v10 = y;
        x = CGRectZero.origin.x;
        goto LABEL_15;
      }

      selfCopy2 = self;
      v8 = width;
    }

    else
    {
      selfCopy2 = self;
      v8 = height;
    }

    [(BKClassicScrubberTrack *)selfCopy2 setThickness:v8];
    goto LABEL_12;
  }

  [(BKScrubberTrack *)self thickness];
  if (v9 == 0.0)
  {
    [(BKClassicScrubberTrack *)self setThickness:2.0];
  }

  if (![(BKScrubberTrack *)self trackOrientation]|| [(BKScrubberTrack *)self trackOrientation]== 1)
  {
    [(BKScrubberTrack *)self thickness];
  }

  [(BKClassicScrubberTrack *)self bounds];
  CGRectCenterRectInRect();
  x = v12;
  v10 = v13;
  width = v14;
  height = v15;
LABEL_15:
  v16 = +[UIScreen mainScreen];
  [v16 scale];
  v18 = v17;

  v19 = x * v18;
  v20 = floorf(v19) / v18;
  v21 = v10 * v18;
  v22 = floorf(v21) / v18;
  if (v18 > 0.0)
  {
    v10 = v22;
    x = v20;
  }

  [(BKScrubberTrack *)self readingProgress];
  v24 = fmax(v23, 0.0);
  v25 = 1.0;
  if (v24 > 1.0)
  {
    v24 = 1.0;
  }

  v68 = v24;
  [(BKScrubberTrack *)self loadingProgress];
  v27 = fmax(v26, 0.0);
  if (v27 <= 1.0)
  {
    v25 = v27;
  }

  if (!self->super._modern && !self->_trackBackgroundView)
  {
    v28 = objc_alloc_init(UIView);
    trackBackgroundView = self->_trackBackgroundView;
    self->_trackBackgroundView = v28;

    [(BKClassicScrubberTrack *)self addSubview:self->_trackBackgroundView];
  }

  if (self->super._roundEndCaps)
  {
    v72.receiver = self;
    v72.super_class = BKClassicScrubberTrack;
    [(BKScrubberTrack *)&v72 thickness];
    v31 = v30 * 0.5;
    layer = [(UIView *)self->_trackBackgroundView layer];
    [layer setCornerRadius:v31];

    layer2 = [(UIView *)self->_trackBackgroundView layer];
    [layer2 setMasksToBounds:1];
  }

  else
  {
    layer3 = [(UIView *)self->_trackBackgroundView layer];
    [layer3 setCornerRadius:0.0];

    layer4 = [(UIView *)self->_trackBackgroundView layer];
    [layer4 setMasksToBounds:0];
  }

  if (!self->_progressView)
  {
    v36 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, v70, v69}];
    progressView = self->_progressView;
    self->_progressView = v36;

    [(BKClassicScrubberTrack *)self addSubview:self->_progressView];
  }

  roundEndCaps = self->super._roundEndCaps;
  v39 = 0.0;
  if (roundEndCaps)
  {
    v71.receiver = self;
    v71.super_class = BKClassicScrubberTrack;
    [(BKScrubberTrack *)&v71 thickness];
    v39 = v40 * 0.5;
  }

  layer5 = [(UIView *)self->_progressView layer];
  [layer5 setCornerRadius:v39];

  layer6 = [(UIView *)self->_progressView layer];
  [layer6 setMasksToBounds:roundEndCaps];

  v43 = +[UIColor clearColor];
  [(BKClassicScrubberTrack *)self setBackgroundColor:v43];

  trackBackgroundColor = [(BKScrubberTrack *)self trackBackgroundColor];
  if (trackBackgroundColor)
  {
    p_trackBackgroundView = &self->_trackBackgroundView;
    [(UIView *)self->_trackBackgroundView setBackgroundColor:trackBackgroundColor];
  }

  else
  {
    v46 = [UIColor colorWithWhite:0.7 alpha:1.0];
    p_trackBackgroundView = &self->_trackBackgroundView;
    [(UIView *)self->_trackBackgroundView setBackgroundColor:v46];
  }

  trackForegroundColor = [(BKScrubberTrack *)self trackForegroundColor];
  if (trackForegroundColor)
  {
    [(UIView *)self->_progressView setBackgroundColor:trackForegroundColor];
  }

  else
  {
    tintColor = [(BKClassicScrubberTrack *)self tintColor];
    [(UIView *)self->_progressView setBackgroundColor:tintColor];
  }

  if (self->super._modern)
  {
    v49 = 0.0;
    if (self->super._loadingProgress < 1.0)
    {
      v49 = 1.0;
    }

    [(UIView *)self->_progressView setAlpha:v49];
  }

  if (![(BKScrubberTrack *)self trackOrientation])
  {
    layoutDirection = [(BKScrubberTrack *)self layoutDirection];
    if (layoutDirection == 1)
    {
      if (v25 == 1.0)
      {
        v81.origin.x = x;
        v81.origin.y = v10;
        v81.size.width = width;
        v81.size.height = height;
        v61 = (1.0 - v68) * CGRectGetWidth(v81);
        v62 = roundf(v61);
        v56 = v62;
        if (self->super._roundEndCaps)
        {
          v63 = width;
        }

        else
        {
          v63 = v62;
        }

        v82.origin.x = x;
        v82.origin.y = v10;
        v82.size.width = width;
        v82.size.height = height;
        v55 = CGRectGetWidth(v82) - v56;
      }

      else
      {
        v83.origin.x = x;
        v83.origin.y = v10;
        v83.size.width = width;
        v83.size.height = height;
        v66 = v25 * CGRectGetWidth(v83);
        v63 = roundf(v66);
        v84.origin.x = x;
        v84.origin.y = v10;
        v84.size.width = width;
        v84.size.height = height;
        v67 = CGRectGetWidth(v84);
        v85.origin.x = x;
        v85.origin.y = v10;
        v85.size.width = v63;
        v85.size.height = height;
        v56 = x;
        x = v67 - CGRectGetWidth(v85);
        v55 = 0.0;
      }

      v52 = height;
      width = v63;
      goto LABEL_60;
    }

    if (!layoutDirection)
    {
      v77.origin.x = x;
      v77.origin.y = v10;
      v77.size.width = width;
      v77.size.height = height;
      v58 = CGRectGetWidth(v77);
      if (v25 == 1.0)
      {
        v59 = v68 * v58;
        v55 = roundf(v59);
        if (!self->super._roundEndCaps)
        {
          v78.origin.x = x;
          v78.origin.y = v10;
          v78.size.width = width;
          v78.size.height = height;
          v60 = CGRectGetWidth(v78);
          v79.origin.x = x;
          v79.origin.y = v10;
          v79.size.width = v55;
          v79.size.height = height;
          width = v60 - CGRectGetWidth(v79);
          v80.origin.x = x;
          v80.origin.y = v10;
          v80.size.width = v55;
          v80.size.height = height;
          v56 = x;
          v52 = height;
          v54 = v10;
          x = CGRectGetWidth(v80);
          goto LABEL_61;
        }
      }

      else
      {
        v65 = v25 * v58;
        width = roundf(v65);
        v55 = 0.0;
      }

      v52 = height;
      goto LABEL_59;
    }

    goto LABEL_51;
  }

  if ([(BKScrubberTrack *)self trackOrientation]!= 1)
  {
LABEL_51:
    v52 = height;
    goto LABEL_58;
  }

  v73.origin.x = x;
  v73.origin.y = v10;
  v73.size.width = width;
  v73.size.height = height;
  v50 = CGRectGetHeight(v73);
  if (v25 != 1.0)
  {
    v64 = v25 * v50;
    height = roundf(v64);
    v52 = 0.0;
    goto LABEL_58;
  }

  v51 = v68 * v50;
  v52 = roundf(v51);
  if (self->super._roundEndCaps)
  {
LABEL_58:
    v55 = width;
LABEL_59:
    v56 = x;
LABEL_60:
    v54 = v10;
    goto LABEL_61;
  }

  v74.origin.x = x;
  v74.origin.y = v10;
  v74.size.width = width;
  v74.size.height = height;
  v53 = CGRectGetHeight(v74);
  v75.origin.x = x;
  v75.origin.y = v10;
  v75.size.width = width;
  v75.size.height = v52;
  height = v53 - CGRectGetHeight(v75);
  v76.origin.x = x;
  v76.origin.y = v10;
  v76.size.width = width;
  v76.size.height = v52;
  v54 = CGRectGetHeight(v76);
  v55 = width;
  v56 = x;
LABEL_61:
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  [(UIView *)*p_trackBackgroundView setFrame:x, v54, width, height];
  [(UIView *)self->_progressView setFrame:v56, v10, v55, v52];
  +[CATransaction commit];
}

- (void)layoutSubviews
{
  [(BKClassicScrubberTrack *)self bounds];

  [(BKClassicScrubberTrack *)self _updateTrackForSize:v3, v4];
}

- (void)setTrackBackgroundColor:(id)color
{
  v4.receiver = self;
  v4.super_class = BKClassicScrubberTrack;
  [(BKScrubberTrack *)&v4 setTrackBackgroundColor:color];
  [(BKClassicScrubberTrack *)self setNeedsLayout];
}

- (void)setTrackForegroundColor:(id)color
{
  v4.receiver = self;
  v4.super_class = BKClassicScrubberTrack;
  [(BKScrubberTrack *)&v4 setTrackForegroundColor:color];
  [(BKClassicScrubberTrack *)self setNeedsLayout];
}

- (void)setLayoutDirection:(int64_t)direction
{
  if ([(BKScrubberTrack *)self layoutDirection]!= direction)
  {
    v5.receiver = self;
    v5.super_class = BKClassicScrubberTrack;
    [(BKScrubberTrack *)&v5 setLayoutDirection:direction];
    [(BKClassicScrubberTrack *)self setNeedsLayout];
  }
}

- (void)setLoadingProgress:(double)progress
{
  if (self->super._loadingProgress != progress)
  {
    v7 = v3;
    v8 = v4;
    v6.receiver = self;
    v6.super_class = BKClassicScrubberTrack;
    [(BKScrubberTrack *)&v6 setLoadingProgress:?];
    [(BKClassicScrubberTrack *)self setNeedsLayout];
  }
}

- (void)setReadingProgress:(double)progress
{
  if (self->super._readingProgress != progress)
  {
    v7 = v3;
    v8 = v4;
    v6.receiver = self;
    v6.super_class = BKClassicScrubberTrack;
    [(BKScrubberTrack *)&v6 setReadingProgress:?];
    [(BKClassicScrubberTrack *)self setNeedsLayout];
  }
}

- (void)setThickness:(double)thickness
{
  if (self->super._thickness != thickness)
  {
    v7 = v3;
    v8 = v4;
    v6.receiver = self;
    v6.super_class = BKClassicScrubberTrack;
    [(BKScrubberTrack *)&v6 setThickness:?];
    [(BKClassicScrubberTrack *)self setNeedsLayout];
  }
}

- (void)setRoundEndCaps:(BOOL)caps
{
  if (self->super._roundEndCaps != caps)
  {
    v7 = v3;
    v8 = v4;
    v6.receiver = self;
    v6.super_class = BKClassicScrubberTrack;
    [(BKScrubberTrack *)&v6 setRoundEndCaps:?];
    [(BKClassicScrubberTrack *)self setNeedsLayout];
  }
}

@end