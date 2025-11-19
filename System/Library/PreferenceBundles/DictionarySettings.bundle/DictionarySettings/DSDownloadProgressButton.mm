@interface DSDownloadProgressButton
+ (id)_finishedImageForLayoutSize:(CGSize)a3 traitCollection:(id)a4;
- (BOOL)_needsAddToLibraryOrDownloadImageViewForProgressType:(int64_t)a3;
- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (BOOL)continueTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (DSDownloadProgressButton)initWithStyle:(int64_t)a3;
- (id)_addToLibraryOrDownloadImage;
- (void)_handleDisplayLinkDidFire:(id)a3;
- (void)_reloadForCurrentStateForInitialSetup:(BOOL)a3 previousProgressType:(int64_t)a4;
- (void)_stopProgressAnimation;
- (void)cancelTrackingWithEvent:(id)a3;
- (void)dealloc;
- (void)drawRect:(CGRect)a3;
- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (void)layoutSubviews;
- (void)setProgressType:(int64_t)a3;
- (void)tintColorDidChange;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation DSDownloadProgressButton

- (DSDownloadProgressButton)initWithStyle:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = DSDownloadProgressButton;
  v4 = [(DSDownloadProgressButton *)&v7 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v5 = v4;
  if (v4)
  {
    v4->_style = a3;
    [(DSDownloadProgressButton *)v4 setOpaque:0];
    [(DSDownloadProgressButton *)v5 setUserInteractionEnabled:v5->_style == 1];
    [(DSDownloadProgressButton *)v5 sizeToFit];
    [(DSDownloadProgressButton *)v5 _reloadForCurrentStateForInitialSetup:1 previousProgressType:0];
  }

  return v5;
}

- (void)dealloc
{
  [(DSDownloadProgressButton *)self removeTarget:self forEvents:0xFFFFFFFFLL];
  [(CADisplayLink *)self->_displayLink invalidate];
  v3.receiver = self;
  v3.super_class = DSDownloadProgressButton;
  [(DSDownloadProgressButton *)&v3 dealloc];
}

