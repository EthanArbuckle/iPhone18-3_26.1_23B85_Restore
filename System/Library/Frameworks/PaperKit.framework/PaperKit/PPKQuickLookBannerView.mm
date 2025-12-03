@interface PPKQuickLookBannerView
- (BOOL)_isUsingAccessibilityContentSizeCategory;
- (BOOL)_useCompactLayout;
- (PPKQuickLookBannerView)initWithFrame:(CGRect)frame;
- (id)_compactSizeConstraints;
- (id)_extraCompactSizeConstraints;
- (id)_regularSizeConstraints;
- (int64_t)_numberOfSubtitleLines;
- (int64_t)_numberOfTitleLines;
- (void)_setUseExtraCompactLayout:(BOOL)layout;
- (void)_updateImageViewWithConfiguration:(id)configuration;
- (void)_updateUI;
- (void)clearExistingActions:(id)actions;
- (void)layoutSubviews;
- (void)populateWithConfiguration:(id)configuration;
@end

@implementation PPKQuickLookBannerView

- (PPKQuickLookBannerView)initWithFrame:(CGRect)frame
{
  v65[2] = *MEMORY[0x1E69E9840];
  v63.receiver = self;
  v63.super_class = PPKQuickLookBannerView;
  v3 = [(PPKQuickLookBannerView *)&v63 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PPKQuickLookBannerView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = objc_alloc_init(MEMORY[0x1E69DCC20]);
    contentLayoutGuide = v4->_contentLayoutGuide;
    v4->_contentLayoutGuide = v5;

    [(PPKQuickLookBannerView *)v4 addLayoutGuide:v4->_contentLayoutGuide];
    v7 = objc_alloc_init(MEMORY[0x1E69DD250]);
    backgroundView = v4->_backgroundView;
    v4->_backgroundView = v7;

    [(UIView *)v4->_backgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    imageView = v4->_imageView;
    v4->_imageView = v9;

    v11 = MEMORY[0x1E69DCAD8];
    v12 = *MEMORY[0x1E69DDD80];
    v13 = *MEMORY[0x1E69DB980];
    v14 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD80] weight:*MEMORY[0x1E69DB980]];
    v15 = [v11 configurationWithFont:v14 scale:2];
    [(UIImageView *)v4->_imageView setPreferredSymbolConfiguration:v15];

    [(UIImageView *)v4->_imageView setContentMode:1];
    v16 = v4->_imageView;
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UIImageView *)v16 setTintColor:labelColor];

    [(UIImageView *)v4->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v18) = 1148846080;
    [(UIImageView *)v4->_imageView setContentCompressionResistancePriority:0 forAxis:v18];
    LODWORD(v19) = 1148846080;
    [(UIImageView *)v4->_imageView setContentHuggingPriority:0 forAxis:v19];
    v20 = objc_opt_new();
    title = v4->_title;
    v4->_title = v20;

    [(UILabel *)v4->_title setText:@"Title here"];
    v22 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:v12 weight:v13];
    [(UILabel *)v4->_title setFont:v22];

    [(UILabel *)v4->_title setLineBreakMode:0];
    [(UILabel *)v4->_title setTranslatesAutoresizingMaskIntoConstraints:0];
    v23 = objc_opt_new();
    subtitle = v4->_subtitle;
    v4->_subtitle = v23;

    [(UILabel *)v4->_subtitle setText:@"Secondary title here"];
    v25 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v12];
    [(UILabel *)v4->_subtitle setFont:v25];

    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v4->_subtitle setTextColor:secondaryLabelColor];

    [(UILabel *)v4->_subtitle setLineBreakMode:0];
    [(UILabel *)v4->_subtitle setTranslatesAutoresizingMaskIntoConstraints:0];
    v27 = [MEMORY[0x1E69DC738] buttonWithType:0];
    actionButton = v4->_actionButton;
    v4->_actionButton = v27;

    filledButtonConfiguration = [MEMORY[0x1E69DC740] filledButtonConfiguration];
    [filledButtonConfiguration setCornerStyle:4];
    [filledButtonConfiguration setTitleLineBreakMode:0];
    v30 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"Button"];
    [filledButtonConfiguration setAttributedTitle:v30];

    [filledButtonConfiguration setTitleTextAttributesTransformer:&__block_literal_global_5];
    v62 = filledButtonConfiguration;
    [(UIButton *)v4->_actionButton setConfiguration:filledButtonConfiguration];
    [(UIButton *)v4->_actionButton setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v31) = 1148846080;
    [(UIButton *)v4->_actionButton setContentCompressionResistancePriority:0 forAxis:v31];
    LODWORD(v32) = 1148846080;
    [(UIButton *)v4->_actionButton setContentHuggingPriority:0 forAxis:v32];
    v33 = [MEMORY[0x1E69DC738] buttonWithType:1];
    closeButton = v4->_closeButton;
    v4->_closeButton = v33;

    v35 = MEMORY[0x1E69DCAD8];
    v36 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD28] weight:v13];
    v37 = [v35 configurationWithFont:v36 scale:3];

    v38 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark" withConfiguration:v37];
    [(UIButton *)v4->_closeButton setImage:v38 forState:0];
    tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    [(UIButton *)v4->_closeButton setTintColor:tertiaryLabelColor];

    [(UIButton *)v4->_closeButton setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v40) = 1148846080;
    [(UIButton *)v4->_closeButton setContentCompressionResistancePriority:0 forAxis:v40];
    LODWORD(v41) = 1148846080;
    [(UIButton *)v4->_closeButton setContentHuggingPriority:0 forAxis:v41];
    v42 = objc_alloc(MEMORY[0x1E69DCF90]);
    v65[0] = v4->_title;
    v65[1] = v4->_subtitle;
    v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:2];
    v44 = [v42 initWithArrangedSubviews:v43];
    titleStackView = v4->_titleStackView;
    v4->_titleStackView = v44;

    [(UIStackView *)v4->_titleStackView setSpacing:4.0];
    [(UIStackView *)v4->_titleStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PPKQuickLookBannerView *)v4 addSubview:v4->_backgroundView];
    [(PPKQuickLookBannerView *)v4 addSubview:v4->_imageView];
    [(PPKQuickLookBannerView *)v4 addSubview:v4->_titleStackView];
    [(PPKQuickLookBannerView *)v4 addSubview:v4->_actionButton];
    [(PPKQuickLookBannerView *)v4 addSubview:v4->_closeButton];
    if (_UISolariumEnabled())
    {
      [(UIView *)v4->_backgroundView ppkSetGlassBackground];
      [(UIView *)v4->_backgroundView ppkSetFixedCornerMaskingConfigurationWithRadius:16.0];
    }

    else
    {
      v46 = *MEMORY[0x1E69796E8];
      layer = [(UIView *)v4->_backgroundView layer];
      [layer setCornerCurve:v46];

      blackColor = [MEMORY[0x1E69DC888] blackColor];
      cGColor = [blackColor CGColor];
      layer2 = [(UIView *)v4->_backgroundView layer];
      [layer2 setShadowColor:cGColor];

      layer3 = [(UIView *)v4->_backgroundView layer];
      LODWORD(v52) = 0.25;
      [layer3 setShadowOpacity:v52];

      v53 = *MEMORY[0x1E695F060];
      v54 = *(MEMORY[0x1E695F060] + 8);
      layer4 = [(UIView *)v4->_backgroundView layer];
      [layer4 setShadowOffset:{v53, v54}];

      layer5 = [(UIView *)v4->_backgroundView layer];
      [layer5 setShadowRadius:5.0];
    }

    [(PPKQuickLookBannerView *)v4 _updateUI];
    v57 = objc_opt_self();
    v64[0] = v57;
    v58 = objc_opt_self();
    v64[1] = v58;
    v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:2];
    v60 = [(PPKQuickLookBannerView *)v4 registerForTraitChanges:v59 withAction:sel__updateUI];
  }

  return v4;
}

