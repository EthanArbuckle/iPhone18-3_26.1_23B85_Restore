@interface PPKQuickLookBannerView
- (BOOL)_isUsingAccessibilityContentSizeCategory;
- (BOOL)_useCompactLayout;
- (PPKQuickLookBannerView)initWithFrame:(CGRect)a3;
- (id)_compactSizeConstraints;
- (id)_extraCompactSizeConstraints;
- (id)_regularSizeConstraints;
- (int64_t)_numberOfSubtitleLines;
- (int64_t)_numberOfTitleLines;
- (void)_setUseExtraCompactLayout:(BOOL)a3;
- (void)_updateImageViewWithConfiguration:(id)a3;
- (void)_updateUI;
- (void)clearExistingActions:(id)a3;
- (void)layoutSubviews;
- (void)populateWithConfiguration:(id)a3;
@end

@implementation PPKQuickLookBannerView

- (PPKQuickLookBannerView)initWithFrame:(CGRect)a3
{
  v65[2] = *MEMORY[0x1E69E9840];
  v63.receiver = self;
  v63.super_class = PPKQuickLookBannerView;
  v3 = [(PPKQuickLookBannerView *)&v63 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v17 = [MEMORY[0x1E69DC888] labelColor];
    [(UIImageView *)v16 setTintColor:v17];

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

    v26 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v4->_subtitle setTextColor:v26];

    [(UILabel *)v4->_subtitle setLineBreakMode:0];
    [(UILabel *)v4->_subtitle setTranslatesAutoresizingMaskIntoConstraints:0];
    v27 = [MEMORY[0x1E69DC738] buttonWithType:0];
    actionButton = v4->_actionButton;
    v4->_actionButton = v27;

    v29 = [MEMORY[0x1E69DC740] filledButtonConfiguration];
    [v29 setCornerStyle:4];
    [v29 setTitleLineBreakMode:0];
    v30 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"Button"];
    [v29 setAttributedTitle:v30];

    [v29 setTitleTextAttributesTransformer:&__block_literal_global_5];
    v62 = v29;
    [(UIButton *)v4->_actionButton setConfiguration:v29];
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
    v39 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    [(UIButton *)v4->_closeButton setTintColor:v39];

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
      v47 = [(UIView *)v4->_backgroundView layer];
      [v47 setCornerCurve:v46];

      v48 = [MEMORY[0x1E69DC888] blackColor];
      v49 = [v48 CGColor];
      v50 = [(UIView *)v4->_backgroundView layer];
      [v50 setShadowColor:v49];

      v51 = [(UIView *)v4->_backgroundView layer];
      LODWORD(v52) = 0.25;
      [v51 setShadowOpacity:v52];

      v53 = *MEMORY[0x1E695F060];
      v54 = *(MEMORY[0x1E695F060] + 8);
      v55 = [(UIView *)v4->_backgroundView layer];
      [v55 setShadowOffset:{v53, v54}];

      v56 = [(UIView *)v4->_backgroundView layer];
      [v56 setShadowRadius:5.0];
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

- (void)_setUseExtraCompactLayout:(BOOL)a3
{
  if (self->_useExtraCompactLayout != a3)
  {
    self->_useExtraCompactLayout = a3;
    [(PPKQuickLookBannerView *)self _updateUI];
  }
}

