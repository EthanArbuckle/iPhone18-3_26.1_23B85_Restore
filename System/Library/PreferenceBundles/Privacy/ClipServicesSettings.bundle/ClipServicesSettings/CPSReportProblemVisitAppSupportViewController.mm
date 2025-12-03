@interface CPSReportProblemVisitAppSupportViewController
- (void)doneButtonTapped;
- (void)openButtonTapped;
- (void)setupContentStackView;
- (void)viewDidLoad;
@end

@implementation CPSReportProblemVisitAppSupportViewController

- (void)viewDidLoad
{
  v66.receiver = self;
  v66.super_class = CPSReportProblemVisitAppSupportViewController;
  [(CPSReportProblemVisitAppSupportViewController *)&v66 viewDidLoad];
  v3 = _CPSLocalizedString();
  [(CPSReportProblemVisitAppSupportViewController *)self setTitle:v3];

  LODWORD(v3) = _UISolariumEnabled();
  v4 = [UIBarButtonItem alloc];
  v5 = v4;
  if (v3)
  {
    v6 = [v4 initWithBarButtonSystemItem:0 target:self action:"doneButtonTapped"];
    navigationItem = [(CPSReportProblemVisitAppSupportViewController *)self navigationItem];
    [navigationItem setRightBarButtonItem:v6];
  }

  else
  {
    v6 = _CPSLocalizedString();
    navigationItem = [v5 initWithTitle:v6 style:2 target:self action:"doneButtonTapped"];
    navigationItem2 = [(CPSReportProblemVisitAppSupportViewController *)self navigationItem];
    [navigationItem2 setRightBarButtonItem:navigationItem];
  }

  v9 = +[UIColor systemBackgroundColor];
  view = [(CPSReportProblemVisitAppSupportViewController *)self view];
  [view setBackgroundColor:v9];

  v11 = objc_alloc_init(UIScrollView);
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v11 setContentInsetAdjustmentBehavior:2];
  view2 = [(CPSReportProblemVisitAppSupportViewController *)self view];
  [view2 addSubview:v11];

  [(CPSReportProblemVisitAppSupportViewController *)self setupContentStackView];
  [v11 addSubview:self->_contentStackView];
  frameLayoutGuide = [v11 frameLayoutGuide];
  topAnchor = [frameLayoutGuide topAnchor];
  view3 = [(CPSReportProblemVisitAppSupportViewController *)self view];
  topAnchor2 = [view3 topAnchor];
  v61 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v67[0] = v61;
  frameLayoutGuide2 = [v11 frameLayoutGuide];
  leadingAnchor = [frameLayoutGuide2 leadingAnchor];
  view4 = [(CPSReportProblemVisitAppSupportViewController *)self view];
  leadingAnchor2 = [view4 leadingAnchor];
  v56 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v67[1] = v56;
  frameLayoutGuide3 = [v11 frameLayoutGuide];
  trailingAnchor = [frameLayoutGuide3 trailingAnchor];
  view5 = [(CPSReportProblemVisitAppSupportViewController *)self view];
  trailingAnchor2 = [view5 trailingAnchor];
  v51 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v67[2] = v51;
  frameLayoutGuide4 = [v11 frameLayoutGuide];
  bottomAnchor = [frameLayoutGuide4 bottomAnchor];
  view6 = [(CPSReportProblemVisitAppSupportViewController *)self view];
  bottomAnchor2 = [view6 bottomAnchor];
  v46 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v67[3] = v46;
  frameLayoutGuide5 = [v11 frameLayoutGuide];
  widthAnchor = [frameLayoutGuide5 widthAnchor];
  contentLayoutGuide = [v11 contentLayoutGuide];
  widthAnchor2 = [contentLayoutGuide widthAnchor];
  v41 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v67[4] = v41;
  frameLayoutGuide6 = [v11 frameLayoutGuide];
  heightAnchor = [frameLayoutGuide6 heightAnchor];
  contentLayoutGuide2 = [v11 contentLayoutGuide];
  heightAnchor2 = [contentLayoutGuide2 heightAnchor];
  v36 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
  LODWORD(v13) = 1132068864;
  v35 = [v36 cps_setPriority:v13];
  v67[5] = v35;
  topAnchor3 = [(UIStackView *)self->_contentStackView topAnchor];
  contentLayoutGuide3 = [v11 contentLayoutGuide];
  topAnchor4 = [contentLayoutGuide3 topAnchor];
  v31 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:topAnchor4];
  v67[6] = v31;
  leadingAnchor3 = [(UIStackView *)self->_contentStackView leadingAnchor];
  layoutMarginsGuide = [v11 layoutMarginsGuide];
  leadingAnchor4 = [layoutMarginsGuide leadingAnchor];
  v27 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v67[7] = v27;
  layoutMarginsGuide2 = [v11 layoutMarginsGuide];
  trailingAnchor3 = [layoutMarginsGuide2 trailingAnchor];
  trailingAnchor4 = [(UIStackView *)self->_contentStackView trailingAnchor];
  v23 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v67[8] = v23;
  contentLayoutGuide4 = [v11 contentLayoutGuide];
  bottomAnchor3 = [contentLayoutGuide4 bottomAnchor];
  bottomAnchor4 = [(UIStackView *)self->_contentStackView bottomAnchor];
  v17 = [bottomAnchor3 constraintGreaterThanOrEqualToAnchor:bottomAnchor4 constant:40.0];
  v67[9] = v17;
  centerYAnchor = [(UIStackView *)self->_contentStackView centerYAnchor];
  contentLayoutGuide5 = [v11 contentLayoutGuide];
  centerYAnchor2 = [contentLayoutGuide5 centerYAnchor];
  v21 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v67[10] = v21;
  v22 = [NSArray arrayWithObjects:v67 count:11];
  [NSLayoutConstraint activateConstraints:v22];
}

