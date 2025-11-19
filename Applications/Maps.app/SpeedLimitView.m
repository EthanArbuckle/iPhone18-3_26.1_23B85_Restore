@interface SpeedLimitView
- (BOOL)hasContent;
- (CGSize)intrinsicContentSize;
- (SpeedLimitView)initWithCoder:(id)a3;
- (SpeedLimitView)initWithFrame:(CGRect)a3;
- (UIImageView)speedLimitImageView;
- (id)_stringWithSpeedLimit:(unint64_t)a3;
- (void)_maps_commonInit;
- (void)_updateShield;
- (void)didMoveToWindow;
- (void)setSpeedLimit:(unint64_t)a3 shieldType:(int64_t)a4;
- (void)setUseNightMode:(BOOL)a3;
@end

@implementation SpeedLimitView

- (BOOL)hasContent
{
  v2 = [(SpeedLimitView *)self speedLimitImageView];
  v3 = [v2 image];
  v4 = v3 != 0;

  return v4;
}

- (UIImageView)speedLimitImageView
{
  speedLimitImageView = self->_speedLimitImageView;
  if (!speedLimitImageView)
  {
    v4 = objc_alloc_init(UIImageView);
    v5 = self->_speedLimitImageView;
    self->_speedLimitImageView = v4;

    [(UIImageView *)self->_speedLimitImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)self->_speedLimitImageView setContentMode:4];
    LODWORD(v6) = 1148846080;
    [(UIImageView *)self->_speedLimitImageView setContentCompressionResistancePriority:1 forAxis:v6];
    LODWORD(v7) = 1148846080;
    [(UIImageView *)self->_speedLimitImageView setContentCompressionResistancePriority:0 forAxis:v7];
    speedLimitImageView = self->_speedLimitImageView;
  }

  return speedLimitImageView;
}

- (id)_stringWithSpeedLimit:(unint64_t)a3
{
  if (qword_10195E270 != -1)
  {
    dispatch_once(&qword_10195E270, &stru_101632640);
  }

  v4 = qword_10195E268;
  v5 = [NSNumber numberWithUnsignedInteger:a3];
  v6 = [v4 stringFromNumber:v5];

  return v6;
}

- (CGSize)intrinsicContentSize
{
  v2 = [(SpeedLimitView *)self speedLimitImageView];
  v3 = [v2 image];
  [v3 size];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)_updateShield
{
  if ([(SpeedLimitView *)self speedLimit]&& [(SpeedLimitView *)self shieldType])
  {
    v3 = [(SpeedLimitView *)self _stringWithSpeedLimit:[(SpeedLimitView *)self speedLimit]];
    v4 = [(SpeedLimitView *)self _screen];
    [v4 scale];
    v6 = v5;

    v7 = objc_alloc_init(VKIconModifiers);
    [v7 setNewInterfaceEnabled:_UISolariumEnabled()];
    [v7 setText:v3];
    v8 = +[VKIconManager sharedManager];
    v9 = [(SpeedLimitView *)self shieldType];
    v10 = [(SpeedLimitView *)self shieldSize];
    *&v11 = v6;
    v12 = [v8 imageForDataID:v9 text:v3 contentScale:v10 sizeGroup:v7 modifiers:v11];

    v13 = +[VKIconManager sharedManager];
    [v7 setVariant:{objc_msgSend(v13, "darkVariant")}];

    v14 = +[VKIconManager sharedManager];
    v15 = [(SpeedLimitView *)self shieldType];
    v16 = [(SpeedLimitView *)self shieldSize];
    *&v17 = v6;
    v18 = [v14 imageForDataID:v15 text:v3 contentScale:v16 sizeGroup:v7 modifiers:v17];

    if (v12)
    {
      v19 = [v12 image];
      [(SpeedLimitView *)self dynamicScale];
      v21 = [UIImage imageWithCGImage:v19 scale:0 orientation:v6 / v20];
    }

    else
    {
      v21 = 0;
    }

    objc_storeStrong(&self->_speedLimitImage, v21);
    if (v12)
    {
    }

    if (v18)
    {
      v30 = [v18 image];
      [(SpeedLimitView *)self dynamicScale];
      v32 = [UIImage imageWithCGImage:v30 scale:0 orientation:v6 / v31];
    }

    else
    {
      v32 = 0;
    }

    objc_storeStrong(&self->_dimmedSpeedLimitImage, v32);
    if (v18)
    {
    }

    if ([(SpeedLimitView *)self useNightMode])
    {
      p_dimmedSpeedLimitImage = &self->_dimmedSpeedLimitImage;
    }

    else
    {
      p_dimmedSpeedLimitImage = &self->_speedLimitImage;
    }

    v34 = *p_dimmedSpeedLimitImage;
    v35 = [(SpeedLimitView *)self speedLimitImageView];
    [v35 setImage:v34];

    v36 = [(SpeedLimitView *)self speedLimitImageView];
    [v36 sizeToFit];

    v37 = sub_100090D58();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      v43 = [(SpeedLimitView *)self speedLimitImageView];
      v38 = [v43 image];
      v39 = v12;
      v40 = [(SpeedLimitView *)self speedLimit];
      v41 = [(SpeedLimitView *)self shieldType];
      v42 = [(SpeedLimitView *)self window];
      *buf = 138544130;
      v45 = v38;
      v46 = 2048;
      v47 = v40;
      v12 = v39;
      v48 = 2048;
      v49 = v41;
      v50 = 2114;
      v51 = v42;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "Got image %{public}@ for speed limit %lu, shield type %lld, in window %{public}@", buf, 0x2Au);
    }

