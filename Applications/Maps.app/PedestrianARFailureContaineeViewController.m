@interface PedestrianARFailureContaineeViewController
- (BOOL)_isLandscape;
- (PedestrianARFailureContaineeDelegate)failureContaineeDelegate;
- (PedestrianARFailureContaineeViewController)initWithEntryPoint:(int64_t)a3;
- (double)heightForLayout:(unint64_t)a3;
- (void)_dismissButtonTapped:(id)a3;
- (void)_retryButtonTapped:(id)a3;
- (void)_updateFonts;
- (void)_updateForCurrentLayout;
- (void)dealloc;
- (void)didChangeContainerStyle:(unint64_t)a3;
- (void)didChangeLayout:(unint64_t)a3;
- (void)pedestrianARViewControllerDidDisappearNotification:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation PedestrianARFailureContaineeViewController

- (PedestrianARFailureContaineeDelegate)failureContaineeDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_failureContaineeDelegate);

  return WeakRetained;
}

- (void)pedestrianARViewControllerDidDisappearNotification:(id)a3
{
  v4 = sub_100C82064();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v7 = 134349056;
    v8 = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] Pedestrian AR was dismissed; resigning session ownership", &v7, 0xCu);
  }

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:@"PedestrianARViewControllerDidDisappearNotification" object:0];

  v6 = +[MapsARSessionManager sharedManager];
  [v6 resignSessionWithOwner:self];
}

- (void)_retryButtonTapped:(id)a3
{
  v4 = sub_100C82064();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v7 = 134349056;
    v8 = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] Retry button tapped", &v7, 0xCu);
  }

  if ([(PedestrianARFailureContaineeViewController *)self entryPoint])
  {
    v5 = 402;
  }

  else
  {
    v5 = 302;
  }

  [GEOAPPortal captureUserAction:128 target:v5 value:0];
  v6 = [(PedestrianARFailureContaineeViewController *)self failureContaineeDelegate];
  [v6 failureViewRetryButtonTapped:self];
}

- (void)_dismissButtonTapped:(id)a3
{
  v4 = sub_100C82064();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v7 = 134349056;
    v8 = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] Dismiss button tapped", &v7, 0xCu);
  }

  if ([(PedestrianARFailureContaineeViewController *)self entryPoint])
  {
    v5 = 402;
  }

  else
  {
    v5 = 302;
  }

  [GEOAPPortal captureUserAction:125 target:v5 value:0];
  v6 = [(PedestrianARFailureContaineeViewController *)self failureContaineeDelegate];
  [v6 failureViewDismissButtonTapped:self];
}

- (void)didChangeContainerStyle:(unint64_t)a3
{
  v6.receiver = self;
  v6.super_class = PedestrianARFailureContaineeViewController;
  [(ContaineeViewController *)&v6 didChangeContainerStyle:?];
  v5 = sub_100C82064();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134349312;
    v8 = self;
    v9 = 2048;
    v10 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Did change style to: %lu", buf, 0x16u);
  }

  [(PedestrianARFailureContaineeViewController *)self _updateForCurrentLayout];
}

- (void)didChangeLayout:(unint64_t)a3
{
  v6.receiver = self;
  v6.super_class = PedestrianARFailureContaineeViewController;
  [(ContaineeViewController *)&v6 didChangeLayout:?];
  v5 = sub_100C82064();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134349312;
    v8 = self;
    v9 = 2048;
    v10 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Did change layout to: %lu", buf, 0x16u);
  }

  [(PedestrianARFailureContaineeViewController *)self _updateForCurrentLayout];
}

- (double)heightForLayout:(unint64_t)a3
{
  v3 = -1.0;
  if (a3 == 5)
  {
    [(PedestrianARFailureContaineeViewController *)self _updateForCurrentLayout];
    if ([(PedestrianARFailureContaineeViewController *)self _isLandscape])
    {
      v5 = [(ContaineeViewController *)self cardPresentationController];
      [v5 availableHeight];
      v3 = v6;
    }

    else
    {
      v5 = [(PedestrianARFailureContaineeViewController *)self view];
      v7 = [(PedestrianARFailureContaineeViewController *)self view];
      [v7 frame];
      v9 = v8;
      LODWORD(v8) = 1148846080;
      LODWORD(v10) = 1112014848;
      [v5 systemLayoutSizeFittingSize:v9 withHorizontalFittingPriority:UILayoutFittingCompressedSize.height verticalFittingPriority:{v8, v10}];
      v3 = v11;
    }
  }

  return v3;
}

