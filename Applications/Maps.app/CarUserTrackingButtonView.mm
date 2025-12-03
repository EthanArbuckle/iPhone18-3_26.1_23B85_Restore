@interface CarUserTrackingButtonView
+ (id)buttonWithUserTrackingView:(id)view;
- (CarUserTrackingButtonView)initWithUserTrackingView:(id)view;
- (UIEdgeInsets)touchInsets;
- (id)focusOrderSubItems;
- (id)preferredFocusEnvironments;
- (void)layoutSubviews;
@end

@implementation CarUserTrackingButtonView

- (UIEdgeInsets)touchInsets
{
  [(CarUserTrackingButton *)self->_button touchInsets];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)layoutSubviews
{
  v25.receiver = self;
  v25.super_class = CarUserTrackingButtonView;
  [(CarUserTrackingButtonView *)&v25 layoutSubviews];
  [(CarUserTrackingButtonView *)self bounds];
  x = v26.origin.x;
  y = v26.origin.y;
  width = v26.size.width;
  height = v26.size.height;
  if (!CGRectEqualToRect(v26, self->_lastBounds) || self->_roundedCorners != self->_lastRoundedCorners)
  {
    blurView = self->_blurView;
    [(CarUserTrackingButtonView *)self roundedCornerRadius];
    [(CarDynamicBlurView *)blurView _setCornerRadius:[(CarUserTrackingButtonView *)self needsContinuousRoundedCorners] continuous:self->_roundedCorners & 0xF maskedCorners:v8];
    [(CarUserTrackingButtonView *)self bounds];
    self->_lastBounds.origin.x = v9;
    self->_lastBounds.origin.y = v10;
    self->_lastBounds.size.width = v11;
    self->_lastBounds.size.height = v12;
    self->_lastRoundedCorners = self->_roundedCorners;
  }

  isFocused = [(CarUserTrackingButton *)self->_button isFocused];
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  if (!self->_focusShapeLayer)
  {
    v14 = +[CAShapeLayer layer];
    focusShapeLayer = self->_focusShapeLayer;
    self->_focusShapeLayer = v14;

    [(CAShapeLayer *)self->_focusShapeLayer setNeedsDisplayOnBoundsChange:1];
    v16 = +[UIColor clearColor];
    -[CAShapeLayer setBorderColor:](self->_focusShapeLayer, "setBorderColor:", [v16 CGColor]);

    layer = [(CarUserTrackingButtonView *)self layer];
    [layer insertSublayer:self->_focusShapeLayer atIndex:0];
  }

  if (isFocused)
  {
    +[UIColor _carSystemFocusColor];
  }

  else
  {
    +[UIColor clearColor];
  }
  v18 = ;
  -[CAShapeLayer setBackgroundColor:](self->_focusShapeLayer, "setBackgroundColor:", [v18 CGColor]);
  v19 = x + 4.0;
  v20 = y + 4.0;
  v21 = width + -8.0;
  v22 = height + -8.0;
  [(CAShapeLayer *)self->_focusShapeLayer setFrame:v19, v20, v21, height + -8.0];
  v27.origin.x = v19;
  v27.origin.y = v20;
  v27.size.width = v21;
  v27.size.height = height + -8.0;
  v23 = CGRectGetWidth(v27);
  v28.origin.x = v19;
  v28.origin.y = v20;
  v28.size.width = v21;
  v28.size.height = v22;
  if (v23 >= CGRectGetHeight(v28))
  {
    v30.origin.x = v19;
    v30.origin.y = v20;
    v30.size.width = v21;
    v30.size.height = v22;
    v24 = CGRectGetHeight(v30);
  }

  else
  {
    v29.origin.x = v19;
    v29.origin.y = v20;
    v29.size.width = v21;
    v29.size.height = v22;
    v24 = CGRectGetWidth(v29);
  }

  [(CAShapeLayer *)self->_focusShapeLayer setCornerRadius:v24 * 0.5];
  +[CATransaction commit];
}

- (id)focusOrderSubItems
{
  button = self->_button;
  v2 = [NSArray arrayWithObjects:&button count:1];

  return v2;
}

- (id)preferredFocusEnvironments
{
  button = self->_button;
  v2 = [NSArray arrayWithObjects:&button count:1];

  return v2;
}

- (CarUserTrackingButtonView)initWithUserTrackingView:(id)view
{
  viewCopy = view;
  v16.receiver = self;
  v16.super_class = CarUserTrackingButtonView;
  v5 = [(CarUserTrackingButtonView *)&v16 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  if (v5)
  {
    v6 = [CarUserTrackingButton buttonWithUserTrackingView:viewCopy];
    button = v5->_button;
    v5->_button = v6;

    [(CarUserTrackingButton *)v5->_button setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = v5;
    if ((GEOConfigGetBOOL() & 1) == 0)
    {
      v9 = [v8 _mapsCar_injectBlurView:2];
      v10 = v8[2];
      v8[2] = v9;

      contentView = [v8[2] contentView];

      v8 = contentView;
    }

    [v8 addSubview:v5->_button];
    LODWORD(v12) = 1148846080;
    v13 = [(CarUserTrackingButton *)v5->_button _maps_constraintsEqualToEdgesOfView:v8 priority:v12];
    allConstraints = [v13 allConstraints];
    [NSLayoutConstraint activateConstraints:allConstraints];
  }

  return v5;
}

+ (id)buttonWithUserTrackingView:(id)view
{
  viewCopy = view;
  v5 = [[self alloc] initWithUserTrackingView:viewCopy];

  return v5;
}

@end