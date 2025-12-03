@interface CarDynamicBlurView
+ (BOOL)_isGlassDisabled;
- (CarDynamicBlurView)initWithBlurViewContext:(int64_t)context delegate:(id)delegate;
- (int64_t)correctedUserInterfaceStyle;
- (void)_changeVisualEffect;
- (void)_createContentView;
- (void)_recalculateBlurModeWithInterfaceStyle:(int64_t)style;
- (void)_redraw;
- (void)_setCornerRadius:(double)radius continuous:(BOOL)continuous maskedCorners:(unint64_t)corners;
- (void)_setDisabled:(BOOL)disabled;
- (void)_updateCornerValues;
- (void)_updateOverrideUserInterfaceStyle;
- (void)dealloc;
- (void)didAddSubview:(id)subview;
- (void)didMoveToSuperview;
- (void)didMoveToWindow;
- (void)lightLevelController:(id)controller didUpdateLightLevel:(int64_t)level;
- (void)registerAdditionalDelegate:(id)delegate;
- (void)setCurrentMode:(int64_t)mode;
- (void)setDisabled:(BOOL)disabled;
- (void)traitCollectionDidChange:(id)change;
- (void)unregisterAdditionalDelegate:(id)delegate;
@end

@implementation CarDynamicBlurView

- (void)_redraw
{
  correctedUserInterfaceStyle = [(CarDynamicBlurView *)self correctedUserInterfaceStyle];

  [(CarDynamicBlurView *)self _recalculateBlurModeWithInterfaceStyle:correctedUserInterfaceStyle];
}

- (int64_t)correctedUserInterfaceStyle
{
  if (!self->_visualEffectView && (self->_shouldUseNightMode || self->_context == 1))
  {
    v4 = sub_100C6C0F4();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      traitCollection = [(CarDynamicBlurView *)self traitCollection];
      userInterfaceStyle = [traitCollection userInterfaceStyle];
      if (userInterfaceStyle >= 3)
      {
        v12 = [NSString stringWithFormat:@"<Unknown %ld>", userInterfaceStyle];
      }

      else
      {
        v12 = *(&off_10164F3D8 + userInterfaceStyle);
      }

      shouldUseNightMode = self->_shouldUseNightMode;
      context = self->_context;
      *buf = 134349826;
      selfCopy3 = self;
      v25 = 2112;
      v26 = v12;
      v27 = 1024;
      v28 = shouldUseNightMode;
      v29 = 2048;
      v30 = context;
      v19 = "[%{public}p] Corrected user interface style from self: %@, shouldUseNightMode: %d, context: %ld";
      v20 = v4;
      v21 = 38;
LABEL_21:
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, v19, buf, v21);

      goto LABEL_22;
    }

    goto LABEL_22;
  }

  superview = [(CarDynamicBlurView *)self superview];

  v4 = sub_100C6C0F4();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (!superview)
  {
    if (v5)
    {
      traitCollection = [(CarDynamicBlurView *)self traitCollection];
      userInterfaceStyle2 = [traitCollection userInterfaceStyle];
      if (userInterfaceStyle2 >= 3)
      {
        v12 = [NSString stringWithFormat:@"<Unknown %ld>", userInterfaceStyle2];
      }

      else
      {
        v12 = *(&off_10164F3D8 + userInterfaceStyle2);
      }

      *buf = 134349314;
      selfCopy3 = self;
      v25 = 2112;
      v26 = v12;
      v19 = "[%{public}p] Corrected user interface style from self: %@";
      v20 = v4;
      v21 = 22;
      goto LABEL_21;
    }

LABEL_22:

    traitCollection2 = [(CarDynamicBlurView *)self traitCollection];
    userInterfaceStyle3 = [traitCollection2 userInterfaceStyle];
    goto LABEL_23;
  }

  if (v5)
  {
    superview2 = [(CarDynamicBlurView *)self superview];
    traitCollection3 = [superview2 traitCollection];
    userInterfaceStyle4 = [traitCollection3 userInterfaceStyle];
    if (userInterfaceStyle4 >= 3)
    {
      v9 = [NSString stringWithFormat:@"<Unknown %ld>", userInterfaceStyle4];
    }

    else
    {
      v9 = *(&off_10164F3D8 + userInterfaceStyle4);
    }

    *buf = 134349314;
    selfCopy3 = self;
    v25 = 2112;
    v26 = v9;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] Corrected user interface style from superview: %@", buf, 0x16u);
  }

  traitCollection2 = [(CarDynamicBlurView *)self superview];
  v14TraitCollection = [traitCollection2 traitCollection];
  userInterfaceStyle3 = [v14TraitCollection userInterfaceStyle];