- (void)_updateUI
{
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v3 = 0x1E69DC000;
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

    v6 = [(UIView *)self->_backgroundView layer];
    [v6 setCornerRadius:v5];

    v7 = [(PPKQuickLookBannerView *)self _useCompactLayout];
    if (v7)
    {
      v8 = 0;
    }

    else
    {
      v3 = [MEMORY[0x1E69DC888] quaternaryLabelColor];
      v8 = [v3 CGColor];
    }

    v9 = [(UIView *)self->_backgroundView layer];
    [v9 setBorderColor:v8];

    if (!v7)
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

    v11 = [(UIView *)self->_backgroundView layer];
    [v11 setBorderWidth:v10];
  }

  v12 = [(PPKQuickLookBannerView *)self _numberOfTitleLines];
  v13 = [(PPKQuickLookBannerView *)self title];
  [v13 setNumberOfLines:v12];

  v14 = [(PPKQuickLookBannerView *)self _numberOfSubtitleLines];
  v15 = [(PPKQuickLookBannerView *)self subtitle];
  [v15 setNumberOfLines:v14];

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
    v23 = [(PPKQuickLookBannerView *)self _extraCompactSizeConstraints];
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
    v23 = [(PPKQuickLookBannerView *)self _regularSizeConstraints];
  }

  v24 = v23;
  v25 = v22;
LABEL_34:
  [v25 activateConstraints:v24];

  v29 = [(PPKQuickLookBannerView *)self imageView];
  v26 = [v29 widthAnchor];
  v27 = [v26 constraintEqualToConstant:0.0];
  v28 = self->_imageViewCollapsingConstraint;
  self->_imageViewCollapsingConstraint = v27;
}