id __40__PPKQuickLookBannerView_initWithFrame___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 mutableCopy];
  v3 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD28] weight:*MEMORY[0x1E69DB980]];
  [v2 setValue:v3 forKey:*MEMORY[0x1E69DB648]];

  v4 = [v2 copy];

  return v4;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = PPKQuickLookBannerView;
  [(PPKQuickLookBannerView *)&v5 layoutSubviews];
  [(PPKQuickLookBannerView *)self bounds];
  v4 = v3 <= 375.0 || [(PPKQuickLookBannerView *)self _isUsingAccessibilityContentSizeCategory];
  [(PPKQuickLookBannerView *)self _setUseExtraCompactLayout:v4];
}

- (void)_setUseExtraCompactLayout:(BOOL)layout
{
  if (self->_useExtraCompactLayout != layout)
  {
    self->_useExtraCompactLayout = layout;
    [(PPKQuickLookBannerView *)self _updateUI];
  }
}

- (void)_updateUI
{
  if ((_UISolariumEnabled() & 1) == 0)
  {
    quaternaryLabelColor = 0x1E69DC000;
    if ([(PPKQuickLookBannerView *)self _useCompactLayout])
    {
      [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] systemBackgroundColor];
    }
    v4 = ;
    [(UIView *)self->_backgroundView setBackgroundColor:v4];

    if ([(PPKQuickLookBannerView *)self _useCompactLayout])
    {
      v5 = 0.0;
    }

    else
    {
      v5 = 8.0;
    }

    layer = [(UIView *)self->_backgroundView layer];
    [layer setCornerRadius:v5];

    _useCompactLayout = [(PPKQuickLookBannerView *)self _useCompactLayout];
    if (_useCompactLayout)
    {
      cGColor = 0;
    }

    else
    {
      quaternaryLabelColor = [MEMORY[0x1E69DC888] quaternaryLabelColor];
      cGColor = [quaternaryLabelColor CGColor];
    }

    layer2 = [(UIView *)self->_backgroundView layer];
    [layer2 setBorderColor:cGColor];

    if (!_useCompactLayout)
    {
    }

    if ([(PPKQuickLookBannerView *)self _useCompactLayout])
    {
      v10 = 0.0;
    }

    else
    {
      v10 = 0.5;
    }

    layer3 = [(UIView *)self->_backgroundView layer];
    [layer3 setBorderWidth:v10];
  }

  _numberOfTitleLines = [(PPKQuickLookBannerView *)self _numberOfTitleLines];
  title = [(PPKQuickLookBannerView *)self title];
  [title setNumberOfLines:_numberOfTitleLines];

  _numberOfSubtitleLines = [(PPKQuickLookBannerView *)self _numberOfSubtitleLines];
  subtitle = [(PPKQuickLookBannerView *)self subtitle];
  [subtitle setNumberOfLines:_numberOfSubtitleLines];

  [(UIStackView *)self->_titleStackView setAxis:[(PPKQuickLookBannerView *)self _useCompactLayout]];
  if (self->_extraCompactSizeConstraints)
  {
    [MEMORY[0x1E696ACD8] deactivateConstraints:?];
    extraCompactSizeConstraints = self->_extraCompactSizeConstraints;
    self->_extraCompactSizeConstraints = 0;
  }

  if (self->_compactSizeConstraints)
  {
    [MEMORY[0x1E696ACD8] deactivateConstraints:?];
    compactSizeConstraints = self->_compactSizeConstraints;
    self->_compactSizeConstraints = 0;
  }

  if (self->_regularSizeConstraints)
  {
    [MEMORY[0x1E696ACD8] deactivateConstraints:?];
    regularSizeConstraints = self->_regularSizeConstraints;
    self->_regularSizeConstraints = 0;
  }

  imageViewCollapsingConstraint = self->_imageViewCollapsingConstraint;
  if (imageViewCollapsingConstraint)
  {
    [(NSLayoutConstraint *)imageViewCollapsingConstraint setActive:0];
    v20 = self->_imageViewCollapsingConstraint;
    self->_imageViewCollapsingConstraint = 0;
  }

  titleStackLeadingConstraint = self->_titleStackLeadingConstraint;
  self->_titleStackLeadingConstraint = 0;

  if ([(PPKQuickLookBannerView *)self _isUsingAccessibilityContentSizeCategory])
  {
    v22 = MEMORY[0x1E696ACD8];
    _extraCompactSizeConstraints = [(PPKQuickLookBannerView *)self _extraCompactSizeConstraints];
  }

  else
  {
    if ([(PPKQuickLookBannerView *)self _useCompactLayout])
    {
      if (self->_useExtraCompactLayout)
      {
        [(PPKQuickLookBannerView *)self _extraCompactSizeConstraints];
      }

      else
      {
        [(PPKQuickLookBannerView *)self _compactSizeConstraints];
      }
      v24 = ;
      v25 = MEMORY[0x1E696ACD8];
      goto LABEL_34;
    }

    v22 = MEMORY[0x1E696ACD8];
    _extraCompactSizeConstraints = [(PPKQuickLookBannerView *)self _regularSizeConstraints];
  }

  v24 = _extraCompactSizeConstraints;
  v25 = v22;
