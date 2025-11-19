@interface MTAAnalogStopwatchHandView
- (MTAAnalogStopwatchHandView)initWithFrame:(CGRect)a3;
- (void)drawRect:(CGRect)a3;
- (void)setAnchorStyle:(unint64_t)a3;
- (void)setAngle:(double)a3;
- (void)setColor:(id)a3;
- (void)setHasTail:(BOOL)a3;
- (void)setWidth:(double)a3;
@end

@implementation MTAAnalogStopwatchHandView

- (MTAAnalogStopwatchHandView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = MTAAnalogStopwatchHandView;
  v3 = [(MTAAnalogStopwatchHandView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[UIColor clearColor];
    [(MTAAnalogStopwatchHandView *)v3 setBackgroundColor:v4];
  }

  return v3;
}

- (void)setAngle:(double)a3
{
  if (self->_angle != a3)
  {
    self->_angle = a3;
    [(MTAAnalogStopwatchHandView *)self setNeedsDisplay];
  }
}

- (void)setWidth:(double)a3
{
  if (self->_width != a3)
  {
    self->_width = a3;
    [(MTAAnalogStopwatchHandView *)self setNeedsDisplay];
  }
}

- (void)setColor:(id)a3
{
  v5 = a3;
  if (([(UIColor *)self->_color isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_color, a3);
    [(MTAAnalogStopwatchHandView *)self setNeedsDisplay];
  }
}

- (void)setHasTail:(BOOL)a3
{
  if (self->_hasTail != a3)
  {
    self->_hasTail = a3;
    [(MTAAnalogStopwatchHandView *)self setNeedsDisplay];
  }
}

- (void)setAnchorStyle:(unint64_t)a3
{
  if (self->_anchorStyle != a3)
  {
    self->_anchorStyle = a3;
    [(MTAAnalogStopwatchHandView *)self setNeedsDisplay];
  }
}

- (void)drawRect:(CGRect)a3
{
  [(MTAAnalogStopwatchHandView *)self width:a3.origin.x];
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
  v13 = [(MTAAnalogStopwatchHandView *)self hasTail];
  v14 = 0.0;
  if (v13)
  {
    v14 = v11 / 5.0;
  }

  [v12 moveToPoint:{0.0, v14}];
  [v12 addLineToPoint:{0.0, -(v10 * 0.5)}];
  [(MTAAnalogStopwatchHandView *)self angle];
  CGAffineTransformMakeRotation(&v25, v15);
  [v12 applyTransform:&v25];
  [v12 setLineWidth:v5];
  v16 = [(MTAAnalogStopwatchHandView *)self color];
  [v16 setStroke];

  [v12 stroke];
  if ([(MTAAnalogStopwatchHandView *)self anchorStyle]== 1)
  {
    UIRoundToViewScale();
    v18 = [UIBezierPath bezierPathWithArcCenter:1 radius:CGPointZero.x startAngle:CGPointZero.y endAngle:v17 clockwise:0.0, 6.28318531];
    v19 = [(MTAAnalogStopwatchHandView *)self color];
LABEL_7:
    v24 = v19;
    [v19 setFill];

    [v18 fill];
    goto LABEL_8;
  }

  if ([(MTAAnalogStopwatchHandView *)self anchorStyle]== 2)
  {
    UIRoundToViewScale();
    y = CGPointZero.y;
    v22 = [UIBezierPath bezierPathWithArcCenter:1 radius:CGPointZero.x startAngle:y endAngle:v21 clockwise:0.0, 6.28318531];
    v23 = [(MTAAnalogStopwatchHandView *)self color];
    [v23 setFill];

    [v22 fill];
    v18 = [UIBezierPath bezierPathWithArcCenter:1 radius:CGPointZero.x startAngle:y endAngle:v5 clockwise:0.0, 6.28318531];

    v19 = +[UIColor mtui_backgroundColor];
    goto LABEL_7;
  }

LABEL_8:

  CGContextRestoreGState(CurrentContext);
}

@end