- (id)_compactSizeConstraints
{
  v75[19] = *MEMORY[0x1E69E9840];
  compactSizeConstraints = self->_compactSizeConstraints;
  if (!compactSizeConstraints)
  {
    v4 = [(UIStackView *)self->_titleStackView leadingAnchor];
    v5 = [(PPKQuickLookBannerView *)self imageView];
    v6 = [v5 trailingAnchor];
    v7 = [v4 constraintEqualToAnchor:v6 constant:4.0];
    titleStackLeadingConstraint = self->_titleStackLeadingConstraint;
    self->_titleStackLeadingConstraint = v7;

    v74 = [(UIView *)self->_backgroundView topAnchor];
    v73 = [(PPKQuickLookBannerView *)self topAnchor];
    v72 = [v74 constraintEqualToAnchor:v73];
    v75[0] = v72;
    v71 = [(UIView *)self->_backgroundView leadingAnchor];
    v70 = [(PPKQuickLookBannerView *)self leadingAnchor];
    v69 = [v71 constraintEqualToAnchor:v70];
    v75[1] = v69;
    v68 = [(UIView *)self->_backgroundView trailingAnchor];
    v67 = [(PPKQuickLookBannerView *)self trailingAnchor];
    v66 = [v68 constraintEqualToAnchor:v67];
    v75[2] = v66;
    v65 = [(UIView *)self->_backgroundView bottomAnchor];
    v64 = [(PPKQuickLookBannerView *)self bottomAnchor];
    v63 = [v65 constraintEqualToAnchor:v64];
    v75[3] = v63;
    v62 = [(UILayoutGuide *)self->_contentLayoutGuide topAnchor];
    v61 = [(PPKQuickLookBannerView *)self topAnchor];
    v60 = [v62 constraintEqualToAnchor:v61 constant:16.0];
    v75[4] = v60;
    v59 = [(UILayoutGuide *)self->_contentLayoutGuide leadingAnchor];
    v58 = [(PPKQuickLookBannerView *)self leadingAnchor];
    v57 = [v59 constraintEqualToAnchor:v58 constant:12.0];
    v75[5] = v57;
    v56 = [(UILayoutGuide *)self->_contentLayoutGuide trailingAnchor];
    v55 = [(PPKQuickLookBannerView *)self trailingAnchor];
    v54 = [v56 constraintEqualToAnchor:v55 constant:-20.0];
    v75[6] = v54;
    v53 = [(UILayoutGuide *)self->_contentLayoutGuide bottomAnchor];
    v52 = [(PPKQuickLookBannerView *)self bottomAnchor];
    v51 = [v53 constraintEqualToAnchor:v52 constant:-16.0];
    v75[7] = v51;
    v50 = [(PPKQuickLookBannerView *)self imageView];
    v49 = [v50 centerYAnchor];
    v48 = [(UILayoutGuide *)self->_contentLayoutGuide centerYAnchor];
    v47 = [v49 constraintEqualToAnchor:v48];
    v75[8] = v47;
    v46 = [(PPKQuickLookBannerView *)self imageView];
    v45 = [v46 leadingAnchor];
    v44 = [(UILayoutGuide *)self->_contentLayoutGuide leadingAnchor];
    v43 = [v45 constraintEqualToAnchor:v44];
    v75[9] = v43;
    v42 = [(UIStackView *)self->_titleStackView topAnchor];
    v41 = [(UILayoutGuide *)self->_contentLayoutGuide topAnchor];
    v40 = [v42 constraintGreaterThanOrEqualToAnchor:v41];
    v75[10] = v40;
    v39 = [(UIStackView *)self->_titleStackView bottomAnchor];
    v38 = [(UILayoutGuide *)self->_contentLayoutGuide bottomAnchor];
    v37 = [v39 constraintLessThanOrEqualToAnchor:v38];
    v75[11] = v37;
    v36 = [(UIStackView *)self->_titleStackView centerYAnchor];
    v35 = [(UILayoutGuide *)self->_contentLayoutGuide centerYAnchor];
    v34 = [v36 constraintEqualToAnchor:v35];
    v75[12] = v34;
    v32 = [(UIStackView *)self->_titleStackView trailingAnchor];
    v33 = [(PPKQuickLookBannerView *)self actionButton];
    v31 = [v33 leadingAnchor];
    v30 = [v32 constraintLessThanOrEqualToAnchor:v31 constant:-4.0];
    v9 = self->_titleStackLeadingConstraint;
    v75[13] = v30;
    v75[14] = v9;
    v29 = [(PPKQuickLookBannerView *)self actionButton];
    v27 = [v29 trailingAnchor];
    v28 = [(PPKQuickLookBannerView *)self closeButton];
    v26 = [v28 leadingAnchor];
    v25 = [v27 constraintEqualToAnchor:v26 constant:-16.0];
    v75[15] = v25;
    v24 = [(PPKQuickLookBannerView *)self actionButton];
    v23 = [v24 centerYAnchor];
    v22 = [(UILayoutGuide *)self->_contentLayoutGuide centerYAnchor];
    v10 = [v23 constraintEqualToAnchor:v22];
    v75[16] = v10;
    v11 = [(PPKQuickLookBannerView *)self closeButton];
    v12 = [v11 centerYAnchor];
    v13 = [(UILayoutGuide *)self->_contentLayoutGuide centerYAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];
    v75[17] = v14;
    v15 = [(PPKQuickLookBannerView *)self closeButton];
    v16 = [v15 trailingAnchor];
    v17 = [(UILayoutGuide *)self->_contentLayoutGuide trailingAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];
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
    v4 = [(UIStackView *)self->_titleStackView leadingAnchor];
    v5 = [(PPKQuickLookBannerView *)self imageView];
    v6 = [v5 trailingAnchor];
    v7 = [v4 constraintEqualToAnchor:v6 constant:4.0];
    titleStackLeadingConstraint = self->_titleStackLeadingConstraint;
    self->_titleStackLeadingConstraint = v7;

    v9 = [(UIStackView *)self->_titleStackView leadingAnchor];
    v10 = [(UILayoutGuide *)self->_contentLayoutGuide leadingAnchor];
    v11 = [v9 constraintEqualToAnchor:v10];

    LODWORD(v12) = 1148829696;
    v57 = v11;
    [v11 setPriority:v12];
    v80 = [(UIView *)self->_backgroundView topAnchor];
    v79 = [(PPKQuickLookBannerView *)self topAnchor];
    v78 = [v80 constraintEqualToAnchor:v79];
    v81[0] = v78;
    v77 = [(UIView *)self->_backgroundView leadingAnchor];
    v76 = [(PPKQuickLookBannerView *)self leadingAnchor];
    v75 = [v77 constraintEqualToAnchor:v76];
    v81[1] = v75;
    v74 = [(UIView *)self->_backgroundView trailingAnchor];
    v73 = [(PPKQuickLookBannerView *)self trailingAnchor];
    v72 = [v74 constraintEqualToAnchor:v73];
    v81[2] = v72;
    v71 = [(UIView *)self->_backgroundView bottomAnchor];
    v70 = [(PPKQuickLookBannerView *)self bottomAnchor];
    v69 = [v71 constraintEqualToAnchor:v70];
    v81[3] = v69;
    v68 = [(UILayoutGuide *)self->_contentLayoutGuide topAnchor];
    v67 = [(PPKQuickLookBannerView *)self topAnchor];
    v66 = [v68 constraintEqualToAnchor:v67 constant:16.0];
    v81[4] = v66;
    v65 = [(UILayoutGuide *)self->_contentLayoutGuide leadingAnchor];
    v64 = [(PPKQuickLookBannerView *)self leadingAnchor];
    v63 = [v65 constraintEqualToAnchor:v64 constant:12.0];
    v81[5] = v63;
    v62 = [(UILayoutGuide *)self->_contentLayoutGuide trailingAnchor];
    v61 = [(PPKQuickLookBannerView *)self trailingAnchor];
    v60 = [v62 constraintEqualToAnchor:v61 constant:-20.0];
    v81[6] = v60;
    v59 = [(UILayoutGuide *)self->_contentLayoutGuide bottomAnchor];
    v58 = [(PPKQuickLookBannerView *)self bottomAnchor];
    v56 = [v59 constraintEqualToAnchor:v58 constant:-16.0];
    v81[7] = v56;
    v55 = [(PPKQuickLookBannerView *)self imageView];
    v54 = [v55 topAnchor];
    v53 = [(UILayoutGuide *)self->_contentLayoutGuide topAnchor];
    v52 = [v54 constraintEqualToAnchor:v53];
    v81[8] = v52;
    v51 = [(PPKQuickLookBannerView *)self imageView];
    v50 = [v51 leadingAnchor];
    v49 = [(UILayoutGuide *)self->_contentLayoutGuide leadingAnchor];
    v48 = [v50 constraintEqualToAnchor:v49];
    v81[9] = v48;
    v47 = [(UIStackView *)self->_titleStackView topAnchor];
    v46 = [(UILayoutGuide *)self->_contentLayoutGuide topAnchor];
    v45 = [v47 constraintEqualToAnchor:v46];
    v81[10] = v45;
    v43 = [(UIStackView *)self->_titleStackView trailingAnchor];
    v44 = [(PPKQuickLookBannerView *)self closeButton];
    v42 = [v44 leadingAnchor];
    v41 = [v43 constraintEqualToAnchor:v42 constant:-4.0];
    v13 = self->_titleStackLeadingConstraint;
    v81[11] = v41;
    v81[12] = v13;
    v81[13] = v11;
    v40 = [(PPKQuickLookBannerView *)self closeButton];
    v39 = [v40 topAnchor];
    v38 = [(UILayoutGuide *)self->_contentLayoutGuide topAnchor];
    v37 = [v39 constraintEqualToAnchor:v38];
    v81[14] = v37;
    v36 = [(PPKQuickLookBannerView *)self closeButton];
    v35 = [v36 trailingAnchor];
    v34 = [(UILayoutGuide *)self->_contentLayoutGuide trailingAnchor];
    v33 = [v35 constraintEqualToAnchor:v34];
    v81[15] = v33;
    v32 = [(PPKQuickLookBannerView *)self actionButton];
    v31 = [v32 topAnchor];
    v30 = [(UIStackView *)self->_titleStackView bottomAnchor];
    v29 = [v31 constraintEqualToAnchor:v30 constant:10.0];
    v81[16] = v29;
    v28 = [(PPKQuickLookBannerView *)self actionButton];
    v27 = [v28 leadingAnchor];
    v26 = [(UIStackView *)self->_titleStackView leadingAnchor];
    v14 = [v27 constraintEqualToAnchor:v26];
    v81[17] = v14;
    v15 = [(PPKQuickLookBannerView *)self actionButton];
    v16 = [v15 trailingAnchor];
    v17 = [(UILayoutGuide *)self->_contentLayoutGuide trailingAnchor];
    v18 = [v16 constraintLessThanOrEqualToAnchor:v17];
    v81[18] = v18;
    v19 = [(PPKQuickLookBannerView *)self actionButton];
    v20 = [v19 bottomAnchor];
    v21 = [(UILayoutGuide *)self->_contentLayoutGuide bottomAnchor];
    v22 = [v20 constraintEqualToAnchor:v21];
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
    v6 = [(UIStackView *)self->_titleStackView leadingAnchor];
    v7 = [(PPKQuickLookBannerView *)self imageView];
    v8 = [v7 trailingAnchor];
    v9 = [v6 constraintEqualToAnchor:v8 constant:4.0];
    titleStackLeadingConstraint = self->_titleStackLeadingConstraint;
    self->_titleStackLeadingConstraint = v9;

    v103 = [(UIView *)self->_backgroundView topAnchor];
    v102 = [(UILayoutGuide *)self->_contentLayoutGuide topAnchor];
    v101 = [v103 constraintEqualToAnchor:v102];
    v104[0] = v101;
    v100 = [(UIView *)self->_backgroundView leadingAnchor];
    v99 = [(UILayoutGuide *)self->_contentLayoutGuide leadingAnchor];
    v98 = [v100 constraintEqualToAnchor:v99];
    v104[1] = v98;
    v97 = [(UIView *)self->_backgroundView trailingAnchor];
    v96 = [(UILayoutGuide *)self->_contentLayoutGuide trailingAnchor];
    v95 = [v97 constraintEqualToAnchor:v96];
    v104[2] = v95;
    v94 = [(UIView *)self->_backgroundView bottomAnchor];
    v93 = [(UILayoutGuide *)self->_contentLayoutGuide bottomAnchor];
    v92 = [v94 constraintEqualToAnchor:v93];
    v104[3] = v92;
    v91 = [(UILayoutGuide *)self->_contentLayoutGuide topAnchor];
    v90 = [(PPKQuickLookBannerView *)self topAnchor];
    v89 = [v91 constraintEqualToAnchor:v90 constant:16.0];
    v104[4] = v89;
    v88 = [(UILayoutGuide *)self->_contentLayoutGuide leadingAnchor];
    v87 = [(PPKQuickLookBannerView *)self leadingAnchor];
    v86 = [v88 constraintEqualToAnchor:v87 constant:v4];
    v104[5] = v86;
    v11 = [(UILayoutGuide *)self->_contentLayoutGuide trailingAnchor];
    v85 = v11;
    v12 = [(PPKQuickLookBannerView *)self trailingAnchor];
    v84 = v12;
    v13 = -16.0;
    if (v5)
    {
      v13 = -12.0;
    }

    v83 = [v11 constraintEqualToAnchor:v12 constant:v13];
    v104[6] = v83;
    v82 = [(UILayoutGuide *)self->_contentLayoutGuide bottomAnchor];
    v81 = [(PPKQuickLookBannerView *)self bottomAnchor];
    v80 = [v82 constraintEqualToAnchor:v81 constant:-16.0];
    v104[7] = v80;
    v79 = [(PPKQuickLookBannerView *)self imageView];
    v78 = [v79 leadingAnchor];
    v77 = [(UILayoutGuide *)self->_contentLayoutGuide leadingAnchor];
    v76 = [v78 constraintEqualToAnchor:v77 constant:14.0];
    v104[8] = v76;
    v75 = [(PPKQuickLookBannerView *)self imageView];
    v74 = [v75 centerYAnchor];
    v73 = [(UILayoutGuide *)self->_contentLayoutGuide centerYAnchor];
    v72 = [v74 constraintEqualToAnchor:v73];
    v104[9] = v72;
    v71 = [(PPKQuickLookBannerView *)self imageView];
    v70 = [v71 topAnchor];
    v69 = [(UILayoutGuide *)self->_contentLayoutGuide topAnchor];
    v68 = [v70 constraintGreaterThanOrEqualToAnchor:v69];
    v104[10] = v68;
    v67 = [(PPKQuickLookBannerView *)self imageView];
    v66 = [v67 bottomAnchor];
    v65 = [(UILayoutGuide *)self->_contentLayoutGuide bottomAnchor];
    v64 = [v66 constraintLessThanOrEqualToAnchor:v65];
    v104[11] = v64;
    v63 = [(UIStackView *)self->_titleStackView centerYAnchor];
    v62 = [(UILayoutGuide *)self->_contentLayoutGuide centerYAnchor];
    v61 = [v63 constraintEqualToAnchor:v62];
    v104[12] = v61;
    v59 = [(UIStackView *)self->_titleStackView trailingAnchor];
    v60 = [(PPKQuickLookBannerView *)self actionButton];
    v58 = [v60 leadingAnchor];
    v57 = [v59 constraintLessThanOrEqualToAnchor:v58 constant:-8.0];
    v104[13] = v57;
    v56 = [(UIStackView *)self->_titleStackView topAnchor];
    v55 = [(UILayoutGuide *)self->_contentLayoutGuide topAnchor];
    v54 = [v56 constraintGreaterThanOrEqualToAnchor:v55 constant:8.0];
    v104[14] = v54;
    v53 = [(UIStackView *)self->_titleStackView bottomAnchor];
    v52 = [(UILayoutGuide *)self->_contentLayoutGuide bottomAnchor];
    v51 = [v53 constraintLessThanOrEqualToAnchor:v52 constant:-8.0];
    v14 = self->_titleStackLeadingConstraint;
    v104[15] = v51;
    v104[16] = v14;
    v50 = [(PPKQuickLookBannerView *)self actionButton];
    v49 = [v50 topAnchor];
    v48 = [(UILayoutGuide *)self->_contentLayoutGuide topAnchor];
    v47 = [v49 constraintGreaterThanOrEqualToAnchor:v48 constant:8.0];
    v104[17] = v47;
    v46 = [(PPKQuickLookBannerView *)self actionButton];
    v45 = [v46 bottomAnchor];
    v44 = [(UILayoutGuide *)self->_contentLayoutGuide bottomAnchor];
    v43 = [v45 constraintLessThanOrEqualToAnchor:v44 constant:-8.0];
    v104[18] = v43;
    v42 = [(PPKQuickLookBannerView *)self actionButton];
    v40 = [v42 trailingAnchor];
    v41 = [(PPKQuickLookBannerView *)self closeButton];
    v39 = [v41 leadingAnchor];
    v38 = [v40 constraintEqualToAnchor:v39 constant:-14.0];
    v104[19] = v38;
    v37 = [(PPKQuickLookBannerView *)self actionButton];
    v36 = [v37 centerYAnchor];
    v35 = [(UILayoutGuide *)self->_contentLayoutGuide centerYAnchor];
    v34 = [v36 constraintEqualToAnchor:v35];
    v104[20] = v34;
    v33 = [(PPKQuickLookBannerView *)self closeButton];
    v32 = [v33 trailingAnchor];
    v31 = [(UILayoutGuide *)self->_contentLayoutGuide trailingAnchor];
    v30 = [v32 constraintEqualToAnchor:v31 constant:-14.0];
    v104[21] = v30;
    v29 = [(PPKQuickLookBannerView *)self closeButton];
    v28 = [v29 centerYAnchor];
    v27 = [(UILayoutGuide *)self->_contentLayoutGuide centerYAnchor];
    v15 = [v28 constraintEqualToAnchor:v27];
    v104[22] = v15;
    v16 = [(PPKQuickLookBannerView *)self closeButton];
    v17 = [v16 topAnchor];
    v18 = [(UILayoutGuide *)self->_contentLayoutGuide topAnchor];
    v19 = [v17 constraintGreaterThanOrEqualToAnchor:v18];
    v104[23] = v19;
    v20 = [(PPKQuickLookBannerView *)self closeButton];
    v21 = [v20 bottomAnchor];
    v22 = [(UILayoutGuide *)self->_contentLayoutGuide bottomAnchor];
    v23 = [v21 constraintLessThanOrEqualToAnchor:v22];
    v104[24] = v23;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v104 count:25];
    v25 = self->_regularSizeConstraints;
    self->_regularSizeConstraints = v24;

    regularSizeConstraints = self->_regularSizeConstraints;
  }

  return regularSizeConstraints;
}