LABEL_23:
  return userInterfaceStyle3;
}

- (void)_changeVisualEffect
{
  v3 = sub_100089008();
  if (!os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    goto LABEL_14;
  }

  selfCopy = self;
  if (!selfCopy)
  {
    selfCopy = @"<nil>";
    goto LABEL_10;
  }

  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  if (objc_opt_respondsToSelector())
  {
    v7 = [(CarDynamicBlurView *)selfCopy performSelector:"accessibilityIdentifier"];
    v8 = v7;
    if (v7 && ![v7 isEqualToString:v6])
    {
      selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v6, selfCopy, v8];

      goto LABEL_8;
    }
  }

  selfCopy = [NSString stringWithFormat:@"%@<%p>", v6, selfCopy];
LABEL_8:

LABEL_10:
  v10 = selfCopy;
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  currentMode = selfCopy->_currentMode;
  if (currentMode >= 4)
  {
    v14 = [NSString stringWithFormat:@"(unknown: %ld)", selfCopy->_currentMode];
  }

  else
  {
    v14 = *(&off_10164F3F0 + currentMode);
  }

  *buf = 138544130;
  *&buf[4] = v10;
  *&buf[12] = 2112;
  *&buf[14] = v12;
  *&buf[22] = 2048;
  v49 = selfCopy;
  v50 = 2112;
  v51 = v14;
  _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] %@ (%p) effect changed to %@", buf, 0x2Au);

LABEL_14:
  if (+[CarDynamicBlurView _isGlassDisabled])
  {
    v15 = self->_currentMode;
    switch(v15)
    {
      case 3:
        v30 = [UIColorEffect colorEffectSaturate:0.800000012];
        v31 = [UIBlurEffect effectWithBlurRadius:30.0];
        v32 = +[CarVisualEffectView isDisablingBlur];
        v33 = 1.0;
        if (!v32)
        {
          v33 = 0.939999998;
        }

        v34 = [UIColor colorWithWhite:0.109803922 alpha:v33];
        v35 = [UIVisualEffect effectCompositingColor:v34];

        *buf = v31;
        *&buf[8] = v30;
        *&buf[16] = v35;
        v36 = [NSArray arrayWithObjects:buf count:3];
        v28 = [UIVisualEffect effectCombiningEffects:v36];

        break;
      case 2:
        if (!+[CarVisualEffectView isDisablingBlur])
        {
          v37 = [UIBlurEffect effectWithStyle:18];
LABEL_40:
          v28 = v37;
          goto LABEL_41;
        }

        v30 = [UIColor colorWithRed:0.266666681 green:0.298039228 blue:0.313725501 alpha:1.0];
        v28 = [UIVisualEffect effectCompositingColor:v30];
        break;
      case 1:
LABEL_39:
        v37 = sub_1000882C4();
        goto LABEL_40;
      default:
        v16 = sub_100089008();
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
LABEL_38:

          goto LABEL_39;
        }

        selfCopy2 = self;
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        if (objc_opt_respondsToSelector())
        {
          v20 = [(CarDynamicBlurView *)selfCopy2 performSelector:"accessibilityIdentifier"];
          v21 = v20;
          if (v20 && ![v20 isEqualToString:v19])
          {
            selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v19, selfCopy2, v21];

            goto LABEL_24;
          }
        }

        selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v19, selfCopy2];
