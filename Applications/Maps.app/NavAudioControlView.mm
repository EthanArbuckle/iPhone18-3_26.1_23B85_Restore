@interface NavAudioControlView
- (CGSize)intrinsicContentSize;
- (NavAudioControlView)initWithDelegate:(id)delegate;
- (NavAudioControlViewDelegate)delegate;
- (double)containerTopPositionWhenCollapsedForAudioType:(unint64_t)type;
- (double)expandedHeight;
- (double)highlightTopPosition;
- (id)_accessibilityIdenfifierPrefixForAudioType:(unint64_t)type;
- (id)_accessibilityTextForAudioType:(unint64_t)type;
- (id)_accessibilityUserInputLabelsForAudioType:(unint64_t)type;
- (id)_imageForAudioType:(unint64_t)type;
- (id)createBackgroundView;
- (id)createButton;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_animateContentUpdate;
- (void)_handleEvent:(id)event;
- (void)_pressedAudioTypeButton:(id)button;
- (void)_rescheduleCollapse;
- (void)_selectAudioType:(unint64_t)type;
- (void)_setup;
- (void)_updateButtons;
- (void)_updateContent;
- (void)didMoveToWindow;
- (void)setAvailableAudioTypes:(id)types;
- (void)setCurrentAudioType:(unint64_t)type;
- (void)setExpanded:(BOOL)expanded;
@end

@implementation NavAudioControlView

- (void)didMoveToWindow
{
  v7.receiver = self;
  v7.super_class = NavAudioControlView;
  [(NavAudioControlView *)&v7 didMoveToWindow];
  window = [(NavAudioControlView *)self window];
  v4 = [window conformsToProtocol:&OBJC_PROTOCOL___EventSourceHandler];

  if (v4)
  {
    window2 = [(NavAudioControlView *)self window];
    eventTap = [(NavAudioControlView *)self eventTap];
    [window2 _maps_registerEventTap:eventTap];
  }
}

- (NavAudioControlViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_handleEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy type])
  {
    if ([eventCopy type] == 7 && self->_timer)
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
    window = [(NavAudioControlView *)self window];
    v6 = [eventCopy touchesForWindow:window];

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
          v12 = [(NavAudioControlView *)self hitTest:eventCopy withEvent:?];

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

  containerViewTopConstraint = [(NavAudioControlView *)self containerViewTopConstraint];
  [containerViewTopConstraint setConstant:v3];

  [(NavAudioControlView *)self highlightTopPosition];
  v7 = v6;
  highlightViewTopConstraint = [(NavAudioControlView *)self highlightViewTopConstraint];
  [highlightViewTopConstraint setConstant:v7];

  if ([(NavAudioControlView *)self isExpanded])
  {
    v9 = 1.0;
  }

  else
  {
    v9 = 0.0;
  }

  highlightView = [(NavAudioControlView *)self highlightView];
  [highlightView setAlpha:v9];
}

- (double)highlightTopPosition
{
  availableAudioTypes = [(NavAudioControlView *)self availableAudioTypes];
  v4 = [NSNumber numberWithUnsignedInteger:self->_currentAudioType];
  v5 = [availableAudioTypes indexOfObject:v4];

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

- (double)containerTopPositionWhenCollapsedForAudioType:(unint64_t)type
{
  availableAudioTypes = [(NavAudioControlView *)self availableAudioTypes];
  v5 = [NSNumber numberWithUnsignedInteger:type];
  v6 = [availableAudioTypes indexOfObject:v5];

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

- (void)setCurrentAudioType:(unint64_t)type
{
  if (self->_currentAudioType != type)
  {
    v5 = sub_100090D58();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      currentAudioType = self->_currentAudioType;
      v10 = 134218240;
      v11 = currentAudioType;
      v12 = 2048;
      typeCopy = type;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Changing audio type from %lu to %lu", &v10, 0x16u);
    }

    self->_currentAudioType = type;
    [(NavAudioControlView *)self setExpanded:0];
    [(NavAudioControlView *)self containerTopPositionWhenCollapsedForAudioType:type];
    v8 = v7;
    containerViewTopConstraint = [(NavAudioControlView *)self containerViewTopConstraint];
    [containerViewTopConstraint setConstant:v8];
  }
}

- (void)setAvailableAudioTypes:(id)types
{
  typesCopy = types;
  v5 = self->_availableAudioTypes;
  v6 = typesCopy;
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
      containerViewTopConstraint = [(NavAudioControlView *)self containerViewTopConstraint];
      [containerViewTopConstraint setConstant:v12];

      [(NavAudioControlView *)self invalidateIntrinsicContentSize];
    }
  }
}