LABEL_34:
  [v25 activateConstraints:v24];

  imageView = [(PPKQuickLookBannerView *)self imageView];
  widthAnchor = [imageView widthAnchor];
  v27 = [widthAnchor constraintEqualToConstant:0.0];
  v28 = self->_imageViewCollapsingConstraint;
  self->_imageViewCollapsingConstraint = v27;
}

- (id)_compactSizeConstraints
{
  v75[19] = *MEMORY[0x1E69E9840];
  compactSizeConstraints = self->_compactSizeConstraints;
  if (!compactSizeConstraints)
  {
    leadingAnchor = [(UIStackView *)self->_titleStackView leadingAnchor];
    imageView = [(PPKQuickLookBannerView *)self imageView];
    trailingAnchor = [imageView trailingAnchor];
    v7 = [leadingAnchor constraintEqualToAnchor:trailingAnchor constant:4.0];
    titleStackLeadingConstraint = self->_titleStackLeadingConstraint;
    self->_titleStackLeadingConstraint = v7;

    topAnchor = [(UIView *)self->_backgroundView topAnchor];
    topAnchor2 = [(PPKQuickLookBannerView *)self topAnchor];
    v72 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v75[0] = v72;
    leadingAnchor2 = [(UIView *)self->_backgroundView leadingAnchor];
    leadingAnchor3 = [(PPKQuickLookBannerView *)self leadingAnchor];
    v69 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor3];
    v75[1] = v69;
    trailingAnchor2 = [(UIView *)self->_backgroundView trailingAnchor];
    trailingAnchor3 = [(PPKQuickLookBannerView *)self trailingAnchor];
    v66 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
    v75[2] = v66;
    bottomAnchor = [(UIView *)self->_backgroundView bottomAnchor];
    bottomAnchor2 = [(PPKQuickLookBannerView *)self bottomAnchor];
    v63 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v75[3] = v63;
    topAnchor3 = [(UILayoutGuide *)self->_contentLayoutGuide topAnchor];
    topAnchor4 = [(PPKQuickLookBannerView *)self topAnchor];
    v60 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:16.0];
    v75[4] = v60;
    leadingAnchor4 = [(UILayoutGuide *)self->_contentLayoutGuide leadingAnchor];
    leadingAnchor5 = [(PPKQuickLookBannerView *)self leadingAnchor];
    v57 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5 constant:12.0];
    v75[5] = v57;
    trailingAnchor4 = [(UILayoutGuide *)self->_contentLayoutGuide trailingAnchor];
    trailingAnchor5 = [(PPKQuickLookBannerView *)self trailingAnchor];
    v54 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5 constant:-20.0];
    v75[6] = v54;
    bottomAnchor3 = [(UILayoutGuide *)self->_contentLayoutGuide bottomAnchor];
    bottomAnchor4 = [(PPKQuickLookBannerView *)self bottomAnchor];
    v51 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-16.0];
    v75[7] = v51;
    imageView2 = [(PPKQuickLookBannerView *)self imageView];
    centerYAnchor = [imageView2 centerYAnchor];
    centerYAnchor2 = [(UILayoutGuide *)self->_contentLayoutGuide centerYAnchor];
    v47 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v75[8] = v47;
    imageView3 = [(PPKQuickLookBannerView *)self imageView];
    leadingAnchor6 = [imageView3 leadingAnchor];
    leadingAnchor7 = [(UILayoutGuide *)self->_contentLayoutGuide leadingAnchor];
    v43 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7];
    v75[9] = v43;
    topAnchor5 = [(UIStackView *)self->_titleStackView topAnchor];
    topAnchor6 = [(UILayoutGuide *)self->_contentLayoutGuide topAnchor];
    v40 = [topAnchor5 constraintGreaterThanOrEqualToAnchor:topAnchor6];
    v75[10] = v40;
    bottomAnchor5 = [(UIStackView *)self->_titleStackView bottomAnchor];
    bottomAnchor6 = [(UILayoutGuide *)self->_contentLayoutGuide bottomAnchor];
    v37 = [bottomAnchor5 constraintLessThanOrEqualToAnchor:bottomAnchor6];
    v75[11] = v37;
    centerYAnchor3 = [(UIStackView *)self->_titleStackView centerYAnchor];
    centerYAnchor4 = [(UILayoutGuide *)self->_contentLayoutGuide centerYAnchor];
    v34 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v75[12] = v34;
    trailingAnchor6 = [(UIStackView *)self->_titleStackView trailingAnchor];
    actionButton = [(PPKQuickLookBannerView *)self actionButton];
    leadingAnchor8 = [actionButton leadingAnchor];
    v30 = [trailingAnchor6 constraintLessThanOrEqualToAnchor:leadingAnchor8 constant:-4.0];
    v9 = self->_titleStackLeadingConstraint;
    v75[13] = v30;
    v75[14] = v9;
    actionButton2 = [(PPKQuickLookBannerView *)self actionButton];
    trailingAnchor7 = [actionButton2 trailingAnchor];
    closeButton = [(PPKQuickLookBannerView *)self closeButton];
    leadingAnchor9 = [closeButton leadingAnchor];
    v25 = [trailingAnchor7 constraintEqualToAnchor:leadingAnchor9 constant:-16.0];
    v75[15] = v25;
    actionButton3 = [(PPKQuickLookBannerView *)self actionButton];
    centerYAnchor5 = [actionButton3 centerYAnchor];
    centerYAnchor6 = [(UILayoutGuide *)self->_contentLayoutGuide centerYAnchor];
    v10 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
    v75[16] = v10;
    closeButton2 = [(PPKQuickLookBannerView *)self closeButton];
    centerYAnchor7 = [closeButton2 centerYAnchor];
    centerYAnchor8 = [(UILayoutGuide *)self->_contentLayoutGuide centerYAnchor];
    v14 = [centerYAnchor7 constraintEqualToAnchor:centerYAnchor8];
    v75[17] = v14;
    closeButton3 = [(PPKQuickLookBannerView *)self closeButton];
    trailingAnchor8 = [closeButton3 trailingAnchor];
    trailingAnchor9 = [(UILayoutGuide *)self->_contentLayoutGuide trailingAnchor];
    v18 = [trailingAnchor8 constraintEqualToAnchor:trailingAnchor9];
    v75[18] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v75 count:19];
    v20 = self->_compactSizeConstraints;
    self->_compactSizeConstraints = v19;

    compactSizeConstraints = self->_compactSizeConstraints;
  }

  return compactSizeConstraints;
}

