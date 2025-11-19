@interface NavAudioControlView
- (CGSize)intrinsicContentSize;
- (NavAudioControlView)initWithDelegate:(id)a3;
- (NavAudioControlViewDelegate)delegate;
- (double)containerTopPositionWhenCollapsedForAudioType:(unint64_t)a3;
- (double)expandedHeight;
- (double)highlightTopPosition;
- (id)_accessibilityIdenfifierPrefixForAudioType:(unint64_t)a3;
- (id)_accessibilityTextForAudioType:(unint64_t)a3;
- (id)_accessibilityUserInputLabelsForAudioType:(unint64_t)a3;
- (id)_imageForAudioType:(unint64_t)a3;
- (id)createBackgroundView;
- (id)createButton;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_animateContentUpdate;
- (void)_handleEvent:(id)a3;
- (void)_pressedAudioTypeButton:(id)a3;
- (void)_rescheduleCollapse;
- (void)_selectAudioType:(unint64_t)a3;
- (void)_setup;
- (void)_updateButtons;
- (void)_updateContent;
- (void)didMoveToWindow;
- (void)setAvailableAudioTypes:(id)a3;
- (void)setCurrentAudioType:(unint64_t)a3;
- (void)setExpanded:(BOOL)a3;
@end

@implementation NavAudioControlView

- (void)didMoveToWindow
{
  v7.receiver = self;
  v7.super_class = NavAudioControlView;
  [(NavAudioControlView *)&v7 didMoveToWindow];
  v3 = [(NavAudioControlView *)self window];
  v4 = [v3 conformsToProtocol:&OBJC_PROTOCOL___EventSourceHandler];

  if (v4)
  {
    v5 = [(NavAudioControlView *)self window];
    v6 = [(NavAudioControlView *)self eventTap];
    [v5 _maps_registerEventTap:v6];
  }
}

- (NavAudioControlViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_handleEvent:(id)a3
{
  v4 = a3;
  if ([v4 type])
  {
    if ([v4 type] == 7 && self->_timer)
    {
      [(NavAudioControlView *)self _rescheduleCollapse];
    }
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [(NavAudioControlView *)self window];
    v6 = [v4 touchesForWindow:v5];

    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v13 + 1) + 8 * i);
          if ([v11 type] == 1 && self->_timer)
          {
            [(NavAudioControlView *)self _rescheduleCollapse];
LABEL_18:

            goto LABEL_19;
          }

          if ([v11 phase] != 3)
          {
            goto LABEL_18;
          }

          [v11 locationInView:self];
          v12 = [(NavAudioControlView *)self hitTest:v4 withEvent:?];

          if (v12)
          {
            goto LABEL_18;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    [(NavAudioControlView *)self setExpanded:0];
  }

LABEL_19:
}

- (void)_updateContent
{
  v3 = 0.0;
  if (![(NavAudioControlView *)self isExpanded])
  {
    [(NavAudioControlView *)self containerTopPositionWhenCollapsedForAudioType:self->_currentAudioType];
    v3 = v4;
  }

  v5 = [(NavAudioControlView *)self containerViewTopConstraint];
  [v5 setConstant:v3];

  [(NavAudioControlView *)self highlightTopPosition];
  v7 = v6;
  v8 = [(NavAudioControlView *)self highlightViewTopConstraint];
  [v8 setConstant:v7];

  if ([(NavAudioControlView *)self isExpanded])
  {
    v9 = 1.0;
  }

  else
  {
    v9 = 0.0;
  }

  v10 = [(NavAudioControlView *)self highlightView];
  [v10 setAlpha:v9];
}

- (double)highlightTopPosition
{
  v3 = [(NavAudioControlView *)self availableAudioTypes];
  v4 = [NSNumber numberWithUnsignedInteger:self->_currentAudioType];
  v5 = [v3 indexOfObject:v4];

  result = 65.0;
  if (v5 != 1)
  {
    result = 3.0;
  }

  if (v5 == 2)
  {
    return 131.0;
  }

  return result;
}

- (double)containerTopPositionWhenCollapsedForAudioType:(unint64_t)a3
{
  v4 = [(NavAudioControlView *)self availableAudioTypes];
  v5 = [NSNumber numberWithUnsignedInteger:a3];
  v6 = [v4 indexOfObject:v5];

  result = -62.0;
  if (v6 != 1)
  {
    result = 0.0;
  }

  if (v6 == 2)
  {
    return -128.0;
  }

  return result;
}

