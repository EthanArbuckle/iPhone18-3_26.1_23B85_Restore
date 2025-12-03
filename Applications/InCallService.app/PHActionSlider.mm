@interface PHActionSlider
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)shouldHideTrackLabelForXPoint:(double)point;
- (BOOL)xPointIsWithinTrack:(double)track;
- (CGPoint)panGestureFirstTouchLocationInView;
- (CGRect)_trackFrame;
- (CGRect)knobRect;
- (CGRect)trackTextRect;
- (CGSize)_defaultTrackSize;
- (CGSize)knobImageOffset;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)trackSize;
- (PHActionSlider)initWithCoder:(id)coder;
- (PHActionSlider)initWithFrame:(CGRect)frame vibrantSettings:(id)settings large:(BOOL)large;
- (PHActionSlider)initWithFrame:(CGRect)frame vibrantSettings:(id)settings large:(BOOL)large usesLargeFormatUI:(BOOL)i;
- (PHActionSliderDelegate)delegate;
- (UIBezierPath)knobMaskPath;
- (UIEdgeInsets)knobInsets;
- (UILabel)trackLabel;
- (double)_knobAvailableX;
- (double)_knobHorizontalPosition;
- (double)_knobLeftMostX;
- (double)_knobMaxX;
- (double)_knobMinX;
- (double)_knobRightMostX;
- (double)_stretchKnobWidth;
- (double)_stretchKnobX;
- (double)trackTextYOffset;
- (id)backgroundColor;
- (id)trackMaskImage;
- (id)trackMaskPath;
- (void)_knobPanGesture:(id)gesture;
- (void)_makeTrackLabel;
- (void)_slideCompleted:(BOOL)completed;
- (void)applyGlassTrackMask;
- (void)closeTrackAnimated:(BOOL)animated;
- (void)didMoveToSuperview;
- (void)didMoveToWindow;
- (void)hideTrackLabelIfNecessary:(BOOL)necessary;
- (void)layoutSubviews;
- (void)openTrackAnimated:(BOOL)animated;
- (void)setBackgroundColor:(id)color;
- (void)setDragStyle:(unint64_t)style;
- (void)setKnobImage:(id)image;
- (void)setKnobImageOffset:(CGSize)offset;
- (void)setKnobInsets:(UIEdgeInsets)insets;
- (void)setKnobPosition:(double)position;
- (void)setKnobText:(id)text;
- (void)setKnobWidth:(double)width;
- (void)setMaskFromImage:(id)image onView:(id)view;
- (void)setMaskPath:(CGPath *)path onView:(id)view;
- (void)setStyle:(int64_t)style;
- (void)setTrackAlpha:(double)alpha;
- (void)setTrackFont:(id)font;
- (void)setTrackLabelHidden:(BOOL)hidden animated:(BOOL)animated;
- (void)setTrackSize:(CGSize)size;
- (void)setTrackText:(id)text;
- (void)updateAllTrackMasks;
@end

@implementation PHActionSlider

- (PHActionSlider)initWithFrame:(CGRect)frame vibrantSettings:(id)settings large:(BOOL)large usesLargeFormatUI:(BOOL)i
{
  iCopy = i;
  largeCopy = large;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  settingsCopy = settings;
  [(PHActionSlider *)self setUsesLargeFormatUI:iCopy];
  height = [(PHActionSlider *)self initWithFrame:settingsCopy vibrantSettings:largeCopy large:x, y, width, height];

  return height;
}

