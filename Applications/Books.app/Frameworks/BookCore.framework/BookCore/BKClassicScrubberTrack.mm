@interface BKClassicScrubberTrack
- (void)_updateTrackForSize:(CGSize)a3;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setLayoutDirection:(int64_t)a3;
- (void)setLoadingProgress:(double)a3;
- (void)setReadingProgress:(double)a3;
- (void)setRoundEndCaps:(BOOL)a3;
- (void)setThickness:(double)a3;
- (void)setTrackBackgroundColor:(id)a3;
- (void)setTrackForegroundColor:(id)a3;
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
  v3 = [(BKClassicScrubberTrack *)self tintColor];
  [(UIView *)self->_progressView setBackgroundColor:v3];
}

- (void)_updateTrackForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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

      v7 = self;
      v8 = width;
    }

    else
    {
      v7 = self;
      v8 = height;
    }

    [(BKClassicScrubberTrack *)v7 setThickness:v8];
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
    v32 = [(UIView *)self->_trackBackgroundView layer];
    [v32 setCornerRadius:v31];

    v33 = [(UIView *)self->_trackBackgroundView layer];
    [v33 setMasksToBounds:1];
  }

  else
  {
    v34 = [(UIView *)self->_trackBackgroundView layer];
    [v34 setCornerRadius:0.0];

    v35 = [(UIView *)self->_trackBackgroundView layer];
    [v35 setMasksToBounds:0];
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

  v41 = [(UIView *)self->_progressView layer];
  [v41 setCornerRadius:v39];

  v42 = [(UIView *)self->_progressView layer];
  [v42 setMasksToBounds:roundEndCaps];

  v43 = +[UIColor clearColor];
  [(BKClassicScrubberTrack *)self setBackgroundColor:v43];

  v44 = [(BKScrubberTrack *)self trackBackgroundColor];
  if (v44)
  {
    p_trackBackgroundView = &self->_trackBackgroundView;
    [(UIView *)self->_trackBackgroundView setBackgroundColor:v44];
  }

  else
  {
    v46 = [UIColor colorWithWhite:0.7 alpha:1.0];
    p_trackBackgroundView = &self->_trackBackgroundView;
    [(UIView *)self->_trackBackgroundView setBackgroundColor:v46];
  }

  v47 = [(BKScrubberTrack *)self trackForegroundColor];
  if (v47)
  {
    [(UIView *)self->_progressView setBackgroundColor:v47];
  }

  else
  {
    v48 = [(BKClassicScrubberTrack *)self tintColor];
    [(UIView *)self->_progressView setBackgroundColor:v48];
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
    v57 = [(BKScrubberTrack *)self layoutDirection];
    if (v57 == 1)
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

    if (!v57)
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

- (void)setTrackBackgroundColor:(id)a3
{
  v4.receiver = self;
  v4.super_class = BKClassicScrubberTrack;
  [(BKScrubberTrack *)&v4 setTrackBackgroundColor:a3];
  [(BKClassicScrubberTrack *)self setNeedsLayout];
}

- (void)setTrackForegroundColor:(id)a3
{
  v4.receiver = self;
  v4.super_class = BKClassicScrubberTrack;
  [(BKScrubberTrack *)&v4 setTrackForegroundColor:a3];
  [(BKClassicScrubberTrack *)self setNeedsLayout];
}

- (void)setLayoutDirection:(int64_t)a3
{
  if ([(BKScrubberTrack *)self layoutDirection]!= a3)
  {
    v5.receiver = self;
    v5.super_class = BKClassicScrubberTrack;
    [(BKScrubberTrack *)&v5 setLayoutDirection:a3];
    [(BKClassicScrubberTrack *)self setNeedsLayout];
  }
}

- (void)setLoadingProgress:(double)a3
{
  if (self->super._loadingProgress != a3)
  {
    v7 = v3;
    v8 = v4;
    v6.receiver = self;
    v6.super_class = BKClassicScrubberTrack;
    [(BKScrubberTrack *)&v6 setLoadingProgress:?];
    [(BKClassicScrubberTrack *)self setNeedsLayout];
  }
}

- (void)setReadingProgress:(double)a3
{
  if (self->super._readingProgress != a3)
  {
    v7 = v3;
    v8 = v4;
    v6.receiver = self;
    v6.super_class = BKClassicScrubberTrack;
    [(BKScrubberTrack *)&v6 setReadingProgress:?];
    [(BKClassicScrubberTrack *)self setNeedsLayout];
  }
}

- (void)setThickness:(double)a3
{
  if (self->super._thickness != a3)
  {
    v7 = v3;
    v8 = v4;
    v6.receiver = self;
    v6.super_class = BKClassicScrubberTrack;
    [(BKScrubberTrack *)&v6 setThickness:?];
    [(BKClassicScrubberTrack *)self setNeedsLayout];
  }
}

- (void)setRoundEndCaps:(BOOL)a3
{
  if (self->super._roundEndCaps != a3)
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