LABEL_22:
    goto LABEL_23;
  }

  v22 = [(SpeedLimitView *)self speedLimitImageView];
  v23 = [v22 image];

  if (v23)
  {
    speedLimitImage = self->_speedLimitImage;
    self->_speedLimitImage = 0;

    dimmedSpeedLimitImage = self->_dimmedSpeedLimitImage;
    self->_dimmedSpeedLimitImage = 0;

    v26 = [(SpeedLimitView *)self speedLimitImageView];
    [v26 setImage:0];

    v3 = sub_100090D58();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v27 = [(SpeedLimitView *)self speedLimit];
      v28 = [(SpeedLimitView *)self shieldType];
      v29 = [(SpeedLimitView *)self window];
      *buf = 134218498;
      v45 = v27;
      v46 = 2048;
      v47 = v28;
      v48 = 2114;
      v49 = v29;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Removing speed limit %lu, shield type %lld, in window %{public}@", buf, 0x20u);
    }

    goto LABEL_22;
  }

LABEL_23:
  [(SpeedLimitView *)self invalidateIntrinsicContentSize];
}

- (void)setUseNightMode:(BOOL)a3
{
  if (self->_useNightMode != a3)
  {
    self->_useNightMode = a3;
    v5 = [(SpeedLimitView *)self useNightMode];
    v6 = &OBJC_IVAR___SpeedLimitView__speedLimitImage;
    if (v5)
    {
      v6 = &OBJC_IVAR___SpeedLimitView__dimmedSpeedLimitImage;
    }

    v7 = *(&self->super.super.super.isa + *v6);
    v8 = [(SpeedLimitView *)self speedLimitImageView];
    [v8 setImage:v7];

    v9 = [(SpeedLimitView *)self speedLimitImageView];
    [v9 sizeToFit];
  }
}

- (void)setSpeedLimit:(unint64_t)a3 shieldType:(int64_t)a4
{
  if (self->_speedLimit != a3 || self->_shieldType != a4)
  {
    self->_speedLimit = a3;
    self->_shieldType = a4;
    [(SpeedLimitView *)self _updateShield];
  }
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = SpeedLimitView;
  [(SpeedLimitView *)&v3 didMoveToWindow];
  [(SpeedLimitView *)self _updateShield];
}

- (void)_maps_commonInit
{
  v3 = [(SpeedLimitView *)self speedLimitImageView];
  [(SpeedLimitView *)self addSubview:v3];

  v20 = [(SpeedLimitView *)self speedLimitImageView];
  v19 = [v20 leadingAnchor];
  v18 = [(SpeedLimitView *)self leadingAnchor];
  v17 = [v19 constraintEqualToAnchor:v18];
  v21[0] = v17;
  v16 = [(SpeedLimitView *)self speedLimitImageView];
  v15 = [v16 trailingAnchor];
  v14 = [(SpeedLimitView *)self trailingAnchor];
  v4 = [v15 constraintEqualToAnchor:v14];
  v21[1] = v4;
  v5 = [(SpeedLimitView *)self speedLimitImageView];
  v6 = [v5 topAnchor];
  v7 = [(SpeedLimitView *)self topAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];
  v21[2] = v8;
  v9 = [(SpeedLimitView *)self speedLimitImageView];
  v10 = [v9 bottomAnchor];
  v11 = [(SpeedLimitView *)self bottomAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  v21[3] = v12;
  v13 = [NSArray arrayWithObjects:v21 count:4];
  [NSLayoutConstraint activateConstraints:v13];
}

- (SpeedLimitView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = SpeedLimitView;
  v3 = [(SpeedLimitView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(SpeedLimitView *)v3 _maps_commonInit];
  }

  return v4;
}

- (SpeedLimitView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = SpeedLimitView;
  v3 = [(SpeedLimitView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(SpeedLimitView *)v3 _maps_commonInit];
  }

  return v4;
}

@end