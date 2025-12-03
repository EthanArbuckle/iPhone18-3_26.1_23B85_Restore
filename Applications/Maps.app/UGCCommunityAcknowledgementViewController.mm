@interface UGCCommunityAcknowledgementViewController
- (UGCCommunityAcknowledgementViewController)initWithOptions:(id)options completion:(id)completion;
- (void)_addFooterView;
- (void)_cancelDismissTimer;
- (void)_setupConstraints;
- (void)_setupViews;
- (void)_updateLayoutForCurrentContentSize;
- (void)done;
- (void)macFooterViewBackButtonTapped:(id)tapped;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation UGCCommunityAcknowledgementViewController

- (void)macFooterViewBackButtonTapped:(id)tapped
{
  navigationController = [(UGCCommunityAcknowledgementViewController *)self navigationController];
  v3 = [navigationController popViewControllerAnimated:1];
}

- (void)done
{
  if (!self->_didRunCompletion)
  {
    self->_didRunCompletion = 1;
    [(UGCCommunityAcknowledgementViewController *)self _cancelDismissTimer];
    if ([(UGCCommunityAcknowledgementOptions *)self->_options acknowledgementOptionsType]== 1)
    {
      [GEOAPPortal captureUserAction:4 target:66 value:0];
    }

    else
    {
      v3 = +[MKMapService sharedService];
      [v3 captureUserAction:10110 onTarget:-[UGCCommunityAcknowledgementViewController analyticTarget](self eventValue:{"analyticTarget"), 0}];
    }

    completion = [(UGCCommunityAcknowledgementViewController *)self completion];

    if (completion)
    {
      completion2 = [(UGCCommunityAcknowledgementViewController *)self completion];
      completion2[2]();
    }
  }
}

- (void)_cancelDismissTimer
{
  dismissTimer = [(UGCCommunityAcknowledgementViewController *)self dismissTimer];
  [dismissTimer invalidate];

  [(UGCCommunityAcknowledgementViewController *)self setDismissTimer:0];
}

- (void)_addFooterView
{
  v3 = [[MacFooterView alloc] initWithNoBlurRightSideButtonsOfType:8];
  [(UGCCommunityAcknowledgementViewController *)self setFooterView:v3];

  footerView = [(UGCCommunityAcknowledgementViewController *)self footerView];
  [footerView setTranslatesAutoresizingMaskIntoConstraints:0];

  footerView2 = [(UGCCommunityAcknowledgementViewController *)self footerView];
  [footerView2 setDelegate:self];

  view = [(UGCCommunityAcknowledgementViewController *)self view];
  footerView3 = [(UGCCommunityAcknowledgementViewController *)self footerView];
  [view addSubview:footerView3];

  footerView4 = [(UGCCommunityAcknowledgementViewController *)self footerView];
  topAnchor = [footerView4 topAnchor];
  bottomAnchor = [(MUStackView *)self->_stackView bottomAnchor];
  v24 = [topAnchor constraintGreaterThanOrEqualToAnchor:bottomAnchor];
  v28[0] = v24;
  footerView5 = [(UGCCommunityAcknowledgementViewController *)self footerView];
  leadingAnchor = [footerView5 leadingAnchor];
  view2 = [(UGCCommunityAcknowledgementViewController *)self view];
  leadingAnchor2 = [view2 leadingAnchor];
  v19 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v28[1] = v19;
  footerView6 = [(UGCCommunityAcknowledgementViewController *)self footerView];
  trailingAnchor = [footerView6 trailingAnchor];
  view3 = [(UGCCommunityAcknowledgementViewController *)self view];
  trailingAnchor2 = [view3 trailingAnchor];
  v11 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v28[2] = v11;
  footerView7 = [(UGCCommunityAcknowledgementViewController *)self footerView];
  bottomAnchor2 = [footerView7 bottomAnchor];
  view4 = [(UGCCommunityAcknowledgementViewController *)self view];
  bottomAnchor3 = [view4 bottomAnchor];
  v16 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  v28[3] = v16;
  v17 = [NSArray arrayWithObjects:v28 count:4];
  [NSLayoutConstraint activateConstraints:v17];
}