- (BOOL)_isLandscape
{
  v2 = [(ContaineeViewController *)self cardPresentationController];
  v3 = [v2 containerStyle];
  v4 = (v3 > 7) | (0x5Cu >> v3);

  return v4 & 1;
}

- (void)_updateFonts
{
  v3 = [(PedestrianARFailureContaineeViewController *)self _isLandscape];
  v4 = UIContentSizeCategoryExtraExtraExtraLarge;
  if (!v3)
  {
    v4 = UIContentSizeCategoryAccessibilityLarge;
  }

  v31 = v4;
  v5 = [(PedestrianARFailureContaineeViewController *)self _isLandscape];
  v6 = UIContentSizeCategoryExtraLarge;
  if (!v5)
  {
    v6 = UIContentSizeCategoryAccessibilityLarge;
  }

  v7 = v6;
  v8 = [(PedestrianARFailureContaineeViewController *)self traitCollection];
  v9 = [v8 _maps_traitCollectionWithMaximumContentSizeCategory:v31];

  v10 = [(PedestrianARFailureContaineeViewController *)self traitCollection];
  v11 = [v10 _maps_traitCollectionWithMaximumContentSizeCategory:v7];

  v12 = [UIFont _maps_fontWithTextStyle:UIFontTextStyleTitle2 weight:v9 compatibleWithTraitCollection:UIFontWeightBold];
  v13 = [(PedestrianARFailureContaineeViewController *)self titleLabel];
  [v13 setFont:v12];

  v14 = [UIFont _maps_fontWithTextStyle:UIFontTextStyleTitle3 weight:v11 compatibleWithTraitCollection:UIFontWeightRegular];
  v15 = [(PedestrianARFailureContaineeViewController *)self descriptionLabel];
  [v15 setFont:v14];

  v16 = [UIFont _maps_fontWithTextStyle:UIFontTextStyleBody weight:v11 compatibleWithTraitCollection:UIFontWeightSemibold];
  v17 = [(PedestrianARFailureContaineeViewController *)self retryButton];
  v18 = [v17 titleLabel];
  [v18 setFont:v16];

  [v16 lineHeight];
  v20 = v19;
  [v16 leading];
  v22 = v20 + 28.0 + v21;
  v23 = [(PedestrianARFailureContaineeViewController *)self retryButtonHeightConstraint];
  [v23 setConstant:v22];

  v24 = [(PedestrianARFailureContaineeViewController *)self dismissButton];
  v25 = [v24 titleLabel];
  [v25 setFont:v16];

  [v16 lineHeight];
  v27 = v26;
  [v16 leading];
  v29 = v27 + 28.0 + v28;
  v30 = [(PedestrianARFailureContaineeViewController *)self dismissButtonHeightConstraint];
  [v30 setConstant:v29];
}

