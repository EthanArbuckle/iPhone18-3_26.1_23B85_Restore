@interface BKScrubberSlider
- (BKScrubberSlider)init;
- (BKScrubberSliderContainerView)containerView;
- (BOOL)_hasSessionIndicatorView;
- (CGRect)_createBufferedRect;
- (CGRect)_createSessionIndicatorRect;
- (CGRect)accessibilityFrame;
- (CGRect)bkaxDefaultAccessibilityFrame;
- (CGRect)trackRectForBounds:(CGRect)bounds;
- (CGRect)visualTrackRectForBounds:(CGRect)bounds;
- (UIEdgeInsets)alignmentRectInsets;
- (id)_sessionIndicatorAccessibleDescription;
- (id)accessibilityCustomActions;
- (id)createThumbView;
- (void)_didTapSessionIndicator:(id)indicator;
- (void)_updateSessionIndicatorColor;
- (void)layoutSubviews;
- (void)setBufferIndicatorColor:(id)color;
- (void)setBufferedValue:(double)bufferedValue;
- (void)setSessionIndicatorColor:(id)color;
- (void)setSessionIndicatorValue:(id)value;
- (void)setTouchInsets:(UIEdgeInsets)insets;
@end

@implementation BKScrubberSlider

- (BKScrubberSlider)init
{
  v6.receiver = self;
  v6.super_class = BKScrubberSlider;
  v2 = [(BKScrubberSlider *)&v6 init];
  if (v2)
  {
    v3 = +[UITraitCollection bc_allAPITraits];
    v4 = [(BKScrubberSlider *)v2 registerForTraitChanges:v3 withAction:"_traitCollectionDidChange:previousTraitCollection:"];
  }

  return v2;
}

- (id)createThumbView
{
  v6.receiver = self;
  v6.super_class = BKScrubberSlider;
  createThumbView = [(BKScrubberSlider *)&v6 createThumbView];
  containerView = [(BKScrubberSlider *)self containerView];
  [containerView setThumbView:createThumbView];

  return createThumbView;
}

- (void)layoutSubviews
{
  v16.receiver = self;
  v16.super_class = BKScrubberSlider;
  [(BKScrubberSlider *)&v16 layoutSubviews];
  containerView = [(BKScrubberSlider *)self containerView];
  bufferedView = [containerView bufferedView];
  sessionIndicatorView = [containerView sessionIndicatorView];
  if (bufferedView)
  {
    +[CATransaction begin];
    [CATransaction setDisableActions:1];
    [(BKScrubberSlider *)self _createBufferedRect];
    [bufferedView setFrame:?];
    +[CATransaction commit];
  }

  if (sessionIndicatorView)
  {
    +[CATransaction begin];
    [CATransaction setDisableActions:1];
    [(BKScrubberSlider *)self _createSessionIndicatorRect];
    [sessionIndicatorView setFrame:?];
    subviews = [containerView subviews];
    lastObject = [subviews lastObject];
    v8 = [lastObject isEqual:sessionIndicatorView];

    if ((v8 & 1) == 0)
    {
      [containerView bringSubviewToFront:sessionIndicatorView];
    }

    +[CATransaction commit];
  }

  subviews2 = [(BKScrubberSlider *)self subviews];
  v10 = [subviews2 count];

  v11 = v10 - 2;
  subviews3 = [(BKScrubberSlider *)self subviews];
  v13 = [subviews3 objectAtIndexedSubscript:v11];
  v14 = [v13 isEqual:containerView];

  if ((v14 & 1) == 0)
  {
    [(BKScrubberSlider *)self bringSubviewToFront:containerView];
    thumbView = [containerView thumbView];
    [(BKScrubberSlider *)self bringSubviewToFront:thumbView];
  }
}

- (CGRect)trackRectForBounds:(CGRect)bounds
{
  width = bounds.size.width;
  x = bounds.origin.x;
  v17.receiver = self;
  v17.super_class = BKScrubberSlider;
  [(BKScrubberSlider *)&v17 trackRectForBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  v7 = v6;
  v9 = v8;
  [(BKScrubberSlider *)self trackRectHorizontalInset];
  v11 = x + v10;
  [(BKScrubberSlider *)self trackRectHorizontalInset];
  v13 = width + v12 * -2.0;
  v14 = v11;
  v15 = v7;
  v16 = v9;
  result.size.height = v16;
  result.size.width = v13;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (UIEdgeInsets)alignmentRectInsets
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 1.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)setTouchInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v4 = &self->IMCustomSlider_opaque[OBJC_IVAR___IMCustomSlider__touchInsets];
  v3.f64[1] = insets.left;
  v5.f64[0] = insets.bottom;
  v5.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *v4), vceqq_f64(v5, v4[1])))) & 1) == 0)
  {
    *v4->f64 = insets;
    right = insets.right;
    left = insets.left;
    bottom = insets.bottom;
    top = insets.top;
    containerView = [(BKScrubberSlider *)self containerView];
    [containerView setThumbTouchInsets:{top, left, bottom, right}];
  }
}

