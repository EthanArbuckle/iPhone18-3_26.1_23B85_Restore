@interface SFPrivacyReportExplanationDetailItemView
- (SFPrivacyReportExplanationDetailItemView)initWithFrame:(CGRect)a3;
- (SFPrivacyReportGridItemDelegate)delegate;
- (void)_preferredContentSizeCategoryDidChange;
- (void)_updateTopConstraints;
- (void)_updateTopSpacing;
- (void)setGridPosition:(unint64_t)a3;
- (void)setHairlineTopSpacing:(double)a3;
- (void)setTitleLabelTopSpacing:(double)a3;
- (void)setUsesInsetStyle:(BOOL)a3;
@end

@implementation SFPrivacyReportExplanationDetailItemView

- (SFPrivacyReportExplanationDetailItemView)initWithFrame:(CGRect)a3
{
  v71[1] = *MEMORY[0x1E69E9840];
  v67.receiver = self;
  v67.super_class = SFPrivacyReportExplanationDetailItemView;
  v3 = [(SFPrivacyReportExplanationDetailItemView *)&v67 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(SFPrivacyReportExplanationDetailItemView *)v3 setPreservesSuperviewLayoutMargins:1];
    v5 = objc_alloc_init(MEMORY[0x1E69DD250]);
    hairline = v4->_hairline;
    v4->_hairline = v5;

    [(UIView *)v4->_hairline setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    [(UIView *)v4->_hairline setBackgroundColor:v7];

    [(SFPrivacyReportExplanationDetailItemView *)v4 addSubview:v4->_hairline];
    v8 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v8;

    v10 = *MEMORY[0x1E69DDD80];
    v11 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
    [(UILabel *)v4->_titleLabel setFont:v11];

    v12 = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v4->_titleLabel setTextColor:v12];

    [(UILabel *)v4->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v4->_titleLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v4->_titleLabel setNumberOfLines:0];
    [(SFPrivacyReportExplanationDetailItemView *)v4 addSubview:v4->_titleLabel];
    v13 = objc_alloc_init(MEMORY[0x1E69DD168]);
    bodyTextView = v4->_bodyTextView;
    v4->_bodyTextView = v13;

    v15 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v10];
    [(UITextView *)v4->_bodyTextView setFont:v15];

    v16 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UITextView *)v4->_bodyTextView setTextColor:v16];

    [(UITextView *)v4->_bodyTextView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UITextView *)v4->_bodyTextView setAdjustsFontForContentSizeCategory:1];
    v17 = [MEMORY[0x1E69DC888] clearColor];
    [(UITextView *)v4->_bodyTextView setBackgroundColor:v17];

    [(UITextView *)v4->_bodyTextView setShowsVerticalScrollIndicator:0];
    [(UITextView *)v4->_bodyTextView setEditable:0];
    [(UITextView *)v4->_bodyTextView setSelectable:1];
    [(UITextView *)v4->_bodyTextView setScrollEnabled:0];
    v18 = [(UITextView *)v4->_bodyTextView textContainer];
    [v18 setLineFragmentPadding:0.0];

    [(UITextView *)v4->_bodyTextView _setInteractiveTextSelectionDisabled:1];
    [(UITextView *)v4->_bodyTextView setTextContainerInset:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
    v70 = *MEMORY[0x1E69DB650];
    v19 = [MEMORY[0x1E69DC888] linkColor];
    v71[0] = v19;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v71 forKeys:&v70 count:1];
    [(UITextView *)v4->_bodyTextView setLinkTextAttributes:v20];

    [(UITextView *)v4->_bodyTextView setDelegate:v4];
    [(SFPrivacyReportExplanationDetailItemView *)v4 addSubview:v4->_bodyTextView];
    v21 = [(UILabel *)v4->_titleLabel topAnchor];
    v22 = [(SFPrivacyReportExplanationDetailItemView *)v4 topAnchor];
    v23 = [v21 constraintEqualToAnchor:v22 constant:0.0];
    titleTopConstraint = v4->_titleTopConstraint;
    v4->_titleTopConstraint = v23;

    v25 = [(UIView *)v4->_hairline topAnchor];
    v26 = [(SFPrivacyReportExplanationDetailItemView *)v4 topAnchor];
    v27 = [v25 constraintEqualToAnchor:v26];
    hairlineTopConstraint = v4->_hairlineTopConstraint;
    v4->_hairlineTopConstraint = v27;

    v29 = [(SFPrivacyReportExplanationDetailItemView *)v4 layoutMarginsGuide];
    v54 = MEMORY[0x1E696ACD8];
    v69[0] = v4->_hairlineTopConstraint;
    v66 = [(UIView *)v4->_hairline leadingAnchor];
    v65 = [v29 leadingAnchor];
    v64 = [v66 constraintEqualToAnchor:v65];
    v69[1] = v64;
    v63 = [(UIView *)v4->_hairline centerXAnchor];
    v59 = v29;
    v62 = [v29 centerXAnchor];
    v61 = [v63 constraintEqualToAnchor:v62];
    v69[2] = v61;
    v60 = [(UIView *)v4->_hairline heightAnchor];
    _SFOnePixel();
    v58 = [v60 constraintEqualToConstant:?];
    v69[3] = v58;
    v57 = [(UILabel *)v4->_titleLabel leadingAnchor];
    v56 = [v29 leadingAnchor];
    v55 = [v57 constraintEqualToAnchor:v56];
    v69[4] = v55;
    v53 = [(UILabel *)v4->_titleLabel centerXAnchor];
    v52 = [v29 centerXAnchor];
    v51 = [v53 constraintEqualToAnchor:v52];
    v69[5] = v51;
    v50 = [(UITextView *)v4->_bodyTextView leadingAnchor];
    v49 = [v29 leadingAnchor];
    v48 = [v50 constraintEqualToAnchor:v49];
    v69[6] = v48;
    v47 = [(UITextView *)v4->_bodyTextView centerXAnchor];
    v46 = [v29 centerXAnchor];
    v45 = [v47 constraintEqualToAnchor:v46];
    v69[7] = v45;
    v69[8] = v4->_titleTopConstraint;
    v30 = [(UITextView *)v4->_bodyTextView topAnchor];
    v31 = [(UILabel *)v4->_titleLabel bottomAnchor];
    v32 = [v30 constraintEqualToSystemSpacingBelowAnchor:v31 multiplier:0.5];
    v69[9] = v32;
    v33 = [(UITextView *)v4->_bodyTextView bottomAnchor];
    v34 = [(SFPrivacyReportExplanationDetailItemView *)v4 bottomAnchor];
    v35 = [v33 constraintLessThanOrEqualToAnchor:v34];
    v69[10] = v35;
    v36 = [(UITextView *)v4->_bodyTextView bottomAnchor];
    v37 = [(SFPrivacyReportExplanationDetailItemView *)v4 bottomAnchor];
    v38 = [v36 constraintEqualToAnchor:v37];

    LODWORD(v39) = 1131413504;
    [v38 setPriority:v39];
    v69[11] = v38;
    v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:12];
    [v54 activateConstraints:v40];

    v68 = objc_opt_class();
    v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v68 count:1];
    v42 = [(SFPrivacyReportExplanationDetailItemView *)v4 registerForTraitChanges:v41 withTarget:v4 action:sel__preferredContentSizeCategoryDidChange];

    v43 = v4;
  }

  return v4;
}

