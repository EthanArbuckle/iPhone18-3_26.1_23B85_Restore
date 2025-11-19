@interface COSTargetOverlayView
- (CGRect)targetRect;
- (COSTargetOverlayView)initWithFrame:(CGRect)a3;
- (void)_checkForProximateAgaveDevice;
- (void)_configureMetrics;
- (void)_setupSubviews;
- (void)_updateProgressViewFrame:(float)a3;
- (void)_updateSubviews;
- (void)layoutSubviews;
- (void)removeAnimation;
- (void)setScanningProgress:(double)a3 key:(id)a4;
@end

@implementation COSTargetOverlayView

- (COSTargetOverlayView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = COSTargetOverlayView;
  v3 = [(COSTargetOverlayView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_usingAgaveReticuleMetrics = 0;
    [(COSTargetOverlayView *)v3 _checkForProximateAgaveDevice];
    [(COSTargetOverlayView *)v4 _setupSubviews];
    v5 = +[UIColor clearColor];
    [(COSTargetOverlayView *)v4 setBackgroundColor:v5];
  }

  return v4;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = COSTargetOverlayView;
  [(COSTargetOverlayView *)&v3 layoutSubviews];
  [(COSTargetOverlayView *)self _updateSubviews];
}

- (void)setScanningProgress:(double)a3 key:(id)a4
{
  v18 = a4;
  if (a3 > 0.0 && self->_cachedProgress != a3)
  {
    [(NSTimer *)self->_progressTimer invalidate];
    progressTimer = self->_progressTimer;
    self->_progressTimer = 0;

    v7 = [NSTimer scheduledTimerWithTimeInterval:self target:"removeAnimation" selector:0 userInfo:0 repeats:2.0];
    v8 = self->_progressTimer;
    self->_progressTimer = v7;

    if (self->_cachedProgress == -1.0 || [(COSTargetProgressView *)self->_progressView isHidden])
    {
      [(COSTargetProgressView *)self->_progressView setHidden:0];
      progressView = self->_progressView;
      v10 = +[UIColor systemYellowColor];
      [(COSTargetProgressView *)progressView animateToColor:v10];

      if (!self->_firstReadDone)
      {
        v11 = [(COSTargetOverlayView *)self outlineView];
        [v11 setHidden:1];

        [(COSTargetProgressView *)self->_progressView pulseAnimation];
        [(COSTargetBackgroundView *)self->_backgroundView pulseBackground];
        self->_firstReadDone = 1;
      }
    }

    if (a3 >= 1.0)
    {
      v12 = self->_progressView;
      v13 = +[UIColor greenColor];
      [(COSTargetProgressView *)v12 animateToColor:v13];

      [(NSTimer *)self->_progressTimer invalidate];
      v14 = self->_progressTimer;
      self->_progressTimer = 0;
    }
  }

  v15 = MGGetBoolAnswer();
  v17 = v18;
  if (v15)
  {
    if (v18 || (cachedProgress = self->_cachedProgress, cachedProgress != a3))
    {
      if (v18)
      {
        [(UILabel *)self->_progressLabel setText:v18];
      }

      *&cachedProgress = a3;
      [(COSTargetOverlayView *)self _updateProgressViewFrame:cachedProgress];
      v17 = v18;
    }
  }

  self->_cachedProgress = a3;
}

- (void)removeAnimation
{
  self->_firstReadDone = 0;
  v3 = [(COSTargetOverlayView *)self outlineView];
  [v3 setHidden:0];

  self->_cachedProgress = -1.0;
  [(COSTargetBackgroundView *)self->_backgroundView removeAnimation];
  progressView = self->_progressView;

  [(COSTargetProgressView *)progressView removeAnimation];
}

- (void)_updateProgressViewFrame:(float)a3
{
  p_targetRect = &self->_targetRect;
  MinX = CGRectGetMinX(self->_targetRect);
  CGRectGetMaxY(*p_targetRect);
  Width = CGRectGetWidth(*p_targetRect);
  BPSCurrentScreenType();
  progressLabel = self->_progressLabel;
  v9 = fmin(fmax(a3, 0.0), 1.0) * Width;

  [(UILabel *)progressLabel setFrame:MinX, 0.0, v9, 10.0];
}

- (void)_setupSubviews
{
  [(COSTargetOverlayView *)self _configureMetrics];
  v3 = [[COSTargetBackgroundView alloc] initWithCutoutPath:self->_cutoutPath gradientHeight:self->_gradientHeight];
  [(COSTargetOverlayView *)self setBackgroundView:v3];

  [(COSTargetOverlayView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(COSTargetOverlayView *)self backgroundView];
  [v12 setFrame:{v5, v7, v9, v11}];

  v13 = [(COSTargetOverlayView *)self backgroundView];
  [(COSTargetOverlayView *)self addSubview:v13];

  v14 = [[COSTargetOutlineView alloc] initWithOutlinePath:self->_cutoutPath];
  [(COSTargetOverlayView *)self setOutlineView:v14];

  [(COSTargetOverlayView *)self bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = [(COSTargetOverlayView *)self outlineView];
  [v23 setFrame:{v16, v18, v20, v22}];

  v24 = [(COSTargetOverlayView *)self outlineView];
  [(COSTargetOverlayView *)self addSubview:v24];

  v25 = [[COSTargetProgressView alloc] initWithOutlinePath:self->_cutoutPath];
  [(COSTargetOverlayView *)self setProgressView:v25];

  [(COSTargetOverlayView *)self bounds];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = [(COSTargetOverlayView *)self progressView];
  [v34 setFrame:{v27, v29, v31, v33}];

  v35 = [(COSTargetOverlayView *)self progressView];
  [(COSTargetOverlayView *)self addSubview:v35];

  if (MGGetBoolAnswer())
  {
    self->_cachedProgress = -1.0;
    v36 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    progressLabel = self->_progressLabel;
    self->_progressLabel = v36;

    v38 = +[UIColor greenColor];
    v39 = [v38 colorWithAlphaComponent:0.5];
    [(UILabel *)self->_progressLabel setBackgroundColor:v39];

    v40 = +[UIColor whiteColor];
    [(UILabel *)self->_progressLabel setTextColor:v40];

    v41 = [UIFont systemFontOfSize:7.0];
    [(UILabel *)self->_progressLabel setFont:v41];

    [(UILabel *)self->_progressLabel setNumberOfLines:0];
    v42 = [(UILabel *)self->_progressLabel layer];
    [v42 setCornerRadius:4.0];

    [(UILabel *)self->_progressLabel setClipsToBounds:1];
    [(COSTargetOverlayView *)self addSubview:self->_progressLabel];
    LODWORD(v43) = -1.0;

    [(COSTargetOverlayView *)self _updateProgressViewFrame:v43];
  }
}

- (void)_updateSubviews
{
  [(COSTargetOverlayView *)self _configureMetrics];
  cutoutPath = self->_cutoutPath;
  v4 = [(COSTargetOverlayView *)self backgroundView];
  [v4 setCutoutPath:cutoutPath];

  gradientHeight = self->_gradientHeight;
  v6 = [(COSTargetOverlayView *)self backgroundView];
  [v6 setGradientHeight:gradientHeight];

  v7 = [(COSTargetOverlayView *)self backgroundView];
  [v7 setNeedsDisplay];

  v8 = self->_cutoutPath;
  v9 = [(COSTargetOverlayView *)self outlineView];
  [v9 setOutlinePath:v8];

  v10 = [(COSTargetOverlayView *)self outlineView];
  [v10 setNeedsDisplay];

  v11 = self->_cutoutPath;
  v12 = [(COSTargetOverlayView *)self progressView];
  [v12 setOutlinePath:v11];

  v13 = [(COSTargetOverlayView *)self progressView];
  [v13 setNeedsDisplay];
}

- (void)_configureMetrics
{
  self->_targetAspect = 0.865;
  self->_targetWidthRatio = 0.46;
  if (self->_usingAgaveReticuleMetrics)
  {
    self->_targetAspect = 0.817;
    v3 = 0.263;
  }

  else
  {
    v3 = 0.2;
  }

  v4 = BPSCurrentScreenType();
  v5 = MGGetProductType();
  if (v5 > 1872992316)
  {
    if (v5 <= 3048527335)
    {
      if (v5 == 1872992317 || v5 == 2021146989)
      {
        goto LABEL_24;
      }

      v6 = 2795618603;
    }

    else if (v5 > 3591055298)
    {
      if (v5 == 4201643249)
      {
        goto LABEL_24;
      }

      v6 = 3591055299;
    }

    else
    {
      if (v5 == 3048527336)
      {
        goto LABEL_24;
      }

      v6 = 3585085679;
    }
  }

  else if (v5 <= 1060988940)
  {
    if (v5 == 330877086 || v5 == 574536383)
    {
      goto LABEL_24;
    }

    v6 = 851437781;
  }

  else
  {
    if (v5 <= 1434404432)
    {
      if (v5 != 1060988941)
      {
        v6 = 1260109173;
        goto LABEL_23;
      }

LABEL_24:
      v7 = v5 == 2080700391 && v4 == 5;
      v8 = 0.31;
      if (v7)
      {
        v8 = 0.55;
      }

      goto LABEL_29;
    }

    if (v5 == 1434404433)
    {
      goto LABEL_24;
    }

    v6 = 1781728947;
  }

LABEL_23:
  if (v5 == v6)
  {
    goto LABEL_24;
  }

  if (v4 == 5 && v5 == 2080700391)
  {
    v8 = 0.55;
  }

  else if (v4 == 4)
  {
    v8 = 0.51;
  }

  else
  {
    if (v4 != 1)
    {
      goto LABEL_30;
    }

    v8 = 0.54;
    if (self->_usingAgaveReticuleMetrics)
    {
      v8 = 0.51;
    }
  }

LABEL_29:
  self->_targetWidthRatio = v8;
LABEL_30:
  [(COSTargetOverlayView *)self bounds];
  v10 = ceil(self->_targetWidthRatio * v9);
  v11 = v10 / self->_targetAspect;
  self->_targetRect.origin.x = (v9 - v10) * 0.5;
  self->_targetRect.origin.y = (v12 - v11) * 0.5;
  self->_targetRect.size.width = v10;
  self->_targetRect.size.height = v11;
  self->_targetCornerRadius = v3 * v10;
  v13 = [UIBezierPath bezierPathWithRoundedRect:self->_targetRect.origin.x cornerRadius:self->_targetRect.origin.y, self->_targetRect.size.width, self->_targetRect.size.height];
  cutoutPath = self->_cutoutPath;
  self->_cutoutPath = v13;

  self->_gradientHeight = 0.0;
}

- (void)_checkForProximateAgaveDevice
{
  objc_initWeak(&location, self);
  v2 = dispatch_get_global_queue(33, 0);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000F5168;
  v3[3] = &unk_100268430;
  objc_copyWeak(&v4, &location);
  dispatch_async(v2, v3);

  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (CGRect)targetRect
{
  x = self->_targetRect.origin.x;
  y = self->_targetRect.origin.y;
  width = self->_targetRect.size.width;
  height = self->_targetRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end