LABEL_24:

        v23 = selfCopy2;
        v24 = self->_currentMode;
        if (v24 >= 4)
        {
          v25 = [NSString stringWithFormat:@"(unknown: %ld)", self->_currentMode];
        }

        else
        {
          v25 = *(&off_10164F3F0 + v24);
        }

        *buf = 138543618;
        *&buf[4] = v23;
        *&buf[12] = 2112;
        *&buf[14] = v25;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "[%{public}@] _blurEffectForMode called with invalid mode %@", buf, 0x16u);

        goto LABEL_38;
    }

LABEL_41:
    [(CarVisualEffectView *)self->_visualEffectView removeFromSuperview];
    v38 = [[CarVisualEffectView alloc] initWithEffect:v28];
    visualEffectView = self->_visualEffectView;
    self->_visualEffectView = v38;

    [(CarVisualEffectView *)self->_visualEffectView setTranslatesAutoresizingMaskIntoConstraints:0];
    v40 = self->_currentMode;
    if (v40 >= 4)
    {
      v41 = [NSString stringWithFormat:@"(unknown: %ld)", self->_currentMode];
    }

    else
    {
      v41 = *(&off_10164F3F0 + v40);
    }

    [(CarVisualEffectView *)self->_visualEffectView _setGroupName:v41];

    contentView = [(CarVisualEffectView *)self->_visualEffectView contentView];
    [contentView setClipsToBounds:1];

    contentView2 = [(CarVisualEffectView *)self->_visualEffectView contentView];
    [contentView2 addSubview:self->_contentView];

    [(CarDynamicBlurView *)self _updateCornerValues];
    [(CarDynamicBlurView *)self addSubview:self->_visualEffectView];
    allConstraints = +[NSMutableArray array];
    v44 = [(CarVisualEffectView *)self->_visualEffectView _maps_constraintsForCenteringInView:self];
    [allConstraints addObjectsFromArray:v44];

    contentView = self->_contentView;
    contentView3 = [(CarVisualEffectView *)self->_visualEffectView contentView];
    v47 = [(UIView *)contentView _maps_constraintsForCenteringInView:contentView3];
    [allConstraints addObjectsFromArray:v47];

    goto LABEL_45;
  }

  [(CarDynamicBlurView *)self _maps_applyGlassBackgroundForButton:self->_context == 2 buttonBackgroundType:0 allowAdaptive:0 isCarPlay:1];
  [(CarDynamicBlurView *)self _updateCornerValues];
  superview = [(UIView *)self->_contentView superview];

  if (superview == self)
  {
    return;
  }

  [(CarDynamicBlurView *)self addSubview:self->_contentView];
  LODWORD(v27) = 1148846080;
  v28 = [(UIView *)self->_contentView _maps_constraintsEqualToEdgesOfView:self priority:v27];
  allConstraints = [v28 allConstraints];
LABEL_45:
  [NSLayoutConstraint activateConstraints:allConstraints];
}

- (void)_updateCornerValues
{
  if (self->_hasCornerValues)
  {
    visualEffectView = self->_visualEffectView;
    if (visualEffectView)
    {
      cornerRadius = self->_cornerRadius;
      continuous = self->_continuous;
      maskedCorners = self->_maskedCorners;

      [(CarVisualEffectView *)visualEffectView _setCornerRadius:continuous continuous:maskedCorners maskedCorners:cornerRadius];
    }

    else
    {
      [(CarDynamicBlurView *)self setClipsToBounds:1];
      v7 = self->_cornerRadius;
      layer = [(CarDynamicBlurView *)self layer];
      [layer setCornerRadius:v7];

      if (self->_continuous)
      {
        v9 = &kCACornerCurveContinuous;
      }

      else
      {
        v9 = &kCACornerCurveCircular;
      }

      v10 = *v9;
      layer2 = [(CarDynamicBlurView *)self layer];
      [layer2 setCornerCurve:v10];

      v12 = self->_maskedCorners;
      layer3 = [(CarDynamicBlurView *)self layer];
      [layer3 setMaskedCorners:v12];
    }
  }
}

