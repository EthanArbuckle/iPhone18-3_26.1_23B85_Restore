@interface LookAroundTrayContaineeViewController
- (LookAroundActionCoordination)actionCoordinator;
- (LookAroundTrayContaineeViewController)initWithLookAroundView:(id)a3;
- (LookAroundTrayContaineeViewControllerDelegate)delegate;
- (double)headerHeight;
- (double)heightForLayout:(unint64_t)a3;
- (void)_captureUserAction:(int)a3 onTarget:(int)a4 eventValue:(id)a5;
- (void)_contentSizeCategoryDidChange:(id)a3;
- (void)_setupConstraints;
- (void)_setupViews;
- (void)_updateLabelsButton;
- (void)reportAnIssueButtonTapped:(id)a3;
- (void)setVisible:(BOOL)a3 animated:(BOOL)a4;
- (void)shareButtonTapped:(id)a3;
- (void)toggleLabelsButtonTapped:(id)a3;
- (void)trayHeaderDidReceiveTap;
- (void)updateLocation;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)willChangeContainerStyle:(unint64_t)a3;
- (void)willChangeLayout:(unint64_t)a3;
@end

@implementation LookAroundTrayContaineeViewController

- (LookAroundTrayContaineeViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (LookAroundActionCoordination)actionCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_actionCoordinator);

  return WeakRetained;
}

- (void)_contentSizeCategoryDidChange:(id)a3
{
  v3 = [(ContaineeViewController *)self cardPresentationController];
  [v3 updateHeightForCurrentLayout];
}

- (void)_updateLabelsButton
{
  if ([(MKLookAroundView *)self->_lookAroundView showsPointLabels]&& ([(MKLookAroundView *)self->_lookAroundView showsRoadLabels]& 1) != 0)
  {
    v3 = @"Hide Labels [LookAround]";
    v4 = @"eye.slash";
  }

  else
  {
    v3 = @"Show Labels [LookAround]";
    v4 = @"eye";
  }

  toggleLabelsButton = self->_toggleLabelsButton;
  v8 = [UIImage systemImageNamed:v4];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:v3 value:@"localized string not found" table:0];
  [(LookAroundVibrantBackgroundButton *)toggleLabelsButton setImage:v8 title:v7];
}