- (PHActionSlider)initWithFrame:(CGRect)frame vibrantSettings:(id)settings large:(BOOL)large
{
  largeCopy = large;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  settingsCopy = settings;
  v84.receiver = self;
  v84.super_class = PHActionSlider;
  height = [(PHActionSlider *)&v84 initWithFrame:x, y, width, height];
  v14 = height;
  if (height)
  {
    [(PHActionSlider *)height setOpaque:0];
    v15 = +[UIColor clearColor];
    [(PHActionSlider *)v14 setBackgroundColor:v15];

    v14->_trackWidthProportion = 1.0;
    if (largeCopy)
    {
      v16 = +[PHInCallUtilities sharedInstance];
      isIPadIdiom = [v16 isIPadIdiom];

      if (isIPadIdiom)
      {
        v18 = 0x400C000000000000;
      }

      else
      {
        v18 = 0x4018000000000000;
      }

      *&v14->_knobInsets.left = v18;
      *&v14->_knobInsets.right = v18;
    }

    else
    {
      v14->_knobInsets.left = 3.5;
      v14->_knobInsets.right = 3.5;
    }

    v14->_isLarge = largeCopy;
    v19 = +[UIDevice currentDevice];
    userInterfaceIdiom = [v19 userInterfaceIdiom];

    if (userInterfaceIdiom || (+[UIScreen mainScreen](UIScreen, "mainScreen"), v21 = objc_claimAutoreleasedReturnValue(), [v21 _referenceBounds], v22 = CGRectGetHeight(v85), v21, v22 > 480.0))
    {
      v23 = 65.0;
      if (largeCopy)
      {
        v23 = 82.0;
      }

      v14->_knobWidth = v23;
      if (largeCopy)
      {
        v24 = +[PHInCallUtilities sharedInstance];
        isIPadIdiom2 = [v24 isIPadIdiom];

        p_knobInsets = &v14->_knobInsets;
        if ((isIPadIdiom2 & 1) == 0)
        {
          p_knobInsets->top = 6.0;
          v14->_knobInsets.bottom = 6.0;
          v27 = +[UIScreen mainScreen];
          [v27 bounds];
          v29 = v28;
          v31 = v30;

          if (v29 >= v31)
          {
            v32 = v31;
          }

          else
          {
            v32 = v29;
          }

          v33 = v32 * 0.1976;
          v14->_knobWidth = roundf(v33);
          goto LABEL_20;
        }
      }

      else
      {
        p_knobInsets = &v14->_knobInsets;
      }

      p_knobInsets->top = 5.0;
      p_knobInsets->bottom = 5.0;
LABEL_20:
      v34 = 0x403F800000000000;
LABEL_21:
      *&v14->_trackTextBaselineFromBottom = v34;
      [(PHActionSlider *)v14 _defaultTrackSize];
      v14->_trackSize.width = v35;
      v14->_trackSize.height = v36;
      v14->_minSlideCompletionPercentage = 0.6;
      v14->_minFastSlideCompletionPercentage = 0.4;
      objc_storeStrong(&v14->_vibrantSettings, settings);
      [(PHActionSlider *)v14 bounds];
      v38 = v37;
      v40 = v39;
      v42 = v41;
      v44 = v43;
      v45 = [[UIView alloc] initWithFrame:{v37, v39, v41, v43}];
      contentView = v14->_contentView;
      v14->_contentView = v45;

      [(PHActionSlider *)v14 addSubview:v14->_contentView];
      v47 = [[UIView alloc] initWithFrame:{v38, v40, v42, v44}];
      trackBackgroundView = v14->_trackBackgroundView;
      v14->_trackBackgroundView = v47;

      layer = [(UIView *)v14->_trackBackgroundView layer];
      [layer setAllowsGroupBlending:0];

      [(UIView *)v14->_contentView addSubview:v14->_trackBackgroundView];
      v50 = objc_alloc_init(PHActionSliderTrackComponentView);
      trackDodgeView = v14->_trackDodgeView;
      v14->_trackDodgeView = &v50->super;

      v52 = v14->_trackDodgeView;
      v53 = [UIColor colorWithWhite:0.65 alpha:1.0];
      [(UIView *)v52 setBackgroundColor:v53];

      layer2 = [(UIView *)v14->_trackDodgeView layer];
      [layer2 setCompositingFilter:kCAFilterColorDodgeBlendMode];

      [(UIView *)v14->_trackBackgroundView addSubview:v14->_trackDodgeView];
      v55 = [&stru_100361FD0 copy];
      trackText = v14->_trackText;
      v14->_trackText = v55;

      v57 = [UIFont systemFontOfSize:20.0];
      trackFont = v14->_trackFont;
      v14->_trackFont = v57;

      v14->_showingTrackLabel = 1;
      v59 = [[PHActionSliderKnob alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
      knobView = v14->_knobView;
      v14->_knobView = v59;

      layer3 = [(PHActionSliderKnob *)v14->_knobView layer];
      [layer3 setMasksToBounds:1];

      [(UIView *)v14->_contentView addSubview:v14->_knobView];
      v62 = objc_alloc_init(UIImageView);
      knobImageView = v14->_knobImageView;
      v14->_knobImageView = v62;

      [(PHActionSliderKnob *)v14->_knobView addSubview:v14->_knobImageView];
      v64 = objc_alloc_init(UILabel);
      knobLabel = v14->_knobLabel;
      v14->_knobLabel = v64;

      [(UILabel *)v14->_knobLabel setTextAlignment:1];
      v66 = v14->_knobLabel;
      v67 = [UIFont systemFontOfSize:37.0 weight:UIFontWeightHeavy];
      [(UILabel *)v66 setFont:v67];

      v68 = v14->_knobLabel;
      v69 = +[UIColor whiteColor];
      [(UILabel *)v68 setTextColor:v69];

      [(UILabel *)v14->_knobLabel setAlpha:0.0];
      [(PHActionSliderKnob *)v14->_knobView addSubview:v14->_knobLabel];
      v70 = [[UIPanGestureRecognizer alloc] initWithTarget:v14 action:"_knobPanGesture:"];
      slideGestureRecognizer = v14->_slideGestureRecognizer;
      v14->_slideGestureRecognizer = v70;

      [(UIPanGestureRecognizer *)v14->_slideGestureRecognizer setMaximumNumberOfTouches:1];
      [(UIPanGestureRecognizer *)v14->_slideGestureRecognizer setMinimumNumberOfTouches:1];
      [(UIPanGestureRecognizer *)v14->_slideGestureRecognizer _setCanPanHorizontally:1];
      [(UIPanGestureRecognizer *)v14->_slideGestureRecognizer _setCanPanVertically:0];
      [(UIPanGestureRecognizer *)v14->_slideGestureRecognizer _setHysteresis:2.0];
      [(UIPanGestureRecognizer *)v14->_slideGestureRecognizer setDelegate:v14];
      [(PHActionSlider *)v14 addGestureRecognizer:v14->_slideGestureRecognizer];
      layer4 = [(PHActionSlider *)v14 layer];
      [layer4 setHitTestsAsOpaque:1];

      goto LABEL_22;
    }

    v14->_knobWidth = 58.0;
    if (largeCopy)
    {
      v74 = +[PHInCallUtilities sharedInstance];
      isIPadIdiom3 = [v74 isIPadIdiom];

      v76 = &v14->_knobInsets;
      if ((isIPadIdiom3 & 1) == 0)
      {
        v76->top = 6.0;
        v14->_knobInsets.bottom = 6.0;
        v77 = +[UIScreen mainScreen];
        [v77 bounds];
        v79 = v78;
        v81 = v80;

        if (v79 >= v81)
        {
          v82 = v81;
        }

        else
        {
          v82 = v79;
        }

        v83 = v82 * 0.1976;
        v14->_knobWidth = roundf(v83);
        goto LABEL_31;
      }
    }

    else
    {
      v76 = &v14->_knobInsets;
    }

    v76->top = 3.5;
    v76->bottom = 3.5;
LABEL_31:
    v34 = 0x403A800000000000;
    goto LABEL_21;
  }

LABEL_22:

  return v14;
}

- (PHActionSlider)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = PHActionSlider;
  return [(PHActionSlider *)&v4 initWithCoder:coder];
}

- (void)setStyle:(int64_t)style
{
  if (self->_style != style)
  {
    self->_style = style;
    [(_UIBackdropView *)self->_trackBlurView removeFromSuperview];
    [(UIView *)self->_trackSolidView removeFromSuperview];
    [(UIView *)self->_trackDodgeView removeFromSuperview];
    if ((style - 3) <= 1 && !self->_trackSolidView)
    {
      v5 = objc_alloc_init(PHActionSliderTrackComponentView);
      trackSolidView = self->_trackSolidView;
      self->_trackSolidView = &v5->super;

      [(UIView *)self->_trackBackgroundView insertSubview:self->_trackSolidView atIndex:0];
      [(PHActionSlider *)self setCachedTrackMaskWidth:0.0];
    }

    if (style > 2)
    {
      if (style == 3)
      {
        if (self->_usesLargeFormatUI || (+[PHInCallUtilities sharedInstance](PHInCallUtilities, "sharedInstance"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 isIPadIdiom], v11, (v12 & 1) == 0))
        {
          v13 = +[UIColorEffect inCallControls];
          v14 = [UIBlurEffect effectWithBlurRadius:40.0];
          v15 = [[UIVisualEffectView alloc] initWithEffect:0];
          trackSolidViewBackDropVisualEffectView = self->_trackSolidViewBackDropVisualEffectView;
          self->_trackSolidViewBackDropVisualEffectView = v15;

          v18[0] = v13;
          v18[1] = v14;
          v17 = [NSArray arrayWithObjects:v18 count:2];
          [(UIVisualEffectView *)self->_trackSolidViewBackDropVisualEffectView setBackgroundEffects:v17];

          [(UIView *)self->_trackBackgroundView insertSubview:self->_trackSolidViewBackDropVisualEffectView aboveSubview:self->_trackSolidView];
        }
      }

      else if (style == 4)
      {
        [(UIView *)self->_trackSolidView applySmallClearGlassBackground];
      }

      goto LABEL_19;
    }

    if (style == 1)
    {
      trackBackgroundView = self->_trackBackgroundView;
      trackDodgeView = self->_trackDodgeView;
    }

    else
    {
      if (style != 2)
      {
LABEL_19:
        [(PHActionSlider *)self setNeedsLayout];
        return;
      }

      trackDodgeView = self->_trackBlurView;
      if (!trackDodgeView)
      {
        v8 = [[_UIBackdropView alloc] initWithPrivateStyle:2020];
        trackBlurView = self->_trackBlurView;
        self->_trackBlurView = v8;

        [(PHActionSlider *)self setCachedTrackMaskWidth:0.0];
        trackDodgeView = self->_trackBlurView;
      }

      trackBackgroundView = self->_trackBackgroundView;
    }

    [(UIView *)trackBackgroundView insertSubview:trackDodgeView atIndex:0];
    goto LABEL_19;
  }
}

- (void)setDragStyle:(unint64_t)style
{
  if (self->_dragStyle != style)
  {
    self->_dragStyle = style;
    [(PHActionSlider *)self _defaultTrackSize];
    if (style == 1 || style == 2)
    {

      [(PHActionSlider *)self setTrackSize:?];
    }
  }
}

- (UIBezierPath)knobMaskPath
{
  [(PHActionSlider *)self knobRect];
  v7 = v3;
  v8 = v4;
  v9 = v5;
  v10 = v6;
  dragStyle = self->_dragStyle;
  if (dragStyle == 2)
  {
    [(PHActionSlider *)self _knobWidth];
    v12 = [UIBezierPath bezierPathWithRoundedRect:v7 cornerRadius:v8, v9, v10, v13 * 0.5];
  }

  else if (dragStyle == 1)
  {
    v12 = [UIBezierPath bezierPathWithOvalInRect:v3, v4, v5, v6];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)setKnobImage:(id)image
{
  [(UIImageView *)self->_knobImageView setImage:image];

  [(PHActionSlider *)self setNeedsLayout];
}

- (void)setKnobImageOffset:(CGSize)offset
{
  if (self->_knobImageOffset.width != offset.width || self->_knobImageOffset.height != offset.height)
  {
    self->_knobImageOffset = offset;
    [(PHActionSlider *)self setNeedsLayout];
  }
}

- (void)setKnobText:(id)text
{
  [(UILabel *)self->_knobLabel setText:text];

  [(PHActionSlider *)self setNeedsLayout];
}

- (void)setTrackText:(id)text
{
  if (self->_trackText != text)
  {
    v4 = [text copy];
    trackText = self->_trackText;
    self->_trackText = v4;

    [(PHActionSliderLabel *)self->_trackLabel setText:self->_trackText];

    [(PHActionSlider *)self setNeedsLayout];
  }
}

- (void)setTrackFont:(id)font
{
  fontCopy = font;
  if (self->_trackFont != fontCopy)
  {
    v6 = fontCopy;
    objc_storeStrong(&self->_trackFont, font);
    [(PHActionSliderLabel *)self->_trackLabel setFont:v6];
    [(PHActionSlider *)self setNeedsLayout];
    fontCopy = v6;
  }
}

- (void)setTrackSize:(CGSize)size
{
  if (size.width != self->_trackSize.width || size.height != self->_trackSize.height)
  {
    self->_trackSize = size;
    [(PHActionSlider *)self setNeedsLayout];
  }
}

- (void)setTrackAlpha:(double)alpha
{
  [(UIView *)self->_trackBackgroundView alpha];
  if (v5 - alpha >= 0.00000011920929 || ([(UIView *)self->_trackBackgroundView alpha], alpha - v6 >= 0.00000011920929))
  {
    [(UIView *)self->_trackBackgroundView setAlpha:alpha];
    trackLabel = self->_trackLabel;

    [(PHActionSliderLabel *)trackLabel setAlpha:alpha];
  }
}

- (UILabel)trackLabel
{
  if ([(PHActionSlider *)self textStyle]!= 2 && [(PHActionSlider *)self textStyle]!= 4)
  {
    v5 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"Can't call -trackLabel when -textStyle is not PHActionSliderTextStyleSolid" userInfo:0];
    objc_exception_throw(v5);
  }

  trackLabel = self->_trackLabel;
  if (!trackLabel)
  {
    [(PHActionSlider *)self _makeTrackLabel];
    trackLabel = self->_trackLabel;
  }

  return trackLabel;
}

- (void)setKnobPosition:(double)position
{
  if (self->_knobPosition != position)
  {
    self->_knobPosition = position;
    [(PHActionSlider *)self setNeedsLayout];

    [(PHActionSlider *)self layoutIfNeeded];
  }
}

- (void)setKnobWidth:(double)width
{
  if (self->_knobWidth != width)
  {
    self->_knobWidth = width;
    layer = [(PHActionSliderKnob *)self->_knobView layer];
    [layer setCornerRadius:width * 0.5];

    [(PHActionSlider *)self setNeedsLayout];
  }
}

- (void)setKnobInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_knobInsets.top), vceqq_f64(v4, *&self->_knobInsets.bottom)))) & 1) == 0)
  {
    self->_knobInsets = insets;
    [(PHActionSlider *)self setNeedsLayout];
  }
}

