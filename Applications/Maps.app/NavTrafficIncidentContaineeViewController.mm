@interface NavTrafficIncidentContaineeViewController
- (BOOL)_displayActionButtonsForSmallLayout;
- (BOOL)_hasActionButtons;
- (BOOL)_hasIncidentDetailsContent;
- (MapsProgressButton)progressButton;
- (NavTrafficIncidentAlertViewControllerDelegate)delegate;
- (double)actionButtonsHeightForLayout:(unint64_t)a3;
- (double)detailsHeight;
- (double)heightForLayout:(unint64_t)a3;
- (id)_incidentTypeAsString;
- (void)_didReceiveIncidentUpdate:(id)a3;
- (void)_didTapActionButton:(id)a3;
- (void)_didTapCancelButton:(id)a3;
- (void)_updateActionButtonsPaddingForLayout:(unint64_t)a3;
- (void)_updateGrabberVisibility;
- (void)_updateViewsFromContent;
- (void)applyAlphaToContent:(double)a3;
- (void)didChangeLayout:(unint64_t)a3;
- (void)handleDismissAction:(id)a3;
- (void)headerViewTapped:(id)a3;
- (void)setAnimationDuration:(double)a3;
- (void)setAnimationStarted:(BOOL)a3;
- (void)setIncident:(id)a3;
- (void)setIncidentAlert:(id)a3;
- (void)setProgressionHidden:(BOOL)a3;
- (void)setRerouteTimerProgress:(double)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)willChangeLayout:(unint64_t)a3;
@end

@implementation NavTrafficIncidentContaineeViewController

- (NavTrafficIncidentAlertViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_didReceiveIncidentUpdate:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:@"SiriTrafficIncidentIsClearKey"];
  v6 = [v5 BOOLValue];

  v7 = [(NavTrafficIncidentContaineeViewController *)self delegate];
  v8 = v7;
  if (v6)
  {
    [v7 didTapRejectButtonOnTrafficIncidentViewControllerTarget:0];
  }

  else
  {
    [v7 didTapAcceptButtonOnTrafficIncidentViewControllerTarget:0];
  }
}

- (id)_incidentTypeAsString
{
  if (self->_incidentAlert)
  {
    v2 = [(MNTrafficIncidentAlert *)self->_incidentAlert incident];
    v3 = [v2 type];
    v4 = @"ACCIDENT";
    switch(v3)
    {
      case 0:
        break;
      case 1:
        v4 = @"CONSTRUCTION";
        break;
      case 2:
        v4 = @"ROAD_CLOSURE";
        break;
      case 3:
        v4 = @"EVENT";
        break;
      case 4:
        v4 = @"HAZARD";
        break;
      case 5:
        v4 = @"LANE_CLOSURE";
        break;
      case 6:
        v4 = @"RAMP_CLOSURE";
        break;
      case 7:
        v4 = @"TRAFFIC";
        break;
      case 8:
        v4 = @"WALKING_CLOSURE";
        break;
      case 9:
        v4 = @"CONGESTION_ZONE_RESTRICTION";
        break;
      case 10:
        v4 = @"LICENSE_PLATE_RESTRICTION";
        break;
      case 11:
      case 12:
        goto LABEL_7;
      case 13:
        v4 = @"SPEED_TRAP";
        break;
      case 14:
        v4 = @"AREA_INCIDENT";
        break;
      default:
        if (v3 == 100)
        {
          v4 = @"TIME_BASED_RESTRICTION";
        }

        else
        {
LABEL_7:
          v4 = [NSString stringWithFormat:@"(unknown: %i)", v3];
        }

        break;
    }
  }

  else
  {
    v4 = [VKTrafficIncidentFeature stringForIncidentType:[(VKTrafficIncidentFeature *)self->_incident type]];
  }

  return v4;
}

- (void)_didTapActionButton:(id)a3
{
  v4 = [(NavTrafficIncidentContaineeViewController *)self delegate];
  [v4 didTapAcceptButtonOnTrafficIncidentViewControllerTarget:739];

  if (![(MNTrafficIncidentAlert *)self->_incidentAlert isReroute])
  {
    return;
  }

  v5 = [(MNTrafficIncidentAlert *)self->_incidentAlert originalRoute];
  if (([v5 isEVRoute] & 1) == 0)
  {

    goto LABEL_7;
  }

  v6 = [(MNTrafficIncidentAlert *)self->_incidentAlert alternateRoute];

  if (!v6)
  {
LABEL_7:
    v9 = +[MKMapService sharedService];
    v8 = [(MNTrafficIncidentAlert *)self->_incidentAlert analyticsMessage];
    [v9 captureUserAction:3060 onTarget:401 eventValue:v8];
    goto LABEL_8;
  }

  v7 = +[MKMapService sharedService];
  [v7 captureUserAction:6097 onTarget:615 eventValue:0];

  v9 = +[NavigationFeedbackCollector sharedFeedbackCollector];
  v8 = [(MNTrafficIncidentAlert *)self->_incidentAlert alternateRoute];
  [v9 offeredEVRerouteWithAlternateRoute:v8 wasAccepted:1];
LABEL_8:
}

