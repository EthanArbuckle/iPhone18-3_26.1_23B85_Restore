@interface StatusIndicatorView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (BOOL)showsDisclosure;
- (SEL)action;
- (StatusIndicatorView)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)touchInsets;
- (double)_topPadding;
- (id)_labelFont;
- (id)constraintsForPositionInStatusBarBackgroundView:(id)a3;
- (id)initForLimitedMode:(BOOL)a3;
- (id)initialConstraintsForAnimatingPositionInStatusBarBackgroundView:(id)a3;
- (id)target;
- (void)_updateIndicatorProminenceAnimated:(BOOL)a3;
- (void)_updateIndicatorWithType:(unint64_t)a3 animated:(BOOL)a4;
- (void)didTapStatusIndicatorView;
- (void)layoutSubviews;
- (void)setAction:(SEL)a3;
- (void)setProminent:(BOOL)a3 allowSkip:(BOOL)a4 animated:(BOOL)a5;
- (void)setTarget:(id)a3 action:(SEL)a4;
- (void)setTouched:(BOOL)a3;
- (void)setType:(unint64_t)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateTheme;
- (void)updateWithStatusBarStyle:(int64_t)a3;
@end

@implementation StatusIndicatorView

- (id)_labelFont
{
  if ([(StatusIndicatorView *)self showsDisclosure]&& [(StatusIndicatorView *)self isProminent])
  {
    v3 = &UIFontTextStyleBody;
  }

  else
  {
    v3 = &UIFontTextStyleSubheadline;
  }

  v4 = [UIFont _preferredFontForTextStyle:*v3 weight:UIFontWeightMedium];

  return v4;
}

- (void)updateTheme
{
  v3 = +[UIColor labelColor];
  [(UILabel *)self->_label setTextColor:v3];

  v4 = +[UIColor secondaryLabelColor];
  [(UIImageView *)self->_disclosure setTintColor:v4];
}

- (BOOL)showsDisclosure
{
  type = self->_type;
  if (type > 7 || ((0x60u >> type) & 1) != 0)
  {
    return ![(StatusIndicatorView *)self limitedMode:v2];
  }

  else
  {
    return 0;
  }
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

- (void)setAction:(SEL)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  self->_action = v3;
}

- (SEL)action
{
  if (self->_action)
  {
    return self->_action;
  }

  else
  {
    return 0;
  }
}

- (id)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  if ([(StatusIndicatorView *)self touched:a3])
  {
    [(StatusIndicatorView *)self setTouched:0];
    if (!self->_limitedMode)
    {
      if ([(StatusIndicatorView *)self showsDisclosure])
      {

        [(StatusIndicatorView *)self didTapStatusIndicatorView];
      }
    }
  }
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v5 = a4;
  v6 = [(StatusIndicatorView *)self window];
  v7 = [v5 touchesForWindow:v6];

  v21 = [v7 anyObject];

  v8 = [(StatusIndicatorView *)self cardView];
  [v8 frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  [v21 locationInView:self];
  v23.x = v17;
  v23.y = v18;
  v24.origin.x = v10;
  v24.origin.y = v12;
  v24.size.width = v14;
  v24.size.height = v16;
  v19 = CGRectContainsPoint(v24, v23);
  v20 = [v21 tapCount] == 1 && -[StatusIndicatorView showsDisclosure](self, "showsDisclosure") && self->_touchInitiallyInside && v19;
  [(StatusIndicatorView *)self setTouched:v20];
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v5 = a4;
  v6 = [(StatusIndicatorView *)self window];
  v7 = [v5 touchesForWindow:v6];

  v20 = [v7 anyObject];

  v8 = [(StatusIndicatorView *)self cardView];
  [v8 frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  [v20 locationInView:self];
  v22.x = v17;
  v22.y = v18;
  v23.origin.x = v10;
  v23.origin.y = v12;
  v23.size.width = v14;
  v23.size.height = v16;
  self->_touchInitiallyInside = CGRectContainsPoint(v23, v22);
  v19 = [v20 tapCount] == 1 && -[StatusIndicatorView showsDisclosure](self, "showsDisclosure") && self->_touchInitiallyInside;
  [(StatusIndicatorView *)self setTouched:v19];
}

- (void)setTouched:(BOOL)a3
{
  if (self->_touched != a3)
  {
    self->_touched = a3;
    [(StatusIndicatorView *)self updateTheme];
  }
}

- (void)_updateIndicatorWithType:(unint64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = sub_10001D858();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v12 = "[StatusIndicatorView _updateIndicatorWithType:animated:]";
    v13 = 2048;
    v14 = a3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s type = %lu", buf, 0x16u);
  }

  v8 = !self->_limitedMode && [(StatusIndicatorView *)self showsDisclosure];
  [(StatusIndicatorView *)self setProminent:v8 allowSkip:0 animated:v4];
  [(UIImageView *)self->_disclosure setHidden:v8 ^ 1];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1007D1F80;
  v9[3] = &unk_101661AE0;
  v9[4] = self;
  v10 = v8;
  [UIView performWithoutAnimation:v9];
}