- (CGRect)knobRect
{
  [(PHActionSlider *)self _knobWidth];
  height = v3;
  dragStyle = self->_dragStyle;
  if (dragStyle == 2)
  {
    [(PHActionSlider *)self _stretchKnobX];
    x = v11;
    [(PHActionSlider *)self _knobVerticalInset];
    y = v12 + -1.5;
    [(PHActionSlider *)self _stretchKnobWidth];
    width = v13;
  }

  else if (dragStyle == 1)
  {
    [(PHActionSlider *)self _knobHorizontalPosition];
    x = v6;
    [(PHActionSlider *)self _knobVerticalInset];
    y = v8;
    width = height;
  }

  else
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  v14 = x;
  v15 = y;
  v16 = height;
  result.size.height = v16;
  result.size.width = width;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGRect)trackTextRect
{
  shouldReverseLayoutDirection = [(PHActionSlider *)self shouldReverseLayoutDirection];
  [(PHActionSlider *)self _trackFrame];
  v5 = v4;
  v7 = v6;
  v62 = v6;
  v9 = v8;
  v11 = v10;
  [(PHActionSlider *)self _knobWidth];
  v13 = v12;
  [(PHActionSlider *)self _knobMinXInset];
  memset(&remainder, 0, sizeof(remainder));
  memset(&slice, 0, sizeof(slice));
  if (shouldReverseLayoutDirection)
  {
    v15 = CGRectMaxXEdge;
  }

  else
  {
    v15 = CGRectMinXEdge;
  }

  if (shouldReverseLayoutDirection)
  {
    v16 = CGRectMinXEdge;
  }

  else
  {
    v16 = CGRectMaxXEdge;
  }

  v17 = v13 + v14;
  v18 = 0.0;
  if (shouldReverseLayoutDirection)
  {
    v18 = 14.0;
  }

  v66 = v18;
  v71.origin.x = v5;
  v71.origin.y = v7;
  v71.size.width = v9;
  v71.size.height = v11;
  CGRectDivide(v71, &slice, &remainder, v17, v15);
  CGRectDivide(remainder, &slice, &remainder, 13.0, v16);
  [(PHActionSliderLabel *)self->_trackLabel sizeThatFits:remainder.size.width, remainder.size.height];
  [(PHActionSlider *)self _currentScreenScale];
  v61 = v19;
  UIRectCenteredXInRectScale();
  width = v72.size.width;
  x = v72.origin.x;
  height = v72.size.height;
  y = v72.origin.y;
  MinX = CGRectGetMinX(v72);
  v73.origin.x = v5;
  v73.origin.y = v62;
  v73.size.width = v9;
  v23 = v11;
  v73.size.height = v11;
  rect = width;
  if (MinX - CGRectGetMinX(v73) >= v66)
  {
    v24 = x;
  }

  else
  {
    v74.origin.x = v5;
    v74.origin.y = v62;
    v74.size.width = v9;
    v74.size.height = v11;
    v24 = v66 + CGRectGetMinX(v74);
  }

  v25 = v5;
  if (shouldReverseLayoutDirection)
  {
    v26 = 0.0;
  }

  else
  {
    v26 = 14.0;
  }

  v75.origin.x = v5;
  v75.origin.y = v62;
  v75.size.width = v9;
  v75.size.height = v23;
  MaxX = CGRectGetMaxX(v75);
  v76.origin.x = v24;
  v76.origin.y = y;
  v76.size.width = rect;
  v76.size.height = height;
  if (MaxX - CGRectGetMaxX(v76) < v26)
  {
    v77.origin.x = v5;
    v77.origin.y = v62;
    v77.size.width = v9;
    v77.size.height = v23;
    v28 = CGRectGetMaxX(v77) - v26;
    v78.origin.x = v24;
    v78.origin.y = y;
    v78.size.width = rect;
    v78.size.height = height;
    v24 = v28 - CGRectGetWidth(v78);
  }

  v79.origin.x = v24;
  v79.origin.y = y;
  v79.size.width = rect;
  v79.size.height = height;
  v29 = CGRectGetMinX(v79);
  v80.origin.x = v5;
  v80.origin.y = v62;
  v80.size.width = v9;
  v80.size.height = v23;
  v30 = v24;
  if (v29 - CGRectGetMinX(v80) < v66)
  {
    v81.origin.x = v25;
    v81.origin.y = v62;
    v81.size.width = v9;
    v81.size.height = v23;
    v31 = CGRectGetMaxX(v81) - (v26 + -4.0);
    v82.origin.x = v24;
    v82.origin.y = y;
    v82.size.width = rect;
    v82.size.height = height;
    v30 = v31 - CGRectGetWidth(v82);
  }

  trackText = [(PHActionSlider *)self trackText];
  textStyle = [(PHActionSlider *)self textStyle];
  [(UIView *)self->_trackBackgroundView bounds];
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  [(PHActionSlider *)self trackTextYOffset];
  v43 = v42;
  if ((textStyle == 4 || textStyle == 2) && (-[PHActionSliderLabel numberOfLines](self->_trackLabel, "numberOfLines") > 1 || !-[PHActionSliderLabel numberOfLines](self->_trackLabel, "numberOfLines")) && [trackText containsString:@"\n"])
  {
    v83.origin.x = v35;
    v83.origin.y = v37;
    v83.size.width = v39;
    v83.size.height = v41;
    v44 = CGRectGetHeight(v83);
    v84.origin.x = v30;
    v84.origin.y = y;
    v45 = rect;
    v84.size.width = rect;
    v84.size.height = height;
    v46 = (v44 - CGRectGetHeight(v84)) * 0.5 + 0.0;
  }

  else
  {
    v67 = v43;
    v47 = +[PHInCallUtilities sharedInstance];
    isIPadIdiom = [v47 isIPadIdiom];

    v45 = rect;
    if (isIPadIdiom)
    {
      v49 = objc_opt_respondsToSelector();
      trackLabel = self->_trackLabel;
      v51 = v41;
      if (v49)
      {
        [(PHActionSliderLabel *)trackLabel baselineOffsetFromBottomWithSize:rect, height];
      }

      else
      {
        [(PHActionSliderLabel *)trackLabel _baselineOffsetFromBottom];
      }

      v65 = v52;
      [(PHActionSlider *)self trackTextBaselineFromBottom];
      v55 = v54;
      v87.origin.x = v35;
      v87.origin.y = v37;
      v87.size.width = v39;
      v87.size.height = v51;
      v56 = CGRectGetHeight(v87);
      v88.origin.x = v30;
      v88.origin.y = y;
      v88.size.width = rect;
      v88.size.height = height;
      v46 = v67 + v56 - (CGRectGetHeight(v88) - v65) - v55;
    }

    else
    {
      v85.origin.x = v35;
      v85.origin.y = v37;
      v85.size.width = v39;
      v85.size.height = v41;
      v53 = CGRectGetHeight(v85);
      v86.origin.x = v30;
      v86.origin.y = y;
      v86.size.width = rect;
      v86.size.height = height;
      v46 = (v53 - CGRectGetHeight(v86)) * 0.5;
    }
  }

  v57 = v30;
  v58 = v46;
  v59 = v45;
  v60 = height;
  result.size.height = v60;
  result.size.width = v59;
  result.origin.y = v58;
  result.origin.x = v57;
  return result;
}

