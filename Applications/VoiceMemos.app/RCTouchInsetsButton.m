@interface RCTouchInsetsButton
+ (id)touchInsetsButton;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (RCTouchInsetsButton)initWithCoder:(id)a3;
- (RCTouchInsetsButton)initWithFrame:(CGRect)a3;
- (void)_animateImage:(BOOL)a3;
- (void)_animateTouch:(BOOL)a3;
- (void)_commonInit;
- (void)setAnimationCircleColor:(id)a3;
- (void)setBounds:(CGRect)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
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

  v6 = [v10 transportButtonAnimationCircleColor];
  [v4 setFillColor:{objc_msgSend(v6, "CGColor")}];

  v7 = [(RCTouchInsetsButton *)self layer];
  v8 = [(RCTouchInsetsButton *)self imageView];
  v9 = [v8 layer];
  [v7 insertSublayer:v4 below:v9];

  self->_shouldAnimateOnTap = 0;
}

+ (id)touchInsetsButton
{
  byte_1002D7010 = 1;
  v2 = objc_opt_new();
  byte_1002D7010 = 0;

  return v2;
}

- (RCTouchInsetsButton)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = RCTouchInsetsButton;
  v3 = [(RCPointerInteractionButton *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(RCTouchInsetsButton *)v3 _commonInit];
  }

  return v4;
}

- (RCTouchInsetsButton)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = RCTouchInsetsButton;
  v3 = [(RCTouchInsetsButton *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(RCTouchInsetsButton *)v3 _commonInit];
  }

  return v4;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
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

- (void)setHighlighted:(BOOL)a3
{
  if (!self->_shouldAnimateOnTap)
  {
    v3.receiver = self;
    v3.super_class = RCTouchInsetsButton;
    [(RCTouchInsetsButton *)&v3 setHighlighted:a3];
  }
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (void)setAnimationCircleColor:(id)a3
{
  objc_storeStrong(&self->_animationCircleColor, a3);
  v5 = a3;
  v6 = [v5 CGColor];

  v7 = [(RCTouchInsetsButton *)self circleLayer];
  [v7 setFillColor:v6];
}

- (void)_animateImage:(BOOL)a3
{
  v3 = a3;
  v5 = +[RCRecorderStyleProvider sharedStyleProvider];
  [v5 transportButtonAnimationDuration];
  v7 = v6;
  if (v3)
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

  v11 = [(RCTouchInsetsButton *)self layer];
  [v11 removeAllAnimations];

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

- (void)_animateTouch:(BOOL)a3
{
  if (self->_shouldAnimateOnTap)
  {
    [(RCTouchInsetsButton *)self _animateImage:a3];
  }
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = RCTouchInsetsButton;
  [(RCTouchInsetsButton *)&v5 touchesBegan:a3 withEvent:a4];
  [(RCTouchInsetsButton *)self _animateTouch:1];
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v4.receiver = self;
  v4.super_class = RCTouchInsetsButton;
  [(RCTouchInsetsButton *)&v4 touchesMoved:a3 withEvent:a4];
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = RCTouchInsetsButton;
  [(RCTouchInsetsButton *)&v5 touchesEnded:a3 withEvent:a4];
  [(RCTouchInsetsButton *)self _animateTouch:0];
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = RCTouchInsetsButton;
  [(RCTouchInsetsButton *)&v5 touchesCancelled:a3 withEvent:a4];
  [(RCTouchInsetsButton *)self _animateTouch:0];
}

@end