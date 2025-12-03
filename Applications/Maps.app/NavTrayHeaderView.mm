@interface NavTrayHeaderView
- (BOOL)_isResumeRouteState;
- (CGSize)intrinsicContentSize;
- (NavTrayHeaderView)initWithDelegate:(id)delegate metrics:(id)metrics;
- (NavTrayHeaderViewDelegate)delegate;
- (int64_t)_textAlignmentForCurrentLanguage;
- (unint64_t)state;
- (void)_pressedHeaderView;
- (void)_updateContentAndReloadStackView:(BOOL)view;
- (void)_updateFonts;
- (void)_updateLayout;
- (void)applyArrivalState;
- (void)clearAnimations;
- (void)didTapShareETAContactButton;
- (void)didTapShareETAHintButton;
- (void)didTapShareETASharingButton;
- (void)didUpdateMetricsViewSize;
- (void)didUpdateSize;
- (void)resetContent;
- (void)setETA:(id)a;
- (void)setExpansionProgress:(double)progress;
- (void)setShareETAModel:(id)model;
- (void)setWaldoModel:(id)model;
- (void)showRecalculating;
- (void)stackViewDidChangeLayout:(id)layout;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation NavTrayHeaderView

- (unint64_t)state
{
  if ([(NavTrayHeaderView *)self _isArrivalState]|| [(NavTrayHeaderView *)self _isResumeRouteState])
  {
    return 3;
  }

  if (self->_isRerouting)
  {
    return 2;
  }

  return self->_hasReceivedGuidance;
}

- (void)_updateLayout
{
  _isResumeRouteState = [(NavTrayHeaderView *)self _isResumeRouteState];
  v4 = [(NavTrayHeaderView *)self _alternateButtonTypeContains:1];
  v5 = [(NavTrayHeaderView *)self _alternateButtonTypeContains:2];
  v6 = [(NavTrayHeaderView *)self _alternateButtonTypeContains:16];
  v7 = v6;
  v8 = 0;
  if ((_isResumeRouteState & 1) == 0 && (v6 & 1) == 0)
  {
    v8 = ![(NavTrayHeaderView *)self _isParkingRouteState]&& [(NavTrayHeaderView *)self showFeedbackView];
  }

  traitCollection = [(NavTrayHeaderView *)self traitCollection];
  isLuminanceReduced = [traitCollection isLuminanceReduced];

  if (isLuminanceReduced)
  {
    v11 = 0.300000012;
  }

  else
  {
    v11 = 1.0;
  }

  state = [(NavTrayHeaderView *)self state];
  if (state >= 3)
  {
    if (state != 3)
    {
      goto LABEL_23;
    }

    [(NavMetricsView *)self->_metricsView setAlpha:0.0];
    p_nextStopButton = &self->_nextStopButton;
    [(Truncatable *)self->_nextStopButton setAlpha:0.0];
    p_findMyButton = &self->_findMyButton;
    [(Truncatable *)self->_findMyButton setAlpha:0.0];
    p_walkingButton = &self->_walkingButton;
    [(Truncatable *)self->_walkingButton setAlpha:0.0];
    [(Truncatable *)self->_customRouteButton setAlpha:0.0];
    if (_isResumeRouteState)
    {
      p_customRouteButton = &self->_nextStopButton;
      p_nextStopButton = &self->_findMyButton;
    }

    else
    {
      if ((v4 & 1) == 0)
      {
        if ((v5 & 1) == 0)
        {
          p_customRouteButton = &self->_customRouteButton;
          if (!v7)
          {
            goto LABEL_19;
          }

          goto LABEL_18;
        }

        p_customRouteButton = &self->_walkingButton;
LABEL_17:
        p_walkingButton = &self->_customRouteButton;
LABEL_18:
        [(Truncatable *)*p_customRouteButton setAlpha:v11];
        [(AxisAdjustingStackView *)self->_endRouteButtonStackView insertArrangedTruncatableSubview:*p_customRouteButton atIndex:0];
        [(AxisAdjustingStackView *)self->_endRouteButtonStackView removeArrangedTruncatableSubview:*p_nextStopButton];
        [(Truncatable *)*p_nextStopButton removeFromSuperview];
        [(AxisAdjustingStackView *)self->_endRouteButtonStackView removeArrangedTruncatableSubview:*p_findMyButton];
        [(Truncatable *)*p_findMyButton removeFromSuperview];
        [(AxisAdjustingStackView *)self->_endRouteButtonStackView removeArrangedTruncatableSubview:*p_walkingButton];
        [(Truncatable *)*p_walkingButton removeFromSuperview];
LABEL_19:
        v18 = 0.0;
        if (v8)
        {
          v18 = v11;
        }

        [(NavTrayFeedbackView *)self->_feedbackView setAlpha:v18];
        v13 = &OBJC_IVAR___NavTrayHeaderView__pauseButton;
        goto LABEL_22;
      }

      p_customRouteButton = &self->_findMyButton;
    }

    p_findMyButton = &self->_walkingButton;
    goto LABEL_17;
  }

  v13 = &OBJC_IVAR___NavTrayHeaderView__metricsView;
  v11 = 1.0;
LABEL_22:
  [*(&self->super.super.super.isa + *v13) setAlpha:v11];
LABEL_23:
  state2 = [(NavTrayHeaderView *)self state];
  v20 = state2 != 3;
  v21 = state2 == 3;
  v22 = 0.0;
  if (state2 == 3)
  {
    v22 = 1.0;
  }

  [(UIView *)self->_arrivedContainerView setAlpha:v22];
  [(NSLayoutConstraint *)self->_arrivedContainerTopConstraint setActive:v21];
  [(NSLayoutConstraint *)self->_feedbackViewBottomConstraint setActive:v8];
  [(NSLayoutConstraint *)self->_endRouteButtonStackViewTopConstraint setActive:v8 ^ 1];
  [(NSLayoutConstraint *)self->_metricsViewBottomConstraint setActive:v20];
  [(NavMetricsView *)self->_metricsView invalidateIntrinsicContentSize];

  [(NavTrayHeaderView *)self invalidateIntrinsicContentSize];
}