- (void)_updateIndicatorProminenceAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(StatusIndicatorView *)self isProminent];
  v6 = [(StatusIndicatorView *)self showsDisclosure];
  type = self->_type;
  v8 = &stru_1016631F0;
  if (type <= 4)
  {
    switch(type)
    {
      case 2:
        v9 = +[NSBundle mainBundle];
        v10 = v9;
        v11 = @"STATUS_BAR_INDICATOR_NO_INTERNET";
        break;
      case 3:
        v9 = +[NSBundle mainBundle];
        v10 = v9;
        v11 = @"STATUS_BAR_INDICATOR_AIRPLANE_MODE";
        break;
      case 4:
        v9 = +[NSBundle mainBundle];
        v10 = v9;
        v11 = @"STATUS_BAR_INDICATOR_CELLULAR_DATA_OFF";
        break;
      default:
        goto LABEL_17;
    }
  }

  else
  {
    if (type > 6)
    {
      if (type != 7 && type != 8)
      {
        goto LABEL_17;
      }

      v9 = +[NSBundle mainBundle];
      v10 = v9;
      v11 = @"STATUS_BAR_INDICATOR_OFFLINE_MAPS";
      v12 = @"Offline";
      goto LABEL_16;
    }

    if (type == 5)
    {
      v9 = +[NSBundle mainBundle];
      v10 = v9;
      v11 = @"STATUS_BAR_INDICATOR_LOCATION_SERVICES_OFF";
    }

    else
    {
      v9 = +[NSBundle mainBundle];
      v10 = v9;
      v11 = @"Precise Location: Off";
    }
  }

  v12 = 0;
LABEL_16:
  v8 = [v9 localizedStringForKey:v11 value:@"localized string not found" table:v12];

