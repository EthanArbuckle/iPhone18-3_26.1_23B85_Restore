@interface BKScrubberSlider
- (BKScrubberSlider)init;
- (BKScrubberSliderContainerView)containerView;
- (BOOL)_hasSessionIndicatorView;
- (CGRect)_createBufferedRect;
- (CGRect)_createSessionIndicatorRect;
- (CGRect)accessibilityFrame;
- (CGRect)bkaxDefaultAccessibilityFrame;
- (CGRect)trackRectForBounds:(CGRect)a3;
- (CGRect)visualTrackRectForBounds:(CGRect)a3;
- (UIEdgeInsets)alignmentRectInsets;
- (id)_sessionIndicatorAccessibleDescription;
- (id)accessibilityCustomActions;
- (id)createThumbView;
- (void)_didTapSessionIndicator:(id)a3;
- (void)_updateSessionIndicatorColor;
- (void)layoutSubviews;
- (void)setBufferIndicatorColor:(id)a3;
- (void)setBufferedValue:(double)bufferedValue;
- (void)setSessionIndicatorColor:(id)a3;
- (void)setSessionIndicatorValue:(id)a3;
- (void)setTouchInsets:(UIEdgeInsets)a3;
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
  v3 = [(BKScrubberSlider *)&v6 createThumbView];
  v4 = [(BKScrubberSlider *)self containerView];
  [v4 setThumbView:v3];

  return v3;
}

- (void)layoutSubviews
{
  v16.receiver = self;
  v16.super_class = BKScrubberSlider;
  [(BKScrubberSlider *)&v16 layoutSubviews];
  v3 = [(BKScrubberSlider *)self containerView];
  v4 = [v3 bufferedView];
  v5 = [v3 sessionIndicatorView];
  if (v4)
  {
    +[CATransaction begin];
    [CATransaction setDisableActions:1];
    [(BKScrubberSlider *)self _createBufferedRect];
    [v4 setFrame:?];
    +[CATransaction commit];
  }

  if (v5)
  {
    +[CATransaction begin];
    [CATransaction setDisableActions:1];
    [(BKScrubberSlider *)self _createSessionIndicatorRect];
    [v5 setFrame:?];
    v6 = [v3 subviews];
    v7 = [v6 lastObject];
    v8 = [v7 isEqual:v5];

    if ((v8 & 1) == 0)
    {
      [v3 bringSubviewToFront:v5];
    }

    +[CATransaction commit];
  }

  v9 = [(BKScrubberSlider *)self subviews];
  v10 = [v9 count];

  v11 = v10 - 2;
  v12 = [(BKScrubberSlider *)self subviews];
  v13 = [v12 objectAtIndexedSubscript:v11];
  v14 = [v13 isEqual:v3];

  if ((v14 & 1) == 0)
  {
    [(BKScrubberSlider *)self bringSubviewToFront:v3];
    v15 = [v3 thumbView];
    [(BKScrubberSlider *)self bringSubviewToFront:v15];
  }
}

- (CGRect)trackRectForBounds:(CGRect)a3
{
  width = a3.size.width;
  x = a3.origin.x;
  v17.receiver = self;
  v17.super_class = BKScrubberSlider;
  [(BKScrubberSlider *)&v17 trackRectForBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (void)setTouchInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v4 = &self->IMCustomSlider_opaque[OBJC_IVAR___IMCustomSlider__touchInsets];
  v3.f64[1] = a3.left;
  v5.f64[0] = a3.bottom;
  v5.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *v4), vceqq_f64(v5, v4[1])))) & 1) == 0)
  {
    *v4->f64 = a3;
    right = a3.right;
    left = a3.left;
    bottom = a3.bottom;
    top = a3.top;
    v9 = [(BKScrubberSlider *)self containerView];
    [v9 setThumbTouchInsets:{top, left, bottom, right}];
  }
}

