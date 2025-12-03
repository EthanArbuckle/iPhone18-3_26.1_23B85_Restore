@interface RCTouchInsetsButton
+ (id)touchInsetsButton;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (RCTouchInsetsButton)initWithCoder:(id)coder;
- (RCTouchInsetsButton)initWithFrame:(CGRect)frame;
- (void)_animateImage:(BOOL)image;
- (void)_animateTouch:(BOOL)touch;
- (void)_commonInit;
- (void)setAnimationCircleColor:(id)color;
- (void)setBounds:(CGRect)bounds;
- (void)setHighlighted:(BOOL)highlighted;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation RCTouchInsetsButton

- (void)_commonInit
{
  if ((byte_1002D7010 & 1) == 0)
  {
    [(RCTouchInsetsButton *)self setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  v10 = +[RCRecorderStyleProvider sharedStyleProvider];
  [v10 actionButtonExtraXAxisActiveWidth];
  [(RCTouchInsetsButton *)self _setTouchInsets:0.0, -v3, 0.0, -v3];
  v4 = objc_opt_new();
  [(RCTouchInsetsButton *)self setCircleLayer:v4];
  [v4 setOpacity:0.0];
  v5 = +[UIColor clearColor];
  [v4 setStrokeColor:{objc_msgSend(v5, "CGColor")}];

  transportButtonAnimationCircleColor = [v10 transportButtonAnimationCircleColor];
  [v4 setFillColor:{objc_msgSend(transportButtonAnimationCircleColor, "CGColor")}];

  layer = [(RCTouchInsetsButton *)self layer];
  imageView = [(RCTouchInsetsButton *)self imageView];
  layer2 = [imageView layer];
  [layer insertSublayer:v4 below:layer2];

  self->_shouldAnimateOnTap = 0;
}

+ (id)touchInsetsButton
{
  byte_1002D7010 = 1;
  v2 = objc_opt_new();
  byte_1002D7010 = 0;

  return v2;
}

- (RCTouchInsetsButton)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = RCTouchInsetsButton;
  v3 = [(RCPointerInteractionButton *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(RCTouchInsetsButton *)v3 _commonInit];
  }

  return v4;
}

- (RCTouchInsetsButton)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = RCTouchInsetsButton;
  v3 = [(RCTouchInsetsButton *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(RCTouchInsetsButton *)v3 _commonInit];
  }

  return v4;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  [(RCTouchInsetsButton *)self bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(RCTouchInsetsButton *)self _touchInsets];
  v16 = v10 + v15;
  v19 = v12 - (v17 + v18);
  v21 = v14 - (v15 + v20);
  v22 = v8 + v17;
  v23 = v16;
  v24 = v19;
  v25 = x;
  v26 = y;

  return CGRectContainsPoint(*&v22, *&v25);
}

- (void)setHighlighted:(BOOL)highlighted
{
  if (!self->_shouldAnimateOnTap)
  {
    v3.receiver = self;
    v3.super_class = RCTouchInsetsButton;
    [(RCTouchInsetsButton *)&v3 setHighlighted:highlighted];
  }
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v12.receiver = self;
  v12.super_class = RCTouchInsetsButton;
  [(RCTouchInsetsButton *)&v12 setBounds:?];
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  MidX = CGRectGetMidX(v13);
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  MidY = CGRectGetMidY(v14);
  [(RCTouchInsetsButton *)self animationCircleRadius];
  v11 = [UIBezierPath bezierPathWithArcCenter:1 radius:MidX startAngle:MidY endAngle:v10 clockwise:0.0, 6.28318531];
  -[CAShapeLayer setPath:](self->_circleLayer, "setPath:", [v11 CGPath]);
}

- (void)setAnimationCircleColor:(id)color
{
  objc_storeStrong(&self->_animationCircleColor, color);
  colorCopy = color;
  cGColor = [colorCopy CGColor];

  circleLayer = [(RCTouchInsetsButton *)self circleLayer];
  [circleLayer setFillColor:cGColor];
}

- (void)_animateImage:(BOOL)image
{
  imageCopy = image;
  v5 = +[RCRecorderStyleProvider sharedStyleProvider];
  [v5 transportButtonAnimationDuration];
  v7 = v6;
  if (imageCopy)
  {
    [v5 transportButtonAnimationShrinkFactor];
    v9 = v8;
    v10 = 1.0;
  }

  else
  {
    v9 = 1.0;
    v10 = 0.0;
  }

  layer = [(RCTouchInsetsButton *)self layer];
  [layer removeAllAnimations];

  memset(&v16, 0, sizeof(v16));
  CGAffineTransformMakeScale(&v16, v9, v9);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10004A170;
  v14[3] = &unk_10028AC10;
  v14[4] = self;
  *&v14[5] = v10;
  v15 = v16;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10004A1D0;
  v12[3] = &unk_10028AC38;
  v12[4] = self;
  v13 = v16;
  [UIView animateWithDuration:65540 delay:v14 options:v12 animations:v7 completion:0.0];
}

- (void)_animateTouch:(BOOL)touch
{
  if (self->_shouldAnimateOnTap)
  {
    [(RCTouchInsetsButton *)self _animateImage:touch];
  }
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = RCTouchInsetsButton;
  [(RCTouchInsetsButton *)&v5 touchesBegan:began withEvent:event];
  [(RCTouchInsetsButton *)self _animateTouch:1];
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  v4.receiver = self;
  v4.super_class = RCTouchInsetsButton;
  [(RCTouchInsetsButton *)&v4 touchesMoved:moved withEvent:event];
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = RCTouchInsetsButton;
  [(RCTouchInsetsButton *)&v5 touchesEnded:ended withEvent:event];
  [(RCTouchInsetsButton *)self _animateTouch:0];
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = RCTouchInsetsButton;
  [(RCTouchInsetsButton *)&v5 touchesCancelled:cancelled withEvent:event];
  [(RCTouchInsetsButton *)self _animateTouch:0];
}

@end