- (void)_didTapCancelButton:(id)a3
{
  v4 = [(NavTrafficIncidentContaineeViewController *)self delegate];
  [v4 didTapRejectButtonOnTrafficIncidentViewControllerTarget:739];

  if (![(MNTrafficIncidentAlert *)self->_incidentAlert isReroute])
  {
    return;
  }

  v5 = [(MNTrafficIncidentAlert *)self->_incidentAlert originalRoute];
  if (![v5 isEVRoute])
  {
    goto LABEL_5;
  }

  v6 = [(MNTrafficIncidentAlert *)self->_incidentAlert originalRouteNavigability];
  if ([v6 isEvFeasible])
  {

LABEL_5:
    goto LABEL_6;
  }

  v9 = [(MNTrafficIncidentAlert *)self->_incidentAlert alternateRoute];

  if (v9)
  {
    v10 = +[NavigationFeedbackCollector sharedFeedbackCollector];
    v8 = [(MNTrafficIncidentAlert *)self->_incidentAlert alternateRoute];
    [v10 offeredEVRerouteWithAlternateRoute:v8 wasAccepted:0];
    goto LABEL_12;
  }

LABEL_6:
  v7 = [(MNTrafficIncidentAlert *)self->_incidentAlert analyticsMessage];

  v10 = +[MKMapService sharedService];
  if (v7)
  {
    v8 = [(MNTrafficIncidentAlert *)self->_incidentAlert analyticsMessage];
    [v10 captureUserAction:3061 onTarget:401 eventValue:v8];
LABEL_12:

    goto LABEL_13;
  }

  [v10 captureUserAction:3061 onTarget:615 eventValue:0];
LABEL_13:
}

- (void)setProgressionHidden:(BOOL)a3
{
  v3 = a3;
  self->_progressionHidden = a3;
  v4 = [(NavTrafficIncidentContaineeViewController *)self progressButton];
  [v4 setProgressionHidden:v3];
}

- (void)setRerouteTimerProgress:(double)a3
{
  self->_rerouteTimerProgress = a3;
  v5 = [(NavTrafficIncidentContaineeViewController *)self progressButton];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v8 = [(NavTrafficIncidentContaineeViewController *)self progressButton];
    v7 = [NSNumber numberWithDouble:a3];
    [v8 performSelector:"setProgress:" withObject:v7];
  }
}

- (void)headerViewTapped:(id)a3
{
  v4 = +[MKMapService sharedService];
  v5 = [(NavTrafficIncidentContaineeViewController *)self currentUITargetForAnalytics];
  v6 = [(MNTrafficIncidentAlert *)self->_incidentAlert analyticsMessage];
  [v4 captureUserAction:3 onTarget:v5 eventValue:v6];

  v7 = [(ContaineeViewController *)self cardPresentationController];
  v8 = [v7 containeeLayout];

  if (v8 == 2)
  {
    goto LABEL_8;
  }

  if (v8 != 1)
  {
    return;
  }

  if ([(NavTrafficIncidentContaineeViewController *)self _hasIncidentDetailsContent]|| [(NavTrafficIncidentContaineeViewController *)self _hasActionButtons])
  {
    v9 = [(ContaineeViewController *)self cardPresentationController];
    v10 = [v9 containerStyle];

    if (v10 == 5)
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }
  }

  else
  {
LABEL_8:
    v11 = 1;
  }

  if (v11 != v8)
  {
    v12 = [(ContaineeViewController *)self cardPresentationController];
    [v12 wantsLayout:v11];
  }
}

- (double)actionButtonsHeightForLayout:(unint64_t)a3
{
  v5 = [(NavTrafficIncidentContaineeViewController *)self _hasActionButtons];
  if (a3 == 1)
  {
    result = 0.0;
    if (!v5)
    {
      return result;
    }

    v5 = [(NavTrafficIncidentContaineeViewController *)self _displayActionButtonsForSmallLayout];
  }

  result = 75.0;
  if (!v5)
  {
    return 0.0;
  }

  return result;
}