- (void)drawRect:(CGRect)a3
{
  if (![(DSDownloadProgressButton *)self _usesDrawingForProgressType:self->_progressType, a3.origin.x, a3.origin.y, a3.size.width, a3.size.height])
  {
    return;
  }

  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  v28 = [(DSDownloadProgressButton *)self tintColor];
  v5 = [(DSDownloadProgressButton *)self traitCollection];
  [v5 displayScale];
  MPUFloatGetSafeScaleForValue();

  [(DSDownloadProgressButton *)self bounds];
  x = v30.origin.x;
  y = v30.origin.y;
  width = v30.size.width;
  height = v30.size.height;
  CGRectGetMidX(v30);
  MPUFloatRoundForScale();
  v11 = v10;
  v31.origin.x = x;
  v31.origin.y = y;
  v31.size.width = width;
  v31.size.height = height;
  CGRectGetMidY(v31);
  MPUFloatRoundForScale();
  v13 = v12;
  v32.origin.x = x;
  v32.origin.y = y;
  v32.size.width = width;
  v32.size.height = height;
  CGRectGetWidth(v32);
  v33.origin.x = x;
  v33.origin.y = y;
  v33.size.width = width;
  v33.size.height = height;
  CGRectGetHeight(v33);
  MPUFloatFloorForScale();
  v15 = v14;
  progressType = self->_progressType;
  if (progressType == 3)
  {
    if (self->_isAnimatingProgress)
    {
      v23 = &OBJC_IVAR___DSDownloadProgressButton__currentAnimatedProgress;
    }

    else
    {
      v23 = &OBJC_IVAR___DSDownloadProgressButton__progress;
    }

    v24 = *(&self->super.super.super.super.isa + *v23) * 6.28318531 + -1.57079633;
    v25 = [v28 colorWithAlphaComponent:1.0];
    CGContextSetFillColorWithColor(CurrentContext, [v25 CGColor]);

    v19 = objc_alloc_init(UIBezierPath);
    [v19 moveToPoint:{v11, v13}];
    [v19 addLineToPoint:{v11, 0.0}];
    [v19 addArcWithCenter:1 radius:v11 startAngle:v13 endAngle:v15 clockwise:{-1.57079633, v24}];
    [v19 closePath];
    [v19 fill];
    v26 = [v28 colorWithAlphaComponent:0.2];
    CGContextSetFillColorWithColor(CurrentContext, [v26 CGColor]);

    v27 = objc_alloc_init(UIBezierPath);
    [v27 moveToPoint:{v11, v13}];
    [v27 addLineToPoint:{v11, 0.0}];
    [v27 addArcWithCenter:0 radius:v11 startAngle:v13 endAngle:v15 clockwise:{-1.57079633, v24}];
    [v27 closePath];
    [v27 fill];

    goto LABEL_12;
  }

  if (progressType == 2)
  {
    v17 = [v28 colorWithAlphaComponent:0.4];
    CGContextSetStrokeColorWithColor(CurrentContext, [v17 CGColor]);

    v18 = v15 + -0.5;
    v19 = objc_alloc_init(UIBezierPath);
    [v19 setLineJoinStyle:1];
    [v19 setLineCapStyle:1];
    [v19 setLineWidth:1.0];
    v20 = -1.57079633;
    v21 = 5;
    do
    {
      v22 = __sincos_stret(v20);
      [v19 moveToPoint:{v11 + v18 * v22.__cosval, v13 + v18 * v22.__sinval}];
      [v19 addArcWithCenter:0 radius:v11 startAngle:v13 endAngle:v18 clockwise:{v20, v20 + -0.628318531}];
      v20 = v20 + -1.25663706;
      --v21;
    }

    while (v21);
    [v19 stroke];
LABEL_12:
  }

  CGContextRestoreGState(CurrentContext);
}

