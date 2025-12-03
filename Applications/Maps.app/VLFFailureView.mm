@interface VLFFailureView
- (VLFFailureView)initWithFrame:(CGRect)frame;
- (VLFFailureViewDelegate)delegate;
- (id)_fontWithTextStyle:(id)style weight:(double)weight;
- (void)_dismissButtonTapped:(id)tapped;
- (void)_retryButtonTapped:(id)tapped;
- (void)_updateBackgroundColor;
- (void)_updateFonts;
- (void)_updateForCurrentLayout;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setCurrentLayout:(unint64_t)layout;
- (void)traitCollectionDidChange:(id)change;
- (void)updateFont:(id)font;
@end

@implementation VLFFailureView

- (VLFFailureViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_retryButtonTapped:(id)tapped
{
  [GEOAPPortal captureUserAction:128 target:669 value:0];
  delegate = [(VLFFailureView *)self delegate];
  [delegate failureViewRetryButtonTapped:self];
}

- (void)_dismissButtonTapped:(id)tapped
{
  [GEOAPPortal captureUserAction:125 target:669 value:0];
  delegate = [(VLFFailureView *)self delegate];
  [delegate failureViewDismissButtonTapped:self];
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
    traitCollection = [(VLFFailureView *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    v6 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, UIContentSizeCategoryLarge);
    v7 = 18.0;
    if (v6 == NSOrderedDescending)
    {
      v7 = 15.0;
    }

    [(NSLayoutConstraint *)self->_topConstraint setConstant:v7];

    [(NSLayoutConstraint *)self->_titleLabelLeadingConstraint setConstant:0.0];
    [(NSLayoutConstraint *)self->_titleLabelTrailingConstraint setConstant:0.0];
    traitCollection2 = [(VLFFailureView *)self traitCollection];
    preferredContentSizeCategory2 = [traitCollection2 preferredContentSizeCategory];
    v10 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory2, UIContentSizeCategoryLarge);
    v11 = 10.0;
    if (v10 == NSOrderedDescending)
    {
      v11 = 7.0;
    }

    [(NSLayoutConstraint *)self->_labelPaddingConstraint setConstant:v11];

    traitCollection3 = [(VLFFailureView *)self traitCollection];
    preferredContentSizeCategory3 = [traitCollection3 preferredContentSizeCategory];
    v13 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory3, UIContentSizeCategoryLarge);
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
  traitCollection = [(VLFFailureView *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle == 2)
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
  _buttonFont = [(VLFFailureView *)self _buttonFont];
  retryButton = [(VLFFailureView *)self retryButton];
  titleLabel = [retryButton titleLabel];
  [titleLabel setFont:_buttonFont];

  [_buttonFont lineHeight];
  v6 = v5;
  [_buttonFont leading];
  v8 = v6 + 28.0 + v7;
  retryButtonHeightConstraint = [(VLFFailureView *)self retryButtonHeightConstraint];
  [retryButtonHeightConstraint setConstant:v8];

  dismissButton = [(VLFFailureView *)self dismissButton];
  titleLabel2 = [dismissButton titleLabel];
  [titleLabel2 setFont:_buttonFont];

  [_buttonFont lineHeight];
  v13 = v12;
  [_buttonFont leading];
  v15 = v13 + 28.0 + v14;
  dismissButtonHeightConstraint = [(VLFFailureView *)self dismissButtonHeightConstraint];
  [dismissButtonHeightConstraint setConstant:v15];

  _descriptionFont = [(VLFFailureView *)self _descriptionFont];
  descriptionLabel = [(VLFFailureView *)self descriptionLabel];
  [descriptionLabel setFont:_descriptionFont];
}

- (id)_fontWithTextStyle:(id)style weight:(double)weight
{
  styleCopy = style;
  traitCollection = [(VLFFailureView *)self traitCollection];
  currentLayout = [(VLFFailureView *)self currentLayout];
  v9 = &UIContentSizeCategoryAccessibilityMedium;
  if (currentLayout != 2)
  {
    v9 = &UIContentSizeCategoryExtraLarge;
  }

  v10 = [traitCollection _maps_traitCollectionWithMaximumContentSizeCategory:*v9];

  v11 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:styleCopy compatibleWithTraitCollection:v10];

  v20 = UIFontDescriptorTraitsAttribute;
  v18 = UIFontWeightTrait;
  v12 = [NSNumber numberWithDouble:weight];
  v19 = v12;
  v13 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v21 = v13;
  v14 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  v15 = [v11 fontDescriptorByAddingAttributes:v14];

  v16 = [UIFont fontWithDescriptor:v15 size:0.0];

  return v16;
}

- (void)updateFont:(id)font
{
  fontCopy = font;
  if (!fontCopy)
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

  titleLabel = [(VLFFailureView *)self titleLabel];
  [titleLabel setFont:fontCopy];
}