- (BOOL)_isResumeRouteState
{
  if ([(NavTrayHeaderView *)self _alternateButtonTypeContains:4])
  {
    return 1;
  }

  return [(NavTrayHeaderView *)self _alternateButtonTypeContains:8];
}

- (NavTrayHeaderViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)stackViewDidChangeLayout:(id)layout
{
  [(NavTrayHeaderView *)self setNeedsLayout];
  [(NavTrayHeaderView *)self invalidateIntrinsicContentSize];
  delegate = [(NavTrayHeaderView *)self delegate];
  [delegate updatedHeight];
}

- (void)setExpansionProgress:(double)progress
{
  if (vabdd_f64(self->_expansionProgress, progress) > 2.22044605e-16)
  {
    self->_expansionProgress = progress;
    [(NavMetricsView *)self->_metricsView setExpansionProgress:?];
  }
}

- (CGSize)intrinsicContentSize
{
  if ([(NavTrayHeaderView *)self _isArrivalState])
  {
    v3 = UIViewNoIntrinsicMetric;
    v4 = UIViewNoIntrinsicMetric;
  }

  else
  {
    metricsView = self->_metricsView;

    [(NavMetricsView *)metricsView intrinsicContentSize];
  }

  result.height = v4;
  result.width = v3;
  return result;
}

- (void)_pressedHeaderView
{
  if (![(NavTrayHeaderView *)self _isArrivalState])
  {
    delegate = [(NavTrayHeaderView *)self delegate];
    [delegate pressedHeaderView];
  }
}

- (void)clearAnimations
{
  layer = [(NavTrayHeaderView *)self layer];
  [layer removeAllAnimations];

  layer2 = [(NavMetricsView *)self->_metricsView layer];
  [layer2 removeAllAnimations];

  layer3 = [(UIView *)self->_arrivedContainerView layer];
  [layer3 removeAllAnimations];
}

- (void)resetContent
{
  v3 = sub_100824934();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Resetting content", &v4, 0xCu);
  }

  self->_arrivalState = 0;
  self->_alternateButtonTypes = 0;
  self->_showFeedbackView = 0;
  [(AxisAdjustingStackView *)self->_endRouteButtonStackView invalidateStackViewAxis];
}

- (void)applyArrivalState
{
  v3 = sub_100824934();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v27 = 134349056;
    *&v27[4] = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Applying arrival state", v27, 0xCu);
  }

  _isResumeRouteState = [(NavTrayHeaderView *)self _isResumeRouteState];
  v5 = sub_100824934();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (_isResumeRouteState)
  {
    if (v6)
    {
      *v27 = 134349056;
      *&v27[4] = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Configuring pause button", v27, 0xCu);
    }

    v7 = &OBJC_IVAR___NavTrayHeaderView__pauseButton;
    v8 = &OBJC_IVAR___NavTrayHeaderView__endButton;
  }

  else
  {
    if (v6)
    {
      *v27 = 134349056;
      *&v27[4] = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Configuring end route button", v27, 0xCu);
    }

    v7 = &OBJC_IVAR___NavTrayHeaderView__endButton;
    v8 = &OBJC_IVAR___NavTrayHeaderView__pauseButton;
  }

  v9 = *v8;
  [(AxisAdjustingStackView *)self->_endRouteButtonStackView removeArrangedTruncatableSubview:*(&self->super.super.super.isa + v9)];
  [*(&self->super.super.super.isa + v9) removeFromSuperview];
  [(AxisAdjustingStackView *)self->_endRouteButtonStackView addArrangedTruncatableSubview:*(&self->super.super.super.isa + *v7)];
  currentAlternateButtonType = self->_currentAlternateButtonType;
  if (([(NavTrayHeaderView *)self alternateButtonTypes]& 4) != 0)
  {
    v11 = sub_100824934();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
LABEL_19:

      v13 = 4;
LABEL_20:
      self->_currentAlternateButtonType = v13;
      goto LABEL_21;
    }

    *v27 = 134349056;
    *&v27[4] = self;
    v12 = "[%{public}p] Configuring resume button";
LABEL_18:
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, v12, v27, 0xCu);
    goto LABEL_19;
  }

  if (([(NavTrayHeaderView *)self alternateButtonTypes]& 8) != 0)
  {
    v16 = +[MNNavigationService sharedService];
    arrivalChargingStationInfo = [v16 arrivalChargingStationInfo];
    [arrivalChargingStationInfo chargingTime];
    v19 = v18;

    v11 = sub_100824934();
    v20 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
    if (v19 > 0.0)
    {
      if (v20)
      {
        *v27 = 134349056;
        *&v27[4] = self;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[%{public}p] Configuring other stations button", v27, 0xCu);
      }

      v13 = 3;
      goto LABEL_20;
    }

    if (!v20)
    {
      goto LABEL_19;
    }

    *v27 = 134349056;
    *&v27[4] = self;
    v12 = "[%{public}p] Configuring resume from charging button";
    goto LABEL_18;
  }

  if (([(NavTrayHeaderView *)self alternateButtonTypes]& 2) != 0)
  {
    v21 = sub_100824934();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *v27 = 134349056;
      *&v27[4] = self;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "[%{public}p] Configuring walking button", v27, 0xCu);
    }

    self->_currentAlternateButtonType = 6;
    v22 = +[NavigationFeedbackCollector sharedFeedbackCollector];
    [v22 didSuggestWalkingRoute];
    goto LABEL_43;
  }

  if (([(NavTrayHeaderView *)self alternateButtonTypes]& 1) != 0)
  {
    v25 = sub_100824934();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *v27 = 134349056;
      *&v27[4] = self;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "[%{public}p] Configuring find my button", v27, 0xCu);
    }

    self->_currentAlternateButtonType = 5;
    v22 = +[NavigationFeedbackCollector sharedFeedbackCollector];
    [v22 didSuggestFindMy];
