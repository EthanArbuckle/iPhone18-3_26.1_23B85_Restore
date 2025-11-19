@interface CardView
- (CGSize)intrinsicContentSize;
- (CardView)initWithThickBlur;
- (CardViewDelegate)delegate;
- (NSLayoutConstraint)heightConstraint;
- (id)initAllowingBlurred:(BOOL)a3;
- (id)initAllowingBlurredForButton:(BOOL)a3 buttonBackgroundType:(unint64_t)a4;
- (void)_commonInitWithBlurType:(int64_t)a3;
- (void)_setCornerRadiusWithMaskedCorners:(unint64_t)a3 cornerRadius:(double)a4;
- (void)didAddSubview:(id)a3;
- (void)layoutSubviews;
- (void)setBlurGroupName:(id)a3;
- (void)setCaptureView:(id)a3;
- (void)setHeight:(double)a3;
- (void)setLayoutStyle:(unint64_t)a3;
- (void)setOverriddenIntrinsicHeight:(double)a3;
- (void)showShadow:(BOOL)a3 animated:(BOOL)a4;
- (void)traitCollectionDidChange:(id)a3;
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

- (void)showShadow:(BOOL)a3 animated:(BOOL)a4
{
  if (a3)
  {
    if (a4)
    {
      v14 = _NSConcreteStackBlock;
      v15 = 3221225472;
      v16 = sub_100E0F6CC;
      v17 = &unk_101661B18;
      v18 = self;
      v4 = &stru_101655878;
      v5 = 0.25;
      v6 = &v14;
LABEL_6:
      [UIView animateWithDuration:v6 animations:v4 completion:v5, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18];
      return;
    }

    shadowView = self->_shadowView;
    v8 = 1.0;
  }

  else
  {
    if (a4)
    {
      v9 = _NSConcreteStackBlock;
      v10 = 3221225472;
      v11 = sub_100E0F6E4;
      v12 = &unk_101661B18;
      v13 = self;
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

- (void)setLayoutStyle:(unint64_t)a3
{
  self->_style = a3;
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
  if (a3 == 7)
  {
    [(CardCustomBorderView *)self->_customBorderView setCardCustomBorder:0];
    v9 = 0.0;
    v7 = self;
    v8 = 0;
  }

  else
  {
    if (a3 == 6)
    {
      [(CardCustomBorderView *)self->_customBorderView setCardCustomBorder:2];
      v7 = self;
      v8 = 15;
    }

    else
    {
      if (a3 - 2 >= 3)
      {
        v10 = 1;
      }

      else
      {
        v10 = 3;
      }

      [(CardCustomBorderView *)self->_customBorderView setCardCustomBorder:v10];
      v7 = self;
      v8 = 3;
    }

    v9 = v6;
  }

  [(CardView *)v7 _setCornerRadiusWithMaskedCorners:v8 cornerRadius:v9];
}

- (void)setHeight:(double)a3
{
  if (self->_height != a3)
  {
    v5 = sub_100E0F500();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      height = self->_height;
      v8 = 134218240;
      v9 = height;
      v10 = 2048;
      v11 = a3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Card view setHeight from - %f to - %f", &v8, 0x16u);
    }

    self->_height = a3;
    v7 = [(CardView *)self heightConstraint];
    [v7 setConstant:a3];
  }
}

- (void)_setCornerRadiusWithMaskedCorners:(unint64_t)a3 cornerRadius:(double)a4
{
  v6 = self->_backgroundView;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(UIView *)v6 _setCornerRadius:0 continuous:a3 maskedCorners:a4];
  }

  else
  {
    [(UIView *)v6 _setCornerRadius:a4];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CardView;
  [(CardView *)&v9 traitCollectionDidChange:v5];
  if (v5 && (v6 = [v5 userInterfaceStyle], -[CardView traitCollection](self, "traitCollection"), v3 = objc_claimAutoreleasedReturnValue(), v6 == objc_msgSend(v3, "userInterfaceStyle")))
  {
  }

  else
  {
    v7 = [(CardView *)self traitCollection];
    v8 = [v7 userInterfaceStyle];

    if (v5)
    {
    }

    if (v8)
    {
      [(CardView *)self updateTheme];
    }
  }
}

- (void)setCaptureView:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(UIVisualEffectView *)self->_blurView _captureView];

    if (!v4)
    {
      [(UIVisualEffectView *)self->_blurView _setGroupName:self->_blurGroupName];
      [(UIVisualEffectView *)self->_blurView _setCaptureView:v5];
    }
  }
}

- (void)setBlurGroupName:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
  blurGroupName = self->_blurGroupName;
  self->_blurGroupName = v4;

  [(UIVisualEffectView *)self->_blurView _setGroupName:v6];
}

- (void)didAddSubview:(id)a3
{
  v4 = a3;
  NSClassFromString(@"_UIDebugColorBoundsView");
  objc_opt_isKindOfClass();
  v5.receiver = self;
  v5.super_class = CardView;
  [(CardView *)&v5 didAddSubview:v4];
}