- (double)trackTextYOffset
{
  isLarge = [(PHActionSlider *)self isLarge];
  result = 0.0;
  if (isLarge)
  {
    return -10.0;
  }

  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  v5 = [(PHActionSlider *)self superview:fits.width];
  v6 = v5;
  if (v5)
  {
    [v5 bounds];
    v7 = CGRectGetWidth(v15);
  }

  else
  {
    v8 = +[UIScreen mainScreen];
    [v8 bounds];
    v7 = CGRectGetWidth(v16);
  }

  if (width >= v7 || width <= 0.0)
  {
    width = v7;
  }

  [(PHActionSlider *)self trackSize];
  v11 = v10 + 0.0;

  v12 = width;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)openTrackAnimated:(BOOL)animated
{
  if (animated)
  {
    [(PHActionSlider *)self hideTrackLabel:1];
    [(PHActionSlider *)self setAnimating:1];
    layer = [(UIView *)self->_trackBackgroundView layer];
    [layer removeAllAnimations];

    layer2 = [(UIView *)self->_trackDodgeView layer];
    [layer2 removeAllAnimations];

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000BA8E8;
    v10[3] = &unk_100357068;
    v10[4] = self;
    v10[5] = 0x3FD3333333333333;
    [UIView performWithoutAnimation:v10];
    v8[4] = self;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000BA930;
    v9[3] = &unk_100356988;
    v9[4] = self;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000BA978;
    v8[3] = &unk_1003569B0;
    [UIView _animateUsingDefaultDampedSpringWithDelay:0 initialSpringVelocity:v9 options:v8 animations:0.05 completion:0.0];
    v6 = dispatch_time(0, 150000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000BA9C4;
    block[3] = &unk_100356988;
    block[4] = self;
    dispatch_after(v6, &_dispatch_main_q, block);
  }

  else
  {
    [(PHActionSlider *)self setTrackWidthProportion:1.0];
    [(PHActionSlider *)self showTrackLabel];

    [(PHActionSlider *)self setNeedsLayout];
  }
}

- (void)closeTrackAnimated:(BOOL)animated
{
  animatedCopy = animated;
  [(PHActionSlider *)self hideTrackLabel:?];
  if (animatedCopy)
  {
    layer = [(UIView *)self->_trackBackgroundView layer];
    [layer removeAllAnimations];

    layer2 = [(UIView *)self->_trackDodgeView layer];
    [layer2 removeAllAnimations];

    [(PHActionSlider *)self setAnimating:1];
    [(PHActionSlider *)self updateAllTrackMasks];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000BAB24;
    v8[3] = &unk_100356988;
    v8[4] = self;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000BAB6C;
    v7[3] = &unk_1003569B0;
    v7[4] = self;
    [UIView _animateUsingDefaultTimingWithOptions:0 animations:v8 completion:v7];
  }

  else
  {
    [(PHActionSlider *)self setTrackWidthProportion:0.0];

    [(PHActionSlider *)self setNeedsLayout];
  }
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  v5 = colorCopy;
  if (!self->_usesLargeFormatUI)
  {
    v8 = colorCopy;
    v6 = +[PHInCallUtilities sharedInstance];
    isIPadIdiom = [v6 isIPadIdiom];

    v5 = v8;
    if (isIPadIdiom)
    {
      colorCopy = [(UIView *)self->_trackSolidView setBackgroundColor:v8];
      v5 = v8;
    }
  }

  _objc_release_x1(colorCopy, v5);
}

- (id)backgroundColor
{
  if ([(PHActionSlider *)self style]== 4)
  {
    backgroundColor = 0;
  }

  else
  {
    backgroundColor = [(UIView *)self->_trackSolidView backgroundColor];
  }

  return backgroundColor;
}

- (CGSize)_defaultTrackSize
{
  if (self->_isLarge)
  {
    v3 = +[UIScreen mainScreen];
    [v3 bounds];
    v5 = v4;
    v7 = v6;

    v8 = +[PHInCallUtilities sharedInstance];
    isIPadIdiom = [v8 isIPadIdiom];

    if (isIPadIdiom)
    {
      if (v5 >= v7)
      {
        v10 = v5;
      }

      else
      {
        v10 = v7;
      }

      v11 = v10 * 0.26;
      if (self->_usesLargeFormatUI)
      {
        v12 = v11;
      }

      else
      {
        v12 = 296.0;
      }

      v13 = +[UIDevice currentDevice];
      userInterfaceIdiom = [v13 userInterfaceIdiom];

      if (userInterfaceIdiom || (+[UIScreen mainScreen](UIScreen, "mainScreen"), v15 = objc_claimAutoreleasedReturnValue(), [v15 _referenceBounds], Height = CGRectGetHeight(v30), v15, Height > 480.0))
      {
        isLarge = [(PHActionSlider *)self isLarge];
        v18 = 92.0;
        if (!isLarge)
        {
          v18 = 75.0;
        }

        goto LABEL_25;
      }

LABEL_24:
      v18 = 65.0;
      goto LABEL_25;
    }

    if (v5 >= v7)
    {
      v24 = v7;
    }

    else
    {
      v24 = v5;
    }

    v25 = v24 * 0.1976;
    v26 = roundf(v25);
    v27 = (v24 + v24 * -0.102 * 2.0 - v26 * 3.0) * 0.5;
    v12 = v27 + v27 + v26 * 3.0 + 12.0;
    v18 = v26 + 12.0;
  }

  else
  {
    v19 = +[UIDevice currentDevice];
    userInterfaceIdiom2 = [v19 userInterfaceIdiom];

    if (!userInterfaceIdiom2)
    {
      v21 = +[UIScreen mainScreen];
      [v21 _referenceBounds];
      v22 = CGRectGetHeight(v31);

      if (v22 <= 480.0)
      {
        v12 = 296.0;
        goto LABEL_24;
      }
    }

    isLarge2 = [(PHActionSlider *)self isLarge];
    v18 = 92.0;
    if (!isLarge2)
    {
      v18 = 75.0;
    }

    v12 = 296.0;
  }

LABEL_25:
  v28 = v12;
  result.height = v18;
  result.width = v28;
  return result;
}

- (CGRect)_trackFrame
{
  [(PHActionSlider *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(PHActionSlider *)self trackSize];
  v12 = v11;
  v17.origin.x = v4;
  v17.origin.y = v6;
  v17.size.width = v8;
  v17.size.height = v10;
  if (CGRectGetWidth(v17) > v12)
  {
    v18.origin.x = v4;
    v18.origin.y = v6;
    v18.size.width = v8;
    v18.size.height = v10;
    v4 = v4 + (CGRectGetWidth(v18) - v12) * 0.5;
    v8 = v12;
  }

  v13 = v6 + 0.0;
  v14 = v4;
  v15 = v8;
  v16 = v10;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v13;
  result.origin.x = v14;
  return result;
}

- (double)_knobHorizontalPosition
{
  [(PHActionSlider *)self _knobAvailableX];
  v4 = v3;
  knobPosition = self->_knobPosition;
  v6 = v3 * knobPosition;
  if ([(PHActionSlider *)self shouldReverseLayoutDirection])
  {
    v7 = -(v4 * knobPosition);
  }

  else
  {
    v7 = v6;
  }

  [(PHActionSlider *)self _knobMinX];
  return v8 + v7;
}

- (double)_stretchKnobX
{
  if ([(PHActionSlider *)self shouldReverseLayoutDirection])
  {
    [(PHActionSlider *)self _trackFrame];
    MaxX = CGRectGetMaxX(v9);
    [(PHActionSlider *)self _knobMaxXInset];
    v5 = MaxX - v4;
    [(PHActionSlider *)self _stretchKnobWidth];
    return v5 - v6;
  }

  else
  {

    [(PHActionSlider *)self _knobLeftMostX];
  }

  return result;
}

- (double)_stretchKnobWidth
{
  [(PHActionSlider *)self _knobAvailableX];
  v4 = v3;
  [(PHActionSlider *)self _knobMaxXInset];
  v6 = v4 - v5;
  [(PHActionSlider *)self _knobMinXInset];
  v8 = v6 - v7;
  knobPosition = self->_knobPosition;
  [(PHActionSlider *)self _knobWidth];
  return v10 + v8 * knobPosition;
}

- (double)_knobMinX
{
  if ([(PHActionSlider *)self shouldReverseLayoutDirection])
  {

    [(PHActionSlider *)self _knobRightMostX];
  }

  else
  {

    [(PHActionSlider *)self _knobLeftMostX];
  }

  return result;
}

- (double)_knobMaxX
{
  if ([(PHActionSlider *)self shouldReverseLayoutDirection])
  {

    [(PHActionSlider *)self _knobLeftMostX];
  }

  else
  {

    [(PHActionSlider *)self _knobRightMostX];
  }

  return result;
}

- (double)_knobLeftMostX
{
  [(PHActionSlider *)self _trackFrame];
  MinX = CGRectGetMinX(v6);
  [(PHActionSlider *)self _knobMinXInset];
  return MinX + v4;
}

- (double)_knobRightMostX
{
  if (self->_dragStyle == 2)
  {
    [(PHActionSlider *)self _knobMinXInset];
    v4 = -v3;
  }

  else
  {
    [(PHActionSlider *)self _knobMaxXInset];
    v4 = v5;
  }

  [(PHActionSlider *)self _trackFrame];
  v6 = CGRectGetMaxX(v9) - v4;
  [(PHActionSlider *)self _knobWidth];
  return v6 - v7;
}

- (double)_knobAvailableX
{
  [(PHActionSlider *)self _knobMaxX];
  v4 = v3;
  [(PHActionSlider *)self _knobMinX];
  return vabdd_f64(v4, v5);
}

- (BOOL)xPointIsWithinTrack:(double)track
{
  shouldReverseLayoutDirection = [(PHActionSlider *)self shouldReverseLayoutDirection];
  [(PHActionSlider *)self _knobMinX];
  if (shouldReverseLayoutDirection)
  {
    return v6 >= track;
  }

  else
  {
    return v6 <= track;
  }
}

- (BOOL)shouldHideTrackLabelForXPoint:(double)point
{
  shouldReverseLayoutDirection = [(PHActionSlider *)self shouldReverseLayoutDirection];
  [(PHActionSlider *)self _knobMinX];
  if (shouldReverseLayoutDirection)
  {
    return v6 > point;
  }

  else
  {
    return v6 < point;
  }
}

- (void)didMoveToSuperview
{
  v4.receiver = self;
  v4.super_class = PHActionSlider;
  [(PHActionSlider *)&v4 didMoveToSuperview];
  if ([(PHActionSlider *)self textStyle]== 1)
  {
    [(PHActionSlider *)self trackWidthProportion];
    if (v3 >= 1.0)
    {
      if (!self->_trackLabel)
      {
        [(PHActionSlider *)self _makeTrackLabel];
      }

      if ([(PHActionSlider *)self style]!= 4)
      {
        [(PHActionSliderLabel *)self->_trackLabel startAnimating];
      }
    }
  }
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = PHActionSlider;
  [(PHActionSlider *)&v3 didMoveToWindow];
  [(PHActionSlider *)self setCachedTrackMaskWidth:0.0];
  [(PHActionSlider *)self setNeedsLayout];
  if ([(PHActionSlider *)self isShowingTrackLabel]&& self->_trackLabel)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(PHActionSliderLabel *)self->_trackLabel show];
    }
  }
}

