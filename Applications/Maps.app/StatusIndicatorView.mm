@interface StatusIndicatorView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (BOOL)showsDisclosure;
- (SEL)action;
- (StatusIndicatorView)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)touchInsets;
- (double)_topPadding;
- (id)_labelFont;
- (id)constraintsForPositionInStatusBarBackgroundView:(id)view;
- (id)initForLimitedMode:(BOOL)mode;
- (id)initialConstraintsForAnimatingPositionInStatusBarBackgroundView:(id)view;
- (id)target;
- (void)_updateIndicatorProminenceAnimated:(BOOL)animated;
- (void)_updateIndicatorWithType:(unint64_t)type animated:(BOOL)animated;
- (void)didTapStatusIndicatorView;
- (void)layoutSubviews;
- (void)setAction:(SEL)action;
- (void)setProminent:(BOOL)prominent allowSkip:(BOOL)skip animated:(BOOL)animated;
- (void)setTarget:(id)target action:(SEL)action;
- (void)setTouched:(BOOL)touched;
- (void)setType:(unint64_t)type;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
- (void)traitCollectionDidChange:(id)change;
- (void)updateTheme;
- (void)updateWithStatusBarStyle:(int64_t)style;
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

- (void)setAction:(SEL)action
{
  if (action)
  {
    actionCopy = action;
  }

  else
  {
    actionCopy = 0;
  }

  self->_action = actionCopy;
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

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  if ([(StatusIndicatorView *)self touched:ended])
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

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  eventCopy = event;
  window = [(StatusIndicatorView *)self window];
  v7 = [eventCopy touchesForWindow:window];

  anyObject = [v7 anyObject];

  cardView = [(StatusIndicatorView *)self cardView];
  [cardView frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  [anyObject locationInView:self];
  v23.x = v17;
  v23.y = v18;
  v24.origin.x = v10;
  v24.origin.y = v12;
  v24.size.width = v14;
  v24.size.height = v16;
  v19 = CGRectContainsPoint(v24, v23);
  v20 = [anyObject tapCount] == 1 && -[StatusIndicatorView showsDisclosure](self, "showsDisclosure") && self->_touchInitiallyInside && v19;
  [(StatusIndicatorView *)self setTouched:v20];
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  eventCopy = event;
  window = [(StatusIndicatorView *)self window];
  v7 = [eventCopy touchesForWindow:window];

  anyObject = [v7 anyObject];

  cardView = [(StatusIndicatorView *)self cardView];
  [cardView frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  [anyObject locationInView:self];
  v22.x = v17;
  v22.y = v18;
  v23.origin.x = v10;
  v23.origin.y = v12;
  v23.size.width = v14;
  v23.size.height = v16;
  self->_touchInitiallyInside = CGRectContainsPoint(v23, v22);
  v19 = [anyObject tapCount] == 1 && -[StatusIndicatorView showsDisclosure](self, "showsDisclosure") && self->_touchInitiallyInside;
  [(StatusIndicatorView *)self setTouched:v19];
}

- (void)setTouched:(BOOL)touched
{
  if (self->_touched != touched)
  {
    self->_touched = touched;
    [(StatusIndicatorView *)self updateTheme];
  }
}

- (void)_updateIndicatorWithType:(unint64_t)type animated:(BOOL)animated
{
  animatedCopy = animated;
  v7 = sub_10001D858();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v12 = "[StatusIndicatorView _updateIndicatorWithType:animated:]";
    v13 = 2048;
    typeCopy = type;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s type = %lu", buf, 0x16u);
  }

  v8 = !self->_limitedMode && [(StatusIndicatorView *)self showsDisclosure];
  [(StatusIndicatorView *)self setProminent:v8 allowSkip:0 animated:animatedCopy];
  [(UIImageView *)self->_disclosure setHidden:v8 ^ 1];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1007D1F80;
  v9[3] = &unk_101661AE0;
  v9[4] = self;
  v10 = v8;
  [UIView performWithoutAnimation:v9];
}

- (void)_updateIndicatorProminenceAnimated:(BOOL)animated
{
  animatedCopy = animated;
  isProminent = [(StatusIndicatorView *)self isProminent];
  showsDisclosure = [(StatusIndicatorView *)self showsDisclosure];
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
  if (isProminent)
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
  if (showsDisclosure)
  {
    v15 = -10.0;
    if (isProminent)
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
    if (isProminent)
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
  superview = [(StatusIndicatorView *)self superview];

  if (superview)
  {
    superview2 = [(StatusIndicatorView *)self superview];
    heightAnchor = [superview2 heightAnchor];
    superview3 = [(StatusIndicatorView *)self superview];
    [superview3 frame];
    v23 = [heightAnchor constraintEqualToConstant:v22];

    v46 = v23;
    v24 = [NSArray arrayWithObjects:&v46 count:1];
    [NSLayoutConstraint activateConstraints:v24];
  }

  else
  {
    v23 = 0;
  }

  _labelFont = [(StatusIndicatorView *)self _labelFont];
  font = [(UILabel *)self->_label font];
  [_labelFont pointSize];
  v28 = v27;
  [font pointSize];
  v30 = v29;
  [(UILabel *)self->_label setFont:_labelFont];
  layer = [(UILabel *)self->_label layer];
  [layer setAnchorPoint:{0.45, 0.5}];

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
  if (animatedCopy && ([(StatusIndicatorView *)self superview], v38 = objc_claimAutoreleasedReturnValue(), v38, v38))
  {
    [UIView animateWithDuration:0 delay:v34 usingSpringWithDamping:v37 initialSpringVelocity:0.449999988 options:0.0 animations:0.666666687 completion:0.0];
  }

  else
  {
    (v34[2])(v34);
    (v37[2])(v37, 1);
  }
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
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

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = StatusIndicatorView;
  changeCopy = change;
  [(MapsThemeView *)&v8 traitCollectionDidChange:changeCopy];
  v5 = [(StatusIndicatorView *)self traitCollection:v8.receiver];
  userInterfaceStyle = [v5 userInterfaceStyle];
  userInterfaceStyle2 = [changeCopy userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    [(StatusIndicatorView *)self updateTheme];
  }
}

- (void)updateWithStatusBarStyle:(int64_t)style
{
  if ([(StatusIndicatorView *)self statusBarStyle]!= style)
  {
    [(StatusIndicatorView *)self setStatusBarStyle:style];

    [(StatusIndicatorView *)self updateTheme];
  }
}

- (id)initialConstraintsForAnimatingPositionInStatusBarBackgroundView:(id)view
{
  viewCopy = view;
  topAnchor = [(StatusIndicatorView *)self topAnchor];
  safeAreaTopLayoutAnchor = [viewCopy safeAreaTopLayoutAnchor];
  [(StatusIndicatorView *)self _topPadding];
  v16 = [topAnchor constraintEqualToAnchor:safeAreaTopLayoutAnchor constant:?];
  v19[0] = v16;
  bottomAnchor = [(StatusIndicatorView *)self bottomAnchor];
  safeAreaTopLayoutAnchor2 = [viewCopy safeAreaTopLayoutAnchor];
  v7 = [bottomAnchor constraintEqualToAnchor:safeAreaTopLayoutAnchor2];
  v19[1] = v7;
  leadingAnchor = [(StatusIndicatorView *)self leadingAnchor];
  leadingAnchor2 = [viewCopy leadingAnchor];
  v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v19[2] = v10;
  trailingAnchor = [(StatusIndicatorView *)self trailingAnchor];
  trailingAnchor2 = [viewCopy trailingAnchor];

  v13 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v19[3] = v13;
  v14 = [NSArray arrayWithObjects:v19 count:4];

  return v14;
}

- (id)constraintsForPositionInStatusBarBackgroundView:(id)view
{
  viewCopy = view;
  topAnchor = [(StatusIndicatorView *)self topAnchor];
  safeAreaTopLayoutAnchor = [viewCopy safeAreaTopLayoutAnchor];
  [(StatusIndicatorView *)self _topPadding];
  v16 = [topAnchor constraintEqualToAnchor:safeAreaTopLayoutAnchor constant:?];
  v19[0] = v16;
  bottomAnchor = [(StatusIndicatorView *)self bottomAnchor];
  bottomAnchor2 = [viewCopy bottomAnchor];
  v7 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v19[1] = v7;
  leadingAnchor = [(StatusIndicatorView *)self leadingAnchor];
  leadingAnchor2 = [viewCopy leadingAnchor];
  v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v19[2] = v10;
  trailingAnchor = [(StatusIndicatorView *)self trailingAnchor];
  trailingAnchor2 = [viewCopy trailingAnchor];

  v13 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
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

- (void)setTarget:(id)target action:(SEL)action
{
  objc_storeWeak(&self->_target, target);
  if (action)
  {
    actionCopy = action;
  }

  else
  {
    actionCopy = 0;
  }

  self->_action = actionCopy;
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

- (void)setType:(unint64_t)type
{
  if (self->_type != type)
  {
    self->_type = type;
    [StatusIndicatorView _updateIndicatorWithType:"_updateIndicatorWithType:animated:" animated:?];
  }
}

- (void)setProminent:(BOOL)prominent allowSkip:(BOOL)skip animated:(BOOL)animated
{
  animatedCopy = animated;
  if (prominent)
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
  if (v12 || !skip)
  {
    [(NSDate *)v12 timeIntervalSinceNow];
    v14 = v13;
    [(NSDate *)self->_dateBecameProminent timeIntervalSinceNow];
    if (v14 < 0.0)
    {
      v15 = -v15;
    }

    if (v15 > 5.0 || !skip)
    {
      self->_prominent = 0;
      v17 = self->_dateBecameProminent;
      self->_dateBecameProminent = 0;

      v9 = sub_10001D858();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
LABEL_17:

        [(StatusIndicatorView *)self _updateIndicatorProminenceAnimated:animatedCopy];
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

- (StatusIndicatorView)initWithFrame:(CGRect)frame
{
  v58.receiver = self;
  v58.super_class = StatusIndicatorView;
  v3 = [(StatusIndicatorView *)&v58 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    contentView = [*(v3 + 3) contentView];
    v9 = objc_alloc_init(UILabel);
    v10 = *(v3 + 4);
    *(v3 + 4) = v9;

    [*(v3 + 4) setTranslatesAutoresizingMaskIntoConstraints:0];
    _labelFont = [v3 _labelFont];
    [*(v3 + 4) setFont:_labelFont];

    [*(v3 + 4) setNumberOfLines:1];
    [*(v3 + 4) setAccessibilityIdentifier:@"StatusIndicatorLabel"];
    [contentView addSubview:*(v3 + 4)];
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

    [contentView addSubview:*(v3 + 5)];
    __asm { FMOV            V0.2D, #-8.0 }

    *(v3 + 120) = _Q0;
    *(v3 + 136) = _Q0;
    heightAnchor = [*(v3 + 3) heightAnchor];
    v22 = [heightAnchor constraintEqualToConstant:48.0];
    v23 = *(v3 + 11);
    *(v3 + 11) = v22;

    leadingAnchor = [*(v3 + 4) leadingAnchor];
    leadingAnchor2 = [contentView leadingAnchor];
    v26 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:12.0];
    v27 = *(v3 + 7);
    *(v3 + 7) = v26;

    trailingAnchor = [*(v3 + 4) trailingAnchor];
    trailingAnchor2 = [contentView trailingAnchor];
    v30 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-12.0];
    v31 = *(v3 + 9);
    *(v3 + 9) = v30;

    trailingAnchor3 = [*(v3 + 4) trailingAnchor];
    leadingAnchor3 = [*(v3 + 5) leadingAnchor];
    v34 = [trailingAnchor3 constraintEqualToAnchor:leadingAnchor3 constant:-2.0];
    v35 = *(v3 + 10);
    *(v3 + 10) = v34;

    trailingAnchor4 = [*(v3 + 5) trailingAnchor];
    trailingAnchor5 = [contentView trailingAnchor];
    v38 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5 constant:-10.0];
    v39 = *(v3 + 8);
    *(v3 + 8) = v38;

    v59[0] = *(v3 + 11);
    v59[1] = *(v3 + 7);
    centerYAnchor = [*(v3 + 4) centerYAnchor];
    centerYAnchor2 = [*(v3 + 3) centerYAnchor];
    v55 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v59[2] = v55;
    centerYAnchor3 = [*(v3 + 5) centerYAnchor];
    centerYAnchor4 = [*(v3 + 4) centerYAnchor];
    v52 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v59[3] = v52;
    v59[4] = *(v3 + 8);
    topAnchor = [contentView topAnchor];
    topAnchor2 = [v3 topAnchor];
    v41 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v59[5] = v41;
    v51 = contentView;
    bottomAnchor = [contentView bottomAnchor];
    bottomAnchor2 = [v3 bottomAnchor];
    v44 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v59[6] = v44;
    centerXAnchor = [contentView centerXAnchor];
    centerXAnchor2 = [v3 centerXAnchor];
    v47 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v59[7] = v47;
    v48 = [NSArray arrayWithObjects:v59 count:8];
    [NSLayoutConstraint activateConstraints:v48];
  }

  return v3;
}

- (id)initForLimitedMode:(BOOL)mode
{
  result = [(StatusIndicatorView *)self initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  if (result)
  {
    *(result + 9) = mode;
  }

  return result;
}

@end