- (void)layoutSubviews
{
  v23.receiver = self;
  v23.super_class = DSDownloadProgressButton;
  [(DSDownloadProgressButton *)&v23 layoutSubviews];
  v3 = [(DSDownloadProgressButton *)self traitCollection];
  [v3 displayScale];
  v5 = v4;
  [(DSDownloadProgressButton *)self bounds];
  v7 = v6;
  v9 = v8;
  addToLibraryOrDownloadImageView = self->_addToLibraryOrDownloadImageView;
  if (addToLibraryOrDownloadImageView && ([(UIImageView *)addToLibraryOrDownloadImageView isHidden]& 1) == 0)
  {
    y = CGRectZero.origin.y;
    v12 = [(UIImageView *)self->_addToLibraryOrDownloadImageView image];
    [v12 size];

    UIRectCenteredXInRectScale();
    UIRectCenteredYInRectScale();
    [(UIImageView *)self->_addToLibraryOrDownloadImageView MPU_applyBoundsAndCenterForUntransformedFrame:v5];
  }

  finishedImageView = self->_finishedImageView;
  if (finishedImageView && ([(UIImageView *)finishedImageView isHidden]& 1) == 0)
  {
    width = self->_lastLayoutSize.width;
    height = self->_lastLayoutSize.height;
    if (!MPUSizeEqualToSize() || ([(UIImageView *)self->_finishedImageView image], v16 = objc_claimAutoreleasedReturnValue(), v16, !v16))
    {
      v17 = [objc_opt_class() _finishedImageForLayoutSize:v3 traitCollection:{v7, v9}];
      [(UIImageView *)self->_finishedImageView setImage:v17];
    }

    v18 = CGRectZero.origin.y;
    v19 = [(UIImageView *)self->_finishedImageView image];
    [v19 size];

    UIRectCenteredXInRectScale();
    UIRectCenteredYInRectScale();
    [(UIImageView *)self->_finishedImageView MPU_applyBoundsAndCenterForUntransformedFrame:v5];
  }

  itemOfferButton = self->_itemOfferButton;
  if (itemOfferButton && ([(SUUIItemOfferButton *)itemOfferButton isHidden]& 1) == 0)
  {
    v21 = CGRectZero.origin.y;
    UIRectCenteredYInRectScale();
    UIRectCenteredXInRectScale();
    v22 = self->_itemOfferButton;
    MPURectByApplyingUserInterfaceLayoutDirectionInRect();
    [(SUUIItemOfferButton *)v22 MPU_applyBoundsAndCenterForUntransformedFrame:v5];
  }

  self->_lastLayoutSize.width = v7;
  self->_lastLayoutSize.height = v9;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v17.receiver = self;
  v17.super_class = DSDownloadProgressButton;
  if ([(DSDownloadProgressButton *)&v17 pointInside:a4 withEvent:?])
  {
    return 1;
  }

  [(DSDownloadProgressButton *)self bounds];
  v8 = v19.origin.x;
  v9 = v19.origin.y;
  width = v19.size.width;
  height = v19.size.height;
  v12 = CGRectGetWidth(v19);
  if (v12 >= 44.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = (44.0 - v12) * 0.5;
  }

  v20.origin.x = v8;
  v20.origin.y = v9;
  v20.size.width = width;
  v20.size.height = height;
  v14 = CGRectGetHeight(v20);
  if (v14 >= 44.0)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = (44.0 - v14) * 0.5;
  }

  if (v13 <= 0.0 && v15 <= 0.0)
  {
    return 0;
  }

  v16 = -v15;
  v21.origin.x = v8;
  v21.origin.y = v9;
  v21.size.width = width;
  v21.size.height = height;
  v22 = CGRectInset(v21, -v13, v16);
  v18.x = x;
  v18.y = y;
  return CGRectContainsPoint(v22, v18);
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  style = self->_style;
  if (style == 1)
  {
    width = 26.0;
    height = 24.0;
  }

  else
  {
    width = CGSizeZero.width;
    height = CGSizeZero.height;
    if (!style)
    {
      height = 10.0;
      width = 10.0;
    }
  }

  result.height = height;
  result.width = width;
  return result;
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = DSDownloadProgressButton;
  [(DSDownloadProgressButton *)&v3 tintColorDidChange];
  if ([(DSDownloadProgressButton *)self _usesDrawingForProgressType:self->_progressType])
  {
    [(DSDownloadProgressButton *)self setNeedsDisplay];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v6.receiver = self;
  v6.super_class = DSDownloadProgressButton;
  v4 = a3;
  [(DSDownloadProgressButton *)&v6 traitCollectionDidChange:v4];
  [v4 displayScale];

  v5 = [(DSDownloadProgressButton *)self traitCollection];
  [v5 displayScale];
  LOBYTE(v4) = MPUFloatEqualToFloat();

  if ((v4 & 1) == 0)
  {
    if ([(DSDownloadProgressButton *)self _usesDrawingForProgressType:self->_progressType])
    {
      [(DSDownloadProgressButton *)self setNeedsDisplay];
    }

    else
    {
      [(DSDownloadProgressButton *)self setNeedsLayout];
    }
  }
}

- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  addToLibraryOrDownloadImageView = self->_addToLibraryOrDownloadImageView;
  if (addToLibraryOrDownloadImageView && ![(UIImageView *)addToLibraryOrDownloadImageView isHidden])
  {
    LOBYTE(self) = 1;
  }

  else
  {
    itemOfferButton = self->_itemOfferButton;
    if (itemOfferButton && ([(SUUIItemOfferButton *)itemOfferButton isHidden]& 1) == 0)
    {
      LOBYTE(self) = [(SUUIItemOfferButton *)self->_itemOfferButton beginTrackingWithTouch:v6 withEvent:v7];
    }

    else
    {
      finishedImageView = self->_finishedImageView;
      if (finishedImageView)
      {
        LODWORD(self) = [(UIImageView *)finishedImageView isHidden]^ 1;
      }

      else
      {
        LOBYTE(self) = 0;
      }
    }
  }

  return self;
}

