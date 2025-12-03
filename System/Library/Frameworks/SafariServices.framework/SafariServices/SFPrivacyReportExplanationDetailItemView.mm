@interface SFPrivacyReportExplanationDetailItemView
- (SFPrivacyReportExplanationDetailItemView)initWithFrame:(CGRect)frame;
- (SFPrivacyReportGridItemDelegate)delegate;
- (void)_preferredContentSizeCategoryDidChange;
- (void)_updateTopConstraints;
- (void)_updateTopSpacing;
- (void)setGridPosition:(unint64_t)position;
- (void)setHairlineTopSpacing:(double)spacing;
- (void)setTitleLabelTopSpacing:(double)spacing;
- (void)setUsesInsetStyle:(BOOL)style;
@end

@implementation SFPrivacyReportExplanationDetailItemView

- (SFPrivacyReportExplanationDetailItemView)initWithFrame:(CGRect)frame
{
  v71[1] = *MEMORY[0x1E69E9840];
  v67.receiver = self;
  v67.super_class = SFPrivacyReportExplanationDetailItemView;
  v3 = [(SFPrivacyReportExplanationDetailItemView *)&v67 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(SFPrivacyReportExplanationDetailItemView *)v3 setPreservesSuperviewLayoutMargins:1];
    v5 = objc_alloc_init(MEMORY[0x1E69DD250]);
    hairline = v4->_hairline;
    v4->_hairline = v5;

    [(UIView *)v4->_hairline setTranslatesAutoresizingMaskIntoConstraints:0];
    tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    [(UIView *)v4->_hairline setBackgroundColor:tertiaryLabelColor];

    [(SFPrivacyReportExplanationDetailItemView *)v4 addSubview:v4->_hairline];
    v8 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v8;

    v10 = *MEMORY[0x1E69DDD80];
    v11 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
    [(UILabel *)v4->_titleLabel setFont:v11];

    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v4->_titleLabel setTextColor:labelColor];

    [(UILabel *)v4->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v4->_titleLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v4->_titleLabel setNumberOfLines:0];
    [(SFPrivacyReportExplanationDetailItemView *)v4 addSubview:v4->_titleLabel];
    v13 = objc_alloc_init(MEMORY[0x1E69DD168]);
    bodyTextView = v4->_bodyTextView;
    v4->_bodyTextView = v13;

    v15 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v10];
    [(UITextView *)v4->_bodyTextView setFont:v15];

    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UITextView *)v4->_bodyTextView setTextColor:secondaryLabelColor];

    [(UITextView *)v4->_bodyTextView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UITextView *)v4->_bodyTextView setAdjustsFontForContentSizeCategory:1];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UITextView *)v4->_bodyTextView setBackgroundColor:clearColor];

    [(UITextView *)v4->_bodyTextView setShowsVerticalScrollIndicator:0];
    [(UITextView *)v4->_bodyTextView setEditable:0];
    [(UITextView *)v4->_bodyTextView setSelectable:1];
    [(UITextView *)v4->_bodyTextView setScrollEnabled:0];
    textContainer = [(UITextView *)v4->_bodyTextView textContainer];
    [textContainer setLineFragmentPadding:0.0];

    [(UITextView *)v4->_bodyTextView _setInteractiveTextSelectionDisabled:1];
    [(UITextView *)v4->_bodyTextView setTextContainerInset:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
    v70 = *MEMORY[0x1E69DB650];
    linkColor = [MEMORY[0x1E69DC888] linkColor];
    v71[0] = linkColor;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v71 forKeys:&v70 count:1];
    [(UITextView *)v4->_bodyTextView setLinkTextAttributes:v20];

    [(UITextView *)v4->_bodyTextView setDelegate:v4];
    [(SFPrivacyReportExplanationDetailItemView *)v4 addSubview:v4->_bodyTextView];
    topAnchor = [(UILabel *)v4->_titleLabel topAnchor];
    topAnchor2 = [(SFPrivacyReportExplanationDetailItemView *)v4 topAnchor];
    v23 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];
    titleTopConstraint = v4->_titleTopConstraint;
    v4->_titleTopConstraint = v23;

    topAnchor3 = [(UIView *)v4->_hairline topAnchor];
    topAnchor4 = [(SFPrivacyReportExplanationDetailItemView *)v4 topAnchor];
    v27 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    hairlineTopConstraint = v4->_hairlineTopConstraint;
    v4->_hairlineTopConstraint = v27;

    layoutMarginsGuide = [(SFPrivacyReportExplanationDetailItemView *)v4 layoutMarginsGuide];
    v54 = MEMORY[0x1E696ACD8];
    v69[0] = v4->_hairlineTopConstraint;
    leadingAnchor = [(UIView *)v4->_hairline leadingAnchor];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v64 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v69[1] = v64;
    centerXAnchor = [(UIView *)v4->_hairline centerXAnchor];
    v59 = layoutMarginsGuide;
    centerXAnchor2 = [layoutMarginsGuide centerXAnchor];
    v61 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v69[2] = v61;
    heightAnchor = [(UIView *)v4->_hairline heightAnchor];
    _SFOnePixel();
    v58 = [heightAnchor constraintEqualToConstant:?];
    v69[3] = v58;
    leadingAnchor3 = [(UILabel *)v4->_titleLabel leadingAnchor];
    leadingAnchor4 = [layoutMarginsGuide leadingAnchor];
    v55 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v69[4] = v55;
    centerXAnchor3 = [(UILabel *)v4->_titleLabel centerXAnchor];
    centerXAnchor4 = [layoutMarginsGuide centerXAnchor];
    v51 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    v69[5] = v51;
    leadingAnchor5 = [(UITextView *)v4->_bodyTextView leadingAnchor];
    leadingAnchor6 = [layoutMarginsGuide leadingAnchor];
    v48 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    v69[6] = v48;
    centerXAnchor5 = [(UITextView *)v4->_bodyTextView centerXAnchor];
    centerXAnchor6 = [layoutMarginsGuide centerXAnchor];
    v45 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
    v69[7] = v45;
    v69[8] = v4->_titleTopConstraint;
    topAnchor5 = [(UITextView *)v4->_bodyTextView topAnchor];
    bottomAnchor = [(UILabel *)v4->_titleLabel bottomAnchor];
    v32 = [topAnchor5 constraintEqualToSystemSpacingBelowAnchor:bottomAnchor multiplier:0.5];
    v69[9] = v32;
    bottomAnchor2 = [(UITextView *)v4->_bodyTextView bottomAnchor];
    bottomAnchor3 = [(SFPrivacyReportExplanationDetailItemView *)v4 bottomAnchor];
    v35 = [bottomAnchor2 constraintLessThanOrEqualToAnchor:bottomAnchor3];
    v69[10] = v35;
    bottomAnchor4 = [(UITextView *)v4->_bodyTextView bottomAnchor];
    bottomAnchor5 = [(SFPrivacyReportExplanationDetailItemView *)v4 bottomAnchor];
    v38 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];

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

- (void)setUsesInsetStyle:(BOOL)style
{
  if (self->_usesInsetStyle != style)
  {
    self->_usesInsetStyle = style;
    [(SFPrivacyReportExplanationDetailItemView *)self _updateTopSpacing];
  }
}

- (void)setGridPosition:(unint64_t)position
{
  if (self->_gridPosition != position)
  {
    self->_gridPosition = position;
    [(UIView *)self->_hairline setHidden:(position & 1) == 0];

    [(SFPrivacyReportExplanationDetailItemView *)self _updateTopSpacing];
  }
}

- (void)setTitleLabelTopSpacing:(double)spacing
{
  if (self->_titleLabelTopSpacing != spacing)
  {
    self->_titleLabelTopSpacing = spacing;
    [(SFPrivacyReportExplanationDetailItemView *)self _updateTopConstraints];
  }
}

- (void)setHairlineTopSpacing:(double)spacing
{
  if (self->_hairlineTopSpacing != spacing)
  {
    self->_hairlineTopSpacing = spacing;
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
  isHidden = [(UIView *)self->_hairline isHidden];
  v4 = 0.0;
  v5 = 0.0;
  if (!isHidden)
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