- (void)_setupViews
{
  v3 = [(LookAroundTrayContaineeViewController *)self view];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = objc_alloc_init(LookAroundTrayHeaderViewController);
  headerViewController = self->_headerViewController;
  self->_headerViewController = v4;

  [(LookAroundTrayHeaderViewController *)self->_headerViewController setDelegate:self];
  v6 = [(LookAroundTrayHeaderViewController *)self->_headerViewController view];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

  [(LookAroundTrayHeaderViewController *)self->_headerViewController setAccessibilityIdentifier:@"LookAroundTrayHeader"];
  v7 = [(LookAroundTrayContaineeViewController *)self view];
  v8 = [(LookAroundTrayHeaderViewController *)self->_headerViewController view];
  [v7 addSubview:v8];

  v9 = [UIScrollView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v13 = [v9 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  scrollView = self->_scrollView;
  self->_scrollView = v13;

  [(UIScrollView *)self->_scrollView setAlwaysBounceVertical:1];
  [(UIScrollView *)self->_scrollView setClipsToBounds:1];
  [(UIScrollView *)self->_scrollView setDelegate:self];
  v15 = [(UIScrollView *)self->_scrollView layer];
  [v15 setAllowsGroupOpacity:0];

  [(UIScrollView *)self->_scrollView setTranslatesAutoresizingMaskIntoConstraints:0];
  v16 = [(LookAroundTrayContaineeViewController *)self view];
  [v16 addSubview:self->_scrollView];

  v17 = [[MKViewWithHairline alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  grabberSafeAreaView = self->_grabberSafeAreaView;
  self->_grabberSafeAreaView = v17;

  [(MKViewWithHairline *)self->_grabberSafeAreaView setBottomHairlineHidden:1];
  [(MKViewWithHairline *)self->_grabberSafeAreaView setTopHairlineHidden:0];
  [(MKViewWithHairline *)self->_grabberSafeAreaView setTranslatesAutoresizingMaskIntoConstraints:0];
  v19 = +[UIColor clearColor];
  [(MKViewWithHairline *)self->_grabberSafeAreaView setBackgroundColor:v19];

  [(MKViewWithHairline *)self->_grabberSafeAreaView setPreservesSuperviewLayoutMargins:1];
  v20 = [(LookAroundTrayContaineeViewController *)self view];
  [v20 addSubview:self->_grabberSafeAreaView];

  v21 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  containerView = self->_containerView;
  self->_containerView = v21;

  [(UIView *)self->_containerView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_containerView setAccessibilityIdentifier:@"LookAroundTray"];
  [(UIScrollView *)self->_scrollView addSubview:self->_containerView];
  v23 = objc_alloc_init(UILayoutGuide);
  containerLayoutGuide = self->_containerLayoutGuide;
  self->_containerLayoutGuide = v23;

  [(UIView *)self->_containerView addLayoutGuide:self->_containerLayoutGuide];
  v25 = [[UIStackView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  buttonStackView = self->_buttonStackView;
  self->_buttonStackView = v25;

  [(UIStackView *)self->_buttonStackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_buttonStackView setAxis:1];
  [(UIStackView *)self->_buttonStackView setSpacing:16.0];
  [(UIStackView *)self->_buttonStackView setAccessibilityIdentifier:@"LookAroundTrayButtonsStack"];
  [(UIView *)self->_containerView addSubview:self->_buttonStackView];
  v27 = [LookAroundVibrantBackgroundButton customButtonWithImage:0 title:0 target:self action:"toggleLabelsButtonTapped:"];
  toggleLabelsButton = self->_toggleLabelsButton;
  self->_toggleLabelsButton = v27;

  [(LookAroundVibrantBackgroundButton *)self->_toggleLabelsButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(LookAroundVibrantBackgroundButton *)self->_toggleLabelsButton setAccessibilityIdentifier:@"LookAroundTrayToggleLabelsButton"];
  [(LookAroundTrayContaineeViewController *)self _updateLabelsButton];
  [(UIStackView *)self->_buttonStackView addArrangedSubview:self->_toggleLabelsButton];
  v29 = [UIImage systemImageNamed:@"square.and.arrow.up"];
  v30 = +[NSBundle mainBundle];
  v31 = [v30 localizedStringForKey:@"Share [LookAround]" value:@"localized string not found" table:0];
  v32 = [LookAroundVibrantBackgroundButton customButtonWithImage:v29 title:v31 target:self action:"shareButtonTapped:"];
  shareButton = self->_shareButton;
  self->_shareButton = v32;

  [(LookAroundVibrantBackgroundButton *)self->_shareButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(LookAroundVibrantBackgroundButton *)self->_shareButton setAccessibilityIdentifier:@"LookAroundTrayShareButton"];
  [(UIStackView *)self->_buttonStackView addArrangedSubview:self->_shareButton];
  if (_MKRAPIsAvailable() && (sub_1007413D0() & 1) == 0)
  {
    v34 = [UIImage systemImageNamed:@"exclamationmark.bubble"];
    v35 = +[NSBundle mainBundle];
    v36 = [v35 localizedStringForKey:@"Report an Issue" value:@"localized string not found" table:0];
    v37 = [LookAroundVibrantBackgroundButton customButtonWithImage:v34 title:v36 target:self action:"reportAnIssueButtonTapped:"];
    reportAnIssueButton = self->_reportAnIssueButton;
    self->_reportAnIssueButton = v37;

    [(LookAroundVibrantBackgroundButton *)self->_reportAnIssueButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(LookAroundVibrantBackgroundButton *)self->_reportAnIssueButton setAccessibilityIdentifier:@"LookAroundTrayReportAnIssueButton"];
    [(UIStackView *)self->_buttonStackView addArrangedSubview:self->_reportAnIssueButton];
  }

  v39 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  lastUpdatedLabel = self->_lastUpdatedLabel;
  self->_lastUpdatedLabel = v39;

  [(UILabel *)self->_lastUpdatedLabel setNumberOfLines:2];
  [(UILabel *)self->_lastUpdatedLabel setTextAlignment:1];
  v41 = +[UIColor secondaryLabelColor];
  [(UILabel *)self->_lastUpdatedLabel setTextColor:v41];

  LODWORD(v42) = 1132068864;
  [(UILabel *)self->_lastUpdatedLabel setContentCompressionResistancePriority:0 forAxis:v42];
  LODWORD(v43) = 1148846080;
  [(UILabel *)self->_lastUpdatedLabel setContentCompressionResistancePriority:1 forAxis:v43];
  [(UILabel *)self->_lastUpdatedLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [DynamicTypeWizard autorefreshLabel:self->_lastUpdatedLabel withFontProvider:&stru_101628490];
  [(UILabel *)self->_lastUpdatedLabel setAccessibilityIdentifier:@"LookAroundTrayLastUpdatedLabel"];
  v44 = self->_containerView;
  v45 = self->_lastUpdatedLabel;

  [(UIView *)v44 addSubview:v45];
}

- (void)_setupConstraints
{
  v3 = [(MKViewWithHairline *)self->_grabberSafeAreaView heightAnchor];
  v4 = [v3 constraintEqualToConstant:0.0];
  grabberSafeAreaHeightConstraint = self->_grabberSafeAreaHeightConstraint;
  self->_grabberSafeAreaHeightConstraint = v4;

  v111 = [(LookAroundTrayHeaderViewController *)self->_headerViewController view];
  v109 = [v111 topAnchor];
  v110 = [(LookAroundTrayContaineeViewController *)self view];
  v108 = [v110 topAnchor];
  v107 = [v109 constraintEqualToAnchor:v108];
  v112[0] = v107;
  v106 = [(LookAroundTrayHeaderViewController *)self->_headerViewController view];
  v104 = [v106 leadingAnchor];
  v105 = [(LookAroundTrayContaineeViewController *)self view];
  v103 = [v105 leadingAnchor];
  v102 = [v104 constraintEqualToAnchor:v103];
  v112[1] = v102;
  v101 = [(LookAroundTrayHeaderViewController *)self->_headerViewController view];
  v99 = [v101 trailingAnchor];
  v100 = [(LookAroundTrayContaineeViewController *)self view];
  v98 = [v100 trailingAnchor];
  v97 = [v99 constraintEqualToAnchor:v98];
  v112[2] = v97;
  v95 = [(MKViewWithHairline *)self->_grabberSafeAreaView leadingAnchor];
  v96 = [(LookAroundTrayContaineeViewController *)self view];
  v94 = [v96 leadingAnchor];
  v93 = [v95 constraintEqualToAnchor:v94];
  v112[3] = v93;
  v91 = [(MKViewWithHairline *)self->_grabberSafeAreaView trailingAnchor];
  v92 = [(LookAroundTrayContaineeViewController *)self view];
  v90 = [v92 trailingAnchor];
  v89 = [v91 constraintEqualToAnchor:v90];
  v112[4] = v89;
  v87 = [(MKViewWithHairline *)self->_grabberSafeAreaView bottomAnchor];
  v88 = [(LookAroundTrayContaineeViewController *)self view];
  v86 = [v88 bottomAnchor];
  v85 = [v87 constraintEqualToAnchor:v86];
  v6 = self->_grabberSafeAreaHeightConstraint;
  v112[5] = v85;
  v112[6] = v6;
  v83 = [(UIScrollView *)self->_scrollView topAnchor];
  v84 = [(LookAroundTrayHeaderViewController *)self->_headerViewController view];
  v82 = [v84 bottomAnchor];
  v81 = [v83 constraintEqualToAnchor:v82];
  v112[7] = v81;
  v79 = [(UIScrollView *)self->_scrollView leadingAnchor];
  v80 = [(LookAroundTrayContaineeViewController *)self view];
  v78 = [v80 leadingAnchor];
  v77 = [v79 constraintEqualToAnchor:v78];
  v112[8] = v77;
  v75 = [(UIScrollView *)self->_scrollView trailingAnchor];
  v76 = [(LookAroundTrayContaineeViewController *)self view];
  v74 = [v76 trailingAnchor];
  v73 = [v75 constraintEqualToAnchor:v74];
  v112[9] = v73;
  v72 = [(UIScrollView *)self->_scrollView contentLayoutGuide];
  v70 = [v72 widthAnchor];
  v71 = [(LookAroundTrayContaineeViewController *)self view];
  v69 = [v71 widthAnchor];
  v68 = [v70 constraintEqualToAnchor:v69];
  v112[10] = v68;
  v67 = [(UIScrollView *)self->_scrollView bottomAnchor];
  v66 = [(MKViewWithHairline *)self->_grabberSafeAreaView topAnchor];
  v65 = [v67 constraintEqualToAnchor:v66];
  v112[11] = v65;
  v64 = [(UIView *)self->_containerView topAnchor];
  v63 = [(UIScrollView *)self->_scrollView topAnchor];
  v62 = [v64 constraintEqualToAnchor:v63];
  v112[12] = v62;
  v61 = [(UIView *)self->_containerView leadingAnchor];
  v60 = [(UIScrollView *)self->_scrollView leadingAnchor];
  v59 = [v61 constraintEqualToAnchor:v60];
  v112[13] = v59;
  v58 = [(UIView *)self->_containerView trailingAnchor];
  v57 = [(UIScrollView *)self->_scrollView trailingAnchor];
  v56 = [v58 constraintEqualToAnchor:v57];
  v112[14] = v56;
  v55 = [(UIView *)self->_containerView bottomAnchor];
  v54 = [(UIScrollView *)self->_scrollView bottomAnchor];
  v53 = [v55 constraintEqualToAnchor:v54];
  v112[15] = v53;
  v52 = [(UILayoutGuide *)self->_containerLayoutGuide topAnchor];
  v51 = [(UIView *)self->_containerView topAnchor];
  v50 = [v52 constraintEqualToAnchor:v51 constant:16.0];
  v112[16] = v50;
  v49 = [(UILayoutGuide *)self->_containerLayoutGuide leadingAnchor];
  v48 = [(UIView *)self->_containerView leadingAnchor];
  v47 = [v49 constraintEqualToAnchor:v48 constant:16.0];
  v112[17] = v47;
  v46 = [(UILayoutGuide *)self->_containerLayoutGuide trailingAnchor];
  v45 = [(UIView *)self->_containerView trailingAnchor];
  v44 = [v46 constraintEqualToAnchor:v45 constant:-16.0];
  v112[18] = v44;
  v43 = [(UILayoutGuide *)self->_containerLayoutGuide bottomAnchor];
  v42 = [(UIView *)self->_containerView bottomAnchor];
  v41 = [v43 constraintEqualToAnchor:v42 constant:-16.0];
  v112[19] = v41;
  v40 = [(UIStackView *)self->_buttonStackView topAnchor];
  v39 = [(UILayoutGuide *)self->_containerLayoutGuide topAnchor];
  v38 = [v40 constraintEqualToAnchor:v39];
  v112[20] = v38;
  v37 = [(UIStackView *)self->_buttonStackView leadingAnchor];
  v36 = [(UILayoutGuide *)self->_containerLayoutGuide leadingAnchor];
  v35 = [v37 constraintEqualToAnchor:v36];
  v112[21] = v35;
  v34 = [(UIStackView *)self->_buttonStackView trailingAnchor];
  v33 = [(UILayoutGuide *)self->_containerLayoutGuide trailingAnchor];
  v32 = [v34 constraintEqualToAnchor:v33];
  v112[22] = v32;
  v31 = [(LookAroundVibrantBackgroundButton *)self->_toggleLabelsButton heightAnchor];
  v30 = [v31 constraintGreaterThanOrEqualToConstant:52.0];
  v29 = [DynamicTypeWizard autoscaledConstraint:v30 constant:&stru_101628490 withFontProvider:52.0];
  v112[23] = v29;
  v28 = [(LookAroundVibrantBackgroundButton *)self->_shareButton heightAnchor];
  v27 = [(LookAroundVibrantBackgroundButton *)self->_toggleLabelsButton heightAnchor];
  v26 = [v28 constraintEqualToAnchor:v27];
  v112[24] = v26;
  v25 = [(UILabel *)self->_lastUpdatedLabel leadingAnchor];
  v24 = [(UILayoutGuide *)self->_containerLayoutGuide leadingAnchor];
  v23 = [v25 constraintEqualToAnchor:v24];
  v112[25] = v23;
  v22 = [(UILabel *)self->_lastUpdatedLabel trailingAnchor];
  v21 = [(UILayoutGuide *)self->_containerLayoutGuide trailingAnchor];
  v20 = [v22 constraintEqualToAnchor:v21];
  v112[26] = v20;
  v7 = [(UILabel *)self->_lastUpdatedLabel firstBaselineAnchor];
  v8 = [(UIStackView *)self->_buttonStackView bottomAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];
  v10 = [DynamicTypeWizard autoscaledConstraint:v9 constant:&stru_101628490 withFontProvider:32.0];
  v112[27] = v10;
  v11 = [(UILabel *)self->_lastUpdatedLabel bottomAnchor];
  v12 = [(UILayoutGuide *)self->_containerLayoutGuide bottomAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];
  v112[28] = v13;
  v14 = [NSArray arrayWithObjects:v112 count:29];
  v15 = [NSMutableArray arrayWithArray:v14];

  reportAnIssueButton = self->_reportAnIssueButton;
  if (reportAnIssueButton)
  {
    v17 = [(LookAroundVibrantBackgroundButton *)reportAnIssueButton heightAnchor];
    v18 = [(LookAroundVibrantBackgroundButton *)self->_shareButton heightAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];
    [v15 addObject:v19];
  }

  [NSLayoutConstraint activateConstraints:v15];
}

- (void)reportAnIssueButtonTapped:(id)a3
{
  v4 = a3;
  v5 = [(LookAroundTrayContaineeViewController *)self delegate];
  [v5 lookAroundTrayContaineeViewController:self didTapReportAnIssueButton:v4];
}

- (void)shareButtonTapped:(id)a3
{
  v4 = a3;
  v5 = [(LookAroundTrayContaineeViewController *)self delegate];
  [v5 lookAroundTrayContaineeViewController:self didTapShareButton:v4];
}

- (void)toggleLabelsButtonTapped:(id)a3
{
  v4 = a3;
  v5 = [(LookAroundTrayContaineeViewController *)self delegate];
  [v5 lookAroundTrayContaineeViewController:self didTapToggleLabelsButton:v4];

  [(LookAroundTrayContaineeViewController *)self _updateLabelsButton];
}

- (void)trayHeaderDidReceiveTap
{
  v3 = [(ContaineeViewController *)self cardPresentationController];
  v4 = [v3 containeeLayout];

  if (v4 == 1)
  {
    v5 = [(ContaineeViewController *)self cardPresentationController];
    [v5 wantsExpandLayout];
  }

  else
  {
    if (v4 != 2)
    {
      return;
    }

    v5 = [(ContaineeViewController *)self cardPresentationController];
    [v5 wantsMinimizeLayout];
  }
}

- (void)_captureUserAction:(int)a3 onTarget:(int)a4 eventValue:(id)a5
{
  v5 = *&a4;
  v6 = *&a3;
  v18 = a5;
  v8 = self->_lookAroundView;
  [(MKLookAroundView *)v8 centerCoordinate];
  v11 = [[GEOLocation alloc] initWithLatitude:v9 longitude:v10];
  [(MKLookAroundView *)v8 presentationYaw];
  v13 = v12;
  v14 = [(MKLookAroundView *)v8 visiblePlaceMUIDs];
  v15 = [v14 count];
  if (([(MKLookAroundView *)v8 showsRoadLabels]& 1) != 0)
  {
    v16 = 1;
  }

  else
  {
    v16 = [(MKLookAroundView *)v8 showsPointLabels];
  }

  LOBYTE(v17) = v16;
  [GEOAPPortal captureLookAroundUserAction:v6 onTarget:v5 eventValue:v18 location:v11 heading:v13 zoom:v15 numberPoisInView:0.0 labelingShown:v17];
}

- (void)willChangeContainerStyle:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = LookAroundTrayContaineeViewController;
  [(ContaineeViewController *)&v5 willChangeContainerStyle:a3];
  v4 = [(ContaineeViewController *)self cardPresentationController];
  [v4 grabberSafeAreaHeight];
  [(NSLayoutConstraint *)self->_grabberSafeAreaHeightConstraint setConstant:?];
}

- (void)willChangeLayout:(unint64_t)a3
{
  v10.receiver = self;
  v10.super_class = LookAroundTrayContaineeViewController;
  [(ContaineeViewController *)&v10 willChangeLayout:?];
  v5 = [(ContaineeViewController *)self cardPresentationController];
  v6 = [v5 containeeLayout];

  if (a3 == 2 && v6 == 1)
  {
    v7 = 1;
LABEL_7:
    [(LookAroundTrayContaineeViewController *)self _captureUserAction:v7 onTarget:1701 eventValue:0];
    return;
  }

  v8 = [(ContaineeViewController *)self cardPresentationController];
  v9 = [v8 containeeLayout];

  if (a3 == 1 && v9 == 2)
  {
    v7 = 2;
    goto LABEL_7;
  }
}

- (double)heightForLayout:(unint64_t)a3
{
  if (a3 == 1)
  {
    v10 = 0.0;
    goto LABEL_5;
  }

  v4 = -1.0;
  if (a3 == 3)
  {
    height = UILayoutFittingCompressedSize.height;
    [(UIView *)self->_containerView frame];
    Width = CGRectGetWidth(v16);
    LODWORD(v7) = 1148846080;
    LODWORD(v8) = 1112014848;
    [(UIView *)self->_containerView systemLayoutSizeFittingSize:Width withHorizontalFittingPriority:height verticalFittingPriority:v7, v8];
    v10 = v9;
LABEL_5:
    [(LookAroundTrayContaineeViewController *)self headerHeight];
    v12 = v11;
    v13 = [(ContaineeViewController *)self cardPresentationController];
    [v13 bottomSafeOffset];
    v4 = v12 + v10 + v14;
  }

  return v4;
}

- (double)headerHeight
{
  height = UILayoutFittingCompressedSize.height;
  v4 = [(LookAroundTrayHeaderViewController *)self->_headerViewController view];
  [v4 frame];
  Width = CGRectGetWidth(v12);

  v6 = [(LookAroundTrayHeaderViewController *)self->_headerViewController view];
  LODWORD(v7) = 1148846080;
  LODWORD(v8) = 1112014848;
  [v6 systemLayoutSizeFittingSize:Width withHorizontalFittingPriority:height verticalFittingPriority:{v7, v8}];
  v10 = v9;

  return v10;
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = LookAroundTrayContaineeViewController;
  [(ContaineeViewController *)&v5 viewWillAppear:a3];
  v4 = [(ContaineeViewController *)self cardPresentationController];
  [v4 grabberSafeAreaHeight];
  [(NSLayoutConstraint *)self->_grabberSafeAreaHeightConstraint setConstant:?];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = LookAroundTrayContaineeViewController;
  [(ContaineeViewController *)&v3 viewDidLoad];
  [(LookAroundTrayContaineeViewController *)self _setupViews];
  [(LookAroundTrayContaineeViewController *)self _setupConstraints];
}

- (void)setVisible:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_visible != a3)
  {
    self->_visible = a3;
    v6 = [(ContaineeViewController *)self cardPresentationController];
    [v6 wantsLayout:1];

    [(LookAroundTrayContaineeViewController *)self updateLocation];

    [(LookAroundTrayContaineeViewController *)self _updateLabelsButton];
  }
}

- (void)updateLocation
{
  [(LookAroundTrayContaineeViewController *)self lookAroundView];
  v5 = _NSConcreteStackBlock;
  v6 = 3221225472;
  v7 = sub_10075AD24;
  v9 = v8 = &unk_101661A90;
  v10 = self;
  v3 = v9;
  [UIView performWithoutAnimation:&v5];
  v4 = [(ContaineeViewController *)self cardPresentationController:v5];
  [v4 updateHeightForCurrentLayout];
}

- (LookAroundTrayContaineeViewController)initWithLookAroundView:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = LookAroundTrayContaineeViewController;
  v6 = [(LookAroundTrayContaineeViewController *)&v14 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    v8 = [(ContaineeViewController *)v6 cardPresentationController];
    [v8 setAllowResizeInFloatingStyle:1];

    v9 = [(ContaineeViewController *)v7 cardPresentationController];
    [v9 setEdgeAttachedRegularHeightDimmingBehavior:1];

    v10 = objc_alloc_init(NSDateFormatter);
    dateFormatter = v7->_dateFormatter;
    v7->_dateFormatter = v10;

    objc_storeStrong(&v7->_lookAroundView, a3);
    v7->_visible = 0;
    v12 = +[NSNotificationCenter defaultCenter];
    [v12 addObserver:v7 selector:"_contentSizeCategoryDidChange:" name:UIContentSizeCategoryDidChangeNotification object:0];
  }

  return v7;
}

@end