LABEL_17:
  v13 = 32.0;
  if (v5)
  {
    v13 = 48.0;
    v14 = 16.0;
  }

  else
  {
    v14 = 12.0;
  }

  [(NSLayoutConstraint *)self->_cardViewHeightConstraint setConstant:v13];
  [(NSLayoutConstraint *)self->_labelLeadingConstraint setConstant:v14];
  if (v6)
  {
    v15 = -10.0;
    if (v5)
    {
      v15 = -14.0;
      v16 = -4.0;
    }

    else
    {
      v16 = -2.0;
    }

    [(NSLayoutConstraint *)self->_disclosureTrailingConstraint setConstant:v15];
    v17 = &OBJC_IVAR___StatusIndicatorView__labelTrailingConstraintWithDisclosureShown;
  }

  else
  {
    if (v5)
    {
      v16 = -16.0;
    }

    else
    {
      v16 = -12.0;
    }

    v17 = &OBJC_IVAR___StatusIndicatorView__labelTrailingConstraintWithDisclosureHidden;
  }

  [*(&self->super.super.super.super.isa + *v17) setConstant:v16];
  v18 = [(StatusIndicatorView *)self superview];

  if (v18)
  {
    v19 = [(StatusIndicatorView *)self superview];
    v20 = [v19 heightAnchor];
    v21 = [(StatusIndicatorView *)self superview];
    [v21 frame];
    v23 = [v20 constraintEqualToConstant:v22];

    v46 = v23;
    v24 = [NSArray arrayWithObjects:&v46 count:1];
    [NSLayoutConstraint activateConstraints:v24];
  }

  else
  {
    v23 = 0;
  }

  v25 = [(StatusIndicatorView *)self _labelFont];
  v26 = [(UILabel *)self->_label font];
  [v25 pointSize];
  v28 = v27;
  [v26 pointSize];
  v30 = v29;
  [(UILabel *)self->_label setFont:v25];
  v31 = [(UILabel *)self->_label layer];
  [v31 setAnchorPoint:{0.45, 0.5}];

  CGAffineTransformMakeScale(&v45, v30 / v28, v30 / v28);
  label = self->_label;
  v44 = v45;
  [(UILabel *)label setTransform:&v44];
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_1007D2514;
  v42[3] = &unk_101661A90;
  v42[4] = self;
  v33 = v8;
  v43 = v33;
  v34 = objc_retainBlock(v42);
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_1007D25C0;
  v39[3] = &unk_10165EB30;
  v39[4] = self;
  v35 = v33;
  v40 = v35;
  v36 = v23;
  v41 = v36;
  v37 = objc_retainBlock(v39);
  if (v3 && ([(StatusIndicatorView *)self superview], v38 = objc_claimAutoreleasedReturnValue(), v38, v38))
  {
    [UIView animateWithDuration:0 delay:v34 usingSpringWithDamping:v37 initialSpringVelocity:0.449999988 options:0.0 animations:0.666666687 completion:0.0];
  }

  else
  {
    (v34[2])(v34);
    (v37[2])(v37, 1);
  }
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  [(StatusIndicatorView *)self bounds];
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

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = StatusIndicatorView;
  v4 = a3;
  [(MapsThemeView *)&v8 traitCollectionDidChange:v4];
  v5 = [(StatusIndicatorView *)self traitCollection:v8.receiver];
  v6 = [v5 userInterfaceStyle];
  v7 = [v4 userInterfaceStyle];

  if (v6 != v7)
  {
    [(StatusIndicatorView *)self updateTheme];
  }
}

- (void)updateWithStatusBarStyle:(int64_t)a3
{
  if ([(StatusIndicatorView *)self statusBarStyle]!= a3)
  {
    [(StatusIndicatorView *)self setStatusBarStyle:a3];

    [(StatusIndicatorView *)self updateTheme];
  }
}

- (id)initialConstraintsForAnimatingPositionInStatusBarBackgroundView:(id)a3
{
  v4 = a3;
  v18 = [(StatusIndicatorView *)self topAnchor];
  v17 = [v4 safeAreaTopLayoutAnchor];
  [(StatusIndicatorView *)self _topPadding];
  v16 = [v18 constraintEqualToAnchor:v17 constant:?];
  v19[0] = v16;
  v5 = [(StatusIndicatorView *)self bottomAnchor];
  v6 = [v4 safeAreaTopLayoutAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];
  v19[1] = v7;
  v8 = [(StatusIndicatorView *)self leadingAnchor];
  v9 = [v4 leadingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  v19[2] = v10;
  v11 = [(StatusIndicatorView *)self trailingAnchor];
  v12 = [v4 trailingAnchor];

  v13 = [v11 constraintEqualToAnchor:v12];
  v19[3] = v13;
  v14 = [NSArray arrayWithObjects:v19 count:4];

  return v14;
}

- (id)constraintsForPositionInStatusBarBackgroundView:(id)a3
{
  v4 = a3;
  v18 = [(StatusIndicatorView *)self topAnchor];
  v17 = [v4 safeAreaTopLayoutAnchor];
  [(StatusIndicatorView *)self _topPadding];
  v16 = [v18 constraintEqualToAnchor:v17 constant:?];
  v19[0] = v16;
  v5 = [(StatusIndicatorView *)self bottomAnchor];
  v6 = [v4 bottomAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];
  v19[1] = v7;
  v8 = [(StatusIndicatorView *)self leadingAnchor];
  v9 = [v4 leadingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  v19[2] = v10;
  v11 = [(StatusIndicatorView *)self trailingAnchor];
  v12 = [v4 trailingAnchor];

  v13 = [v11 constraintEqualToAnchor:v12];
  v19[3] = v13;
  v14 = [NSArray arrayWithObjects:v19 count:4];

  return v14;
}

- (double)_topPadding
{
  v2 = sub_10000FA08(self);
  result = 0.0;
  if (v2 == 5)
  {
    return 13.0;
  }

  return result;
}

- (void)didTapStatusIndicatorView
{
  WeakRetained = objc_loadWeakRetained(&self->_target);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_target);
    if (self->_action)
    {
      action = self->_action;
    }

    else
    {
      action = 0;
    }

    v7 = v5;
    [v5 performSelector:action withObject:self];
  }
}

