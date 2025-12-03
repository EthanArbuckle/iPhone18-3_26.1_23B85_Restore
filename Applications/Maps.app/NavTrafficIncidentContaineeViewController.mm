@interface NavTrafficIncidentContaineeViewController
- (BOOL)_displayActionButtonsForSmallLayout;
- (BOOL)_hasActionButtons;
- (BOOL)_hasIncidentDetailsContent;
- (MapsProgressButton)progressButton;
- (NavTrafficIncidentAlertViewControllerDelegate)delegate;
- (double)actionButtonsHeightForLayout:(unint64_t)layout;
- (double)detailsHeight;
- (double)heightForLayout:(unint64_t)layout;
- (id)_incidentTypeAsString;
- (void)_didReceiveIncidentUpdate:(id)update;
- (void)_didTapActionButton:(id)button;
- (void)_didTapCancelButton:(id)button;
- (void)_updateActionButtonsPaddingForLayout:(unint64_t)layout;
- (void)_updateGrabberVisibility;
- (void)_updateViewsFromContent;
- (void)applyAlphaToContent:(double)content;
- (void)didChangeLayout:(unint64_t)layout;
- (void)handleDismissAction:(id)action;
- (void)headerViewTapped:(id)tapped;
- (void)setAnimationDuration:(double)duration;
- (void)setAnimationStarted:(BOOL)started;
- (void)setIncident:(id)incident;
- (void)setIncidentAlert:(id)alert;
- (void)setProgressionHidden:(BOOL)hidden;
- (void)setRerouteTimerProgress:(double)progress;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)willChangeLayout:(unint64_t)layout;
@end

@implementation NavTrafficIncidentContaineeViewController

- (NavTrafficIncidentAlertViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_didReceiveIncidentUpdate:(id)update
{
  userInfo = [update userInfo];
  v5 = [userInfo objectForKey:@"SiriTrafficIncidentIsClearKey"];
  bOOLValue = [v5 BOOLValue];

  delegate = [(NavTrafficIncidentContaineeViewController *)self delegate];
  v8 = delegate;
  if (bOOLValue)
  {
    [delegate didTapRejectButtonOnTrafficIncidentViewControllerTarget:0];
  }

  else
  {
    [delegate didTapAcceptButtonOnTrafficIncidentViewControllerTarget:0];
  }
}

- (id)_incidentTypeAsString
{
  if (self->_incidentAlert)
  {
    incident = [(MNTrafficIncidentAlert *)self->_incidentAlert incident];
    type = [incident type];
    v4 = @"ACCIDENT";
    switch(type)
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
        if (type == 100)
        {
          v4 = @"TIME_BASED_RESTRICTION";
        }

        else
        {
LABEL_7:
          v4 = [NSString stringWithFormat:@"(unknown: %i)", type];
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

- (void)_didTapActionButton:(id)button
{
  delegate = [(NavTrafficIncidentContaineeViewController *)self delegate];
  [delegate didTapAcceptButtonOnTrafficIncidentViewControllerTarget:739];

  if (![(MNTrafficIncidentAlert *)self->_incidentAlert isReroute])
  {
    return;
  }

  originalRoute = [(MNTrafficIncidentAlert *)self->_incidentAlert originalRoute];
  if (([originalRoute isEVRoute] & 1) == 0)
  {

    goto LABEL_7;
  }

  alternateRoute = [(MNTrafficIncidentAlert *)self->_incidentAlert alternateRoute];

  if (!alternateRoute)
  {
LABEL_7:
    v9 = +[MKMapService sharedService];
    analyticsMessage = [(MNTrafficIncidentAlert *)self->_incidentAlert analyticsMessage];
    [v9 captureUserAction:3060 onTarget:401 eventValue:analyticsMessage];
    goto LABEL_8;
  }

  v7 = +[MKMapService sharedService];
  [v7 captureUserAction:6097 onTarget:615 eventValue:0];

  v9 = +[NavigationFeedbackCollector sharedFeedbackCollector];
  analyticsMessage = [(MNTrafficIncidentAlert *)self->_incidentAlert alternateRoute];
  [v9 offeredEVRerouteWithAlternateRoute:analyticsMessage wasAccepted:1];
LABEL_8:
}

- (void)_didTapCancelButton:(id)button
{
  delegate = [(NavTrafficIncidentContaineeViewController *)self delegate];
  [delegate didTapRejectButtonOnTrafficIncidentViewControllerTarget:739];

  if (![(MNTrafficIncidentAlert *)self->_incidentAlert isReroute])
  {
    return;
  }

  originalRoute = [(MNTrafficIncidentAlert *)self->_incidentAlert originalRoute];
  if (![originalRoute isEVRoute])
  {
    goto LABEL_5;
  }

  originalRouteNavigability = [(MNTrafficIncidentAlert *)self->_incidentAlert originalRouteNavigability];
  if ([originalRouteNavigability isEvFeasible])
  {

LABEL_5:
    goto LABEL_6;
  }

  alternateRoute = [(MNTrafficIncidentAlert *)self->_incidentAlert alternateRoute];

  if (alternateRoute)
  {
    v10 = +[NavigationFeedbackCollector sharedFeedbackCollector];
    alternateRoute2 = [(MNTrafficIncidentAlert *)self->_incidentAlert alternateRoute];
    [v10 offeredEVRerouteWithAlternateRoute:alternateRoute2 wasAccepted:0];
    goto LABEL_12;
  }

LABEL_6:
  analyticsMessage = [(MNTrafficIncidentAlert *)self->_incidentAlert analyticsMessage];

  v10 = +[MKMapService sharedService];
  if (analyticsMessage)
  {
    alternateRoute2 = [(MNTrafficIncidentAlert *)self->_incidentAlert analyticsMessage];
    [v10 captureUserAction:3061 onTarget:401 eventValue:alternateRoute2];
LABEL_12:

    goto LABEL_13;
  }

  [v10 captureUserAction:3061 onTarget:615 eventValue:0];
LABEL_13:
}

- (void)setProgressionHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  self->_progressionHidden = hidden;
  progressButton = [(NavTrafficIncidentContaineeViewController *)self progressButton];
  [progressButton setProgressionHidden:hiddenCopy];
}

- (void)setRerouteTimerProgress:(double)progress
{
  self->_rerouteTimerProgress = progress;
  progressButton = [(NavTrafficIncidentContaineeViewController *)self progressButton];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    progressButton2 = [(NavTrafficIncidentContaineeViewController *)self progressButton];
    v7 = [NSNumber numberWithDouble:progress];
    [progressButton2 performSelector:"setProgress:" withObject:v7];
  }
}

- (void)headerViewTapped:(id)tapped
{
  v4 = +[MKMapService sharedService];
  currentUITargetForAnalytics = [(NavTrafficIncidentContaineeViewController *)self currentUITargetForAnalytics];
  analyticsMessage = [(MNTrafficIncidentAlert *)self->_incidentAlert analyticsMessage];
  [v4 captureUserAction:3 onTarget:currentUITargetForAnalytics eventValue:analyticsMessage];

  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  containeeLayout = [cardPresentationController containeeLayout];

  if (containeeLayout == 2)
  {
    goto LABEL_8;
  }

  if (containeeLayout != 1)
  {
    return;
  }

  if ([(NavTrafficIncidentContaineeViewController *)self _hasIncidentDetailsContent]|| [(NavTrafficIncidentContaineeViewController *)self _hasActionButtons])
  {
    cardPresentationController2 = [(ContaineeViewController *)self cardPresentationController];
    containerStyle = [cardPresentationController2 containerStyle];

    if (containerStyle == 5)
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

  if (v11 != containeeLayout)
  {
    cardPresentationController3 = [(ContaineeViewController *)self cardPresentationController];
    [cardPresentationController3 wantsLayout:v11];
  }
}

- (double)actionButtonsHeightForLayout:(unint64_t)layout
{
  _hasActionButtons = [(NavTrafficIncidentContaineeViewController *)self _hasActionButtons];
  if (layout == 1)
  {
    result = 0.0;
    if (!_hasActionButtons)
    {
      return result;
    }

    _hasActionButtons = [(NavTrafficIncidentContaineeViewController *)self _displayActionButtonsForSmallLayout];
  }

  result = 75.0;
  if (!_hasActionButtons)
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
    incidentDetailsView = [(NavTrafficIncidentContaineeViewController *)self incidentDetailsView];
    [incidentDetailsView systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
    v3 = v5;
  }

  return v3;
}

- (void)_updateActionButtonsPaddingForLayout:(unint64_t)layout
{
  if (layout == 1 && ![(NavTrafficIncidentContaineeViewController *)self _displayActionButtonsForSmallLayout])
  {
    cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
    [cardPresentationController bottomSafeOffset];
    [(NSLayoutConstraint *)self->_actionButtonsBottomConstraint setConstant:?];
  }

  else
  {
    actionButtonsBottomConstraint = self->_actionButtonsBottomConstraint;

    [(NSLayoutConstraint *)actionButtonsBottomConstraint setConstant:0.0];
  }
}

- (double)heightForLayout:(unint64_t)layout
{
  if (layout == 1)
  {
    cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
    [cardPresentationController bottomSafeOffset];
    v15 = v14;
    [(ContaineeViewController *)self headerHeight];
    v17 = v16 + v15;
    [(NavTrafficIncidentContaineeViewController *)self actionButtonsHeightForLayout:1];
    v4 = v17 + v18;
    goto LABEL_9;
  }

  v4 = -1.0;
  if (layout == 2)
  {
    if ([(NavTrafficIncidentContaineeViewController *)self _hasIncidentDetailsContent]|| [(NavTrafficIncidentContaineeViewController *)self _hasActionButtons])
    {
      [(ContaineeViewController *)self headerHeight];
      v8 = v7;
      [(NavTrafficIncidentContaineeViewController *)self detailsHeight];
      v10 = v9 + v8;
      [(NavTrafficIncidentContaineeViewController *)self actionButtonsHeightForLayout:2];
      v12 = v11;
      cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
      [cardPresentationController bottomSafeOffset];
      v4 = v10 + v12 + v13;
      goto LABEL_9;
    }
  }

  else if (layout == 4)
  {
    cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
    [cardPresentationController availableHeight];
    v4 = v6;
LABEL_9:
  }

  return v4;
}

- (void)didChangeLayout:(unint64_t)layout
{
  v4.receiver = self;
  v4.super_class = NavTrafficIncidentContaineeViewController;
  [(ContaineeViewController *)&v4 didChangeLayout:layout];
  [(NavTrafficIncidentContaineeViewController *)self _updateGrabberVisibility];
}

- (void)willChangeLayout:(unint64_t)layout
{
  v5.receiver = self;
  v5.super_class = NavTrafficIncidentContaineeViewController;
  [(ContaineeViewController *)&v5 willChangeLayout:?];
  [(NavTrafficIncidentContaineeViewController *)self _updateActionButtonsPaddingForLayout:layout];
}

- (void)handleDismissAction:(id)action
{
  incidentAlert = self->_incidentAlert;
  actionCopy = action;
  analyticsMessage = [(MNTrafficIncidentAlert *)incidentAlert analyticsMessage];

  v7 = +[MKMapService sharedService];
  currentUITargetForAnalytics = [(NavTrafficIncidentContaineeViewController *)self currentUITargetForAnalytics];
  if (analyticsMessage)
  {
    analyticsMessage2 = [(MNTrafficIncidentAlert *)self->_incidentAlert analyticsMessage];
    v10 = v7;
    v11 = 4;
  }

  else
  {
    analyticsMessage2 = [(NavTrafficIncidentContaineeViewController *)self _incidentTypeAsString];
    v10 = v7;
    v11 = 108;
  }

  [v10 captureUserAction:v11 onTarget:currentUITargetForAnalytics eventValue:analyticsMessage2];

  v14.receiver = self;
  v14.super_class = NavTrafficIncidentContaineeViewController;
  [(ContaineeViewController *)&v14 handleDismissAction:actionCopy];

  dismissHandler = [(NavTrafficIncidentContaineeViewController *)self dismissHandler];

  if (dismissHandler)
  {
    dismissHandler2 = [(NavTrafficIncidentContaineeViewController *)self dismissHandler];
    dismissHandler2[2]();
  }
}

- (void)applyAlphaToContent:(double)content
{
  v6.receiver = self;
  v6.super_class = NavTrafficIncidentContaineeViewController;
  [(ContaineeViewController *)&v6 applyAlphaToContent:?];
  if (![(NavTrafficIncidentContaineeViewController *)self _hasIncidentDetailsContent])
  {
    content = 0.0;
  }

  headerView = [(NavTrafficIncidentContaineeViewController *)self headerView];
  [headerView setHairLineAlpha:content];
}

- (void)traitCollectionDidChange:(id)change
{
  v11.receiver = self;
  v11.super_class = NavTrafficIncidentContaineeViewController;
  changeCopy = change;
  [(MapsThemeViewController *)&v11 traitCollectionDidChange:changeCopy];
  userInterfaceStyle = [changeCopy userInterfaceStyle];

  traitCollection = [(NavTrafficIncidentContaineeViewController *)self traitCollection];
  userInterfaceStyle2 = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    incidentAlert = [(NavTrafficIncidentContaineeViewController *)self incidentAlert];

    titleView = [(NavTrafficIncidentContaineeViewController *)self titleView];
    if (incidentAlert)
    {
      incidentAlert2 = [(NavTrafficIncidentContaineeViewController *)self incidentAlert];
      [NavTrafficIncidentViewComposer configureHeaderView:titleView withTrafficIncidentAlert:incidentAlert2];
    }

    else
    {
      incidentAlert2 = [(NavTrafficIncidentContaineeViewController *)self incident];
      [NavTrafficIncidentViewComposer configureHeaderView:titleView withTrafficIncidentFeature:incidentAlert2];
    }
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = NavTrafficIncidentContaineeViewController;
  [(ContaineeViewController *)&v5 viewWillDisappear:disappear];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:@"SiriTrafficIncidentUpdateNotification" object:0];
}

- (void)viewWillAppear:(BOOL)appear
{
  v12.receiver = self;
  v12.super_class = NavTrafficIncidentContaineeViewController;
  [(ContaineeViewController *)&v12 viewWillAppear:appear];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"_didReceiveIncidentUpdate:" name:@"SiriTrafficIncidentUpdateNotification" object:0];

  analyticsMessage = [(MNTrafficIncidentAlert *)self->_incidentAlert analyticsMessage];

  v6 = +[MKMapService sharedService];
  if (analyticsMessage)
  {
    analyticsMessage2 = [(MNTrafficIncidentAlert *)self->_incidentAlert analyticsMessage];
    v8 = v6;
    v9 = 248;
    v10 = 401;
  }

  else
  {
    analyticsMessage2 = [(NavTrafficIncidentContaineeViewController *)self _incidentTypeAsString];
    v8 = v6;
    v9 = 110;
    v10 = 0;
  }

  [v8 captureUserAction:v9 onTarget:v10 eventValue:analyticsMessage2];

  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  -[NavTrafficIncidentContaineeViewController _updateActionButtonsPaddingForLayout:](self, "_updateActionButtonsPaddingForLayout:", [cardPresentationController containeeLayout]);
}

- (void)viewDidLayoutSubviews
{
  v10.receiver = self;
  v10.super_class = NavTrafficIncidentContaineeViewController;
  [(ContaineeViewController *)&v10 viewDidLayoutSubviews];
  previousWidth = self->_previousWidth;
  view = [(NavTrafficIncidentContaineeViewController *)self view];
  [view bounds];
  v6 = v5;

  if (previousWidth != v6)
  {
    view2 = [(NavTrafficIncidentContaineeViewController *)self view];
    [view2 bounds];
    self->_previousWidth = v8;

    cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
    [cardPresentationController updateHeightForCurrentLayout];
  }
}

- (void)setAnimationStarted:(BOOL)started
{
  self->_animationStarted = started;
  if (started)
  {
    progressButton = [(NavTrafficIncidentContaineeViewController *)self progressButton];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      progressButton2 = [(NavTrafficIncidentContaineeViewController *)self progressButton];
      [progressButton2 performSelector:"startProgressAnimation"];
    }
  }
}

