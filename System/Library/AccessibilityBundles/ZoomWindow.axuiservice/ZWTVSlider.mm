@interface ZWTVSlider
- (ZWTVSlider)initWithFrame:(CGRect)frame;
- (void)_handlePan:(id)pan;
- (void)_updateColorsForUserInterfaceStyle:(int64_t)style;
- (void)_updateSliderPosition;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
- (void)layoutSubviews;
- (void)setValue:(double)value;
@end

@implementation ZWTVSlider

- (ZWTVSlider)initWithFrame:(CGRect)frame
{
  v18.receiver = self;
  v18.super_class = ZWTVSlider;
  v3 = [(ZWTVSlider *)&v18 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_value = 0.5;
    v3->_minimumValue = 0.0;
    v3->_maximumValue = 1.0;
    [(ZWTVSlider *)v3 setClipsToBounds:0];
    v5 = +[CAShapeLayer layer];
    [(ZWTVSlider *)v4 setUnfilledTrackLayer:v5];
    layer = [(ZWTVSlider *)v4 layer];
    [layer addSublayer:v5];

    [v5 setLineWidth:8.0];
    [v5 setLineCap:kCALineCapRound];
    v7 = +[CAShapeLayer layer];

    [(ZWTVSlider *)v4 setFilledTrackLayer:v7];
    layer2 = [(ZWTVSlider *)v4 layer];
    [layer2 addSublayer:v7];

    [v7 setLineWidth:8.0];
    [v7 setLineCap:kCALineCapRound];
    v9 = +[CAShapeLayer layer];
    [(ZWTVSlider *)v4 setGrabberLayer:v9];
    layer3 = [(ZWTVSlider *)v4 layer];
    [layer3 addSublayer:v9];

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

    traitCollection = [(ZWTVSlider *)v4 traitCollection];
    -[ZWTVSlider _updateColorsForUserInterfaceStyle:](v4, "_updateColorsForUserInterfaceStyle:", [traitCollection userInterfaceStyle]);

    [(ZWTVSlider *)v4 setUserInteractionEnabled:1];
    v16 = [[UIPanGestureRecognizer alloc] initWithTarget:v4 action:"_handlePan:"];
    [(ZWTVSlider *)v4 addGestureRecognizer:v16];
  }

  return v4;
}

- (void)layoutSubviews
{
  _shouldReverseLayoutDirection = [(ZWTVSlider *)self _shouldReverseLayoutDirection];
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
  if (_shouldReverseLayoutDirection)
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
  unfilledTrackLayer = [(ZWTVSlider *)self unfilledTrackLayer];
  [unfilledTrackLayer setFrame:{v5, v7, v9, v11}];

  cGPath = [v12 CGPath];
  unfilledTrackLayer2 = [(ZWTVSlider *)self unfilledTrackLayer];
  [unfilledTrackLayer2 setPath:cGPath];

  filledTrackLayer = [(ZWTVSlider *)self filledTrackLayer];
  [filledTrackLayer setFrame:{v5, v7, v9, v11}];

  cGPath2 = [v12 CGPath];
  filledTrackLayer2 = [(ZWTVSlider *)self filledTrackLayer];
  [filledTrackLayer2 setPath:cGPath2];

  [(ZWTVSlider *)self _updateSliderPosition];
}

- (void)_updateSliderPosition
{
  _shouldReverseLayoutDirection = [(ZWTVSlider *)self _shouldReverseLayoutDirection];
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  [(ZWTVSlider *)self value];
  v5 = (v4 - self->_minimumValue) / (self->_maximumValue - self->_minimumValue);
  filledTrackLayer = [(ZWTVSlider *)self filledTrackLayer];
  [filledTrackLayer setStrokeEnd:v5];

  unfilledTrackLayer = [(ZWTVSlider *)self unfilledTrackLayer];
  [unfilledTrackLayer setStrokeStart:v5];

  [(ZWTVSlider *)self bounds];
  if (_shouldReverseLayoutDirection)
  {
    v12 = v10 - v10 * v5;
  }

  else
  {
    v12 = v5 * v10;
  }

  MidY = CGRectGetMidY(*&v8);
  grabberLayer = [(ZWTVSlider *)self grabberLayer];
  [grabberLayer setPosition:{v12, MidY}];

  +[CATransaction commit];
}

- (void)_updateColorsForUserInterfaceStyle:(int64_t)style
{
  if (style <= 2)
  {
    v5 = +[UIColor systemGrayColor];
    cGColor = [v5 CGColor];
    unfilledTrackLayer = [(ZWTVSlider *)self unfilledTrackLayer];
    [unfilledTrackLayer setStrokeColor:cGColor];

    v8 = [UIColor colorWithWhite:0.5 alpha:1.0];
    cGColor2 = [v8 CGColor];
    defaultTickLayer = [(ZWTVSlider *)self defaultTickLayer];
    [defaultTickLayer setBackgroundColor:cGColor2];

    v14 = +[UIColor whiteColor];
    v11 = v14;
    cGColor3 = [v14 CGColor];
    filledTrackLayer = [(ZWTVSlider *)self filledTrackLayer];
    [filledTrackLayer setStrokeColor:cGColor3];
  }
}

- (void)setValue:(double)value
{
  [(ZWTVSlider *)self minimumValue];
  if (v5 > value)
  {
    value = v5;
  }

  [(ZWTVSlider *)self maximumValue];
  if (value < valueCopy)
  {
    valueCopy = value;
  }

  self->_value = valueCopy;

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

- (void)_handlePan:(id)pan
{
  panCopy = pan;
  _shouldReverseLayoutDirection = [(ZWTVSlider *)self _shouldReverseLayoutDirection];
  state = [panCopy state];
  if (state == &dword_0 + 3)
  {
    selfCopy3 = self;
    v8 = 0x40000;
  }

  else if (state == &dword_0 + 2)
  {
    [(ZWTVSlider *)self bounds];
    v10 = v9;
    [panCopy translationInView:self];
    v12 = v11 / v10;
    v13 = self->_maximumValue - self->_minimumValue;
    if (_shouldReverseLayoutDirection)
    {
      v13 = -v13;
    }

    [(ZWTVSlider *)self setValue:self->_gestureBeganValue + v13 * v12];
    selfCopy3 = self;
    v8 = 4096;
  }

  else
  {
    if (state != &dword_0 + 1)
    {
      goto LABEL_10;
    }

    [(ZWTVSlider *)self value];
    self->_gestureBeganValue = v6;
    selfCopy3 = self;
    v8 = 0x10000;
  }

  [(ZWTVSlider *)selfCopy3 sendActionsForControlEvents:v8];
LABEL_10:
}

@end