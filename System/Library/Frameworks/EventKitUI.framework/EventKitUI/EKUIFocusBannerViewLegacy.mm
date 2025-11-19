@interface EKUIFocusBannerViewLegacy
- (CGSize)sizeThatFits:(CGSize)a3;
- (EKUIFocusBannerViewLegacy)initWithFrame:(CGRect)a3;
- (id)_focusFilterButtonConfiguration;
- (id)_horizontalLayoutConstraints;
- (id)_verticalLayoutConstraints;
- (id)largeContentTitle;
- (unint64_t)_effectiveLayout;
- (void)_tapped;
- (void)_updateKeylineHeightConstraints;
- (void)_updateView;
- (void)largeContentViewerInteraction:(id)a3 didEndOnItem:(id)a4 atPoint:(CGPoint)a5;
- (void)setDisallowAccessibilityTextSizes:(BOOL)a3;
- (void)setLayout:(unint64_t)a3;
- (void)setOn:(BOOL)a3;
- (void)setShowDividers:(BOOL)a3;
- (void)updateConstraints;
@end

@implementation EKUIFocusBannerViewLegacy

- (EKUIFocusBannerViewLegacy)initWithFrame:(CGRect)a3
{
  v38[1] = *MEMORY[0x1E69E9840];
  v36.receiver = self;
  v36.super_class = EKUIFocusBannerViewLegacy;
  v3 = [(EKUIFocusBannerViewLegacy *)&v36 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DCC18]) initWithDelegate:v3];
    [(EKUIFocusBannerViewLegacy *)v3 addInteraction:v4];

    v5 = [MEMORY[0x1E69DC888] systemIndigoColor];
    [(EKUIFocusBannerViewLegacy *)v3 setTintColor:v5];

    [(EKUIFocusBannerViewLegacy *)v3 setPreservesSuperviewLayoutMargins:1];
    v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    focusFilterStateDescriptionLabel = v3->_focusFilterStateDescriptionLabel;
    v3->_focusFilterStateDescriptionLabel = v6;

    [(UILabel *)v3->_focusFilterStateDescriptionLabel setTextAlignment:4];
    [(EKUIFocusBannerViewLegacy *)v3 addSubview:v3->_focusFilterStateDescriptionLabel];
    v8 = [MEMORY[0x1E69DC738] buttonWithType:1];
    focusFilterToggleButton = v3->_focusFilterToggleButton;
    v3->_focusFilterToggleButton = v8;

    v10 = [(EKUIFocusBannerViewLegacy *)v3 _focusFilterButtonConfiguration];
    [(UIButton *)v3->_focusFilterToggleButton setConfiguration:v10];

    objc_initWeak(&location, v3);
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __43__EKUIFocusBannerViewLegacy_initWithFrame___block_invoke;
    v33[3] = &unk_1E8440360;
    objc_copyWeak(&v34, &location);
    [(UIButton *)v3->_focusFilterToggleButton setConfigurationUpdateHandler:v33];
    [(UIButton *)v3->_focusFilterToggleButton addTarget:v3 action:sel__tapped forControlEvents:0x2000];
    [(EKUIFocusBannerViewLegacy *)v3 addSubview:v3->_focusFilterToggleButton];
    v11 = objc_alloc_init(MEMORY[0x1E69DD250]);
    topKeylineView = v3->_topKeylineView;
    v3->_topKeylineView = v11;

    [(UIView *)v3->_topKeylineView setHidden:1];
    v13 = [MEMORY[0x1E69DC888] separatorColor];
    [(UIView *)v3->_topKeylineView setBackgroundColor:v13];

    [(EKUIFocusBannerViewLegacy *)v3 addSubview:v3->_topKeylineView];
    [(EKUIFocusBannerViewLegacy *)v3 _updateView];
    [(UILabel *)v3->_focusFilterStateDescriptionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)v3->_focusFilterToggleButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v3->_topKeylineView setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v14) = 1148846080;
    [(UILabel *)v3->_focusFilterStateDescriptionLabel setContentHuggingPriority:0 forAxis:v14];
    LODWORD(v15) = 1148846080;
    [(UILabel *)v3->_focusFilterStateDescriptionLabel setContentHuggingPriority:1 forAxis:v15];
    LODWORD(v16) = 1144750080;
    [(UILabel *)v3->_focusFilterStateDescriptionLabel setContentCompressionResistancePriority:0 forAxis:v16];
    LODWORD(v17) = 1148846080;
    [(UILabel *)v3->_focusFilterStateDescriptionLabel setContentCompressionResistancePriority:1 forAxis:v17];
    LODWORD(v18) = 1148846080;
    [(UIButton *)v3->_focusFilterToggleButton setContentCompressionResistancePriority:0 forAxis:v18];
    LODWORD(v19) = 1148846080;
    [(UIButton *)v3->_focusFilterToggleButton setContentCompressionResistancePriority:1 forAxis:v19];
    LODWORD(v20) = 1148846080;
    [(UIButton *)v3->_focusFilterToggleButton setContentHuggingPriority:0 forAxis:v20];
    LODWORD(v21) = 1148846080;
    [(UIButton *)v3->_focusFilterToggleButton setContentHuggingPriority:1 forAxis:v21];
    v22 = [(UIView *)v3->_topKeylineView heightAnchor];
    v23 = [v22 constraintEqualToConstant:1.0];
    topKeylineHeightConstraint = v3->_topKeylineHeightConstraint;
    v3->_topKeylineHeightConstraint = v23;

    v25 = MEMORY[0x1E696ACD8];
    v38[0] = v3->_topKeylineHeightConstraint;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:1];
    [v25 activateConstraints:v26];

    v27 = [MEMORY[0x1E696AD88] defaultCenter];
    [v27 addObserver:v3 selector:sel_contentSizeCategoryDidChange name:*MEMORY[0x1E69DDC48] object:0];

    v37[0] = objc_opt_class();
    v37[1] = objc_opt_class();
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:2];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __43__EKUIFocusBannerViewLegacy_initWithFrame___block_invoke_2;
    v31[3] = &unk_1E843EBE8;
    objc_copyWeak(&v32, &location);
    v29 = [(EKUIFocusBannerViewLegacy *)v3 registerForTraitChanges:v28 withHandler:v31];
    objc_destroyWeak(&v32);

    objc_destroyWeak(&v34);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __43__EKUIFocusBannerViewLegacy_initWithFrame___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained _focusFilterButtonConfiguration];
    [v6 setConfiguration:v5];
  }
}

