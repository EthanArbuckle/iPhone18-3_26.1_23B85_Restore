@interface NavTrayHeaderView
- (BOOL)_isResumeRouteState;
- (CGSize)intrinsicContentSize;
- (NavTrayHeaderView)initWithDelegate:(id)a3 metrics:(id)a4;
- (NavTrayHeaderViewDelegate)delegate;
- (int64_t)_textAlignmentForCurrentLanguage;
- (unint64_t)state;
- (void)_pressedHeaderView;
- (void)_updateContentAndReloadStackView:(BOOL)a3;
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
- (void)setETA:(id)a3;
- (void)setExpansionProgress:(double)a3;
- (void)setShareETAModel:(id)a3;
- (void)setWaldoModel:(id)a3;
- (void)showRecalculating;
- (void)stackViewDidChangeLayout:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
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
  v3 = [(NavTrayHeaderView *)self _isResumeRouteState];
  v4 = [(NavTrayHeaderView *)self _alternateButtonTypeContains:1];
  v5 = [(NavTrayHeaderView *)self _alternateButtonTypeContains:2];
  v6 = [(NavTrayHeaderView *)self _alternateButtonTypeContains:16];
  v7 = v6;
  v8 = 0;
  if ((v3 & 1) == 0 && (v6 & 1) == 0)
  {
    v8 = ![(NavTrayHeaderView *)self _isParkingRouteState]&& [(NavTrayHeaderView *)self showFeedbackView];
  }

  v9 = [(NavTrayHeaderView *)self traitCollection];
  v10 = [v9 isLuminanceReduced];

  if (v10)
  {
    v11 = 0.300000012;
  }

  else
  {
    v11 = 1.0;
  }

  v12 = [(NavTrayHeaderView *)self state];
  if (v12 >= 3)
  {
    if (v12 != 3)
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
    if (v3)
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
  v19 = [(NavTrayHeaderView *)self state];
  v20 = v19 != 3;
  v21 = v19 == 3;
  v22 = 0.0;
  if (v19 == 3)
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

- (void)stackViewDidChangeLayout:(id)a3
{
  [(NavTrayHeaderView *)self setNeedsLayout];
  [(NavTrayHeaderView *)self invalidateIntrinsicContentSize];
  v4 = [(NavTrayHeaderView *)self delegate];
  [v4 updatedHeight];
}

- (void)setExpansionProgress:(double)a3
{
  if (vabdd_f64(self->_expansionProgress, a3) > 2.22044605e-16)
  {
    self->_expansionProgress = a3;
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
    v3 = [(NavTrayHeaderView *)self delegate];
    [v3 pressedHeaderView];
  }
}

- (void)clearAnimations
{
  v3 = [(NavTrayHeaderView *)self layer];
  [v3 removeAllAnimations];

  v4 = [(NavMetricsView *)self->_metricsView layer];
  [v4 removeAllAnimations];

  v5 = [(UIView *)self->_arrivedContainerView layer];
  [v5 removeAllAnimations];
}

- (void)resetContent
{
  v3 = sub_100824934();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 134349056;
    v5 = self;
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

  v4 = [(NavTrayHeaderView *)self _isResumeRouteState];
  v5 = sub_100824934();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v4)
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
    v17 = [v16 arrivalChargingStationInfo];
    [v17 chargingTime];
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
          v23 = [(NavTrayHeaderView *)self delegate];
          v24 = [v23 mapItemMuid];
          [GEOAPPortal captureUserAction:45 target:136 value:v24];

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

- (void)_updateContentAndReloadStackView:(BOOL)a3
{
  v4 = sub_100824934();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v63 = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] Updating content", buf, 0xCu);
  }

  v5 = [(NavTrayHeaderView *)self state];
  v6 = &OBJC_IVAR___FlyoverContainerViewController__statusView;
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v7 = sub_100824934();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 134349056;
        v63 = self;
        v8 = "[%{public}p] Configuring rerouting state";
        goto LABEL_24;
      }

      goto LABEL_38;
    }

    if (v5 != 3)
    {
      goto LABEL_39;
    }

    v7 = +[MNNavigationService sharedService];
    v59 = [v7 route];
    v60 = [v7 arrivalInfo];
    v9 = [v60 destination];
    v10 = [v7 isArrivedAtEVCharger];
    v11 = [v7 arrivalChargingStationInfo];
    v12 = +[MNNavigationService sharedService];
    v61 = [v12 activeNavTrayGuidanceEvent];

    v13 = sub_100824934();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      arrivalState = self->_arrivalState;
      [v9 uniqueID];
      v16 = v15 = v9;
      *buf = 134349826;
      v63 = self;
      v64 = 2048;
      v65 = arrivalState;
      v66 = 2112;
      v67 = v16;
      v68 = 2112;
      v69 = v11;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[%{public}p] Configuring arrived state: %ld with destination: %@, charging info: %@", buf, 0x2Au);

      v9 = v15;
      v6 = &OBJC_IVAR___FlyoverContainerViewController__statusView;
    }

    if (!v10)
    {
      v30 = self->_arrivalState - 1;
      v31 = v61;
      if (v30 >= 4 || (v32 = *(&off_10162B738 + v30), +[NSBundle mainBundle](NSBundle, "mainBundle"), v33 = v11, v34 = objc_claimAutoreleasedReturnValue(), [v34 localizedStringForKey:v32 value:@"localized string not found" table:0], v35 = objc_claimAutoreleasedReturnValue(), -[UILabel setText:](self->_arrivedTitleLabel, "setText:", v35), v35, v34, v11 = v33, (self->_arrivalState - 1) > 1))
      {
        v37 = [v9 parkingDisplayName];
        [*(&self->super.super.super.isa + v6[692]) setText:v37];
        v36 = v59;
      }

      else
      {
        v36 = v59;
        v37 = [v59 arrivalInstructionStringForLegIndex:{objc_msgSend(v60, "legIndex")}];
        [*(&self->super.super.super.isa + v6[692]) setText:v37];
      }

      goto LABEL_37;
    }

    v58 = v9;
    v17 = sub_100824934();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG);

    if (v18)
    {
      v19 = [v7 route];
      v20 = [v19 legs];
      v21 = [v20 objectAtIndex:{objc_msgSend(v60, "legIndex")}];

      v22 = sub_100824934();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v23 = [v58 chargingInfo];
        [v21 chargingStationInfo];
        v24 = v57 = v21;
        v25 = [v59 waypointDisplayInfoForWaypoint:v58];
        v26 = [v25 evChargingInfo];
        *buf = 134349826;
        v63 = self;
        v64 = 2112;
        v65 = v23;
        v66 = 2112;
        v67 = v24;
        v68 = 2112;
        v69 = v26;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "[%{public}p] EV Charging info from waypoint: %@, leg: %@, displayInfo: %@", buf, 0x2Au);

        v21 = v57;
      }
    }

    [v11 chargingTime];
    if (v27 <= 0.0)
    {
      v28 = +[NSBundle mainBundle];
      v29 = [v28 localizedStringForKey:@"Charged [Nav Tray Header Title]" value:@"localized string not found" table:0];
      v38 = [NSString stringWithFormat:v29];
      [(UILabel *)self->_arrivedTitleLabel setText:v38];
    }

    else
    {
      if (!v61)
      {
        v41 = +[NSBundle mainBundle];
        v42 = [v41 localizedStringForKey:@"Charging [Nav Tray Header Title]" value:@"localized string not found" table:0];
        [v11 batteryPercentageAfterCharging];
        v44 = [NSString stringWithFormat:v42, v43];
        [(UILabel *)self->_arrivedTitleLabel setText:v44];

        [v11 chargingTime];
        if (v45 > 0.0)
        {
LABEL_34:
          v37 = +[NSBundle mainBundle];
          [v37 localizedStringForKey:@"Charging [Nav Tray Header Subtitle]" value:@"localized string not found" table:0];
          v47 = v46 = v11;
          [v46 chargingTime];
          v49 = [NSString _navigation_stringWithSeconds:v48 abbreviated:1];
          v50 = [NSString stringWithFormat:v47, v49];
          [*(&self->super.super.super.isa + v6[692]) setText:v50];

          v11 = v46;
LABEL_36:
          v9 = v58;
          v36 = v59;
          v31 = v61;
          goto LABEL_37;
        }

LABEL_35:
        v37 = +[NSBundle mainBundle];
        v56 = [v37 localizedStringForKey:@"Charged [Nav Tray Header Subtitle]" value:@"localized string not found" table:0];
        v51 = +[MNNavigationService sharedService];
        v52 = [v51 stopAfterCharging];
        [v52 navDisplayName];
        v54 = v53 = v11;
        v55 = [NSString stringWithFormat:v56, v54];
        [*(&self->super.super.super.isa + v6[692]) setText:v55];

        v11 = v53;
        goto LABEL_36;
      }

      v28 = [v61 title];
      v29 = [v28 stringWithDefaultOptions];
      [(UILabel *)self->_arrivedTitleLabel setText:v29];
    }

    [v11 chargingTime];
    if (v39 > 0.0)
    {
      if (v61)
      {
        v31 = v61;
        v37 = [v61 detail];
        v40 = [v37 stringWithDefaultOptions];
        [*(&self->super.super.super.isa + v6[692]) setText:v40];

        v9 = v58;
        v36 = v59;
LABEL_37:

        goto LABEL_38;
      }

      goto LABEL_34;
    }

    goto LABEL_35;
  }

  if (!v5)
  {
    v7 = sub_100824934();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v63 = self;
      v8 = "[%{public}p] Configuring loading state";
      goto LABEL_24;
    }