- (void)viewDidLoad
{
  v117.receiver = self;
  v117.super_class = NavTrafficIncidentContaineeViewController;
  [(ContaineeViewController *)&v117 viewDidLoad];
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController setEdgeAttachedRegularHeightDimmingBehavior:1];

  view = [(NavTrafficIncidentContaineeViewController *)self view];
  [view setAccessibilityIdentifier:@"NavTrafficIncidentView"];
  v4 = [[ContainerHeaderView alloc] initWithCardButtonType:0];
  [(NavTrafficIncidentContaineeViewController *)self setHeaderView:v4];

  headerView = [(NavTrafficIncidentContaineeViewController *)self headerView];
  [headerView setTranslatesAutoresizingMaskIntoConstraints:0];

  headerView2 = [(NavTrafficIncidentContaineeViewController *)self headerView];
  [headerView2 setHeaderSize:2];

  headerView3 = [(NavTrafficIncidentContaineeViewController *)self headerView];
  [headerView3 setDelegate:self];

  headerView4 = [(NavTrafficIncidentContaineeViewController *)self headerView];
  [headerView4 setButtonHidden:1];

  headerView5 = [(NavTrafficIncidentContaineeViewController *)self headerView];
  [view addSubview:headerView5];

  v10 = [NavTrafficIncidentHeaderView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  height = [(NavTrafficIncidentHeaderView *)v10 initWithFrame:CGRectZero.origin.x, y, width, height];
  [(NavTrafficIncidentContaineeViewController *)self setTitleView:height];

  titleView = [(NavTrafficIncidentContaineeViewController *)self titleView];
  [titleView setTranslatesAutoresizingMaskIntoConstraints:0];

  titleView2 = [(NavTrafficIncidentContaineeViewController *)self titleView];
  [titleView2 setDelegate:self];

  v17 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  titleView3 = [(NavTrafficIncidentContaineeViewController *)self titleView];
  [v17 addSubview:titleView3];

  titleView4 = [(NavTrafficIncidentContaineeViewController *)self titleView];
  leadingAnchor = [titleView4 leadingAnchor];
  leadingAnchor2 = [v17 leadingAnchor];
  v108 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  v120[0] = v108;
  titleView5 = [(NavTrafficIncidentContaineeViewController *)self titleView];
  topAnchor = [titleView5 topAnchor];
  topAnchor2 = [v17 topAnchor];
  v99 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v120[1] = v99;
  titleView6 = [(NavTrafficIncidentContaineeViewController *)self titleView];
  trailingAnchor = [titleView6 trailingAnchor];
  trailingAnchor2 = [v17 trailingAnchor];
  v21 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
  v120[2] = v21;
  titleView7 = [(NavTrafficIncidentContaineeViewController *)self titleView];
  bottomAnchor = [titleView7 bottomAnchor];
  bottomAnchor2 = [v17 bottomAnchor];
  v25 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v120[3] = v25;
  v26 = [NSArray arrayWithObjects:v120 count:4];
  [NSLayoutConstraint activateConstraints:v26];

  headerView6 = [(NavTrafficIncidentContaineeViewController *)self headerView];
  v115 = v17;
  [headerView6 setTitleView:v17];

  height2 = [[NavTrafficIncidentDetailsView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  [(NavTrafficIncidentContaineeViewController *)self setIncidentDetailsView:height2];

  incidentDetailsView = [(NavTrafficIncidentContaineeViewController *)self incidentDetailsView];
  [incidentDetailsView setTranslatesAutoresizingMaskIntoConstraints:0];

  incidentDetailsView2 = [(NavTrafficIncidentContaineeViewController *)self incidentDetailsView];
  [view addSubview:incidentDetailsView2];

  v31 = +[NavUserDecisionButtonFactory cancelButton];
  cancelButton = self->_cancelButton;
  self->_cancelButton = v31;

  [(MapsProgressBarButton *)self->_cancelButton addTarget:self action:"_didTapCancelButton:" forControlEvents:64];
  acceptButtonInfo = [(MNTrafficIncidentAlert *)self->_incidentAlert acceptButtonInfo];
  LOBYTE(trailingAnchor2) = [acceptButtonInfo isDefaultButton];

  if (trailingAnchor2)
  {
    v34 = +[NavUserDecisionButtonFactory confirmButton];
    theme = [v34 theme];
    v36 = [theme blueButtonBackgroundColor:0];
    v37 = [theme fadedGrayButtonBackgroundColor:0];
    [v34 setUnfilledLabelColor:v36];
    [v34 setUnfilledBackgroundColor:v37];
    v38 = +[UIColor whiteColor];
    [v34 setFilledLabelColor:v38];

    [v34 setFilledBackgroundColor:v36];
    v39 = [UIFont _maps_boldSystemFontWithFixedSize:22.0];
    [v34 setTitleFont:v39];

    progressBackgroundFillView = [v34 progressBackgroundFillView];
    [progressBackgroundFillView updateColors];

    [v34 setAccessibilityIdentifier:@"ConfirmButton"];
    confirmButton = self->_confirmButton;
    self->_confirmButton = v34;
  }

  else
  {
    v42 = +[NavUserDecisionButtonFactory cancelButton];
    theme = self->_confirmButton;
    self->_confirmButton = v42;
  }

  [(MapsProgressButton *)self->_confirmButton addTarget:self action:"_didTapActionButton:" forControlEvents:64];
  if (self->_incidentAlert)
  {
    progressionHidden = self->_progressionHidden;
    progressButton = [(NavTrafficIncidentContaineeViewController *)self progressButton];
    [progressButton setProgressionHidden:progressionHidden];

    progressButton2 = [(NavTrafficIncidentContaineeViewController *)self progressButton];
    v46 = objc_opt_respondsToSelector();

    if (v46)
    {
      progressButton3 = [(NavTrafficIncidentContaineeViewController *)self progressButton];
      v48 = [NSNumber numberWithDouble:self->_rerouteTimerProgress];
      [progressButton3 performSelector:"setProgress:" withObject:v48];
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
  buttonsStackView = [(NavTrafficIncidentContaineeViewController *)self buttonsStackView];
  [view addSubview:buttonsStackView];

  buttonsStackView2 = [(NavTrafficIncidentContaineeViewController *)self buttonsStackView];
  topAnchor3 = [buttonsStackView2 topAnchor];
  headerView7 = [(NavTrafficIncidentContaineeViewController *)self headerView];
  bottomAnchor3 = [headerView7 bottomAnchor];
  v59 = [topAnchor3 constraintEqualToAnchor:bottomAnchor3];
  actionButtonsBottomConstraint = self->_actionButtonsBottomConstraint;
  self->_actionButtonsBottomConstraint = v59;

  headerView8 = [(NavTrafficIncidentContaineeViewController *)self headerView];
  leadingAnchor3 = [headerView8 leadingAnchor];
  view2 = [(NavTrafficIncidentContaineeViewController *)self view];
  leadingAnchor4 = [view2 leadingAnchor];
  v105 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v118[0] = v105;
  headerView9 = [(NavTrafficIncidentContaineeViewController *)self headerView];
  trailingAnchor3 = [headerView9 trailingAnchor];
  view3 = [(NavTrafficIncidentContaineeViewController *)self view];
  trailingAnchor4 = [view3 trailingAnchor];
  v96 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v118[1] = v96;
  headerView10 = [(NavTrafficIncidentContaineeViewController *)self headerView];
  topAnchor4 = [headerView10 topAnchor];
  view4 = [(NavTrafficIncidentContaineeViewController *)self view];
  topAnchor5 = [view4 topAnchor];
  v91 = [topAnchor4 constraintEqualToAnchor:topAnchor5];
  v118[2] = v91;
  incidentDetailsView3 = [(NavTrafficIncidentContaineeViewController *)self incidentDetailsView];
  leadingAnchor5 = [incidentDetailsView3 leadingAnchor];
  view5 = [(NavTrafficIncidentContaineeViewController *)self view];
  leadingAnchor6 = [view5 leadingAnchor];
  v86 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v118[3] = v86;
  incidentDetailsView4 = [(NavTrafficIncidentContaineeViewController *)self incidentDetailsView];
  trailingAnchor5 = [incidentDetailsView4 trailingAnchor];
  view6 = [(NavTrafficIncidentContaineeViewController *)self view];
  trailingAnchor6 = [view6 trailingAnchor];
  v81 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v118[4] = v81;
  incidentDetailsView5 = [(NavTrafficIncidentContaineeViewController *)self incidentDetailsView];
  topAnchor6 = [incidentDetailsView5 topAnchor];
  headerView11 = [(NavTrafficIncidentContaineeViewController *)self headerView];
  bottomAnchor4 = [headerView11 bottomAnchor];
  v76 = [topAnchor6 constraintEqualToAnchor:bottomAnchor4];
  v118[5] = v76;
  buttonsStackView3 = [(NavTrafficIncidentContaineeViewController *)self buttonsStackView];
  leadingAnchor7 = [buttonsStackView3 leadingAnchor];
  view7 = [(NavTrafficIncidentContaineeViewController *)self view];
  leadingAnchor8 = [view7 leadingAnchor];
  v71 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8 constant:24.0];
  v118[6] = v71;
  buttonsStackView4 = [(NavTrafficIncidentContaineeViewController *)self buttonsStackView];
  trailingAnchor7 = [buttonsStackView4 trailingAnchor];
  view8 = [(NavTrafficIncidentContaineeViewController *)self view];
  trailingAnchor8 = [view8 trailingAnchor];
  v65 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8 constant:-24.0];
  v118[7] = v65;
  buttonsStackView5 = [(NavTrafficIncidentContaineeViewController *)self buttonsStackView];
  heightAnchor = [buttonsStackView5 heightAnchor];
  v68 = [heightAnchor constraintEqualToConstant:60.0];
  v69 = self->_actionButtonsBottomConstraint;
  v118[8] = v68;
  v118[9] = v69;
  v70 = [NSArray arrayWithObjects:v118 count:10];
  [NSLayoutConstraint activateConstraints:v70];

  [(NavTrafficIncidentContaineeViewController *)self _updateViewsFromContent];
}

- (BOOL)_displayActionButtonsForSmallLayout
{
  incidentAlert = [(NavTrafficIncidentContaineeViewController *)self incidentAlert];
  acceptButtonInfo = [incidentAlert acceptButtonInfo];
  v4 = [acceptButtonInfo buttonDisplay] == 1;

  return v4;
}

- (BOOL)_hasActionButtons
{
  incidentAlert = [(NavTrafficIncidentContaineeViewController *)self incidentAlert];
  acceptButtonInfo = [incidentAlert acceptButtonInfo];
  v4 = acceptButtonInfo != 0;

  return v4;
}

- (BOOL)_hasIncidentDetailsContent
{
  incidentAlert = [(NavTrafficIncidentContaineeViewController *)self incidentAlert];

  if (incidentAlert)
  {
    incidentAlert2 = [(NavTrafficIncidentContaineeViewController *)self incidentAlert];
    incident = [incidentAlert2 incident];
    type = [incident type];

    if (type == 14)
    {
LABEL_3:
      LOBYTE(v7) = 0;
      return v7;
    }
  }

  else
  {
    incident2 = [(NavTrafficIncidentContaineeViewController *)self incident];
    type2 = [incident2 type];

    if (type2 == 14)
    {
      goto LABEL_3;
    }
  }

  incidentAlert3 = [(NavTrafficIncidentContaineeViewController *)self incidentAlert];
  if (incidentAlert3)
  {
    incidentAlert4 = [(NavTrafficIncidentContaineeViewController *)self incidentAlert];
    incident3 = [incidentAlert4 incident];
    info = [incident3 info];
  }

  else
  {
    incidentAlert4 = [(NavTrafficIncidentContaineeViewController *)self incident];
    info = [incidentAlert4 info];
  }

  if ([info length])
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
  _allowsCardDrag = [(NavTrafficIncidentContaineeViewController *)self _allowsCardDrag];
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController setHideGrabber:_allowsCardDrag ^ 1];
}

- (void)_updateViewsFromContent
{
  selfCopy = self;
  if ([(NavTrafficIncidentContaineeViewController *)self isViewLoaded])
  {
    incidentAlert = [(NavTrafficIncidentContaineeViewController *)selfCopy incidentAlert];

    titleView = [(NavTrafficIncidentContaineeViewController *)selfCopy titleView];
    if (incidentAlert)
    {
      incidentAlert2 = [(NavTrafficIncidentContaineeViewController *)selfCopy incidentAlert];
      [NavTrafficIncidentViewComposer configureHeaderView:titleView withTrafficIncidentAlert:incidentAlert2];

      incidentDetailsView = [(NavTrafficIncidentContaineeViewController *)selfCopy incidentDetailsView];
      incidentAlert3 = [(NavTrafficIncidentContaineeViewController *)selfCopy incidentAlert];
      [NavTrafficIncidentViewComposer configureDetailsView:incidentDetailsView withTrafficIncidentAlert:incidentAlert3];

      progressionHidden = selfCopy->_progressionHidden;
      progressButton = [(NavTrafficIncidentContaineeViewController *)selfCopy progressButton];
      [progressButton setProgressionHidden:progressionHidden];
    }

    else
    {
      incident = [(NavTrafficIncidentContaineeViewController *)selfCopy incident];
      [NavTrafficIncidentViewComposer configureHeaderView:titleView withTrafficIncidentFeature:incident];

      progressButton = [(NavTrafficIncidentContaineeViewController *)selfCopy incidentDetailsView];
      incident2 = [(NavTrafficIncidentContaineeViewController *)selfCopy incident];
      [NavTrafficIncidentViewComposer configureDetailsView:progressButton withTrafficIncidentFeature:incident2];
    }

    if ([(NavTrafficIncidentContaineeViewController *)selfCopy _hasActionButtons])
    {
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      arrangedSubviews = [(UIStackView *)selfCopy->_buttonsStackView arrangedSubviews];
      v13 = [arrangedSubviews countByEnumeratingWithState:&v50 objects:v57 count:16];
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
              objc_enumerationMutation(arrangedSubviews);
            }

            [(UIStackView *)selfCopy->_buttonsStackView _maps_removeArrangedSubview:*(*(&v50 + 1) + 8 * i)];
          }

          v14 = [arrangedSubviews countByEnumeratingWithState:&v50 objects:v57 count:16];
        }

        while (v14);
      }

      v45 = +[NSMutableArray array];
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      incidentAlert4 = [(NavTrafficIncidentContaineeViewController *)selfCopy incidentAlert];
      buttonInfos = [incidentAlert4 buttonInfos];

      v19 = [buttonInfos countByEnumeratingWithState:&v46 objects:v56 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v47;
        v44 = selfCopy;
        do
        {
          for (j = 0; j != v20; j = j + 1)
          {
            if (*v47 != v21)
            {
              objc_enumerationMutation(buttonInfos);
            }

            v23 = *(*(&v46 + 1) + 8 * j);
            action = [v23 action];
            if (!action)
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

            if (action == 2)
            {
              v25 = &OBJC_IVAR___NavTrafficIncidentContaineeViewController__confirmButton;
            }

            else
            {
              if (action != 1)
              {
                goto LABEL_28;
              }

              v25 = &OBJC_IVAR___NavTrafficIncidentContaineeViewController__cancelButton;
            }

            v26 = *(&selfCopy->super.super.super.super.super.isa + *v25);
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
            title = [v23 title];
            [v27 setTitle:title forState:0];

            if (v27 == selfCopy->_confirmButton && (objc_opt_respondsToSelector() & 1) != 0)
            {
              confirmButton = selfCopy->_confirmButton;
              title2 = [v23 title];
              [(MapsProgressButton *)confirmButton performSelector:"setTitle:forState:" withObject:title2 withObject:&off_1016E68C0];

              selfCopy = v44;
              v31 = v44->_confirmButton;
              title3 = [v23 title];
              [(MapsProgressButton *)v31 performSelector:"setTitle:forState:" withObject:title3 withObject:&off_1016E68D8];
            }

            [v45 addObject:v27];
            layer = [v27 layer];
            [layer setCornerRadius:30.0];

LABEL_33:
          }

          v20 = [buttonInfos countByEnumeratingWithState:&v46 objects:v56 count:16];
        }

        while (v20);
      }

      [(UIStackView *)selfCopy->_buttonsStackView _maps_setArrangedSubviews:v45];
      [(UIStackView *)selfCopy->_buttonsStackView setHidden:0];
    }

    else
    {
      [(UIStackView *)selfCopy->_buttonsStackView setHidden:1];
    }

    _hasIncidentDetailsContent = [(NavTrafficIncidentContaineeViewController *)selfCopy _hasIncidentDetailsContent];
    if (_hasIncidentDetailsContent)
    {
      v38 = 1.0;
    }

    else
    {
      v38 = 0.0;
    }

    headerView = [(NavTrafficIncidentContaineeViewController *)selfCopy headerView];
    [headerView setHairLineAlpha:v38];

    incidentDetailsView2 = [(NavTrafficIncidentContaineeViewController *)selfCopy incidentDetailsView];
    [incidentDetailsView2 setHidden:_hasIncidentDetailsContent ^ 1];

    cardPresentationController = [(ContaineeViewController *)selfCopy cardPresentationController];
    containeeLayout = [cardPresentationController containeeLayout];

    if ((_hasIncidentDetailsContent & 1) != 0 || [(NavTrafficIncidentContaineeViewController *)selfCopy _hasActionButtons]|| containeeLayout != 2)
    {
      cardPresentationController2 = [(ContaineeViewController *)selfCopy cardPresentationController];
      [cardPresentationController2 updateHeightForCurrentLayout];
    }

    else
    {
      cardPresentationController2 = [(ContaineeViewController *)selfCopy cardPresentationController];
      [cardPresentationController2 wantsLayout:1];
    }

    [(NavTrafficIncidentContaineeViewController *)selfCopy _updateGrabberVisibility];
  }
}