- (id)_extraCompactSizeConstraints
{
  v81[20] = *MEMORY[0x1E69E9840];
  extraCompactSizeConstraints = self->_extraCompactSizeConstraints;
  if (!extraCompactSizeConstraints)
  {
    leadingAnchor = [(UIStackView *)self->_titleStackView leadingAnchor];
    imageView = [(PPKQuickLookBannerView *)self imageView];
    trailingAnchor = [imageView trailingAnchor];
    v7 = [leadingAnchor constraintEqualToAnchor:trailingAnchor constant:4.0];
    titleStackLeadingConstraint = self->_titleStackLeadingConstraint;
    self->_titleStackLeadingConstraint = v7;

    leadingAnchor2 = [(UIStackView *)self->_titleStackView leadingAnchor];
    leadingAnchor3 = [(UILayoutGuide *)self->_contentLayoutGuide leadingAnchor];
    v11 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor3];

    LODWORD(v12) = 1148829696;
    v57 = v11;
    [v11 setPriority:v12];
    topAnchor = [(UIView *)self->_backgroundView topAnchor];
    topAnchor2 = [(PPKQuickLookBannerView *)self topAnchor];
    v78 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v81[0] = v78;
    leadingAnchor4 = [(UIView *)self->_backgroundView leadingAnchor];
    leadingAnchor5 = [(PPKQuickLookBannerView *)self leadingAnchor];
    v75 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
    v81[1] = v75;
    trailingAnchor2 = [(UIView *)self->_backgroundView trailingAnchor];
    trailingAnchor3 = [(PPKQuickLookBannerView *)self trailingAnchor];
    v72 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
    v81[2] = v72;
    bottomAnchor = [(UIView *)self->_backgroundView bottomAnchor];
    bottomAnchor2 = [(PPKQuickLookBannerView *)self bottomAnchor];
    v69 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v81[3] = v69;
    topAnchor3 = [(UILayoutGuide *)self->_contentLayoutGuide topAnchor];
    topAnchor4 = [(PPKQuickLookBannerView *)self topAnchor];
    v66 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:16.0];
    v81[4] = v66;
    leadingAnchor6 = [(UILayoutGuide *)self->_contentLayoutGuide leadingAnchor];
    leadingAnchor7 = [(PPKQuickLookBannerView *)self leadingAnchor];
    v63 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7 constant:12.0];
    v81[5] = v63;
    trailingAnchor4 = [(UILayoutGuide *)self->_contentLayoutGuide trailingAnchor];
    trailingAnchor5 = [(PPKQuickLookBannerView *)self trailingAnchor];
    v60 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5 constant:-20.0];
    v81[6] = v60;
    bottomAnchor3 = [(UILayoutGuide *)self->_contentLayoutGuide bottomAnchor];
    bottomAnchor4 = [(PPKQuickLookBannerView *)self bottomAnchor];
    v56 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-16.0];
    v81[7] = v56;
    imageView2 = [(PPKQuickLookBannerView *)self imageView];
    topAnchor5 = [imageView2 topAnchor];
    topAnchor6 = [(UILayoutGuide *)self->_contentLayoutGuide topAnchor];
    v52 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
    v81[8] = v52;
    imageView3 = [(PPKQuickLookBannerView *)self imageView];
    leadingAnchor8 = [imageView3 leadingAnchor];
    leadingAnchor9 = [(UILayoutGuide *)self->_contentLayoutGuide leadingAnchor];
    v48 = [leadingAnchor8 constraintEqualToAnchor:leadingAnchor9];
    v81[9] = v48;
    topAnchor7 = [(UIStackView *)self->_titleStackView topAnchor];
    topAnchor8 = [(UILayoutGuide *)self->_contentLayoutGuide topAnchor];
    v45 = [topAnchor7 constraintEqualToAnchor:topAnchor8];
    v81[10] = v45;
    trailingAnchor6 = [(UIStackView *)self->_titleStackView trailingAnchor];
    closeButton = [(PPKQuickLookBannerView *)self closeButton];
    leadingAnchor10 = [closeButton leadingAnchor];
    v41 = [trailingAnchor6 constraintEqualToAnchor:leadingAnchor10 constant:-4.0];
    v13 = self->_titleStackLeadingConstraint;
    v81[11] = v41;
    v81[12] = v13;
    v81[13] = v11;
    closeButton2 = [(PPKQuickLookBannerView *)self closeButton];
    topAnchor9 = [closeButton2 topAnchor];
    topAnchor10 = [(UILayoutGuide *)self->_contentLayoutGuide topAnchor];
    v37 = [topAnchor9 constraintEqualToAnchor:topAnchor10];
    v81[14] = v37;
    closeButton3 = [(PPKQuickLookBannerView *)self closeButton];
    trailingAnchor7 = [closeButton3 trailingAnchor];
    trailingAnchor8 = [(UILayoutGuide *)self->_contentLayoutGuide trailingAnchor];
    v33 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
    v81[15] = v33;
    actionButton = [(PPKQuickLookBannerView *)self actionButton];
    topAnchor11 = [actionButton topAnchor];
    bottomAnchor5 = [(UIStackView *)self->_titleStackView bottomAnchor];
    v29 = [topAnchor11 constraintEqualToAnchor:bottomAnchor5 constant:10.0];
    v81[16] = v29;
    actionButton2 = [(PPKQuickLookBannerView *)self actionButton];
    leadingAnchor11 = [actionButton2 leadingAnchor];
    leadingAnchor12 = [(UIStackView *)self->_titleStackView leadingAnchor];
    v14 = [leadingAnchor11 constraintEqualToAnchor:leadingAnchor12];
    v81[17] = v14;
    actionButton3 = [(PPKQuickLookBannerView *)self actionButton];
    trailingAnchor9 = [actionButton3 trailingAnchor];
    trailingAnchor10 = [(UILayoutGuide *)self->_contentLayoutGuide trailingAnchor];
    v18 = [trailingAnchor9 constraintLessThanOrEqualToAnchor:trailingAnchor10];
    v81[18] = v18;
    actionButton4 = [(PPKQuickLookBannerView *)self actionButton];
    bottomAnchor6 = [actionButton4 bottomAnchor];
    bottomAnchor7 = [(UILayoutGuide *)self->_contentLayoutGuide bottomAnchor];
    v22 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7];
    v81[19] = v22;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v81 count:20];
    v24 = self->_extraCompactSizeConstraints;
    self->_extraCompactSizeConstraints = v23;

    extraCompactSizeConstraints = self->_extraCompactSizeConstraints;
  }

  return extraCompactSizeConstraints;
}

