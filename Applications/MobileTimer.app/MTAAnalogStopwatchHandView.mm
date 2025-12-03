@interface MTAAnalogStopwatchHandView
- (MTAAnalogStopwatchHandView)initWithFrame:(CGRect)frame;
- (void)drawRect:(CGRect)rect;
- (void)setAnchorStyle:(unint64_t)style;
- (void)setAngle:(double)angle;
- (void)setColor:(id)color;
- (void)setHasTail:(BOOL)tail;
- (void)setWidth:(double)width;
@end

@implementation MTAAnalogStopwatchHandView

- (MTAAnalogStopwatchHandView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = MTAAnalogStopwatchHandView;
  v3 = [(MTAAnalogStopwatchHandView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[UIColor clearColor];
    [(MTAAnalogStopwatchHandView *)v3 setBackgroundColor:v4];
  }

  return v3;
}

- (void)setAngle:(double)angle
{
  if (self->_angle != angle)
  {
    self->_angle = angle;
    [(MTAAnalogStopwatchHandView *)self setNeedsDisplay];
  }
}

- (void)setWidth:(double)width
{
  if (self->_width != width)
  {
    self->_width = width;
    [(MTAAnalogStopwatchHandView *)self setNeedsDisplay];
  }
}

- (void)setColor:(id)color
{
  colorCopy = color;
  if (([(UIColor *)self->_color isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_color, color);
    [(MTAAnalogStopwatchHandView *)self setNeedsDisplay];
  }
}

- (void)setHasTail:(BOOL)tail
{
  if (self->_hasTail != tail)
  {
    self->_hasTail = tail;
    [(MTAAnalogStopwatchHandView *)self setNeedsDisplay];
  }
}

- (void)setAnchorStyle:(unint64_t)style
{
  if (self->_anchorStyle != style)
  {
    self->_anchorStyle = style;
    [(MTAAnalogStopwatchHandView *)self setNeedsDisplay];
  }
}

- (void)drawRect:(CGRect)rect
{
  [(MTAAnalogStopwatchHandView *)self width:rect.origin.x];
  v5 = v4;
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  [(MTAAnalogStopwatchHandView *)self bounds];
  MidX = CGRectGetMidX(v26);
  [(MTAAnalogStopwatchHandView *)self bounds];
  MidY = CGRectGetMidY(v27);
  CGContextTranslateCTM(CurrentContext, MidX, MidY);
  [(MTAAnalogStopwatchHandView *)self bounds];
  v10 = v9;
  v11 = v9 * 0.5;
  v12 = objc_opt_new();
  hasTail = [(MTAAnalogStopwatchHandView *)self hasTail];
  v14 = 0.0;
  if (hasTail)
  {
    v14 = v11 / 5.0;
  }

  [v12 moveToPoint:{0.0, v14}];
  [v12 addLineToPoint:{0.0, -(v10 * 0.5)}];
  [(MTAAnalogStopwatchHandView *)self angle];
  CGAffineTransformMakeRotation(&v25, v15);
  [v12 applyTransform:&v25];
  [v12 setLineWidth:v5];
  color = [(MTAAnalogStopwatchHandView *)self color];
  [color setStroke];

  [v12 stroke];
  if ([(MTAAnalogStopwatchHandView *)self anchorStyle]== 1)
  {
    UIRoundToViewScale();
    v18 = [UIBezierPath bezierPathWithArcCenter:1 radius:CGPointZero.x startAngle:CGPointZero.y endAngle:v17 clockwise:0.0, 6.28318531];
    color2 = [(MTAAnalogStopwatchHandView *)self color];
LABEL_7:
    v24 = color2;
    [color2 setFill];

    [v18 fill];
    goto LABEL_8;
  }

  if ([(MTAAnalogStopwatchHandView *)self anchorStyle]== 2)
  {
    UIRoundToViewScale();
    y = CGPointZero.y;
    v22 = [UIBezierPath bezierPathWithArcCenter:1 radius:CGPointZero.x startAngle:y endAngle:v21 clockwise:0.0, 6.28318531];
    color3 = [(MTAAnalogStopwatchHandView *)self color];
    [color3 setFill];

    [v22 fill];
    v18 = [UIBezierPath bezierPathWithArcCenter:1 radius:CGPointZero.x startAngle:y endAngle:v5 clockwise:0.0, 6.28318531];

    color2 = +[UIColor mtui_backgroundColor];
    goto LABEL_7;
  }

LABEL_8:

  CGContextRestoreGState(CurrentContext);
}

@end