void __43__EKUIFocusBannerViewLegacy_initWithFrame___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidateIntrinsicContentSize];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 setNeedsUpdateConstraints];
}

- (void)updateConstraints
{
  v5.receiver = self;
  v5.super_class = EKUIFocusBannerViewLegacy;
  [(EKUIFocusBannerViewLegacy *)&v5 updateConstraints];
  if ([(EKUIFocusBannerViewLegacy *)self _effectiveLayout]== 2)
  {
    [(EKUIFocusBannerViewLegacy *)self _verticalLayoutConstraints];
  }

  else
  {
    [(EKUIFocusBannerViewLegacy *)self _horizontalLayoutConstraints];
  }
  v3 = ;
  activeConstraints = self->_activeConstraints;
  if (activeConstraints != v3)
  {
    if (activeConstraints)
    {
      [MEMORY[0x1E696ACD8] deactivateConstraints:?];
    }

    [MEMORY[0x1E696ACD8] activateConstraints:v3];
    objc_storeStrong(&self->_activeConstraints, v3);
  }

  [(EKUIFocusBannerViewLegacy *)self _updateKeylineHeightConstraints];
}

- (id)_horizontalLayoutConstraints
{
  v39[10] = *MEMORY[0x1E69E9840];
  horizontalLayoutConstraints = self->_horizontalLayoutConstraints;
  if (!horizontalLayoutConstraints)
  {
    v37 = [(UILabel *)self->_focusFilterStateDescriptionLabel leadingAnchor];
    v38 = [(EKUIFocusBannerViewLegacy *)self layoutMarginsGuide];
    v36 = [v38 leadingAnchor];
    v35 = [v37 constraintEqualToAnchor:v36];
    v39[0] = v35;
    v34 = [(UILabel *)self->_focusFilterStateDescriptionLabel trailingAnchor];
    v33 = [(UIButton *)self->_focusFilterToggleButton leadingAnchor];
    v32 = [v34 constraintLessThanOrEqualToAnchor:v33 constant:-36.0];
    v39[1] = v32;
    v31 = [(UILabel *)self->_focusFilterStateDescriptionLabel centerYAnchor];
    v30 = [(EKUIFocusBannerViewLegacy *)self centerYAnchor];
    v29 = [v31 constraintEqualToAnchor:v30];
    v39[2] = v29;
    v28 = [(UILabel *)self->_focusFilterStateDescriptionLabel heightAnchor];
    v27 = [(EKUIFocusBannerViewLegacy *)self heightAnchor];
    v26 = [v28 constraintEqualToAnchor:v27];
    v39[3] = v26;
    v24 = [(UIButton *)self->_focusFilterToggleButton trailingAnchor];
    v25 = [(EKUIFocusBannerViewLegacy *)self layoutMarginsGuide];
    v23 = [v25 trailingAnchor];
    v22 = [v24 constraintEqualToAnchor:v23];
    v39[4] = v22;
    v21 = [(UIButton *)self->_focusFilterToggleButton topAnchor];
    v20 = [(EKUIFocusBannerViewLegacy *)self topAnchor];
    v19 = [v21 constraintEqualToAnchor:v20 constant:11.0];
    v39[5] = v19;
    v18 = [(EKUIFocusBannerViewLegacy *)self bottomAnchor];
    v17 = [(UIButton *)self->_focusFilterToggleButton bottomAnchor];
    v16 = [v18 constraintEqualToAnchor:v17 constant:11.0];
    v39[6] = v16;
    v4 = [(UIView *)self->_topKeylineView leadingAnchor];
    v5 = [(EKUIFocusBannerViewLegacy *)self leadingAnchor];
    v6 = [v4 constraintEqualToAnchor:v5];
    v39[7] = v6;
    v7 = [(EKUIFocusBannerViewLegacy *)self trailingAnchor];
    v8 = [(UIView *)self->_topKeylineView trailingAnchor];
    v9 = [v7 constraintEqualToAnchor:v8];
    v39[8] = v9;
    v10 = [(UIView *)self->_topKeylineView topAnchor];
    v11 = [(EKUIFocusBannerViewLegacy *)self topAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];
    v39[9] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:10];
    v14 = self->_horizontalLayoutConstraints;
    self->_horizontalLayoutConstraints = v13;

    horizontalLayoutConstraints = self->_horizontalLayoutConstraints;
  }

  return horizontalLayoutConstraints;
}