- (double)detailsHeight
{
  v3 = 0.0;
  if ([(NavTrafficIncidentContaineeViewController *)self _hasIncidentDetailsContent])
  {
    v4 = [(NavTrafficIncidentContaineeViewController *)self incidentDetailsView];
    [v4 systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
    v3 = v5;
  }

  return v3;
}

- (void)_updateActionButtonsPaddingForLayout:(unint64_t)a3
{
  if (a3 == 1 && ![(NavTrafficIncidentContaineeViewController *)self _displayActionButtonsForSmallLayout])
  {
    v5 = [(ContaineeViewController *)self cardPresentationController];
    [v5 bottomSafeOffset];
    [(NSLayoutConstraint *)self->_actionButtonsBottomConstraint setConstant:?];
  }

  else
  {
    actionButtonsBottomConstraint = self->_actionButtonsBottomConstraint;

    [(NSLayoutConstraint *)actionButtonsBottomConstraint setConstant:0.0];
  }
}

- (double)heightForLayout:(unint64_t)a3
{
  if (a3 == 1)
  {
    v5 = [(ContaineeViewController *)self cardPresentationController];
    [v5 bottomSafeOffset];
    v15 = v14;
    [(ContaineeViewController *)self headerHeight];
    v17 = v16 + v15;
    [(NavTrafficIncidentContaineeViewController *)self actionButtonsHeightForLayout:1];
    v4 = v17 + v18;
    goto LABEL_9;
  }

  v4 = -1.0;
  if (a3 == 2)
  {
    if ([(NavTrafficIncidentContaineeViewController *)self _hasIncidentDetailsContent]|| [(NavTrafficIncidentContaineeViewController *)self _hasActionButtons])
    {
      [(ContaineeViewController *)self headerHeight];
      v8 = v7;
      [(NavTrafficIncidentContaineeViewController *)self detailsHeight];
      v10 = v9 + v8;
      [(NavTrafficIncidentContaineeViewController *)self actionButtonsHeightForLayout:2];
      v12 = v11;
      v5 = [(ContaineeViewController *)self cardPresentationController];
      [v5 bottomSafeOffset];
      v4 = v10 + v12 + v13;
      goto LABEL_9;
    }
  }

  else if (a3 == 4)
  {
    v5 = [(ContaineeViewController *)self cardPresentationController];
    [v5 availableHeight];
    v4 = v6;
LABEL_9:
  }

  return v4;
}

- (void)didChangeLayout:(unint64_t)a3
{
  v4.receiver = self;
  v4.super_class = NavTrafficIncidentContaineeViewController;
  [(ContaineeViewController *)&v4 didChangeLayout:a3];
  [(NavTrafficIncidentContaineeViewController *)self _updateGrabberVisibility];
}

- (void)willChangeLayout:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = NavTrafficIncidentContaineeViewController;
  [(ContaineeViewController *)&v5 willChangeLayout:?];
  [(NavTrafficIncidentContaineeViewController *)self _updateActionButtonsPaddingForLayout:a3];
}

- (void)handleDismissAction:(id)a3
{
  incidentAlert = self->_incidentAlert;
  v5 = a3;
  v6 = [(MNTrafficIncidentAlert *)incidentAlert analyticsMessage];

  v7 = +[MKMapService sharedService];
  v8 = [(NavTrafficIncidentContaineeViewController *)self currentUITargetForAnalytics];
  if (v6)
  {
    v9 = [(MNTrafficIncidentAlert *)self->_incidentAlert analyticsMessage];
    v10 = v7;
    v11 = 4;
  }

  else
  {
    v9 = [(NavTrafficIncidentContaineeViewController *)self _incidentTypeAsString];
    v10 = v7;
    v11 = 108;
  }

  [v10 captureUserAction:v11 onTarget:v8 eventValue:v9];

  v14.receiver = self;
  v14.super_class = NavTrafficIncidentContaineeViewController;
  [(ContaineeViewController *)&v14 handleDismissAction:v5];

  v12 = [(NavTrafficIncidentContaineeViewController *)self dismissHandler];

  if (v12)
  {
    v13 = [(NavTrafficIncidentContaineeViewController *)self dismissHandler];
    v13[2]();
  }
}

- (void)applyAlphaToContent:(double)a3
{
  v6.receiver = self;
  v6.super_class = NavTrafficIncidentContaineeViewController;
  [(ContaineeViewController *)&v6 applyAlphaToContent:?];
  if (![(NavTrafficIncidentContaineeViewController *)self _hasIncidentDetailsContent])
  {
    a3 = 0.0;
  }

  v5 = [(NavTrafficIncidentContaineeViewController *)self headerView];
  [v5 setHairLineAlpha:a3];
}

