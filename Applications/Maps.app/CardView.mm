@interface CardView
- (CGSize)intrinsicContentSize;
- (CardView)initWithThickBlur;
- (CardViewDelegate)delegate;
- (NSLayoutConstraint)heightConstraint;
- (id)initAllowingBlurred:(BOOL)blurred;
- (id)initAllowingBlurredForButton:(BOOL)button buttonBackgroundType:(unint64_t)type;
- (void)_commonInitWithBlurType:(int64_t)type;
- (void)_setCornerRadiusWithMaskedCorners:(unint64_t)corners cornerRadius:(double)radius;
- (void)didAddSubview:(id)subview;
- (void)layoutSubviews;
- (void)setBlurGroupName:(id)name;
- (void)setCaptureView:(id)view;
- (void)setHeight:(double)height;
- (void)setLayoutStyle:(unint64_t)style;
- (void)setOverriddenIntrinsicHeight:(double)height;
- (void)showShadow:(BOOL)shadow animated:(BOOL)animated;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation CardView

- (CGSize)intrinsicContentSize
{
  [(CardView *)self overriddenIntrinsicHeight];
  if (v3 == 0.0)
  {
    v13.receiver = self;
    v13.super_class = CardView;
    [(CardView *)&v13 intrinsicContentSize];
    v4 = v9;
    v6 = v10;
  }

  else
  {
    v4 = UIViewNoIntrinsicMetric;
    [(CardView *)self overriddenIntrinsicHeight];
    v6 = v5;
    v7 = sub_100E0F500();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v16.width = UIViewNoIntrinsicMetric;
      v16.height = v6;
      v8 = NSStringFromSize(v16);
      *buf = 138412290;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Card view intrinsicContentSize - %@", buf, 0xCu);
    }
  }

  v11 = v4;
  v12 = v6;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)layoutSubviews
{
  v19.receiver = self;
  v19.super_class = CardView;
  [(CardView *)&v19 layoutSubviews];
  [(CardView *)self bounds];
  v20.origin.x = v3;
  v20.origin.y = v4;
  v20.size.width = v5;
  v20.size.height = v6;
  if (!CGRectEqualToRect(self->_savedBounds, v20))
  {
    [(CardView *)self bounds];
    self->_savedBounds.origin.x = v7;
    self->_savedBounds.origin.y = v8;
    self->_savedBounds.size.width = v9;
    self->_savedBounds.size.height = v10;
    [(CardView *)self bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    [(UIView *)self->_shadowView setFrame:?];
    [(CardCustomBorderView *)self->_customBorderView setFrame:v12, v14, v16, v18];
    [(UIView *)self->_backgroundView setFrame:v12, v14, v16, v18];
  }
}

- (CardViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)showShadow:(BOOL)shadow animated:(BOOL)animated
{
  if (shadow)
  {
    if (animated)
    {
      v14 = _NSConcreteStackBlock;
      v15 = 3221225472;
      v16 = sub_100E0F6CC;
      v17 = &unk_101661B18;
      selfCopy = self;
      v4 = &stru_101655878;
      v5 = 0.25;
      v6 = &v14;
LABEL_6:
      [UIView animateWithDuration:v6 animations:v4 completion:v5, v9, v10, v11, v12, selfCopy2, v14, v15, v16, v17, selfCopy];
      return;
    }

    shadowView = self->_shadowView;
    v8 = 1.0;
  }

  else
  {
    if (animated)
    {
      v9 = _NSConcreteStackBlock;
      v10 = 3221225472;
      v11 = sub_100E0F6E4;
      v12 = &unk_101661B18;
      selfCopy2 = self;
      v4 = &stru_101655898;
      v5 = 0.25;
      v6 = &v9;
      goto LABEL_6;
    }

    shadowView = self->_shadowView;
    v8 = 0.0;
  }

  [(UIView *)shadowView setAlpha:v8];
}

- (void)setLayoutStyle:(unint64_t)style
{
  self->_style = style;
  if ([(CardCustomBorderView *)self->_customBorderView cardCustomBorder])
  {
    +[MapsTheme cardCornerRadius];
  }

  else if (sub_10000FA08(self) == 5)
  {
    +[MapsTheme macButtonCornerRadius];
  }

  else
  {
    +[MapsTheme buttonCornerRadius];
  }

  v6 = v5;
  [(CardCustomBorderView *)self->_customBorderView setHidden:1];
  if (style == 7)
  {
    [(CardCustomBorderView *)self->_customBorderView setCardCustomBorder:0];
    v9 = 0.0;
    selfCopy3 = self;
    v8 = 0;
  }

  else
  {
    if (style == 6)
    {
      [(CardCustomBorderView *)self->_customBorderView setCardCustomBorder:2];
      selfCopy3 = self;
      v8 = 15;
    }

    else
    {
      if (style - 2 >= 3)
      {
        v10 = 1;
      }

      else
      {
        v10 = 3;
      }

      [(CardCustomBorderView *)self->_customBorderView setCardCustomBorder:v10];
      selfCopy3 = self;
      v8 = 3;
    }

    v9 = v6;
  }

  [(CardView *)selfCopy3 _setCornerRadiusWithMaskedCorners:v8 cornerRadius:v9];
}

- (void)setHeight:(double)height
{
  if (self->_height != height)
  {
    v5 = sub_100E0F500();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      height = self->_height;
      v8 = 134218240;
      heightCopy = height;
      v10 = 2048;
      heightCopy2 = height;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Card view setHeight from - %f to - %f", &v8, 0x16u);
    }

    self->_height = height;
    heightConstraint = [(CardView *)self heightConstraint];
    [heightConstraint setConstant:height];
  }
}