- (void)_makeTrackLabel
{
  trackText = [(PHActionSlider *)self trackText];
  trackFont = [(PHActionSlider *)self trackFont];
  textStyle = [(PHActionSlider *)self textStyle];
  v6 = 0;
  if (textStyle <= 2)
  {
    if (textStyle != 1)
    {
      if (textStyle != 2)
      {
        goto LABEL_16;
      }

      goto LABEL_7;
    }

    vibrantSettings = [(PHActionSlider *)self vibrantSettings];
    v6 = [[_UIGlintyStringView alloc] initWithText:trackText andFont:trackFont];
    [v6 setAllowsLuminanceAdjustments:0];
    [v6 setUsesBackgroundDimming:1];
    [v6 setVibrantSettings:vibrantSettings];
    legibilitySettings = [vibrantSettings legibilitySettings];
    [v6 setLegibilitySettings:legibilitySettings];

    [v6 setChevronStyle:0];
    [v6 setAdjustsFontSizeToFitWidth:1];
    [v6 updateText];
LABEL_15:

    goto LABEL_16;
  }

  if (textStyle == 3)
  {
    v6 = objc_alloc_init(UILabel);
    v18 = +[UIColor secondaryLabelColor];
    [v6 setTextColor:v18];

    [v6 setText:trackText];
    vibrantSettings = [UIFont systemFontOfSize:24.0 weight:UIFontWeightRegular];
    [v6 setFont:vibrantSettings];
    goto LABEL_15;
  }

  if (textStyle == 4)
  {
LABEL_7:
    v6 = objc_alloc_init(UILabel);
    v7 = [UIColor colorWithWhite:1.0 alpha:0.9];
    [v6 setTextColor:v7];

    [v6 setText:trackText];
    [v6 setFont:trackFont];
    v8 = +[PHInCallUtilities sharedInstance];
    if ([v8 isIPadIdiom])
    {
      textStyle2 = [(PHActionSlider *)self textStyle];

      if (textStyle2 != 4)
      {
        goto LABEL_16;
      }
    }

    else
    {
    }

    vibrantSettings = [CAFilter filterWithType:kCAFilterColorMatrix];
    v21[2] = xmmword_1002F93B8;
    v21[3] = *"Zd;@";
    v21[4] = xmmword_1002F93D8;
    v21[0] = xmmword_1002F9398;
    v21[1] = unk_1002F93A8;
    v11 = [NSValue valueWithCAColorMatrix:v21];
    [vibrantSettings setValue:v11 forKey:@"inputColorMatrix"];

    v22 = vibrantSettings;
    v12 = [NSArray arrayWithObjects:&v22 count:1];
    layer = [v6 layer];
    [layer setFilters:v12];

    if ([(PHActionSlider *)self textStyle]== 4)
    {
      v14 = +[UIColor labelColor];
      [v6 setTextColor:v14];

      v15 = kCAFilterPlusD;
      layer2 = [v6 layer];
      [layer2 setCompositingFilter:v15];
    }

    goto LABEL_15;
  }

LABEL_16:
  [(PHActionSliderLabel *)self->_trackLabel removeFromSuperview];
  trackLabel = self->_trackLabel;
  self->_trackLabel = v6;
  v20 = v6;

  [(UIView *)self->_contentView insertSubview:self->_trackLabel below:self->_knobView];
}

