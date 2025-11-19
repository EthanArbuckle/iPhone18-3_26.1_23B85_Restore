@interface UGCCommunityAcknowledgementViewController
- (UGCCommunityAcknowledgementViewController)initWithOptions:(id)a3 completion:(id)a4;
- (void)_addFooterView;
- (void)_cancelDismissTimer;
- (void)_setupConstraints;
- (void)_setupViews;
- (void)_updateLayoutForCurrentContentSize;
- (void)done;
- (void)macFooterViewBackButtonTapped:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation UGCCommunityAcknowledgementViewController

- (void)macFooterViewBackButtonTapped:(id)a3
{
  v4 = [(UGCCommunityAcknowledgementViewController *)self navigationController];
  v3 = [v4 popViewControllerAnimated:1];
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

    v4 = [(UGCCommunityAcknowledgementViewController *)self completion];

    if (v4)
    {
      v5 = [(UGCCommunityAcknowledgementViewController *)self completion];
      v5[2]();
    }
  }
}

- (void)_cancelDismissTimer
{
  v3 = [(UGCCommunityAcknowledgementViewController *)self dismissTimer];
  [v3 invalidate];

  [(UGCCommunityAcknowledgementViewController *)self setDismissTimer:0];
}

- (void)_addFooterView
{
  v3 = [[MacFooterView alloc] initWithNoBlurRightSideButtonsOfType:8];
  [(UGCCommunityAcknowledgementViewController *)self setFooterView:v3];

  v4 = [(UGCCommunityAcknowledgementViewController *)self footerView];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [(UGCCommunityAcknowledgementViewController *)self footerView];
  [v5 setDelegate:self];

  v6 = [(UGCCommunityAcknowledgementViewController *)self view];
  v7 = [(UGCCommunityAcknowledgementViewController *)self footerView];
  [v6 addSubview:v7];

  v27 = [(UGCCommunityAcknowledgementViewController *)self footerView];
  v26 = [v27 topAnchor];
  v25 = [(MUStackView *)self->_stackView bottomAnchor];
  v24 = [v26 constraintGreaterThanOrEqualToAnchor:v25];
  v28[0] = v24;
  v23 = [(UGCCommunityAcknowledgementViewController *)self footerView];
  v21 = [v23 leadingAnchor];
  v22 = [(UGCCommunityAcknowledgementViewController *)self view];
  v20 = [v22 leadingAnchor];
  v19 = [v21 constraintEqualToAnchor:v20];
  v28[1] = v19;
  v18 = [(UGCCommunityAcknowledgementViewController *)self footerView];
  v8 = [v18 trailingAnchor];
  v9 = [(UGCCommunityAcknowledgementViewController *)self view];
  v10 = [v9 trailingAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];
  v28[2] = v11;
  v12 = [(UGCCommunityAcknowledgementViewController *)self footerView];
  v13 = [v12 bottomAnchor];
  v14 = [(UGCCommunityAcknowledgementViewController *)self view];
  v15 = [v14 bottomAnchor];
  v16 = [v13 constraintEqualToAnchor:v15];
  v28[3] = v16;
  v17 = [NSArray arrayWithObjects:v28 count:4];
  [NSLayoutConstraint activateConstraints:v17];
}

