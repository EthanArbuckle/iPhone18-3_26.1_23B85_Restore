@interface PHInCallRoundedRectView
- (PHInCallRoundedRectView)initWithFrame:(CGRect)a3;
- (id)createRingImageWithSize:(CGSize)a3 strokeWidth:(double)a4 color:(id)a5;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)a3;
- (void)setUserInteractionEnabled:(BOOL)a3;
@end

@implementation PHInCallRoundedRectView

- (PHInCallRoundedRectView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v35.receiver = self;
  v35.super_class = PHInCallRoundedRectView;
  v5 = [(PHInCallRoundedRectView *)&v35 initWithFrame:a3.origin.x, a3.origin.y];
  v6 = v5;
  if (v5)
  {
    [(PHInCallRoundedRectView *)v5 setUserInteractionEnabled:0];
    [(PHInCallRoundedRectView *)v6 setOpaque:0];
    v7 = +[UIColor clearColor];
    [(PHInCallRoundedRectView *)v6 setBackgroundColor:v7];

    v8 = [(PHInCallRoundedRectView *)v6 layer];
    [v8 setAllowsGroupBlending:0];

    v9 = [(PHInCallRoundedRectView *)v6 layer];
    [v9 setAllowsGroupOpacity:0];

    [(PHInCallRoundedRectView *)v6 setStrokeWidth:1.5];
    [(PHInCallRoundedRectView *)v6 setCornerRadius:5.0];
    v10 = +[CALayer layer];
    luminanceRingLayer = v6->_luminanceRingLayer;
    v6->_luminanceRingLayer = v10;

    v12 = kCAFilterPlusL;
    v13 = [CAFilter filterWithType:kCAFilterPlusL];
    [(CALayer *)v6->_luminanceRingLayer setCompositingFilter:v13];

    [(CALayer *)v6->_luminanceRingLayer setFrame:0.0, 0.0, width, height];
    v14 = [(PHInCallRoundedRectView *)v6 layer];
    [v14 addSublayer:v6->_luminanceRingLayer];

    v15 = +[CALayer layer];
    dodgeRingLayer = v6->_dodgeRingLayer;
    v6->_dodgeRingLayer = v15;

    v17 = kCAFilterColorDodgeBlendMode;
    v18 = [CAFilter filterWithType:kCAFilterColorDodgeBlendMode];
    [(CALayer *)v6->_dodgeRingLayer setCompositingFilter:v18];

    [(CALayer *)v6->_dodgeRingLayer setFrame:0.0, 0.0, width, height];
    v19 = [(PHInCallRoundedRectView *)v6 layer];
    [v19 addSublayer:v6->_dodgeRingLayer];

    v20 = +[CALayer layer];
    highlightLuminanceLayer = v6->_highlightLuminanceLayer;
    v6->_highlightLuminanceLayer = v20;

    v22 = [CAFilter filterWithType:v17];
    [(CALayer *)v6->_highlightLuminanceLayer setCompositingFilter:v22];

    [(CALayer *)v6->_highlightLuminanceLayer setFrame:0.0, 0.0, width, height];
    v23 = [(PHInCallRoundedRectView *)v6 layer];
    [v23 addSublayer:v6->_highlightLuminanceLayer];

    v24 = +[CALayer layer];
    highlightDodgeLayer = v6->_highlightDodgeLayer;
    v6->_highlightDodgeLayer = v24;

    v26 = [UIColor colorWithWhite:0.600000024 alpha:1.0];
    -[CALayer setBackgroundColor:](v6->_highlightDodgeLayer, "setBackgroundColor:", [v26 CGColor]);

    v27 = [CAFilter filterWithType:v17];
    [(CALayer *)v6->_highlightDodgeLayer setCompositingFilter:v27];

    [(CALayer *)v6->_highlightDodgeLayer setFrame:0.0, 0.0, width, height];
    [(PHInCallRoundedRectView *)v6 cornerRadius];
    [(CALayer *)v6->_highlightDodgeLayer setCornerRadius:?];
    [(CALayer *)v6->_highlightDodgeLayer setOpacity:0.0];
    v28 = [(PHInCallRoundedRectView *)v6 layer];
    [v28 addSublayer:v6->_highlightDodgeLayer];

    v29 = +[CALayer layer];
    v30 = v6->_highlightLuminanceLayer;
    v6->_highlightLuminanceLayer = v29;

    v31 = [UIColor colorWithWhite:1.0 alpha:0.0500000007];
    -[CALayer setBackgroundColor:](v6->_highlightLuminanceLayer, "setBackgroundColor:", [v31 CGColor]);

    v32 = [CAFilter filterWithType:v12];
    [(CALayer *)v6->_highlightLuminanceLayer setCompositingFilter:v32];

    [(CALayer *)v6->_highlightLuminanceLayer setFrame:0.0, 0.0, width, height];
    [(PHInCallRoundedRectView *)v6 cornerRadius];
    [(CALayer *)v6->_highlightLuminanceLayer setCornerRadius:?];
    [(CALayer *)v6->_highlightLuminanceLayer setOpacity:0.0];
    v33 = [(PHInCallRoundedRectView *)v6 layer];
    [v33 insertSublayer:v6->_highlightLuminanceLayer below:v6->_highlightDodgeLayer];
  }

  return v6;
}