- (void)layoutSubviews
{
  v67.receiver = self;
  v67.super_class = PHActionSlider;
  [(PHActionSlider *)&v67 layoutSubviews];
  [(PHActionSlider *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(PHActionSlider *)self _currentScreenScale];
  v12 = v11;
  v66 = v10;
  [(UIView *)self->_contentView setFrame:v4, v6, v8, v10];
  [(PHActionSlider *)self _knobWidth];
  UIRoundToViewScale();
  v14 = v13;
  [(PHActionSlider *)self _knobMinXInset];
  UIRoundToViewScale();
  v16 = v15;
  [(PHActionSlider *)self _knobMaxXInset];
  UIRoundToViewScale();
  v18 = v17;
  [(PHActionSlider *)self _trackFrame];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  if (self->_trackWidthProportion >= 1.0)
  {
    if (self->_knobPosition > 0.0)
    {
      v29 = 0.0;
      if (self->_dragStyle != 2)
      {
        [(PHActionSlider *)self _knobAvailableX];
        v29 = v30 * self->_knobPosition;
      }

      v70.origin.x = v20;
      v70.origin.y = v22;
      v70.size.width = v24;
      v70.size.height = v26;
      v31 = CGRectGetWidth(v70) - v29;
      v71.origin.x = v20;
      v71.origin.y = v22;
      v71.size.width = v24;
      v71.size.height = v26;
      v32 = CGRectGetHeight(v71) - v31;
      if (v32 > 0.0)
      {
        v26 = v26 - v32;
        v22 = v22 + v32 * 0.5;
      }

      if (![(PHActionSlider *)self shouldReverseLayoutDirection])
      {
        v20 = v20 + v29;
      }

      v24 = v24 - v29;
    }
  }

  else
  {
    v27 = v14 + v16 + v18;
    v28 = v19;
    if ([(PHActionSlider *)self shouldReverseLayoutDirection])
    {
      v68.origin.x = v20;
      v68.origin.y = v22;
      v68.size.width = v24;
      v68.size.height = v26;
      v28 = (CGRectGetMaxX(v68) - v27) * (1.0 - self->_trackWidthProportion);
    }

    v69.origin.x = v20;
    v69.origin.y = v22;
    v69.size.width = v24;
    v69.size.height = v26;
    v24 = v27 + (CGRectGetWidth(v69) - v27) * self->_trackWidthProportion;
    v20 = v28;
  }

  [(UIView *)self->_trackBackgroundView setFrame:v20, v22, v24, v26];
  [(UIView *)self->_trackBackgroundView bounds];
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  [(UIView *)self->_trackDodgeView setFrame:?];
  [(_UIBackdropView *)self->_trackBlurView setFrame:v34, v36, v38, v40];
  [(UIView *)self->_trackSolidView setFrame:v34, v36, v38, v40];
  [(UIVisualEffectView *)self->_trackSolidViewBackDropVisualEffectView setFrame:v34, v36, v38, v40];
  [(PHActionSlider *)self cachedTrackMaskWidth];
  v42 = v41;
  v72.origin.x = v34;
  v72.origin.y = v36;
  v72.size.width = v38;
  v72.size.height = v40;
  if (v42 != CGRectGetWidth(v72))
  {
    v73.origin.x = v34;
    v73.origin.y = v36;
    v73.size.width = v38;
    v73.size.height = v40;
    if (CGRectGetWidth(v73) > 0.0)
    {
      [(PHActionSlider *)self updateAllTrackMasks];
    }
  }

  [(PHActionSlider *)self knobRect];
  UIRectIntegralWithScale();
  v44 = v43;
  v46 = v45;
  [(PHActionSliderKnob *)self->_knobView setFrame:?];
  knobImageView = self->_knobImageView;
  if (knobImageView)
  {
    [(UIImageView *)knobImageView sizeThatFits:v44, v46];
    UIRectCenteredIntegralRectScale();
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v55 = v54;
    if ([(PHActionSlider *)self dragStyle]== 2)
    {
      v56 = v44 + (v46 - v53) * -0.5 - v53 - self->_knobImageOffset.width;
    }

    else
    {
      v56 = v49 + self->_knobImageOffset.width;
    }

    [(UIImageView *)self->_knobImageView setFrame:floor(v12 * v56) / v12, floor(v12 * (v51 + self->_knobImageOffset.height)) / v12, v53, v55];
  }

  if (self->_knobLabel)
  {
    _shouldReverseLayoutDirection = [(PHActionSlider *)self _shouldReverseLayoutDirection];
    v58 = v44 - v46;
    if (_shouldReverseLayoutDirection)
    {
      v58 = 0.0;
    }

    [(UILabel *)self->_knobLabel setFrame:v58, 0.0, v46, v46];
  }

  knobText = [(PHActionSlider *)self knobText];
  if (!knobText)
  {
    v63 = self->_knobImageView;
    goto LABEL_29;
  }

  v60 = knobText;
  knobText2 = [(PHActionSlider *)self knobText];
  v62 = [knobText2 isEqualToString:&stru_100361FD0];

  v63 = self->_knobImageView;
  if (v62)
  {
LABEL_29:
    [(UIImageView *)v63 setAlpha:1.0];
    v64 = 0.0;
    goto LABEL_30;
  }

  [(UIImageView *)v63 setAlpha:0.0];
  v64 = 1.0;
LABEL_30:
  [(UILabel *)self->_knobLabel setAlpha:v64];
  if (self->_trackLabel || ([(PHActionSlider *)self _makeTrackLabel], self->_trackLabel))
  {
    [(PHActionSlider *)self trackTextRect];
    UIRectIntegralWithScale();
    [(PHActionSliderLabel *)self->_trackLabel setFrame:?];
  }

  if ([(PHActionSlider *)self style]== 4)
  {
    layer = [(UIView *)self->_trackSolidView layer];
    [layer setCornerRadius:v66 * 0.5];
  }
}

- (id)trackMaskImage
{
  _screen = [(PHActionSlider *)self _screen];
  [(UIView *)self->_trackBackgroundView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [_screen scale];
  v13 = v12;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v25.origin.x = v5;
  v25.origin.y = v7;
  v25.size.width = v9;
  v25.size.height = v11;
  v15 = vcvtpd_u64_f64(v13 * CGRectGetWidth(v25));
  v26.origin.x = v5;
  v26.origin.y = v7;
  v26.size.width = v9;
  v26.size.height = v11;
  Height = CGRectGetHeight(v26);
  v17 = CGBitmapContextCreate(0, v15, vcvtpd_u64_f64(v13 * Height), 8uLL, 4 * v15, DeviceRGB, 2u);
  CGContextScaleCTM(v17, v13, v13);
  v27.origin.x = 0.0;
  v27.origin.y = 0.0;
  v27.size.width = v9;
  v27.size.height = v11;
  CGContextClearRect(v17, v27);
  v23[0] = xmmword_1002F93E8;
  v23[1] = unk_1002F93F8;
  v18 = CGColorCreate(DeviceRGB, v23);
  CGContextSetFillColorWithColor(v17, v18);
  CGColorRelease(v18);
  v19 = sub_1000BBFBC(v5, v7, v9, v11);
  CGContextAddPath(v17, [v19 CGPath]);
  CGContextFillPath(v17);
  Image = CGBitmapContextCreateImage(v17);
  CGContextRelease(v17);
  CGColorSpaceRelease(DeviceRGB);
  v21 = [UIImage imageWithCGImage:Image scale:0 orientation:v13];
  CGImageRelease(Image);

  return v21;
}

- (id)trackMaskPath
{
  [(UIView *)self->_trackBackgroundView bounds];

  return sub_1000BBFBC(v2, v3, v4, v5);
}

- (void)updateAllTrackMasks
{
  if ([(PHActionSlider *)self isAnimating])
  {
    trackMaskPath = [(PHActionSlider *)self trackMaskPath];
    Copy = CGPathCreateCopy([trackMaskPath CGPath]);
    [(PHActionSlider *)self setMaskPath:Copy onView:self->_trackDodgeView];
    if (self->_trackSolidView)
    {
      [(PHActionSlider *)self setMaskPath:Copy onView:?];
      [(PHActionSlider *)self setMaskPath:Copy onView:self->_trackSolidViewBackDropVisualEffectView];
    }

    if (([(PHActionSlider *)self textStyle]== 3 || [(PHActionSlider *)self style]== 4) && [(PHActionSlider *)self textStyle]!= 1)
    {
      [(PHActionSlider *)self applyGlassTrackMask];
    }

    CGPathRelease(Copy);

    p_trackBlurView = &self->_trackBlurView;
    if (!self->_trackBlurView)
    {
      trackMaskImage = 0;
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  trackMaskImage = [(PHActionSlider *)self trackMaskImage];
  [PHActionSlider setMaskFromImage:"setMaskFromImage:onView:" onView:?];
  if (self->_trackSolidView)
  {
    [(PHActionSlider *)self setMaskFromImage:trackMaskImage onView:?];
    [(PHActionSlider *)self setMaskFromImage:trackMaskImage onView:self->_trackSolidViewBackDropVisualEffectView];
  }

  if (([(PHActionSlider *)self textStyle]== 3 || [(PHActionSlider *)self style]== 4) && [(PHActionSlider *)self textStyle]!= 1)
  {
    [(PHActionSlider *)self applyGlassTrackMask];
  }

  p_trackBlurView = &self->_trackBlurView;
  trackBlurView = self->_trackBlurView;
  if (trackBlurView)
  {
    trackMaskImage2 = trackMaskImage;
    if (trackMaskImage)
    {
LABEL_19:
      trackMaskImage = trackMaskImage2;
      inputSettings = [(_UIBackdropView *)trackBlurView inputSettings];
      [inputSettings setFilterMaskImage:trackMaskImage];
      [inputSettings setGrayscaleTintMaskImage:trackMaskImage];
      [inputSettings setColorTintMaskImage:trackMaskImage];

      goto LABEL_20;
    }

LABEL_18:
    trackMaskImage2 = [(PHActionSlider *)self trackMaskImage];
    trackBlurView = *p_trackBlurView;
    goto LABEL_19;
  }

LABEL_20:
  [(UIView *)self->_trackBackgroundView bounds];
  [(PHActionSlider *)self setCachedTrackMaskWidth:CGRectGetWidth(v11)];
}

- (void)applyGlassTrackMask
{
  [(UIView *)self->_trackBackgroundView frame];
  v20 = sub_1000BBFBC(v3, v4, v5, v6);
  layer = [(PHActionSliderLabel *)self->_trackLabel layer];
  mask = [layer mask];
  v9 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v11 = +[CAShapeLayer layer];

    [(UIView *)self->_trackBackgroundView frame];
    v13 = v12;
    v15 = v14;
    [(PHActionSliderLabel *)self->_trackLabel frame];
    v17 = (v13 - v16) * -0.5;
    [(PHActionSliderLabel *)self->_trackLabel frame];
    [v11 setFrame:{v17, (v15 - v18) * -0.5, v13, v15}];
    [layer setMask:v11];
    mask = v11;
  }

  v19 = v20;
  [mask setPath:{objc_msgSend(v20, "CGPath")}];
}

- (void)setMaskPath:(CGPath *)path onView:(id)view
{
  viewCopy = view;
  layer = [viewCopy layer];
  mask = [layer mask];
  v7 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v9 = +[CAShapeLayer layer];

    [v9 setAnchorPoint:{CGPointZero.x, CGPointZero.y}];
    [v9 setDelegate:viewCopy];
    [layer setMask:v9];
    mask = v9;
  }

  [viewCopy bounds];
  [mask setBounds:?];
  [mask setPath:path];
}

- (void)setMaskFromImage:(id)image onView:(id)view
{
  imageCopy = image;
  viewCopy = view;
  imageCopy2 = image;
  cGImage = [imageCopy2 CGImage];
  v23 = +[CALayer layer];
  [viewCopy bounds];
  [v23 setBounds:?];
  [v23 setAnchorPoint:{CGPointZero.x, CGPointZero.y}];
  [imageCopy2 scale];
  [v23 setContentsScale:?];
  [v23 setDelegate:viewCopy];
  [imageCopy2 size];
  v11 = v10;
  v13 = v12;
  [imageCopy2 capInsets];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  [v23 setContentsCenter:{v17 / v11, v15 / v13, (v11 - v21 - v17) / v11, (v13 - v15 - v19) / v13}];
  [v23 setContents:cGImage];
  layer = [viewCopy layer];

  [layer setMask:v23];
}

- (void)setTrackLabelHidden:(BOOL)hidden animated:(BOOL)animated
{
  animatedCopy = animated;
  hiddenCopy = hidden;
  if ([(PHActionSlider *)self textStyle]!= 3 && [(PHActionSlider *)self style]!= 4 || [(PHActionSlider *)self textStyle]== 1)
  {
    isShowingTrackLabel = [(PHActionSlider *)self isShowingTrackLabel];
    if (hiddenCopy)
    {
      if (!isShowingTrackLabel)
      {
        return;
      }

      if (!self->_trackLabel)
      {
        [(PHActionSlider *)self _makeTrackLabel];
      }

      if ([(PHActionSlider *)self textStyle]== 1)
      {
        trackLabel = self->_trackLabel;
        if (animatedCopy)
        {
          [(PHActionSliderLabel *)trackLabel fadeOutWithDuration:0.15];
        }

        else
        {
          [(PHActionSliderLabel *)trackLabel hide];
        }

        goto LABEL_21;
      }

      v9 = 0.15;
      if (!animatedCopy)
      {
        v9 = 0.0;
      }

      v16 = _NSConcreteStackBlock;
      v17 = 3221225472;
      v18 = sub_1000BC860;
      v19 = &unk_100356988;
      selfCopy = self;
      v10 = &v16;
    }

    else
    {
      if (isShowingTrackLabel)
      {
        return;
      }

      if (!self->_trackLabel)
      {
        [(PHActionSlider *)self _makeTrackLabel];
      }

      if ([(PHActionSlider *)self textStyle]== 1)
      {
        [(PHActionSliderLabel *)self->_trackLabel fadeInWithDuration:0.15];
LABEL_21:
        [(PHActionSlider *)self setShowingTrackLabel:!hiddenCopy];
        return;
      }

      v11 = _NSConcreteStackBlock;
      v12 = 3221225472;
      v13 = sub_1000BC878;
      v14 = &unk_100356988;
      selfCopy2 = self;
      v9 = 0.15;
      v10 = &v11;
    }

    [UIView animateWithDuration:v10 animations:v9, v11, v12, v13, v14, selfCopy2, v16, v17, v18, v19, selfCopy];
    goto LABEL_21;
  }
}

- (void)_slideCompleted:(BOOL)completed
{
  completedCopy = completed;
  [(PHActionSlider *)self setAnimating:1];
  [(PHActionSlider *)self updateAllTrackMasks];
  self->_slideGestureInitialPoint = CGPointZero;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000BCA6C;
  v9[3] = &unk_100356BB8;
  v10 = completedCopy;
  v9[4] = self;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000BCB08;
  v8[3] = &unk_1003569B0;
  v8[4] = self;
  [UIView _animateUsingDefaultTimingWithOptions:0 animations:v9 completion:v8];
  if (completedCopy)
  {
    delegate = [(PHActionSlider *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate actionSliderDidCompleteSlide:self];
    }
  }

  else
  {
    v6 = dispatch_time(0, 150000000);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000BCB54;
    v7[3] = &unk_100356988;
    v7[4] = self;
    dispatch_after(v6, &_dispatch_main_q, v7);
    delegate = [(PHActionSlider *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate actionSliderDidCancelSlide:self];
    }
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  touchCopy = touch;
  if (self->_slideGestureRecognizer == recognizer && ![recognizer state])
  {
    [touchCopy locationInView:self->_knobView];
    [(PHActionSlider *)self setPanGestureFirstTouchLocationInView:?];
    v7 = sub_100004F84();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = touchCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "PHActionSlider -shouldReceiveTouch: storing touch %@", &v9, 0xCu);
    }
  }

  return 1;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  slideGestureRecognizer = self->_slideGestureRecognizer;
  if (slideGestureRecognizer != beginCopy)
  {
    x = CGPointZero.x;
    y = CGPointZero.y;
LABEL_4:
    v10 = 1;
    goto LABEL_5;
  }

  [(UIPanGestureRecognizer *)slideGestureRecognizer locationInView:self->_knobView];
  x = v8;
  y = v9;
  [(PHActionSliderKnob *)self->_knobView bounds];
  v35.x = x;
  v35.y = y;
  if (CGRectContainsPoint(v37, v35))
  {
    goto LABEL_4;
  }

  [(PHActionSliderKnob *)self->_knobView bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  [(PHActionSlider *)self panGestureFirstTouchLocationInView];
  v36.x = v24;
  v36.y = v25;
  v39.origin.x = v17;
  v39.origin.y = v19;
  v39.size.width = v21;
  v39.size.height = v23;
  v10 = CGRectContainsPoint(v39, v36);
LABEL_5:
  v11 = sub_100004F84();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v33.x = x;
    v33.y = y;
    v12 = NSStringFromCGPoint(v33);
    [(PHActionSlider *)self panGestureFirstTouchLocationInView];
    v13 = NSStringFromCGPoint(v34);
    [(PHActionSliderKnob *)self->_knobView bounds];
    v14 = NSStringFromCGRect(v38);
    v26[0] = 67109890;
    v26[1] = v10;
    v27 = 2112;
    v28 = v12;
    v29 = 2112;
    v30 = v13;
    v31 = 2112;
    v32 = v14;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "PHActionSlider shouldBegin: %d touchLocationInKnob: %@ firstTouchLocationInKnob: %@ knobViewBounds: %@", v26, 0x26u);
  }

  return v10;
}

