@interface NavSpeedLimitView
- (BOOL)isVisible;
- (CGSize)intrinsicContentSize;
- (NavSpeedLimitView)initWithFrame:(CGRect)a3;
- (id)_currentAccessibilityLabel;
- (void)_drawSign;
- (void)_setSpeedLimit:(unint64_t)a3 units:(unint64_t)a4 shieldType:(int64_t)a5 useNightMode:(BOOL)a6;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation NavSpeedLimitView

- (BOOL)isVisible
{
  v2 = [(UIImageView *)self->_imageView image];
  v3 = v2 != 0;

  return v3;
}

- (id)_currentAccessibilityLabel
{
  if (self->_speedLimit)
  {
    units = self->_units;
    v4 = +[NSBundle mainBundle];
    v5 = v4;
    if (units)
    {
      v6 = @"[Navigation][VO] Speed limit description (kph)";
    }

    else
    {
      v6 = @"[Navigation][VO] Speed limit description (mph)";
    }

    v7 = [v4 localizedStringForKey:v6 value:@"localized string not found" table:0];

    v8 = [NSString localizedStringWithFormat:v7, self->_speedLimit];
  }

  else
  {
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"[Navigation][VO] Empty speed limit description" value:@"localized string not found" table:0];
  }

  v9 = v8;

  return v9;
}

- (void)_drawSign
{
  p_intrinsicContentSize = &self->_intrinsicContentSize;
  width = self->_intrinsicContentSize.width;
  height = self->_intrinsicContentSize.height;
  if (self->_speedLimit && self->_shieldType)
  {
    v6 = sub_100090D58();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      shieldType = self->_shieldType;
      speedLimit = self->_speedLimit;
      useNightMode = self->_useNightMode;
      v33 = 134218496;
      v34 = shieldType;
      v35 = 2048;
      v36 = speedLimit;
      v37 = 1024;
      v38 = useNightMode;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Drawing speed limit sign; type: %ld, speed limit: %lu, night mode: %d", &v33, 0x1Cu);
    }

    v10 = objc_opt_new();
    [v10 setNewInterfaceEnabled:_UISolariumEnabled()];
    if (qword_10195E1F0 != -1)
    {
      dispatch_once(&qword_10195E1F0, &stru_101632010);
    }

    v11 = self->_speedLimit;
    v12 = qword_10195E1E8;
    v13 = [NSNumber numberWithUnsignedInteger:v11];
    v14 = [v12 stringFromNumber:v13];

    [v10 setText:v14];
    if (self->_useNightMode)
    {
      v15 = +[VKIconManager sharedManager];
      [v10 setVariant:{objc_msgSend(v15, "darkVariant")}];
    }

    v16 = [(NavSpeedLimitView *)self traitCollection];
    [v16 displayScale];
    v18 = v17;

    v19 = +[VKIconManager sharedManager];
    *&v20 = v18;
    v21 = [v19 imageForDataID:LODWORD(self->_shieldType) text:v14 contentScale:4 sizeGroup:v10 modifiers:v20];

    if (v21)
    {
      v22 = +[UIImage imageWithCGImage:scale:orientation:](UIImage, "imageWithCGImage:scale:orientation:", [v21 image], 0, v18);
      p_imageView = &self->_imageView;
      [(UIImageView *)self->_imageView setImage:v22];
    }

    else
    {
      p_imageView = &self->_imageView;
      [(UIImageView *)self->_imageView setImage:0];
    }

    [(UIImageView *)*p_imageView intrinsicContentSize];
    p_intrinsicContentSize->width = v27;
    p_intrinsicContentSize->height = v28;
    v29 = [(UIImageView *)*p_imageView image];

    if (!v29)
    {
      v30 = sub_100090D58();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v33) = 0;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Failed to get an image for the speed limit", &v33, 2u);
      }
    }
  }

  else
  {
    v24 = sub_100090D58();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = self->_shieldType;
      v26 = self->_speedLimit;
      v33 = 134218240;
      v34 = v25;
      v35 = 2048;
      v36 = v26;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Missing speed limit information; type: %ld, speed limit: %lu", &v33, 0x16u);
    }

    [(UIImageView *)self->_imageView setImage:0];
    *p_intrinsicContentSize = CGSizeZero;
  }

  v31 = [(NavSpeedLimitView *)self _currentAccessibilityLabel];
  [(NavSpeedLimitView *)self setAccessibilityLabel:v31];

  if (width != p_intrinsicContentSize->width || height != p_intrinsicContentSize->height)
  {
    [(NavSpeedLimitView *)self invalidateIntrinsicContentSize];
    [(NavSpeedLimitView *)self setNeedsLayout];
  }
}