- (void)_updateLayoutForCurrentContentSize
{
  traitCollection = [(UGCCommunityAcknowledgementViewController *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (IsAccessibilityCategory)
  {
    stackSizeLayout = self->_stackSizeLayout;
    v6 = [NSArray arrayWithObjects:&stackSizeLayout count:1];
    [NSLayoutConstraint _mapsui_deactivateLayouts:v6];
  }

  else
  {
    v7 = self->_stackSizeLayout;
    v6 = [NSArray arrayWithObjects:&v7 count:1];
    [NSLayoutConstraint _mapsui_activateLayouts:v6];
  }
}

- (void)_setupConstraints
{
  v3 = [MUEdgeLayout alloc];
  blurView = self->_blurView;
  view = [(UGCCommunityAcknowledgementViewController *)self view];
  v6 = [v3 initWithItem:blurView container:view];
  v58 = v6;
  v7 = [NSArray arrayWithObjects:&v58 count:1];
  [NSLayoutConstraint _mapsui_activateLayouts:v7];

  topAnchor = [(UIScrollView *)self->_scrollView topAnchor];
  view2 = [(UGCCommunityAcknowledgementViewController *)self view];
  safeAreaLayoutGuide = [view2 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v52 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v57[0] = v52;
  leadingAnchor = [(UIScrollView *)self->_scrollView leadingAnchor];
  view3 = [(UGCCommunityAcknowledgementViewController *)self view];
  leadingAnchor2 = [view3 leadingAnchor];
  v48 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v57[1] = v48;
  trailingAnchor = [(UIScrollView *)self->_scrollView trailingAnchor];
  view4 = [(UGCCommunityAcknowledgementViewController *)self view];
  trailingAnchor2 = [view4 trailingAnchor];
  v44 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v57[2] = v44;
  bottomAnchor = [(UIScrollView *)self->_scrollView bottomAnchor];
  view5 = [(UGCCommunityAcknowledgementViewController *)self view];
  bottomAnchor2 = [view5 bottomAnchor];
  v40 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v57[3] = v40;
  contentLayoutGuide = [(UIScrollView *)self->_scrollView contentLayoutGuide];
  heightAnchor = [contentLayoutGuide heightAnchor];
  frameLayoutGuide = [(UIScrollView *)self->_scrollView frameLayoutGuide];
  heightAnchor2 = [frameLayoutGuide heightAnchor];
  v35 = [heightAnchor constraintGreaterThanOrEqualToAnchor:heightAnchor2];
  v57[4] = v35;
  centerYAnchor = [(MUStackView *)self->_stackView centerYAnchor];
  contentLayoutGuide2 = [(UIScrollView *)self->_scrollView contentLayoutGuide];
  centerYAnchor2 = [contentLayoutGuide2 centerYAnchor];
  v31 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v57[5] = v31;
  topAnchor3 = [(MUStackView *)self->_stackView topAnchor];
  contentLayoutGuide3 = [(UIScrollView *)self->_scrollView contentLayoutGuide];
  topAnchor4 = [contentLayoutGuide3 topAnchor];
  v27 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:topAnchor4];
  v57[6] = v27;
  bottomAnchor3 = [(MUStackView *)self->_stackView bottomAnchor];
  contentLayoutGuide4 = [(UIScrollView *)self->_scrollView contentLayoutGuide];
  bottomAnchor4 = [contentLayoutGuide4 bottomAnchor];
  v23 = [bottomAnchor3 constraintLessThanOrEqualToAnchor:bottomAnchor4];
  v57[7] = v23;
  centerXAnchor = [(MUStackView *)self->_stackView centerXAnchor];
  centerXAnchor2 = [(UIScrollView *)self->_scrollView centerXAnchor];
  v9 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v57[8] = v9;
  leadingAnchor3 = [(MUStackView *)self->_stackView leadingAnchor];
  leadingAnchor4 = [(UIScrollView *)self->_scrollView leadingAnchor];
  v12 = [leadingAnchor3 constraintGreaterThanOrEqualToAnchor:leadingAnchor4 constant:16.0];
  v57[9] = v12;
  trailingAnchor3 = [(MUStackView *)self->_stackView trailingAnchor];
  trailingAnchor4 = [(UIScrollView *)self->_scrollView trailingAnchor];
  v15 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:trailingAnchor4 constant:-16.0];
  v57[10] = v15;
  v16 = [NSArray arrayWithObjects:v57 count:11];
  [NSLayoutConstraint activateConstraints:v16];

  v17 = [MUSizeLayout alloc];
  stackView = self->_stackView;
  +[MUSizeLayout useIntrinsicContentSize];
  v20 = [v17 initWithItem:stackView size:{240.0, v19}];
  stackSizeLayout = self->_stackSizeLayout;
  self->_stackSizeLayout = v20;

  [(UGCCommunityAcknowledgementViewController *)self _updateLayoutForCurrentContentSize];
}

- (void)_setupViews
{
  v3 = [MapsTheme visualEffectViewAllowingBlur:1];
  blurView = self->_blurView;
  self->_blurView = v3;

  view = [(UGCCommunityAcknowledgementViewController *)self view];
  [view addSubview:self->_blurView];

  v6 = [UIScrollView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v10 = [v6 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  scrollView = self->_scrollView;
  self->_scrollView = v10;

  [(UIScrollView *)self->_scrollView setTranslatesAutoresizingMaskIntoConstraints:0];
  view2 = [(UGCCommunityAcknowledgementViewController *)self view];
  [view2 addSubview:self->_scrollView];

  v13 = [[MUStackView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  stackView = self->_stackView;
  self->_stackView = v13;

  [(MUStackView *)self->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MUStackView *)self->_stackView setAxis:1];
  [(MUStackView *)self->_stackView setAlignment:3];
  [(UIScrollView *)self->_scrollView addSubview:self->_stackView];
  v43 = [UIImage imageNamed:@"RAPMapIcon"];
  v15 = [[PersonalizedImageView alloc] initWithMainImage:v43 mainImageSize:100.0 userImageDiameter:100.0 userImageExtensionPastMainImage:44.0, 10.0];
  personalizedMapIconView = self->_personalizedMapIconView;
  self->_personalizedMapIconView = v15;

  [(PersonalizedImageView *)self->_personalizedMapIconView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MUStackView *)self->_stackView addArrangedSubview:self->_personalizedMapIconView withCustomSpacing:20.0];
  v17 = objc_alloc_init(UILabel);
  titleLabel = self->_titleLabel;
  self->_titleLabel = v17;

  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_titleLabel setNumberOfLines:0];
  [(UILabel *)self->_titleLabel setTextAlignment:1];
  title = [(UGCCommunityAcknowledgementOptions *)self->_options title];
  [(UILabel *)self->_titleLabel setText:title];

  v20 = +[UIColor labelColor];
  [(UILabel *)self->_titleLabel setTextColor:v20];

  [DynamicTypeWizard autorefreshLabel:self->_titleLabel withFontProvider:&stru_10165DA28];
  [(MUStackView *)self->_stackView addArrangedSubview:self->_titleLabel withCustomSpacing:4.0];
  v21 = objc_alloc_init(UILabel);
  messageLabel = self->_messageLabel;
  self->_messageLabel = v21;

  [(UILabel *)self->_messageLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_messageLabel setNumberOfLines:0];
  [(UILabel *)self->_messageLabel setTextAlignment:1];
  message = [(UGCCommunityAcknowledgementOptions *)self->_options message];
  [(UILabel *)self->_messageLabel setText:message];

  v24 = +[UIColor secondaryLabelColor];
  [(UILabel *)self->_messageLabel setTextColor:v24];

  if (sub_10000FA08(self) == 5)
  {
    v25 = &stru_10165D8C8;
  }

  else
  {
    v25 = &stru_10165D908;
  }

  [DynamicTypeWizard autorefreshLabel:self->_messageLabel withFontProvider:v25];
  [(MUStackView *)self->_stackView addArrangedSubview:self->_messageLabel];
  v26 = +[GEOPlatform sharedPlatform];
  if ([v26 isInternalInstall] && GEOConfigGetBOOL() && (objc_opt_respondsToSelector() & 1) != 0)
  {
    showsInternalStatusLink = [(UGCCommunityAcknowledgementOptions *)self->_options showsInternalStatusLink];

    if (!showsInternalStatusLink)
    {
      goto LABEL_10;
    }

    v28 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    internalUILabel = self->_internalUILabel;
    self->_internalUILabel = v28;

    [self->_internalUILabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v30 = +[UIColor secondaryLabelColor];
    [self->_internalUILabel setTextColor:v30];

    [self->_internalUILabel setNumberOfLines:0];
    v31 = +[UIFont system12Bold];
    [self->_internalUILabel setFont:v31];

    [self->_internalUILabel setText:@"INTERNAL UI ONLY"];
    v32 = [[UITextView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    linkTextView = self->_linkTextView;
    self->_linkTextView = v32;

    [(UITextView *)self->_linkTextView setTranslatesAutoresizingMaskIntoConstraints:0];
    v34 = +[UIColor clearColor];
    [(UITextView *)self->_linkTextView setBackgroundColor:v34];

    [(UITextView *)self->_linkTextView setTextAlignment:1];
    [(UITextView *)self->_linkTextView setDataDetectorTypes:2];
    [(UITextView *)self->_linkTextView setUserInteractionEnabled:1];
    [(UITextView *)self->_linkTextView setSelectable:1];
    [(UITextView *)self->_linkTextView setEditable:0];
    [(UITextView *)self->_linkTextView setScrollEnabled:0];
    v26 = [[NSMutableAttributedString alloc] initWithString:@"View internal report status" attributes:0];
    v35 = [NSURL URLWithString:@"https://feedback.geo.apple.com"];
    [v26 addAttribute:NSLinkAttributeName value:v35 range:{0, objc_msgSend(v26, "length")}];

    v36 = +[UIFont system15];
    [v26 addAttribute:NSFontAttributeName value:v36 range:{0, objc_msgSend(v26, "length")}];

    [(UITextView *)self->_linkTextView setAttributedText:v26];
    [(MUStackView *)self->_stackView setCustomSpacing:self->_messageLabel afterView:20.0];
    [(MUStackView *)self->_stackView addArrangedSubview:self->_internalUILabel];
    [(MUStackView *)self->_stackView addArrangedSubview:self->_linkTextView];
  }

LABEL_10:
  primaryButtonTitle = [(UGCCommunityAcknowledgementOptions *)self->_options primaryButtonTitle];
  v38 = [primaryButtonTitle length];

  if (v38)
  {
    v39 = [MapsThemeButton buttonWithType:0];
    primaryButton = self->_primaryButton;
    self->_primaryButton = v39;

    [(MapsThemeButton *)self->_primaryButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MapsThemeButton *)self->_primaryButton setTitleColorProvider:&stru_101636C90];
    [(MapsThemeButton *)self->_primaryButton addTarget:self action:"done" forControlEvents:64];
    v41 = self->_primaryButton;
    primaryButtonTitle2 = [(UGCCommunityAcknowledgementOptions *)self->_options primaryButtonTitle];
    [(MapsThemeButton *)v41 setTitle:primaryButtonTitle2 forState:0];

    [(MUStackView *)self->_stackView addArrangedSubview:self->_primaryButton];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v9.receiver = self;
  v9.super_class = UGCCommunityAcknowledgementViewController;
  changeCopy = change;
  [(UGCCommunityAcknowledgementViewController *)&v9 traitCollectionDidChange:changeCopy];
  v5 = [(UGCCommunityAcknowledgementViewController *)self traitCollection:v9.receiver];
  preferredContentSizeCategory = [v5 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);
  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];

  LODWORD(changeCopy) = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory2);
  if (IsAccessibilityCategory != changeCopy)
  {
    [(UGCCommunityAcknowledgementViewController *)self _updateLayoutForCurrentContentSize];
  }
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = UGCCommunityAcknowledgementViewController;
  [(UGCCommunityAcknowledgementViewController *)&v6 viewDidLoad];
  [(UGCCommunityAcknowledgementViewController *)self _setupViews];
  [(UGCCommunityAcknowledgementViewController *)self _setupConstraints];
  navigationItem = [(UGCCommunityAcknowledgementViewController *)self navigationItem];
  [navigationItem setHidesBackButton:1];

  v4 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:24 target:self action:"done"];
  navigationItem2 = [(UGCCommunityAcknowledgementViewController *)self navigationItem];
  [navigationItem2 setRightBarButtonItem:v4];

  if ([(UGCCommunityAcknowledgementOptions *)self->_options acknowledgementOptionsType]== 1)
  {
    [GEOAPPortal captureUserAction:21 target:66 value:0];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v14.receiver = self;
  v14.super_class = UGCCommunityAcknowledgementViewController;
  [(UGCCommunityAcknowledgementViewController *)&v14 viewDidAppear:appear];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"RAPAcknowledgementViewControllerDidAppearNotification" object:self];

  if ([(UGCCommunityAcknowledgementOptions *)self->_options shouldDismissAutomatically])
  {
    if (objc_opt_respondsToSelector())
    {
      objc_initWeak(&location, self);
      [(UGCCommunityAcknowledgementViewController *)self _cancelDismissTimer];
      [(UGCCommunityAcknowledgementOptions *)self->_options timeToAutomaticDismissal];
      v6 = v5;
      v8 = _NSConcreteStackBlock;
      v9 = 3221225472;
      v10 = sub_100AB083C;
      v11 = &unk_101661BC8;
      objc_copyWeak(&v12, &location);
      v7 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:&v8 block:v6];
      [(UGCCommunityAcknowledgementViewController *)self setDismissTimer:v7, v8, v9, v10, v11];

      objc_destroyWeak(&v12);
      objc_destroyWeak(&location);
    }
  }
}

- (UGCCommunityAcknowledgementViewController)initWithOptions:(id)options completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  v14.receiver = self;
  v14.super_class = UGCCommunityAcknowledgementViewController;
  v9 = [(UGCCommunityAcknowledgementViewController *)&v14 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_options, options);
    v11 = [completionCopy copy];
    completion = v10->_completion;
    v10->_completion = v11;
  }

  return v10;
}

@end