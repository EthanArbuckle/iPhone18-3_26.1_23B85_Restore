@interface NavTrafficIncidentReportSubmissionContaineeViewController
- (NavTrafficIncidentReportSubmissionContaineeDelegate)reportingDelegate;
- (NavTrafficIncidentReportSubmissionContaineeViewController)initWithItem:(id)item report:(id)report;
- (double)heightForLayout:(unint64_t)layout;
- (void)_cancelDismissTimer;
- (void)_dismissAfterUserInteraction;
- (void)_performDismissal;
- (void)addCircularProgressButtonSubview;
- (void)headerViewButtonTapped:(id)tapped buttonType:(unint64_t)type;
- (void)updateContent;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation NavTrafficIncidentReportSubmissionContaineeViewController

- (NavTrafficIncidentReportSubmissionContaineeDelegate)reportingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_reportingDelegate);

  return WeakRetained;
}

- (void)_performDismissal
{
  dismissTimer = [(NavTrafficIncidentReportSubmissionContaineeViewController *)self dismissTimer];
  [dismissTimer invalidate];

  reportingDelegate = [(NavTrafficIncidentReportSubmissionContaineeViewController *)self reportingDelegate];
  [reportingDelegate incidentReportSubmissionContaineeDidFinish:self];
}

- (void)_dismissAfterUserInteraction
{
  v3 = +[MKMapService sharedService];
  incidentTypeAsString = [(TrafficIncidentLayoutItem *)self->_layoutItem incidentTypeAsString];
  [v3 captureUserAction:4 onTarget:740 eventValue:incidentTypeAsString];

  [(NavTrafficIncidentReportSubmissionContaineeViewController *)self _performDismissal];
}

- (void)_cancelDismissTimer
{
  dismissTimer = [(NavTrafficIncidentReportSubmissionContaineeViewController *)self dismissTimer];
  [dismissTimer invalidate];

  [(NavTrafficIncidentReportSubmissionContaineeViewController *)self setDismissTimer:0];
}

- (double)heightForLayout:(unint64_t)layout
{
  v3 = -1.0;
  if (layout == 5)
  {
    [(ContaineeViewController *)self headerHeight];
    v6 = v5 + 16.0;
    cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
    [cardPresentationController bottomSafeOffset];
    v3 = v6 + v8;
  }

  return v3;
}

- (void)headerViewButtonTapped:(id)tapped buttonType:(unint64_t)type
{
  [(NavTrafficIncidentReportSubmissionContaineeViewController *)self _dismissAfterUserInteraction:tapped];
  v6 = +[MKMapService sharedService];
  incidentTypeAsString = [(TrafficIncidentLayoutItem *)self->_layoutItem incidentTypeAsString];
  [v6 captureUserAction:4 onTarget:740 eventValue:incidentTypeAsString];
}

- (void)addCircularProgressButtonSubview
{
  LODWORD(v2) = 1108869120;
  v4 = [NavUserDecisionButtonFactory dismissButtonWithHeight:v2];
  progressDismissButton = self->_progressDismissButton;
  self->_progressDismissButton = v4;

  [(MapsCircularProgressButton *)self->_progressDismissButton setProgressStyle:0];
  progressView = [(MapsCircularProgressButton *)self->_progressDismissButton progressView];
  [progressView setLineWidth:3.5];

  [(MapsCircularProgressButton *)self->_progressDismissButton setProgressionHidden:1];
  [(MapsCircularProgressButton *)self->_progressDismissButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MapsCircularProgressButton *)self->_progressDismissButton addTarget:self action:"_dismissAfterUserInteraction" forControlEvents:64];
  view = [(NavTrafficIncidentReportSubmissionContaineeViewController *)self view];
  [view addSubview:self->_progressDismissButton];

  trailingAnchor = [(MapsCircularProgressButton *)self->_progressDismissButton trailingAnchor];
  view2 = [(NavTrafficIncidentReportSubmissionContaineeViewController *)self view];
  trailingAnchor2 = [view2 trailingAnchor];
  v18 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
  v22[0] = v18;
  topAnchor = [(MapsCircularProgressButton *)self->_progressDismissButton topAnchor];
  view3 = [(NavTrafficIncidentReportSubmissionContaineeViewController *)self view];
  topAnchor2 = [view3 topAnchor];
  v11 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:18.0];
  v22[1] = v11;
  widthAnchor = [(MapsCircularProgressButton *)self->_progressDismissButton widthAnchor];
  v13 = [widthAnchor constraintEqualToConstant:38.0];
  v22[2] = v13;
  heightAnchor = [(MapsCircularProgressButton *)self->_progressDismissButton heightAnchor];
  widthAnchor2 = [(MapsCircularProgressButton *)self->_progressDismissButton widthAnchor];
  v16 = [heightAnchor constraintEqualToAnchor:widthAnchor2];
  v22[3] = v16;
  v17 = [NSArray arrayWithObjects:v22 count:4];
  [NSLayoutConstraint activateConstraints:v17];
}