- (id)_verticalLayoutConstraints
{
  v37[9] = *MEMORY[0x1E69E9840];
  verticalLayoutConstraints = self->_verticalLayoutConstraints;
  if (!verticalLayoutConstraints)
  {
    v35 = [(UILabel *)self->_focusFilterStateDescriptionLabel leadingAnchor];
    v36 = [(EKUIFocusBannerViewLegacy *)self layoutMarginsGuide];
    v34 = [v36 leadingAnchor];
    v33 = [v35 constraintEqualToAnchor:v34];
    v37[0] = v33;
    v31 = [(UILabel *)self->_focusFilterStateDescriptionLabel trailingAnchor];
    v32 = [(EKUIFocusBannerViewLegacy *)self layoutMarginsGuide];
    v30 = [v32 trailingAnchor];
    v29 = [v31 constraintEqualToAnchor:v30];
    v37[1] = v29;
    v28 = [(UILabel *)self->_focusFilterStateDescriptionLabel topAnchor];
    v27 = [(EKUIFocusBannerViewLegacy *)self topAnchor];
    v26 = [v28 constraintEqualToAnchor:v27 constant:11.0];
    v37[2] = v26;
    v24 = [(UIButton *)self->_focusFilterToggleButton leadingAnchor];
    v25 = [(EKUIFocusBannerViewLegacy *)self layoutMarginsGuide];
    v23 = [v25 leadingAnchor];
    v22 = [v24 constraintEqualToAnchor:v23];
    v37[3] = v22;
    v21 = [(UIButton *)self->_focusFilterToggleButton topAnchor];
    v20 = [(UILabel *)self->_focusFilterStateDescriptionLabel bottomAnchor];
    v19 = [v21 constraintEqualToAnchor:v20 constant:8.0];
    v37[4] = v19;
    v18 = [(EKUIFocusBannerViewLegacy *)self bottomAnchor];
    v17 = [(UIButton *)self->_focusFilterToggleButton bottomAnchor];
    v16 = [v18 constraintEqualToAnchor:v17 constant:11.0];
    v37[5] = v16;
    v4 = [(UIView *)self->_topKeylineView leadingAnchor];
    v5 = [(EKUIFocusBannerViewLegacy *)self leadingAnchor];
    v6 = [v4 constraintEqualToAnchor:v5];
    v37[6] = v6;
    v7 = [(EKUIFocusBannerViewLegacy *)self trailingAnchor];
    v8 = [(UIView *)self->_topKeylineView trailingAnchor];
    v9 = [v7 constraintEqualToAnchor:v8];
    v37[7] = v9;
    v10 = [(UIView *)self->_topKeylineView topAnchor];
    v11 = [(EKUIFocusBannerViewLegacy *)self topAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];
    v37[8] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:9];
    v14 = self->_verticalLayoutConstraints;
    self->_verticalLayoutConstraints = v13;

    verticalLayoutConstraints = self->_verticalLayoutConstraints;
  }

  return verticalLayoutConstraints;
}

