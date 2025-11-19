@interface CarDynamicBlurView
+ (BOOL)_isGlassDisabled;
- (CarDynamicBlurView)initWithBlurViewContext:(int64_t)a3 delegate:(id)a4;
- (int64_t)correctedUserInterfaceStyle;
- (void)_changeVisualEffect;
- (void)_createContentView;
- (void)_recalculateBlurModeWithInterfaceStyle:(int64_t)a3;
- (void)_redraw;
- (void)_setCornerRadius:(double)a3 continuous:(BOOL)a4 maskedCorners:(unint64_t)a5;
- (void)_setDisabled:(BOOL)a3;
- (void)_updateCornerValues;
- (void)_updateOverrideUserInterfaceStyle;
- (void)dealloc;
- (void)didAddSubview:(id)a3;
- (void)didMoveToSuperview;
- (void)didMoveToWindow;
- (void)lightLevelController:(id)a3 didUpdateLightLevel:(int64_t)a4;
- (void)registerAdditionalDelegate:(id)a3;
- (void)setCurrentMode:(int64_t)a3;
- (void)setDisabled:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)unregisterAdditionalDelegate:(id)a3;
@end

@implementation CarDynamicBlurView

- (void)_redraw
{
  v3 = [(CarDynamicBlurView *)self correctedUserInterfaceStyle];

  [(CarDynamicBlurView *)self _recalculateBlurModeWithInterfaceStyle:v3];
}

- (int64_t)correctedUserInterfaceStyle
{
  if (!self->_visualEffectView && (self->_shouldUseNightMode || self->_context == 1))
  {
    v4 = sub_100C6C0F4();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v10 = [(CarDynamicBlurView *)self traitCollection];
      v11 = [v10 userInterfaceStyle];
      if (v11 >= 3)
      {
        v12 = [NSString stringWithFormat:@"<Unknown %ld>", v11];
      }

      else
      {
        v12 = *(&off_10164F3D8 + v11);
      }

      shouldUseNightMode = self->_shouldUseNightMode;
      context = self->_context;
      *buf = 134349826;
      v24 = self;
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

  v3 = [(CarDynamicBlurView *)self superview];

  v4 = sub_100C6C0F4();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (!v3)
  {
    if (v5)
    {
      v10 = [(CarDynamicBlurView *)self traitCollection];
      v13 = [v10 userInterfaceStyle];
      if (v13 >= 3)
      {
        v12 = [NSString stringWithFormat:@"<Unknown %ld>", v13];
      }

      else
      {
        v12 = *(&off_10164F3D8 + v13);
      }

      *buf = 134349314;
      v24 = self;
      v25 = 2112;
      v26 = v12;
      v19 = "[%{public}p] Corrected user interface style from self: %@";
      v20 = v4;
      v21 = 22;
      goto LABEL_21;
    }

LABEL_22:

    v14 = [(CarDynamicBlurView *)self traitCollection];
    v16 = [v14 userInterfaceStyle];
    goto LABEL_23;
  }

  if (v5)
  {
    v6 = [(CarDynamicBlurView *)self superview];
    v7 = [v6 traitCollection];
    v8 = [v7 userInterfaceStyle];
    if (v8 >= 3)
    {
      v9 = [NSString stringWithFormat:@"<Unknown %ld>", v8];
    }

    else
    {
      v9 = *(&off_10164F3D8 + v8);
    }

    *buf = 134349314;
    v24 = self;
    v25 = 2112;
    v26 = v9;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] Corrected user interface style from superview: %@", buf, 0x16u);
  }

  v14 = [(CarDynamicBlurView *)self superview];
  v15 = [v14 traitCollection];
  v16 = [v15 userInterfaceStyle];

LABEL_23:
  return v16;
}