- (void)updateContent
{
  preferredConfirmationTitle = [(TrafficIncidentLayoutItem *)self->_layoutItem preferredConfirmationTitle];
  [(UILabel *)self->_titleLabel setText:preferredConfirmationTitle];

  displayImage = [(TrafficIncidentLayoutItem *)self->_layoutItem displayImage];
  [(UIImageView *)self->_imageView setImage:displayImage];
}

- (void)viewDidLayoutSubviews
{
  v10.receiver = self;
  v10.super_class = NavTrafficIncidentReportSubmissionContaineeViewController;
  [(ContaineeViewController *)&v10 viewDidLayoutSubviews];
  previousWidth = self->_previousWidth;
  view = [(NavTrafficIncidentReportSubmissionContaineeViewController *)self view];
  [view bounds];
  v6 = v5;

  if (previousWidth != v6)
  {
    view2 = [(NavTrafficIncidentReportSubmissionContaineeViewController *)self view];
    [view2 bounds];
    self->_previousWidth = v8;

    cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
    [cardPresentationController updateHeightForCurrentLayout];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v16.receiver = self;
  v16.super_class = NavTrafficIncidentReportSubmissionContaineeViewController;
  [(NavTrafficIncidentReportSubmissionContaineeViewController *)&v16 viewDidAppear:appear];
  objc_initWeak(&location, self);
  GEOConfigGetDouble();
  v5 = v4;
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_100701954;
  v13 = &unk_101661BC8;
  objc_copyWeak(&v14, &location);
  v6 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:&v10 block:v5];
  [(NavTrafficIncidentReportSubmissionContaineeViewController *)self setDismissTimer:v6, v10, v11, v12, v13];

  progressDismissButton = self->_progressDismissButton;
  GEOConfigGetDouble();
  [(MapsCircularProgressButton *)progressDismissButton setAnimationDuration:?];
  [(MapsCircularProgressButton *)self->_progressDismissButton setProgressionHidden:0];
  [(MapsCircularProgressButton *)self->_progressDismissButton setProgress:1.0];
  [(MapsCircularProgressButton *)self->_progressDismissButton startProgressAnimation];
  v8 = +[MKMapService sharedService];
  incidentTypeAsString = [(TrafficIncidentLayoutItem *)self->_layoutItem incidentTypeAsString];
  [v8 captureUserAction:112 onTarget:0 eventValue:incidentTypeAsString];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = NavTrafficIncidentReportSubmissionContaineeViewController;
  [(ContaineeViewController *)&v4 viewWillAppear:appear];
  [(NavTrafficIncidentReportSubmissionContaineeViewController *)self updateContent];
}

