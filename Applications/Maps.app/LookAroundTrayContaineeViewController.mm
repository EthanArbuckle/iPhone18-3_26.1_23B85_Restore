@interface LookAroundTrayContaineeViewController
- (LookAroundActionCoordination)actionCoordinator;
- (LookAroundTrayContaineeViewController)initWithLookAroundView:(id)view;
- (LookAroundTrayContaineeViewControllerDelegate)delegate;
- (double)headerHeight;
- (double)heightForLayout:(unint64_t)layout;
- (void)_captureUserAction:(int)action onTarget:(int)target eventValue:(id)value;
- (void)_contentSizeCategoryDidChange:(id)change;
- (void)_setupConstraints;
- (void)_setupViews;
- (void)_updateLabelsButton;
- (void)reportAnIssueButtonTapped:(id)tapped;
- (void)setVisible:(BOOL)visible animated:(BOOL)animated;
- (void)shareButtonTapped:(id)tapped;
- (void)toggleLabelsButtonTapped:(id)tapped;
- (void)trayHeaderDidReceiveTap;
- (void)updateLocation;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)willChangeContainerStyle:(unint64_t)style;
- (void)willChangeLayout:(unint64_t)layout;
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

- (void)_contentSizeCategoryDidChange:(id)change
{
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController updateHeightForCurrentLayout];
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
  view = [(LookAroundTrayContaineeViewController *)self view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = objc_alloc_init(LookAroundTrayHeaderViewController);
  headerViewController = self->_headerViewController;
  self->_headerViewController = v4;

  [(LookAroundTrayHeaderViewController *)self->_headerViewController setDelegate:self];
  view2 = [(LookAroundTrayHeaderViewController *)self->_headerViewController view];
  [view2 setTranslatesAutoresizingMaskIntoConstraints:0];

  [(LookAroundTrayHeaderViewController *)self->_headerViewController setAccessibilityIdentifier:@"LookAroundTrayHeader"];
  view3 = [(LookAroundTrayContaineeViewController *)self view];
  view4 = [(LookAroundTrayHeaderViewController *)self->_headerViewController view];
  [view3 addSubview:view4];

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
  layer = [(UIScrollView *)self->_scrollView layer];
  [layer setAllowsGroupOpacity:0];

  [(UIScrollView *)self->_scrollView setTranslatesAutoresizingMaskIntoConstraints:0];
  view5 = [(LookAroundTrayContaineeViewController *)self view];
  [view5 addSubview:self->_scrollView];

  v17 = [[MKViewWithHairline alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  grabberSafeAreaView = self->_grabberSafeAreaView;
  self->_grabberSafeAreaView = v17;

  [(MKViewWithHairline *)self->_grabberSafeAreaView setBottomHairlineHidden:1];
  [(MKViewWithHairline *)self->_grabberSafeAreaView setTopHairlineHidden:0];
  [(MKViewWithHairline *)self->_grabberSafeAreaView setTranslatesAutoresizingMaskIntoConstraints:0];
  v19 = +[UIColor clearColor];
  [(MKViewWithHairline *)self->_grabberSafeAreaView setBackgroundColor:v19];

  [(MKViewWithHairline *)self->_grabberSafeAreaView setPreservesSuperviewLayoutMargins:1];
  view6 = [(LookAroundTrayContaineeViewController *)self view];
  [view6 addSubview:self->_grabberSafeAreaView];

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
  heightAnchor = [(MKViewWithHairline *)self->_grabberSafeAreaView heightAnchor];
  v4 = [heightAnchor constraintEqualToConstant:0.0];
  grabberSafeAreaHeightConstraint = self->_grabberSafeAreaHeightConstraint;
  self->_grabberSafeAreaHeightConstraint = v4;

  view = [(LookAroundTrayHeaderViewController *)self->_headerViewController view];
  topAnchor = [view topAnchor];
  view2 = [(LookAroundTrayContaineeViewController *)self view];
  topAnchor2 = [view2 topAnchor];
  v107 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v112[0] = v107;
  view3 = [(LookAroundTrayHeaderViewController *)self->_headerViewController view];
  leadingAnchor = [view3 leadingAnchor];
  view4 = [(LookAroundTrayContaineeViewController *)self view];
  leadingAnchor2 = [view4 leadingAnchor];
  v102 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v112[1] = v102;
  view5 = [(LookAroundTrayHeaderViewController *)self->_headerViewController view];
  trailingAnchor = [view5 trailingAnchor];
  view6 = [(LookAroundTrayContaineeViewController *)self view];
  trailingAnchor2 = [view6 trailingAnchor];
  v97 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v112[2] = v97;
  leadingAnchor3 = [(MKViewWithHairline *)self->_grabberSafeAreaView leadingAnchor];
  view7 = [(LookAroundTrayContaineeViewController *)self view];
  leadingAnchor4 = [view7 leadingAnchor];
  v93 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v112[3] = v93;
  trailingAnchor3 = [(MKViewWithHairline *)self->_grabberSafeAreaView trailingAnchor];
  view8 = [(LookAroundTrayContaineeViewController *)self view];
  trailingAnchor4 = [view8 trailingAnchor];
  v89 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v112[4] = v89;
  bottomAnchor = [(MKViewWithHairline *)self->_grabberSafeAreaView bottomAnchor];
  view9 = [(LookAroundTrayContaineeViewController *)self view];
  bottomAnchor2 = [view9 bottomAnchor];
  v85 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v6 = self->_grabberSafeAreaHeightConstraint;
  v112[5] = v85;
  v112[6] = v6;
  topAnchor3 = [(UIScrollView *)self->_scrollView topAnchor];
  view10 = [(LookAroundTrayHeaderViewController *)self->_headerViewController view];
  bottomAnchor3 = [view10 bottomAnchor];
  v81 = [topAnchor3 constraintEqualToAnchor:bottomAnchor3];
  v112[7] = v81;
  leadingAnchor5 = [(UIScrollView *)self->_scrollView leadingAnchor];
  view11 = [(LookAroundTrayContaineeViewController *)self view];
  leadingAnchor6 = [view11 leadingAnchor];
  v77 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v112[8] = v77;
  trailingAnchor5 = [(UIScrollView *)self->_scrollView trailingAnchor];
  view12 = [(LookAroundTrayContaineeViewController *)self view];
  trailingAnchor6 = [view12 trailingAnchor];
  v73 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v112[9] = v73;
  contentLayoutGuide = [(UIScrollView *)self->_scrollView contentLayoutGuide];
  widthAnchor = [contentLayoutGuide widthAnchor];
  view13 = [(LookAroundTrayContaineeViewController *)self view];
  widthAnchor2 = [view13 widthAnchor];
  v68 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v112[10] = v68;
  bottomAnchor4 = [(UIScrollView *)self->_scrollView bottomAnchor];
  topAnchor4 = [(MKViewWithHairline *)self->_grabberSafeAreaView topAnchor];
  v65 = [bottomAnchor4 constraintEqualToAnchor:topAnchor4];
  v112[11] = v65;
  topAnchor5 = [(UIView *)self->_containerView topAnchor];
  topAnchor6 = [(UIScrollView *)self->_scrollView topAnchor];
  v62 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
  v112[12] = v62;
  leadingAnchor7 = [(UIView *)self->_containerView leadingAnchor];
  leadingAnchor8 = [(UIScrollView *)self->_scrollView leadingAnchor];
  v59 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
  v112[13] = v59;
  trailingAnchor7 = [(UIView *)self->_containerView trailingAnchor];
  trailingAnchor8 = [(UIScrollView *)self->_scrollView trailingAnchor];
  v56 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
  v112[14] = v56;
  bottomAnchor5 = [(UIView *)self->_containerView bottomAnchor];
  bottomAnchor6 = [(UIScrollView *)self->_scrollView bottomAnchor];
  v53 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
  v112[15] = v53;
  topAnchor7 = [(UILayoutGuide *)self->_containerLayoutGuide topAnchor];
  topAnchor8 = [(UIView *)self->_containerView topAnchor];
  v50 = [topAnchor7 constraintEqualToAnchor:topAnchor8 constant:16.0];
  v112[16] = v50;
  leadingAnchor9 = [(UILayoutGuide *)self->_containerLayoutGuide leadingAnchor];
  leadingAnchor10 = [(UIView *)self->_containerView leadingAnchor];
  v47 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10 constant:16.0];
  v112[17] = v47;
  trailingAnchor9 = [(UILayoutGuide *)self->_containerLayoutGuide trailingAnchor];
  trailingAnchor10 = [(UIView *)self->_containerView trailingAnchor];
  v44 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10 constant:-16.0];
  v112[18] = v44;
  bottomAnchor7 = [(UILayoutGuide *)self->_containerLayoutGuide bottomAnchor];
  bottomAnchor8 = [(UIView *)self->_containerView bottomAnchor];
  v41 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8 constant:-16.0];
  v112[19] = v41;
  topAnchor9 = [(UIStackView *)self->_buttonStackView topAnchor];
  topAnchor10 = [(UILayoutGuide *)self->_containerLayoutGuide topAnchor];
  v38 = [topAnchor9 constraintEqualToAnchor:topAnchor10];
  v112[20] = v38;
  leadingAnchor11 = [(UIStackView *)self->_buttonStackView leadingAnchor];
  leadingAnchor12 = [(UILayoutGuide *)self->_containerLayoutGuide leadingAnchor];
  v35 = [leadingAnchor11 constraintEqualToAnchor:leadingAnchor12];
  v112[21] = v35;
  trailingAnchor11 = [(UIStackView *)self->_buttonStackView trailingAnchor];
  trailingAnchor12 = [(UILayoutGuide *)self->_containerLayoutGuide trailingAnchor];
  v32 = [trailingAnchor11 constraintEqualToAnchor:trailingAnchor12];
  v112[22] = v32;
  heightAnchor2 = [(LookAroundVibrantBackgroundButton *)self->_toggleLabelsButton heightAnchor];
  v30 = [heightAnchor2 constraintGreaterThanOrEqualToConstant:52.0];
  v29 = [DynamicTypeWizard autoscaledConstraint:v30 constant:&stru_101628490 withFontProvider:52.0];
  v112[23] = v29;
  heightAnchor3 = [(LookAroundVibrantBackgroundButton *)self->_shareButton heightAnchor];
  heightAnchor4 = [(LookAroundVibrantBackgroundButton *)self->_toggleLabelsButton heightAnchor];
  v26 = [heightAnchor3 constraintEqualToAnchor:heightAnchor4];
  v112[24] = v26;
  leadingAnchor13 = [(UILabel *)self->_lastUpdatedLabel leadingAnchor];
  leadingAnchor14 = [(UILayoutGuide *)self->_containerLayoutGuide leadingAnchor];
  v23 = [leadingAnchor13 constraintEqualToAnchor:leadingAnchor14];
  v112[25] = v23;
  trailingAnchor13 = [(UILabel *)self->_lastUpdatedLabel trailingAnchor];
  trailingAnchor14 = [(UILayoutGuide *)self->_containerLayoutGuide trailingAnchor];
  v20 = [trailingAnchor13 constraintEqualToAnchor:trailingAnchor14];
  v112[26] = v20;
  firstBaselineAnchor = [(UILabel *)self->_lastUpdatedLabel firstBaselineAnchor];
  bottomAnchor9 = [(UIStackView *)self->_buttonStackView bottomAnchor];
  v9 = [firstBaselineAnchor constraintEqualToAnchor:bottomAnchor9];
  v10 = [DynamicTypeWizard autoscaledConstraint:v9 constant:&stru_101628490 withFontProvider:32.0];
  v112[27] = v10;
  bottomAnchor10 = [(UILabel *)self->_lastUpdatedLabel bottomAnchor];
  bottomAnchor11 = [(UILayoutGuide *)self->_containerLayoutGuide bottomAnchor];
  v13 = [bottomAnchor10 constraintEqualToAnchor:bottomAnchor11];
  v112[28] = v13;
  v14 = [NSArray arrayWithObjects:v112 count:29];
  v15 = [NSMutableArray arrayWithArray:v14];

  reportAnIssueButton = self->_reportAnIssueButton;
  if (reportAnIssueButton)
  {
    heightAnchor5 = [(LookAroundVibrantBackgroundButton *)reportAnIssueButton heightAnchor];
    heightAnchor6 = [(LookAroundVibrantBackgroundButton *)self->_shareButton heightAnchor];
    v19 = [heightAnchor5 constraintEqualToAnchor:heightAnchor6];
    [v15 addObject:v19];
  }

  [NSLayoutConstraint activateConstraints:v15];
}

