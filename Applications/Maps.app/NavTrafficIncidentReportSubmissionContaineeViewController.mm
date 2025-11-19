@interface NavTrafficIncidentReportSubmissionContaineeViewController
- (NavTrafficIncidentReportSubmissionContaineeDelegate)reportingDelegate;
- (NavTrafficIncidentReportSubmissionContaineeViewController)initWithItem:(id)a3 report:(id)a4;
- (double)heightForLayout:(unint64_t)a3;
- (void)_cancelDismissTimer;
- (void)_dismissAfterUserInteraction;
- (void)_performDismissal;
- (void)addCircularProgressButtonSubview;
- (void)headerViewButtonTapped:(id)a3 buttonType:(unint64_t)a4;
- (void)updateContent;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation NavTrafficIncidentReportSubmissionContaineeViewController

- (NavTrafficIncidentReportSubmissionContaineeDelegate)reportingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_reportingDelegate);

  return WeakRetained;
}

- (void)_performDismissal
{
  v3 = [(NavTrafficIncidentReportSubmissionContaineeViewController *)self dismissTimer];
  [v3 invalidate];

  v4 = [(NavTrafficIncidentReportSubmissionContaineeViewController *)self reportingDelegate];
  [v4 incidentReportSubmissionContaineeDidFinish:self];
}

- (void)_dismissAfterUserInteraction
{
  v3 = +[MKMapService sharedService];
  v4 = [(TrafficIncidentLayoutItem *)self->_layoutItem incidentTypeAsString];
  [v3 captureUserAction:4 onTarget:740 eventValue:v4];

  [(NavTrafficIncidentReportSubmissionContaineeViewController *)self _performDismissal];
}

- (void)_cancelDismissTimer
{
  v3 = [(NavTrafficIncidentReportSubmissionContaineeViewController *)self dismissTimer];
  [v3 invalidate];

  [(NavTrafficIncidentReportSubmissionContaineeViewController *)self setDismissTimer:0];
}

- (double)heightForLayout:(unint64_t)a3
{
  v3 = -1.0;
  if (a3 == 5)
  {
    [(ContaineeViewController *)self headerHeight];
    v6 = v5 + 16.0;
    v7 = [(ContaineeViewController *)self cardPresentationController];
    [v7 bottomSafeOffset];
    v3 = v6 + v8;
  }

  return v3;
}

- (void)headerViewButtonTapped:(id)a3 buttonType:(unint64_t)a4
{
  [(NavTrafficIncidentReportSubmissionContaineeViewController *)self _dismissAfterUserInteraction:a3];
  v6 = +[MKMapService sharedService];
  v5 = [(TrafficIncidentLayoutItem *)self->_layoutItem incidentTypeAsString];
  [v6 captureUserAction:4 onTarget:740 eventValue:v5];
}

- (void)addCircularProgressButtonSubview
{
  LODWORD(v2) = 1108869120;
  v4 = [NavUserDecisionButtonFactory dismissButtonWithHeight:v2];
  progressDismissButton = self->_progressDismissButton;
  self->_progressDismissButton = v4;

  [(MapsCircularProgressButton *)self->_progressDismissButton setProgressStyle:0];
  v6 = [(MapsCircularProgressButton *)self->_progressDismissButton progressView];
  [v6 setLineWidth:3.5];

  [(MapsCircularProgressButton *)self->_progressDismissButton setProgressionHidden:1];
  [(MapsCircularProgressButton *)self->_progressDismissButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MapsCircularProgressButton *)self->_progressDismissButton addTarget:self action:"_dismissAfterUserInteraction" forControlEvents:64];
  v7 = [(NavTrafficIncidentReportSubmissionContaineeViewController *)self view];
  [v7 addSubview:self->_progressDismissButton];

  v20 = [(MapsCircularProgressButton *)self->_progressDismissButton trailingAnchor];
  v21 = [(NavTrafficIncidentReportSubmissionContaineeViewController *)self view];
  v19 = [v21 trailingAnchor];
  v18 = [v20 constraintEqualToAnchor:v19 constant:-16.0];
  v22[0] = v18;
  v8 = [(MapsCircularProgressButton *)self->_progressDismissButton topAnchor];
  v9 = [(NavTrafficIncidentReportSubmissionContaineeViewController *)self view];
  v10 = [v9 topAnchor];
  v11 = [v8 constraintEqualToAnchor:v10 constant:18.0];
  v22[1] = v11;
  v12 = [(MapsCircularProgressButton *)self->_progressDismissButton widthAnchor];
  v13 = [v12 constraintEqualToConstant:38.0];
  v22[2] = v13;
  v14 = [(MapsCircularProgressButton *)self->_progressDismissButton heightAnchor];
  v15 = [(MapsCircularProgressButton *)self->_progressDismissButton widthAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];
  v22[3] = v16;
  v17 = [NSArray arrayWithObjects:v22 count:4];
  [NSLayoutConstraint activateConstraints:v17];
}