- (CGRect)visualTrackRectForBounds:(CGRect)bounds
{
  [(BKScrubberSlider *)self trackRectForBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];

  return CGRectInset(*&v3, 1.0, 0.0);
}

- (BKScrubberSliderContainerView)containerView
{
  containerView = self->_containerView;
  if (!containerView)
  {
    v4 = [BKScrubberSliderContainerView alloc];
    [(BKScrubberSlider *)self bounds];
    v5 = [(BKScrubberSliderContainerView *)v4 initWithFrame:?];
    v6 = self->_containerView;
    self->_containerView = v5;

    v7 = +[UIColor clearColor];
    [(BKScrubberSliderContainerView *)self->_containerView setBackgroundColor:v7];

    layer = [(BKScrubberSliderContainerView *)self->_containerView layer];
    [layer setAllowsGroupBlending:0];

    [(BKScrubberSliderContainerView *)self->_containerView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(BKScrubberSlider *)self addSubview:self->_containerView];
    topAnchor = [(BKScrubberSliderContainerView *)self->_containerView topAnchor];
    topAnchor2 = [(BKScrubberSlider *)self topAnchor];
    v20 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v23[0] = v20;
    leadingAnchor = [(BKScrubberSliderContainerView *)self->_containerView leadingAnchor];
    leadingAnchor2 = [(BKScrubberSlider *)self leadingAnchor];
    v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v23[1] = v9;
    trailingAnchor = [(BKScrubberSliderContainerView *)self->_containerView trailingAnchor];
    trailingAnchor2 = [(BKScrubberSlider *)self trailingAnchor];
    v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v23[2] = v12;
    bottomAnchor = [(BKScrubberSliderContainerView *)self->_containerView bottomAnchor];
    bottomAnchor2 = [(BKScrubberSlider *)self bottomAnchor];
    v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v23[3] = v15;
    v16 = [NSArray arrayWithObjects:v23 count:4];
    [NSLayoutConstraint activateConstraints:v16];

    containerView = self->_containerView;
  }

  return containerView;
}

- (void)setBufferedValue:(double)bufferedValue
{
  if (self->_bufferedValue == bufferedValue)
  {
    return;
  }

  self->_bufferedValue = bufferedValue;
  if (bufferedValue > 0.0)
  {
    containerView = [(BKScrubberSlider *)self containerView];
    bufferedView = [containerView bufferedView];

    if (!bufferedView)
    {
      [(BKScrubberSlider *)self bounds];
      [(BKScrubberSlider *)self visualTrackRectForBounds:?];
      v10 = v9;
      containerView5 = objc_opt_new();
      bufferIndicatorColor = [(BKScrubberSlider *)self bufferIndicatorColor];
      if (bufferIndicatorColor)
      {
        [containerView5 setBackgroundColor:bufferIndicatorColor];
      }

      else
      {
        v12 = +[UIColor systemGray2Color];
        [containerView5 setBackgroundColor:v12];
      }

      layer = [containerView5 layer];
      [layer setCornerRadius:v10 * 0.5];

      layer2 = [containerView5 layer];
      [layer2 setMaskedCorners:10];

      containerView2 = [(BKScrubberSlider *)self containerView];
      [containerView2 addSubview:containerView5];

      containerView3 = [(BKScrubberSlider *)self containerView];
      [containerView3 setBufferedView:containerView5];

      goto LABEL_12;
    }

    bufferedValue = self->_bufferedValue;
  }

  if (bufferedValue <= 0.0)
  {
    containerView4 = [(BKScrubberSlider *)self containerView];
    bufferedView2 = [containerView4 bufferedView];
    [bufferedView2 removeFromSuperview];

    containerView5 = [(BKScrubberSlider *)self containerView];
    [containerView5 setBufferedView:0];
LABEL_12:
  }

  [(BKScrubberSlider *)self setNeedsLayout];
}

- (void)setBufferIndicatorColor:(id)color
{
  objc_storeStrong(&self->_bufferIndicatorColor, color);
  colorCopy = color;
  containerView = [(BKScrubberSlider *)self containerView];
  bufferedView = [containerView bufferedView];
  [bufferedView setBackgroundColor:colorCopy];
}

