@interface ZWTVSlider
- (ZWTVSlider)initWithFrame:(CGRect)a3;
- (void)_handlePan:(id)a3;
- (void)_updateColorsForUserInterfaceStyle:(int64_t)a3;
- (void)_updateSliderPosition;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
- (void)layoutSubviews;
- (void)setValue:(double)a3;
@end

@implementation ZWTVSlider

- (ZWTVSlider)initWithFrame:(CGRect)a3
{
  v18.receiver = self;
  v18.super_class = ZWTVSlider;
  v3 = [(ZWTVSlider *)&v18 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_value = 0.5;
    v3->_minimumValue = 0.0;
    v3->_maximumValue = 1.0;
    [(ZWTVSlider *)v3 setClipsToBounds:0];
    v5 = +[CAShapeLayer layer];
    [(ZWTVSlider *)v4 setUnfilledTrackLayer:v5];
    v6 = [(ZWTVSlider *)v4 layer];
    [v6 addSublayer:v5];

    [v5 setLineWidth:8.0];
    [v5 setLineCap:kCALineCapRound];
    v7 = +[CAShapeLayer layer];

    [(ZWTVSlider *)v4 setFilledTrackLayer:v7];
    v8 = [(ZWTVSlider *)v4 layer];
    [v8 addSublayer:v7];

    [v7 setLineWidth:8.0];
    [v7 setLineCap:kCALineCapRound];
    v9 = +[CAShapeLayer layer];
    [(ZWTVSlider *)v4 setGrabberLayer:v9];
    v10 = [(ZWTVSlider *)v4 layer];
    [v10 addSublayer:v9];

    v11 = [UIBezierPath bezierPathWithOvalInRect:0.0, 0.0, 30.0, 30.0];
    [v9 setBounds:{0.0, 0.0, 30.0, 30.0}];
    [v9 setPath:{objc_msgSend(v11, "CGPath")}];
    v12 = +[UIColor whiteColor];
    [v9 setFillColor:{objc_msgSend(v12, "CGColor")}];

    [v9 setShadowRadius:30.0];
    [v9 setShadowOffset:{0.0, 25.0}];
    LODWORD(v13) = 0.25;
    [v9 setShadowOpacity:v13];
    v14 = +[UIColor blackColor];
    [v9 setShadowColor:{objc_msgSend(v14, "CGColor")}];

    v15 = [(ZWTVSlider *)v4 traitCollection];
    -[ZWTVSlider _updateColorsForUserInterfaceStyle:](v4, "_updateColorsForUserInterfaceStyle:", [v15 userInterfaceStyle]);

    [(ZWTVSlider *)v4 setUserInteractionEnabled:1];
    v16 = [[UIPanGestureRecognizer alloc] initWithTarget:v4 action:"_handlePan:"];
    [(ZWTVSlider *)v4 addGestureRecognizer:v16];
  }

  return v4;
}