LABEL_43:

    goto LABEL_21;
  }

  if (([(NavTrayHeaderView *)self alternateButtonTypes]& 0x10) != 0)
  {
    v26 = sub_100824934();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *v27 = 134349056;
      *&v27[4] = self;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "[%{public}p] Configuring custom route button", v27, 0xCu);
    }

    v13 = 7;
    goto LABEL_20;
  }

  self->_currentAlternateButtonType = 0;
LABEL_21:
  if (self->_arrivalState)
  {
    v14 = self->_currentAlternateButtonType;
    if (currentAlternateButtonType != v14)
    {
      switch(v14)
      {
        case 5uLL:
          v15 = 125;
          goto LABEL_38;
        case 7uLL:
          delegate = [(NavTrayHeaderView *)self delegate];
          mapItemMuid = [delegate mapItemMuid];
          [GEOAPPortal captureUserAction:45 target:136 value:mapItemMuid];

          break;
        case 6uLL:
          v15 = 124;
LABEL_38:
          [GEOAPPortal captureUserAction:45 target:v15 value:0, *v27];
          break;
      }
    }
  }

  [(NavTrayHeaderView *)self _updateContentAndReloadStackView:0, *v27];
  [(NavTrayHeaderView *)self _updateLayout];
}

- (void)showRecalculating
{
  if (![(NavTrayHeaderView *)self _isArrivalState])
  {
    self->_isRerouting = 1;

    [(NavTrayHeaderView *)self setETA:0];
  }
}

- (void)_updateContentAndReloadStackView:(BOOL)view
{
  v4 = sub_100824934();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    selfCopy6 = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] Updating content", buf, 0xCu);
  }

  state = [(NavTrayHeaderView *)self state];
  v6 = &OBJC_IVAR___FlyoverContainerViewController__statusView;
  if (state > 1)
  {
    if (state == 2)
    {
      v7 = sub_100824934();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 134349056;
        selfCopy6 = self;
        v8 = "[%{public}p] Configuring rerouting state";
        goto LABEL_24;
      }

      goto LABEL_38;
    }

    if (state != 3)
    {
      goto LABEL_39;
    }

    v7 = +[MNNavigationService sharedService];
    route = [v7 route];
    arrivalInfo = [v7 arrivalInfo];
    destination = [arrivalInfo destination];
    isArrivedAtEVCharger = [v7 isArrivedAtEVCharger];
    arrivalChargingStationInfo = [v7 arrivalChargingStationInfo];
    v12 = +[MNNavigationService sharedService];
    activeNavTrayGuidanceEvent = [v12 activeNavTrayGuidanceEvent];

    v13 = sub_100824934();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      arrivalState = self->_arrivalState;
      [destination uniqueID];
      v16 = v15 = destination;
      *buf = 134349826;
      selfCopy6 = self;
      v64 = 2048;
      v65 = arrivalState;
      v66 = 2112;
      v67 = v16;
      v68 = 2112;
      v69 = arrivalChargingStationInfo;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[%{public}p] Configuring arrived state: %ld with destination: %@, charging info: %@", buf, 0x2Au);

      destination = v15;
      v6 = &OBJC_IVAR___FlyoverContainerViewController__statusView;
    }

    if (!isArrivedAtEVCharger)
    {
      v30 = self->_arrivalState - 1;
      v31 = activeNavTrayGuidanceEvent;
      if (v30 >= 4 || (v32 = *(&off_10162B738 + v30), +[NSBundle mainBundle](NSBundle, "mainBundle"), v33 = arrivalChargingStationInfo, v34 = objc_claimAutoreleasedReturnValue(), [v34 localizedStringForKey:v32 value:@"localized string not found" table:0], v35 = objc_claimAutoreleasedReturnValue(), -[UILabel setText:](self->_arrivedTitleLabel, "setText:", v35), v35, v34, arrivalChargingStationInfo = v33, (self->_arrivalState - 1) > 1))
      {
        parkingDisplayName = [destination parkingDisplayName];
        [*(&self->super.super.super.isa + v6[692]) setText:parkingDisplayName];
        v36 = route;
      }

      else
      {
        v36 = route;
        parkingDisplayName = [route arrivalInstructionStringForLegIndex:{objc_msgSend(arrivalInfo, "legIndex")}];
        [*(&self->super.super.super.isa + v6[692]) setText:parkingDisplayName];
      }

      goto LABEL_37;
    }

    v58 = destination;
    v17 = sub_100824934();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG);

    if (v18)
    {
      route2 = [v7 route];
      legs = [route2 legs];
      v21 = [legs objectAtIndex:{objc_msgSend(arrivalInfo, "legIndex")}];

      v22 = sub_100824934();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        chargingInfo = [v58 chargingInfo];
        [v21 chargingStationInfo];
        v24 = v57 = v21;
        v25 = [route waypointDisplayInfoForWaypoint:v58];
        evChargingInfo = [v25 evChargingInfo];
        *buf = 134349826;
        selfCopy6 = self;
        v64 = 2112;
        v65 = chargingInfo;
        v66 = 2112;
        v67 = v24;
        v68 = 2112;
        v69 = evChargingInfo;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "[%{public}p] EV Charging info from waypoint: %@, leg: %@, displayInfo: %@", buf, 0x2Au);

        v21 = v57;
      }
    }

    [arrivalChargingStationInfo chargingTime];
    if (v27 <= 0.0)
    {
      title = +[NSBundle mainBundle];
      stringWithDefaultOptions = [title localizedStringForKey:@"Charged [Nav Tray Header Title]" value:@"localized string not found" table:0];
      v38 = [NSString stringWithFormat:stringWithDefaultOptions];
      [(UILabel *)self->_arrivedTitleLabel setText:v38];
    }

    else
    {
      if (!activeNavTrayGuidanceEvent)
      {
        v41 = +[NSBundle mainBundle];
        v42 = [v41 localizedStringForKey:@"Charging [Nav Tray Header Title]" value:@"localized string not found" table:0];
        [arrivalChargingStationInfo batteryPercentageAfterCharging];
        v44 = [NSString stringWithFormat:v42, v43];
        [(UILabel *)self->_arrivedTitleLabel setText:v44];

        [arrivalChargingStationInfo chargingTime];
        if (v45 > 0.0)
        {
LABEL_34:
          parkingDisplayName = +[NSBundle mainBundle];
          [parkingDisplayName localizedStringForKey:@"Charging [Nav Tray Header Subtitle]" value:@"localized string not found" table:0];
          v47 = v46 = arrivalChargingStationInfo;
          [v46 chargingTime];
          v49 = [NSString _navigation_stringWithSeconds:v48 abbreviated:1];
          v50 = [NSString stringWithFormat:v47, v49];
          [*(&self->super.super.super.isa + v6[692]) setText:v50];

          arrivalChargingStationInfo = v46;
LABEL_36:
          destination = v58;
          v36 = route;
          v31 = activeNavTrayGuidanceEvent;
          goto LABEL_37;
        }

LABEL_35:
        parkingDisplayName = +[NSBundle mainBundle];
        v56 = [parkingDisplayName localizedStringForKey:@"Charged [Nav Tray Header Subtitle]" value:@"localized string not found" table:0];
        v51 = +[MNNavigationService sharedService];
        stopAfterCharging = [v51 stopAfterCharging];
        [stopAfterCharging navDisplayName];
        v54 = v53 = arrivalChargingStationInfo;
        v55 = [NSString stringWithFormat:v56, v54];
        [*(&self->super.super.super.isa + v6[692]) setText:v55];

        arrivalChargingStationInfo = v53;
        goto LABEL_36;
      }

      title = [activeNavTrayGuidanceEvent title];
      stringWithDefaultOptions = [title stringWithDefaultOptions];
      [(UILabel *)self->_arrivedTitleLabel setText:stringWithDefaultOptions];
    }

    [arrivalChargingStationInfo chargingTime];
    if (v39 > 0.0)
    {
      if (activeNavTrayGuidanceEvent)
      {
        v31 = activeNavTrayGuidanceEvent;
        parkingDisplayName = [activeNavTrayGuidanceEvent detail];
        stringWithDefaultOptions2 = [parkingDisplayName stringWithDefaultOptions];
        [*(&self->super.super.super.isa + v6[692]) setText:stringWithDefaultOptions2];

        destination = v58;
        v36 = route;
LABEL_37:

        goto LABEL_38;
      }

      goto LABEL_34;
    }

    goto LABEL_35;
  }

  if (!state)
  {
    v7 = sub_100824934();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      selfCopy6 = self;
      v8 = "[%{public}p] Configuring loading state";
      goto LABEL_24;
    }

