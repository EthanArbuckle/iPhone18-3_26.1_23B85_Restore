@interface SpeedLimitView
- (BOOL)hasContent;
- (CGSize)intrinsicContentSize;
- (SpeedLimitView)initWithCoder:(id)coder;
- (SpeedLimitView)initWithFrame:(CGRect)frame;
- (UIImageView)speedLimitImageView;
- (id)_stringWithSpeedLimit:(unint64_t)limit;
- (void)_maps_commonInit;
- (void)_updateShield;
- (void)didMoveToWindow;
- (void)setSpeedLimit:(unint64_t)limit shieldType:(int64_t)type;
- (void)setUseNightMode:(BOOL)mode;
@end

@implementation SpeedLimitView

- (BOOL)hasContent
{
  speedLimitImageView = [(SpeedLimitView *)self speedLimitImageView];
  image = [speedLimitImageView image];
  v4 = image != 0;

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

- (id)_stringWithSpeedLimit:(unint64_t)limit
{
  if (qword_10195E270 != -1)
  {
    dispatch_once(&qword_10195E270, &stru_101632640);
  }

  v4 = qword_10195E268;
  v5 = [NSNumber numberWithUnsignedInteger:limit];
  v6 = [v4 stringFromNumber:v5];

  return v6;
}

- (CGSize)intrinsicContentSize
{
  speedLimitImageView = [(SpeedLimitView *)self speedLimitImageView];
  image = [speedLimitImageView image];
  [image size];
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
    _screen = [(SpeedLimitView *)self _screen];
    [_screen scale];
    v6 = v5;

    v7 = objc_alloc_init(VKIconModifiers);
    [v7 setNewInterfaceEnabled:_UISolariumEnabled()];
    [v7 setText:v3];
    v8 = +[VKIconManager sharedManager];
    shieldType = [(SpeedLimitView *)self shieldType];
    shieldSize = [(SpeedLimitView *)self shieldSize];
    *&v11 = v6;
    v12 = [v8 imageForDataID:shieldType text:v3 contentScale:shieldSize sizeGroup:v7 modifiers:v11];

    v13 = +[VKIconManager sharedManager];
    [v7 setVariant:{objc_msgSend(v13, "darkVariant")}];

    v14 = +[VKIconManager sharedManager];
    shieldType2 = [(SpeedLimitView *)self shieldType];
    shieldSize2 = [(SpeedLimitView *)self shieldSize];
    *&v17 = v6;
    v18 = [v14 imageForDataID:shieldType2 text:v3 contentScale:shieldSize2 sizeGroup:v7 modifiers:v17];

    if (v12)
    {
      image = [v12 image];
      [(SpeedLimitView *)self dynamicScale];
      v21 = [UIImage imageWithCGImage:image scale:0 orientation:v6 / v20];
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
      image2 = [v18 image];
      [(SpeedLimitView *)self dynamicScale];
      v32 = [UIImage imageWithCGImage:image2 scale:0 orientation:v6 / v31];
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
    speedLimitImageView = [(SpeedLimitView *)self speedLimitImageView];
    [speedLimitImageView setImage:v34];

    speedLimitImageView2 = [(SpeedLimitView *)self speedLimitImageView];
    [speedLimitImageView2 sizeToFit];

    v37 = sub_100090D58();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      speedLimitImageView3 = [(SpeedLimitView *)self speedLimitImageView];
      image3 = [speedLimitImageView3 image];
      v39 = v12;
      speedLimit = [(SpeedLimitView *)self speedLimit];
      shieldType3 = [(SpeedLimitView *)self shieldType];
      window = [(SpeedLimitView *)self window];
      *buf = 138544130;
      v45 = image3;
      v46 = 2048;
      v47 = speedLimit;
      v12 = v39;
      v48 = 2048;
      v49 = shieldType3;
      v50 = 2114;
      v51 = window;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "Got image %{public}@ for speed limit %lu, shield type %lld, in window %{public}@", buf, 0x2Au);
    }

LABEL_22:
    goto LABEL_23;
  }

  speedLimitImageView4 = [(SpeedLimitView *)self speedLimitImageView];
  image4 = [speedLimitImageView4 image];

  if (image4)
  {
    speedLimitImage = self->_speedLimitImage;
    self->_speedLimitImage = 0;

    dimmedSpeedLimitImage = self->_dimmedSpeedLimitImage;
    self->_dimmedSpeedLimitImage = 0;

    speedLimitImageView5 = [(SpeedLimitView *)self speedLimitImageView];
    [speedLimitImageView5 setImage:0];

    v3 = sub_100090D58();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      speedLimit2 = [(SpeedLimitView *)self speedLimit];
      shieldType4 = [(SpeedLimitView *)self shieldType];
      window2 = [(SpeedLimitView *)self window];
      *buf = 134218498;
      v45 = speedLimit2;
      v46 = 2048;
      v47 = shieldType4;
      v48 = 2114;
      v49 = window2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Removing speed limit %lu, shield type %lld, in window %{public}@", buf, 0x20u);
    }

    goto LABEL_22;
  }