- (void)populateWithConfiguration:(id)a3
{
  v25 = a3;
  [(PPKQuickLookBannerView *)self _updateImageViewWithConfiguration:v25];
  v4 = [v25 title];
  v5 = [(PPKQuickLookBannerView *)self title];
  [v5 setText:v4];

  v6 = [v25 subtitle];
  v7 = [(PPKQuickLookBannerView *)self subtitle];
  [v7 setText:v6];

  v8 = [v25 subtitle];
  v9 = [v8 length] == 0;
  v10 = [(PPKQuickLookBannerView *)self subtitle];
  [v10 setHidden:v9];

  v11 = [(PPKQuickLookBannerView *)self actionButton];
  [(PPKQuickLookBannerView *)self clearExistingActions:v11];

  v12 = [(PPKQuickLookBannerView *)self closeButton];
  [(PPKQuickLookBannerView *)self clearExistingActions:v12];

  v13 = [v25 primaryAction];

  if (v13)
  {
    v14 = [(PPKQuickLookBannerView *)self actionButton];
    v15 = [v25 primaryAction];
    [v14 addAction:v15 forControlEvents:64];

    v16 = [(PPKQuickLookBannerView *)self actionButton];
    v17 = [v16 configuration];
    v18 = [v17 copy];

    v19 = [v25 primaryAction];
    v20 = [v19 title];
    [v18 setTitle:v20];

    v21 = [(PPKQuickLookBannerView *)self actionButton];
    [v21 setConfiguration:v18];
  }

  v22 = [v25 dismissAction];

  if (v22)
  {
    v23 = [(PPKQuickLookBannerView *)self closeButton];
    v24 = [v25 dismissAction];
    [v23 addAction:v24 forControlEvents:64];
  }
}