- (void)traitCollectionDidChange:(id)a3
{
  v11.receiver = self;
  v11.super_class = NavTrafficIncidentContaineeViewController;
  v4 = a3;
  [(MapsThemeViewController *)&v11 traitCollectionDidChange:v4];
  v5 = [v4 userInterfaceStyle];

  v6 = [(NavTrafficIncidentContaineeViewController *)self traitCollection];
  v7 = [v6 userInterfaceStyle];

  if (v5 != v7)
  {
    v8 = [(NavTrafficIncidentContaineeViewController *)self incidentAlert];

    v9 = [(NavTrafficIncidentContaineeViewController *)self titleView];
    if (v8)
    {
      v10 = [(NavTrafficIncidentContaineeViewController *)self incidentAlert];
      [NavTrafficIncidentViewComposer configureHeaderView:v9 withTrafficIncidentAlert:v10];
    }

    else
    {
      v10 = [(NavTrafficIncidentContaineeViewController *)self incident];
      [NavTrafficIncidentViewComposer configureHeaderView:v9 withTrafficIncidentFeature:v10];
    }
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = NavTrafficIncidentContaineeViewController;
  [(ContaineeViewController *)&v5 viewWillDisappear:a3];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:@"SiriTrafficIncidentUpdateNotification" object:0];
}

- (void)viewWillAppear:(BOOL)a3
{
  v12.receiver = self;
  v12.super_class = NavTrafficIncidentContaineeViewController;
  [(ContaineeViewController *)&v12 viewWillAppear:a3];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"_didReceiveIncidentUpdate:" name:@"SiriTrafficIncidentUpdateNotification" object:0];

  v5 = [(MNTrafficIncidentAlert *)self->_incidentAlert analyticsMessage];

  v6 = +[MKMapService sharedService];
  if (v5)
  {
    v7 = [(MNTrafficIncidentAlert *)self->_incidentAlert analyticsMessage];
    v8 = v6;
    v9 = 248;
    v10 = 401;
  }

  else
  {
    v7 = [(NavTrafficIncidentContaineeViewController *)self _incidentTypeAsString];
    v8 = v6;
    v9 = 110;
    v10 = 0;
  }

  [v8 captureUserAction:v9 onTarget:v10 eventValue:v7];

  v11 = [(ContaineeViewController *)self cardPresentationController];
  -[NavTrafficIncidentContaineeViewController _updateActionButtonsPaddingForLayout:](self, "_updateActionButtonsPaddingForLayout:", [v11 containeeLayout]);
}

- (void)viewDidLayoutSubviews
{
  v10.receiver = self;
  v10.super_class = NavTrafficIncidentContaineeViewController;
  [(ContaineeViewController *)&v10 viewDidLayoutSubviews];
  previousWidth = self->_previousWidth;
  v4 = [(NavTrafficIncidentContaineeViewController *)self view];
  [v4 bounds];
  v6 = v5;

  if (previousWidth != v6)
  {
    v7 = [(NavTrafficIncidentContaineeViewController *)self view];
    [v7 bounds];
    self->_previousWidth = v8;

    v9 = [(ContaineeViewController *)self cardPresentationController];
    [v9 updateHeightForCurrentLayout];
  }
}

- (void)setAnimationStarted:(BOOL)a3
{
  self->_animationStarted = a3;
  if (a3)
  {
    v4 = [(NavTrafficIncidentContaineeViewController *)self progressButton];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [(NavTrafficIncidentContaineeViewController *)self progressButton];
      [v6 performSelector:"startProgressAnimation"];
    }
  }
}

