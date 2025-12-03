@interface CarUserTrackingButton
+ (id)buttonWithUserTrackingView:(id)view;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CarUserTrackingButton)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)touchInsets;
- (void)_updateColors;
- (void)_userTrackingButtonTapped:(id)tapped;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)setRoundedCorners:(unint64_t)corners;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation CarUserTrackingButton

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = CarUserTrackingButton;
  [(CarUserTrackingButton *)&v4 didMoveToWindow];
  window = [(CarUserTrackingButton *)self window];

  if (window)
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

+ (id)buttonWithUserTrackingView:(id)view
{
  v14.receiver = self;
  v14.super_class = &OBJC_METACLASS___CarUserTrackingButton;
  v3 = objc_msgSendSuper2(&v14, "buttonWithUserTrackingView:withType:", view, 0);
  [v3 setAccessibilityIdentifier:@"CarUserTrackingButton"];
  [v3 _setSelectsWhenTracking:0];
  v4 = [UIImage _mapsCar_systemImageNamed:@"location" textStyle:UIFontTextStyleSubheadline];
  [v3 _setImage:v4 forUserTrackingMode:0 controlState:0];

  v5 = [UIImage _mapsCar_systemImageNamed:@"location.fill" textStyle:UIFontTextStyleSubheadline];
  [v3 _setImage:v5 forUserTrackingMode:1 controlState:0];

  v6 = [UIImage _mapsCar_systemImageNamed:@"location.north.line.fill" textStyle:UIFontTextStyleSubheadline];
  [v3 _setImage:v6 forUserTrackingMode:2 controlState:0];

  imageView = [v3 imageView];
  [imageView setContentMode:1];

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

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
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

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  [CATransaction begin:context];
  [CATransaction setDisableActions:1];
  [(CarUserTrackingButton *)self _updateColors];

  +[CATransaction commit];
}

- (void)setRoundedCorners:(unint64_t)corners
{
  if (self->_roundedCorners != corners)
  {
    self->_roundedCorners = corners;
    [(NSLayoutConstraint *)self->_heightConstraint setConstant:36.0];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = CarUserTrackingButton;
  changeCopy = change;
  [(CarUserTrackingButton *)&v8 traitCollectionDidChange:changeCopy];
  userInterfaceStyle = [changeCopy userInterfaceStyle];

  traitCollection = [(CarUserTrackingButton *)self traitCollection];
  userInterfaceStyle2 = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    [(CarUserTrackingButton *)self _updateColors];
  }
}

- (void)_userTrackingButtonTapped:(id)tapped
{
  v4 = sub_100EFF708();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] User tracking button tapped", &v5, 0xCu);
  }
}

- (void)dealloc
{
  v3 = sub_100EFF708();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Deallocating", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = CarUserTrackingButton;
  [(CarUserTrackingButton *)&v4 dealloc];
}

- (CarUserTrackingButton)initWithFrame:(CGRect)frame
{
  v12.receiver = self;
  v12.super_class = CarUserTrackingButton;
  v3 = [(CarUserTrackingButton *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    heightAnchor = [(CarUserTrackingButton *)v3 heightAnchor];
    [(CarUserTrackingButton *)v3 roundedCorners];
    v6 = [heightAnchor constraintEqualToConstant:36.0];
    heightConstraint = v3->_heightConstraint;
    v3->_heightConstraint = v6;

    widthAnchor = [(CarUserTrackingButton *)v3 widthAnchor];
    v9 = [widthAnchor constraintEqualToConstant:36.0];
    v13[0] = v9;
    v13[1] = v3->_heightConstraint;
    v10 = [NSArray arrayWithObjects:v13 count:2];
    [NSLayoutConstraint activateConstraints:v10];
  }

  return v3;
}

@end