LABEL_38:

    goto LABEL_39;
  }

  if (v5 == 1)
  {
    v7 = sub_100824934();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v63 = self;
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
  v2 = [(NavTrayHeaderView *)self delegate];
  [v2 updatedMetricsViewHeight];
}

- (void)didUpdateSize
{
  [(NavTrayHeaderView *)self invalidateIntrinsicContentSize];
  v3 = [(NavTrayHeaderView *)self delegate];
  [v3 updatedHeight];
}

- (void)didTapShareETAContactButton
{
  v2 = [(NavTrayHeaderView *)self delegate];
  [v2 didTapShareETAContactButton];
}

- (void)didTapShareETASharingButton
{
  v2 = [(NavTrayHeaderView *)self delegate];
  [v2 didTapShareETASharingButton];
}

- (void)didTapShareETAHintButton
{
  v2 = [(NavTrayHeaderView *)self delegate];
  [v2 didTapShareETAHintButton];
}

- (int64_t)_textAlignmentForCurrentLanguage
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 preferredLocalizations];
  v4 = [v3 firstObject];

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

      if ([v4 hasPrefix:*(*(&v11 + 1) + 8 * v9)])
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
  v3 = [(NavTrayHeaderView *)self traitCollection];
  v4 = [v3 _maps_traitCollectionWithMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
  v8 = [UIFont _maps_fontWithTextStyle:UIFontTextStyleTitle1 weight:v4 compatibleWithTraitCollection:UIFontWeightBold];

  v5 = [(NavTrayHeaderView *)self traitCollection];
  v6 = [v5 _maps_traitCollectionWithMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
  v7 = [UIFont _maps_fontWithTextStyle:UIFontTextStyleTitle3 weight:v6 compatibleWithTraitCollection:UIFontWeightRegular];

  [(UILabel *)self->_arrivedTitleLabel setFont:v8];
  [(MUFadingLabel *)self->_arrivedSubtitleLabel setFont:v7];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = NavTrayHeaderView;
  [(NavTrayHeaderView *)&v14 traitCollectionDidChange:v4];
  v5 = [(NavTrayHeaderView *)self traitCollection];
  v6 = [v5 preferredContentSizeCategory];
  v7 = [v4 preferredContentSizeCategory];
  v8 = sub_10008FB5C(v6, v7);

  if (v8)
  {
    [(NavTrayHeaderView *)self applyArrivalState];
    [(NavTrayHeaderView *)self _updateFonts];
  }

  v9 = [(NavTrayHeaderView *)self traitCollection];
  v10 = sub_100017FE8(v4, v9);

  if (v10)
  {
    v11 = [(NavTrayHeaderView *)self traitCollection];
    v12 = [v11 isLuminanceReduced];

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100825D1C;
    v13[3] = &unk_101661B18;
    v13[4] = self;
    [UIView _maps_animateForAndromeda:v12 animations:v13];
  }
}

- (void)setWaldoModel:(id)a3
{
  v4 = a3;
  v5 = [(NavMetricsView *)self->_metricsView waldoAccessoryModel];
  v6 = v4;
  if (v6 | v5)
  {
    v8 = v6;
    v7 = [v5 isEqual:v6];

    v6 = v8;
    if ((v7 & 1) == 0)
    {
      [(NavMetricsView *)self->_metricsView setWaldoAccessoryModel:v8];
      v6 = v8;
    }
  }
}

- (void)setShareETAModel:(id)a3
{
  v4 = a3;
  v5 = [(NavMetricsView *)self->_metricsView shareETAAccessoryModel];
  v6 = v4;
  if (v6 | v5)
  {
    v8 = v6;
    v7 = [v5 isEqual:v6];

    v6 = v8;
    if ((v7 & 1) == 0)
    {
      [(NavMetricsView *)self->_metricsView setShareETAAccessoryModel:v8];
      v6 = v8;
    }
  }
}

- (void)setETA:(id)a3
{
  v5 = a3;
  v6 = self->_ETA;
  v7 = v5;
  if (v7 | v6)
  {
    v14 = v7;
    v8 = [v6 isEqual:v7];

    v7 = v14;
    if ((v8 & 1) == 0)
    {
      if (v14)
      {
        objc_storeStrong(&self->_previousAvailableETA, a3);
      }

      v9 = self->_ETA;
      v10 = v14;
      v11 = v10;
      if (v9 == v10)
      {

        objc_storeStrong(&self->_ETA, a3);
      }

      else
      {
        if (v9)
        {
          v12 = [(GuidanceETA *)v9 isVisuallyDistinctFromGuidanceETA:v10];

          objc_storeStrong(&self->_ETA, a3);
          v7 = v14;
          if ((v12 & 1) == 0)
          {
            goto LABEL_15;
          }
        }

        else
        {

          objc_storeStrong(&self->_ETA, a3);
          v7 = v14;
        }

        if (v7)
        {
          self->_isRerouting = 0;
          self->_hasReceivedGuidance = 1;
          v13 = [(GuidanceETA *)v11 arrivalBatteryCharge];
          self->_isInEVMode = v13 != 0;
        }

        [(NavMetricsView *)self->_metricsView setEta:v11];
        [(NavTrayHeaderView *)self _updateLayout];
      }

      v7 = v14;
    }
  }

LABEL_15:
}

- (NavTrayHeaderView)initWithDelegate:(id)a3 metrics:(id)a4
{
  obj = a3;
  v138 = a4;
  v157.receiver = self;
  v157.super_class = NavTrayHeaderView;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v9 = [(NavTrayHeaderView *)&v157 initWithFrame:CGRectZero.origin.x, y, width, height];
  if (v9)
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    [(NavTrayHeaderView *)v9 setAccessibilityIdentifier:v11];

    objc_storeWeak(&v9->_delegate, obj);
    objc_storeStrong(&v9->_metrics, a4);
    [(NavTrayHeaderView *)v9 setUserInteractionEnabled:1];
    v137 = [[UITapGestureRecognizer alloc] initWithTarget:v9 action:"_pressedHeaderView"];
    [(NavTrayHeaderView *)v9 addGestureRecognizer:v137];
    v12 = [[_TtC4Maps14NavMetricsView alloc] initWithParentViewController:obj delegate:v9 eta:0 isCarPlay:0];
    metricsView = v9->_metricsView;
    v9->_metricsView = v12;

    [(NavMetricsView *)v9->_metricsView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(NavMetricsView *)v9->_metricsView setAccessibilityIdentifier:@"MinimizedStackView"];
    [(NavTrayHeaderView *)v9 addSubview:v9->_metricsView];
    v14 = objc_opt_new();
    arrivedContainerView = v9->_arrivedContainerView;
    v9->_arrivedContainerView = v14;

    [(UIView *)v9->_arrivedContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v9->_arrivedContainerView setAlpha:0.0];
    [(UIView *)v9->_arrivedContainerView setAccessibilityIdentifier:@"ArrivedContainerView"];
    [(NavTrayHeaderView *)v9 addSubview:v9->_arrivedContainerView];
    v16 = objc_opt_new();
    arrivedTitleLabel = v9->_arrivedTitleLabel;
    v9->_arrivedTitleLabel = v16;

    [(UILabel *)v9->_arrivedTitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v18) = 1148846080;
    [(UILabel *)v9->_arrivedTitleLabel setContentCompressionResistancePriority:1 forAxis:v18];
    [(UILabel *)v9->_arrivedTitleLabel setAccessibilityIdentifier:@"ArrivedTitleLabel"];
    [(UILabel *)v9->_arrivedTitleLabel setTextAlignment:1];
    v19 = [[MUFadingLabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    arrivedSubtitleLabel = v9->_arrivedSubtitleLabel;
    v9->_arrivedSubtitleLabel = v19;

    [(MUFadingLabel *)v9->_arrivedSubtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v21) = 1148846080;
    [(MUFadingLabel *)v9->_arrivedSubtitleLabel setContentCompressionResistancePriority:1 forAxis:v21];
    [(MUFadingLabel *)v9->_arrivedSubtitleLabel setAccessibilityIdentifier:@"ArrivedSubtitleLabel"];
    v22 = +[UIColor secondaryLabelColor];
    [(MUFadingLabel *)v9->_arrivedSubtitleLabel setTextColor:v22];

    [(MUFadingLabel *)v9->_arrivedSubtitleLabel setNumberOfLines:2];
    [(MUFadingLabel *)v9->_arrivedSubtitleLabel setTextAlignment:1];
    v23 = [UIStackView alloc];
    v159[0] = v9->_arrivedTitleLabel;
    v159[1] = v9->_arrivedSubtitleLabel;
    v24 = [NSArray arrayWithObjects:v159 count:2];
    v25 = [v23 initWithArrangedSubviews:v24];
    arrivedLabelsStackView = v9->_arrivedLabelsStackView;
    v9->_arrivedLabelsStackView = v25;

    [(UIStackView *)v9->_arrivedLabelsStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v9->_arrivedLabelsStackView setAxis:1];
    [(UIStackView *)v9->_arrivedLabelsStackView setDistribution:2];
    [(UIStackView *)v9->_arrivedLabelsStackView setSpacing:2.0];
    [(UIStackView *)v9->_arrivedLabelsStackView setAccessibilityIdentifier:@"ArrivedLabelsStackView"];
    [(UIView *)v9->_arrivedContainerView addSubview:v9->_arrivedLabelsStackView];
    v27 = [NavTrayFeedbackView alloc];
    WeakRetained = objc_loadWeakRetained(&v9->_delegate);
    v29 = [(NavTrayFeedbackView *)v27 initWithDelegate:WeakRetained];
    feedbackView = v9->_feedbackView;
    v9->_feedbackView = v29;

    [(NavTrayFeedbackView *)v9->_feedbackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v9->_arrivedContainerView addSubview:v9->_feedbackView];
    [(NavTrayFeedbackView *)v9->_feedbackView setAccessibilityIdentifier:@"FeedbackView"];
    objc_initWeak(&location, v9);
    v31 = [_TtC4Maps13NavTrayButton alloc];
    v154[0] = _NSConcreteStackBlock;
    v154[1] = 3221225472;
    v154[2] = sub_10082737C;
    v154[3] = &unk_101661B98;
    objc_copyWeak(&v155, &location);
    v32 = [(NavTrayButton *)v31 initWithStyle:3 action:v154];
    nextStopButton = v9->_nextStopButton;
    v9->_nextStopButton = v32;

    [(Truncatable *)v9->_nextStopButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(Truncatable *)v9->_nextStopButton setAccessibilityIdentifier:@"NextStopButton"];
    v34 = [_TtC4Maps13NavTrayButton alloc];
    v152[0] = _NSConcreteStackBlock;
    v152[1] = 3221225472;
    v152[2] = sub_1008273D8;
    v152[3] = &unk_101661B98;
    objc_copyWeak(&v153, &location);
    v35 = [(NavTrayButton *)v34 initWithStyle:2 action:v152];
    otherStationsButton = v9->_otherStationsButton;
    v9->_otherStationsButton = v35;

    [(Truncatable *)v9->_otherStationsButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(Truncatable *)v9->_otherStationsButton setAccessibilityIdentifier:@"OtherStationsButton"];
    v37 = [_TtC4Maps13NavTrayButton alloc];
    v150[0] = _NSConcreteStackBlock;
    v150[1] = 3221225472;
    v150[2] = sub_100827434;
    v150[3] = &unk_101661B98;
    objc_copyWeak(&v151, &location);
    v38 = [(NavTrayButton *)v37 initWithStyle:1 action:v150];
    pauseButton = v9->_pauseButton;
    v9->_pauseButton = v38;

    [(Truncatable *)v9->_pauseButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(Truncatable *)v9->_pauseButton setAccessibilityIdentifier:@"PauseButton"];
    v40 = [_TtC4Maps13NavTrayButton alloc];
    v148[0] = _NSConcreteStackBlock;
    v148[1] = 3221225472;
    v148[2] = sub_100827490;
    v148[3] = &unk_101661B98;
    objc_copyWeak(&v149, &location);
    v41 = [(NavTrayButton *)v40 initWithStyle:0 action:v148];
    endButton = v9->_endButton;
    v9->_endButton = v41;

    [(Truncatable *)v9->_endButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(Truncatable *)v9->_endButton setAccessibilityIdentifier:@"EndButton"];
    v43 = [_TtC4Maps13NavTrayButton alloc];
    v146[0] = _NSConcreteStackBlock;
    v146[1] = 3221225472;
    v146[2] = sub_1008274EC;
    v146[3] = &unk_101661B98;
    objc_copyWeak(&v147, &location);
    v44 = [(NavTrayButton *)v43 initWithStyle:5 action:v146];
    walkingButton = v9->_walkingButton;
    v9->_walkingButton = v44;

    [(Truncatable *)v9->_walkingButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(Truncatable *)v9->_walkingButton setAccessibilityIdentifier:@"WalkingButton"];
    v46 = [_TtC4Maps13NavTrayButton alloc];
    v144[0] = _NSConcreteStackBlock;
    v144[1] = 3221225472;
    v144[2] = sub_100827548;
    v144[3] = &unk_101661B98;
    objc_copyWeak(&v145, &location);
    v47 = [(NavTrayButton *)v46 initWithStyle:4 action:v144];
    findMyButton = v9->_findMyButton;
    v9->_findMyButton = v47;

    [(Truncatable *)v9->_findMyButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(Truncatable *)v9->_findMyButton setAccessibilityIdentifier:@"FindMyButton"];
    v49 = [_TtC4Maps13NavTrayButton alloc];
    v142[0] = _NSConcreteStackBlock;
    v142[1] = 3221225472;
    v142[2] = sub_1008275A4;
    v142[3] = &unk_101661B98;
    objc_copyWeak(&v143, &location);
    v50 = [(NavTrayButton *)v49 initWithStyle:6 action:v142];
    customRouteButton = v9->_customRouteButton;
    v9->_customRouteButton = v50;

    [(Truncatable *)v9->_customRouteButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(Truncatable *)v9->_customRouteButton setAccessibilityIdentifier:@"CustomRouteButton"];
    v52 = [[AxisAdjustingStackView alloc] initWithArrangedTruncatableSubviews:&__NSArray0__struct];
    endRouteButtonStackView = v9->_endRouteButtonStackView;
    v9->_endRouteButtonStackView = v52;

    [(AxisAdjustingStackView *)v9->_endRouteButtonStackView setDelegate:v9];
    [(AxisAdjustingStackView *)v9->_endRouteButtonStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(AxisAdjustingStackView *)v9->_endRouteButtonStackView setDistribution:1];
    [(AxisAdjustingStackView *)v9->_endRouteButtonStackView setAlignment:0];
    [(NavTrayMetrics *)v9->_metrics actionButtonInterButtonPadding];
    [(AxisAdjustingStackView *)v9->_endRouteButtonStackView setSpacing:?];
    [(AxisAdjustingStackView *)v9->_endRouteButtonStackView setAccessibilityIdentifier:@"EndRouteButtonStackView"];
    LODWORD(v54) = 1148846080;
    [(AxisAdjustingStackView *)v9->_endRouteButtonStackView setContentCompressionResistancePriority:1 forAxis:v54];
    [(UIView *)v9->_arrivedContainerView addSubview:v9->_endRouteButtonStackView];
    v55 = objc_opt_new();
    hairlineView = v9->_hairlineView;
    v9->_hairlineView = v55;

    [(UIView *)v9->_hairlineView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v9->_hairlineView setHidden:1];
    [(NavTrayHeaderView *)v9 addSubview:v9->_hairlineView];
    v57 = [(UIView *)v9->_arrivedContainerView topAnchor];
    v58 = [(NavTrayHeaderView *)v9 topAnchor];
    [(NavTrayMetrics *)v9->_metrics defaultVerticalPadding];
    v59 = [v57 constraintEqualToAnchor:v58 constant:?];
    arrivedContainerTopConstraint = v9->_arrivedContainerTopConstraint;
    v9->_arrivedContainerTopConstraint = v59;

    v61 = [(AxisAdjustingStackView *)v9->_endRouteButtonStackView topAnchor];
    v62 = [(NavTrayFeedbackView *)v9->_feedbackView bottomAnchor];
    [(NavTrayMetrics *)v9->_metrics actionButtonInterButtonPadding];
    v63 = [v61 constraintEqualToAnchor:v62 constant:?];
    feedbackViewBottomConstraint = v9->_feedbackViewBottomConstraint;
    v9->_feedbackViewBottomConstraint = v63;

    v65 = [(AxisAdjustingStackView *)v9->_endRouteButtonStackView topAnchor];
    v66 = [(UIStackView *)v9->_arrivedLabelsStackView bottomAnchor];
    v67 = [v65 constraintEqualToAnchor:v66 constant:5.0];
    endRouteButtonStackViewTopConstraint = v9->_endRouteButtonStackViewTopConstraint;
    v9->_endRouteButtonStackViewTopConstraint = v67;

    v69 = [(NavMetricsView *)v9->_metricsView bottomAnchor];
    v70 = [(NavTrayHeaderView *)v9 bottomAnchor];
    v71 = [v69 constraintEqualToAnchor:v70];
    metricsViewBottomConstraint = v9->_metricsViewBottomConstraint;
    v9->_metricsViewBottomConstraint = v71;

    v139 = objc_opt_new();
    v73 = [(NavMetricsView *)v9->_metricsView trailingAnchor];
    v74 = [(NavTrayHeaderView *)v9 trailingAnchor];
    v75 = [v73 constraintEqualToAnchor:v74];
    [v139 addObject:v75];

    v136 = [(NavMetricsView *)v9->_metricsView leadingAnchor];
    v135 = [(NavTrayHeaderView *)v9 leadingAnchor];
    v134 = [v136 constraintEqualToAnchor:v135];
    v158[0] = v134;
    v133 = [(NavMetricsView *)v9->_metricsView trailingAnchor];
    v132 = [(NavTrayHeaderView *)v9 trailingAnchor];
    v131 = [v133 constraintEqualToAnchor:v132];
    v158[1] = v131;
    v130 = [(NavMetricsView *)v9->_metricsView topAnchor];
    v129 = [(NavTrayHeaderView *)v9 topAnchor];
    v128 = [v130 constraintEqualToAnchor:v129];
    v158[2] = v128;
    v127 = [(UIView *)v9->_arrivedContainerView leadingAnchor];
    v126 = [(NavTrayHeaderView *)v9 leadingAnchor];
    [(NavTrayMetrics *)v9->_metrics defaultHorizontalPadding];
    v125 = [v127 constraintEqualToAnchor:v126 constant:?];
    v158[3] = v125;
    v124 = [(UIView *)v9->_arrivedContainerView trailingAnchor];
    v123 = [(NavTrayHeaderView *)v9 trailingAnchor];
    [(NavTrayMetrics *)v9->_metrics defaultHorizontalPadding];
    v122 = [v124 constraintEqualToAnchor:v123 constant:-v76];
    v158[4] = v122;
    v121 = [(UIView *)v9->_arrivedContainerView bottomAnchor];
    v120 = [(NavTrayHeaderView *)v9 bottomAnchor];
    [(NavTrayMetrics *)v9->_metrics defaultVerticalPadding];
    v119 = [v121 constraintLessThanOrEqualToAnchor:v120 constant:-v77];
    v158[5] = v119;
    v118 = [(UIStackView *)v9->_arrivedLabelsStackView topAnchor];
    v117 = [(UIView *)v9->_arrivedContainerView topAnchor];
    v116 = [v118 constraintEqualToAnchor:v117];
    v158[6] = v116;
    v115 = [(UIStackView *)v9->_arrivedLabelsStackView leadingAnchor];
    v114 = [(UIView *)v9->_arrivedContainerView leadingAnchor];
    [(NavTrayMetrics *)v9->_metrics arrivedTitleContainerHorizontalPadding];
    v113 = [v115 constraintEqualToAnchor:v114 constant:?];
    v158[7] = v113;
    v112 = [(UIStackView *)v9->_arrivedLabelsStackView trailingAnchor];
    v111 = [(UIView *)v9->_arrivedContainerView trailingAnchor];
    [(NavTrayMetrics *)v9->_metrics arrivedTitleContainerHorizontalPadding];
    v110 = [v112 constraintEqualToAnchor:v111 constant:-v78];
    v158[8] = v110;
    v109 = [(NavTrayFeedbackView *)v9->_feedbackView heightAnchor];
    [(NavTrayMetrics *)v9->_metrics feedbackButtonHeight];
    v108 = [v109 constraintGreaterThanOrEqualToConstant:?];
    v158[9] = v108;
    v107 = [(NavTrayFeedbackView *)v9->_feedbackView topAnchor];
    v106 = [(UIStackView *)v9->_arrivedLabelsStackView bottomAnchor];
    [(NavTrayMetrics *)v9->_metrics feedbackViewTopPadding];
    v105 = [v107 constraintEqualToAnchor:v106 constant:?];
    v158[10] = v105;
    v104 = [(NavTrayFeedbackView *)v9->_feedbackView leadingAnchor];
    v103 = [(UIView *)v9->_arrivedContainerView leadingAnchor];
    v102 = [v104 constraintEqualToAnchor:v103];
    v158[11] = v102;
    v101 = [(NavTrayFeedbackView *)v9->_feedbackView trailingAnchor];
    v100 = [(UIView *)v9->_arrivedContainerView trailingAnchor];
    v99 = [v101 constraintEqualToAnchor:v100];
    v158[12] = v99;
    v158[13] = v9->_feedbackViewBottomConstraint;
    v158[14] = v9->_endRouteButtonStackViewTopConstraint;
    v98 = [(AxisAdjustingStackView *)v9->_endRouteButtonStackView leadingAnchor];
    v97 = [(UIView *)v9->_arrivedContainerView leadingAnchor];
    v96 = [v98 constraintEqualToAnchor:v97];
    v158[15] = v96;
    v95 = [(AxisAdjustingStackView *)v9->_endRouteButtonStackView trailingAnchor];
    v94 = [(UIView *)v9->_arrivedContainerView trailingAnchor];
    v93 = [v95 constraintEqualToAnchor:v94];
    v158[16] = v93;
    v92 = [(AxisAdjustingStackView *)v9->_endRouteButtonStackView bottomAnchor];
    v91 = [(UIView *)v9->_arrivedContainerView bottomAnchor];
    [(NavTrayMetrics *)v9->_metrics actionButtonBottomPadding];
    v141 = [v92 constraintEqualToAnchor:v91 constant:-v79];
    v158[17] = v141;
    v90 = [(UIView *)v9->_hairlineView leadingAnchor];
    v80 = [(NavTrayHeaderView *)v9 leadingAnchor];
    v81 = [v90 constraintEqualToAnchor:v80];
    v158[18] = v81;
    v82 = [(UIView *)v9->_hairlineView trailingAnchor];
    v83 = [(NavTrayHeaderView *)v9 trailingAnchor];
    v84 = [v82 constraintEqualToAnchor:v83];
    v158[19] = v84;
    v85 = [(UIView *)v9->_hairlineView bottomAnchor];
    v86 = [(NavTrayHeaderView *)v9 bottomAnchor];
    v87 = [v85 constraintEqualToAnchor:v86];
    v158[20] = v87;
    v88 = [NSArray arrayWithObjects:v158 count:21];
    [v139 addObjectsFromArray:v88];

    [NSLayoutConstraint activateConstraints:v139];
    [(NavTrayHeaderView *)v9 _updateFonts];
    [(NavTrayHeaderView *)v9 _updateLayout];
    [(NavTrayHeaderView *)v9 _updateContentAndReloadStackView:0];

    objc_destroyWeak(&v143);
    objc_destroyWeak(&v145);
    objc_destroyWeak(&v147);
    objc_destroyWeak(&v149);
    objc_destroyWeak(&v151);
    objc_destroyWeak(&v153);
    objc_destroyWeak(&v155);
    objc_destroyWeak(&location);
  }

  return v9;
}

@end