- (void)viewDidLoad
{
  v117.receiver = self;
  v117.super_class = NavTrafficIncidentContaineeViewController;
  [(ContaineeViewController *)&v117 viewDidLoad];
  v3 = [(ContaineeViewController *)self cardPresentationController];
  [v3 setEdgeAttachedRegularHeightDimmingBehavior:1];

  v116 = [(NavTrafficIncidentContaineeViewController *)self view];
  [v116 setAccessibilityIdentifier:@"NavTrafficIncidentView"];
  v4 = [[ContainerHeaderView alloc] initWithCardButtonType:0];
  [(NavTrafficIncidentContaineeViewController *)self setHeaderView:v4];

  v5 = [(NavTrafficIncidentContaineeViewController *)self headerView];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [(NavTrafficIncidentContaineeViewController *)self headerView];
  [v6 setHeaderSize:2];

  v7 = [(NavTrafficIncidentContaineeViewController *)self headerView];
  [v7 setDelegate:self];

  v8 = [(NavTrafficIncidentContaineeViewController *)self headerView];
  [v8 setButtonHidden:1];

  v9 = [(NavTrafficIncidentContaineeViewController *)self headerView];
  [v116 addSubview:v9];

  v10 = [NavTrafficIncidentHeaderView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v14 = [(NavTrafficIncidentHeaderView *)v10 initWithFrame:CGRectZero.origin.x, y, width, height];
  [(NavTrafficIncidentContaineeViewController *)self setTitleView:v14];

  v15 = [(NavTrafficIncidentContaineeViewController *)self titleView];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

  v16 = [(NavTrafficIncidentContaineeViewController *)self titleView];
  [v16 setDelegate:self];

  v17 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  v18 = [(NavTrafficIncidentContaineeViewController *)self titleView];
  [v17 addSubview:v18];

  v114 = [(NavTrafficIncidentContaineeViewController *)self titleView];
  v112 = [v114 leadingAnchor];
  v110 = [v17 leadingAnchor];
  v108 = [v112 constraintEqualToAnchor:v110 constant:16.0];
  v120[0] = v108;
  v106 = [(NavTrafficIncidentContaineeViewController *)self titleView];
  v104 = [v106 topAnchor];
  v102 = [v17 topAnchor];
  v99 = [v104 constraintEqualToAnchor:v102];
  v120[1] = v99;
  v97 = [(NavTrafficIncidentContaineeViewController *)self titleView];
  v19 = [v97 trailingAnchor];
  v20 = [v17 trailingAnchor];
  v21 = [v19 constraintEqualToAnchor:v20 constant:-16.0];
  v120[2] = v21;
  v22 = [(NavTrafficIncidentContaineeViewController *)self titleView];
  v23 = [v22 bottomAnchor];
  v24 = [v17 bottomAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];
  v120[3] = v25;
  v26 = [NSArray arrayWithObjects:v120 count:4];
  [NSLayoutConstraint activateConstraints:v26];

  v27 = [(NavTrafficIncidentContaineeViewController *)self headerView];
  v115 = v17;
  [v27 setTitleView:v17];

  v28 = [[NavTrafficIncidentDetailsView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  [(NavTrafficIncidentContaineeViewController *)self setIncidentDetailsView:v28];

  v29 = [(NavTrafficIncidentContaineeViewController *)self incidentDetailsView];
  [v29 setTranslatesAutoresizingMaskIntoConstraints:0];

  v30 = [(NavTrafficIncidentContaineeViewController *)self incidentDetailsView];
  [v116 addSubview:v30];

  v31 = +[NavUserDecisionButtonFactory cancelButton];
  cancelButton = self->_cancelButton;
  self->_cancelButton = v31;

  [(MapsProgressBarButton *)self->_cancelButton addTarget:self action:"_didTapCancelButton:" forControlEvents:64];
  v33 = [(MNTrafficIncidentAlert *)self->_incidentAlert acceptButtonInfo];
  LOBYTE(v20) = [v33 isDefaultButton];

  if (v20)
  {
    v34 = +[NavUserDecisionButtonFactory confirmButton];
    v35 = [v34 theme];
    v36 = [v35 blueButtonBackgroundColor:0];
    v37 = [v35 fadedGrayButtonBackgroundColor:0];
    [v34 setUnfilledLabelColor:v36];
    [v34 setUnfilledBackgroundColor:v37];
    v38 = +[UIColor whiteColor];
    [v34 setFilledLabelColor:v38];

    [v34 setFilledBackgroundColor:v36];
    v39 = [UIFont _maps_boldSystemFontWithFixedSize:22.0];
    [v34 setTitleFont:v39];

    v40 = [v34 progressBackgroundFillView];
    [v40 updateColors];

    [v34 setAccessibilityIdentifier:@"ConfirmButton"];
    confirmButton = self->_confirmButton;
    self->_confirmButton = v34;
  }

  else
  {
    v42 = +[NavUserDecisionButtonFactory cancelButton];
    v35 = self->_confirmButton;
    self->_confirmButton = v42;
  }

  [(MapsProgressButton *)self->_confirmButton addTarget:self action:"_didTapActionButton:" forControlEvents:64];
  if (self->_incidentAlert)
  {
    progressionHidden = self->_progressionHidden;
    v44 = [(NavTrafficIncidentContaineeViewController *)self progressButton];
    [v44 setProgressionHidden:progressionHidden];

    v45 = [(NavTrafficIncidentContaineeViewController *)self progressButton];
    v46 = objc_opt_respondsToSelector();

    if (v46)
    {
      v47 = [(NavTrafficIncidentContaineeViewController *)self progressButton];
      v48 = [NSNumber numberWithDouble:self->_rerouteTimerProgress];
      [v47 performSelector:"setProgress:" withObject:v48];
    }
  }

  v49 = [UIStackView alloc];
  v50 = self->_confirmButton;
  v119[0] = self->_cancelButton;
  v119[1] = v50;
  v51 = [NSArray arrayWithObjects:v119 count:2];
  v52 = [v49 initWithArrangedSubviews:v51];
  buttonsStackView = self->_buttonsStackView;
  self->_buttonsStackView = v52;

  [(UIStackView *)self->_buttonsStackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_buttonsStackView setAxis:0];
  [(UIStackView *)self->_buttonsStackView setDistribution:1];
  [(UIStackView *)self->_buttonsStackView setAlignment:0];
  [(UIStackView *)self->_buttonsStackView setSpacing:10.0];
  [(UIStackView *)self->_buttonsStackView setAccessibilityIdentifier:@"ButtonStack"];
  v54 = [(NavTrafficIncidentContaineeViewController *)self buttonsStackView];
  [v116 addSubview:v54];

  v55 = [(NavTrafficIncidentContaineeViewController *)self buttonsStackView];
  v56 = [v55 topAnchor];
  v57 = [(NavTrafficIncidentContaineeViewController *)self headerView];
  v58 = [v57 bottomAnchor];
  v59 = [v56 constraintEqualToAnchor:v58];
  actionButtonsBottomConstraint = self->_actionButtonsBottomConstraint;
  self->_actionButtonsBottomConstraint = v59;

  v113 = [(NavTrafficIncidentContaineeViewController *)self headerView];
  v109 = [v113 leadingAnchor];
  v111 = [(NavTrafficIncidentContaineeViewController *)self view];
  v107 = [v111 leadingAnchor];
  v105 = [v109 constraintEqualToAnchor:v107];
  v118[0] = v105;
  v103 = [(NavTrafficIncidentContaineeViewController *)self headerView];
  v100 = [v103 trailingAnchor];
  v101 = [(NavTrafficIncidentContaineeViewController *)self view];
  v98 = [v101 trailingAnchor];
  v96 = [v100 constraintEqualToAnchor:v98];
  v118[1] = v96;
  v95 = [(NavTrafficIncidentContaineeViewController *)self headerView];
  v93 = [v95 topAnchor];
  v94 = [(NavTrafficIncidentContaineeViewController *)self view];
  v92 = [v94 topAnchor];
  v91 = [v93 constraintEqualToAnchor:v92];
  v118[2] = v91;
  v90 = [(NavTrafficIncidentContaineeViewController *)self incidentDetailsView];
  v88 = [v90 leadingAnchor];
  v89 = [(NavTrafficIncidentContaineeViewController *)self view];
  v87 = [v89 leadingAnchor];
  v86 = [v88 constraintEqualToAnchor:v87];
  v118[3] = v86;
  v85 = [(NavTrafficIncidentContaineeViewController *)self incidentDetailsView];
  v83 = [v85 trailingAnchor];
  v84 = [(NavTrafficIncidentContaineeViewController *)self view];
  v82 = [v84 trailingAnchor];
  v81 = [v83 constraintEqualToAnchor:v82];
  v118[4] = v81;
  v80 = [(NavTrafficIncidentContaineeViewController *)self incidentDetailsView];
  v78 = [v80 topAnchor];
  v79 = [(NavTrafficIncidentContaineeViewController *)self headerView];
  v77 = [v79 bottomAnchor];
  v76 = [v78 constraintEqualToAnchor:v77];
  v118[5] = v76;
  v75 = [(NavTrafficIncidentContaineeViewController *)self buttonsStackView];
  v73 = [v75 leadingAnchor];
  v74 = [(NavTrafficIncidentContaineeViewController *)self view];
  v72 = [v74 leadingAnchor];
  v71 = [v73 constraintEqualToAnchor:v72 constant:24.0];
  v118[6] = v71;
  v61 = [(NavTrafficIncidentContaineeViewController *)self buttonsStackView];
  v62 = [v61 trailingAnchor];
  v63 = [(NavTrafficIncidentContaineeViewController *)self view];
  v64 = [v63 trailingAnchor];
  v65 = [v62 constraintEqualToAnchor:v64 constant:-24.0];
  v118[7] = v65;
  v66 = [(NavTrafficIncidentContaineeViewController *)self buttonsStackView];
  v67 = [v66 heightAnchor];
  v68 = [v67 constraintEqualToConstant:60.0];
  v69 = self->_actionButtonsBottomConstraint;
  v118[8] = v68;
  v118[9] = v69;
  v70 = [NSArray arrayWithObjects:v118 count:10];
  [NSLayoutConstraint activateConstraints:v70];

  [(NavTrafficIncidentContaineeViewController *)self _updateViewsFromContent];
}

- (BOOL)_displayActionButtonsForSmallLayout
{
  v2 = [(NavTrafficIncidentContaineeViewController *)self incidentAlert];
  v3 = [v2 acceptButtonInfo];
  v4 = [v3 buttonDisplay] == 1;

  return v4;
}

- (BOOL)_hasActionButtons
{
  v2 = [(NavTrafficIncidentContaineeViewController *)self incidentAlert];
  v3 = [v2 acceptButtonInfo];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)_hasIncidentDetailsContent
{
  v3 = [(NavTrafficIncidentContaineeViewController *)self incidentAlert];

  if (v3)
  {
    v4 = [(NavTrafficIncidentContaineeViewController *)self incidentAlert];
    v5 = [v4 incident];
    v6 = [v5 type];

    if (v6 == 14)
    {
LABEL_3:
      LOBYTE(v7) = 0;
      return v7;
    }
  }

  else
  {
    v8 = [(NavTrafficIncidentContaineeViewController *)self incident];
    v9 = [v8 type];

    if (v9 == 14)
    {
      goto LABEL_3;
    }
  }

  v10 = [(NavTrafficIncidentContaineeViewController *)self incidentAlert];
  if (v10)
  {
    v11 = [(NavTrafficIncidentContaineeViewController *)self incidentAlert];
    v12 = [v11 incident];
    v13 = [v12 info];
  }

  else
  {
    v11 = [(NavTrafficIncidentContaineeViewController *)self incident];
    v13 = [v11 info];
  }

  if ([v13 length])
  {
    v7 = ![(NavTrafficIncidentContaineeViewController *)self _hasActionButtons];
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (void)_updateGrabberVisibility
{
  v3 = [(NavTrafficIncidentContaineeViewController *)self _allowsCardDrag];
  v4 = [(ContaineeViewController *)self cardPresentationController];
  [v4 setHideGrabber:v3 ^ 1];
}

- (void)_updateViewsFromContent
{
  v2 = self;
  if ([(NavTrafficIncidentContaineeViewController *)self isViewLoaded])
  {
    v3 = [(NavTrafficIncidentContaineeViewController *)v2 incidentAlert];

    v4 = [(NavTrafficIncidentContaineeViewController *)v2 titleView];
    if (v3)
    {
      v5 = [(NavTrafficIncidentContaineeViewController *)v2 incidentAlert];
      [NavTrafficIncidentViewComposer configureHeaderView:v4 withTrafficIncidentAlert:v5];

      v6 = [(NavTrafficIncidentContaineeViewController *)v2 incidentDetailsView];
      v7 = [(NavTrafficIncidentContaineeViewController *)v2 incidentAlert];
      [NavTrafficIncidentViewComposer configureDetailsView:v6 withTrafficIncidentAlert:v7];

      progressionHidden = v2->_progressionHidden;
      v9 = [(NavTrafficIncidentContaineeViewController *)v2 progressButton];
      [v9 setProgressionHidden:progressionHidden];
    }

    else
    {
      v10 = [(NavTrafficIncidentContaineeViewController *)v2 incident];
      [NavTrafficIncidentViewComposer configureHeaderView:v4 withTrafficIncidentFeature:v10];

      v9 = [(NavTrafficIncidentContaineeViewController *)v2 incidentDetailsView];
      v11 = [(NavTrafficIncidentContaineeViewController *)v2 incident];
      [NavTrafficIncidentViewComposer configureDetailsView:v9 withTrafficIncidentFeature:v11];
    }

    if ([(NavTrafficIncidentContaineeViewController *)v2 _hasActionButtons])
    {
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v12 = [(UIStackView *)v2->_buttonsStackView arrangedSubviews];
      v13 = [v12 countByEnumeratingWithState:&v50 objects:v57 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v51;
        do
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v51 != v15)
            {
              objc_enumerationMutation(v12);
            }

            [(UIStackView *)v2->_buttonsStackView _maps_removeArrangedSubview:*(*(&v50 + 1) + 8 * i)];
          }

          v14 = [v12 countByEnumeratingWithState:&v50 objects:v57 count:16];
        }

        while (v14);
      }

      v45 = +[NSMutableArray array];
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v17 = [(NavTrafficIncidentContaineeViewController *)v2 incidentAlert];
      v18 = [v17 buttonInfos];

      v19 = [v18 countByEnumeratingWithState:&v46 objects:v56 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v47;
        v44 = v2;
        do
        {
          for (j = 0; j != v20; j = j + 1)
          {
            if (*v47 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v46 + 1) + 8 * j);
            v24 = [v23 action];
            if (!v24)
            {
              v27 = sub_100035E6C();
              if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_33;
              }

              *buf = 0;
              v34 = v27;
              v35 = "Got an MNNavigationAlertButtonInfo with an unknown action. Not displaying button.";
              v36 = 2;
              goto LABEL_32;
            }

            if (v24 == 2)
            {
              v25 = &OBJC_IVAR___NavTrafficIncidentContaineeViewController__confirmButton;
            }

            else
            {
              if (v24 != 1)
              {
                goto LABEL_28;
              }

              v25 = &OBJC_IVAR___NavTrafficIncidentContaineeViewController__cancelButton;
            }

            v26 = *(&v2->super.super.super.super.super.isa + *v25);
            if (!v26)
            {
LABEL_28:
              v27 = sub_100035E6C();
              if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_33;
              }

              *buf = 138412290;
              v55 = v23;
              v34 = v27;
              v35 = "Couldn't find a UI button to support displaying button info: %@";
              v36 = 12;
LABEL_32:
              _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, v35, buf, v36);
              goto LABEL_33;
            }

            v27 = v26;
            v28 = [v23 title];
            [v27 setTitle:v28 forState:0];

            if (v27 == v2->_confirmButton && (objc_opt_respondsToSelector() & 1) != 0)
            {
              confirmButton = v2->_confirmButton;
              v30 = [v23 title];
              [(MapsProgressButton *)confirmButton performSelector:"setTitle:forState:" withObject:v30 withObject:&off_1016E68C0];

              v2 = v44;
              v31 = v44->_confirmButton;
              v32 = [v23 title];
              [(MapsProgressButton *)v31 performSelector:"setTitle:forState:" withObject:v32 withObject:&off_1016E68D8];
            }

            [v45 addObject:v27];
            v33 = [v27 layer];
            [v33 setCornerRadius:30.0];

LABEL_33:
          }

          v20 = [v18 countByEnumeratingWithState:&v46 objects:v56 count:16];
        }

        while (v20);
      }

      [(UIStackView *)v2->_buttonsStackView _maps_setArrangedSubviews:v45];
      [(UIStackView *)v2->_buttonsStackView setHidden:0];
    }

    else
    {
      [(UIStackView *)v2->_buttonsStackView setHidden:1];
    }

    v37 = [(NavTrafficIncidentContaineeViewController *)v2 _hasIncidentDetailsContent];
    if (v37)
    {
      v38 = 1.0;
    }

    else
    {
      v38 = 0.0;
    }

    v39 = [(NavTrafficIncidentContaineeViewController *)v2 headerView];
    [v39 setHairLineAlpha:v38];

    v40 = [(NavTrafficIncidentContaineeViewController *)v2 incidentDetailsView];
    [v40 setHidden:v37 ^ 1];

    v41 = [(ContaineeViewController *)v2 cardPresentationController];
    v42 = [v41 containeeLayout];

    if ((v37 & 1) != 0 || [(NavTrafficIncidentContaineeViewController *)v2 _hasActionButtons]|| v42 != 2)
    {
      v43 = [(ContaineeViewController *)v2 cardPresentationController];
      [v43 updateHeightForCurrentLayout];
    }

    else
    {
      v43 = [(ContaineeViewController *)v2 cardPresentationController];
      [v43 wantsLayout:1];
    }

    [(NavTrafficIncidentContaineeViewController *)v2 _updateGrabberVisibility];
  }
}