- (void)_setSpeedLimit:(unint64_t)a3 units:(unint64_t)a4 shieldType:(int64_t)a5 useNightMode:(BOOL)a6
{
  v6 = a6;
  if (*&self->_speedLimit != __PAIR128__(a4, a3) || self->_shieldType != a5 || self->_useNightMode != a6)
  {
    v11 = sub_100090D58();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      speedLimit = self->_speedLimit;
      units = self->_units;
      shieldType = self->_shieldType;
      useNightMode = self->_useNightMode;
      v16 = 134219776;
      v17 = speedLimit;
      v18 = 2048;
      v19 = a3;
      v20 = 2048;
      v21 = units;
      v22 = 2048;
      v23 = a4;
      v24 = 2048;
      v25 = shieldType;
      v26 = 2048;
      v27 = a5;
      v28 = 1024;
      v29 = useNightMode;
      v30 = 1024;
      v31 = v6;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Changing speedLimit from %lu to %lu, units from %lu to %lu, shieldType from %lld to %lld, useNightMode from %d to %d", &v16, 0x4Au);
    }

    self->_speedLimit = a3;
    self->_units = a4;
    self->_shieldType = a5;
    self->_useNightMode = v6;
    [(NavSpeedLimitView *)self _drawSign];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = NavSpeedLimitView;
  [(NavSpeedLimitView *)&v8 traitCollectionDidChange:a3];
  speedLimit = self->_speedLimit;
  units = self->_units;
  shieldType = self->_shieldType;
  v7 = [(NavSpeedLimitView *)self traitCollection];
  -[NavSpeedLimitView _setSpeedLimit:units:shieldType:useNightMode:](self, "_setSpeedLimit:units:shieldType:useNightMode:", speedLimit, units, shieldType, [v7 userInterfaceStyle] == 2);
}

- (CGSize)intrinsicContentSize
{
  width = self->_intrinsicContentSize.width;
  height = self->_intrinsicContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (NavSpeedLimitView)initWithFrame:(CGRect)a3
{
  v23.receiver = self;
  v23.super_class = NavSpeedLimitView;
  v3 = [(NavSpeedLimitView *)&v23 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    [(NavSpeedLimitView *)v3 setAccessibilityIdentifier:v5];

    [(NavSpeedLimitView *)v3 setIsAccessibilityElement:1];
    v6 = objc_opt_new();
    imageView = v3->_imageView;
    v3->_imageView = v6;

    [(UIImageView *)v3->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v3->_imageView setContentMode:4];
    [(UIImageView *)v3->_imageView setIsAccessibilityElement:0];
    [(NavSpeedLimitView *)v3 addSubview:v3->_imageView];
    v8 = [(NavSpeedLimitView *)v3 traitCollection];
    v3->_useNightMode = [v8 userInterfaceStyle] == 2;

    v22 = [(UIImageView *)v3->_imageView leadingAnchor];
    v21 = [(NavSpeedLimitView *)v3 leadingAnchor];
    v20 = [v22 constraintEqualToAnchor:v21];
    v24[0] = v20;
    v19 = [(UIImageView *)v3->_imageView trailingAnchor];
    v9 = [(NavSpeedLimitView *)v3 trailingAnchor];
    v10 = [v19 constraintEqualToAnchor:v9];
    v24[1] = v10;
    v11 = [(UIImageView *)v3->_imageView topAnchor];
    v12 = [(NavSpeedLimitView *)v3 topAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];
    v24[2] = v13;
    v14 = [(UIImageView *)v3->_imageView bottomAnchor];
    v15 = [(NavSpeedLimitView *)v3 bottomAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    v24[3] = v16;
    v17 = [NSArray arrayWithObjects:v24 count:4];
    [NSLayoutConstraint activateConstraints:v17];
  }

  return v3;
}

@end