- (void)_updateForCurrentLayout
{
  v3 = [(PedestrianARFailureContaineeViewController *)self _isLandscape];
  v4 = [(PedestrianARFailureContaineeViewController *)self titleLabel];
  v5 = v4;
  if (v3)
  {
    [v4 setNumberOfLines:2];

    v6 = [(PedestrianARFailureContaineeViewController *)self descriptionLabel];
    [v6 setNumberOfLines:0];

    v7 = [(PedestrianARFailureContaineeViewController *)self topContainerTopConstraint];
    [v7 setConstant:24.0];

    v8 = [(PedestrianARFailureContaineeViewController *)self titleLabelFirstBaselineConstraint];
    [v8 setActive:0];

    v9 = [(PedestrianARFailureContaineeViewController *)self labelContainerLeadingConstraint];
    [v9 setConstant:24.0];

    v10 = [(PedestrianARFailureContaineeViewController *)self labelContainerTrailingConstraint];
    [v10 setConstant:-24.0];

    v11 = [(ContaineeViewController *)self cardPresentationController];
    v12 = [v11 containerStyle];

    v13 = [(PedestrianARFailureContaineeViewController *)self view];
    v14 = v13;
    if (v12 == 6)
    {
      v15 = [(PedestrianARFailureContaineeViewController *)self view];
      [v15 bounds];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v24 = [(PedestrianARFailureContaineeViewController *)self view];
      v25 = [v24 window];
      [v14 convertRect:v25 toView:{v17, v19, v21, v23}];
      v27 = v26;
      v29 = v28;
      v31 = v30;
      v33 = v32;

      v34 = [(PedestrianARFailureContaineeViewController *)self view];
      v35 = [v34 window];
      [v35 frame];
      v37 = v36;
      v66.origin.x = v27;
      v66.origin.y = v29;
      v66.size.width = v31;
      v66.size.height = v33;
      MaxY = CGRectGetMaxY(v66);

      v39 = [(PedestrianARFailureContaineeViewController *)self view];
      v40 = [v39 window];
      [v40 frame];
      v42 = v37 - MaxY + v41 * -0.07;
      v43 = [(PedestrianARFailureContaineeViewController *)self retryButtonBottomConstraint];
      [v43 setConstant:v42];

      v44 = sub_100C82064();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
      {
        v64 = 134349056;
        v65 = self;
        v45 = "[%{public}p] Laying out for landscape floating";
LABEL_12:
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEBUG, v45, &v64, 0xCu);
      }
    }

    else
    {
      v60 = [v13 window];
      [v60 frame];
      v62 = v61 * -0.07;
      v63 = [(PedestrianARFailureContaineeViewController *)self retryButtonBottomConstraint];
      [v63 setConstant:v62];

      v44 = sub_100C82064();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
      {
        v64 = 134349056;
        v65 = self;
        v45 = "[%{public}p] Laying out for landscape fixed";
        goto LABEL_12;
      }
    }
  }

  else
  {
    [v4 setNumberOfLines:3];

    v46 = [(PedestrianARFailureContaineeViewController *)self traitCollection];
    v47 = [v46 preferredContentSizeCategory];
    v48 = sub_10008FB5C(v47, UIContentSizeCategoryExtraLarge);

    v49 = [(PedestrianARFailureContaineeViewController *)self descriptionLabel];
    v50 = v49;
    if (v48 == 1)
    {
      v51 = 6;
    }

    else
    {
      v51 = 5;
    }

    [v49 setNumberOfLines:v51];

    v52 = [(PedestrianARFailureContaineeViewController *)self topContainerTopConstraint];
    [v52 setConstant:0.0];

    v53 = [(PedestrianARFailureContaineeViewController *)self titleLabelFirstBaselineConstraint];
    [v53 setActive:1];

    v54 = [(PedestrianARFailureContaineeViewController *)self labelContainerLeadingConstraint];
    [v54 setConstant:26.0];

    v55 = [(PedestrianARFailureContaineeViewController *)self labelContainerTrailingConstraint];
    [v55 setConstant:-26.0];

    v56 = [(ContaineeViewController *)self cardPresentationController];
    [v56 bottomSafeOffset];
    v58 = -10.0 - v57;
    v59 = [(PedestrianARFailureContaineeViewController *)self retryButtonBottomConstraint];
    [v59 setConstant:v58];

    v44 = sub_100C82064();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
    {
      v64 = 134349056;
      v65 = self;
      v45 = "[%{public}p] Laying out for portrait";
      goto LABEL_12;
    }
  }

  [(PedestrianARFailureContaineeViewController *)self _updateFonts];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PedestrianARFailureContaineeViewController;
  [(MapsThemeViewController *)&v9 traitCollectionDidChange:v4];
  if (!v4 || (-[PedestrianARFailureContaineeViewController traitCollection](self, "traitCollection"), v5 = objc_claimAutoreleasedReturnValue(), [v5 preferredContentSizeCategory], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "preferredContentSizeCategory"), v7 = objc_claimAutoreleasedReturnValue(), v8 = UIContentSizeCategoryCompareToCategory(v6, v7), v7, v6, v5, v8))
  {
    [(PedestrianARFailureContaineeViewController *)self _updateForCurrentLayout];
  }
}

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = PedestrianARFailureContaineeViewController;
  [(ContaineeViewController *)&v5 viewDidLayoutSubviews];
  v3 = [(ContaineeViewController *)self cardPresentationController];
  v4 = [v3 containerStyle];

  if (v4)
  {
    [(PedestrianARFailureContaineeViewController *)self _updateForCurrentLayout];
  }
}