- (double)expandedHeight
{
  availableAudioTypes = [(NavAudioControlView *)self availableAudioTypes];
  v4 = [availableAudioTypes count];

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
  delegate = [(NavAudioControlView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(NavAudioControlView *)self delegate];
    [delegate2 audioControlView:self willChangeSizeWithAnimation:v3];
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

- (void)setExpanded:(BOOL)expanded
{
  if (self->_expanded != expanded)
  {
    expandedCopy = expanded;
    v5 = sub_100090D58();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      goto LABEL_9;
    }

    selfCopy = self;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(NavAudioControlView *)selfCopy performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v8, selfCopy, v10];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v8, selfCopy];
LABEL_8:

    expanded = self->_expanded;
    *buf = 138543874;
    v15 = selfCopy;
    v16 = 1024;
    expandedCopy2 = expanded;
    v18 = 1024;
    v19 = expandedCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] Changing expansion from %d to %d", buf, 0x18u);

LABEL_9:
    self->_expanded = expandedCopy;
    [(NavAudioControlView *)self _animateContentUpdate];
    if (expandedCopy)
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

- (void)_selectAudioType:(unint64_t)type
{
  v5 = sub_100090D58();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_10;
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(NavAudioControlView *)selfCopy performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v8, selfCopy, v10];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v8, selfCopy];
LABEL_8:

LABEL_10:
    *buf = 138543618;
    v16 = selfCopy;
    v17 = 2048;
    typeCopy = type;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] Changing audioType to %lu", buf, 0x16u);
  }

  self->_currentAudioType = type;
  delegate = [(NavAudioControlView *)self delegate];
  [delegate audioControlView:self didSelectAudioType:self->_currentAudioType];

  currentAudioType = self->_currentAudioType;
  if (currentAudioType <= 2)
  {
    [GEOAPPortal captureUserAction:dword_1012160C0[currentAudioType] target:[(NavAudioControlView *)self analyticsTarget] value:0];
  }

  +[MapsAnalyticStateProvider updateSettingsInformation];
  v14 = +[NavigationFeedbackCollector sharedFeedbackCollector];
  [v14 updateAudioPreferences];
}

- (void)_pressedAudioTypeButton:(id)button
{
  buttonCopy = button;
  availableAudioTypes = [(NavAudioControlView *)self availableAudioTypes];
  v5 = [availableAudioTypes count];

  if (v5 >= 2)
  {
    availableAudioTypes2 = [(NavAudioControlView *)self availableAudioTypes];
    v7 = [availableAudioTypes2 count];

    if (v7 == 2)
    {
      availableAudioTypes3 = [(NavAudioControlView *)self availableAudioTypes];
      firstObject = [availableAudioTypes3 firstObject];
      v10 = [NSNumber numberWithUnsignedInteger:self->_currentAudioType];
      v11 = [firstObject isEqual:v10];

      availableAudioTypes4 = [(NavAudioControlView *)self availableAudioTypes];
      v13 = availableAudioTypes4;
      if (v11)
      {
        [availableAudioTypes4 lastObject];
      }

      else
      {
        [availableAudioTypes4 firstObject];
      }
      v15 = ;
      -[NavAudioControlView _selectAudioType:](self, "_selectAudioType:", [v15 unsignedIntegerValue]);

      [(NavAudioControlView *)self _animateContentUpdate];
    }

    else
    {
      if ([(NavAudioControlView *)self isExpanded])
      {
        v14 = [buttonCopy tag];
        if (self->_currentAudioType != v14)
        {
          [(NavAudioControlView *)self _selectAudioType:v14];
        }
      }

      [(NavAudioControlView *)self setExpanded:[(NavAudioControlView *)self isExpanded]^ 1];
    }
  }
}