- (id)_regularSizeConstraints
{
  v104[25] = *MEMORY[0x1E69E9840];
  regularSizeConstraints = self->_regularSizeConstraints;
  if (!regularSizeConstraints)
  {
    if (_UISolariumEnabled())
    {
      v4 = 12.0;
    }

    else
    {
      v4 = 16.0;
    }

    v5 = _UISolariumEnabled();
    leadingAnchor = [(UIStackView *)self->_titleStackView leadingAnchor];
    imageView = [(PPKQuickLookBannerView *)self imageView];
    trailingAnchor = [imageView trailingAnchor];
    v9 = [leadingAnchor constraintEqualToAnchor:trailingAnchor constant:4.0];
    titleStackLeadingConstraint = self->_titleStackLeadingConstraint;
    self->_titleStackLeadingConstraint = v9;

    topAnchor = [(UIView *)self->_backgroundView topAnchor];
    topAnchor2 = [(UILayoutGuide *)self->_contentLayoutGuide topAnchor];
    v101 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v104[0] = v101;
    leadingAnchor2 = [(UIView *)self->_backgroundView leadingAnchor];
    leadingAnchor3 = [(UILayoutGuide *)self->_contentLayoutGuide leadingAnchor];
    v98 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor3];
    v104[1] = v98;
    trailingAnchor2 = [(UIView *)self->_backgroundView trailingAnchor];
    trailingAnchor3 = [(UILayoutGuide *)self->_contentLayoutGuide trailingAnchor];
    v95 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
    v104[2] = v95;
    bottomAnchor = [(UIView *)self->_backgroundView bottomAnchor];
    bottomAnchor2 = [(UILayoutGuide *)self->_contentLayoutGuide bottomAnchor];
    v92 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v104[3] = v92;
    topAnchor3 = [(UILayoutGuide *)self->_contentLayoutGuide topAnchor];
    topAnchor4 = [(PPKQuickLookBannerView *)self topAnchor];
    v89 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:16.0];
    v104[4] = v89;
    leadingAnchor4 = [(UILayoutGuide *)self->_contentLayoutGuide leadingAnchor];
    leadingAnchor5 = [(PPKQuickLookBannerView *)self leadingAnchor];
    v86 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5 constant:v4];
    v104[5] = v86;
    trailingAnchor4 = [(UILayoutGuide *)self->_contentLayoutGuide trailingAnchor];
    v85 = trailingAnchor4;
    trailingAnchor5 = [(PPKQuickLookBannerView *)self trailingAnchor];
    v84 = trailingAnchor5;
    v13 = -16.0;
    if (v5)
    {
      v13 = -12.0;
    }

    v83 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5 constant:v13];
    v104[6] = v83;
    bottomAnchor3 = [(UILayoutGuide *)self->_contentLayoutGuide bottomAnchor];
    bottomAnchor4 = [(PPKQuickLookBannerView *)self bottomAnchor];
    v80 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-16.0];
    v104[7] = v80;
    imageView2 = [(PPKQuickLookBannerView *)self imageView];
    leadingAnchor6 = [imageView2 leadingAnchor];
    leadingAnchor7 = [(UILayoutGuide *)self->_contentLayoutGuide leadingAnchor];
    v76 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7 constant:14.0];
    v104[8] = v76;
    imageView3 = [(PPKQuickLookBannerView *)self imageView];
    centerYAnchor = [imageView3 centerYAnchor];
    centerYAnchor2 = [(UILayoutGuide *)self->_contentLayoutGuide centerYAnchor];
    v72 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v104[9] = v72;
    imageView4 = [(PPKQuickLookBannerView *)self imageView];
    topAnchor5 = [imageView4 topAnchor];
    topAnchor6 = [(UILayoutGuide *)self->_contentLayoutGuide topAnchor];
    v68 = [topAnchor5 constraintGreaterThanOrEqualToAnchor:topAnchor6];
    v104[10] = v68;
    imageView5 = [(PPKQuickLookBannerView *)self imageView];
    bottomAnchor5 = [imageView5 bottomAnchor];
    bottomAnchor6 = [(UILayoutGuide *)self->_contentLayoutGuide bottomAnchor];
    v64 = [bottomAnchor5 constraintLessThanOrEqualToAnchor:bottomAnchor6];
    v104[11] = v64;
    centerYAnchor3 = [(UIStackView *)self->_titleStackView centerYAnchor];
    centerYAnchor4 = [(UILayoutGuide *)self->_contentLayoutGuide centerYAnchor];
    v61 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v104[12] = v61;
    trailingAnchor6 = [(UIStackView *)self->_titleStackView trailingAnchor];
    actionButton = [(PPKQuickLookBannerView *)self actionButton];
    leadingAnchor8 = [actionButton leadingAnchor];
    v57 = [trailingAnchor6 constraintLessThanOrEqualToAnchor:leadingAnchor8 constant:-8.0];
    v104[13] = v57;
    topAnchor7 = [(UIStackView *)self->_titleStackView topAnchor];
    topAnchor8 = [(UILayoutGuide *)self->_contentLayoutGuide topAnchor];
    v54 = [topAnchor7 constraintGreaterThanOrEqualToAnchor:topAnchor8 constant:8.0];
    v104[14] = v54;
    bottomAnchor7 = [(UIStackView *)self->_titleStackView bottomAnchor];
    bottomAnchor8 = [(UILayoutGuide *)self->_contentLayoutGuide bottomAnchor];
    v51 = [bottomAnchor7 constraintLessThanOrEqualToAnchor:bottomAnchor8 constant:-8.0];
    v14 = self->_titleStackLeadingConstraint;
    v104[15] = v51;
    v104[16] = v14;
    actionButton2 = [(PPKQuickLookBannerView *)self actionButton];
    topAnchor9 = [actionButton2 topAnchor];
    topAnchor10 = [(UILayoutGuide *)self->_contentLayoutGuide topAnchor];
    v47 = [topAnchor9 constraintGreaterThanOrEqualToAnchor:topAnchor10 constant:8.0];
    v104[17] = v47;
    actionButton3 = [(PPKQuickLookBannerView *)self actionButton];
    bottomAnchor9 = [actionButton3 bottomAnchor];
    bottomAnchor10 = [(UILayoutGuide *)self->_contentLayoutGuide bottomAnchor];
    v43 = [bottomAnchor9 constraintLessThanOrEqualToAnchor:bottomAnchor10 constant:-8.0];
    v104[18] = v43;
    actionButton4 = [(PPKQuickLookBannerView *)self actionButton];
    trailingAnchor7 = [actionButton4 trailingAnchor];
    closeButton = [(PPKQuickLookBannerView *)self closeButton];
    leadingAnchor9 = [closeButton leadingAnchor];
    v38 = [trailingAnchor7 constraintEqualToAnchor:leadingAnchor9 constant:-14.0];
    v104[19] = v38;
    actionButton5 = [(PPKQuickLookBannerView *)self actionButton];
    centerYAnchor5 = [actionButton5 centerYAnchor];
    centerYAnchor6 = [(UILayoutGuide *)self->_contentLayoutGuide centerYAnchor];
    v34 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
    v104[20] = v34;
    closeButton2 = [(PPKQuickLookBannerView *)self closeButton];
    trailingAnchor8 = [closeButton2 trailingAnchor];
    trailingAnchor9 = [(UILayoutGuide *)self->_contentLayoutGuide trailingAnchor];
    v30 = [trailingAnchor8 constraintEqualToAnchor:trailingAnchor9 constant:-14.0];
    v104[21] = v30;
    closeButton3 = [(PPKQuickLookBannerView *)self closeButton];
    centerYAnchor7 = [closeButton3 centerYAnchor];
    centerYAnchor8 = [(UILayoutGuide *)self->_contentLayoutGuide centerYAnchor];
    v15 = [centerYAnchor7 constraintEqualToAnchor:centerYAnchor8];
    v104[22] = v15;
    closeButton4 = [(PPKQuickLookBannerView *)self closeButton];
    topAnchor11 = [closeButton4 topAnchor];
    topAnchor12 = [(UILayoutGuide *)self->_contentLayoutGuide topAnchor];
    v19 = [topAnchor11 constraintGreaterThanOrEqualToAnchor:topAnchor12];
    v104[23] = v19;
    closeButton5 = [(PPKQuickLookBannerView *)self closeButton];
    bottomAnchor11 = [closeButton5 bottomAnchor];
    bottomAnchor12 = [(UILayoutGuide *)self->_contentLayoutGuide bottomAnchor];
    v23 = [bottomAnchor11 constraintLessThanOrEqualToAnchor:bottomAnchor12];
    v104[24] = v23;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v104 count:25];
    v25 = self->_regularSizeConstraints;
    self->_regularSizeConstraints = v24;

    regularSizeConstraints = self->_regularSizeConstraints;
  }

  return regularSizeConstraints;
}