- (void)cancelTrackingWithEvent:(id)a3
{
  v4 = a3;
  itemOfferButton = self->_itemOfferButton;
  if (itemOfferButton)
  {
    v6 = v4;
    if (([(SUUIItemOfferButton *)itemOfferButton isHidden]& 1) == 0)
    {
      [(SUUIItemOfferButton *)self->_itemOfferButton cancelTrackingWithEvent:v6];
    }
  }

  _objc_release_x1();
}

- (BOOL)continueTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  addToLibraryOrDownloadImageView = self->_addToLibraryOrDownloadImageView;
  if (addToLibraryOrDownloadImageView && ![(UIImageView *)addToLibraryOrDownloadImageView isHidden])
  {
    LOBYTE(self) = 1;
  }

  else
  {
    itemOfferButton = self->_itemOfferButton;
    if (itemOfferButton && ([(SUUIItemOfferButton *)itemOfferButton isHidden]& 1) == 0)
    {
      LOBYTE(self) = [(SUUIItemOfferButton *)self->_itemOfferButton continueTrackingWithTouch:v6 withEvent:v7];
    }

    else
    {
      finishedImageView = self->_finishedImageView;
      if (finishedImageView)
      {
        LODWORD(self) = [(UIImageView *)finishedImageView isHidden]^ 1;
      }

      else
      {
        LOBYTE(self) = 0;
      }
    }
  }

  return self;
}

- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v8 = a3;
  v6 = a4;
  itemOfferButton = self->_itemOfferButton;
  if (itemOfferButton && ([(SUUIItemOfferButton *)itemOfferButton isHidden]& 1) == 0)
  {
    [(SUUIItemOfferButton *)self->_itemOfferButton cancelTrackingWithEvent:v6];
  }
}

- (void)setProgressType:(int64_t)a3
{
  if (self->_progressType != a3)
  {
    self->_progressType = a3;
    [(DSDownloadProgressButton *)self _reloadForCurrentStateForInitialSetup:0 previousProgressType:?];
  }
}

- (void)_handleDisplayLinkDidFire:(id)a3
{
  v10 = a3;
  progressAnimationStartTime = self->_progressAnimationStartTime;
  progressAnimationEndTime = self->_progressAnimationEndTime;
  if ((MPUFloatEqualToFloat() & 1) == 0)
  {
    [v10 timestamp];
    v7 = (v6 - self->_progressAnimationStartTime) / (self->_progressAnimationEndTime - self->_progressAnimationStartTime);
    if (v7 >= 0.99)
    {
      [(DSDownloadProgressButton *)self _stopProgressAnimation];
    }

    else
    {
      progressAnimationTimingFunction = self->_progressAnimationTimingFunction;
      if (progressAnimationTimingFunction)
      {
        *&v7 = v7;
        [(CAMediaTimingFunction *)progressAnimationTimingFunction _solveForInput:v7];
        v7 = v9;
      }

      self->_currentAnimatedProgress = self->_initialAnimatedProgress + (self->_progress - self->_initialAnimatedProgress) * v7;
    }

    [(DSDownloadProgressButton *)self setNeedsDisplay];
  }

  _objc_release_x1();
}

+ (id)_finishedImageForLayoutSize:(CGSize)a3 traitCollection:(id)a4
{
  if (a3.width <= 7.0 || a3.height <= 11.0)
  {
    v5 = @"UniversalRowOfflineAvailabilityIndicator";
  }

  else
  {
    v5 = @"UniversalAddControlDownloaded";
  }

  v6 = a4;
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [UIImage imageNamed:v5 inBundle:v7 compatibleWithTraitCollection:v6];

  return v8;
}

