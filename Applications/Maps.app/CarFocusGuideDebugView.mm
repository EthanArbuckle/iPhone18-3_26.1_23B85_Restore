@interface CarFocusGuideDebugView
- (CarFocusGuideDebugView)initWithDirection:(unint64_t)a3;
- (id)_colorForDirection:(unint64_t)a3;
- (void)_updateColors;
- (void)setUserInteractionEnabled:(BOOL)a3;
@end

@implementation CarFocusGuideDebugView

- (void)setUserInteractionEnabled:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CarFocusGuideDebugView;
  [(CarFocusGuideDebugView *)&v4 setUserInteractionEnabled:a3];
  [(CarFocusGuideDebugView *)self _updateColors];
}

- (id)_colorForDirection:(unint64_t)a3
{
  if (a3)
  {
    +[UIColor systemDarkPinkColor];
  }

  else
  {
    +[UIColor systemDarkPurpleColor];
  }
  v3 = ;

  return v3;
}

- (void)_updateColors
{
  if (([(CarFocusGuideDebugView *)self isUserInteractionEnabled]& 1) != 0)
  {
    [(CarFocusGuideDebugView *)self _colorForDirection:self->_direction];
  }

  else
  {
    +[UIColor blackColor];
  }
  v8 = ;
  v3 = [v8 colorWithAlphaComponent:0.200000003];
  [(CarFocusGuideDebugView *)self setBackgroundColor:v3];

  v4 = [v8 colorWithAlphaComponent:0.300000012];
  v5 = [v4 CGColor];
  v6 = [(CarFocusGuideDebugView *)self layer];
  [v6 setBorderColor:v5];

  v7 = [v8 colorWithAlphaComponent:0.5];
  [(UILabel *)self->_directionLabel setTextColor:v7];
}

- (CarFocusGuideDebugView)initWithDirection:(unint64_t)a3
{
  v19.receiver = self;
  v19.super_class = CarFocusGuideDebugView;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v7 = [(CarFocusGuideDebugView *)&v19 initWithFrame:CGRectZero.origin.x, y, width, height];
  v8 = v7;
  if (v7)
  {
    v7->_direction = a3;
    v9 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    directionLabel = v8->_directionLabel;
    v8->_directionLabel = v9;

    [(UILabel *)v8->_directionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    if (a3)
    {
      v11 = +[NSMutableString string];
      v23[0] = 0;
      v23[1] = v23;
      v23[2] = 0x2020000000;
      v24 = 0;
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_100AE377C;
      v20[3] = &unk_101637870;
      v12 = v11;
      v21 = v12;
      v22 = v23;
      v13 = objc_retainBlock(v20);
      v14 = v13;
      if (a3)
      {
        (v13[2])(v13, @"Up");
      }

      if ((a3 & 2) != 0)
      {
        (v14)[2](v14, @"Down");
      }

      if ((a3 & 4) != 0)
      {
        (v14)[2](v14, @"Left");
      }

      if ((a3 & 8) != 0)
      {
        (v14)[2](v14, @"Right");
      }

      if ((a3 & 0x20) != 0)
      {
        (v14)[2](v14, @"Previous");
      }

      if ((a3 & 0x10) != 0)
      {
        (v14)[2](v14, @"Next");
      }

      v15 = v12;

      _Block_object_dispose(v23, 8);
    }

    else
    {
      v15 = @"None";
    }

    [(UILabel *)v8->_directionLabel setText:v15];

    [(UILabel *)v8->_directionLabel setTextAlignment:1];
    [(CarFocusGuideDebugView *)v8 addSubview:v8->_directionLabel];
    v16 = [(UILabel *)v8->_directionLabel _maps_constraintsForCenteringInView:v8];
    [NSLayoutConstraint activateConstraints:v16];

    [(CarFocusGuideDebugView *)v8 setUserInteractionEnabled:1];
    v17 = [(CarFocusGuideDebugView *)v8 layer];
    [v17 setBorderWidth:1.0];

    [(CarFocusGuideDebugView *)v8 _updateColors];
  }

  return v8;
}

@end