- (void)_updateLayoutForCurrentContentSize
{
  v3 = [(UGCCommunityAcknowledgementViewController *)self traitCollection];
  v4 = [v3 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v4);

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
  v5 = [(UGCCommunityAcknowledgementViewController *)self view];
  v6 = [v3 initWithItem:blurView container:v5];
  v58 = v6;
  v7 = [NSArray arrayWithObjects:&v58 count:1];
  [NSLayoutConstraint _mapsui_activateLayouts:v7];

  v55 = [(UIScrollView *)self->_scrollView topAnchor];
  v56 = [(UGCCommunityAcknowledgementViewController *)self view];
  v54 = [v56 safeAreaLayoutGuide];
  v53 = [v54 topAnchor];
  v52 = [v55 constraintEqualToAnchor:v53];
  v57[0] = v52;
  v50 = [(UIScrollView *)self->_scrollView leadingAnchor];
  v51 = [(UGCCommunityAcknowledgementViewController *)self view];
  v49 = [v51 leadingAnchor];
  v48 = [v50 constraintEqualToAnchor:v49];
  v57[1] = v48;
  v46 = [(UIScrollView *)self->_scrollView trailingAnchor];
  v47 = [(UGCCommunityAcknowledgementViewController *)self view];
  v45 = [v47 trailingAnchor];
  v44 = [v46 constraintEqualToAnchor:v45];
  v57[2] = v44;
  v42 = [(UIScrollView *)self->_scrollView bottomAnchor];
  v43 = [(UGCCommunityAcknowledgementViewController *)self view];
  v41 = [v43 bottomAnchor];
  v40 = [v42 constraintEqualToAnchor:v41];
  v57[3] = v40;
  v39 = [(UIScrollView *)self->_scrollView contentLayoutGuide];
  v37 = [v39 heightAnchor];
  v38 = [(UIScrollView *)self->_scrollView frameLayoutGuide];
  v36 = [v38 heightAnchor];
  v35 = [v37 constraintGreaterThanOrEqualToAnchor:v36];
  v57[4] = v35;
  v33 = [(MUStackView *)self->_stackView centerYAnchor];
  v34 = [(UIScrollView *)self->_scrollView contentLayoutGuide];
  v32 = [v34 centerYAnchor];
  v31 = [v33 constraintEqualToAnchor:v32];
  v57[5] = v31;
  v29 = [(MUStackView *)self->_stackView topAnchor];
  v30 = [(UIScrollView *)self->_scrollView contentLayoutGuide];
  v28 = [v30 topAnchor];
  v27 = [v29 constraintGreaterThanOrEqualToAnchor:v28];
  v57[6] = v27;
  v25 = [(MUStackView *)self->_stackView bottomAnchor];
  v26 = [(UIScrollView *)self->_scrollView contentLayoutGuide];
  v24 = [v26 bottomAnchor];
  v23 = [v25 constraintLessThanOrEqualToAnchor:v24];
  v57[7] = v23;
  v22 = [(MUStackView *)self->_stackView centerXAnchor];
  v8 = [(UIScrollView *)self->_scrollView centerXAnchor];
  v9 = [v22 constraintEqualToAnchor:v8];
  v57[8] = v9;
  v10 = [(MUStackView *)self->_stackView leadingAnchor];
  v11 = [(UIScrollView *)self->_scrollView leadingAnchor];
  v12 = [v10 constraintGreaterThanOrEqualToAnchor:v11 constant:16.0];
  v57[9] = v12;
  v13 = [(MUStackView *)self->_stackView trailingAnchor];
  v14 = [(UIScrollView *)self->_scrollView trailingAnchor];
  v15 = [v13 constraintLessThanOrEqualToAnchor:v14 constant:-16.0];
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

  v5 = [(UGCCommunityAcknowledgementViewController *)self view];
  [v5 addSubview:self->_blurView];

  v6 = [UIScrollView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v10 = [v6 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  scrollView = self->_scrollView;
  self->_scrollView = v10;

  [(UIScrollView *)self->_scrollView setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = [(UGCCommunityAcknowledgementViewController *)self view];
  [v12 addSubview:self->_scrollView];

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
  v19 = [(UGCCommunityAcknowledgementOptions *)self->_options title];
  [(UILabel *)self->_titleLabel setText:v19];

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
  v23 = [(UGCCommunityAcknowledgementOptions *)self->_options message];
  [(UILabel *)self->_messageLabel setText:v23];

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
    v27 = [(UGCCommunityAcknowledgementOptions *)self->_options showsInternalStatusLink];

    if (!v27)
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
  v37 = [(UGCCommunityAcknowledgementOptions *)self->_options primaryButtonTitle];
  v38 = [v37 length];

  if (v38)
  {
    v39 = [MapsThemeButton buttonWithType:0];
    primaryButton = self->_primaryButton;
    self->_primaryButton = v39;

    [(MapsThemeButton *)self->_primaryButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MapsThemeButton *)self->_primaryButton setTitleColorProvider:&stru_101636C90];
    [(MapsThemeButton *)self->_primaryButton addTarget:self action:"done" forControlEvents:64];
    v41 = self->_primaryButton;
    v42 = [(UGCCommunityAcknowledgementOptions *)self->_options primaryButtonTitle];
    [(MapsThemeButton *)v41 setTitle:v42 forState:0];

    [(MUStackView *)self->_stackView addArrangedSubview:self->_primaryButton];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v9.receiver = self;
  v9.super_class = UGCCommunityAcknowledgementViewController;
  v4 = a3;
  [(UGCCommunityAcknowledgementViewController *)&v9 traitCollectionDidChange:v4];
  v5 = [(UGCCommunityAcknowledgementViewController *)self traitCollection:v9.receiver];
  v6 = [v5 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v6);
  v8 = [v4 preferredContentSizeCategory];

  LODWORD(v4) = UIContentSizeCategoryIsAccessibilityCategory(v8);
  if (IsAccessibilityCategory != v4)
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
  v3 = [(UGCCommunityAcknowledgementViewController *)self navigationItem];
  [v3 setHidesBackButton:1];

  v4 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:24 target:self action:"done"];
  v5 = [(UGCCommunityAcknowledgementViewController *)self navigationItem];
  [v5 setRightBarButtonItem:v4];

  if ([(UGCCommunityAcknowledgementOptions *)self->_options acknowledgementOptionsType]== 1)
  {
    [GEOAPPortal captureUserAction:21 target:66 value:0];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v14.receiver = self;
  v14.super_class = UGCCommunityAcknowledgementViewController;
  [(UGCCommunityAcknowledgementViewController *)&v14 viewDidAppear:a3];
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

- (UGCCommunityAcknowledgementViewController)initWithOptions:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = UGCCommunityAcknowledgementViewController;
  v9 = [(UGCCommunityAcknowledgementViewController *)&v14 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_options, a3);
    v11 = [v8 copy];
    completion = v10->_completion;
    v10->_completion = v11;
  }

  return v10;
}

@end