- (void)setAnimationDuration:(double)duration
{
  self->_animationDuration = duration;
  progressButton = [(NavTrafficIncidentContaineeViewController *)self progressButton];
  [progressButton setAnimationDuration:duration];
}

- (MapsProgressButton)progressButton
{
  incidentAlert = self->_incidentAlert;
  if (incidentAlert)
  {
    acceptButtonInfo = [(MNTrafficIncidentAlert *)incidentAlert acceptButtonInfo];
    isDefaultButton = [acceptButtonInfo isDefaultButton];

    if (isDefaultButton)
    {
      dismissButton = self->_confirmButton;
    }

    else
    {
      dismissButton = [(NavTrafficIncidentHeaderView *)self->_titleView dismissButton];
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

    dismissButton = 0;
  }

  return dismissButton;
}

- (void)setIncident:(id)incident
{
  incidentCopy = incident;
  incident = [(NavTrafficIncidentContaineeViewController *)self incident];

  if (incident != incidentCopy)
  {
    objc_storeStrong(&self->_incident, incident);
    incidentAlert = self->_incidentAlert;
    self->_incidentAlert = 0;

    [(NavTrafficIncidentContaineeViewController *)self _updateViewsFromContent];
  }
}

- (void)setIncidentAlert:(id)alert
{
  alertCopy = alert;
  if (self->_incidentAlert != alertCopy)
  {
    objc_storeStrong(&self->_incidentAlert, alert);
    incident = self->_incident;
    self->_incident = 0;
  }

  [(NavTrafficIncidentContaineeViewController *)self _updateViewsFromContent];
}

@end