- (unint64_t)_effectiveLayout
{
  result = [(EKUIFocusBannerViewLegacy *)self layout];
  if (!result)
  {
    v4 = [(EKUIFocusBannerViewLegacy *)self traitCollection];
    v5 = [v4 preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v5);

    if (IsAccessibilityCategory)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v5 = [(EKUIFocusBannerViewLegacy *)self _effectiveLayout:a3.width];
  [(EKUIFocusBannerViewLegacy *)self directionalLayoutMargins];
  v8 = v6;
  v9 = v7;
  if (width - v6 - v7 >= 0.0)
  {
    v10 = width - v6 - v7;
  }

  else
  {
    v10 = 0.0;
  }

  focusFilterToggleButton = self->_focusFilterToggleButton;
  if (v5 == 1)
  {
    v12 = *(MEMORY[0x1E69DE098] + 8);
    [(UIButton *)focusFilterToggleButton sizeThatFits:v10, v12];
    v14 = v13;
    v16 = v15;
    [(UILabel *)self->_focusFilterStateDescriptionLabel sizeThatFits:v10 - (v13 + 36.0), v12];
    v19 = v14 + v8 + v18 + 36.0;
    if (v16 >= v17)
    {
      v17 = v16;
    }

    v20 = v17 + 11.0;
  }

  else
  {
    v21 = *(MEMORY[0x1E69DE098] + 8);
    [(UIButton *)focusFilterToggleButton sizeThatFits:*MEMORY[0x1E69DE098], v21];
    v23 = v22;
    v25 = v24;
    [(UILabel *)self->_focusFilterStateDescriptionLabel sizeThatFits:v10, v21];
    if (v23 >= v26)
    {
      v26 = v23;
    }

    v19 = v8 + v26;
    v20 = v25 + v27 + 11.0 + 8.0;
  }

  v28 = v9 + v19;
  v29 = v20 + 11.0;
  result.height = v29;
  result.width = v28;
  return result;
}

- (void)_tapped
{
  [(EKUIFocusBannerViewLegacy *)self setOn:[(EKUIFocusBannerViewLegacy *)self on]^ 1];
  v3 = [(EKUIFocusBannerView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(EKUIFocusBannerView *)self delegate];
    [v5 focusBannerViewToggled:self];
  }
}

- (void)setOn:(BOOL)a3
{
  if (self->_on != a3)
  {
    self->_on = a3;
    [(EKUIFocusBannerViewLegacy *)self _updateView];
  }
}

- (void)setShowDividers:(BOOL)a3
{
  if (self->_showDividers != a3)
  {
    self->_showDividers = a3;
    [(UIView *)self->_topKeylineView setHidden:!a3];
  }
}

- (void)setLayout:(unint64_t)a3
{
  if (self->_layout != a3)
  {
    self->_layout = a3;
    [(EKUIFocusBannerViewLegacy *)self _updateView];
  }
}

- (void)setDisallowAccessibilityTextSizes:(BOOL)a3
{
  if (self->_disallowAccessibilityTextSizes != a3)
  {
    self->_disallowAccessibilityTextSizes = a3;
    [(EKUIFocusBannerViewLegacy *)self _updateView];
  }
}

- (void)_updateView
{
  v30[2] = *MEMORY[0x1E69E9840];
  v3 = [(EKUIFocusBannerViewLegacy *)self on];
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v28 = v4;
  if (v3)
  {
    v5 = [v4 localizedStringForKey:@"Filtered by Focus" value:&stru_1F4EF6790 table:0];
    [MEMORY[0x1E69DC888] systemIndigoColor];
  }

  else
  {
    v5 = [v4 localizedStringForKey:@"Focus Filter Off" value:&stru_1F4EF6790 table:0];
    [MEMORY[0x1E69DC888] secondaryLabelColor];
  }
  v6 = ;
  v7 = MEMORY[0x1E69DB7F0];
  v8 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"moon.circle.fill"];
  v27 = [v7 textAttachmentWithImage:v8];

  v9 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v27];
  v26 = v9;
  v10 = [(EKUIFocusBannerViewLegacy *)self disallowAccessibilityTextSizes];
  v11 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD80] addingSymbolicTraits:0x8000 options:v10];
  v12 = [MEMORY[0x1E69DB878] fontWithDescriptor:v11 size:0.0];
  v13 = *MEMORY[0x1E69DB650];
  v29[0] = *MEMORY[0x1E69DB648];
  v29[1] = v13;
  v30[0] = v12;
  v30[1] = v6;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:2];
  v15 = objc_alloc(MEMORY[0x1E696AAB0]);
  if (CalInterfaceIsLeftToRight())
  {
    v16 = @"%1$@ %2$@";
  }

  else
  {
    v16 = @"%2$@ %1$@";
  }

  v17 = [v15 initWithString:v16];
  v18 = [MEMORY[0x1E696AAB0] localizedAttributedStringWithFormat:v17, v9, v5];
  v19 = [v18 mutableCopy];

  [v19 addAttributes:v14 range:{0, objc_msgSend(v19, "length")}];
  v20 = [(EKUIFocusBannerViewLegacy *)self focusFilterStateDescriptionLabel];
  [v20 setAttributedText:v19];

  v21 = [(EKUIFocusBannerViewLegacy *)self layout]== 1;
  [(EKUIFocusBannerViewLegacy *)self focusFilterStateDescriptionLabel];
  v23 = v22 = v5;
  [v23 setNumberOfLines:v21];

  v24 = [(EKUIFocusBannerViewLegacy *)self focusFilterToggleButton];
  [v24 setNeedsUpdateConfiguration];

  v25 = [(EKUIFocusBannerViewLegacy *)self focusFilterToggleButton];
  [v25 updateConfiguration];
}