- (void)setCurrentAudioType:(unint64_t)a3
{
  if (self->_currentAudioType != a3)
  {
    v5 = sub_100090D58();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      currentAudioType = self->_currentAudioType;
      v10 = 134218240;
      v11 = currentAudioType;
      v12 = 2048;
      v13 = a3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Changing audio type from %lu to %lu", &v10, 0x16u);
    }

    self->_currentAudioType = a3;
    [(NavAudioControlView *)self setExpanded:0];
    [(NavAudioControlView *)self containerTopPositionWhenCollapsedForAudioType:a3];
    v8 = v7;
    v9 = [(NavAudioControlView *)self containerViewTopConstraint];
    [v9 setConstant:v8];
  }
}

- (void)setAvailableAudioTypes:(id)a3
{
  v4 = a3;
  v5 = self->_availableAudioTypes;
  v6 = v4;
  if (v6 | v5)
  {
    v7 = [v5 isEqual:v6];

    if ((v7 & 1) == 0)
    {
      v8 = [v6 copy];
      availableAudioTypes = self->_availableAudioTypes;
      self->_availableAudioTypes = v8;

      v10 = sub_100090D58();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v14 = 138543362;
        v15 = v6;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Available audio types changed to %{public}@", &v14, 0xCu);
      }

      [(NavAudioControlView *)self setExpanded:0];
      [(NavAudioControlView *)self _updateButtons];
      [(NavAudioControlView *)self containerTopPositionWhenCollapsedForAudioType:self->_currentAudioType];
      v12 = v11;
      v13 = [(NavAudioControlView *)self containerViewTopConstraint];
      [v13 setConstant:v12];

      [(NavAudioControlView *)self invalidateIntrinsicContentSize];
    }
  }
}

- (double)expandedHeight
{
  v3 = [(NavAudioControlView *)self availableAudioTypes];
  v4 = [v3 count];

  if (v4 == 3)
  {

    [(NavAudioControlView *)self fullHeight];
  }

  else if (v4 == 2)
  {
    return 122.0;
  }

  else if (v4 == 1)
  {

    [(NavAudioControlView *)self collapsedDimension];
  }

  else
  {
    return 0.0;
  }

  return result;
}

- (void)_animateContentUpdate
{
  v3 = objc_alloc_init(SpringGroupAnimation);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100D5A300;
  v9[3] = &unk_101661B18;
  v9[4] = self;
  v7[4] = self;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100D5A35C;
  v8[3] = &unk_101661B18;
  v8[4] = self;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100D5A3CC;
  v7[3] = &unk_101661738;
  [(GroupAnimation *)v3 addPreparation:v9 animations:v8 completion:v7];
  v4 = [(NavAudioControlView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(NavAudioControlView *)self delegate];
    [v6 audioControlView:self willChangeSizeWithAnimation:v3];
  }

  [(SpringGroupAnimation *)v3 runWithDuration:6 delay:1.0 options:0.0 mass:3.0 stiffness:1000.0 damping:500.0 initialVelocity:0.0];
  UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, self);
}

- (void)_rescheduleCollapse
{
  objc_initWeak(&location, self);
  v3 = &_dispatch_main_q;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100D5A650;
  v6[3] = &unk_1016616E8;
  objc_copyWeak(&v7, &location);
  v4 = [GCDTimer scheduledTimerWithTimeInterval:&_dispatch_main_q queue:v6 block:5.0];
  timer = self->_timer;
  self->_timer = v4;

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)setExpanded:(BOOL)a3
{
  if (self->_expanded != a3)
  {
    v3 = a3;
    v5 = sub_100090D58();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      goto LABEL_9;
    }

    v6 = self;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(NavAudioControlView *)v6 performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        v11 = [NSString stringWithFormat:@"%@<%p, %@>", v8, v6, v10];

        goto LABEL_8;
      }
    }

    v11 = [NSString stringWithFormat:@"%@<%p>", v8, v6];
LABEL_8:

    expanded = self->_expanded;
    *buf = 138543874;
    v15 = v11;
    v16 = 1024;
    v17 = expanded;
    v18 = 1024;
    v19 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] Changing expansion from %d to %d", buf, 0x18u);