- (void)_knobPanGesture:(id)gesture
{
  gestureCopy = gesture;
  _shouldReverseLayoutDirection = [(PHActionSlider *)self _shouldReverseLayoutDirection];
  [(PHActionSlider *)self _knobMinX];
  v7 = v6;
  [(PHActionSlider *)self _knobAvailableX];
  v9 = v8;
  [gestureCopy locationInView:self];
  v11 = v10;
  v13 = v12;
  p_slideGestureInitialPoint = &self->_slideGestureInitialPoint;
  x = self->_slideGestureInitialPoint.x;
  [gestureCopy velocityInView:self];
  v17 = v16;
  v18 = self->_slideGestureInitialPoint.x;
  if (_shouldReverseLayoutDirection)
  {
    v19 = x - v11;
    if (v18 < 0.0)
    {
      [(PHActionSlider *)self _knobMinX];
LABEL_6:
      v21 = v20;
      goto LABEL_8;
    }
  }

  else
  {
    v19 = v11 - x;
    if (v18 < 0.0)
    {
      [(PHActionSlider *)self _knobMaxX];
      goto LABEL_6;
    }
  }

  v21 = v9;
LABEL_8:
  v22 = v19 / v21;
  [(PHActionSlider *)self minSlideCompletionPercentage];
  v24 = v19 / (v21 * v23);
  v25 = v17 >= 150.0 && v19 / v21 >= 0.4;
  v26 = v24 >= 0.999000013 || v25;
  delegate = [(PHActionSlider *)self delegate];
  state = [gestureCopy state];
  if (state <= 3)
  {
    if (state == 1)
    {
      v33 = sub_100004F84();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v35 = 138412290;
        v36[0] = gestureCopy;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Began slide with gesture recognizer: %@", &v35, 0xCu);
      }

      p_slideGestureInitialPoint->x = v11;
      self->_slideGestureInitialPoint.y = v13;
      if ([(PHActionSlider *)self shouldHideTrackLabelForXPoint:v11])
      {
        [(PHActionSlider *)self hideTrackLabel:1];
      }

      if (objc_opt_respondsToSelector())
      {
        [delegate actionSliderDidBeginSlide:self];
      }

      goto LABEL_26;
    }

    if (state != 2)
    {
      if (state == 3)
      {
        v29 = sub_100004F84();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v35 = 67109378;
          LODWORD(v36[0]) = v26;
          WORD2(v36[0]) = 2112;
          *(v36 + 6) = gestureCopy;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Recognized slide with with success=%d for gesture recognizer: %@", &v35, 0x12u);
        }

        selfCopy2 = self;
        v31 = v26;
LABEL_25:
        [(PHActionSlider *)selfCopy2 _slideCompleted:v31];
        goto LABEL_26;
      }

      goto LABEL_26;
    }

    if ([(PHActionSlider *)self xPointIsWithinTrack:v11])
    {
      if (![(PHActionSlider *)self xPointIsWithinTrack:p_slideGestureInitialPoint->x])
      {
        if ([(PHActionSlider *)self xPointIsWithinTrack:p_slideGestureInitialPoint->x])
        {
          v7 = p_slideGestureInitialPoint->x;
        }

        v22 = vabdd_f64(v11, v7) / v9;
      }

      p_knobPosition = &self->_knobPosition;
      self->_knobPosition = v22;
      if (v22 > 0.0)
      {
        if (v22 > 1.0)
        {
          *p_knobPosition = 1.0;
        }

        [(PHActionSlider *)self hideTrackLabelIfNecessary:1];
        goto LABEL_44;
      }
    }

    else
    {
      p_knobPosition = &self->_knobPosition;
      self->_knobPosition = 0.0;
    }

    *p_knobPosition = 0.0;
    [(PHActionSlider *)self showTrackLabel];
