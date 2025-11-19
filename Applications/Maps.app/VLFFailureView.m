@interface VLFFailureView
- (VLFFailureView)initWithFrame:(CGRect)a3;
- (VLFFailureViewDelegate)delegate;
- (id)_fontWithTextStyle:(id)a3 weight:(double)a4;
- (void)_dismissButtonTapped:(id)a3;
- (void)_retryButtonTapped:(id)a3;
- (void)_updateBackgroundColor;
- (void)_updateFonts;
- (void)_updateForCurrentLayout;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setCurrentLayout:(unint64_t)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateFont:(id)a3;
@end

@implementation VLFFailureView

- (VLFFailureViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_retryButtonTapped:(id)a3
{
  [GEOAPPortal captureUserAction:128 target:669 value:0];
  v4 = [(VLFFailureView *)self delegate];
  [v4 failureViewRetryButtonTapped:self];
}

- (void)_dismissButtonTapped:(id)a3
{
  [GEOAPPortal captureUserAction:125 target:669 value:0];
  v4 = [(VLFFailureView *)self delegate];
  [v4 failureViewDismissButtonTapped:self];
}

- (void)_updateForCurrentLayout
{
  if (self->_currentLayout == 2)
  {
    [(NSLayoutConstraint *)self->_topConstraint setConstant:14.0];
    [(NSLayoutConstraint *)self->_titleLabelLeadingConstraint setConstant:4.0];
    [(NSLayoutConstraint *)self->_titleLabelTrailingConstraint setConstant:-4.0];
    [(NSLayoutConstraint *)self->_labelPaddingConstraint setConstant:11.0];
    buttonPaddingConstraint = self->_buttonPaddingConstraint;

    [(NSLayoutConstraint *)buttonPaddingConstraint setConstant:-20.0];
  }

  else
  {
    v4 = [(VLFFailureView *)self traitCollection];
    v5 = [v4 preferredContentSizeCategory];
    v6 = UIContentSizeCategoryCompareToCategory(v5, UIContentSizeCategoryLarge);
    v7 = 18.0;
    if (v6 == NSOrderedDescending)
    {
      v7 = 15.0;
    }

    [(NSLayoutConstraint *)self->_topConstraint setConstant:v7];

    [(NSLayoutConstraint *)self->_titleLabelLeadingConstraint setConstant:0.0];
    [(NSLayoutConstraint *)self->_titleLabelTrailingConstraint setConstant:0.0];
    v8 = [(VLFFailureView *)self traitCollection];
    v9 = [v8 preferredContentSizeCategory];
    v10 = UIContentSizeCategoryCompareToCategory(v9, UIContentSizeCategoryLarge);
    v11 = 10.0;
    if (v10 == NSOrderedDescending)
    {
      v11 = 7.0;
    }

    [(NSLayoutConstraint *)self->_labelPaddingConstraint setConstant:v11];

    v15 = [(VLFFailureView *)self traitCollection];
    v12 = [v15 preferredContentSizeCategory];
    v13 = UIContentSizeCategoryCompareToCategory(v12, UIContentSizeCategoryLarge);
    v14 = -32.0;
    if (v13 == NSOrderedDescending)
    {
      v14 = -12.0;
    }

    [(NSLayoutConstraint *)self->_buttonPaddingConstraint setConstant:v14];
  }
}

- (void)_updateBackgroundColor
{
  v3 = [(VLFFailureView *)self traitCollection];
  v4 = [v3 userInterfaceStyle];

  if (v4 == 2)
  {
    +[UIColor secondarySystemBackgroundColor];
  }

  else
  {
    +[UIColor systemWhiteColor];
  }
  v5 = ;
  [(VLFFailureView *)self setBackgroundColor:v5];
}

- (void)_updateFonts
{
  v19 = [(VLFFailureView *)self _buttonFont];
  v3 = [(VLFFailureView *)self retryButton];
  v4 = [v3 titleLabel];
  [v4 setFont:v19];

  [v19 lineHeight];
  v6 = v5;
  [v19 leading];
  v8 = v6 + 28.0 + v7;
  v9 = [(VLFFailureView *)self retryButtonHeightConstraint];
  [v9 setConstant:v8];

  v10 = [(VLFFailureView *)self dismissButton];
  v11 = [v10 titleLabel];
  [v11 setFont:v19];

  [v19 lineHeight];
  v13 = v12;
  [v19 leading];
  v15 = v13 + 28.0 + v14;
  v16 = [(VLFFailureView *)self dismissButtonHeightConstraint];
  [v16 setConstant:v15];

  v17 = [(VLFFailureView *)self _descriptionFont];
  v18 = [(VLFFailureView *)self descriptionLabel];
  [v18 setFont:v17];
}

- (id)_fontWithTextStyle:(id)a3 weight:(double)a4
{
  v6 = a3;
  v7 = [(VLFFailureView *)self traitCollection];
  v8 = [(VLFFailureView *)self currentLayout];
  v9 = &UIContentSizeCategoryAccessibilityMedium;
  if (v8 != 2)
  {
    v9 = &UIContentSizeCategoryExtraLarge;
  }

  v10 = [v7 _maps_traitCollectionWithMaximumContentSizeCategory:*v9];

  v11 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:v6 compatibleWithTraitCollection:v10];

  v20 = UIFontDescriptorTraitsAttribute;
  v18 = UIFontWeightTrait;
  v12 = [NSNumber numberWithDouble:a4];
  v19 = v12;
  v13 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v21 = v13;
  v14 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  v15 = [v11 fontDescriptorByAddingAttributes:v14];

  v16 = [UIFont fontWithDescriptor:v15 size:0.0];

  return v16;
}