LABEL_38:

    goto LABEL_39;
  }

  if (state == 1)
  {
    v7 = sub_100824934();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      selfCopy6 = self;
      v8 = "[%{public}p] Configuring guidance state";
LABEL_24:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, v8, buf, 0xCu);
      goto LABEL_38;
    }

    goto LABEL_38;
  }

LABEL_39:
  [(UILabel *)self->_arrivedTitleLabel invalidateIntrinsicContentSize];
  [*(&self->super.super.super.isa + v6[692]) invalidateIntrinsicContentSize];
  [(NavMetricsView *)self->_metricsView invalidateIntrinsicContentSize];
  [(NavTrayHeaderView *)self invalidateIntrinsicContentSize];
}

- (void)didUpdateMetricsViewSize
{
  delegate = [(NavTrayHeaderView *)self delegate];
  [delegate updatedMetricsViewHeight];
}

- (void)didUpdateSize
{
  [(NavTrayHeaderView *)self invalidateIntrinsicContentSize];
  delegate = [(NavTrayHeaderView *)self delegate];
  [delegate updatedHeight];
}

- (void)didTapShareETAContactButton
{
  delegate = [(NavTrayHeaderView *)self delegate];
  [delegate didTapShareETAContactButton];
}

- (void)didTapShareETASharingButton
{
  delegate = [(NavTrayHeaderView *)self delegate];
  [delegate didTapShareETASharingButton];
}

- (void)didTapShareETAHintButton
{
  delegate = [(NavTrayHeaderView *)self delegate];
  [delegate didTapShareETAHintButton];
}