- (void)setupContentStackView
{
  v3 = objc_alloc_init(UIStackView);
  contentStackView = self->_contentStackView;
  self->_contentStackView = v3;

  [(UIStackView *)self->_contentStackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_contentStackView setAxis:1];
  [(UIStackView *)self->_contentStackView setAlignment:3];
  v5 = [UIImageView alloc];
  v6 = [UIImage systemImageNamed:@"safari"];
  v7 = [v5 initWithImage:v6];

  v8 = +[UIColor systemMidGrayColor];
  [v7 setTintColor:v8];

  widthAnchor = [v7 widthAnchor];
  v10 = [widthAnchor constraintEqualToConstant:120.0];
  v50[0] = v10;
  heightAnchor = [v7 heightAnchor];
  widthAnchor2 = [v7 widthAnchor];
  v13 = [heightAnchor constraintEqualToAnchor:widthAnchor2];
  v50[1] = v13;
  v14 = [NSArray arrayWithObjects:v50 count:2];
  [NSLayoutConstraint activateConstraints:v14];

  v48 = v7;
  [(UIStackView *)self->_contentStackView addArrangedSubview:v7];
  [(UIStackView *)self->_contentStackView setCustomSpacing:v7 afterView:10.0];
  v47 = objc_alloc_init(UILabel);
  v15 = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle2];
  [v47 setFont:v15];

  [v47 setAdjustsFontForContentSizeCategory:1];
  [v47 setNumberOfLines:0];
  v16 = _CPSLocalizedString();
  [v47 setText:v16];

  [v47 setTextAlignment:1];
  [(UIStackView *)self->_contentStackView addArrangedSubview:v47];
  [(UIStackView *)self->_contentStackView setCustomSpacing:v47 afterView:10.0];
  v17 = objc_alloc_init(UILabel);
  v18 = [UIFont preferredFontForTextStyle:?];
  [v17 setFont:v18];

  [v17 setAdjustsFontForContentSizeCategory:1];
  [v17 setNumberOfLines:0];
  v19 = +[UIColor secondaryLabelColor];
  [v17 setTextColor:v19];

  v20 = _CPSLocalizedString();
  [v17 setText:v20];

  [v17 setTextAlignment:1];
  [(UIStackView *)self->_contentStackView addArrangedSubview:v17];
  [(UIStackView *)self->_contentStackView setCustomSpacing:v17 afterView:40.0];
  leadingAnchor = [v17 leadingAnchor];
  layoutMarginsGuide = [(UIStackView *)self->_contentStackView layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v23 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:55.0];
  v49[0] = v23;
  trailingAnchor = [v17 trailingAnchor];
  layoutMarginsGuide2 = [(UIStackView *)self->_contentStackView layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
  v27 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-55.0];
  v49[1] = v27;
  v28 = [NSArray arrayWithObjects:v49 count:2];
  [NSLayoutConstraint activateConstraints:v28];

  v29 = [UIButton buttonWithType:1];
  openButton = self->_openButton;
  self->_openButton = v29;

  v31 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  titleLabel = [(UIButton *)self->_openButton titleLabel];
  [titleLabel setFont:v31];

  titleLabel2 = [(UIButton *)self->_openButton titleLabel];
  [titleLabel2 setAdjustsFontForContentSizeCategory:1];

  titleLabel3 = [(UIButton *)self->_openButton titleLabel];
  [titleLabel3 setNumberOfLines:0];

  titleLabel4 = [(UIButton *)self->_openButton titleLabel];
  [titleLabel4 setTextAlignment:1];

  lastBaselineAnchor = [(UIButton *)self->_openButton lastBaselineAnchor];
  lastBaselineAnchor2 = [(UIButton *)self->_openButton lastBaselineAnchor];
  v38 = [lastBaselineAnchor constraintEqualToAnchor:lastBaselineAnchor2];
  LODWORD(v39) = 1132068864;
  v40 = [v38 cps_setPriority:v39];
  [v40 setActive:1];

  [(UIButton *)self->_openButton setContentEdgeInsets:15.0, 50.0, 15.0, 50.0];
  v41 = self->_openButton;
  v42 = _CPSLocalizedString();
  [(UIButton *)v41 setTitle:v42 forState:0];

  v43 = self->_openButton;
  v44 = +[UIColor whiteColor];
  [(UIButton *)v43 setTitleColor:v44 forState:0];

  v45 = +[UIColor systemBlueColor];
  [(UIButton *)self->_openButton setBackgroundColor:v45];

  [(UIButton *)self->_openButton _setContinuousCornerRadius:12.0];
  [(UIStackView *)self->_contentStackView addArrangedSubview:self->_openButton];
  [(UIButton *)self->_openButton addTarget:self action:"openButtonTapped" forControlEvents:0x2000];
}

- (void)openButtonTapped
{
  finishAction = self->_finishAction;
  if (finishAction)
  {
    finishAction[2](finishAction, 1);
  }
}

- (void)doneButtonTapped
{
  finishAction = self->_finishAction;
  if (finishAction)
  {
    finishAction[2](finishAction, 0);
  }
}

@end