- (void)updateFont:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v6 = sub_10006D178();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315906;
      v10 = "[VLFFailureView updateFont:]";
      v11 = 2080;
      v12 = "VLFFailureView.m";
      v13 = 1024;
      v14 = 222;
      v15 = 2080;
      v16 = "font != nil";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", &v9, 0x26u);
    }

    if (sub_100E03634())
    {
      v7 = sub_10006D178();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = +[NSThread callStackSymbols];
        v9 = 138412290;
        v10 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%@", &v9, 0xCu);
      }
    }
  }

  v5 = [(VLFFailureView *)self titleLabel];
  [v5 setFont:v4];
}

- (void)setCurrentLayout:(unint64_t)a3
{
  if (self->_currentLayout != a3)
  {
    self->_currentLayout = a3;
    [(VLFFailureView *)self _updateForCurrentLayout];

    [(VLFFailureView *)self _updateFonts];
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = VLFFailureView;
  [(VLFFailureView *)&v3 layoutSubviews];
  [(VLFFailureView *)self _updateForCurrentLayout];
  [(VLFFailureView *)self _updateFonts];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = VLFFailureView;
  [(VLFFailureView *)&v4 traitCollectionDidChange:a3];
  [(VLFFailureView *)self _updateBackgroundColor];
  [(VLFFailureView *)self _updateFonts];
}

- (void)dealloc
{
  [(VLFSessionStateManager *)self->_stateManager removeObserver:self];
  v3.receiver = self;
  v3.super_class = VLFFailureView;
  [(VLFFailureView *)&v3 dealloc];
}

- (VLFFailureView)initWithFrame:(CGRect)a3
{
  v139.receiver = self;
  v139.super_class = VLFFailureView;
  v3 = [(VLFFailureView *)&v139 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_currentLayout = 2;
    v5 = +[UIApplication _maps_keyMapsSceneDelegate];
    v6 = [v5 platformController];
    v7 = [v6 auxiliaryTasksManager];
    v8 = [v7 auxilaryTaskForClass:objc_opt_class()];

    v137 = v8;
    v9 = [v8 stateManager];
    stateManager = v4->_stateManager;
    v4->_stateManager = v9;

    [(VLFSessionStateManager *)v4->_stateManager addObserver:v4];
    [(VLFFailureView *)v4 _updateBackgroundColor];
    v138 = +[NSMutableArray array];
    v11 = [UIButton buttonWithType:1];
    retryButton = v4->_retryButton;
    v4->_retryButton = v11;

    [(UIButton *)v4->_retryButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = [(UIButton *)v4->_retryButton layer];
    [v13 setCornerRadius:8.0];

    v14 = +[UIColor clearColor];
    [(UIButton *)v4->_retryButton setBackgroundColor:v14];

    v15 = v4->_retryButton;
    v16 = +[UIColor systemBlueColor];
    [(UIButton *)v15 setTitleColor:v16 forState:0];

    v17 = v4->_retryButton;
    v18 = +[NSBundle mainBundle];
    v19 = [v18 localizedStringForKey:@"VLF_localization_failed_try_again_button_text" value:@"localized string not found" table:0];
    [(UIButton *)v17 setTitle:v19 forState:0];

    [(UIButton *)v4->_retryButton addTarget:v4 action:"_retryButtonTapped:" forControlEvents:64];
    [(UIButton *)v4->_retryButton setHidden:[(VLFSessionStateManager *)v4->_stateManager currentState]== 0];
    [(VLFFailureView *)v4 addSubview:v4->_retryButton];
    v20 = [(UIButton *)v4->_retryButton heightAnchor];
    v21 = [v20 constraintEqualToConstant:0.0];
    retryButtonHeightConstraint = v4->_retryButtonHeightConstraint;
    v4->_retryButtonHeightConstraint = v21;

    v131 = [(UIButton *)v4->_retryButton leadingAnchor];
    v23 = [(VLFFailureView *)v4 leadingAnchor];
    v24 = [v131 constraintEqualToAnchor:v23 constant:24.0];
    v153[0] = v24;
    v25 = [(UIButton *)v4->_retryButton trailingAnchor];
    v26 = [(VLFFailureView *)v4 trailingAnchor];
    v27 = [v25 constraintEqualToAnchor:v26 constant:-24.0];
    v153[1] = v27;
    v28 = [(UIButton *)v4->_retryButton bottomAnchor];
    v29 = [(VLFFailureView *)v4 bottomAnchor];
    v30 = [v28 constraintEqualToAnchor:v29];
    v153[2] = v30;
    v153[3] = v4->_retryButtonHeightConstraint;
    v31 = [NSArray arrayWithObjects:v153 count:4];
    [v138 addObjectsFromArray:v31];

    v32 = [UIButton buttonWithType:1];
    dismissButton = v4->_dismissButton;
    v4->_dismissButton = v32;

    [(UIButton *)v4->_dismissButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v34 = [(UIButton *)v4->_dismissButton layer];
    [v34 setCornerRadius:8.0];

    v35 = +[UIColor systemBlueColor];
    [(UIButton *)v4->_dismissButton setBackgroundColor:v35];

    v36 = v4->_dismissButton;
    v37 = +[UIColor systemWhiteColor];
    [(UIButton *)v36 setTitleColor:v37 forState:0];

    v38 = v4->_dismissButton;
    v39 = +[NSBundle mainBundle];
    v40 = [v39 localizedStringForKey:@"VLF_localization_failed_dismiss_button_text" value:@"localized string not found" table:0];
    [(UIButton *)v38 setTitle:v40 forState:0];

    [(UIButton *)v4->_dismissButton addTarget:v4 action:"_dismissButtonTapped:" forControlEvents:64];
    [(VLFFailureView *)v4 addSubview:v4->_dismissButton];
    v41 = [(UIButton *)v4->_dismissButton heightAnchor];
    v42 = [v41 constraintEqualToConstant:0.0];
    dismissButtonHeightConstraint = v4->_dismissButtonHeightConstraint;
    v4->_dismissButtonHeightConstraint = v42;

    v132 = [(UIButton *)v4->_dismissButton leadingAnchor];
    v129 = [(UIButton *)v4->_retryButton leadingAnchor];
    v44 = [v132 constraintEqualToAnchor:v129];
    v152[0] = v44;
    v45 = [(UIButton *)v4->_dismissButton trailingAnchor];
    v46 = [(UIButton *)v4->_retryButton trailingAnchor];
    v47 = [v45 constraintEqualToAnchor:v46];
    v152[1] = v47;
    v48 = [(UIButton *)v4->_dismissButton bottomAnchor];
    v49 = [(UIButton *)v4->_retryButton topAnchor];
    v50 = [v48 constraintEqualToAnchor:v49];
    v152[2] = v50;
    v152[3] = v4->_dismissButtonHeightConstraint;
    v51 = [NSArray arrayWithObjects:v152 count:4];
    [v138 addObjectsFromArray:v51];

    v52 = objc_opt_new();
    topContentView = v4->_topContentView;
    v4->_topContentView = v52;

    [(UIView *)v4->_topContentView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(VLFFailureView *)v4 addSubview:v4->_topContentView];
    v54 = [(UIView *)v4->_topContentView topAnchor];
    v55 = [(VLFFailureView *)v4 topAnchor];
    v56 = [v54 constraintEqualToAnchor:v55 constant:14.0];
    topConstraint = v4->_topConstraint;
    v4->_topConstraint = v56;

    v58 = [(UIView *)v4->_topContentView bottomAnchor];
    v59 = [(UIButton *)v4->_dismissButton topAnchor];
    v60 = [v58 constraintEqualToAnchor:v59 constant:-20.0];
    buttonPaddingConstraint = v4->_buttonPaddingConstraint;
    v4->_buttonPaddingConstraint = v60;

    v62 = [(UIView *)v4->_topContentView leadingAnchor];
    v63 = [(VLFFailureView *)v4 leadingAnchor];
    v64 = [v62 constraintEqualToAnchor:v63];
    v151[0] = v64;
    v65 = [(UIView *)v4->_topContentView trailingAnchor];
    v66 = [(VLFFailureView *)v4 trailingAnchor];
    v67 = [v65 constraintEqualToAnchor:v66];
    v151[1] = v67;
    v151[2] = v4->_topConstraint;
    v151[3] = v4->_buttonPaddingConstraint;
    v68 = [NSArray arrayWithObjects:v151 count:4];
    [v138 addObjectsFromArray:v68];

    v69 = objc_opt_new();
    textContainerView = v4->_textContainerView;
    v4->_textContainerView = v69;

    [(UIView *)v4->_textContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v4->_topContentView addSubview:v4->_textContainerView];
    v135 = [(UIView *)v4->_textContainerView leadingAnchor];
    v133 = [(UIView *)v4->_topContentView leadingAnchor];
    v130 = [v135 constraintEqualToAnchor:v133 constant:24.0];
    v150[0] = v130;
    v128 = [(UIView *)v4->_textContainerView trailingAnchor];
    v127 = [(UIView *)v4->_topContentView trailingAnchor];
    v126 = [v128 constraintEqualToAnchor:v127 constant:-24.0];
    v150[1] = v126;
    v125 = [(UIView *)v4->_textContainerView topAnchor];
    v124 = [(UIView *)v4->_topContentView topAnchor];
    v71 = [v125 constraintGreaterThanOrEqualToAnchor:v124];
    v150[2] = v71;
    v72 = [(UIView *)v4->_textContainerView bottomAnchor];
    v73 = [(UIView *)v4->_topContentView bottomAnchor];
    v74 = [v72 constraintLessThanOrEqualToAnchor:v73];
    v150[3] = v74;
    v75 = [(UIView *)v4->_textContainerView centerYAnchor];
    v76 = [(UIView *)v4->_topContentView centerYAnchor];
    v77 = [v75 constraintEqualToAnchor:v76];
    v150[4] = v77;
    v78 = [NSArray arrayWithObjects:v150 count:5];
    [v138 addObjectsFromArray:v78];

    v79 = [UILabel alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v83 = [v79 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v83;

    [(UILabel *)v4->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v85) = 1148846080;
    [(UILabel *)v4->_titleLabel setContentCompressionResistancePriority:1 forAxis:v85];
    [(UILabel *)v4->_titleLabel setNumberOfLines:2];
    [(UILabel *)v4->_titleLabel setMinimumScaleFactor:0.0];
    [(UILabel *)v4->_titleLabel setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)v4->_titleLabel setTextAlignment:1];
    [(UILabel *)v4->_titleLabel setLineBreakMode:0];
    v86 = +[UIColor labelColor];
    [(UILabel *)v4->_titleLabel setTextColor:v86];

    v87 = +[NSBundle mainBundle];
    v88 = [v87 localizedStringForKey:@"VLF_localization_failed_title_text" value:@"localized string not found" table:0];
    [(UILabel *)v4->_titleLabel setText:v88];

    [(UIView *)v4->_textContainerView addSubview:v4->_titleLabel];
    v89 = [(UILabel *)v4->_titleLabel leadingAnchor];
    v90 = [(UIView *)v4->_textContainerView leadingAnchor];
    v91 = [v89 constraintEqualToAnchor:v90 constant:4.0];
    titleLabelLeadingConstraint = v4->_titleLabelLeadingConstraint;
    v4->_titleLabelLeadingConstraint = v91;

    v93 = [(UILabel *)v4->_titleLabel trailingAnchor];
    v94 = [(UIView *)v4->_textContainerView trailingAnchor];
    v95 = [v93 constraintEqualToAnchor:v94 constant:-4.0];
    titleLabelTrailingConstraint = v4->_titleLabelTrailingConstraint;
    v4->_titleLabelTrailingConstraint = v95;

    v149[0] = v4->_titleLabelLeadingConstraint;
    v149[1] = v4->_titleLabelTrailingConstraint;
    v97 = [(UILabel *)v4->_titleLabel topAnchor];
    v98 = [(UIView *)v4->_textContainerView topAnchor];
    v99 = [v97 constraintEqualToAnchor:v98];
    v149[2] = v99;
    v100 = [NSArray arrayWithObjects:v149 count:3];
    [v138 addObjectsFromArray:v100];

    v101 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    descriptionLabel = v4->_descriptionLabel;
    v4->_descriptionLabel = v101;

    [(UILabel *)v4->_descriptionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v4->_descriptionLabel setNumberOfLines:0];
    [(UILabel *)v4->_descriptionLabel setMinimumScaleFactor:0.0];
    [(UILabel *)v4->_descriptionLabel setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)v4->_descriptionLabel setTextAlignment:1];
    v103 = +[UIColor secondaryLabelColor];
    [(UILabel *)v4->_descriptionLabel setTextColor:v103];

    Integer = GEOConfigGetInteger();
    if (Integer >= 4)
    {
      v106 = sub_10006D178();
      if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v142 = "[VLFFailureView initWithFrame:]";
        v143 = 2080;
        v144 = "VLFFailureView.m";
        v145 = 1024;
        v146 = 158;
        v147 = 2080;
        v148 = "experimentConfig == 0";
        _os_log_impl(&_mh_execute_header, v106, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
      }

      if (sub_100E03634())
      {
        v107 = sub_10006D178();
        if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
        {
          v108 = +[NSThread callStackSymbols];
          *buf = 138412290;
          v142 = v108;
          _os_log_impl(&_mh_execute_header, v107, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }

      v105 = @"VLF_localization_failed_description_text";
    }

    else
    {
      v105 = *(&off_101638BB0 + Integer);
    }

    v109 = +[NSBundle mainBundle];
    v110 = [v109 localizedStringForKey:v105 value:@"localized string not found" table:0];
    [(UILabel *)v4->_descriptionLabel setText:v110];

    [(UIView *)v4->_textContainerView addSubview:v4->_descriptionLabel];
    v111 = [(UILabel *)v4->_descriptionLabel topAnchor];
    v112 = [(UILabel *)v4->_titleLabel bottomAnchor];
    v113 = [v111 constraintEqualToAnchor:v112 constant:11.0];
    labelPaddingConstraint = v4->_labelPaddingConstraint;
    v4->_labelPaddingConstraint = v113;

    v136 = [(UILabel *)v4->_descriptionLabel leadingAnchor];
    v134 = [(UIView *)v4->_textContainerView leadingAnchor];
    v115 = [v136 constraintEqualToAnchor:v134];
    v140[0] = v115;
    v116 = [(UILabel *)v4->_descriptionLabel trailingAnchor];
    v117 = [(UIView *)v4->_textContainerView trailingAnchor];
    v118 = [v116 constraintEqualToAnchor:v117];
    v140[1] = v118;
    v140[2] = v4->_labelPaddingConstraint;
    v119 = [(UILabel *)v4->_descriptionLabel bottomAnchor];
    v120 = [(UIView *)v4->_textContainerView bottomAnchor];
    v121 = [v119 constraintEqualToAnchor:v120];
    v140[3] = v121;
    v122 = [NSArray arrayWithObjects:v140 count:4];
    [v138 addObjectsFromArray:v122];

    [NSLayoutConstraint activateConstraints:v138];
    [(VLFFailureView *)v4 _updateFonts];
  }

  return v4;
}

@end