- (void)populateWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  [(PPKQuickLookBannerView *)self _updateImageViewWithConfiguration:configurationCopy];
  title = [configurationCopy title];
  title2 = [(PPKQuickLookBannerView *)self title];
  [title2 setText:title];

  subtitle = [configurationCopy subtitle];
  subtitle2 = [(PPKQuickLookBannerView *)self subtitle];
  [subtitle2 setText:subtitle];

  subtitle3 = [configurationCopy subtitle];
  v9 = [subtitle3 length] == 0;
  subtitle4 = [(PPKQuickLookBannerView *)self subtitle];
  [subtitle4 setHidden:v9];

  actionButton = [(PPKQuickLookBannerView *)self actionButton];
  [(PPKQuickLookBannerView *)self clearExistingActions:actionButton];

  closeButton = [(PPKQuickLookBannerView *)self closeButton];
  [(PPKQuickLookBannerView *)self clearExistingActions:closeButton];

  primaryAction = [configurationCopy primaryAction];

  if (primaryAction)
  {
    actionButton2 = [(PPKQuickLookBannerView *)self actionButton];
    primaryAction2 = [configurationCopy primaryAction];
    [actionButton2 addAction:primaryAction2 forControlEvents:64];

    actionButton3 = [(PPKQuickLookBannerView *)self actionButton];
    configuration = [actionButton3 configuration];
    v18 = [configuration copy];

    primaryAction3 = [configurationCopy primaryAction];
    title3 = [primaryAction3 title];
    [v18 setTitle:title3];

    actionButton4 = [(PPKQuickLookBannerView *)self actionButton];
    [actionButton4 setConfiguration:v18];
  }

  dismissAction = [configurationCopy dismissAction];

  if (dismissAction)
  {
    closeButton2 = [(PPKQuickLookBannerView *)self closeButton];
    dismissAction2 = [configurationCopy dismissAction];
    [closeButton2 addAction:dismissAction2 forControlEvents:64];
  }
}