- (void)_updateOverrideUserInterfaceStyle
{
  if (!self->_visualEffectView && (self->_shouldUseNightMode || self->_context == 1))
  {
    v3 = sub_100C6C0F4();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v5 = 134349056;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Overriding user interface style to .Dark", &v5, 0xCu);
    }

    v4 = 2;
  }

  else
  {
    v3 = sub_100C6C0F4();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v5 = 134349056;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Overriding user interface style to .Unspecified", &v5, 0xCu);
    }

    v4 = 0;
  }

  [(CarDynamicBlurView *)self setOverrideUserInterfaceStyle:v4];
}

- (void)_createContentView
{
  v3 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  contentView = self->_contentView;
  self->_contentView = v3;

  v5 = self->_contentView;

  [(UIView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (void)didMoveToWindow
{
  v6.receiver = self;
  v6.super_class = CarDynamicBlurView;
  [(CarDynamicBlurView *)&v6 didMoveToWindow];
  window = [(CarDynamicBlurView *)self window];

  if (window)
  {
    window2 = [(CarDynamicBlurView *)self window];
    windowScene = [window2 windowScene];
    [(MapsLightLevelController *)self->_lightLevelController setWindowScene:windowScene];

    [(CarDynamicBlurView *)self _redraw];
  }
}

- (void)didMoveToSuperview
{
  v4.receiver = self;
  v4.super_class = CarDynamicBlurView;
  [(CarDynamicBlurView *)&v4 didMoveToSuperview];
  [(CarDynamicBlurView *)self _setDisabled:self->_disabled];
  superview = [(CarDynamicBlurView *)self superview];

  if (superview)
  {
    [(CarDynamicBlurView *)self _redraw];
  }
}

- (void)dealloc
{
  v3 = sub_100C6C0F4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Deallocating", buf, 0xCu);
  }

  [(MapsLightLevelController *)self->_lightLevelController removeObserver:self];
  v4.receiver = self;
  v4.super_class = CarDynamicBlurView;
  [(CarDynamicBlurView *)&v4 dealloc];
}

- (void)setCurrentMode:(int64_t)mode
{
  if (self->_currentMode != mode)
  {
    v5 = sub_100089008();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
LABEL_15:

      self->_currentMode = mode;
      [(CarDynamicBlurView *)self _changeVisualEffect];
      [(GEOObserverHashTable *)self->_delegates dynamicBlurViewDidChangeBlurMode:self->_currentMode];
      return;
    }

    selfCopy = self;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(CarDynamicBlurView *)selfCopy performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v8, selfCopy, v10];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v8, selfCopy];
LABEL_8:

    v12 = selfCopy;
    currentMode = self->_currentMode;
    if (currentMode >= 4)
    {
      v14 = [NSString stringWithFormat:@"(unknown: %ld)", self->_currentMode];
    }

    else
    {
      v14 = *(&off_10164F3F0 + currentMode);
    }

    v15 = v14;
    if (mode >= 4)
    {
      mode = [NSString stringWithFormat:@"(unknown: %ld)", mode];
    }

    else
    {
      mode = *(&off_10164F3F0 + mode);
    }

    *buf = 138544130;
    v18 = v12;
    v19 = 2048;
    v20 = selfCopy;
    v21 = 2112;
    v22 = v15;
    v23 = 2112;
    v24 = mode;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] CarBlur for (%p) changed from %@ to %@", buf, 0x2Au);

    goto LABEL_15;
  }
}