- (void)reportAnIssueButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  delegate = [(LookAroundTrayContaineeViewController *)self delegate];
  [delegate lookAroundTrayContaineeViewController:self didTapReportAnIssueButton:tappedCopy];
}

- (void)shareButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  delegate = [(LookAroundTrayContaineeViewController *)self delegate];
  [delegate lookAroundTrayContaineeViewController:self didTapShareButton:tappedCopy];
}

- (void)toggleLabelsButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  delegate = [(LookAroundTrayContaineeViewController *)self delegate];
  [delegate lookAroundTrayContaineeViewController:self didTapToggleLabelsButton:tappedCopy];

  [(LookAroundTrayContaineeViewController *)self _updateLabelsButton];
}

- (void)trayHeaderDidReceiveTap
{
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  containeeLayout = [cardPresentationController containeeLayout];

  if (containeeLayout == 1)
  {
    cardPresentationController2 = [(ContaineeViewController *)self cardPresentationController];
    [cardPresentationController2 wantsExpandLayout];
  }

  else
  {
    if (containeeLayout != 2)
    {
      return;
    }

    cardPresentationController2 = [(ContaineeViewController *)self cardPresentationController];
    [cardPresentationController2 wantsMinimizeLayout];
  }
}

- (void)_captureUserAction:(int)action onTarget:(int)target eventValue:(id)value
{
  v5 = *&target;
  v6 = *&action;
  valueCopy = value;
  v8 = self->_lookAroundView;
  [(MKLookAroundView *)v8 centerCoordinate];
  v11 = [[GEOLocation alloc] initWithLatitude:v9 longitude:v10];
  [(MKLookAroundView *)v8 presentationYaw];
  v13 = v12;
  visiblePlaceMUIDs = [(MKLookAroundView *)v8 visiblePlaceMUIDs];
  v15 = [visiblePlaceMUIDs count];
  if (([(MKLookAroundView *)v8 showsRoadLabels]& 1) != 0)
  {
    showsPointLabels = 1;
  }

  else
  {
    showsPointLabels = [(MKLookAroundView *)v8 showsPointLabels];
  }

  LOBYTE(v17) = showsPointLabels;
  [GEOAPPortal captureLookAroundUserAction:v6 onTarget:v5 eventValue:valueCopy location:v11 heading:v13 zoom:v15 numberPoisInView:0.0 labelingShown:v17];
}

