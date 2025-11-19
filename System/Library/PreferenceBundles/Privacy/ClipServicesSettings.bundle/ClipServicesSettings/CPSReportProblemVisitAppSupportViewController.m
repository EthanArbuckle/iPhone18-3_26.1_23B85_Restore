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
    v7 = [(CPSReportProblemVisitAppSupportViewController *)self navigationItem];
    [v7 setRightBarButtonItem:v6];
  }

  else
  {
    v6 = _CPSLocalizedString();
    v7 = [v5 initWithTitle:v6 style:2 target:self action:"doneButtonTapped"];
    v8 = [(CPSReportProblemVisitAppSupportViewController *)self navigationItem];
    [v8 setRightBarButtonItem:v7];
  }

  v9 = +[UIColor systemBackgroundColor];
  v10 = [(CPSReportProblemVisitAppSupportViewController *)self view];
  [v10 setBackgroundColor:v9];

  v11 = objc_alloc_init(UIScrollView);
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v11 setContentInsetAdjustmentBehavior:2];
  v12 = [(CPSReportProblemVisitAppSupportViewController *)self view];
  [v12 addSubview:v11];

  [(CPSReportProblemVisitAppSupportViewController *)self setupContentStackView];
  [v11 addSubview:self->_contentStackView];
  v65 = [v11 frameLayoutGuide];
  v63 = [v65 topAnchor];
  v64 = [(CPSReportProblemVisitAppSupportViewController *)self view];
  v62 = [v64 topAnchor];
  v61 = [v63 constraintEqualToAnchor:v62];
  v67[0] = v61;
  v60 = [v11 frameLayoutGuide];
  v58 = [v60 leadingAnchor];
  v59 = [(CPSReportProblemVisitAppSupportViewController *)self view];
  v57 = [v59 leadingAnchor];
  v56 = [v58 constraintEqualToAnchor:v57];
  v67[1] = v56;
  v55 = [v11 frameLayoutGuide];
  v53 = [v55 trailingAnchor];
  v54 = [(CPSReportProblemVisitAppSupportViewController *)self view];
  v52 = [v54 trailingAnchor];
  v51 = [v53 constraintEqualToAnchor:v52];
  v67[2] = v51;
  v50 = [v11 frameLayoutGuide];
  v48 = [v50 bottomAnchor];
  v49 = [(CPSReportProblemVisitAppSupportViewController *)self view];
  v47 = [v49 bottomAnchor];
  v46 = [v48 constraintEqualToAnchor:v47];
  v67[3] = v46;
  v45 = [v11 frameLayoutGuide];
  v43 = [v45 widthAnchor];
  v44 = [v11 contentLayoutGuide];
  v42 = [v44 widthAnchor];
  v41 = [v43 constraintEqualToAnchor:v42];
  v67[4] = v41;
  v40 = [v11 frameLayoutGuide];
  v38 = [v40 heightAnchor];
  v39 = [v11 contentLayoutGuide];
  v37 = [v39 heightAnchor];
  v36 = [v38 constraintEqualToAnchor:v37];
  LODWORD(v13) = 1132068864;
  v35 = [v36 cps_setPriority:v13];
  v67[5] = v35;
  v33 = [(UIStackView *)self->_contentStackView topAnchor];
  v34 = [v11 contentLayoutGuide];
  v32 = [v34 topAnchor];
  v31 = [v33 constraintGreaterThanOrEqualToAnchor:v32];
  v67[6] = v31;
  v29 = [(UIStackView *)self->_contentStackView leadingAnchor];
  v30 = [v11 layoutMarginsGuide];
  v28 = [v30 leadingAnchor];
  v27 = [v29 constraintEqualToAnchor:v28];
  v67[7] = v27;
  v26 = [v11 layoutMarginsGuide];
  v25 = [v26 trailingAnchor];
  v24 = [(UIStackView *)self->_contentStackView trailingAnchor];
  v23 = [v25 constraintEqualToAnchor:v24];
  v67[8] = v23;
  v14 = [v11 contentLayoutGuide];
  v15 = [v14 bottomAnchor];
  v16 = [(UIStackView *)self->_contentStackView bottomAnchor];
  v17 = [v15 constraintGreaterThanOrEqualToAnchor:v16 constant:40.0];
  v67[9] = v17;
  v18 = [(UIStackView *)self->_contentStackView centerYAnchor];
  v19 = [v11 contentLayoutGuide];
  v20 = [v19 centerYAnchor];
  v21 = [v18 constraintEqualToAnchor:v20];
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

  v9 = [v7 widthAnchor];
  v10 = [v9 constraintEqualToConstant:120.0];
  v50[0] = v10;
  v11 = [v7 heightAnchor];
  v12 = [v7 widthAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];
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
  v46 = [v17 leadingAnchor];
  v21 = [(UIStackView *)self->_contentStackView layoutMarginsGuide];
  v22 = [v21 leadingAnchor];
  v23 = [v46 constraintEqualToAnchor:v22 constant:55.0];
  v49[0] = v23;
  v24 = [v17 trailingAnchor];
  v25 = [(UIStackView *)self->_contentStackView layoutMarginsGuide];
  v26 = [v25 trailingAnchor];
  v27 = [v24 constraintEqualToAnchor:v26 constant:-55.0];
  v49[1] = v27;
  v28 = [NSArray arrayWithObjects:v49 count:2];
  [NSLayoutConstraint activateConstraints:v28];

  v29 = [UIButton buttonWithType:1];
  openButton = self->_openButton;
  self->_openButton = v29;

  v31 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  v32 = [(UIButton *)self->_openButton titleLabel];
  [v32 setFont:v31];

  v33 = [(UIButton *)self->_openButton titleLabel];
  [v33 setAdjustsFontForContentSizeCategory:1];

  v34 = [(UIButton *)self->_openButton titleLabel];
  [v34 setNumberOfLines:0];

  v35 = [(UIButton *)self->_openButton titleLabel];
  [v35 setTextAlignment:1];

  v36 = [(UIButton *)self->_openButton lastBaselineAnchor];
  v37 = [(UIButton *)self->_openButton lastBaselineAnchor];
  v38 = [v36 constraintEqualToAnchor:v37];
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