LABEL_23:
  [(SpeedLimitView *)self invalidateIntrinsicContentSize];
}

- (void)setUseNightMode:(BOOL)mode
{
  if (self->_useNightMode != mode)
  {
    self->_useNightMode = mode;
    useNightMode = [(SpeedLimitView *)self useNightMode];
    v6 = &OBJC_IVAR___SpeedLimitView__speedLimitImage;
    if (useNightMode)
    {
      v6 = &OBJC_IVAR___SpeedLimitView__dimmedSpeedLimitImage;
    }

    v7 = *(&self->super.super.super.isa + *v6);
    speedLimitImageView = [(SpeedLimitView *)self speedLimitImageView];
    [speedLimitImageView setImage:v7];

    speedLimitImageView2 = [(SpeedLimitView *)self speedLimitImageView];
    [speedLimitImageView2 sizeToFit];
  }
}

- (void)setSpeedLimit:(unint64_t)limit shieldType:(int64_t)type
{
  if (self->_speedLimit != limit || self->_shieldType != type)
  {
    self->_speedLimit = limit;
    self->_shieldType = type;
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
  speedLimitImageView = [(SpeedLimitView *)self speedLimitImageView];
  [(SpeedLimitView *)self addSubview:speedLimitImageView];

  speedLimitImageView2 = [(SpeedLimitView *)self speedLimitImageView];
  leadingAnchor = [speedLimitImageView2 leadingAnchor];
  leadingAnchor2 = [(SpeedLimitView *)self leadingAnchor];
  v17 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v21[0] = v17;
  speedLimitImageView3 = [(SpeedLimitView *)self speedLimitImageView];
  trailingAnchor = [speedLimitImageView3 trailingAnchor];
  trailingAnchor2 = [(SpeedLimitView *)self trailingAnchor];
  v4 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v21[1] = v4;
  speedLimitImageView4 = [(SpeedLimitView *)self speedLimitImageView];
  topAnchor = [speedLimitImageView4 topAnchor];
  topAnchor2 = [(SpeedLimitView *)self topAnchor];
  v8 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v21[2] = v8;
  speedLimitImageView5 = [(SpeedLimitView *)self speedLimitImageView];
  bottomAnchor = [speedLimitImageView5 bottomAnchor];
  bottomAnchor2 = [(SpeedLimitView *)self bottomAnchor];
  v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v21[3] = v12;
  v13 = [NSArray arrayWithObjects:v21 count:4];
  [NSLayoutConstraint activateConstraints:v13];
}

- (SpeedLimitView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = SpeedLimitView;
  v3 = [(SpeedLimitView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(SpeedLimitView *)v3 _maps_commonInit];
  }

  return v4;
}

- (SpeedLimitView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = SpeedLimitView;
  v3 = [(SpeedLimitView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(SpeedLimitView *)v3 _maps_commonInit];
  }

  return v4;
}

@end