- (CGRect)visualTrackRectForBounds:(CGRect)a3
{
  [(BKScrubberSlider *)self trackRectForBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];

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

    v8 = [(BKScrubberSliderContainerView *)self->_containerView layer];
    [v8 setAllowsGroupBlending:0];

    [(BKScrubberSliderContainerView *)self->_containerView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(BKScrubberSlider *)self addSubview:self->_containerView];
    v22 = [(BKScrubberSliderContainerView *)self->_containerView topAnchor];
    v21 = [(BKScrubberSlider *)self topAnchor];
    v20 = [v22 constraintEqualToAnchor:v21];
    v23[0] = v20;
    v19 = [(BKScrubberSliderContainerView *)self->_containerView leadingAnchor];
    v18 = [(BKScrubberSlider *)self leadingAnchor];
    v9 = [v19 constraintEqualToAnchor:v18];
    v23[1] = v9;
    v10 = [(BKScrubberSliderContainerView *)self->_containerView trailingAnchor];
    v11 = [(BKScrubberSlider *)self trailingAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];
    v23[2] = v12;
    v13 = [(BKScrubberSliderContainerView *)self->_containerView bottomAnchor];
    v14 = [(BKScrubberSlider *)self bottomAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];
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
    v4 = [(BKScrubberSlider *)self containerView];
    v5 = [v4 bufferedView];

    if (!v5)
    {
      [(BKScrubberSlider *)self bounds];
      [(BKScrubberSlider *)self visualTrackRectForBounds:?];
      v10 = v9;
      v8 = objc_opt_new();
      v11 = [(BKScrubberSlider *)self bufferIndicatorColor];
      if (v11)
      {
        [v8 setBackgroundColor:v11];
      }

      else
      {
        v12 = +[UIColor systemGray2Color];
        [v8 setBackgroundColor:v12];
      }

      v13 = [v8 layer];
      [v13 setCornerRadius:v10 * 0.5];

      v14 = [v8 layer];
      [v14 setMaskedCorners:10];

      v15 = [(BKScrubberSlider *)self containerView];
      [v15 addSubview:v8];

      v16 = [(BKScrubberSlider *)self containerView];
      [v16 setBufferedView:v8];

      goto LABEL_12;
    }

    bufferedValue = self->_bufferedValue;
  }

  if (bufferedValue <= 0.0)
  {
    v6 = [(BKScrubberSlider *)self containerView];
    v7 = [v6 bufferedView];
    [v7 removeFromSuperview];

    v8 = [(BKScrubberSlider *)self containerView];
    [v8 setBufferedView:0];
LABEL_12:
  }

  [(BKScrubberSlider *)self setNeedsLayout];
}

- (void)setBufferIndicatorColor:(id)a3
{
  objc_storeStrong(&self->_bufferIndicatorColor, a3);
  v5 = a3;
  v7 = [(BKScrubberSlider *)self containerView];
  v6 = [v7 bufferedView];
  [v6 setBackgroundColor:v5];
}

- (void)setSessionIndicatorColor:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_sessionIndicatorColor != v5)
  {
    v8 = v5;
    v7 = [(UIColor *)v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_sessionIndicatorColor, a3);
      [(BKScrubberSlider *)self _updateSessionIndicatorColor];
      v6 = v8;
    }
  }
}

