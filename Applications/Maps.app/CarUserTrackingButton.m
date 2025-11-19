@interface CarUserTrackingButton
+ (id)buttonWithUserTrackingView:(id)a3;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CarUserTrackingButton)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)touchInsets;
- (void)_updateColors;
- (void)_userTrackingButtonTapped:(id)a3;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)setRoundedCorners:(unint64_t)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation CarUserTrackingButton

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = CarUserTrackingButton;
  [(CarUserTrackingButton *)&v4 didMoveToWindow];
  v3 = [(CarUserTrackingButton *)self window];

  if (v3)
  {
    [(CarUserTrackingButton *)self _updateColors];
  }
}

- (void)_updateColors
{
  if (([(CarUserTrackingButton *)self isFocused]& 1) != 0)
  {
    +[UIColor _carSystemFocusLabelColor];
  }

  else
  {
    +[UIColor labelColor];
  }
  v3 = ;
  [(CarUserTrackingButton *)self setTintColor:v3];
}

+ (id)buttonWithUserTrackingView:(id)a3
{
  v14.receiver = a1;
  v14.super_class = &OBJC_METACLASS___CarUserTrackingButton;
  v3 = objc_msgSendSuper2(&v14, "buttonWithUserTrackingView:withType:", a3, 0);
  [v3 setAccessibilityIdentifier:@"CarUserTrackingButton"];
  [v3 _setSelectsWhenTracking:0];
  v4 = [UIImage _mapsCar_systemImageNamed:@"location" textStyle:UIFontTextStyleSubheadline];
  [v3 _setImage:v4 forUserTrackingMode:0 controlState:0];

  v5 = [UIImage _mapsCar_systemImageNamed:@"location.fill" textStyle:UIFontTextStyleSubheadline];
  [v3 _setImage:v5 forUserTrackingMode:1 controlState:0];

  v6 = [UIImage _mapsCar_systemImageNamed:@"location.north.line.fill" textStyle:UIFontTextStyleSubheadline];
  [v3 _setImage:v6 forUserTrackingMode:2 controlState:0];

  v7 = [v3 imageView];
  [v7 setContentMode:1];

  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"CarPlay_Location" value:@"localized string not found" table:0];
  v15[0] = v9;
  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"CarPlay_Tracking" value:@"localized string not found" table:0];
  v15[1] = v11;
  v12 = [NSArray arrayWithObjects:v15 count:2];
  [v3 setAccessibilityUserInputLabels:v12];

  [v3 addTarget:v3 action:"_userTrackingButtonTapped:" forControlEvents:0x2000];

  return v3;
}

- (UIEdgeInsets)touchInsets
{
  top = self->_touchInsets.top;
  left = self->_touchInsets.left;
  bottom = self->_touchInsets.bottom;
  right = self->_touchInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  [(CarUserTrackingButton *)self bounds];
  top = self->_touchInsets.top;
  left = self->_touchInsets.left;
  v10 = left + v9;
  v12 = top + v11;
  v14 = v13 - (left + self->_touchInsets.right);
  v16 = v15 - (top + self->_touchInsets.bottom);
  v17 = x;
  v18 = y;

  return CGRectContainsPoint(*&v10, *&v17);
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  [CATransaction begin:a3];
  [CATransaction setDisableActions:1];
  [(CarUserTrackingButton *)self _updateColors];

  +[CATransaction commit];
}

- (void)setRoundedCorners:(unint64_t)a3
{
  if (self->_roundedCorners != a3)
  {
    self->_roundedCorners = a3;
    [(NSLayoutConstraint *)self->_heightConstraint setConstant:36.0];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = CarUserTrackingButton;
  v4 = a3;
  [(CarUserTrackingButton *)&v8 traitCollectionDidChange:v4];
  v5 = [v4 userInterfaceStyle];

  v6 = [(CarUserTrackingButton *)self traitCollection];
  v7 = [v6 userInterfaceStyle];

  if (v5 != v7)
  {
    [(CarUserTrackingButton *)self _updateColors];
  }
}

- (void)_userTrackingButtonTapped:(id)a3
{
  v4 = sub_100EFF708();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 134349056;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] User tracking button tapped", &v5, 0xCu);
  }
}

- (void)dealloc
{
  v3 = sub_100EFF708();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Deallocating", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = CarUserTrackingButton;
  [(CarUserTrackingButton *)&v4 dealloc];
}

- (CarUserTrackingButton)initWithFrame:(CGRect)a3
{
  v12.receiver = self;
  v12.super_class = CarUserTrackingButton;
  v3 = [(CarUserTrackingButton *)&v12 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = sub_100EFF708();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v15 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] Initializing", buf, 0xCu);
    }

    [(CarUserTrackingButton *)v3 _updateColors];
    v5 = [(CarUserTrackingButton *)v3 heightAnchor];
    [(CarUserTrackingButton *)v3 roundedCorners];
    v6 = [v5 constraintEqualToConstant:36.0];
    heightConstraint = v3->_heightConstraint;
    v3->_heightConstraint = v6;

    v8 = [(CarUserTrackingButton *)v3 widthAnchor];
    v9 = [v8 constraintEqualToConstant:36.0];
    v13[0] = v9;
    v13[1] = v3->_heightConstraint;
    v10 = [NSArray arrayWithObjects:v13 count:2];
    [NSLayoutConstraint activateConstraints:v10];
  }

  return v3;
}

@end