- (void)_recalculateBlurModeWithInterfaceStyle:(int64_t)style
{
  if (self->_shouldUseNightMode)
  {
    styleCopy = 3;
  }

  else
  {
    styleCopy = style;
    if (style != 2)
    {
      if (style == 1)
      {
        if (self->_context == 1)
        {
          styleCopy = 2;
        }

        else
        {
          styleCopy = 1;
        }
      }

      else
      {
        styleCopy = 1;
      }
    }
  }

  v6 = sub_100C6C0F4();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    if (style >= 3)
    {
      style = [NSString stringWithFormat:@"<Unknown %ld>", style];
    }

    else
    {
      style = *(&off_10164F3D8 + style);
    }

    shouldUseNightMode = self->_shouldUseNightMode;
    context = self->_context;
    *buf = 134350082;
    selfCopy = self;
    v12 = 2048;
    v13 = styleCopy;
    v14 = 2112;
    v15 = style;
    v16 = 1024;
    v17 = shouldUseNightMode;
    v18 = 2048;
    v19 = context;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] Updated blur mode: %ld for style: %@, shouldUseNightMode: %d, context: %ld", buf, 0x30u);
  }

  self->_handledUserInterfaceStyle = style;
  [(CarDynamicBlurView *)self setCurrentMode:styleCopy];
}

- (void)traitCollectionDidChange:(id)change
{
  v7.receiver = self;
  v7.super_class = CarDynamicBlurView;
  [(CarDynamicBlurView *)&v7 traitCollectionDidChange:change];
  traitCollection = [(CarDynamicBlurView *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];
  handledUserInterfaceStyle = self->_handledUserInterfaceStyle;

  if (userInterfaceStyle != handledUserInterfaceStyle)
  {
    [(CarDynamicBlurView *)self _redraw];
  }
}

- (void)lightLevelController:(id)controller didUpdateLightLevel:(int64_t)level
{
  shouldUseNightMode = [controller shouldUseNightMode];
  if (self->_shouldUseNightMode != shouldUseNightMode)
  {
    v7 = shouldUseNightMode;
    v8 = sub_100C6C0F4();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      if (level >= 3)
      {
        level = [NSString stringWithFormat:@"<Unknown: %ld>", level];
      }

      else
      {
        level = *(&off_10164F3C0 + level);
      }

      *buf = 134349314;
      selfCopy = self;
      v12 = 2112;
      v13 = level;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] Got new light level: %@", buf, 0x16u);
    }

    self->_shouldUseNightMode = v7;
    [(CarDynamicBlurView *)self _updateOverrideUserInterfaceStyle];
    [(CarDynamicBlurView *)self _redraw];
  }
}

- (void)_setDisabled:(BOOL)disabled
{
  self->_disabled = disabled;
  if (self->_visualEffectView)
  {
    return;
  }

  disabledCopy = disabled;
  _background = [(CarDynamicBlurView *)self _background];
  if (disabledCopy && _background)
  {
    v10 = _background;
    _background2 = [(CarDynamicBlurView *)self _background];
    currentBackground = self->_currentBackground;
    self->_currentBackground = _background2;

    [(CarDynamicBlurView *)self _maps_removeBackground];
LABEL_8:
    _background = v10;
    goto LABEL_9;
  }

  if (!disabledCopy && self->_currentBackground)
  {
    v10 = _background;
    [(CarDynamicBlurView *)self _setBackground:?];
    v9 = self->_currentBackground;
    self->_currentBackground = 0;

    goto LABEL_8;
  }

LABEL_9:
}

- (void)setDisabled:(BOOL)disabled
{
  if (self->_disabled != disabled)
  {
    [(CarDynamicBlurView *)self _setDisabled:?];
  }
}

- (void)_setCornerRadius:(double)radius continuous:(BOOL)continuous maskedCorners:(unint64_t)corners
{
  self->_hasCornerValues = 1;
  self->_cornerRadius = radius;
  self->_continuous = continuous;
  self->_maskedCorners = corners;
  [(CarDynamicBlurView *)self _updateCornerValues];
}