- (void)setCurrentLayout:(unint64_t)layout
{
  if (self->_currentLayout != layout)
  {
    self->_currentLayout = layout;
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

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = VLFFailureView;
  [(VLFFailureView *)&v4 traitCollectionDidChange:change];
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

- (VLFFailureView)initWithFrame:(CGRect)frame
{
  v139.receiver = self;
  v139.super_class = VLFFailureView;
  v3 = [(VLFFailureView *)&v139 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_currentLayout = 2;
    v5 = +[UIApplication _maps_keyMapsSceneDelegate];
    platformController = [v5 platformController];
    auxiliaryTasksManager = [platformController auxiliaryTasksManager];
    v8 = [auxiliaryTasksManager auxilaryTaskForClass:objc_opt_class()];

    v137 = v8;
    stateManager = [v8 stateManager];
    stateManager = v4->_stateManager;
    v4->_stateManager = stateManager;

    [(VLFSessionStateManager *)v4->_stateManager addObserver:v4];
    [(VLFFailureView *)v4 _updateBackgroundColor];
    v138 = +[NSMutableArray array];
    v11 = [UIButton buttonWithType:1];
    retryButton = v4->_retryButton;
    v4->_retryButton = v11;

    [(UIButton *)v4->_retryButton setTranslatesAutoresizingMaskIntoConstraints:0];
    layer = [(UIButton *)v4->_retryButton layer];
    [layer setCornerRadius:8.0];

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
    heightAnchor = [(UIButton *)v4->_retryButton heightAnchor];
    v21 = [heightAnchor constraintEqualToConstant:0.0];
    retryButtonHeightConstraint = v4->_retryButtonHeightConstraint;
    v4->_retryButtonHeightConstraint = v21;

    leadingAnchor = [(UIButton *)v4->_retryButton leadingAnchor];
    leadingAnchor2 = [(VLFFailureView *)v4 leadingAnchor];
    v24 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:24.0];
    v153[0] = v24;
    trailingAnchor = [(UIButton *)v4->_retryButton trailingAnchor];
    trailingAnchor2 = [(VLFFailureView *)v4 trailingAnchor];
    v27 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-24.0];
    v153[1] = v27;
    bottomAnchor = [(UIButton *)v4->_retryButton bottomAnchor];
    bottomAnchor2 = [(VLFFailureView *)v4 bottomAnchor];
    v30 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v153[2] = v30;
    v153[3] = v4->_retryButtonHeightConstraint;
    v31 = [NSArray arrayWithObjects:v153 count:4];
    [v138 addObjectsFromArray:v31];

    v32 = [UIButton buttonWithType:1];
    dismissButton = v4->_dismissButton;
    v4->_dismissButton = v32;

    [(UIButton *)v4->_dismissButton setTranslatesAutoresizingMaskIntoConstraints:0];
    layer2 = [(UIButton *)v4->_dismissButton layer];
    [layer2 setCornerRadius:8.0];

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
    heightAnchor2 = [(UIButton *)v4->_dismissButton heightAnchor];
    v42 = [heightAnchor2 constraintEqualToConstant:0.0];
    dismissButtonHeightConstraint = v4->_dismissButtonHeightConstraint;
    v4->_dismissButtonHeightConstraint = v42;

    leadingAnchor3 = [(UIButton *)v4->_dismissButton leadingAnchor];
    leadingAnchor4 = [(UIButton *)v4->_retryButton leadingAnchor];
    v44 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v152[0] = v44;
    trailingAnchor3 = [(UIButton *)v4->_dismissButton trailingAnchor];
    trailingAnchor4 = [(UIButton *)v4->_retryButton trailingAnchor];
    v47 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v152[1] = v47;
    bottomAnchor3 = [(UIButton *)v4->_dismissButton bottomAnchor];
    topAnchor = [(UIButton *)v4->_retryButton topAnchor];
    v50 = [bottomAnchor3 constraintEqualToAnchor:topAnchor];
    v152[2] = v50;
    v152[3] = v4->_dismissButtonHeightConstraint;
    v51 = [NSArray arrayWithObjects:v152 count:4];
    [v138 addObjectsFromArray:v51];

    v52 = objc_opt_new();
    topContentView = v4->_topContentView;
    v4->_topContentView = v52;

    [(UIView *)v4->_topContentView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(VLFFailureView *)v4 addSubview:v4->_topContentView];
    topAnchor2 = [(UIView *)v4->_topContentView topAnchor];
    topAnchor3 = [(VLFFailureView *)v4 topAnchor];
    v56 = [topAnchor2 constraintEqualToAnchor:topAnchor3 constant:14.0];
    topConstraint = v4->_topConstraint;
    v4->_topConstraint = v56;

    bottomAnchor4 = [(UIView *)v4->_topContentView bottomAnchor];
    topAnchor4 = [(UIButton *)v4->_dismissButton topAnchor];
    v60 = [bottomAnchor4 constraintEqualToAnchor:topAnchor4 constant:-20.0];
    buttonPaddingConstraint = v4->_buttonPaddingConstraint;
    v4->_buttonPaddingConstraint = v60;

    leadingAnchor5 = [(UIView *)v4->_topContentView leadingAnchor];
    leadingAnchor6 = [(VLFFailureView *)v4 leadingAnchor];
    v64 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    v151[0] = v64;
    trailingAnchor5 = [(UIView *)v4->_topContentView trailingAnchor];
    trailingAnchor6 = [(VLFFailureView *)v4 trailingAnchor];
    v67 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
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
    leadingAnchor7 = [(UIView *)v4->_textContainerView leadingAnchor];
    leadingAnchor8 = [(UIView *)v4->_topContentView leadingAnchor];
    v130 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8 constant:24.0];
    v150[0] = v130;
    trailingAnchor7 = [(UIView *)v4->_textContainerView trailingAnchor];
    trailingAnchor8 = [(UIView *)v4->_topContentView trailingAnchor];
    v126 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8 constant:-24.0];
    v150[1] = v126;
    topAnchor5 = [(UIView *)v4->_textContainerView topAnchor];
    topAnchor6 = [(UIView *)v4->_topContentView topAnchor];
    v71 = [topAnchor5 constraintGreaterThanOrEqualToAnchor:topAnchor6];
    v150[2] = v71;
    bottomAnchor5 = [(UIView *)v4->_textContainerView bottomAnchor];
    bottomAnchor6 = [(UIView *)v4->_topContentView bottomAnchor];
    v74 = [bottomAnchor5 constraintLessThanOrEqualToAnchor:bottomAnchor6];
    v150[3] = v74;
    centerYAnchor = [(UIView *)v4->_textContainerView centerYAnchor];
    centerYAnchor2 = [(UIView *)v4->_topContentView centerYAnchor];
    v77 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
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
    leadingAnchor9 = [(UILabel *)v4->_titleLabel leadingAnchor];
    leadingAnchor10 = [(UIView *)v4->_textContainerView leadingAnchor];
    v91 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10 constant:4.0];
    titleLabelLeadingConstraint = v4->_titleLabelLeadingConstraint;
    v4->_titleLabelLeadingConstraint = v91;

    trailingAnchor9 = [(UILabel *)v4->_titleLabel trailingAnchor];
    trailingAnchor10 = [(UIView *)v4->_textContainerView trailingAnchor];
    v95 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10 constant:-4.0];
    titleLabelTrailingConstraint = v4->_titleLabelTrailingConstraint;
    v4->_titleLabelTrailingConstraint = v95;

    v149[0] = v4->_titleLabelLeadingConstraint;
    v149[1] = v4->_titleLabelTrailingConstraint;
    topAnchor7 = [(UILabel *)v4->_titleLabel topAnchor];
    topAnchor8 = [(UIView *)v4->_textContainerView topAnchor];
    v99 = [topAnchor7 constraintEqualToAnchor:topAnchor8];
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
    topAnchor9 = [(UILabel *)v4->_descriptionLabel topAnchor];
    bottomAnchor7 = [(UILabel *)v4->_titleLabel bottomAnchor];
    v113 = [topAnchor9 constraintEqualToAnchor:bottomAnchor7 constant:11.0];
    labelPaddingConstraint = v4->_labelPaddingConstraint;
    v4->_labelPaddingConstraint = v113;

    leadingAnchor11 = [(UILabel *)v4->_descriptionLabel leadingAnchor];
    leadingAnchor12 = [(UIView *)v4->_textContainerView leadingAnchor];
    v115 = [leadingAnchor11 constraintEqualToAnchor:leadingAnchor12];
    v140[0] = v115;
    trailingAnchor11 = [(UILabel *)v4->_descriptionLabel trailingAnchor];
    trailingAnchor12 = [(UIView *)v4->_textContainerView trailingAnchor];
    v118 = [trailingAnchor11 constraintEqualToAnchor:trailingAnchor12];
    v140[1] = v118;
    v140[2] = v4->_labelPaddingConstraint;
    bottomAnchor8 = [(UILabel *)v4->_descriptionLabel bottomAnchor];
    bottomAnchor9 = [(UIView *)v4->_textContainerView bottomAnchor];
    v121 = [bottomAnchor8 constraintEqualToAnchor:bottomAnchor9];
    v140[3] = v121;
    v122 = [NSArray arrayWithObjects:v140 count:4];
    [v138 addObjectsFromArray:v122];

    [NSLayoutConstraint activateConstraints:v138];
    [(VLFFailureView *)v4 _updateFonts];
  }

  return v4;
}

@end