- (void)_changeVisualEffect
{
  v3 = sub_100089008();
  if (!os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    goto LABEL_14;
  }

  v4 = self;
  if (!v4)
  {
    v9 = @"<nil>";
    goto LABEL_10;
  }

  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  if (objc_opt_respondsToSelector())
  {
    v7 = [(CarDynamicBlurView *)v4 performSelector:"accessibilityIdentifier"];
    v8 = v7;
    if (v7 && ![v7 isEqualToString:v6])
    {
      v9 = [NSString stringWithFormat:@"%@<%p, %@>", v6, v4, v8];

      goto LABEL_8;
    }
  }

  v9 = [NSString stringWithFormat:@"%@<%p>", v6, v4];
LABEL_8:

LABEL_10:
  v10 = v9;
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  currentMode = v4->_currentMode;
  if (currentMode >= 4)
  {
    v14 = [NSString stringWithFormat:@"(unknown: %ld)", v4->_currentMode];
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
  v49 = v4;
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

        v17 = self;
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        if (objc_opt_respondsToSelector())
        {
          v20 = [(CarDynamicBlurView *)v17 performSelector:"accessibilityIdentifier"];
          v21 = v20;
          if (v20 && ![v20 isEqualToString:v19])
          {
            v22 = [NSString stringWithFormat:@"%@<%p, %@>", v19, v17, v21];

            goto LABEL_24;
          }
        }

        v22 = [NSString stringWithFormat:@"%@<%p>", v19, v17];
LABEL_24:

        v23 = v22;
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

    v42 = [(CarVisualEffectView *)self->_visualEffectView contentView];
    [v42 setClipsToBounds:1];

    v43 = [(CarVisualEffectView *)self->_visualEffectView contentView];
    [v43 addSubview:self->_contentView];

    [(CarDynamicBlurView *)self _updateCornerValues];
    [(CarDynamicBlurView *)self addSubview:self->_visualEffectView];
    v29 = +[NSMutableArray array];
    v44 = [(CarVisualEffectView *)self->_visualEffectView _maps_constraintsForCenteringInView:self];
    [v29 addObjectsFromArray:v44];

    contentView = self->_contentView;
    v46 = [(CarVisualEffectView *)self->_visualEffectView contentView];
    v47 = [(UIView *)contentView _maps_constraintsForCenteringInView:v46];
    [v29 addObjectsFromArray:v47];

    goto LABEL_45;
  }

  [(CarDynamicBlurView *)self _maps_applyGlassBackgroundForButton:self->_context == 2 buttonBackgroundType:0 allowAdaptive:0 isCarPlay:1];
  [(CarDynamicBlurView *)self _updateCornerValues];
  v26 = [(UIView *)self->_contentView superview];

  if (v26 == self)
  {
    return;
  }

  [(CarDynamicBlurView *)self addSubview:self->_contentView];
  LODWORD(v27) = 1148846080;
  v28 = [(UIView *)self->_contentView _maps_constraintsEqualToEdgesOfView:self priority:v27];
  v29 = [v28 allConstraints];
LABEL_45:
  [NSLayoutConstraint activateConstraints:v29];
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
      v8 = [(CarDynamicBlurView *)self layer];
      [v8 setCornerRadius:v7];

      if (self->_continuous)
      {
        v9 = &kCACornerCurveContinuous;
      }

      else
      {
        v9 = &kCACornerCurveCircular;
      }

      v10 = *v9;
      v11 = [(CarDynamicBlurView *)self layer];
      [v11 setCornerCurve:v10];

      v12 = self->_maskedCorners;
      v13 = [(CarDynamicBlurView *)self layer];
      [v13 setMaskedCorners:v12];
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
      v6 = self;
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
      v6 = self;
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
  v3 = [(CarDynamicBlurView *)self window];

  if (v3)
  {
    v4 = [(CarDynamicBlurView *)self window];
    v5 = [v4 windowScene];
    [(MapsLightLevelController *)self->_lightLevelController setWindowScene:v5];

    [(CarDynamicBlurView *)self _redraw];
  }
}

- (void)didMoveToSuperview
{
  v4.receiver = self;
  v4.super_class = CarDynamicBlurView;
  [(CarDynamicBlurView *)&v4 didMoveToSuperview];
  [(CarDynamicBlurView *)self _setDisabled:self->_disabled];
  v3 = [(CarDynamicBlurView *)self superview];

  if (v3)
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
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Deallocating", buf, 0xCu);
  }

  [(MapsLightLevelController *)self->_lightLevelController removeObserver:self];
  v4.receiver = self;
  v4.super_class = CarDynamicBlurView;
  [(CarDynamicBlurView *)&v4 dealloc];
}

- (void)setCurrentMode:(int64_t)a3
{
  if (self->_currentMode != a3)
  {
    v5 = sub_100089008();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
LABEL_15:

      self->_currentMode = a3;
      [(CarDynamicBlurView *)self _changeVisualEffect];
      [(GEOObserverHashTable *)self->_delegates dynamicBlurViewDidChangeBlurMode:self->_currentMode];
      return;
    }

    v6 = self;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(CarDynamicBlurView *)v6 performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        v11 = [NSString stringWithFormat:@"%@<%p, %@>", v8, v6, v10];

        goto LABEL_8;
      }
    }

    v11 = [NSString stringWithFormat:@"%@<%p>", v8, v6];
LABEL_8:

    v12 = v11;
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
    if (a3 >= 4)
    {
      v16 = [NSString stringWithFormat:@"(unknown: %ld)", a3];
    }

    else
    {
      v16 = *(&off_10164F3F0 + a3);
    }

    *buf = 138544130;
    v18 = v12;
    v19 = 2048;
    v20 = v6;
    v21 = 2112;
    v22 = v15;
    v23 = 2112;
    v24 = v16;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] CarBlur for (%p) changed from %@ to %@", buf, 0x2Au);

    goto LABEL_15;
  }
}