- (void)setAnimationDuration:(double)a3
{
  self->_animationDuration = a3;
  v4 = [(NavTrafficIncidentContaineeViewController *)self progressButton];
  [v4 setAnimationDuration:a3];
}

- (MapsProgressButton)progressButton
{
  incidentAlert = self->_incidentAlert;
  if (incidentAlert)
  {
    v4 = [(MNTrafficIncidentAlert *)incidentAlert acceptButtonInfo];
    v5 = [v4 isDefaultButton];

    if (v5)
    {
      v6 = self->_confirmButton;
    }

    else
    {
      v6 = [(NavTrafficIncidentHeaderView *)self->_titleView dismissButton];
    }
  }

  else
  {
    v7 = sub_10006D178();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315650;
      v12 = "[NavTrafficIncidentContaineeViewController progressButton]";
      v13 = 2080;
      v14 = "NavTrafficIncidentContaineeViewController.m";
      v15 = 1024;
      v16 = 113;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v11, 0x1Cu);
    }

    if (sub_100E03634())
    {
      v8 = sub_10006D178();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = +[NSThread callStackSymbols];
        v11 = 138412290;
        v12 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%@", &v11, 0xCu);
      }
    }

    v6 = 0;
  }

  return v6;
}

- (void)setIncident:(id)a3
{
  v7 = a3;
  v5 = [(NavTrafficIncidentContaineeViewController *)self incident];

  if (v5 != v7)
  {
    objc_storeStrong(&self->_incident, a3);
    incidentAlert = self->_incidentAlert;
    self->_incidentAlert = 0;

    [(NavTrafficIncidentContaineeViewController *)self _updateViewsFromContent];
  }
}

- (void)setIncidentAlert:(id)a3
{
  v6 = a3;
  if (self->_incidentAlert != v6)
  {
    objc_storeStrong(&self->_incidentAlert, a3);
    incident = self->_incident;
    self->_incident = 0;
  }

  [(NavTrafficIncidentContaineeViewController *)self _updateViewsFromContent];
}

@end