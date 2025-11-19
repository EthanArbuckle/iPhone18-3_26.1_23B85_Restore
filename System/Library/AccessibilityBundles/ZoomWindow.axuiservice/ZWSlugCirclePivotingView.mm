@interface ZWSlugCirclePivotingView
- (ZWSlugCirclePivotingView)initWithFrame:(CGRect)a3;
- (double)_cornerRadiusForExpandedRing;
- (void)layoutSubviews;
@end

@implementation ZWSlugCirclePivotingView

- (ZWSlugCirclePivotingView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = ZWSlugCirclePivotingView;
  v3 = [(ZWSlugCirclePivotingView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[CAShapeLayer layer];
    v5 = [(ZWSlugCirclePivotingView *)v3 layer];
    [v5 addSublayer:v4];

    [(ZWSlugCirclePivotingView *)v3 setCircleLayer:v4];
    v6 = +[UIColor whiteColor];
    [v4 setFillColor:{objc_msgSend(v6, "CGColor")}];
  }

  return v3;
}

- (double)_cornerRadiusForExpandedRing
{
  v3 = [(ZWSlugCirclePivotingView *)self traitCollection];
  [v3 displayCornerRadius];
  if (v4 <= 0.0)
  {
    v7 = 7.8;
  }

  else
  {
    v5 = [(ZWSlugCirclePivotingView *)self traitCollection];
    [v5 displayCornerRadius];
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
  v12 = [(ZWSlugCirclePivotingView *)self circleLayer];
  [v11 setFromValue:{objc_msgSend(v12, "path")}];

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
  v18 = [v17 CGPath];

  [v11 setDuration:ZWDefaultZoomAnimationDuration()];
  v19 = [(ZWSlugCirclePivotingView *)self circleLayer];
  v20 = CGPathEqualToPath([v19 path], v18);

  if (!v20)
  {
    v21 = [(ZWSlugCirclePivotingView *)self circleLayer];
    [v21 addAnimation:v11 forKey:@"ZWCirclePath"];

    v22 = [(ZWSlugCirclePivotingView *)self circleLayer];
    [v22 setPath:v18];

    v23 = [(ZWSlugCirclePivotingView *)self circleLayer];
    [v23 setBounds:{v4, v6, v8, v10}];

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
    v26 = [(ZWSlugCirclePivotingView *)self circleLayer];
    [v26 setPosition:{MidX, MidY}];
  }
}

@end