- (void)viewDidLoad
{
  v170.receiver = self;
  v170.super_class = PedestrianARFailureContaineeViewController;
  [(ContaineeViewController *)&v170 viewDidLoad];
  [(PedestrianARFailureContaineeViewController *)self setOverrideUserInterfaceStyle:2];
  v3 = +[UIColor clearColor];
  v4 = [(PedestrianARFailureContaineeViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = [[MUBlurView alloc] initWithBlurEffectStyle:19];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = +[UIColor systemBackgroundColor];
  [v5 setNonBlurredColor:v6];

  v7 = [(PedestrianARFailureContaineeViewController *)self view];
  [v7 addSubview:v5];

  v165 = [v5 leadingAnchor];
  v167 = [(PedestrianARFailureContaineeViewController *)self view];
  v160 = [v167 leadingAnchor];
  v157 = [v165 constraintEqualToAnchor:v160];
  v181[0] = v157;
  v150 = [v5 trailingAnchor];
  v153 = [(PedestrianARFailureContaineeViewController *)self view];
  v148 = [v153 trailingAnchor];
  v146 = [v150 constraintEqualToAnchor:v148];
  v181[1] = v146;
  v8 = v5;
  v164 = v5;
  v9 = [v5 topAnchor];
  v10 = [(PedestrianARFailureContaineeViewController *)self view];
  v11 = [v10 topAnchor];
  v12 = [v9 constraintEqualToAnchor:v11];
  v181[2] = v12;
  v13 = [v8 bottomAnchor];
  v14 = [(PedestrianARFailureContaineeViewController *)self view];
  v15 = [v14 bottomAnchor];
  v16 = [v13 constraintEqualToAnchor:v15];
  v181[3] = v16;
  v17 = [NSArray arrayWithObjects:v181 count:4];
  [NSLayoutConstraint activateConstraints:v17];

  v18 = [UIView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v22 = [v18 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
  v23 = [(PedestrianARFailureContaineeViewController *)self view];
  [v23 addSubview:v22];

  v24 = [v22 topAnchor];
  v25 = [(PedestrianARFailureContaineeViewController *)self view];
  v26 = [v25 topAnchor];
  v27 = [v24 constraintEqualToAnchor:v26];
  topContainerTopConstraint = self->_topContainerTopConstraint;
  self->_topContainerTopConstraint = v27;

  v168 = [v22 leadingAnchor];
  v29 = [(PedestrianARFailureContaineeViewController *)self view];
  v30 = [v29 leadingAnchor];
  v31 = [v168 constraintEqualToAnchor:v30];
  v180[0] = v31;
  v32 = [v22 trailingAnchor];
  v33 = [(PedestrianARFailureContaineeViewController *)self view];
  v34 = [v33 trailingAnchor];
  v35 = [v32 constraintEqualToAnchor:v34];
  v36 = self->_topContainerTopConstraint;
  v180[1] = v35;
  v180[2] = v36;
  v37 = [NSArray arrayWithObjects:v180 count:3];
  [NSLayoutConstraint activateConstraints:v37];

  v38 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [v38 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v39) = 1148846080;
  [v38 setContentHuggingPriority:1 forAxis:v39];
  [v22 addSubview:v38];
  v40 = [v38 leadingAnchor];
  v41 = [v22 leadingAnchor];
  v42 = [v40 constraintEqualToAnchor:v41 constant:26.0];
  labelContainerLeadingConstraint = self->_labelContainerLeadingConstraint;
  self->_labelContainerLeadingConstraint = v42;

  v44 = [v38 trailingAnchor];
  v45 = [v22 trailingAnchor];
  v46 = [v44 constraintEqualToAnchor:v45 constant:-26.0];
  labelContainerTrailingConstraint = self->_labelContainerTrailingConstraint;
  self->_labelContainerTrailingConstraint = v46;

  v48 = self->_labelContainerTrailingConstraint;
  v179[0] = self->_labelContainerLeadingConstraint;
  v179[1] = v48;
  v161 = [v38 topAnchor];
  v49 = v22;
  v50 = [v22 topAnchor];
  v51 = [v161 constraintGreaterThanOrEqualToAnchor:v50];
  v179[2] = v51;
  v169 = v38;
  v52 = [v38 bottomAnchor];
  v166 = v49;
  v53 = [v49 bottomAnchor];
  v54 = [v52 constraintLessThanOrEqualToAnchor:v53];
  v179[3] = v54;
  v55 = [v38 centerYAnchor];
  v56 = [v49 centerYAnchor];
  v57 = [v55 constraintEqualToAnchor:v56];
  v179[4] = v57;
  v58 = [NSArray arrayWithObjects:v179 count:5];
  [NSLayoutConstraint activateConstraints:v58];

  v59 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  titleLabel = self->_titleLabel;
  self->_titleLabel = v59;

  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_titleLabel setTextAlignment:1];
  [(UILabel *)self->_titleLabel setAdjustsFontSizeToFitWidth:1];
  LODWORD(v61) = 1148846080;
  [(UILabel *)self->_titleLabel setContentCompressionResistancePriority:1 forAxis:v61];
  v62 = +[UIColor labelColor];
  [(UILabel *)self->_titleLabel setTextColor:v62];

  v63 = +[NSBundle mainBundle];
  v64 = [v63 localizedStringForKey:@"Pedestrian_AR_failure_title_text" value:@"localized string not found" table:0];
  [(UILabel *)self->_titleLabel setText:v64];

  [v169 addSubview:self->_titleLabel];
  v65 = [(UILabel *)self->_titleLabel firstBaselineAnchor];
  v66 = [v166 topAnchor];
  v67 = [v65 constraintEqualToAnchor:v66 constant:60.0];
  titleLabelFirstBaselineConstraint = self->_titleLabelFirstBaselineConstraint;
  self->_titleLabelFirstBaselineConstraint = v67;

  v162 = [(UILabel *)self->_titleLabel leadingAnchor];
  v69 = [v169 leadingAnchor];
  v70 = [v162 constraintEqualToAnchor:v69];
  v178[0] = v70;
  v71 = [(UILabel *)self->_titleLabel trailingAnchor];
  v72 = [v169 trailingAnchor];
  v73 = [v71 constraintEqualToAnchor:v72];
  v178[1] = v73;
  v74 = [(UILabel *)self->_titleLabel topAnchor];
  v75 = [v169 topAnchor];
  v76 = [v74 constraintEqualToAnchor:v75];
  v77 = self->_titleLabelFirstBaselineConstraint;
  v178[2] = v76;
  v178[3] = v77;
  v78 = [NSArray arrayWithObjects:v178 count:4];
  [NSLayoutConstraint activateConstraints:v78];

  v79 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  descriptionLabel = self->_descriptionLabel;
  self->_descriptionLabel = v79;

  [(UILabel *)self->_descriptionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_descriptionLabel setAdjustsFontSizeToFitWidth:1];
  [(UILabel *)self->_descriptionLabel setTextAlignment:1];
  [(UILabel *)self->_descriptionLabel setNumberOfLines:5];
  LODWORD(v81) = 1148846080;
  [(UILabel *)self->_descriptionLabel setContentCompressionResistancePriority:1 forAxis:v81];
  v82 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle3];
  v176 = UIFontDescriptorTraitsAttribute;
  v174 = UIFontWeightTrait;
  v83 = [NSNumber numberWithDouble:UIFontWeightRegular];
  v175 = v83;
  v84 = [NSDictionary dictionaryWithObjects:&v175 forKeys:&v174 count:1];
  v177 = v84;
  v85 = [NSDictionary dictionaryWithObjects:&v177 forKeys:&v176 count:1];
  v163 = [v82 fontDescriptorByAddingAttributes:v85];

  v86 = [UIFont fontWithDescriptor:v163 size:0.0];
  [(UILabel *)self->_descriptionLabel setFont:v86];

  v87 = +[UIColor secondaryLabelColor];
  [(UILabel *)self->_descriptionLabel setTextColor:v87];

  v88 = +[NSBundle mainBundle];
  v89 = [v88 localizedStringForKey:@"Pedestrian_AR_failure_description_text" value:@"localized string not found" table:0];
  [(UILabel *)self->_descriptionLabel setText:v89];

  [v169 addSubview:self->_descriptionLabel];
  v154 = [(UILabel *)self->_descriptionLabel leadingAnchor];
  v151 = [v169 leadingAnchor];
  v149 = [v154 constraintEqualToAnchor:v151];
  v173[0] = v149;
  v147 = [(UILabel *)self->_descriptionLabel trailingAnchor];
  v90 = [v169 trailingAnchor];
  v91 = [v147 constraintEqualToAnchor:v90];
  v173[1] = v91;
  v92 = [(UILabel *)self->_descriptionLabel topAnchor];
  v93 = [(UILabel *)self->_titleLabel bottomAnchor];
  v94 = [v92 constraintEqualToAnchor:v93 constant:15.0];
  v173[2] = v94;
  v95 = [(UILabel *)self->_descriptionLabel bottomAnchor];
  v96 = [v169 bottomAnchor];
  v97 = [v95 constraintEqualToAnchor:v96];
  v173[3] = v97;
  v98 = [NSArray arrayWithObjects:v173 count:4];
  [NSLayoutConstraint activateConstraints:v98];

  v99 = [UIButton buttonWithType:1];
  dismissButton = self->_dismissButton;
  self->_dismissButton = v99;

  [(UIButton *)self->_dismissButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v101 = [(UIButton *)self->_dismissButton layer];
  [v101 setCornerRadius:12.0];

  v102 = +[UIColor systemBlueColor];
  [(UIButton *)self->_dismissButton setBackgroundColor:v102];

  v103 = self->_dismissButton;
  v104 = +[UIColor systemWhiteColor];
  [(UIButton *)v103 setTitleColor:v104 forState:0];

  v105 = self->_dismissButton;
  v106 = +[NSBundle mainBundle];
  v107 = [v106 localizedStringForKey:@"Pedestrian_AR_failure_dismiss_button_text" value:@"localized string not found" table:0];
  [(UIButton *)v105 setTitle:v107 forState:0];

  [(UIButton *)self->_dismissButton addTarget:self action:"_dismissButtonTapped:" forControlEvents:64];
  v108 = [(PedestrianARFailureContaineeViewController *)self view];
  [v108 addSubview:self->_dismissButton];

  v109 = [(UIButton *)self->_dismissButton heightAnchor];
  v110 = [v109 constraintEqualToConstant:50.0];
  dismissButtonHeightConstraint = self->_dismissButtonHeightConstraint;
  self->_dismissButtonHeightConstraint = v110;

  v158 = [(UIButton *)self->_dismissButton leadingAnchor];
  v155 = [v169 leadingAnchor];
  v112 = [v158 constraintEqualToAnchor:v155];
  v172[0] = v112;
  v113 = [(UIButton *)self->_dismissButton trailingAnchor];
  v114 = [v169 trailingAnchor];
  v115 = [v113 constraintEqualToAnchor:v114];
  v172[1] = v115;
  v116 = [(UIButton *)self->_dismissButton topAnchor];
  v117 = [v166 bottomAnchor];
  v118 = [v116 constraintEqualToAnchor:v117 constant:26.0];
  v119 = self->_dismissButtonHeightConstraint;
  v172[2] = v118;
  v172[3] = v119;
  v120 = [NSArray arrayWithObjects:v172 count:4];
  [NSLayoutConstraint activateConstraints:v120];

  v121 = [UIButton buttonWithType:1];
  retryButton = self->_retryButton;
  self->_retryButton = v121;

  [(UIButton *)self->_retryButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v123 = +[UIColor clearColor];
  [(UIButton *)self->_retryButton setBackgroundColor:v123];

  v124 = self->_retryButton;
  v125 = +[UIColor systemWhiteColor];
  [(UIButton *)v124 setTitleColor:v125 forState:0];

  v126 = self->_retryButton;
  v127 = +[NSBundle mainBundle];
  v128 = [v127 localizedStringForKey:@"Pedestrian_AR_failure_retry_button_text" value:@"localized string not found" table:0];
  [(UIButton *)v126 setTitle:v128 forState:0];

  [(UIButton *)self->_retryButton addTarget:self action:"_retryButtonTapped:" forControlEvents:64];
  v129 = [(PedestrianARFailureContaineeViewController *)self view];
  [v129 addSubview:self->_retryButton];

  v130 = [(UIButton *)self->_retryButton bottomAnchor];
  v131 = [(PedestrianARFailureContaineeViewController *)self view];
  v132 = [v131 bottomAnchor];
  v133 = [v130 constraintEqualToAnchor:v132];
  retryButtonBottomConstraint = self->_retryButtonBottomConstraint;
  self->_retryButtonBottomConstraint = v133;

  v135 = [(UIButton *)self->_retryButton heightAnchor];
  v136 = [v135 constraintEqualToConstant:50.0];
  retryButtonHeightConstraint = self->_retryButtonHeightConstraint;
  self->_retryButtonHeightConstraint = v136;

  v159 = [(UIButton *)self->_retryButton leadingAnchor];
  v156 = [v169 leadingAnchor];
  v152 = [v159 constraintEqualToAnchor:v156];
  v171[0] = v152;
  v138 = [(UIButton *)self->_retryButton trailingAnchor];
  v139 = [v169 trailingAnchor];
  v140 = [v138 constraintEqualToAnchor:v139];
  v171[1] = v140;
  v141 = [(UIButton *)self->_retryButton topAnchor];
  v142 = [(UIButton *)self->_dismissButton bottomAnchor];
  v143 = [v141 constraintEqualToAnchor:v142 constant:4.0];
  v144 = self->_retryButtonBottomConstraint;
  v171[2] = v143;
  v171[3] = v144;
  v171[4] = self->_retryButtonHeightConstraint;
  v145 = [NSArray arrayWithObjects:v171 count:5];
  [NSLayoutConstraint activateConstraints:v145];

  [(PedestrianARFailureContaineeViewController *)self _updateForCurrentLayout];
}

- (void)dealloc
{
  v3 = sub_100C82064();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349056;
    v7 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}p] Deallocating", buf, 0xCu);
  }

  v4 = +[MapsARSessionManager sharedManager];
  [v4 resignSessionWithOwner:self];

  v5.receiver = self;
  v5.super_class = PedestrianARFailureContaineeViewController;
  [(PedestrianARFailureContaineeViewController *)&v5 dealloc];
}

- (PedestrianARFailureContaineeViewController)initWithEntryPoint:(int64_t)a3
{
  v14.receiver = self;
  v14.super_class = PedestrianARFailureContaineeViewController;
  v4 = [(PedestrianARFailureContaineeViewController *)&v14 initWithNibName:0 bundle:0];
  if (v4)
  {
    v5 = sub_100C82064();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349312;
      v16 = v4;
      v17 = 2048;
      v18 = a3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] Initializing with entry point: %ld", buf, 0x16u);
    }

    v4->_entryPoint = a3;
    v6 = +[MapsARSessionManager sharedManager];
    [v6 requestSessionWithOwner:v4];

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v4 selector:"pedestrianARViewControllerDidDisappearNotification:" name:@"PedestrianARViewControllerDidDisappearNotification" object:0];

    v8 = [(ContaineeViewController *)v4 cardPresentationController];
    [v8 setHideGrabber:1];

    v9 = [(ContaineeViewController *)v4 cardPresentationController];
    [v9 setAllowsSwipeToDismiss:0];

    v10 = [(ContaineeViewController *)v4 cardPresentationController];
    [v10 setPresentedModally:1];

    v11 = [(ContaineeViewController *)v4 cardPresentationController];
    [v11 setTakesAvailableHeight:1];

    v12 = [(ContaineeViewController *)v4 cardPresentationController];
    [v12 setEdgeAttachedRegularHeightDimmingBehavior:1];
  }

  return v4;
}

@end