- (void)setTarget:(id)a3 action:(SEL)a4
{
  objc_storeWeak(&self->_target, a3);
  if (a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = 0;
  }

  self->_action = v6;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = StatusIndicatorView;
  [(StatusIndicatorView *)&v4 layoutSubviews];
  cardView = self->_cardView;
  [(CardView *)cardView bounds];
  [(CardView *)cardView setCornerRadius:CGRectGetHeight(v5) * 0.5];
}

- (void)setType:(unint64_t)a3
{
  if (self->_type != a3)
  {
    self->_type = a3;
    [StatusIndicatorView _updateIndicatorWithType:"_updateIndicatorWithType:animated:" animated:?];
  }
}

- (void)setProminent:(BOOL)a3 allowSkip:(BOOL)a4 animated:(BOOL)a5
{
  v5 = a5;
  if (a3)
  {
    if (self->_limitedMode)
    {
      return;
    }

    self->_prominent = 1;
    v7 = +[NSDate date];
    dateBecameProminent = self->_dateBecameProminent;
    self->_dateBecameProminent = v7;

    v9 = sub_10001D858();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_17;
    }

    v18 = 136315138;
    v19 = "[StatusIndicatorView setProminent:allowSkip:animated:]";
    v10 = "%s became prominent";
    goto LABEL_16;
  }

  v12 = self->_dateBecameProminent;
  if (v12 || !a4)
  {
    [(NSDate *)v12 timeIntervalSinceNow];
    v14 = v13;
    [(NSDate *)self->_dateBecameProminent timeIntervalSinceNow];
    if (v14 < 0.0)
    {
      v15 = -v15;
    }

    if (v15 > 5.0 || !a4)
    {
      self->_prominent = 0;
      v17 = self->_dateBecameProminent;
      self->_dateBecameProminent = 0;

      v9 = sub_10001D858();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
LABEL_17:

        [(StatusIndicatorView *)self _updateIndicatorProminenceAnimated:v5];
        return;
      }

      v18 = 136315138;
      v19 = "[StatusIndicatorView setProminent:allowSkip:animated:]";
      v10 = "%s resign prominent";
LABEL_16:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, v10, &v18, 0xCu);
      goto LABEL_17;
    }

    v16 = sub_10001D858();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v18 = 136315138;
      v19 = "[StatusIndicatorView setProminent:allowSkip:animated:]";
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%s skip resign prominent", &v18, 0xCu);
    }
  }
}