- (void)updateContent
{
  v3 = [(TrafficIncidentLayoutItem *)self->_layoutItem preferredConfirmationTitle];
  [(UILabel *)self->_titleLabel setText:v3];

  v4 = [(TrafficIncidentLayoutItem *)self->_layoutItem displayImage];
  [(UIImageView *)self->_imageView setImage:v4];
}

- (void)viewDidLayoutSubviews
{
  v10.receiver = self;
  v10.super_class = NavTrafficIncidentReportSubmissionContaineeViewController;
  [(ContaineeViewController *)&v10 viewDidLayoutSubviews];
  previousWidth = self->_previousWidth;
  v4 = [(NavTrafficIncidentReportSubmissionContaineeViewController *)self view];
  [v4 bounds];
  v6 = v5;

  if (previousWidth != v6)
  {
    v7 = [(NavTrafficIncidentReportSubmissionContaineeViewController *)self view];
    [v7 bounds];
    self->_previousWidth = v8;

    v9 = [(ContaineeViewController *)self cardPresentationController];
    [v9 updateHeightForCurrentLayout];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v16.receiver = self;
  v16.super_class = NavTrafficIncidentReportSubmissionContaineeViewController;
  [(NavTrafficIncidentReportSubmissionContaineeViewController *)&v16 viewDidAppear:a3];
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
  v9 = [(TrafficIncidentLayoutItem *)self->_layoutItem incidentTypeAsString];
  [v8 captureUserAction:112 onTarget:0 eventValue:v9];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = NavTrafficIncidentReportSubmissionContaineeViewController;
  [(ContaineeViewController *)&v4 viewWillAppear:a3];
  [(NavTrafficIncidentReportSubmissionContaineeViewController *)self updateContent];
}

- (void)viewDidLoad
{
  v81.receiver = self;
  v81.super_class = NavTrafficIncidentReportSubmissionContaineeViewController;
  [(ContaineeViewController *)&v81 viewDidLoad];
  v3 = [(ContaineeViewController *)self cardPresentationController];
  [v3 setPresentedModally:1];

  v4 = [(ContaineeViewController *)self cardPresentationController];
  [v4 setShouldHidePreviousCards:1];

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
  v79 = [(UILabel *)self->_titleLabel leadingAnchor];
  v77 = [v5 leadingAnchor];
  v75 = [v79 constraintEqualToAnchor:v77 constant:16.0];
  v83[0] = v75;
  v73 = [(UILabel *)self->_titleLabel trailingAnchor];
  v71 = [v5 trailingAnchor];
  v13 = [v73 constraintEqualToAnchor:v71];
  v83[1] = v13;
  v14 = [(UILabel *)self->_titleLabel topAnchor];
  v15 = [v5 topAnchor];
  v16 = [v14 constraintEqualToAnchor:v15 constant:16.0];
  v83[2] = v16;
  v17 = [(UILabel *)self->_titleLabel bottomAnchor];
  v18 = [v5 bottomAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:-16.0];
  v83[3] = v19;
  v20 = [NSArray arrayWithObjects:v83 count:4];
  [NSLayoutConstraint activateConstraints:v20];

  v21 = [[ContainerHeaderView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  headerView = self->_headerView;
  self->_headerView = v21;

  [(ContainerHeaderView *)self->_headerView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(ContainerHeaderView *)self->_headerView setHairLineAlpha:0.0];
  [(ContainerHeaderView *)self->_headerView setDelegate:self];
  v80 = v5;
  [(ContainerHeaderView *)self->_headerView setTitleView:v5];
  v23 = [(NavTrafficIncidentReportSubmissionContaineeViewController *)self view];
  [v23 addSubview:self->_headerView];

  [(ContainerHeaderView *)self->_headerView setButtonHidden:1];
  [(NavTrafficIncidentReportSubmissionContaineeViewController *)self addCircularProgressButtonSubview];
  v24 = objc_alloc_init(UILabel);
  primaryLabel = self->_primaryLabel;
  self->_primaryLabel = v24;

  [(UILabel *)self->_primaryLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  if (MapsFeature_IsEnabled_MoreReportTypes() && (+[MNNavigationService sharedService](MNNavigationService, "sharedService"), v26 = objc_claimAutoreleasedReturnValue(), [v26 lastLocation], v27 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v27, "roadName"), v28 = objc_claimAutoreleasedReturnValue(), v28, v27, v26, v28))
  {
    v29 = +[MNNavigationService sharedService];
    v30 = [v29 lastLocation];
    v31 = [v30 roadName];
    [(UILabel *)self->_primaryLabel setText:v31];
  }

  else
  {
    v29 = +[NSBundle mainBundle];
    v30 = [v29 localizedStringForKey:@"Report [Nav Tray value:Incident Report now]" table:{@"localized string not found", 0}];
    [(UILabel *)self->_primaryLabel setText:v30];
  }

  v32 = [UIFont _maps_systemFontWithFixedSize:20.0];
  [(UILabel *)self->_primaryLabel setFont:v32];

  v33 = +[UIColor secondaryLabelColor];
  [(UILabel *)self->_primaryLabel setTextColor:v33];

  v34 = [(NavTrafficIncidentReportSubmissionContaineeViewController *)self view];
  [v34 addSubview:self->_primaryLabel];

  v35 = objc_alloc_init(UIImageView);
  imageView = self->_imageView;
  self->_imageView = v35;

  [(UIImageView *)self->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
  v37 = [(NavTrafficIncidentReportSubmissionContaineeViewController *)self view];
  [v37 addSubview:self->_imageView];

  v76 = [(UIImageView *)self->_imageView leadingAnchor];
  v78 = [(NavTrafficIncidentReportSubmissionContaineeViewController *)self view];
  v74 = [v78 leadingAnchor];
  v72 = [v76 constraintEqualToAnchor:v74 constant:18.0];
  v82[0] = v72;
  v69 = [(UIImageView *)self->_imageView topAnchor];
  v70 = [(NavTrafficIncidentReportSubmissionContaineeViewController *)self view];
  v68 = [v70 topAnchor];
  v67 = [v69 constraintEqualToAnchor:v68 constant:20.0];
  v82[1] = v67;
  v66 = [(UIImageView *)self->_imageView widthAnchor];
  v65 = [v66 constraintEqualToConstant:42.0];
  v82[2] = v65;
  v64 = [(UIImageView *)self->_imageView heightAnchor];
  v63 = [v64 constraintEqualToConstant:42.0];
  v82[3] = v63;
  v62 = [(ContainerHeaderView *)self->_headerView leadingAnchor];
  v61 = [(UIImageView *)self->_imageView trailingAnchor];
  v60 = [v62 constraintEqualToAnchor:v61];
  v82[4] = v60;
  v58 = [(ContainerHeaderView *)self->_headerView trailingAnchor];
  v59 = [(NavTrafficIncidentReportSubmissionContaineeViewController *)self view];
  v57 = [v59 trailingAnchor];
  v56 = [v58 constraintEqualToAnchor:v57];
  v82[5] = v56;
  v54 = [(ContainerHeaderView *)self->_headerView topAnchor];
  v55 = [(NavTrafficIncidentReportSubmissionContaineeViewController *)self view];
  v53 = [v55 topAnchor];
  v52 = [v54 constraintEqualToAnchor:v53];
  v82[6] = v52;
  v51 = [(UILabel *)self->_primaryLabel leadingAnchor];
  v50 = [(ContainerHeaderView *)self->_headerView leadingAnchor];
  v49 = [v51 constraintEqualToAnchor:v50 constant:16.0];
  v82[7] = v49;
  v48 = [(UILabel *)self->_primaryLabel trailingAnchor];
  v47 = [(MapsCircularProgressButton *)self->_progressDismissButton leadingAnchor];
  v38 = [v48 constraintEqualToAnchor:v47 constant:-10.0];
  v82[8] = v38;
  v39 = [(UILabel *)self->_primaryLabel topAnchor];
  v40 = [(ContainerHeaderView *)self->_headerView bottomAnchor];
  v41 = [v39 constraintEqualToAnchor:v40 constant:-14.0];
  v82[9] = v41;
  v42 = [(UILabel *)self->_primaryLabel bottomAnchor];
  v43 = [(NavTrafficIncidentReportSubmissionContaineeViewController *)self view];
  v44 = [v43 bottomAnchor];
  v45 = [v42 constraintEqualToAnchor:v44 constant:-10.0];
  v82[10] = v45;
  v46 = [NSArray arrayWithObjects:v82 count:11];
  [NSLayoutConstraint activateConstraints:v46];

  [(NavTrafficIncidentReportSubmissionContaineeViewController *)self updateContent];
}

- (NavTrafficIncidentReportSubmissionContaineeViewController)initWithItem:(id)a3 report:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = NavTrafficIncidentReportSubmissionContaineeViewController;
  v9 = [(NavTrafficIncidentReportSubmissionContaineeViewController *)&v15 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    v11 = [(ContaineeViewController *)v9 cardPresentationController];
    [v11 setBlurInCardView:0];

    v12 = [UIColor colorNamed:@"NavigationMaterialColor"];
    v13 = [(ContaineeViewController *)v10 cardPresentationController];
    [v13 setCardColor:v12];

    objc_storeStrong(&v10->_layoutItem, a3);
    [v8 submitWithCompletionHandler:0];
  }

  return v10;
}

@end