- (void)_commonInitWithBlurType:(int64_t)a3
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
  v16 = self;
  v60 = a3;
  if (!a3)
  {
    v18 = [MapsTheme visualEffectViewAllowingBlur:0];
    blurView = v16->_blurView;
    v16->_blurView = v18;

    [(UIVisualEffectView *)v16->_blurView setTranslatesAutoresizingMaskIntoConstraints:0];
    v20 = [(UIVisualEffectView *)v16->_blurView contentView];
    v21 = [v20 layer];
    [v21 setAllowsGroupOpacity:0];

    v22 = [(UIVisualEffectView *)v16->_blurView contentView];
    [v22 setClipsToBounds:1];

    [(CardView *)v16 addSubview:v16->_blurView];
    objc_storeStrong(&v16->_backgroundView, v16->_blurView);
    v17 = [(UIVisualEffectView *)v16->_blurView contentView];
    goto LABEL_6;
  }

  if (self->_buttonCard || (v17 = v16, +[UIView _maps_sheetsNeedGlassBackground]))
  {
    v17 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v17 setClipsToBounds:1];
    [(CardView *)v16 addSubview:v17];
    [v17 _maps_applyGlassBackgroundForButton:self->_buttonCard buttonBackgroundType:v16->_buttonBackgroundType];
    objc_storeStrong(&v16->_backgroundView, v17);
LABEL_6:
  }

  v61 = self;
  v23 = [UIView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v27 = [v23 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  contentView = v16->_contentView;
  v16->_contentView = v27;

  [(UIView *)v16->_contentView setTranslatesAutoresizingMaskIntoConstraints:0];
  [v17 addSubview:v16->_contentView];
  v29 = [(UIView *)v16->_contentView topAnchor];
  v30 = [v17 topAnchor];
  v31 = [v29 constraintEqualToAnchor:v30];
  topConstraint = v16->_topConstraint;
  v16->_topConstraint = v31;

  v33 = [v17 bottomAnchor];
  v34 = [(UIView *)v16->_contentView bottomAnchor];
  v35 = [v33 constraintEqualToAnchor:v34];
  bottomConstraint = v16->_bottomConstraint;
  v16->_bottomConstraint = v35;

  v62[0] = v16->_topConstraint;
  v62[1] = v16->_bottomConstraint;
  v59 = [(UIView *)v16->_contentView leadingAnchor];
  v58 = [v17 leadingAnchor];
  v57 = [v59 constraintEqualToAnchor:v58];
  v62[2] = v57;
  v56 = [(UIView *)v16->_contentView trailingAnchor];
  v55 = [v17 trailingAnchor];
  v54 = [v56 constraintEqualToAnchor:v55];
  v62[3] = v54;
  v53 = [(CardView *)v16 topAnchor];
  v52 = [v17 topAnchor];
  v51 = [v53 constraintEqualToAnchor:v52];
  v62[4] = v51;
  v50 = [(CardView *)v16 bottomAnchor];
  v49 = [v17 bottomAnchor];
  v37 = [v50 constraintEqualToAnchor:v49];
  v62[5] = v37;
  v38 = [(CardView *)v16 leadingAnchor];
  v39 = [v17 leadingAnchor];
  v40 = [v38 constraintEqualToAnchor:v39];
  v62[6] = v40;
  v41 = [(CardView *)v16 trailingAnchor];
  v42 = [v17 trailingAnchor];
  v43 = [v41 constraintEqualToAnchor:v42];
  v62[7] = v43;
  v44 = [NSArray arrayWithObjects:v62 count:8];
  [NSLayoutConstraint activateConstraints:v44];

  if (!v60)
  {
    v45 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    shadowView = v16->_shadowView;
    v16->_shadowView = v45;

    v47 = [UIColor colorWithWhite:0.0 alpha:0.0599999987];
    [(UIView *)v16->_shadowView setBackgroundColor:v47];

    [(UIView *)v16->_shadowView setUserInteractionEnabled:0];
    +[MapsTheme cardCornerRadius];
    [(UIView *)v16->_shadowView _setCornerRadius:?];
    v48 = [(CardView *)v16 contentView];
    [v48 addSubview:v16->_shadowView];

    [(UIView *)v16->_shadowView setAlpha:0.0];
  }

  v61->_canAddSubviews = 0;
}

- (NSLayoutConstraint)heightConstraint
{
  heightConstraint = self->_heightConstraint;
  if (!heightConstraint)
  {
    v4 = [(UIView *)self->_contentView heightAnchor];
    v5 = [v4 constraintEqualToConstant:self->_height];
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

- (id)initAllowingBlurredForButton:(BOOL)a3 buttonBackgroundType:(unint64_t)a4
{
  v5 = a3;
  v7 = +[UIScreen mainScreen];
  [v7 bounds];
  v10.receiver = self;
  v10.super_class = CardView;
  v8 = [(CardView *)&v10 initWithFrame:?];

  if (v8)
  {
    v8->_buttonCard = 1;
    v8->_buttonBackgroundType = a4;
    [(CardView *)v8 _commonInitWithBlurType:v5];
  }

  return v8;
}

- (void)setOverriddenIntrinsicHeight:(double)a3
{
  if (self->_overriddenIntrinsicHeight != a3)
  {
    v5 = sub_100E0F500();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      overriddenIntrinsicHeight = self->_overriddenIntrinsicHeight;
      v7 = 134218240;
      v8 = overriddenIntrinsicHeight;
      v9 = 2048;
      v10 = a3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Cardview setting overidden height from - %f to - %f", &v7, 0x16u);
    }

    self->_overriddenIntrinsicHeight = a3;
  }
}

- (id)initAllowingBlurred:(BOOL)a3
{
  v3 = a3;
  v5 = +[UIScreen mainScreen];
  [v5 bounds];
  v8.receiver = self;
  v8.super_class = CardView;
  v6 = [(CardView *)&v8 initWithFrame:?];

  if (v6)
  {
    [(CardView *)v6 _commonInitWithBlurType:v3];
  }

  return v6;
}

@end