- (void)setSessionIndicatorValue:(id)a3
{
  v5 = a3;
  sessionIndicatorValue = self->_sessionIndicatorValue;
  v19 = v5;
  if (v5)
  {
    if ([(NSNumber *)sessionIndicatorValue isEqualToNumber:v5])
    {
      goto LABEL_13;
    }

    objc_storeStrong(&self->_sessionIndicatorValue, a3);
    if (!self->_sessionIndicatorValue)
    {
      goto LABEL_12;
    }

    v7 = [(BKScrubberSlider *)self containerView];
    v8 = [v7 sessionIndicatorView];

    if (v8)
    {
      goto LABEL_12;
    }

    v9 = objc_opt_new();
    [(BKScrubberSlider *)self _createSessionIndicatorRect];
    [v9 setFrame:?];
    v10 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_didTapSessionIndicator:"];
    [v9 addGestureRecognizer:v10];

    v11 = [(BKScrubberSlider *)self containerView];
    [v11 addSubview:v9];

    v12 = [(BKScrubberSlider *)self containerView];
    [v12 setSessionIndicatorView:v9];

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
    v16 = [v9 layer];
    [v16 addSublayer:v15];

    [(BKScrubberSlider *)self _updateSessionIndicatorColor];
  }

  else
  {
    if (!sessionIndicatorValue)
    {
      goto LABEL_13;
    }

    self->_sessionIndicatorValue = 0;

    v17 = [(BKScrubberSlider *)self containerView];
    v18 = [v17 sessionIndicatorView];
    [v18 removeFromSuperview];

    v9 = [(BKScrubberSlider *)self containerView];
    [v9 setSessionIndicatorView:0];
  }

LABEL_12:
  [(BKScrubberSlider *)self setNeedsLayout];
LABEL_13:
  [(BKScrubberSlider *)self setCachedAccessibleDescriptionOfSessionIndicatorPosition:0];
}

- (CGRect)_createSessionIndicatorRect
{
  v3 = [(BKScrubberSlider *)self containerView];
  [v3 bounds];
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
    v6 = [(BKScrubberSlider *)self containerView];
    [v6 bounds];
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
  v2 = [(BKScrubberSlider *)self containerView];
  v3 = [v2 sessionIndicatorView];
  v4 = v3 != 0;

  return v4;
}

- (id)_sessionIndicatorAccessibleDescription
{
  v3 = [(BKScrubberSlider *)self cachedAccessibleDescriptionOfSessionIndicatorPosition];
  if (!v3 && [(BKScrubberSlider *)self _hasSessionIndicatorView])
  {
    v4 = [(BKScrubberSlider *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if ((v5 & 1) == 0)
    {
      goto LABEL_6;
    }

    v3 = [(BKScrubberSlider *)self delegate];
    v6 = [v3 accessibleDescriptionOfSessionIndicatorPosition];
    [(BKScrubberSlider *)self setCachedAccessibleDescriptionOfSessionIndicatorPosition:v6];
  }

LABEL_6:

  return [(BKScrubberSlider *)self cachedAccessibleDescriptionOfSessionIndicatorPosition];
}

- (void)_didTapSessionIndicator:(id)a3
{
  v4 = [(BKScrubberSlider *)self delegate];
  [v4 didTapSessionIndicator:self];
}

- (void)_updateSessionIndicatorColor
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [(BKScrubberSlider *)self containerView];
  v4 = [v3 sessionIndicatorView];
  v5 = [v4 layer];
  v6 = [v5 sublayers];

  obj = v6;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
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

        v11 = [(BKScrubberSlider *)self sessionIndicatorColor];
        v12 = [v11 CGColor];
        v13 = v12;
        if (!v12)
        {
          v4 = +[UIColor bc_booksOpaqueSecondaryLabelColor];
          v13 = [v4 CGColor];
        }

        objc_opt_class();
        v14 = BUDynamicCast();
        [v14 setFillColor:v13];

        if (!v12)
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
  v4 = [(BKScrubberSlider *)&v14 accessibilityCustomActions];
  v5 = [v3 initWithArray:v4];

  if ([(BKScrubberSlider *)self _hasSessionIndicatorView])
  {
    v6 = [(BKScrubberSlider *)self _sessionIndicatorAccessibleDescription];
    v7 = +[NSBundle mainBundle];
    if (v6)
    {
      v8 = [v7 localizedStringForKey:@"Scrub to start of playback at %@" value:&stru_100A30A68 table:0];
      v9 = [NSString localizedStringWithFormat:v8, v6];
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
  v11 = [(BKScrubberSlider *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = [(BKScrubberSlider *)self delegate];
    [v13 alternateAccessibilityFrameFor:self];
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