- (void)setUsesInsetStyle:(BOOL)a3
{
  if (self->_usesInsetStyle != a3)
  {
    self->_usesInsetStyle = a3;
    [(SFPrivacyReportExplanationDetailItemView *)self _updateTopSpacing];
  }
}

- (void)setGridPosition:(unint64_t)a3
{
  if (self->_gridPosition != a3)
  {
    self->_gridPosition = a3;
    [(UIView *)self->_hairline setHidden:(a3 & 1) == 0];

    [(SFPrivacyReportExplanationDetailItemView *)self _updateTopSpacing];
  }
}

- (void)setTitleLabelTopSpacing:(double)a3
{
  if (self->_titleLabelTopSpacing != a3)
  {
    self->_titleLabelTopSpacing = a3;
    [(SFPrivacyReportExplanationDetailItemView *)self _updateTopConstraints];
  }
}

- (void)setHairlineTopSpacing:(double)a3
{
  if (self->_hairlineTopSpacing != a3)
  {
    self->_hairlineTopSpacing = a3;
    [(SFPrivacyReportExplanationDetailItemView *)self _updateTopConstraints];
  }
}

- (void)_updateTopConstraints
{
  [(NSLayoutConstraint *)self->_titleTopConstraint setConstant:self->_titleLabelTopSpacing + self->_hairlineTopSpacing];
  hairlineTopSpacing = self->_hairlineTopSpacing;
  hairlineTopConstraint = self->_hairlineTopConstraint;

  [(NSLayoutConstraint *)hairlineTopConstraint setConstant:hairlineTopSpacing];
}

- (void)_updateTopSpacing
{
  v3 = [(UIView *)self->_hairline isHidden];
  v4 = 0.0;
  v5 = 0.0;
  if (!v3)
  {
    v4 = 35.0;
    v5 = 20.0;
    if (!self->_usesInsetStyle)
    {
      v5 = 35.0;
    }
  }

  [(SFPrivacyReportExplanationDetailItemView *)self setTitleLabelTopSpacing:v5];

  [(SFPrivacyReportExplanationDetailItemView *)self setHairlineTopSpacing:v4];
}

- (void)_preferredContentSizeCategoryDidChange
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained itemDidChangeContentSize:self];
  }
}

- (SFPrivacyReportGridItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end