LABEL_44:
    [(PHActionSlider *)self setNeedsLayout];
    [(PHActionSlider *)self setNeedsDisplay];
    if (objc_opt_respondsToSelector())
    {
      [delegate actionSlider:self didUpdateSlideWithValue:*p_knobPosition];
    }

    goto LABEL_26;
  }

  if ((state - 4) < 2)
  {
    v32 = sub_100004F84();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v35 = 138412290;
      v36[0] = gestureCopy;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Failed slide with gesture recognizer: %@", &v35, 0xCu);
    }

    selfCopy2 = self;
    v31 = 0;
    goto LABEL_25;
  }

LABEL_26:
}

- (void)hideTrackLabelIfNecessary:(BOOL)necessary
{
  if (self->_dragStyle != 2)
  {
    [(PHActionSlider *)self hideTrackLabel:necessary];
  }
}

- (CGSize)knobImageOffset
{
  width = self->_knobImageOffset.width;
  height = self->_knobImageOffset.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)trackSize
{
  width = self->_trackSize.width;
  height = self->_trackSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (PHActionSliderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIEdgeInsets)knobInsets
{
  top = self->_knobInsets.top;
  left = self->_knobInsets.left;
  bottom = self->_knobInsets.bottom;
  right = self->_knobInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGPoint)panGestureFirstTouchLocationInView
{
  x = self->_panGestureFirstTouchLocationInView.x;
  y = self->_panGestureFirstTouchLocationInView.y;
  result.y = y;
  result.x = x;
  return result;
}

@end