- (void)setSessionIndicatorColor:(id)color
{
  colorCopy = color;
  v6 = colorCopy;
  if (self->_sessionIndicatorColor != colorCopy)
  {
    v8 = colorCopy;
    v7 = [(UIColor *)colorCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_sessionIndicatorColor, color);
      [(BKScrubberSlider *)self _updateSessionIndicatorColor];
      v6 = v8;
    }
  }
}

- (void)setSessionIndicatorValue:(id)value
{
  valueCopy = value;
  sessionIndicatorValue = self->_sessionIndicatorValue;
  v19 = valueCopy;
  if (valueCopy)
  {
    if ([(NSNumber *)sessionIndicatorValue isEqualToNumber:valueCopy])
    {
      goto LABEL_13;
    }

    objc_storeStrong(&self->_sessionIndicatorValue, value);
    if (!self->_sessionIndicatorValue)
    {
      goto LABEL_12;
    }

    containerView = [(BKScrubberSlider *)self containerView];
    sessionIndicatorView = [containerView sessionIndicatorView];

    if (sessionIndicatorView)
    {
      goto LABEL_12;
    }

    containerView5 = objc_opt_new();
    [(BKScrubberSlider *)self _createSessionIndicatorRect];
    [containerView5 setFrame:?];
    v10 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_didTapSessionIndicator:"];
    [containerView5 addGestureRecognizer:v10];

    containerView2 = [(BKScrubberSlider *)self containerView];
    [containerView2 addSubview:containerView5];

    containerView3 = [(BKScrubberSlider *)self containerView];
    [containerView3 setSessionIndicatorView:containerView5];

    if (_UISolariumEnabled())
    {
      v13 = 10.0;
    }

    else
    {
      v13 = 6.0;
    }

    v14 = [UIBezierPath bezierPathWithOvalInRect:v13 * -0.5 + 11.0, v13 * -0.5 + 11.0 + -0.5, v13, v13];
    v15 = +[CAShapeLayer layer];
    [v15 setPath:{objc_msgSend(v14, "CGPath")}];
    layer = [containerView5 layer];
    [layer addSublayer:v15];

    [(BKScrubberSlider *)self _updateSessionIndicatorColor];
  }

  else
  {
    if (!sessionIndicatorValue)
    {
      goto LABEL_13;
    }

    self->_sessionIndicatorValue = 0;

    containerView4 = [(BKScrubberSlider *)self containerView];
    sessionIndicatorView2 = [containerView4 sessionIndicatorView];
    [sessionIndicatorView2 removeFromSuperview];

    containerView5 = [(BKScrubberSlider *)self containerView];
    [containerView5 setSessionIndicatorView:0];
  }

LABEL_12:
  [(BKScrubberSlider *)self setNeedsLayout];
LABEL_13:
  [(BKScrubberSlider *)self setCachedAccessibleDescriptionOfSessionIndicatorPosition:0];
}

- (CGRect)_createSessionIndicatorRect
{
  containerView = [(BKScrubberSlider *)self containerView];
  [containerView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(BKScrubberSlider *)self trackRectForBounds:v5, v7, v9, v11];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [(NSNumber *)self->_sessionIndicatorValue floatValue];
  LODWORD(v28) = v20;
  [(BKScrubberSlider *)self thumbRectForBounds:v5 trackRect:v7 value:v9, v11, v13, v15, v17, v19, v28];
  CGRectGetCenter();
  v22 = v21;
  CGRectGetCenter();
  v23 = v22 + -11.0;
  v25 = v24 + -11.0;
  v26 = 22.0;
  v27 = 22.0;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v23;
  return result;
}