- (id)_addToLibraryOrDownloadImage
{
  if (self->_style != 1)
  {
    goto LABEL_5;
  }

  progressType = self->_progressType;
  if (!progressType)
  {
    v4 = @"UniversalAddControlAdd";
    goto LABEL_7;
  }

  if (progressType != 1)
  {
LABEL_5:
    v5 = 0;
    goto LABEL_8;
  }

  v4 = @"UniversalAddControlDownload";
LABEL_7:
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [(DSDownloadProgressButton *)self traitCollection];
  v5 = [UIImage imageNamed:v4 inBundle:v6 compatibleWithTraitCollection:v7];

LABEL_8:

  return v5;
}

- (BOOL)_needsAddToLibraryOrDownloadImageViewForProgressType:(int64_t)a3
{
  if ([(DSDownloadProgressButton *)self _usesDrawingForProgressType:?])
  {
    return 0;
  }

  return a3 < 2 && self->_style == 1;
}

- (void)_reloadForCurrentStateForInitialSetup:(BOOL)a3 previousProgressType:(int64_t)a4
{
  v5 = a3;
  v7 = [(DSDownloadProgressButton *)self _usesDrawingForProgressType:a4];
  v8 = [(DSDownloadProgressButton *)self _usesDrawingForProgressType:self->_progressType];
  v9 = v8;
  if (!v5 && v7 != v8)
  {
    [(DSDownloadProgressButton *)self setNeedsDisplay];
  }

  v10 = [(DSDownloadProgressButton *)self _needsAddToLibraryOrDownloadImageViewForProgressType:self->_progressType];
  addToLibraryOrDownloadImageView = self->_addToLibraryOrDownloadImageView;
  if (v10)
  {
    if (!addToLibraryOrDownloadImageView)
    {
      v12 = [UIImageView alloc];
      [(DSDownloadProgressButton *)self bounds];
      v13 = [v12 initWithFrame:?];
      v14 = self->_addToLibraryOrDownloadImageView;
      self->_addToLibraryOrDownloadImageView = v13;

      [(UIImageView *)self->_addToLibraryOrDownloadImageView setUserInteractionEnabled:0];
      [(DSDownloadProgressButton *)self addSubview:self->_addToLibraryOrDownloadImageView];
      addToLibraryOrDownloadImageView = self->_addToLibraryOrDownloadImageView;
    }

    [(UIImageView *)addToLibraryOrDownloadImageView setAlpha:1.0];
    [(UIImageView *)self->_addToLibraryOrDownloadImageView setHidden:0];
    v15 = [(DSDownloadProgressButton *)self _addToLibraryOrDownloadImage];
    if (a4 || v5 || self->_progressType != 1)
    {
      [(UIImageView *)self->_addToLibraryOrDownloadImageView setImage:v15];
    }

    else
    {
      v16 = [(UIImageView *)self->_addToLibraryOrDownloadImageView _animatesContents];
      [(UIImageView *)self->_addToLibraryOrDownloadImageView _setAnimatesContents:1];
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_558C;
      v32[3] = &unk_C7C8;
      v32[4] = self;
      v33 = v15;
      [UIView animateWithDuration:v32 animations:0.25];
      [(UIImageView *)self->_addToLibraryOrDownloadImageView _setAnimatesContents:v16];
    }

    [(DSDownloadProgressButton *)self setNeedsLayout];
  }

  else
  {
    [(UIImageView *)addToLibraryOrDownloadImageView setHidden:1];
  }

  v17 = [(DSDownloadProgressButton *)self _needsFinishedImageViewForProgressType:self->_progressType];
  finishedImageView = self->_finishedImageView;
  if (v17)
  {
    if (!finishedImageView)
    {
      v19 = objc_alloc_init(UIImageView);
      v20 = self->_finishedImageView;
      self->_finishedImageView = v19;

      [(UIImageView *)self->_finishedImageView setUserInteractionEnabled:0];
      [(DSDownloadProgressButton *)self addSubview:self->_finishedImageView];
      finishedImageView = self->_finishedImageView;
    }

    [(UIImageView *)finishedImageView setAlpha:1.0];
    [(UIImageView *)self->_finishedImageView setHidden:0];
    [(DSDownloadProgressButton *)self setNeedsLayout];
    if (v9)
    {
      goto LABEL_25;
    }
  }

  else
  {
    [(UIImageView *)finishedImageView setHidden:1];
    if (v9)
    {
LABEL_25:
      [(SUUIItemOfferButton *)self->_itemOfferButton setHidden:1];
      return;
    }
  }

  if ((self->_progressType & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    goto LABEL_25;
  }

  if (!self->_itemOfferButton)
  {
    v21 = objc_alloc_init(SUUIItemOfferButton);
    itemOfferButton = self->_itemOfferButton;
    self->_itemOfferButton = v21;

    v23 = self->_itemOfferButton;
    v24 = +[UIColor clearColor];
    [(SUUIItemOfferButton *)v23 setBackgroundColor:v24];

    [(SUUIItemOfferButton *)self->_itemOfferButton setBorderColorAlphaMultiplier:0.4];
    [(SUUIItemOfferButton *)self->_itemOfferButton setCenterImageProvider:&stru_C808];
    [(SUUIItemOfferButton *)self->_itemOfferButton setFillStyle:2];
    [(SUUIItemOfferButton *)self->_itemOfferButton setProgressType:2 animated:0];
    [(SUUIItemOfferButton *)self->_itemOfferButton setShowsConfirmationState:0];
    [(SUUIItemOfferButton *)self->_itemOfferButton setUserInteractionEnabled:0];
    [(DSDownloadProgressButton *)self addSubview:self->_itemOfferButton];
  }

  v25 = [(DSDownloadProgressButton *)self window];

  [(SUUIItemOfferButton *)self->_itemOfferButton setProgress:0 animated:self->_progress];
  [(SUUIItemOfferButton *)self->_itemOfferButton setHidden:0];
  v26 = self->_itemOfferButton;
  if (v25)
  {
    CGAffineTransformMakeScale(&v31, 0.0, 0.0);
    [(SUUIItemOfferButton *)v26 setTransform:&v31];
    [(UIImageView *)self->_addToLibraryOrDownloadImageView setHidden:0];
    [(DSDownloadProgressButton *)self setNeedsLayout];
    [(DSDownloadProgressButton *)self layoutIfNeeded];
    objc_initWeak(&v31, self);
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_5660;
    v30[3] = &unk_C578;
    v30[4] = self;
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_56D0;
    v28[3] = &unk_C830;
    objc_copyWeak(&v29, &v31);
    [UIView animateWithDuration:4 delay:v30 options:v28 animations:0.4 completion:0.0];
    objc_destroyWeak(&v29);
    objc_destroyWeak(&v31);
  }

  else
  {
    v27 = *&CGAffineTransformIdentity.c;
    *&v31.a = *&CGAffineTransformIdentity.a;
    *&v31.c = v27;
    *&v31.tx = *&CGAffineTransformIdentity.tx;
    [(SUUIItemOfferButton *)v26 setTransform:&v31];
    [(DSDownloadProgressButton *)self setNeedsLayout];
  }
}

- (void)_stopProgressAnimation
{
  [(CADisplayLink *)self->_displayLink invalidate];
  displayLink = self->_displayLink;
  self->_displayLink = 0;

  self->_isAnimatingProgress = 0;
  self->_currentAnimatedProgress = 0.0;
  self->_initialAnimatedProgress = 0.0;
  self->_progressAnimationStartTime = 0.0;
  self->_progressAnimationEndTime = 0.0;
  progressAnimationTimingFunction = self->_progressAnimationTimingFunction;
  self->_progressAnimationTimingFunction = 0;
}

@end