- (void)willChangeContainerStyle:(unint64_t)style
{
  v5.receiver = self;
  v5.super_class = LookAroundTrayContaineeViewController;
  [(ContaineeViewController *)&v5 willChangeContainerStyle:style];
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController grabberSafeAreaHeight];
  [(NSLayoutConstraint *)self->_grabberSafeAreaHeightConstraint setConstant:?];
}

- (void)willChangeLayout:(unint64_t)layout
{
  v10.receiver = self;
  v10.super_class = LookAroundTrayContaineeViewController;
  [(ContaineeViewController *)&v10 willChangeLayout:?];
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  containeeLayout = [cardPresentationController containeeLayout];

  if (layout == 2 && containeeLayout == 1)
  {
    v7 = 1;
LABEL_7:
    [(LookAroundTrayContaineeViewController *)self _captureUserAction:v7 onTarget:1701 eventValue:0];
    return;
  }

  cardPresentationController2 = [(ContaineeViewController *)self cardPresentationController];
  containeeLayout2 = [cardPresentationController2 containeeLayout];

  if (layout == 1 && containeeLayout2 == 2)
  {
    v7 = 2;
    goto LABEL_7;
  }
}

- (double)heightForLayout:(unint64_t)layout
{
  if (layout == 1)
  {
    v10 = 0.0;
    goto LABEL_5;
  }

  v4 = -1.0;
  if (layout == 3)
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
    cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
    [cardPresentationController bottomSafeOffset];
    v4 = v12 + v10 + v14;
  }

  return v4;
}