- (CGRect)_createBufferedRect
{
  [(BKScrubberSlider *)self bufferedValue];
  v4 = v3;
  [(BKScrubberSlider *)self value];
  if (v4 <= v5)
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  else
  {
    containerView = [(BKScrubberSlider *)self containerView];
    [containerView bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    [(BKScrubberSlider *)self visualTrackRectForBounds:v8, v10, v12, v14];
    v16 = v15;
    y = v17;
    v32 = v4;
    v20 = v19;
    height = v21;
    [(BKScrubberSlider *)self value];
    LODWORD(v31) = v23;
    [(BKScrubberSlider *)self thumbRectForBounds:v8 trackRect:v10 value:v12, v14, v16, y, v20, height, v31];
    x = CGRectGetMaxX(v33);
    v25 = fmax(v16 + v32 * v20 - x, 0.0);
    v34.origin.x = v16;
    v34.origin.y = y;
    v34.size.width = v20;
    v34.size.height = height;
    v26 = CGRectGetMaxX(v34) - x;
    if (v25 >= v26)
    {
      width = v26;
    }

    else
    {
      width = v25;
    }
  }

  v28 = x;
  v29 = y;
  v30 = height;
  result.size.height = v30;
  result.size.width = width;
  result.origin.y = v29;
  result.origin.x = v28;
  return result;
}

- (BOOL)_hasSessionIndicatorView
{
  containerView = [(BKScrubberSlider *)self containerView];
  sessionIndicatorView = [containerView sessionIndicatorView];
  v4 = sessionIndicatorView != 0;

  return v4;
}

- (id)_sessionIndicatorAccessibleDescription
{
  cachedAccessibleDescriptionOfSessionIndicatorPosition = [(BKScrubberSlider *)self cachedAccessibleDescriptionOfSessionIndicatorPosition];
  if (!cachedAccessibleDescriptionOfSessionIndicatorPosition && [(BKScrubberSlider *)self _hasSessionIndicatorView])
  {
    delegate = [(BKScrubberSlider *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if ((v5 & 1) == 0)
    {
      goto LABEL_6;
    }

    cachedAccessibleDescriptionOfSessionIndicatorPosition = [(BKScrubberSlider *)self delegate];
    accessibleDescriptionOfSessionIndicatorPosition = [cachedAccessibleDescriptionOfSessionIndicatorPosition accessibleDescriptionOfSessionIndicatorPosition];
    [(BKScrubberSlider *)self setCachedAccessibleDescriptionOfSessionIndicatorPosition:accessibleDescriptionOfSessionIndicatorPosition];
  }

LABEL_6:

  return [(BKScrubberSlider *)self cachedAccessibleDescriptionOfSessionIndicatorPosition];
}

- (void)_didTapSessionIndicator:(id)indicator
{
  delegate = [(BKScrubberSlider *)self delegate];
  [delegate didTapSessionIndicator:self];
}

- (void)_updateSessionIndicatorColor
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  containerView = [(BKScrubberSlider *)self containerView];
  sessionIndicatorView = [containerView sessionIndicatorView];
  layer = [sessionIndicatorView layer];
  sublayers = [layer sublayers];

  obj = sublayers;
  v7 = [sublayers countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(obj);
        }

        sessionIndicatorColor = [(BKScrubberSlider *)self sessionIndicatorColor];
        cGColor = [sessionIndicatorColor CGColor];
        cGColor2 = cGColor;
        if (!cGColor)
        {
          sessionIndicatorView = +[UIColor bc_booksOpaqueSecondaryLabelColor];
          cGColor2 = [sessionIndicatorView CGColor];
        }

        objc_opt_class();
        v14 = BUDynamicCast();
        [v14 setFillColor:cGColor2];

        if (!cGColor)
        {
        }
      }

      v8 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }
}

- (id)accessibilityCustomActions
{
  v3 = [NSMutableArray alloc];
  v14.receiver = self;
  v14.super_class = BKScrubberSlider;
  accessibilityCustomActions = [(BKScrubberSlider *)&v14 accessibilityCustomActions];
  v5 = [v3 initWithArray:accessibilityCustomActions];

  if ([(BKScrubberSlider *)self _hasSessionIndicatorView])
  {
    _sessionIndicatorAccessibleDescription = [(BKScrubberSlider *)self _sessionIndicatorAccessibleDescription];
    v7 = +[NSBundle mainBundle];
    if (_sessionIndicatorAccessibleDescription)
    {
      v8 = [v7 localizedStringForKey:@"Scrub to start of playback at %@" value:&stru_100A30A68 table:0];
      v9 = [NSString localizedStringWithFormat:v8, _sessionIndicatorAccessibleDescription];
    }

    else
    {
      v9 = [v7 localizedStringForKey:@"Scrub to start of playback" value:&stru_100A30A68 table:0];
    }

    v10 = [[UIAccessibilityCustomAction alloc] initWithName:v9 target:self selector:"bkaxDidTapSessionIndicator"];
    [v5 addObject:v10];
  }

  if ([v5 count])
  {
    v11 = v5;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  return v11;
}

- (CGRect)accessibilityFrame
{
  v22.receiver = self;
  v22.super_class = BKScrubberSlider;
  [(BKScrubberSlider *)&v22 accessibilityFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  delegate = [(BKScrubberSlider *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    delegate2 = [(BKScrubberSlider *)self delegate];
    [delegate2 alternateAccessibilityFrameFor:self];
    v4 = v14;
    v6 = v15;
    v8 = v16;
    v10 = v17;
  }

  v18 = v4;
  v19 = v6;
  v20 = v8;
  v21 = v10;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (CGRect)bkaxDefaultAccessibilityFrame
{
  v6.receiver = self;
  v6.super_class = BKScrubberSlider;
  [(BKScrubberSlider *)&v6 accessibilityFrame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end