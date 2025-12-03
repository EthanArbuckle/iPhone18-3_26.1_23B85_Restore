@interface CarPanButtonContainer
- (CarPanButtonContainer)initWithFrame:(CGRect)frame;
- (NSArray)preferredFocusEnvironments;
- (id)_buttonForDirection:(int64_t)direction;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)layoutSubviews;
@end

@implementation CarPanButtonContainer

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v9.receiver = self;
  v9.super_class = CarPanButtonContainer;
  v5 = [(CarPanButtonContainer *)&v9 hitTest:event withEvent:test.x, test.y];
  v6 = v5;
  if (v5 == self)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

- (void)layoutSubviews
{
  v31.receiver = self;
  v31.super_class = CarPanButtonContainer;
  [(CarPanButtonContainer *)&v31 layoutSubviews];
  [(CarPanButtonContainer *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(CarPanButtonContainer *)self safeAreaInsets];
  v12 = v11 + v4;
  v14 = v13 + v6;
  v16 = v8 - (v11 + v15);
  v18 = v10 - (v13 + v17);
  v32.origin.x = v11 + v4;
  v32.origin.y = v14;
  v32.size.width = v16;
  v32.size.height = v18;
  CGRectGetMidX(v32);
  UIRoundToViewScale();
  v20 = v19;
  v33.origin.x = v12;
  v33.origin.y = v14;
  v33.size.width = v16;
  v33.size.height = v18;
  CGRectGetMinY(v33);
  UIRoundToViewScale();
  [(CarPanButton *)self->_panUpButton setFrame:v20, v21, 36.0, 36.0];
  [(CarFocusableControl *)self->_panUpButton setTouchInsets:v18 * -0.0833333333, v16 * -0.0833333333, v18 * -0.0833333333, v16 * -0.0833333333];
  v34.origin.x = v12;
  v34.origin.y = v14;
  v34.size.width = v16;
  v34.size.height = v18;
  CGRectGetMinX(v34);
  UIRoundToViewScale();
  v23 = v22;
  v35.origin.x = v12;
  v35.origin.y = v14;
  v35.size.width = v16;
  v35.size.height = v18;
  CGRectGetMidY(v35);
  UIRoundToViewScale();
  [(CarPanButton *)self->_panLeftButton setFrame:v23, v24, 36.0, 36.0];
  [(CarFocusableControl *)self->_panLeftButton setTouchInsets:v16 * -0.0833333333, v18 * -0.0833333333, v16 * -0.0833333333, v18 * -0.0833333333];
  v36.origin.x = v12;
  v36.origin.y = v14;
  v36.size.width = v16;
  v36.size.height = v18;
  CGRectGetMaxX(v36);
  UIRoundToViewScale();
  v26 = v25;
  v37.origin.x = v12;
  v37.origin.y = v14;
  v37.size.width = v16;
  v37.size.height = v18;
  CGRectGetMidY(v37);
  UIRoundToViewScale();
  [(CarPanButton *)self->_panRightButton setFrame:v26, v27, 36.0, 36.0];
  [(CarFocusableControl *)self->_panRightButton setTouchInsets:v16 * -0.0833333333, v18 * -0.0833333333, v16 * -0.0833333333, v18 * -0.0833333333];
  v38.origin.x = v12;
  v38.origin.y = v14;
  v38.size.width = v16;
  v38.size.height = v18;
  CGRectGetMidX(v38);
  UIRoundToViewScale();
  v29 = v28;
  v39.origin.x = v12;
  v39.origin.y = v14;
  v39.size.width = v16;
  v39.size.height = v18;
  CGRectGetMaxY(v39);
  UIRoundToViewScale();
  [(CarPanButton *)self->_panDownButton setFrame:v29, v30, 36.0, 36.0];
  [(CarFocusableControl *)self->_panDownButton setTouchInsets:v18 * -0.0833333333, v16 * -0.0833333333, v18 * -0.0833333333, v16 * -0.0833333333];
}

- (CarPanButtonContainer)initWithFrame:(CGRect)frame
{
  v14.receiver = self;
  v14.super_class = CarPanButtonContainer;
  v3 = [(CarPanButtonContainer *)&v14 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CarPanButtonContainer *)v3 setAccessibilityIdentifier:@"CarPanButtonContainer"];
    v5 = [[CarPanButton alloc] initWithDirection:1];
    panUpButton = v4->_panUpButton;
    v4->_panUpButton = v5;

    [(CarPanButton *)v4->_panUpButton setContentHorizontalAlignment:0];
    [(CarPanButton *)v4->_panUpButton setContentVerticalAlignment:0];
    [(CarPanButtonContainer *)v4 addSubview:v4->_panUpButton];
    v7 = [[CarPanButton alloc] initWithDirection:3];
    panLeftButton = v4->_panLeftButton;
    v4->_panLeftButton = v7;

    [(CarPanButton *)v4->_panLeftButton setContentHorizontalAlignment:0];
    [(CarPanButton *)v4->_panLeftButton setContentVerticalAlignment:0];
    [(CarPanButtonContainer *)v4 addSubview:v4->_panLeftButton];
    v9 = [[CarPanButton alloc] initWithDirection:4];
    panRightButton = v4->_panRightButton;
    v4->_panRightButton = v9;

    [(CarPanButton *)v4->_panRightButton setContentHorizontalAlignment:0];
    [(CarPanButton *)v4->_panRightButton setContentVerticalAlignment:0];
    [(CarPanButtonContainer *)v4 addSubview:v4->_panRightButton];
    v11 = [[CarPanButton alloc] initWithDirection:2];
    panDownButton = v4->_panDownButton;
    v4->_panDownButton = v11;

    [(CarPanButton *)v4->_panDownButton setContentHorizontalAlignment:0];
    [(CarPanButton *)v4->_panDownButton setContentVerticalAlignment:0];
    [(CarPanButtonContainer *)v4 addSubview:v4->_panDownButton];
  }

  return v4;
}

- (NSArray)preferredFocusEnvironments
{
  if (self->_lastNudgedDirection && ([(CarPanButtonContainer *)self _buttonForDirection:?], v3 = objc_claimAutoreleasedReturnValue(), self->_lastNudgedDirection = 0, v3))
  {
    v4 = v3;
    v8 = v3;
    v5 = [NSArray arrayWithObjects:&v8 count:1];
  }

  else
  {
    panRightButton = self->_panRightButton;
    v5 = [NSArray arrayWithObjects:&panRightButton count:1];
  }

  return v5;
}

- (id)_buttonForDirection:(int64_t)direction
{
  if ((direction - 1) > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.isa + **(&off_101631928 + direction - 1));
  }

  return v4;
}

@end