- (void)_setCornerRadiusWithMaskedCorners:(unint64_t)corners cornerRadius:(double)radius
{
  v6 = self->_backgroundView;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(UIView *)v6 _setCornerRadius:0 continuous:corners maskedCorners:radius];
  }

  else
  {
    [(UIView *)v6 _setCornerRadius:radius];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = CardView;
  [(CardView *)&v9 traitCollectionDidChange:changeCopy];
  if (changeCopy && (v6 = [changeCopy userInterfaceStyle], -[CardView traitCollection](self, "traitCollection"), v3 = objc_claimAutoreleasedReturnValue(), v6 == objc_msgSend(v3, "userInterfaceStyle")))
  {
  }

  else
  {
    traitCollection = [(CardView *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    if (changeCopy)
    {
    }

    if (userInterfaceStyle)
    {
      [(CardView *)self updateTheme];
    }
  }
}

- (void)setCaptureView:(id)view
{
  viewCopy = view;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _captureView = [(UIVisualEffectView *)self->_blurView _captureView];

    if (!_captureView)
    {
      [(UIVisualEffectView *)self->_blurView _setGroupName:self->_blurGroupName];
      [(UIVisualEffectView *)self->_blurView _setCaptureView:viewCopy];
    }
  }
}

- (void)setBlurGroupName:(id)name
{
  nameCopy = name;
  v4 = [nameCopy copy];
  blurGroupName = self->_blurGroupName;
  self->_blurGroupName = v4;

  [(UIVisualEffectView *)self->_blurView _setGroupName:nameCopy];
}

- (void)didAddSubview:(id)subview
{
  subviewCopy = subview;
  NSClassFromString(@"_UIDebugColorBoundsView");
  objc_opt_isKindOfClass();
  v5.receiver = self;
  v5.super_class = CardView;
  [(CardView *)&v5 didAddSubview:subviewCopy];
}

- (void)_commonInitWithBlurType:(int64_t)type
{
  self->_canAddSubviews = 1;
  [(CardView *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = +[UIColor clearColor];
  [(CardView *)self setBackgroundColor:v13];

  v14 = [[CardCustomBorderView alloc] initWithFrame:v6, v8, v10, v12];
  customBorderView = self->_customBorderView;
  self->_customBorderView = v14;

  [(CardCustomBorderView *)self->_customBorderView setButtonCard:self->_buttonCard];
  [(CardView *)self addSubview:self->_customBorderView];
  selfCopy = self;
  typeCopy = type;
  if (!type)
  {
    v18 = [MapsTheme visualEffectViewAllowingBlur:0];
    blurView = selfCopy->_blurView;
    selfCopy->_blurView = v18;

    [(UIVisualEffectView *)selfCopy->_blurView setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(UIVisualEffectView *)selfCopy->_blurView contentView];
    layer = [contentView layer];
    [layer setAllowsGroupOpacity:0];

    contentView2 = [(UIVisualEffectView *)selfCopy->_blurView contentView];
    [contentView2 setClipsToBounds:1];

    [(CardView *)selfCopy addSubview:selfCopy->_blurView];
    objc_storeStrong(&selfCopy->_backgroundView, selfCopy->_blurView);
    contentView3 = [(UIVisualEffectView *)selfCopy->_blurView contentView];
    goto LABEL_6;
  }

  if (self->_buttonCard || (contentView3 = selfCopy, +[UIView _maps_sheetsNeedGlassBackground]))
  {
    contentView3 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [contentView3 setTranslatesAutoresizingMaskIntoConstraints:0];
    [contentView3 setClipsToBounds:1];
    [(CardView *)selfCopy addSubview:contentView3];
    [contentView3 _maps_applyGlassBackgroundForButton:self->_buttonCard buttonBackgroundType:selfCopy->_buttonBackgroundType];
    objc_storeStrong(&selfCopy->_backgroundView, contentView3);
LABEL_6:
  }

  selfCopy2 = self;
  v23 = [UIView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v27 = [v23 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  contentView = selfCopy->_contentView;
  selfCopy->_contentView = v27;

  [(UIView *)selfCopy->_contentView setTranslatesAutoresizingMaskIntoConstraints:0];
  [contentView3 addSubview:selfCopy->_contentView];
  topAnchor = [(UIView *)selfCopy->_contentView topAnchor];
  topAnchor2 = [contentView3 topAnchor];
  v31 = [topAnchor constraintEqualToAnchor:topAnchor2];
  topConstraint = selfCopy->_topConstraint;
  selfCopy->_topConstraint = v31;

  bottomAnchor = [contentView3 bottomAnchor];
  bottomAnchor2 = [(UIView *)selfCopy->_contentView bottomAnchor];
  v35 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  bottomConstraint = selfCopy->_bottomConstraint;
  selfCopy->_bottomConstraint = v35;

  v62[0] = selfCopy->_topConstraint;
  v62[1] = selfCopy->_bottomConstraint;
  leadingAnchor = [(UIView *)selfCopy->_contentView leadingAnchor];
  leadingAnchor2 = [contentView3 leadingAnchor];
  v57 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v62[2] = v57;
  trailingAnchor = [(UIView *)selfCopy->_contentView trailingAnchor];
  trailingAnchor2 = [contentView3 trailingAnchor];
  v54 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v62[3] = v54;
  topAnchor3 = [(CardView *)selfCopy topAnchor];
  topAnchor4 = [contentView3 topAnchor];
  v51 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v62[4] = v51;
  bottomAnchor3 = [(CardView *)selfCopy bottomAnchor];
  bottomAnchor4 = [contentView3 bottomAnchor];
  v37 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v62[5] = v37;
  leadingAnchor3 = [(CardView *)selfCopy leadingAnchor];
  leadingAnchor4 = [contentView3 leadingAnchor];
  v40 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v62[6] = v40;
  trailingAnchor3 = [(CardView *)selfCopy trailingAnchor];
  trailingAnchor4 = [contentView3 trailingAnchor];
  v43 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v62[7] = v43;
  v44 = [NSArray arrayWithObjects:v62 count:8];
  [NSLayoutConstraint activateConstraints:v44];

  if (!typeCopy)
  {
    v45 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    shadowView = selfCopy->_shadowView;
    selfCopy->_shadowView = v45;

    v47 = [UIColor colorWithWhite:0.0 alpha:0.0599999987];
    [(UIView *)selfCopy->_shadowView setBackgroundColor:v47];

    [(UIView *)selfCopy->_shadowView setUserInteractionEnabled:0];
    +[MapsTheme cardCornerRadius];
    [(UIView *)selfCopy->_shadowView _setCornerRadius:?];
    contentView4 = [(CardView *)selfCopy contentView];
    [contentView4 addSubview:selfCopy->_shadowView];

    [(UIView *)selfCopy->_shadowView setAlpha:0.0];
  }

  selfCopy2->_canAddSubviews = 0;
}

- (NSLayoutConstraint)heightConstraint
{
  heightConstraint = self->_heightConstraint;
  if (!heightConstraint)
  {
    heightAnchor = [(UIView *)self->_contentView heightAnchor];
    v5 = [heightAnchor constraintEqualToConstant:self->_height];
    v6 = self->_heightConstraint;
    self->_heightConstraint = v5;

    [(NSLayoutConstraint *)self->_heightConstraint setActive:1];
    heightConstraint = self->_heightConstraint;
  }

  return heightConstraint;
}

- (CardView)initWithThickBlur
{
  v3 = +[UIScreen mainScreen];
  [v3 bounds];
  v6.receiver = self;
  v6.super_class = CardView;
  v4 = [(CardView *)&v6 initWithFrame:?];

  if (v4)
  {
    [(CardView *)v4 _commonInitWithBlurType:2];
  }

  return v4;
}

- (id)initAllowingBlurredForButton:(BOOL)button buttonBackgroundType:(unint64_t)type
{
  buttonCopy = button;
  v7 = +[UIScreen mainScreen];
  [v7 bounds];
  v10.receiver = self;
  v10.super_class = CardView;
  v8 = [(CardView *)&v10 initWithFrame:?];

  if (v8)
  {
    v8->_buttonCard = 1;
    v8->_buttonBackgroundType = type;
    [(CardView *)v8 _commonInitWithBlurType:buttonCopy];
  }

  return v8;
}

- (void)setOverriddenIntrinsicHeight:(double)height
{
  if (self->_overriddenIntrinsicHeight != height)
  {
    v5 = sub_100E0F500();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      overriddenIntrinsicHeight = self->_overriddenIntrinsicHeight;
      v7 = 134218240;
      v8 = overriddenIntrinsicHeight;
      v9 = 2048;
      heightCopy = height;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Cardview setting overidden height from - %f to - %f", &v7, 0x16u);
    }

    self->_overriddenIntrinsicHeight = height;
  }
}

- (id)initAllowingBlurred:(BOOL)blurred
{
  blurredCopy = blurred;
  v5 = +[UIScreen mainScreen];
  [v5 bounds];
  v8.receiver = self;
  v8.super_class = CardView;
  v6 = [(CardView *)&v8 initWithFrame:?];

  if (v6)
  {
    [(CardView *)v6 _commonInitWithBlurType:blurredCopy];
  }

  return v6;
}

@end