LABEL_9:
    self->_expanded = v3;
    [(NavAudioControlView *)self _animateContentUpdate];
    if (v3)
    {
      [(NavAudioControlView *)self _rescheduleCollapse];
      [GEOAPPortal captureUserAction:139 target:[(NavAudioControlView *)self analyticsTarget] value:0];
    }

    else
    {
      timer = self->_timer;
      self->_timer = 0;
    }
  }
}

- (void)_selectAudioType:(unint64_t)a3
{
  v5 = sub_100090D58();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = self;
    if (!v6)
    {
      v11 = @"<nil>";
      goto LABEL_10;
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(NavAudioControlView *)v6 performSelector:"accessibilityIdentifier"];
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
    *buf = 138543618;
    v16 = v11;
    v17 = 2048;
    v18 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] Changing audioType to %lu", buf, 0x16u);
  }

  self->_currentAudioType = a3;
  v12 = [(NavAudioControlView *)self delegate];
  [v12 audioControlView:self didSelectAudioType:self->_currentAudioType];

  currentAudioType = self->_currentAudioType;
  if (currentAudioType <= 2)
  {
    [GEOAPPortal captureUserAction:dword_1012160C0[currentAudioType] target:[(NavAudioControlView *)self analyticsTarget] value:0];
  }

  +[MapsAnalyticStateProvider updateSettingsInformation];
  v14 = +[NavigationFeedbackCollector sharedFeedbackCollector];
  [v14 updateAudioPreferences];
}

- (void)_pressedAudioTypeButton:(id)a3
{
  v16 = a3;
  v4 = [(NavAudioControlView *)self availableAudioTypes];
  v5 = [v4 count];

  if (v5 >= 2)
  {
    v6 = [(NavAudioControlView *)self availableAudioTypes];
    v7 = [v6 count];

    if (v7 == 2)
    {
      v8 = [(NavAudioControlView *)self availableAudioTypes];
      v9 = [v8 firstObject];
      v10 = [NSNumber numberWithUnsignedInteger:self->_currentAudioType];
      v11 = [v9 isEqual:v10];

      v12 = [(NavAudioControlView *)self availableAudioTypes];
      v13 = v12;
      if (v11)
      {
        [v12 lastObject];
      }

      else
      {
        [v12 firstObject];
      }
      v15 = ;
      -[NavAudioControlView _selectAudioType:](self, "_selectAudioType:", [v15 unsignedIntegerValue]);

      [(NavAudioControlView *)self _animateContentUpdate];
    }

    else
    {
      if ([(NavAudioControlView *)self isExpanded])
      {
        v14 = [v16 tag];
        if (self->_currentAudioType != v14)
        {
          [(NavAudioControlView *)self _selectAudioType:v14];
        }
      }

      [(NavAudioControlView *)self setExpanded:[(NavAudioControlView *)self isExpanded]^ 1];
    }
  }
}