- (void)_updateImageViewWithConfiguration:(id)a3
{
  v6 = [a3 image];
  v4 = [(PPKQuickLookBannerView *)self imageView];
  [v4 setImage:v6];
  if (v6)
  {
    v5 = 4.0;
  }

  else
  {
    v5 = 0.0;
  }

  [(NSLayoutConstraint *)self->_imageViewCollapsingConstraint setActive:v6 == 0];
  [(NSLayoutConstraint *)self->_titleStackLeadingConstraint setConstant:v5];
  [v4 setHidden:v6 == 0];
}

- (void)clearExistingActions:(id)a3
{
  v3 = a3;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__PPKQuickLookBannerView_clearExistingActions___block_invoke;
  v5[3] = &unk_1E845C5A0;
  v6 = v3;
  v4 = v3;
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
  v2 = [(PPKQuickLookBannerView *)self traitCollection];
  if ([v2 horizontalSizeClass] == 1)
  {
    v3 = 1;
  }

  else
  {
    v4 = [MEMORY[0x1E69DC938] currentDevice];
    v3 = [v4 userInterfaceIdiom] == 0;
  }

  return v3;
}

- (BOOL)_isUsingAccessibilityContentSizeCategory
{
  v2 = [(PPKQuickLookBannerView *)self traitCollection];
  v3 = [v2 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v3);

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