- (double)headerHeight
{
  height = UILayoutFittingCompressedSize.height;
  view = [(LookAroundTrayHeaderViewController *)self->_headerViewController view];
  [view frame];
  Width = CGRectGetWidth(v12);

  view2 = [(LookAroundTrayHeaderViewController *)self->_headerViewController view];
  LODWORD(v7) = 1148846080;
  LODWORD(v8) = 1112014848;
  [view2 systemLayoutSizeFittingSize:Width withHorizontalFittingPriority:height verticalFittingPriority:{v7, v8}];
  v10 = v9;

  return v10;
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = LookAroundTrayContaineeViewController;
  [(ContaineeViewController *)&v5 viewWillAppear:appear];
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController grabberSafeAreaHeight];
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

- (void)setVisible:(BOOL)visible animated:(BOOL)animated
{
  if (self->_visible != visible)
  {
    self->_visible = visible;
    cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
    [cardPresentationController wantsLayout:1];

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
  selfCopy = self;
  v3 = v9;
  [UIView performWithoutAnimation:&v5];
  v4 = [(ContaineeViewController *)self cardPresentationController:v5];
  [v4 updateHeightForCurrentLayout];
}

- (LookAroundTrayContaineeViewController)initWithLookAroundView:(id)view
{
  viewCopy = view;
  v14.receiver = self;
  v14.super_class = LookAroundTrayContaineeViewController;
  v6 = [(LookAroundTrayContaineeViewController *)&v14 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    cardPresentationController = [(ContaineeViewController *)v6 cardPresentationController];
    [cardPresentationController setAllowResizeInFloatingStyle:1];

    cardPresentationController2 = [(ContaineeViewController *)v7 cardPresentationController];
    [cardPresentationController2 setEdgeAttachedRegularHeightDimmingBehavior:1];

    v10 = objc_alloc_init(NSDateFormatter);
    dateFormatter = v7->_dateFormatter;
    v7->_dateFormatter = v10;

    objc_storeStrong(&v7->_lookAroundView, view);
    v7->_visible = 0;
    v12 = +[NSNotificationCenter defaultCenter];
    [v12 addObserver:v7 selector:"_contentSizeCategoryDidChange:" name:UIContentSizeCategoryDidChangeNotification object:0];
  }

  return v7;
}

@end