- (id)_accessibilityUserInputLabelsForAudioType:(unint64_t)a3
{
  switch(a3)
  {
    case 2uLL:
      v3 = +[NSBundle mainBundle];
      v4 = [v3 localizedStringForKey:@"[Audio] No guidance" value:@"localized string not found" table:0];
      v11 = v4;
      v5 = @"CarPlay_Mute";
      v6 = &v11;
      goto LABEL_7;
    case 1uLL:
      v3 = +[NSBundle mainBundle];
      v4 = [v3 localizedStringForKey:@"[Audio] Alerts only" value:@"localized string not found" table:0];
      v12 = v4;
      v5 = @"Alert";
      v6 = &v12;
      goto LABEL_7;
    case 0uLL:
      v3 = +[NSBundle mainBundle];
      v4 = [v3 localizedStringForKey:@"[Audio] All guidance" value:@"localized string not found" table:0];
      v13 = v4;
      v5 = @"CarPlay_Speaker";
      v6 = &v13;
LABEL_7:
      v7 = +[NSBundle mainBundle];
      v8 = [v7 localizedStringForKey:v5 value:@"localized string not found" table:0];
      v6[1] = v8;
      v9 = [NSArray arrayWithObjects:v6 count:2];

      goto LABEL_9;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

- (id)_accessibilityTextForAudioType:(unint64_t)a3
{
  if (a3 <= 2)
  {
    v4 = *(&off_101652AD0 + a3);
    v5 = +[NSBundle mainBundle];
    v3 = [v5 localizedStringForKey:v4 value:@"localized string not found" table:0];
  }

  return v3;
}

- (id)_accessibilityIdenfifierPrefixForAudioType:(unint64_t)a3
{
  v3 = @"AllGuidance";
  if (a3 == 1)
  {
    v3 = @"AlertsOnly";
  }

  if (a3 == 2)
  {
    return @"NoGuidance";
  }

  else
  {
    return v3;
  }
}

- (id)_imageForAudioType:(unint64_t)a3
{
  switch(a3)
  {
    case 2uLL:
      v3 = @"speaker.slash.fill";
      goto LABEL_7;
    case 1uLL:
      v4 = [UIImage imageNamed:@"AudioAlertsOnly"];
LABEL_8:
      v5 = v4;
      goto LABEL_10;
    case 0uLL:
      v3 = @"speaker.wave.2.fill";
LABEL_7:
      v4 = [UIImage systemImageNamed:v3];
      goto LABEL_8;
  }

  v5 = 0;
LABEL_10:
  v6 = [v5 imageFlippedForRightToLeftLayoutDirection];

  return v6;
}

- (void)_updateButtons
{
  [(NSArray *)self->_buttons makeObjectsPerformSelector:"removeFromSuperview"];
  v3 = objc_opt_new();
  v34 = objc_opt_new();
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = [(NavAudioControlView *)self availableAudioTypes];
  v35 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v35)
  {
    v33 = *v37;
    leading = NSDirectionalEdgeInsetsZero.leading;
    bottom = NSDirectionalEdgeInsetsZero.bottom;
    trailing = NSDirectionalEdgeInsetsZero.trailing;
    do
    {
      for (i = 0; i != v35; i = i + 1)
      {
        if (*v37 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v8 = [*(*(&v36 + 1) + 8 * i) unsignedIntegerValue];
        v9 = +[UIButtonConfiguration borderlessButtonConfiguration];
        [v9 setContentInsets:{NSDirectionalEdgeInsetsZero.top, leading, bottom, trailing}];
        v10 = [(NavAudioControlView *)self preferredSymbolConfigurationForImage];
        [v9 setPreferredSymbolConfigurationForImage:v10];

        v11 = [(NavAudioControlView *)self _imageForAudioType:v8];
        [v9 setImage:v11];

        v12 = [(NavAudioControlView *)self createButton];
        [(NSArray *)v34 addObject:v12];
        [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v12 setTag:v8];
        [v12 setConfiguration:v9];
        v13 = [v12 traitOverrides];
        [v13 setLayoutDirection:0];

        v14 = [(NavAudioControlView *)self _accessibilityTextForAudioType:v8];
        [v12 setAccessibilityLabel:v14];

        v15 = [(NavAudioControlView *)self _accessibilityIdenfifierPrefixForAudioType:v8];
        v16 = [v15 stringByAppendingString:@"Button"];
        [v12 setAccessibilityIdentifier:v16];

        v17 = [(NavAudioControlView *)self _accessibilityUserInputLabelsForAudioType:v8];
        [v12 setAccessibilityUserInputLabels:v17];

        [v12 addTarget:self action:"_pressedAudioTypeButton:" forControlEvents:64];
        [(UIView *)self->_containerView addSubview:v12];
        v18 = [v12 leadingAnchor];
        v19 = [(UIView *)self->_containerView leadingAnchor];
        v20 = [v18 constraintEqualToAnchor:v19];
        [v3 addObject:v20];

        v21 = [v12 trailingAnchor];
        v22 = [(UIView *)self->_containerView trailingAnchor];
        v23 = [v21 constraintEqualToAnchor:v22];
        [v3 addObject:v23];

        v24 = [v12 topAnchor];
        v25 = [(UIView *)self->_containerView topAnchor];
        [(NavAudioControlView *)self containerTopPositionWhenCollapsedForAudioType:v8];
        v27 = [v24 constraintEqualToAnchor:v25 constant:-v26];
        [v3 addObject:v27];

        v28 = [v12 heightAnchor];
        [(NavAudioControlView *)self collapsedDimension];
        v29 = [v28 constraintEqualToConstant:?];
        [v3 addObject:v29];
      }

      v35 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v35);
  }

  buttons = self->_buttons;
  self->_buttons = v34;
  v31 = v34;

  [NSLayoutConstraint activateConstraints:v3];
}

- (id)createButton
{
  v2 = objc_opt_new();

  return v2;
}

- (id)createBackgroundView
{
  v2 = objc_opt_new();
  v3 = [UIColor colorNamed:@"NavigationMaterialColor"];
  [v2 setBackgroundColor:v3];

  return v2;
}

- (void)_setup
{
  objc_initWeak(&location, self);
  v69 = _NSConcreteStackBlock;
  v70 = 3221225472;
  v71 = sub_100082A50;
  v72 = &unk_10165FF68;
  objc_copyWeak(&v73, &location);
  v3 = [EventTap eventTapWithHandler:&v69];
  [(NavAudioControlView *)self setEventTap:v3, v69, v70, v71, v72];

  v4 = objc_opt_new();
  v5 = objc_opt_new();
  maps_maskView = self->_maps_maskView;
  self->_maps_maskView = v5;

  [(UIView *)self->_maps_maskView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_maps_maskView setClipsToBounds:1];
  [(NavAudioControlView *)self collapsedDimension];
  v8 = v7;
  v9 = [(UIView *)self->_maps_maskView layer];
  [v9 setCornerRadius:v8 * 0.5];

  [(UIView *)self->_maps_maskView setAccessibilityIdentifier:@"NavAudioControlMaskView"];
  [(NavAudioControlView *)self addSubview:self->_maps_maskView];
  v10 = [(UIView *)self->_maps_maskView leadingAnchor];
  v11 = [(NavAudioControlView *)self leadingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  [v4 addObject:v12];

  v13 = [(UIView *)self->_maps_maskView trailingAnchor];
  v14 = [(NavAudioControlView *)self trailingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  [v4 addObject:v15];

  v16 = [(UIView *)self->_maps_maskView topAnchor];
  v17 = [(NavAudioControlView *)self topAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];
  [v4 addObject:v18];

  v19 = [(UIView *)self->_maps_maskView bottomAnchor];
  v20 = [(NavAudioControlView *)self bottomAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];
  [v4 addObject:v21];

  v22 = objc_opt_new();
  containerView = self->_containerView;
  self->_containerView = v22;

  [(UIView *)self->_containerView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_containerView setAccessibilityIdentifier:@"NavAudioControlContainerView"];
  [(UIView *)self->_maps_maskView addSubview:self->_containerView];
  v24 = self->_containerView;
  v25 = [(NavAudioControlView *)self createBackgroundView];
  [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
  if ([(NavAudioControlView *)self backgroundSupportsDirectMasking])
  {
    [(NavAudioControlView *)self collapsedDimension];
    v27 = v26;
    v28 = [v25 layer];
    [v28 setCornerRadius:v27 * 0.5];

    [(NavAudioControlView *)self insertSubview:v25 atIndex:0];
    LODWORD(v29) = 1148846080;
    v30 = [v25 _maps_constraintsEqualToEdgesOfView:self->_maps_maskView priority:v29];
    v31 = [v30 allConstraints];
    [v4 addObjectsFromArray:v31];
  }

  else
  {
    [(NavAudioControlView *)self collapsedDimension];
    v33 = v32;
    v34 = [(NavAudioControlView *)self layer];
    [v34 setCornerRadius:v33 * 0.5];

    v35 = [(NavAudioControlView *)self layer];
    LODWORD(v36) = 1045220557;
    [v35 setShadowOpacity:v36];

    v37 = [(NavAudioControlView *)self layer];
    [v37 setShadowOffset:{CGSizeZero.width, CGSizeZero.height}];

    v38 = [(NavAudioControlView *)self layer];
    [v38 setShadowRadius:1.0];

    v39 = [(NavAudioControlView *)self layer];
    [v39 setShadowPathIsBounds:1];

    [(UIView *)v24 addSubview:v25];
    v30 = [v25 _maps_constraintsForCenteringInView:v24];
    [v4 addObjectsFromArray:v30];
  }

  v40 = [(UIView *)self->_containerView topAnchor];
  v41 = [(NavAudioControlView *)self topAnchor];
  v42 = [v40 constraintEqualToAnchor:v41];
  containerViewTopConstraint = self->_containerViewTopConstraint;
  self->_containerViewTopConstraint = v42;

  v44 = [(UIView *)self->_containerView leadingAnchor];
  v45 = [(NavAudioControlView *)self leadingAnchor];
  v46 = [v44 constraintEqualToAnchor:v45];
  [v4 addObject:v46];

  v47 = [(UIView *)self->_containerView trailingAnchor];
  v48 = [(NavAudioControlView *)self trailingAnchor];
  v49 = [v47 constraintEqualToAnchor:v48];
  [v4 addObject:v49];

  [v4 addObject:self->_containerViewTopConstraint];
  v50 = [(UIView *)self->_containerView heightAnchor];
  [(NavAudioControlView *)self fullHeight];
  v51 = [v50 constraintEqualToConstant:?];
  [v4 addObject:v51];

  v52 = objc_opt_new();
  highlightView = self->_highlightView;
  self->_highlightView = v52;

  [(UIView *)self->_highlightView setTranslatesAutoresizingMaskIntoConstraints:0];
  v54 = +[UIColor tertiarySystemFillColor];
  [(UIView *)self->_highlightView setBackgroundColor:v54];

  [(NavAudioControlView *)self highlightWidth];
  v56 = v55;
  v57 = [(UIView *)self->_highlightView layer];
  [v57 setCornerRadius:v56 * 0.5];

  [(UIView *)v24 addSubview:self->_highlightView];
  v58 = [(UIView *)self->_highlightView topAnchor];
  v59 = [(UIView *)v24 topAnchor];
  v60 = [v58 constraintEqualToAnchor:v59];
  highlightViewTopConstraint = self->_highlightViewTopConstraint;
  self->_highlightViewTopConstraint = v60;

  v62 = [(UIView *)self->_highlightView widthAnchor];
  [(NavAudioControlView *)self highlightWidth];
  v63 = [v62 constraintEqualToConstant:?];
  [v4 addObject:v63];

  v64 = [(UIView *)self->_highlightView centerXAnchor];
  v65 = [(UIView *)v24 centerXAnchor];
  v66 = [v64 constraintEqualToAnchor:v65];
  [v4 addObject:v66];

  [v4 addObject:self->_highlightViewTopConstraint];
  v67 = [(UIView *)self->_highlightView heightAnchor];
  [(NavAudioControlView *)self highlightWidth];
  v68 = [v67 constraintEqualToConstant:?];
  [v4 addObject:v68];

  [NSLayoutConstraint activateConstraints:v4];
  [(NavAudioControlView *)self _updateContent];

  objc_destroyWeak(&v73);
  objc_destroyWeak(&location);
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v26.receiver = self;
  v26.super_class = NavAudioControlView;
  v7 = [(NavAudioControlView *)&v26 hitTest:a4 withEvent:?];
  if (v7 == self)
  {
    v9 = [(NavAudioControlView *)self containerView];
    [v9 convertPoint:self fromView:{x, y}];
    v11 = v10;

    if (v11 <= 0.0)
    {
      v8 = [(NSArray *)self->_buttons firstObject];
      goto LABEL_17;
    }

    v12 = [(NavAudioControlView *)self containerView];
    [v12 frame];
    Height = CGRectGetHeight(v29);

    if (v11 >= Height)
    {
      v8 = [(NSArray *)self->_buttons lastObject];
      goto LABEL_17;
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v14 = self->_buttons;
    v15 = [(NSArray *)v14 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v23;
      while (2)
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v23 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v22 + 1) + 8 * i);
          [v19 frame];
          if (v11 <= CGRectGetMaxY(v30))
          {
            [v19 frame];
            if (v11 >= CGRectGetMinY(v31))
            {
              v20 = v19;

              goto LABEL_18;
            }
          }
        }

        v16 = [(NSArray *)v14 countByEnumeratingWithState:&v22 objects:v27 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }
  }

  v8 = v7;
LABEL_17:
  v20 = v8;
LABEL_18:

  return v20;
}

- (CGSize)intrinsicContentSize
{
  [(NavAudioControlView *)self collapsedDimension];
  v4 = v3;
  if ([(NavAudioControlView *)self isExpanded])
  {
    [(NavAudioControlView *)self expandedHeight];
  }

  else
  {
    [(NavAudioControlView *)self collapsedDimension];
  }

  v6 = v5;
  v7 = v4;
  result.height = v6;
  result.width = v7;
  return result;
}

- (NavAudioControlView)initWithDelegate:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = NavAudioControlView;
  v5 = [(NavAudioControlView *)&v9 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    [(NavAudioControlView *)v5 setAccessibilityIdentifier:v7];

    objc_storeWeak(&v5->_delegate, v4);
    [(NavAudioControlView *)v5 _setup];
  }

  return v5;
}

@end