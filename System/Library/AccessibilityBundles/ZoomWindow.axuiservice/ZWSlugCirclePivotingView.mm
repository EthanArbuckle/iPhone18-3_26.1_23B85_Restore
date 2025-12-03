@interface ZWSlugCirclePivotingView
- (ZWSlugCirclePivotingView)initWithFrame:(CGRect)frame;
- (double)_cornerRadiusForExpandedRing;
- (void)layoutSubviews;
@end

@implementation ZWSlugCirclePivotingView

- (ZWSlugCirclePivotingView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = ZWSlugCirclePivotingView;
  v3 = [(ZWSlugCirclePivotingView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[CAShapeLayer layer];
    layer = [(ZWSlugCirclePivotingView *)v3 layer];
    [layer addSublayer:v4];

    [(ZWSlugCirclePivotingView *)v3 setCircleLayer:v4];
    v6 = +[UIColor whiteColor];
    [v4 setFillColor:{objc_msgSend(v6, "CGColor")}];
  }

  return v3;
}

- (double)_cornerRadiusForExpandedRing
{
  traitCollection = [(ZWSlugCirclePivotingView *)self traitCollection];
  [traitCollection displayCornerRadius];
  if (v4 <= 0.0)
  {
    v7 = 7.8;
  }

  else
  {
    traitCollection2 = [(ZWSlugCirclePivotingView *)self traitCollection];
    [traitCollection2 displayCornerRadius];
    v7 = v6 / 5.0;
  }

  return v7 + -3.0;
}

- (void)layoutSubviews
{
  v27.receiver = self;
  v27.super_class = ZWSlugCirclePivotingView;
  [(ZWSlugCirclePivotingView *)&v27 layoutSubviews];
  [(ZWSlugCirclePivotingView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [CABasicAnimation animationWithKeyPath:@"path"];
  circleLayer = [(ZWSlugCirclePivotingView *)self circleLayer];
  [v11 setFromValue:{objc_msgSend(circleLayer, "path")}];

  if ([(ZWSlugCirclePivotingView *)self shouldUseRoundedRect])
  {
    [(ZWSlugCirclePivotingView *)self _cornerRadiusForExpandedRing];
    v14 = [UIBezierPath bezierPathWithRoundedRect:v4 cornerRadius:v6, v8, v10, v13];
    [v11 setToValue:{objc_msgSend(v14, "CGPath")}];

    [(ZWSlugCirclePivotingView *)self _cornerRadiusForExpandedRing];
    [UIBezierPath bezierPathWithRoundedRect:v4 cornerRadius:v6, v8, v10, v15];
  }

  else
  {
    v16 = [UIBezierPath bezierPathWithOvalInRect:v4, v6, v8, v10];
    [v11 setToValue:{objc_msgSend(v16, "CGPath")}];

    [UIBezierPath bezierPathWithOvalInRect:v4, v6, v8, v10];
  }
  v17 = ;
  cGPath = [v17 CGPath];

  [v11 setDuration:ZWDefaultZoomAnimationDuration()];
  circleLayer2 = [(ZWSlugCirclePivotingView *)self circleLayer];
  v20 = CGPathEqualToPath([circleLayer2 path], cGPath);

  if (!v20)
  {
    circleLayer3 = [(ZWSlugCirclePivotingView *)self circleLayer];
    [circleLayer3 addAnimation:v11 forKey:@"ZWCirclePath"];

    circleLayer4 = [(ZWSlugCirclePivotingView *)self circleLayer];
    [circleLayer4 setPath:cGPath];

    circleLayer5 = [(ZWSlugCirclePivotingView *)self circleLayer];
    [circleLayer5 setBounds:{v4, v6, v8, v10}];

    v28.origin.x = v4;
    v28.origin.y = v6;
    v28.size.width = v8;
    v28.size.height = v10;
    MidX = CGRectGetMidX(v28);
    v29.origin.x = v4;
    v29.origin.y = v6;
    v29.size.width = v8;
    v29.size.height = v10;
    MidY = CGRectGetMidY(v29);
    circleLayer6 = [(ZWSlugCirclePivotingView *)self circleLayer];
    [circleLayer6 setPosition:{MidX, MidY}];
  }
}

@end