- (int64_t)_textAlignmentForCurrentLanguage
{
  v2 = +[NSBundle mainBundle];
  preferredLocalizations = [v2 preferredLocalizations];
  firstObject = [preferredLocalizations firstObject];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [&off_1016ECFB0 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    v8 = 2;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v12 != v7)
      {
        objc_enumerationMutation(&off_1016ECFB0);
      }

      if ([firstObject hasPrefix:*(*(&v11 + 1) + 8 * v9)])
      {
        break;
      }

      if (v6 == ++v9)
      {
        v6 = [&off_1016ECFB0 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v8 = 4;
  }

  return v8;
}

- (void)_updateFonts
{
  traitCollection = [(NavTrayHeaderView *)self traitCollection];
  v4 = [traitCollection _maps_traitCollectionWithMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
  v8 = [UIFont _maps_fontWithTextStyle:UIFontTextStyleTitle1 weight:v4 compatibleWithTraitCollection:UIFontWeightBold];

  traitCollection2 = [(NavTrayHeaderView *)self traitCollection];
  v6 = [traitCollection2 _maps_traitCollectionWithMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
  v7 = [UIFont _maps_fontWithTextStyle:UIFontTextStyleTitle3 weight:v6 compatibleWithTraitCollection:UIFontWeightRegular];

  [(UILabel *)self->_arrivedTitleLabel setFont:v8];
  [(MUFadingLabel *)self->_arrivedSubtitleLabel setFont:v7];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v14.receiver = self;
  v14.super_class = NavTrayHeaderView;
  [(NavTrayHeaderView *)&v14 traitCollectionDidChange:changeCopy];
  traitCollection = [(NavTrayHeaderView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];
  v8 = sub_10008FB5C(preferredContentSizeCategory, preferredContentSizeCategory2);

  if (v8)
  {
    [(NavTrayHeaderView *)self applyArrivalState];
    [(NavTrayHeaderView *)self _updateFonts];
  }

  traitCollection2 = [(NavTrayHeaderView *)self traitCollection];
  v10 = sub_100017FE8(changeCopy, traitCollection2);

  if (v10)
  {
    traitCollection3 = [(NavTrayHeaderView *)self traitCollection];
    isLuminanceReduced = [traitCollection3 isLuminanceReduced];

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100825D1C;
    v13[3] = &unk_101661B18;
    v13[4] = self;
    [UIView _maps_animateForAndromeda:isLuminanceReduced animations:v13];
  }
}

- (void)setWaldoModel:(id)model
{
  modelCopy = model;
  waldoAccessoryModel = [(NavMetricsView *)self->_metricsView waldoAccessoryModel];
  v6 = modelCopy;
  if (v6 | waldoAccessoryModel)
  {
    v8 = v6;
    v7 = [waldoAccessoryModel isEqual:v6];

    v6 = v8;
    if ((v7 & 1) == 0)
    {
      [(NavMetricsView *)self->_metricsView setWaldoAccessoryModel:v8];
      v6 = v8;
    }
  }
}

- (void)setShareETAModel:(id)model
{
  modelCopy = model;
  shareETAAccessoryModel = [(NavMetricsView *)self->_metricsView shareETAAccessoryModel];
  v6 = modelCopy;
  if (v6 | shareETAAccessoryModel)
  {
    v8 = v6;
    v7 = [shareETAAccessoryModel isEqual:v6];

    v6 = v8;
    if ((v7 & 1) == 0)
    {
      [(NavMetricsView *)self->_metricsView setShareETAAccessoryModel:v8];
      v6 = v8;
    }
  }
}

- (void)setETA:(id)a
{
  aCopy = a;
  v6 = self->_ETA;
  v7 = aCopy;
  if (v7 | v6)
  {
    v14 = v7;
    v8 = [v6 isEqual:v7];

    v7 = v14;
    if ((v8 & 1) == 0)
    {
      if (v14)
      {
        objc_storeStrong(&self->_previousAvailableETA, a);
      }

      v9 = self->_ETA;
      v10 = v14;
      v11 = v10;
      if (v9 == v10)
      {

        objc_storeStrong(&self->_ETA, a);
      }

      else
      {
        if (v9)
        {
          v12 = [(GuidanceETA *)v9 isVisuallyDistinctFromGuidanceETA:v10];

          objc_storeStrong(&self->_ETA, a);
          v7 = v14;
          if ((v12 & 1) == 0)
          {
            goto LABEL_15;
          }
        }

        else
        {

          objc_storeStrong(&self->_ETA, a);
          v7 = v14;
        }

        if (v7)
        {
          self->_isRerouting = 0;
          self->_hasReceivedGuidance = 1;
          arrivalBatteryCharge = [(GuidanceETA *)v11 arrivalBatteryCharge];
          self->_isInEVMode = arrivalBatteryCharge != 0;
        }

        [(NavMetricsView *)self->_metricsView setEta:v11];
        [(NavTrayHeaderView *)self _updateLayout];
      }

      v7 = v14;
    }
  }

LABEL_15:
}

- (NavTrayHeaderView)initWithDelegate:(id)delegate metrics:(id)metrics
{
  obj = delegate;
  metricsCopy = metrics;
  v157.receiver = self;
  v157.super_class = NavTrayHeaderView;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  height = [(NavTrayHeaderView *)&v157 initWithFrame:CGRectZero.origin.x, y, width, height];
  if (height)
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    [(NavTrayHeaderView *)height setAccessibilityIdentifier:v11];

    objc_storeWeak(&height->_delegate, obj);
    objc_storeStrong(&height->_metrics, metrics);
    [(NavTrayHeaderView *)height setUserInteractionEnabled:1];
    v137 = [[UITapGestureRecognizer alloc] initWithTarget:height action:"_pressedHeaderView"];
    [(NavTrayHeaderView *)height addGestureRecognizer:v137];
    v12 = [[_TtC4Maps14NavMetricsView alloc] initWithParentViewController:obj delegate:height eta:0 isCarPlay:0];
    metricsView = height->_metricsView;
    height->_metricsView = v12;

    [(NavMetricsView *)height->_metricsView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(NavMetricsView *)height->_metricsView setAccessibilityIdentifier:@"MinimizedStackView"];
    [(NavTrayHeaderView *)height addSubview:height->_metricsView];
    v14 = objc_opt_new();
    arrivedContainerView = height->_arrivedContainerView;
    height->_arrivedContainerView = v14;

    [(UIView *)height->_arrivedContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)height->_arrivedContainerView setAlpha:0.0];
    [(UIView *)height->_arrivedContainerView setAccessibilityIdentifier:@"ArrivedContainerView"];
    [(NavTrayHeaderView *)height addSubview:height->_arrivedContainerView];
    v16 = objc_opt_new();
    arrivedTitleLabel = height->_arrivedTitleLabel;
    height->_arrivedTitleLabel = v16;

    [(UILabel *)height->_arrivedTitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v18) = 1148846080;
    [(UILabel *)height->_arrivedTitleLabel setContentCompressionResistancePriority:1 forAxis:v18];
    [(UILabel *)height->_arrivedTitleLabel setAccessibilityIdentifier:@"ArrivedTitleLabel"];
    [(UILabel *)height->_arrivedTitleLabel setTextAlignment:1];
    v19 = [[MUFadingLabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    arrivedSubtitleLabel = height->_arrivedSubtitleLabel;
    height->_arrivedSubtitleLabel = v19;

    [(MUFadingLabel *)height->_arrivedSubtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v21) = 1148846080;
    [(MUFadingLabel *)height->_arrivedSubtitleLabel setContentCompressionResistancePriority:1 forAxis:v21];
    [(MUFadingLabel *)height->_arrivedSubtitleLabel setAccessibilityIdentifier:@"ArrivedSubtitleLabel"];
    v22 = +[UIColor secondaryLabelColor];
    [(MUFadingLabel *)height->_arrivedSubtitleLabel setTextColor:v22];

    [(MUFadingLabel *)height->_arrivedSubtitleLabel setNumberOfLines:2];
    [(MUFadingLabel *)height->_arrivedSubtitleLabel setTextAlignment:1];
    v23 = [UIStackView alloc];
    v159[0] = height->_arrivedTitleLabel;
    v159[1] = height->_arrivedSubtitleLabel;
    v24 = [NSArray arrayWithObjects:v159 count:2];
    v25 = [v23 initWithArrangedSubviews:v24];
    arrivedLabelsStackView = height->_arrivedLabelsStackView;
    height->_arrivedLabelsStackView = v25;

    [(UIStackView *)height->_arrivedLabelsStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)height->_arrivedLabelsStackView setAxis:1];
    [(UIStackView *)height->_arrivedLabelsStackView setDistribution:2];
    [(UIStackView *)height->_arrivedLabelsStackView setSpacing:2.0];
    [(UIStackView *)height->_arrivedLabelsStackView setAccessibilityIdentifier:@"ArrivedLabelsStackView"];
    [(UIView *)height->_arrivedContainerView addSubview:height->_arrivedLabelsStackView];
    v27 = [NavTrayFeedbackView alloc];
    WeakRetained = objc_loadWeakRetained(&height->_delegate);
    v29 = [(NavTrayFeedbackView *)v27 initWithDelegate:WeakRetained];
    feedbackView = height->_feedbackView;
    height->_feedbackView = v29;

    [(NavTrayFeedbackView *)height->_feedbackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)height->_arrivedContainerView addSubview:height->_feedbackView];
    [(NavTrayFeedbackView *)height->_feedbackView setAccessibilityIdentifier:@"FeedbackView"];
    objc_initWeak(&location, height);
    v31 = [_TtC4Maps13NavTrayButton alloc];
    v154[0] = _NSConcreteStackBlock;
    v154[1] = 3221225472;
    v154[2] = sub_10082737C;
    v154[3] = &unk_101661B98;
    objc_copyWeak(&v155, &location);
    v32 = [(NavTrayButton *)v31 initWithStyle:3 action:v154];
    nextStopButton = height->_nextStopButton;
    height->_nextStopButton = v32;

    [(Truncatable *)height->_nextStopButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(Truncatable *)height->_nextStopButton setAccessibilityIdentifier:@"NextStopButton"];
    v34 = [_TtC4Maps13NavTrayButton alloc];
    v152[0] = _NSConcreteStackBlock;
    v152[1] = 3221225472;
    v152[2] = sub_1008273D8;
    v152[3] = &unk_101661B98;
    objc_copyWeak(&v153, &location);
    v35 = [(NavTrayButton *)v34 initWithStyle:2 action:v152];
    otherStationsButton = height->_otherStationsButton;
    height->_otherStationsButton = v35;

    [(Truncatable *)height->_otherStationsButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(Truncatable *)height->_otherStationsButton setAccessibilityIdentifier:@"OtherStationsButton"];
    v37 = [_TtC4Maps13NavTrayButton alloc];
    v150[0] = _NSConcreteStackBlock;
    v150[1] = 3221225472;
    v150[2] = sub_100827434;
    v150[3] = &unk_101661B98;
    objc_copyWeak(&v151, &location);
    v38 = [(NavTrayButton *)v37 initWithStyle:1 action:v150];
    pauseButton = height->_pauseButton;
    height->_pauseButton = v38;

    [(Truncatable *)height->_pauseButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(Truncatable *)height->_pauseButton setAccessibilityIdentifier:@"PauseButton"];
    v40 = [_TtC4Maps13NavTrayButton alloc];
    v148[0] = _NSConcreteStackBlock;
    v148[1] = 3221225472;
    v148[2] = sub_100827490;
    v148[3] = &unk_101661B98;
    objc_copyWeak(&v149, &location);
    v41 = [(NavTrayButton *)v40 initWithStyle:0 action:v148];
    endButton = height->_endButton;
    height->_endButton = v41;

    [(Truncatable *)height->_endButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(Truncatable *)height->_endButton setAccessibilityIdentifier:@"EndButton"];
    v43 = [_TtC4Maps13NavTrayButton alloc];
    v146[0] = _NSConcreteStackBlock;
    v146[1] = 3221225472;
    v146[2] = sub_1008274EC;
    v146[3] = &unk_101661B98;
    objc_copyWeak(&v147, &location);
    v44 = [(NavTrayButton *)v43 initWithStyle:5 action:v146];
    walkingButton = height->_walkingButton;
    height->_walkingButton = v44;

    [(Truncatable *)height->_walkingButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(Truncatable *)height->_walkingButton setAccessibilityIdentifier:@"WalkingButton"];
    v46 = [_TtC4Maps13NavTrayButton alloc];
    v144[0] = _NSConcreteStackBlock;
    v144[1] = 3221225472;
    v144[2] = sub_100827548;
    v144[3] = &unk_101661B98;
    objc_copyWeak(&v145, &location);
    v47 = [(NavTrayButton *)v46 initWithStyle:4 action:v144];
    findMyButton = height->_findMyButton;
    height->_findMyButton = v47;

    [(Truncatable *)height->_findMyButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(Truncatable *)height->_findMyButton setAccessibilityIdentifier:@"FindMyButton"];
    v49 = [_TtC4Maps13NavTrayButton alloc];
    v142[0] = _NSConcreteStackBlock;
    v142[1] = 3221225472;
    v142[2] = sub_1008275A4;
    v142[3] = &unk_101661B98;
    objc_copyWeak(&v143, &location);
    v50 = [(NavTrayButton *)v49 initWithStyle:6 action:v142];
    customRouteButton = height->_customRouteButton;
    height->_customRouteButton = v50;

    [(Truncatable *)height->_customRouteButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(Truncatable *)height->_customRouteButton setAccessibilityIdentifier:@"CustomRouteButton"];
    v52 = [[AxisAdjustingStackView alloc] initWithArrangedTruncatableSubviews:&__NSArray0__struct];
    endRouteButtonStackView = height->_endRouteButtonStackView;
    height->_endRouteButtonStackView = v52;

    [(AxisAdjustingStackView *)height->_endRouteButtonStackView setDelegate:height];
    [(AxisAdjustingStackView *)height->_endRouteButtonStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(AxisAdjustingStackView *)height->_endRouteButtonStackView setDistribution:1];
    [(AxisAdjustingStackView *)height->_endRouteButtonStackView setAlignment:0];
    [(NavTrayMetrics *)height->_metrics actionButtonInterButtonPadding];
    [(AxisAdjustingStackView *)height->_endRouteButtonStackView setSpacing:?];
    [(AxisAdjustingStackView *)height->_endRouteButtonStackView setAccessibilityIdentifier:@"EndRouteButtonStackView"];
    LODWORD(v54) = 1148846080;
    [(AxisAdjustingStackView *)height->_endRouteButtonStackView setContentCompressionResistancePriority:1 forAxis:v54];
    [(UIView *)height->_arrivedContainerView addSubview:height->_endRouteButtonStackView];
    v55 = objc_opt_new();
    hairlineView = height->_hairlineView;
    height->_hairlineView = v55;

    [(UIView *)height->_hairlineView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)height->_hairlineView setHidden:1];
    [(NavTrayHeaderView *)height addSubview:height->_hairlineView];
    topAnchor = [(UIView *)height->_arrivedContainerView topAnchor];
    topAnchor2 = [(NavTrayHeaderView *)height topAnchor];
    [(NavTrayMetrics *)height->_metrics defaultVerticalPadding];
    v59 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:?];
    arrivedContainerTopConstraint = height->_arrivedContainerTopConstraint;
    height->_arrivedContainerTopConstraint = v59;

    topAnchor3 = [(AxisAdjustingStackView *)height->_endRouteButtonStackView topAnchor];
    bottomAnchor = [(NavTrayFeedbackView *)height->_feedbackView bottomAnchor];
    [(NavTrayMetrics *)height->_metrics actionButtonInterButtonPadding];
    v63 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:?];
    feedbackViewBottomConstraint = height->_feedbackViewBottomConstraint;
    height->_feedbackViewBottomConstraint = v63;

    topAnchor4 = [(AxisAdjustingStackView *)height->_endRouteButtonStackView topAnchor];
    bottomAnchor2 = [(UIStackView *)height->_arrivedLabelsStackView bottomAnchor];
    v67 = [topAnchor4 constraintEqualToAnchor:bottomAnchor2 constant:5.0];
    endRouteButtonStackViewTopConstraint = height->_endRouteButtonStackViewTopConstraint;
    height->_endRouteButtonStackViewTopConstraint = v67;

    bottomAnchor3 = [(NavMetricsView *)height->_metricsView bottomAnchor];
    bottomAnchor4 = [(NavTrayHeaderView *)height bottomAnchor];
    v71 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    metricsViewBottomConstraint = height->_metricsViewBottomConstraint;
    height->_metricsViewBottomConstraint = v71;

    v139 = objc_opt_new();
    trailingAnchor = [(NavMetricsView *)height->_metricsView trailingAnchor];
    trailingAnchor2 = [(NavTrayHeaderView *)height trailingAnchor];
    v75 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v139 addObject:v75];

    leadingAnchor = [(NavMetricsView *)height->_metricsView leadingAnchor];
    leadingAnchor2 = [(NavTrayHeaderView *)height leadingAnchor];
    v134 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v158[0] = v134;
    trailingAnchor3 = [(NavMetricsView *)height->_metricsView trailingAnchor];
    trailingAnchor4 = [(NavTrayHeaderView *)height trailingAnchor];
    v131 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v158[1] = v131;
    topAnchor5 = [(NavMetricsView *)height->_metricsView topAnchor];
    topAnchor6 = [(NavTrayHeaderView *)height topAnchor];
    v128 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
    v158[2] = v128;
    leadingAnchor3 = [(UIView *)height->_arrivedContainerView leadingAnchor];
    leadingAnchor4 = [(NavTrayHeaderView *)height leadingAnchor];
    [(NavTrayMetrics *)height->_metrics defaultHorizontalPadding];
    v125 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:?];
    v158[3] = v125;
    trailingAnchor5 = [(UIView *)height->_arrivedContainerView trailingAnchor];
    trailingAnchor6 = [(NavTrayHeaderView *)height trailingAnchor];
    [(NavTrayMetrics *)height->_metrics defaultHorizontalPadding];
    v122 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-v76];
    v158[4] = v122;
    bottomAnchor5 = [(UIView *)height->_arrivedContainerView bottomAnchor];
    bottomAnchor6 = [(NavTrayHeaderView *)height bottomAnchor];
    [(NavTrayMetrics *)height->_metrics defaultVerticalPadding];
    v119 = [bottomAnchor5 constraintLessThanOrEqualToAnchor:bottomAnchor6 constant:-v77];
    v158[5] = v119;
    topAnchor7 = [(UIStackView *)height->_arrivedLabelsStackView topAnchor];
    topAnchor8 = [(UIView *)height->_arrivedContainerView topAnchor];
    v116 = [topAnchor7 constraintEqualToAnchor:topAnchor8];
    v158[6] = v116;
    leadingAnchor5 = [(UIStackView *)height->_arrivedLabelsStackView leadingAnchor];
    leadingAnchor6 = [(UIView *)height->_arrivedContainerView leadingAnchor];
    [(NavTrayMetrics *)height->_metrics arrivedTitleContainerHorizontalPadding];
    v113 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:?];
    v158[7] = v113;
    trailingAnchor7 = [(UIStackView *)height->_arrivedLabelsStackView trailingAnchor];
    trailingAnchor8 = [(UIView *)height->_arrivedContainerView trailingAnchor];
    [(NavTrayMetrics *)height->_metrics arrivedTitleContainerHorizontalPadding];
    v110 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8 constant:-v78];
    v158[8] = v110;
    heightAnchor = [(NavTrayFeedbackView *)height->_feedbackView heightAnchor];
    [(NavTrayMetrics *)height->_metrics feedbackButtonHeight];
    v108 = [heightAnchor constraintGreaterThanOrEqualToConstant:?];
    v158[9] = v108;
    topAnchor9 = [(NavTrayFeedbackView *)height->_feedbackView topAnchor];
    bottomAnchor7 = [(UIStackView *)height->_arrivedLabelsStackView bottomAnchor];
    [(NavTrayMetrics *)height->_metrics feedbackViewTopPadding];
    v105 = [topAnchor9 constraintEqualToAnchor:bottomAnchor7 constant:?];
    v158[10] = v105;
    leadingAnchor7 = [(NavTrayFeedbackView *)height->_feedbackView leadingAnchor];
    leadingAnchor8 = [(UIView *)height->_arrivedContainerView leadingAnchor];
    v102 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
    v158[11] = v102;
    trailingAnchor9 = [(NavTrayFeedbackView *)height->_feedbackView trailingAnchor];
    trailingAnchor10 = [(UIView *)height->_arrivedContainerView trailingAnchor];
    v99 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10];
    v158[12] = v99;
    v158[13] = height->_feedbackViewBottomConstraint;
    v158[14] = height->_endRouteButtonStackViewTopConstraint;
    leadingAnchor9 = [(AxisAdjustingStackView *)height->_endRouteButtonStackView leadingAnchor];
    leadingAnchor10 = [(UIView *)height->_arrivedContainerView leadingAnchor];
    v96 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];
    v158[15] = v96;
    trailingAnchor11 = [(AxisAdjustingStackView *)height->_endRouteButtonStackView trailingAnchor];
    trailingAnchor12 = [(UIView *)height->_arrivedContainerView trailingAnchor];
    v93 = [trailingAnchor11 constraintEqualToAnchor:trailingAnchor12];
    v158[16] = v93;
    bottomAnchor8 = [(AxisAdjustingStackView *)height->_endRouteButtonStackView bottomAnchor];
    bottomAnchor9 = [(UIView *)height->_arrivedContainerView bottomAnchor];
    [(NavTrayMetrics *)height->_metrics actionButtonBottomPadding];
    v141 = [bottomAnchor8 constraintEqualToAnchor:bottomAnchor9 constant:-v79];
    v158[17] = v141;
    leadingAnchor11 = [(UIView *)height->_hairlineView leadingAnchor];
    leadingAnchor12 = [(NavTrayHeaderView *)height leadingAnchor];
    v81 = [leadingAnchor11 constraintEqualToAnchor:leadingAnchor12];
    v158[18] = v81;
    trailingAnchor13 = [(UIView *)height->_hairlineView trailingAnchor];
    trailingAnchor14 = [(NavTrayHeaderView *)height trailingAnchor];
    v84 = [trailingAnchor13 constraintEqualToAnchor:trailingAnchor14];
    v158[19] = v84;
    bottomAnchor10 = [(UIView *)height->_hairlineView bottomAnchor];
    bottomAnchor11 = [(NavTrayHeaderView *)height bottomAnchor];
    v87 = [bottomAnchor10 constraintEqualToAnchor:bottomAnchor11];
    v158[20] = v87;
    v88 = [NSArray arrayWithObjects:v158 count:21];
    [v139 addObjectsFromArray:v88];

    [NSLayoutConstraint activateConstraints:v139];
    [(NavTrayHeaderView *)height _updateFonts];
    [(NavTrayHeaderView *)height _updateLayout];
    [(NavTrayHeaderView *)height _updateContentAndReloadStackView:0];

    objc_destroyWeak(&v143);
    objc_destroyWeak(&v145);
    objc_destroyWeak(&v147);
    objc_destroyWeak(&v149);
    objc_destroyWeak(&v151);
    objc_destroyWeak(&v153);
    objc_destroyWeak(&v155);
    objc_destroyWeak(&location);
  }

  return height;
}

@end