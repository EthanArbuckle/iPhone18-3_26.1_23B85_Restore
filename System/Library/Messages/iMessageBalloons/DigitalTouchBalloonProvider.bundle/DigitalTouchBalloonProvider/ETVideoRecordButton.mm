@interface ETVideoRecordButton
+ (id)_dimColor:(id)color;
+ (id)_redColor;
+ (id)recordingRedColorDimmed:(BOOL)dimmed;
- (ETVideoRecordButton)init;
- (id)_innerColor;
- (void)_updateStartStopShape;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setInnerColor:(id)color;
- (void)setRecording:(BOOL)recording;
- (void)setVideoState:(unint64_t)state;
@end

@implementation ETVideoRecordButton

- (ETVideoRecordButton)init
{
  v16.receiver = self;
  v16.super_class = ETVideoRecordButton;
  v2 = [(ETVideoRecordButton *)&v16 init];
  v3 = v2;
  if (v2)
  {
    layer = [(ETVideoRecordButton *)v2 layer];
    v5 = objc_alloc_init(CAShapeLayer);
    outerRingShape = v3->_outerRingShape;
    v3->_outerRingShape = v5;

    v7 = v3->_outerRingShape;
    v8 = +[UIColor whiteColor];
    -[CAShapeLayer setStrokeColor:](v7, "setStrokeColor:", [v8 CGColor]);

    [(CAShapeLayer *)v3->_outerRingShape setLineWidth:5.0];
    [layer addSublayer:v3->_outerRingShape];
    v9 = objc_alloc_init(CAShapeLayer);
    startStopShape = v3->_startStopShape;
    v3->_startStopShape = v9;

    innerColor = v3->_innerColor;
    v12 = objc_opt_class();
    if (innerColor)
    {
      [v12 _dimColor:v3->_innerColor];
    }

    else
    {
      [v12 recordingRedColorDimmed:0];
    }
    v13 = ;
    -[CAShapeLayer setFillColor:](v3->_startStopShape, "setFillColor:", [v13 CGColor]);
    [layer addSublayer:v3->_startStopShape];
    v14 = v3;
  }

  return v3;
}

+ (id)_dimColor:(id)color
{
  v8 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  v5 = 0;
  [color getRed:&v8 green:&v7 blue:&v6 alpha:&v5];
  v3 = [UIColor colorWithRed:v8 * 0.3 green:v7 * 0.3 blue:v6 * 0.3 alpha:1.0];

  return v3;
}

+ (id)_redColor
{
  if (qword_2E7B8 != -1)
  {
    sub_14078();
  }

  v3 = qword_2E7B0;

  return v3;
}

+ (id)recordingRedColorDimmed:(BOOL)dimmed
{
  if (dimmed)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_DBAC;
    block[3] = &unk_24AD8;
    block[4] = self;
    if (qword_2E7C8 != -1)
    {
      dispatch_once(&qword_2E7C8, block);
    }

    _redColor = qword_2E7C0;
  }

  else
  {
    _redColor = [self _redColor];
  }

  return _redColor;
}

- (id)_innerColor
{
  innerColor = self->_innerColor;
  if (innerColor)
  {
    v3 = innerColor;
  }

  else
  {
    v3 = +[ETVideoRecordButton _redColor];
  }

  return v3;
}

- (void)setInnerColor:(id)color
{
  objc_storeStrong(&self->_innerColor, color);
  colorCopy = color;
  [(CAShapeLayer *)self->_startStopShape setFillColor:[(UIColor *)self->_innerColor CGColor]];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  if ([(ETVideoRecordButton *)self isHighlighted]!= highlighted)
  {
    v9.receiver = self;
    v9.super_class = ETVideoRecordButton;
    [(ETVideoRecordButton *)&v9 setHighlighted:highlightedCopy];
    _innerColor = [(ETVideoRecordButton *)self _innerColor];
    v6 = _innerColor;
    startStopShape = self->_startStopShape;
    if (highlightedCopy)
    {
      v8 = [objc_opt_class() _dimColor:_innerColor];
      -[CAShapeLayer setFillColor:](startStopShape, "setFillColor:", [v8 CGColor]);
    }

    else
    {
      -[CAShapeLayer setFillColor:](startStopShape, "setFillColor:", [_innerColor CGColor]);
    }
  }
}

- (void)setRecording:(BOOL)recording
{
  if (self->_recording != recording)
  {
    self->_recording = recording;
    [(ETVideoRecordButton *)self _updateStartStopShape];
  }
}

- (void)_updateStartStopShape
{
  [(ETVideoRecordButton *)self bounds];
  v6 = v5;
  v8 = v7;
  if (self->_recording)
  {
    v9 = 5.0;
  }

  else
  {
    v9 = v4 * 0.5 + -7.0;
  }

  if (self->_startStopRadius != v9)
  {
    v10 = v3;
    v11 = v4;
    if (self->_recording)
    {
      v12 = 16.0;
    }

    else
    {
      v12 = 7.0;
    }

    self->_startStopRadius = v9;
    path = [(CAShapeLayer *)self->_startStopShape path];
    v18.origin.x = v6;
    v18.origin.y = v8;
    v18.size.width = v10;
    v18.size.height = v11;
    v19 = CGRectInset(v18, v12, v12);
    v14 = CGPathCreateWithRoundedRect(v19, v9, v9, 0);
    [(CAShapeLayer *)self->_startStopShape setPath:v14];
    if (path)
    {
      v15 = [CABasicAnimation animationWithKeyPath:@"path"];
      +[CATransaction animationDuration];
      [v15 setDuration:?];
      [v15 setFromValue:path];
      [v15 setToValue:v14];
      v16 = +[CATransaction animationTimingFunction];
      [v15 setTimingFunction:v16];

      [v15 setFillMode:kCAFillModeForwards];
      [(CAShapeLayer *)self->_startStopShape addAnimation:v15 forKey:@"startStopAnimation"];
    }

    CGPathRelease(v14);
  }
}

- (void)layoutSubviews
{
  [(ETVideoRecordButton *)self bounds];
  v6 = CGRectInset(v5, 2.5, 2.5);
  v3 = CGPathCreateWithEllipseInRect(v6, 0);
  [(CAShapeLayer *)self->_outerRingShape setPath:v3];
  CGPathRelease(v3);

  [(ETVideoRecordButton *)self _updateStartStopShape];
}

- (void)setVideoState:(unint64_t)state
{
  if (self->_videoState != state)
  {
    self->_videoState = state;
    if (state <= 6 && ((0x4Fu >> state) & 1) != 0)
    {
      [(ETVideoRecordButton *)self setRecording:(4u >> state) & 1];
    }
  }
}

@end