- (void)_recalculateBlurModeWithInterfaceStyle:(int64_t)a3
{
  if (self->_shouldUseNightMode)
  {
    v5 = 3;
  }

  else
  {
    v5 = a3;
    if (a3 != 2)
    {
      if (a3 == 1)
      {
        if (self->_context == 1)
        {
          v5 = 2;
        }

        else
        {
          v5 = 1;
        }
      }

      else
      {
        v5 = 1;
      }
    }
  }

  v6 = sub_100C6C0F4();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    if (a3 >= 3)
    {
      v7 = [NSString stringWithFormat:@"<Unknown %ld>", a3];
    }

    else
    {
      v7 = *(&off_10164F3D8 + a3);
    }

    shouldUseNightMode = self->_shouldUseNightMode;
    context = self->_context;
    *buf = 134350082;
    v11 = self;
    v12 = 2048;
    v13 = v5;
    v14 = 2112;
    v15 = v7;
    v16 = 1024;
    v17 = shouldUseNightMode;
    v18 = 2048;
    v19 = context;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] Updated blur mode: %ld for style: %@, shouldUseNightMode: %d, context: %ld", buf, 0x30u);
  }

  self->_handledUserInterfaceStyle = a3;
  [(CarDynamicBlurView *)self setCurrentMode:v5];
}

- (void)traitCollectionDidChange:(id)a3
{
  v7.receiver = self;
  v7.super_class = CarDynamicBlurView;
  [(CarDynamicBlurView *)&v7 traitCollectionDidChange:a3];
  v4 = [(CarDynamicBlurView *)self traitCollection];
  v5 = [v4 userInterfaceStyle];
  handledUserInterfaceStyle = self->_handledUserInterfaceStyle;

  if (v5 != handledUserInterfaceStyle)
  {
    [(CarDynamicBlurView *)self _redraw];
  }
}

- (void)lightLevelController:(id)a3 didUpdateLightLevel:(int64_t)a4
{
  v6 = [a3 shouldUseNightMode];
  if (self->_shouldUseNightMode != v6)
  {
    v7 = v6;
    v8 = sub_100C6C0F4();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      if (a4 >= 3)
      {
        v9 = [NSString stringWithFormat:@"<Unknown: %ld>", a4];
      }

      else
      {
        v9 = *(&off_10164F3C0 + a4);
      }

      *buf = 134349314;
      v11 = self;
      v12 = 2112;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] Got new light level: %@", buf, 0x16u);
    }

    self->_shouldUseNightMode = v7;
    [(CarDynamicBlurView *)self _updateOverrideUserInterfaceStyle];
    [(CarDynamicBlurView *)self _redraw];
  }
}

- (void)_setDisabled:(BOOL)a3
{
  self->_disabled = a3;
  if (self->_visualEffectView)
  {
    return;
  }

  v4 = a3;
  v6 = [(CarDynamicBlurView *)self _background];
  if (v4 && v6)
  {
    v10 = v6;
    v7 = [(CarDynamicBlurView *)self _background];
    currentBackground = self->_currentBackground;
    self->_currentBackground = v7;

    [(CarDynamicBlurView *)self _maps_removeBackground];
LABEL_8:
    v6 = v10;
    goto LABEL_9;
  }

  if (!v4 && self->_currentBackground)
  {
    v10 = v6;
    [(CarDynamicBlurView *)self _setBackground:?];
    v9 = self->_currentBackground;
    self->_currentBackground = 0;

    goto LABEL_8;
  }

LABEL_9:
}

- (void)setDisabled:(BOOL)a3
{
  if (self->_disabled != a3)
  {
    [(CarDynamicBlurView *)self _setDisabled:?];
  }
}

- (void)_setCornerRadius:(double)a3 continuous:(BOOL)a4 maskedCorners:(unint64_t)a5
{
  self->_hasCornerValues = 1;
  self->_cornerRadius = a3;
  self->_continuous = a4;
  self->_maskedCorners = a5;
  [(CarDynamicBlurView *)self _updateCornerValues];
}

- (void)didAddSubview:(id)a3
{
  v4.receiver = self;
  v4.super_class = CarDynamicBlurView;
  v3 = a3;
  [(CarDynamicBlurView *)&v4 didAddSubview:v3];
  NSClassFromString(@"_UIDebugColorBoundsView");
  objc_opt_isKindOfClass();
}

- (void)unregisterAdditionalDelegate:(id)a3
{
  v4 = a3;
  v5 = sub_100C6C0F4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = v4;
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
    v13 = self;
    v14 = 2114;
    v15 = v11;
    v16 = 2048;
    v17 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Unregistering %{public}@ for blur view %p", buf, 0x20u);
  }

  [(GEOObserverHashTable *)self->_delegates unregisterObserver:v4];
}

- (void)registerAdditionalDelegate:(id)a3
{
  v4 = a3;
  v5 = sub_100C6C0F4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = v4;
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
    v13 = self;
    v14 = 2114;
    v15 = v11;
    v16 = 2048;
    v17 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Registering %{public}@ for blur view %p", buf, 0x20u);
  }

  [(GEOObserverHashTable *)self->_delegates registerObserver:v4];
}

- (CarDynamicBlurView)initWithBlurViewContext:(int64_t)a3 delegate:(id)a4
{
  v6 = a4;
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

    [(CarDynamicBlurView *)v7 registerAdditionalDelegate:v6];
    [(CarDynamicBlurView *)v7 setUserInteractionEnabled:[(CarDynamicBlurView *)v7 supportsContentHosting]];
    v7->_context = a3;
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