- (id)_accessibilityUserInputLabelsForAudioType:(unint64_t)type
{
  switch(type)
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

- (id)_accessibilityTextForAudioType:(unint64_t)type
{
  if (type <= 2)
  {
    v4 = *(&off_101652AD0 + type);
    v5 = +[NSBundle mainBundle];
    v3 = [v5 localizedStringForKey:v4 value:@"localized string not found" table:0];
  }

  return v3;
}

- (id)_accessibilityIdenfifierPrefixForAudioType:(unint64_t)type
{
  v3 = @"AllGuidance";
  if (type == 1)
  {
    v3 = @"AlertsOnly";
  }

  if (type == 2)
  {
    return @"NoGuidance";
  }

  else
  {
    return v3;
  }
}

- (id)_imageForAudioType:(unint64_t)type
{
  switch(type)
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
  imageFlippedForRightToLeftLayoutDirection = [v5 imageFlippedForRightToLeftLayoutDirection];

  return imageFlippedForRightToLeftLayoutDirection;
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

        unsignedIntegerValue = [*(*(&v36 + 1) + 8 * i) unsignedIntegerValue];
        v9 = +[UIButtonConfiguration borderlessButtonConfiguration];
        [v9 setContentInsets:{NSDirectionalEdgeInsetsZero.top, leading, bottom, trailing}];
        preferredSymbolConfigurationForImage = [(NavAudioControlView *)self preferredSymbolConfigurationForImage];
        [v9 setPreferredSymbolConfigurationForImage:preferredSymbolConfigurationForImage];

        v11 = [(NavAudioControlView *)self _imageForAudioType:unsignedIntegerValue];
        [v9 setImage:v11];

        createButton = [(NavAudioControlView *)self createButton];
        [(NSArray *)v34 addObject:createButton];
        [createButton setTranslatesAutoresizingMaskIntoConstraints:0];
        [createButton setTag:unsignedIntegerValue];
        [createButton setConfiguration:v9];
        traitOverrides = [createButton traitOverrides];
        [traitOverrides setLayoutDirection:0];

        v14 = [(NavAudioControlView *)self _accessibilityTextForAudioType:unsignedIntegerValue];
        [createButton setAccessibilityLabel:v14];

        v15 = [(NavAudioControlView *)self _accessibilityIdenfifierPrefixForAudioType:unsignedIntegerValue];
        v16 = [v15 stringByAppendingString:@"Button"];
        [createButton setAccessibilityIdentifier:v16];

        v17 = [(NavAudioControlView *)self _accessibilityUserInputLabelsForAudioType:unsignedIntegerValue];
        [createButton setAccessibilityUserInputLabels:v17];

        [createButton addTarget:self action:"_pressedAudioTypeButton:" forControlEvents:64];
        [(UIView *)self->_containerView addSubview:createButton];
        leadingAnchor = [createButton leadingAnchor];
        leadingAnchor2 = [(UIView *)self->_containerView leadingAnchor];
        v20 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
        [v3 addObject:v20];

        trailingAnchor = [createButton trailingAnchor];
        trailingAnchor2 = [(UIView *)self->_containerView trailingAnchor];
        v23 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
        [v3 addObject:v23];

        topAnchor = [createButton topAnchor];
        topAnchor2 = [(UIView *)self->_containerView topAnchor];
        [(NavAudioControlView *)self containerTopPositionWhenCollapsedForAudioType:unsignedIntegerValue];
        v27 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:-v26];
        [v3 addObject:v27];

        heightAnchor = [createButton heightAnchor];
        [(NavAudioControlView *)self collapsedDimension];
        v29 = [heightAnchor constraintEqualToConstant:?];
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
  layer = [(UIView *)self->_maps_maskView layer];
  [layer setCornerRadius:v8 * 0.5];

  [(UIView *)self->_maps_maskView setAccessibilityIdentifier:@"NavAudioControlMaskView"];
  [(NavAudioControlView *)self addSubview:self->_maps_maskView];
  leadingAnchor = [(UIView *)self->_maps_maskView leadingAnchor];
  leadingAnchor2 = [(NavAudioControlView *)self leadingAnchor];
  v12 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v4 addObject:v12];

  trailingAnchor = [(UIView *)self->_maps_maskView trailingAnchor];
  trailingAnchor2 = [(NavAudioControlView *)self trailingAnchor];
  v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v4 addObject:v15];

  topAnchor = [(UIView *)self->_maps_maskView topAnchor];
  topAnchor2 = [(NavAudioControlView *)self topAnchor];
  v18 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v4 addObject:v18];

  bottomAnchor = [(UIView *)self->_maps_maskView bottomAnchor];
  bottomAnchor2 = [(NavAudioControlView *)self bottomAnchor];
  v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v4 addObject:v21];

  v22 = objc_opt_new();
  containerView = self->_containerView;
  self->_containerView = v22;

  [(UIView *)self->_containerView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_containerView setAccessibilityIdentifier:@"NavAudioControlContainerView"];
  [(UIView *)self->_maps_maskView addSubview:self->_containerView];
  v24 = self->_containerView;
  createBackgroundView = [(NavAudioControlView *)self createBackgroundView];
  [createBackgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
  if ([(NavAudioControlView *)self backgroundSupportsDirectMasking])
  {
    [(NavAudioControlView *)self collapsedDimension];
    v27 = v26;
    layer2 = [createBackgroundView layer];
    [layer2 setCornerRadius:v27 * 0.5];

    [(NavAudioControlView *)self insertSubview:createBackgroundView atIndex:0];
    LODWORD(v29) = 1148846080;
    v30 = [createBackgroundView _maps_constraintsEqualToEdgesOfView:self->_maps_maskView priority:v29];
    allConstraints = [v30 allConstraints];
    [v4 addObjectsFromArray:allConstraints];
  }

  else
  {
    [(NavAudioControlView *)self collapsedDimension];
    v33 = v32;
    layer3 = [(NavAudioControlView *)self layer];
    [layer3 setCornerRadius:v33 * 0.5];

    layer4 = [(NavAudioControlView *)self layer];
    LODWORD(v36) = 1045220557;
    [layer4 setShadowOpacity:v36];

    layer5 = [(NavAudioControlView *)self layer];
    [layer5 setShadowOffset:{CGSizeZero.width, CGSizeZero.height}];

    layer6 = [(NavAudioControlView *)self layer];
    [layer6 setShadowRadius:1.0];

    layer7 = [(NavAudioControlView *)self layer];
    [layer7 setShadowPathIsBounds:1];

    [(UIView *)v24 addSubview:createBackgroundView];
    v30 = [createBackgroundView _maps_constraintsForCenteringInView:v24];
    [v4 addObjectsFromArray:v30];
  }

  topAnchor3 = [(UIView *)self->_containerView topAnchor];
  topAnchor4 = [(NavAudioControlView *)self topAnchor];
  v42 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  containerViewTopConstraint = self->_containerViewTopConstraint;
  self->_containerViewTopConstraint = v42;

  leadingAnchor3 = [(UIView *)self->_containerView leadingAnchor];
  leadingAnchor4 = [(NavAudioControlView *)self leadingAnchor];
  v46 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  [v4 addObject:v46];

  trailingAnchor3 = [(UIView *)self->_containerView trailingAnchor];
  trailingAnchor4 = [(NavAudioControlView *)self trailingAnchor];
  v49 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  [v4 addObject:v49];

  [v4 addObject:self->_containerViewTopConstraint];
  heightAnchor = [(UIView *)self->_containerView heightAnchor];
  [(NavAudioControlView *)self fullHeight];
  v51 = [heightAnchor constraintEqualToConstant:?];
  [v4 addObject:v51];

  v52 = objc_opt_new();
  highlightView = self->_highlightView;
  self->_highlightView = v52;

  [(UIView *)self->_highlightView setTranslatesAutoresizingMaskIntoConstraints:0];
  v54 = +[UIColor tertiarySystemFillColor];
  [(UIView *)self->_highlightView setBackgroundColor:v54];

  [(NavAudioControlView *)self highlightWidth];
  v56 = v55;
  layer8 = [(UIView *)self->_highlightView layer];
  [layer8 setCornerRadius:v56 * 0.5];

  [(UIView *)v24 addSubview:self->_highlightView];
  topAnchor5 = [(UIView *)self->_highlightView topAnchor];
  topAnchor6 = [(UIView *)v24 topAnchor];
  v60 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
  highlightViewTopConstraint = self->_highlightViewTopConstraint;
  self->_highlightViewTopConstraint = v60;

  widthAnchor = [(UIView *)self->_highlightView widthAnchor];
  [(NavAudioControlView *)self highlightWidth];
  v63 = [widthAnchor constraintEqualToConstant:?];
  [v4 addObject:v63];

  centerXAnchor = [(UIView *)self->_highlightView centerXAnchor];
  centerXAnchor2 = [(UIView *)v24 centerXAnchor];
  v66 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v4 addObject:v66];

  [v4 addObject:self->_highlightViewTopConstraint];
  heightAnchor2 = [(UIView *)self->_highlightView heightAnchor];
  [(NavAudioControlView *)self highlightWidth];
  v68 = [heightAnchor2 constraintEqualToConstant:?];
  [v4 addObject:v68];

  [NSLayoutConstraint activateConstraints:v4];
  [(NavAudioControlView *)self _updateContent];

  objc_destroyWeak(&v73);
  objc_destroyWeak(&location);
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v26.receiver = self;
  v26.super_class = NavAudioControlView;
  v7 = [(NavAudioControlView *)&v26 hitTest:event withEvent:?];
  if (v7 == self)
  {
    containerView = [(NavAudioControlView *)self containerView];
    [containerView convertPoint:self fromView:{x, y}];
    v11 = v10;

    if (v11 <= 0.0)
    {
      firstObject = [(NSArray *)self->_buttons firstObject];
      goto LABEL_17;
    }

    containerView2 = [(NavAudioControlView *)self containerView];
    [containerView2 frame];
    Height = CGRectGetHeight(v29);

    if (v11 >= Height)
    {
      firstObject = [(NSArray *)self->_buttons lastObject];
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

  firstObject = v7;
LABEL_17:
  v20 = firstObject;
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

- (NavAudioControlView)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v9.receiver = self;
  v9.super_class = NavAudioControlView;
  v5 = [(NavAudioControlView *)&v9 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    [(NavAudioControlView *)v5 setAccessibilityIdentifier:v7];

    objc_storeWeak(&v5->_delegate, delegateCopy);
    [(NavAudioControlView *)v5 _setup];
  }

  return v5;
}

@end