- (StatusIndicatorView)initWithFrame:(CGRect)a3
{
  v58.receiver = self;
  v58.super_class = StatusIndicatorView;
  v3 = [(StatusIndicatorView *)&v58 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    [v3 setAccessibilityIdentifier:v5];

    v6 = [[CardView alloc] initAllowingBlurredForButton:1 buttonBackgroundType:0];
    v7 = *(v3 + 3);
    *(v3 + 3) = v6;

    [*(v3 + 3) setTranslatesAutoresizingMaskIntoConstraints:0];
    [*(v3 + 3) setAccessibilityIdentifier:@"StatusIndicatorContent"];
    [v3 addSubview:*(v3 + 3)];
    v8 = [*(v3 + 3) contentView];
    v9 = objc_alloc_init(UILabel);
    v10 = *(v3 + 4);
    *(v3 + 4) = v9;

    [*(v3 + 4) setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = [v3 _labelFont];
    [*(v3 + 4) setFont:v11];

    [*(v3 + 4) setNumberOfLines:1];
    [*(v3 + 4) setAccessibilityIdentifier:@"StatusIndicatorLabel"];
    [v8 addSubview:*(v3 + 4)];
    v12 = objc_alloc_init(UIImageView);
    v13 = *(v3 + 5);
    *(v3 + 5) = v12;

    [*(v3 + 5) setHidden:1];
    [*(v3 + 5) setTranslatesAutoresizingMaskIntoConstraints:0];
    [*(v3 + 5) setAccessibilityIdentifier:@"StatusIndicatorDisclosure"];
    v14 = [UIImageSymbolConfiguration configurationWithPointSize:6 weight:2 scale:12.0];
    [*(v3 + 5) setPreferredSymbolConfiguration:v14];

    v15 = [UIImage systemImageNamed:@"chevron.forward"];
    [*(v3 + 5) setImage:v15];

    [v8 addSubview:*(v3 + 5)];
    __asm { FMOV            V0.2D, #-8.0 }

    *(v3 + 120) = _Q0;
    *(v3 + 136) = _Q0;
    v21 = [*(v3 + 3) heightAnchor];
    v22 = [v21 constraintEqualToConstant:48.0];
    v23 = *(v3 + 11);
    *(v3 + 11) = v22;

    v24 = [*(v3 + 4) leadingAnchor];
    v25 = [v8 leadingAnchor];
    v26 = [v24 constraintEqualToAnchor:v25 constant:12.0];
    v27 = *(v3 + 7);
    *(v3 + 7) = v26;

    v28 = [*(v3 + 4) trailingAnchor];
    v29 = [v8 trailingAnchor];
    v30 = [v28 constraintEqualToAnchor:v29 constant:-12.0];
    v31 = *(v3 + 9);
    *(v3 + 9) = v30;

    v32 = [*(v3 + 4) trailingAnchor];
    v33 = [*(v3 + 5) leadingAnchor];
    v34 = [v32 constraintEqualToAnchor:v33 constant:-2.0];
    v35 = *(v3 + 10);
    *(v3 + 10) = v34;

    v36 = [*(v3 + 5) trailingAnchor];
    v37 = [v8 trailingAnchor];
    v38 = [v36 constraintEqualToAnchor:v37 constant:-10.0];
    v39 = *(v3 + 8);
    *(v3 + 8) = v38;

    v59[0] = *(v3 + 11);
    v59[1] = *(v3 + 7);
    v57 = [*(v3 + 4) centerYAnchor];
    v56 = [*(v3 + 3) centerYAnchor];
    v55 = [v57 constraintEqualToAnchor:v56];
    v59[2] = v55;
    v54 = [*(v3 + 5) centerYAnchor];
    v53 = [*(v3 + 4) centerYAnchor];
    v52 = [v54 constraintEqualToAnchor:v53];
    v59[3] = v52;
    v59[4] = *(v3 + 8);
    v50 = [v8 topAnchor];
    v40 = [v3 topAnchor];
    v41 = [v50 constraintEqualToAnchor:v40];
    v59[5] = v41;
    v51 = v8;
    v42 = [v8 bottomAnchor];
    v43 = [v3 bottomAnchor];
    v44 = [v42 constraintEqualToAnchor:v43];
    v59[6] = v44;
    v45 = [v8 centerXAnchor];
    v46 = [v3 centerXAnchor];
    v47 = [v45 constraintEqualToAnchor:v46];
    v59[7] = v47;
    v48 = [NSArray arrayWithObjects:v59 count:8];
    [NSLayoutConstraint activateConstraints:v48];
  }

  return v3;
}

- (id)initForLimitedMode:(BOOL)a3
{
  result = [(StatusIndicatorView *)self initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  if (result)
  {
    *(result + 9) = a3;
  }

  return result;
}

@end