- (void)layoutSubviews
{
  v3 = [(ZWTVSlider *)self _shouldReverseLayoutDirection];
  v26.receiver = self;
  v26.super_class = ZWTVSlider;
  [(ZWTVSlider *)&v26 layoutSubviews];
  [(ZWTVSlider *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = +[UIBezierPath bezierPath];
  v13 = v5;
  v14 = v7;
  v15 = v9;
  v16 = v11;
  if (v3)
  {
    MaxX = CGRectGetMaxX(*&v13);
    v27.origin.x = v5;
    v27.origin.y = v7;
    v27.size.width = v9;
    v27.size.height = v11;
    MinX = CGRectGetMinX(v27);
  }

  else
  {
    MaxX = CGRectGetMinX(*&v13);
    v28.origin.x = v5;
    v28.origin.y = v7;
    v28.size.width = v9;
    v28.size.height = v11;
    MinX = CGRectGetMaxX(v28);
  }

  v19 = MinX;
  v29.origin.x = v5;
  v29.origin.y = v7;
  v29.size.width = v9;
  v29.size.height = v11;
  [v12 moveToPoint:{MaxX, CGRectGetMidY(v29)}];
  v30.origin.x = v5;
  v30.origin.y = v7;
  v30.size.width = v9;
  v30.size.height = v11;
  [v12 addLineToPoint:{v19, CGRectGetMidY(v30)}];
  v20 = [(ZWTVSlider *)self unfilledTrackLayer];
  [v20 setFrame:{v5, v7, v9, v11}];

  v21 = [v12 CGPath];
  v22 = [(ZWTVSlider *)self unfilledTrackLayer];
  [v22 setPath:v21];

  v23 = [(ZWTVSlider *)self filledTrackLayer];
  [v23 setFrame:{v5, v7, v9, v11}];

  v24 = [v12 CGPath];
  v25 = [(ZWTVSlider *)self filledTrackLayer];
  [v25 setPath:v24];

  [(ZWTVSlider *)self _updateSliderPosition];
}

- (void)_updateSliderPosition
{
  v3 = [(ZWTVSlider *)self _shouldReverseLayoutDirection];
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  [(ZWTVSlider *)self value];
  v5 = (v4 - self->_minimumValue) / (self->_maximumValue - self->_minimumValue);
  v6 = [(ZWTVSlider *)self filledTrackLayer];
  [v6 setStrokeEnd:v5];

  v7 = [(ZWTVSlider *)self unfilledTrackLayer];
  [v7 setStrokeStart:v5];

  [(ZWTVSlider *)self bounds];
  if (v3)
  {
    v12 = v10 - v10 * v5;
  }

  else
  {
    v12 = v5 * v10;
  }

  MidY = CGRectGetMidY(*&v8);
  v14 = [(ZWTVSlider *)self grabberLayer];
  [v14 setPosition:{v12, MidY}];

  +[CATransaction commit];
}

- (void)_updateColorsForUserInterfaceStyle:(int64_t)a3
{
  if (a3 <= 2)
  {
    v5 = +[UIColor systemGrayColor];
    v6 = [v5 CGColor];
    v7 = [(ZWTVSlider *)self unfilledTrackLayer];
    [v7 setStrokeColor:v6];

    v8 = [UIColor colorWithWhite:0.5 alpha:1.0];
    v9 = [v8 CGColor];
    v10 = [(ZWTVSlider *)self defaultTickLayer];
    [v10 setBackgroundColor:v9];

    v14 = +[UIColor whiteColor];
    v11 = v14;
    v12 = [v14 CGColor];
    v13 = [(ZWTVSlider *)self filledTrackLayer];
    [v13 setStrokeColor:v12];
  }
}

- (void)setValue:(double)a3
{
  [(ZWTVSlider *)self minimumValue];
  if (v5 > a3)
  {
    a3 = v5;
  }

  [(ZWTVSlider *)self maximumValue];
  if (a3 < v6)
  {
    v6 = a3;
  }

  self->_value = v6;

  [(ZWTVSlider *)self _updateSliderPosition];
}

- (void)accessibilityIncrement
{
  [(ZWTVSlider *)self setValue:self->_value + 1.0];

  [(ZWTVSlider *)self sendActionsForControlEvents:4096];
}

- (void)accessibilityDecrement
{
  [(ZWTVSlider *)self setValue:self->_value + -1.0];

  [(ZWTVSlider *)self sendActionsForControlEvents:4096];
}

- (void)_handlePan:(id)a3
{
  v14 = a3;
  v4 = [(ZWTVSlider *)self _shouldReverseLayoutDirection];
  v5 = [v14 state];
  if (v5 == &dword_0 + 3)
  {
    v7 = self;
    v8 = 0x40000;
  }

  else if (v5 == &dword_0 + 2)
  {
    [(ZWTVSlider *)self bounds];
    v10 = v9;
    [v14 translationInView:self];
    v12 = v11 / v10;
    v13 = self->_maximumValue - self->_minimumValue;
    if (v4)
    {
      v13 = -v13;
    }

    [(ZWTVSlider *)self setValue:self->_gestureBeganValue + v13 * v12];
    v7 = self;
    v8 = 4096;
  }

  else
  {
    if (v5 != &dword_0 + 1)
    {
      goto LABEL_10;
    }

    [(ZWTVSlider *)self value];
    self->_gestureBeganValue = v6;
    v7 = self;
    v8 = 0x10000;
  }

  [(ZWTVSlider *)v7 sendActionsForControlEvents:v8];
LABEL_10:
}

@end