- (void)_updateImageViewWithConfiguration:(id)configuration
{
  image = [configuration image];
  imageView = [(PPKQuickLookBannerView *)self imageView];
  [imageView setImage:image];
  if (image)
  {
    v5 = 4.0;
  }

  else
  {
    v5 = 0.0;
  }

  [(NSLayoutConstraint *)self->_imageViewCollapsingConstraint setActive:image == 0];
  [(NSLayoutConstraint *)self->_titleStackLeadingConstraint setConstant:v5];
  [imageView setHidden:image == 0];
}

- (void)clearExistingActions:(id)actions
{
  actionsCopy = actions;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__PPKQuickLookBannerView_clearExistingActions___block_invoke;
  v5[3] = &unk_1E845C5A0;
  v6 = actionsCopy;
  v4 = actionsCopy;
  [v4 enumerateEventHandlers:v5];
}

uint64_t __47__PPKQuickLookBannerView_clearExistingActions___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    return [*(result + 32) removeAction:a2 forControlEvents:a5];
  }

  return result;
}

- (BOOL)_useCompactLayout
{
  traitCollection = [(PPKQuickLookBannerView *)self traitCollection];
  if ([traitCollection horizontalSizeClass] == 1)
  {
    v3 = 1;
  }

  else
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    v3 = [currentDevice userInterfaceIdiom] == 0;
  }

  return v3;
}

- (BOOL)_isUsingAccessibilityContentSizeCategory
{
  traitCollection = [(PPKQuickLookBannerView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  return IsAccessibilityCategory;
}

- (int64_t)_numberOfTitleLines
{
  if ([(PPKQuickLookBannerView *)self _isUsingAccessibilityContentSizeCategory])
  {
    return 0;
  }

  if ([(PPKQuickLookBannerView *)self _useCompactLayout])
  {
    return 6;
  }

  return 0;
}

- (int64_t)_numberOfSubtitleLines
{
  if ([(PPKQuickLookBannerView *)self _isUsingAccessibilityContentSizeCategory])
  {
    return 0;
  }

  if ([(PPKQuickLookBannerView *)self _useCompactLayout])
  {
    return 4;
  }

  return 0;
}

@end