- (id)_focusFilterButtonConfiguration
{
  v27[1] = *MEMORY[0x1E69E9840];
  v3 = [(EKUIFocusBannerViewLegacy *)self on];
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = v4;
  if (v3)
  {
    v6 = @"Turn Off";
  }

  else
  {
    v6 = @"Turn On";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_1F4EF6790 table:0];

  v8 = [(EKUIFocusBannerViewLegacy *)self disallowAccessibilityTextSizes];
  v9 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD80] addingSymbolicTraits:32770 options:v8];
  v10 = [MEMORY[0x1E69DB878] fontWithDescriptor:v9 size:0.0];
  v11 = [MEMORY[0x1E69DC888] systemIndigoColor];
  v26 = *MEMORY[0x1E69DB650];
  v27[0] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
  v13 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v7 attributes:v12];
  v14 = [(EKUIFocusBannerViewLegacy *)self traitCollection];
  v15 = [v14 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v15);

  if (IsAccessibilityCategory && [(EKUIFocusBannerViewLegacy *)self _effectiveLayout]== 2 || (MEMORY[0x1D38B98D0]() & 1) != 0)
  {
    v17 = [MEMORY[0x1E69DC740] grayButtonConfiguration];
    v18 = 1;
  }

  else
  {
    v17 = [MEMORY[0x1E69DC740] plainButtonConfiguration];
    v18 = 0;
  }

  [v17 setAttributedTitle:v13];
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __60__EKUIFocusBannerViewLegacy__focusFilterButtonConfiguration__block_invoke;
  v24 = &unk_1E8440388;
  v25 = v10;
  v19 = v10;
  [v17 setTitleTextAttributesTransformer:&v21];
  [v17 setTitleAlignment:{1, v21, v22, v23, v24}];
  [v17 setTitleLineBreakMode:2];
  if (v18)
  {
    [v17 setButtonSize:0];
    [v17 setCornerStyle:4];
  }

  else
  {
    [v17 setContentInsets:{*MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24)}];
  }

  return v17;
}

id __60__EKUIFocusBannerViewLegacy__focusFilterButtonConfiguration__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  [v3 setObject:*(a1 + 32) forKeyedSubscript:*MEMORY[0x1E69DB648]];
  v4 = [v3 copy];

  return v4;
}

- (void)_updateKeylineHeightConstraints
{
  v3 = [(EKUIFocusBannerViewLegacy *)self traitCollection];
  [v3 displayScale];
  v5 = v4;

  topKeylineHeightConstraint = self->_topKeylineHeightConstraint;

  [(NSLayoutConstraint *)topKeylineHeightConstraint setConstant:1.0 / v5];
}

- (id)largeContentTitle
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(EKUIFocusBannerViewLegacy *)self focusFilterStateDescriptionLabel];
  v5 = [v4 attributedText];
  v6 = [v5 string];
  v7 = [(EKUIFocusBannerViewLegacy *)self focusFilterToggleButton];
  v8 = [v7 titleLabel];
  v9 = [v8 attributedText];
  v10 = [v9 string];
  v11 = [v3 stringWithFormat:@"%@\n%@", v6, v10];

  return v11;
}

- (void)largeContentViewerInteraction:(id)a3 didEndOnItem:(id)a4 atPoint:(CGPoint)a5
{
  if (a4 == self)
  {
    [(EKUIFocusBannerViewLegacy *)self _tapped:a3];
  }
}

@end