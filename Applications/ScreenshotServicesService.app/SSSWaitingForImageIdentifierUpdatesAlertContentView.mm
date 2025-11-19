@interface SSSWaitingForImageIdentifierUpdatesAlertContentView
- (CGSize)intrinsicContentSize;
- (SSSWaitingForImageIdentifierUpdatesAlertContentView)initWithFrame:(CGRect)a3;
- (id)_shapeLayerPathForProgress:(double)a3;
- (void)layoutSubviews;
- (void)setProgress:(double)a3;
@end

@implementation SSSWaitingForImageIdentifierUpdatesAlertContentView

- (void)layoutSubviews
{
  [(SSSWaitingForImageIdentifierUpdatesAlertContentView *)self bounds];
  UIRectCenteredIntegralRect();
  [(_SSSAnimatableBorderCornerRadiusView *)self->_outerRingView setFrame:?];
  UIRectCenteredIntegralRect();
  [(SSSPathView *)self->_innerPieView setFrame:?];
  [(_SSSAnimatableBorderCornerRadiusView *)self->_outerRingView setBorderWidth:4.0];
  [(_SSSAnimatableBorderCornerRadiusView *)self->_outerRingView setCornerRadius:20.0];
  outerRingView = self->_outerRingView;
  v4 = [(SSSWaitingForImageIdentifierUpdatesAlertContentView *)self tintColor];
  [(_SSSAnimatableBorderCornerRadiusView *)outerRingView setBorderColor:v4];

  innerPieView = self->_innerPieView;
  v6 = [(SSSWaitingForImageIdentifierUpdatesAlertContentView *)self tintColor];
  [(SSSPathView *)innerPieView setFillColor:v6];
}

- (id)_shapeLayerPathForProgress:(double)a3
{
  v4 = +[UIBezierPath bezierPath];
  [v4 moveToPoint:{18.0, 18.0}];
  [v4 addArcWithCenter:1 radius:18.0 startAngle:18.0 endAngle:18.0 clockwise:{-1.57079633, a3 * 6.28318531 + -1.57079633}];
  [v4 closePath];

  return v4;
}

- (CGSize)intrinsicContentSize
{
  v2 = 105.0;
  v3 = 105.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setProgress:(double)a3
{
  progress = self->_progress;
  self->_progress = a3;
  if (progress < 0.1)
  {
    progress = 0.1;
  }

  if (a3 < 0.1)
  {
    a3 = 0.1;
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000308EC;
  v4[3] = &unk_1000BACA0;
  *&v4[6] = progress;
  v4[7] = 0x3F847AE147AE147BLL;
  v4[4] = self;
  v4[5] = fmax((a3 - progress) / 0.01, 1.0);
  [UIView animateKeyframesWithDuration:"animateKeyframesWithDuration:delay:options:animations:completion:" delay:4 options:v4 animations:0 completion:?];
}

- (SSSWaitingForImageIdentifierUpdatesAlertContentView)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = SSSWaitingForImageIdentifierUpdatesAlertContentView;
  v3 = [(SSSWaitingForImageIdentifierUpdatesAlertContentView *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = objc_alloc_init(_SSSAnimatableBorderCornerRadiusView);
  outerRingView = v3->_outerRingView;
  v3->_outerRingView = v4;

  [(SSSWaitingForImageIdentifierUpdatesAlertContentView *)v3 addSubview:v3->_outerRingView];
  v6 = objc_alloc_init(SSSPathView);
  innerPieView = v3->_innerPieView;
  v3->_innerPieView = v6;

  [(SSSWaitingForImageIdentifierUpdatesAlertContentView *)v3 addSubview:v3->_innerPieView];
  v8 = [UIColor colorWithWhite:0.455 alpha:1.0];
  [(SSSWaitingForImageIdentifierUpdatesAlertContentView *)v3 setTintColor:v8];

  return v3;
}

@end