- (void)didAddSubview:(id)subview
{
  v4.receiver = self;
  v4.super_class = CarDynamicBlurView;
  subviewCopy = subview;
  [(CarDynamicBlurView *)&v4 didAddSubview:subviewCopy];
  NSClassFromString(@"_UIDebugColorBoundsView");
  objc_opt_isKindOfClass();
}

- (void)unregisterAdditionalDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = sub_100C6C0F4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = delegateCopy;
    if (!v6)
    {
      v11 = @"<nil>";
      goto LABEL_10;
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [v6 performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        v11 = [NSString stringWithFormat:@"%@<%p, %@>", v8, v6, v10];

        goto LABEL_8;
      }
    }

    v11 = [NSString stringWithFormat:@"%@<%p>", v8, v6];
LABEL_8:

LABEL_10:
    *buf = 134349570;
    selfCopy = self;
    v14 = 2114;
    v15 = v11;
    v16 = 2048;
    selfCopy2 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Unregistering %{public}@ for blur view %p", buf, 0x20u);
  }

  [(GEOObserverHashTable *)self->_delegates unregisterObserver:delegateCopy];
}

- (void)registerAdditionalDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = sub_100C6C0F4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = delegateCopy;
    if (!v6)
    {
      v11 = @"<nil>";
      goto LABEL_10;
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [v6 performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        v11 = [NSString stringWithFormat:@"%@<%p, %@>", v8, v6, v10];

        goto LABEL_8;
      }
    }

    v11 = [NSString stringWithFormat:@"%@<%p>", v8, v6];
LABEL_8:

LABEL_10:
    *buf = 134349570;
    selfCopy = self;
    v14 = 2114;
    v15 = v11;
    v16 = 2048;
    selfCopy2 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Registering %{public}@ for blur view %p", buf, 0x20u);
  }

  [(GEOObserverHashTable *)self->_delegates registerObserver:delegateCopy];
}

- (CarDynamicBlurView)initWithBlurViewContext:(int64_t)context delegate:(id)delegate
{
  delegateCopy = delegate;
  v15.receiver = self;
  v15.super_class = CarDynamicBlurView;
  v7 = [(CarDynamicBlurView *)&v15 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  if (v7)
  {
    v8 = sub_100C6C0F4();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v17 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] Initializing", buf, 0xCu);
    }

    [(CarDynamicBlurView *)v7 setTag:9999];
    v9 = [[GEOObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___CarDynamicBlurViewDelegate queue:0];
    delegates = v7->_delegates;
    v7->_delegates = v9;

    [(CarDynamicBlurView *)v7 registerAdditionalDelegate:delegateCopy];
    [(CarDynamicBlurView *)v7 setUserInteractionEnabled:[(CarDynamicBlurView *)v7 supportsContentHosting]];
    v7->_context = context;
    v11 = [[MapsLightLevelController alloc] initWithWindowScene:0];
    lightLevelController = v7->_lightLevelController;
    v7->_lightLevelController = v11;

    [(MapsLightLevelController *)v7->_lightLevelController addObserver:v7];
    v7->_shouldUseNightMode = [(MapsLightLevelController *)v7->_lightLevelController shouldUseNightMode];
    [(CarDynamicBlurView *)v7 _updateOverrideUserInterfaceStyle];
    [(CarDynamicBlurView *)v7 _createContentView];
    [(CarDynamicBlurView *)v7 _redraw];
    v13 = +[NSNotificationCenter defaultCenter];
    [v13 addObserver:v7 selector:"_redraw" name:@"CarDisplayDidUpdateTraitCollectionNotification" object:0];
  }

  return v7;
}

+ (BOOL)_isGlassDisabled
{
  if (qword_10195ECF8 != -1)
  {
    dispatch_once(&qword_10195ECF8, &stru_10164F380);
  }

  return byte_10195ECF0;
}

@end