- (void)layoutSubviews
{
  v27.receiver = self;
  v27.super_class = PHInCallRoundedRectView;
  [(PHInCallRoundedRectView *)&v27 layoutSubviews];
  [(PHInCallRoundedRectView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(CALayer *)self->_highlightDodgeLayer setFrame:?];
  [(CALayer *)self->_highlightLuminanceLayer setFrame:v4, v6, v8, v10];
  [(CALayer *)self->_dodgeRingLayer setFrame:v4, v6, v8, v10];
  [(CALayer *)self->_luminanceRingLayer setFrame:v4, v6, v8, v10];
  [(PHInCallRoundedRectView *)self bounds];
  v12 = v11;
  v14 = v13;
  [(PHInCallRoundedRectView *)self strokeWidth];
  v16 = v15;
  v17 = [UIColor colorWithWhite:1.0 alpha:0.0500000007];
  v18 = [(PHInCallRoundedRectView *)self createRingImageWithSize:v17 strokeWidth:v12 color:v14, v16];
  -[CALayer setContents:](self->_luminanceRingLayer, "setContents:", [v18 CGImage]);

  [(PHInCallRoundedRectView *)self bounds];
  v20 = v19;
  v22 = v21;
  [(PHInCallRoundedRectView *)self strokeWidth];
  v24 = v23;
  v25 = [UIColor colorWithWhite:0.600000024 alpha:1.0];
  v26 = [(PHInCallRoundedRectView *)self createRingImageWithSize:v25 strokeWidth:v20 color:v22, v24];
  -[CALayer setContents:](self->_dodgeRingLayer, "setContents:", [v26 CGImage]);
}

- (id)createRingImageWithSize:(CGSize)a3 strokeWidth:(double)a4 color:(id)a5
{
  height = a3.height;
  width = a3.width;
  v9 = a5;
  v21.origin.x = 0.0;
  v21.origin.y = 0.0;
  v21.size.width = width;
  v21.size.height = height;
  v22 = CGRectInset(v21, a4, a4);
  x = v22.origin.x;
  y = v22.origin.y;
  v12 = v22.size.width;
  v13 = v22.size.height;
  v22.origin.x = width;
  v22.origin.y = height;
  UIGraphicsBeginImageContextWithOptions(v22.origin, 0, 0.0);
  [(PHInCallRoundedRectView *)self cornerRadius];
  v15 = [UIBezierPath bezierPathWithRoundedRect:0.0 cornerRadius:0.0, width, height, v14];
  [(PHInCallRoundedRectView *)self cornerRadius];
  v17 = [UIBezierPath bezierPathWithRoundedRect:x cornerRadius:y, v12, v13, v16];
  [v15 appendPath:v17];

  [v15 setUsesEvenOddFillRule:1];
  [v9 setFill];

  [v15 fill];
  v18 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v18;
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  +[CATransaction begin];
  LODWORD(v5) = 1043207291;
  v6 = [NSNumber numberWithFloat:v5];
  [CATransaction setValue:v6 forKey:kCATransactionAnimationDuration];

  if (v3)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 0.0;
  }

  [(CALayer *)self->_highlightDodgeLayer setOpacity:COERCE_DOUBLE(LODWORD(v7))];
  *&v8 = v7;
  [(CALayer *)self->_highlightLuminanceLayer setOpacity:v8];

  +[CATransaction commit];
}

- (void)setUserInteractionEnabled:(BOOL)a3
{
  v3 = a3;
  v10.receiver = self;
  v10.super_class = PHInCallRoundedRectView;
  [(PHInCallRoundedRectView *)&v10 setUserInteractionEnabled:?];
  +[CATransaction begin];
  LODWORD(v5) = 1043207291;
  v6 = [NSNumber numberWithFloat:v5];
  [CATransaction setValue:v6 forKey:kCATransactionAnimationDuration];

  if (v3)
  {
    v8 = 1.0;
  }

  else
  {
    v8 = 0.6;
  }

  *&v7 = v8;
  [(CALayer *)self->_luminanceRingLayer setOpacity:v7];
  *&v9 = v8;
  [(CALayer *)self->_dodgeRingLayer setOpacity:v9];
  +[CATransaction commit];
}

@end