- (void)viewDidLoad
{
  v81.receiver = self;
  v81.super_class = NavTrafficIncidentReportSubmissionContaineeViewController;
  [(ContaineeViewController *)&v81 viewDidLoad];
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController setPresentedModally:1];

  cardPresentationController2 = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController2 setShouldHidePreviousCards:1];

  v5 = objc_opt_new();
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 setAccessibilityIdentifier:@"TitleView"];
  v6 = [UILabel alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v10 = [v6 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  titleLabel = self->_titleLabel;
  self->_titleLabel = v10;

  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_titleLabel setNumberOfLines:2];
  v12 = +[UIFont system22AdaptiveSemibold];
  [(UILabel *)self->_titleLabel setFont:v12];

  [(UILabel *)self->_titleLabel setAccessibilityIdentifier:@"HeaderLabel"];
  [v5 addSubview:self->_titleLabel];
  leadingAnchor = [(UILabel *)self->_titleLabel leadingAnchor];
  leadingAnchor2 = [v5 leadingAnchor];
  v75 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  v83[0] = v75;
  trailingAnchor = [(UILabel *)self->_titleLabel trailingAnchor];
  trailingAnchor2 = [v5 trailingAnchor];
  v13 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v83[1] = v13;
  topAnchor = [(UILabel *)self->_titleLabel topAnchor];
  topAnchor2 = [v5 topAnchor];
  v16 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:16.0];
  v83[2] = v16;
  bottomAnchor = [(UILabel *)self->_titleLabel bottomAnchor];
  bottomAnchor2 = [v5 bottomAnchor];
  v19 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-16.0];
  v83[3] = v19;
  v20 = [NSArray arrayWithObjects:v83 count:4];
  [NSLayoutConstraint activateConstraints:v20];

  height = [[ContainerHeaderView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  headerView = self->_headerView;
  self->_headerView = height;

  [(ContainerHeaderView *)self->_headerView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(ContainerHeaderView *)self->_headerView setHairLineAlpha:0.0];
  [(ContainerHeaderView *)self->_headerView setDelegate:self];
  v80 = v5;
  [(ContainerHeaderView *)self->_headerView setTitleView:v5];
  view = [(NavTrafficIncidentReportSubmissionContaineeViewController *)self view];
  [view addSubview:self->_headerView];

  [(ContainerHeaderView *)self->_headerView setButtonHidden:1];
  [(NavTrafficIncidentReportSubmissionContaineeViewController *)self addCircularProgressButtonSubview];
  v24 = objc_alloc_init(UILabel);
  primaryLabel = self->_primaryLabel;
  self->_primaryLabel = v24;

  [(UILabel *)self->_primaryLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  if (MapsFeature_IsEnabled_MoreReportTypes() && (+[MNNavigationService sharedService](MNNavigationService, "sharedService"), v26 = objc_claimAutoreleasedReturnValue(), [v26 lastLocation], v27 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v27, "roadName"), v28 = objc_claimAutoreleasedReturnValue(), v28, v27, v26, v28))
  {
    v29 = +[MNNavigationService sharedService];
    lastLocation = [v29 lastLocation];
    roadName = [lastLocation roadName];
    [(UILabel *)self->_primaryLabel setText:roadName];
  }

  else
  {
    v29 = +[NSBundle mainBundle];
    lastLocation = [v29 localizedStringForKey:@"Report [Nav Tray value:Incident Report now]" table:{@"localized string not found", 0}];
    [(UILabel *)self->_primaryLabel setText:lastLocation];
  }

  v32 = [UIFont _maps_systemFontWithFixedSize:20.0];
  [(UILabel *)self->_primaryLabel setFont:v32];

  v33 = +[UIColor secondaryLabelColor];
  [(UILabel *)self->_primaryLabel setTextColor:v33];

  view2 = [(NavTrafficIncidentReportSubmissionContaineeViewController *)self view];
  [view2 addSubview:self->_primaryLabel];

  v35 = objc_alloc_init(UIImageView);
  imageView = self->_imageView;
  self->_imageView = v35;

  [(UIImageView *)self->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
  view3 = [(NavTrafficIncidentReportSubmissionContaineeViewController *)self view];
  [view3 addSubview:self->_imageView];

  leadingAnchor3 = [(UIImageView *)self->_imageView leadingAnchor];
  view4 = [(NavTrafficIncidentReportSubmissionContaineeViewController *)self view];
  leadingAnchor4 = [view4 leadingAnchor];
  v72 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:18.0];
  v82[0] = v72;
  topAnchor3 = [(UIImageView *)self->_imageView topAnchor];
  view5 = [(NavTrafficIncidentReportSubmissionContaineeViewController *)self view];
  topAnchor4 = [view5 topAnchor];
  v67 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:20.0];
  v82[1] = v67;
  widthAnchor = [(UIImageView *)self->_imageView widthAnchor];
  v65 = [widthAnchor constraintEqualToConstant:42.0];
  v82[2] = v65;
  heightAnchor = [(UIImageView *)self->_imageView heightAnchor];
  v63 = [heightAnchor constraintEqualToConstant:42.0];
  v82[3] = v63;
  leadingAnchor5 = [(ContainerHeaderView *)self->_headerView leadingAnchor];
  trailingAnchor3 = [(UIImageView *)self->_imageView trailingAnchor];
  v60 = [leadingAnchor5 constraintEqualToAnchor:trailingAnchor3];
  v82[4] = v60;
  trailingAnchor4 = [(ContainerHeaderView *)self->_headerView trailingAnchor];
  view6 = [(NavTrafficIncidentReportSubmissionContaineeViewController *)self view];
  trailingAnchor5 = [view6 trailingAnchor];
  v56 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
  v82[5] = v56;
  topAnchor5 = [(ContainerHeaderView *)self->_headerView topAnchor];
  view7 = [(NavTrafficIncidentReportSubmissionContaineeViewController *)self view];
  topAnchor6 = [view7 topAnchor];
  v52 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
  v82[6] = v52;
  leadingAnchor6 = [(UILabel *)self->_primaryLabel leadingAnchor];
  leadingAnchor7 = [(ContainerHeaderView *)self->_headerView leadingAnchor];
  v49 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7 constant:16.0];
  v82[7] = v49;
  trailingAnchor6 = [(UILabel *)self->_primaryLabel trailingAnchor];
  leadingAnchor8 = [(MapsCircularProgressButton *)self->_progressDismissButton leadingAnchor];
  v38 = [trailingAnchor6 constraintEqualToAnchor:leadingAnchor8 constant:-10.0];
  v82[8] = v38;
  topAnchor7 = [(UILabel *)self->_primaryLabel topAnchor];
  bottomAnchor3 = [(ContainerHeaderView *)self->_headerView bottomAnchor];
  v41 = [topAnchor7 constraintEqualToAnchor:bottomAnchor3 constant:-14.0];
  v82[9] = v41;
  bottomAnchor4 = [(UILabel *)self->_primaryLabel bottomAnchor];
  view8 = [(NavTrafficIncidentReportSubmissionContaineeViewController *)self view];
  bottomAnchor5 = [view8 bottomAnchor];
  v45 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5 constant:-10.0];
  v82[10] = v45;
  v46 = [NSArray arrayWithObjects:v82 count:11];
  [NSLayoutConstraint activateConstraints:v46];

  [(NavTrafficIncidentReportSubmissionContaineeViewController *)self updateContent];
}

- (NavTrafficIncidentReportSubmissionContaineeViewController)initWithItem:(id)item report:(id)report
{
  itemCopy = item;
  reportCopy = report;
  v15.receiver = self;
  v15.super_class = NavTrafficIncidentReportSubmissionContaineeViewController;
  v9 = [(NavTrafficIncidentReportSubmissionContaineeViewController *)&v15 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    cardPresentationController = [(ContaineeViewController *)v9 cardPresentationController];
    [cardPresentationController setBlurInCardView:0];

    v12 = [UIColor colorNamed:@"NavigationMaterialColor"];
    cardPresentationController2 = [(ContaineeViewController *)v10 cardPresentationController];
    [cardPresentationController2 setCardColor:v12];

    objc_storeStrong(&v10->_layoutItem, item);
    [reportCopy submitWithCompletionHandler:0];
  }

  return v10;
}

@end