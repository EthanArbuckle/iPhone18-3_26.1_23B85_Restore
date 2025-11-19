@interface RCEditingProgressIndicator
- (CGPath)_progressPath;
- (CGSize)intrinsicContentSize;
- (RCEditingProgressIndicator)initWithCoder:(id)a3;
- (RCEditingProgressIndicator)initWithFrame:(CGRect)a3;
- (double)_radius;
- (void)_commonInit;
- (void)_styleView;
- (void)_updateLayers;
- (void)layoutSublayersOfLayer:(id)a3;
- (void)layoutSubviews;
- (void)setProgress:(float)a3;
- (void)setProgressColor:(id)a3;
@end

@implementation RCEditingProgressIndicator

- (void)setProgress:(float)a3
{
  self->_progress = a3;
  v4 = [(RCEditingProgressIndicator *)self _progressPath];
  v5 = [(RCEditingProgressIndicator *)self progressLayer];
  [v5 setPath:v4];
}

- (void)setProgressColor:(id)a3
{
  objc_storeStrong(&self->_progressColor, a3);
  v5 = a3;
  v6 = [v5 CGColor];

  v7 = [(RCEditingProgressIndicator *)self progressLayer];
  [v7 setFillColor:v6];
}

- (RCEditingProgressIndicator)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = RCEditingProgressIndicator;
  v3 = [(RCEditingProgressIndicator *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(RCEditingProgressIndicator *)v3 _commonInit];
  }

  return v4;
}

- (RCEditingProgressIndicator)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = RCEditingProgressIndicator;
  v3 = [(RCEditingProgressIndicator *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(RCEditingProgressIndicator *)v3 _commonInit];
  }

  return v4;
}

- (void)_commonInit
{
  v5 = [(RCEditingProgressIndicator *)self layer];
  v3 = objc_opt_new();
  [v3 setAnchorPoint:{0.0, 0.0}];
  [(RCEditingProgressIndicator *)self setProgressLayer:v3];
  v4 = +[UIColor secondaryLabelColor];
  [(RCEditingProgressIndicator *)self setProgressColor:v4];

  [v5 addSublayer:v3];
  [(RCEditingProgressIndicator *)self _updateLayers];
}

- (void)layoutSublayersOfLayer:(id)a3
{
  v4.receiver = self;
  v4.super_class = RCEditingProgressIndicator;
  [(RCEditingProgressIndicator *)&v4 layoutSublayersOfLayer:a3];
  [(RCEditingProgressIndicator *)self _updateLayers];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = RCEditingProgressIndicator;
  [(RCEditingProgressIndicator *)&v3 layoutSubviews];
  [(RCEditingProgressIndicator *)self _updateLayers];
  [(RCEditingProgressIndicator *)self _styleView];
}

- (void)_updateLayers
{
  v4 = [(RCEditingProgressIndicator *)self progressLayer];
  v3 = [(RCEditingProgressIndicator *)self layer];
  [v3 bounds];
  [v4 setBounds:?];

  [v4 setPath:{-[RCEditingProgressIndicator _progressPath](self, "_progressPath")}];
}

- (CGPath)_progressPath
{
  v3 = objc_opt_new();
  [(RCEditingProgressIndicator *)self outerRingThickness];
  v5 = v4;
  [(RCEditingProgressIndicator *)self _radius];
  v7 = v6;
  v8 = v5 + v6;
  v9 = [(RCEditingProgressIndicator *)self progressLayer];
  [v9 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v25.origin.x = v11;
  v25.origin.y = v13;
  v25.size.width = v15;
  v25.size.height = v17;
  MidX = CGRectGetMidX(v25);
  v26.origin.x = v11;
  v26.origin.y = v13;
  v26.size.width = v15;
  v26.size.height = v17;
  MidY = CGRectGetMidY(v26);
  v20 = MidY - v7;
  [v3 moveToPoint:{MidX, MidY - v8}];
  [v3 addArcWithCenter:1 radius:MidX startAngle:MidY endAngle:v8 clockwise:{-1.57079637, 4.71238899}];
  [(RCEditingProgressIndicator *)self progress];
  if (v21 <= 0.01)
  {
    [v3 addLineToPoint:{MidX, v20}];
    [v3 addArcWithCenter:0 radius:MidX startAngle:MidY endAngle:v7 clockwise:{-1.57079637, 4.71238899}];
    [v3 closePath];
  }

  else
  {
    [v3 moveToPoint:{MidX, v20}];
    [(RCEditingProgressIndicator *)self progress];
    [v3 addArcWithCenter:0 radius:MidX startAngle:MidY endAngle:v7 clockwise:{-1.57079637, ((v22 * 6.2832) + -1.5708)}];
    [v3 addLineToPoint:{MidX, MidY}];
    [v3 addLineToPoint:{MidX, v20}];
  }

  v23 = [v3 CGPath];

  return v23;
}

- (double)_radius
{
  [(RCEditingProgressIndicator *)self diameter];
  v3 = v2 * 0.5;

  return RCRoundCoord(v3);
}

- (CGSize)intrinsicContentSize
{
  [(RCEditingProgressIndicator *)self diameter];
  v4 = v3;
  [(RCEditingProgressIndicator *)self diameter];
  v6 = v5;
  v7 = v4;
  result.height = v6;
  result.width = v7;
  return result;
}

- (void)_styleView
{
  v6 = [(RCEditingProgressIndicator *)self progressColor];
  v3 = v6;
  v4 = [v6 CGColor];
  v5 = [(RCEditingProgressIndicator *)self progressLayer];
  [v5 setFillColor:v4];
}

@end