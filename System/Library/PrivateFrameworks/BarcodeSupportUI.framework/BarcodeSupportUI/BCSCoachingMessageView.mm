@interface BCSCoachingMessageView
- (BCSCoachingMessageView)init;
- (void)layoutSubviews;
- (void)setHidden:(BOOL)a3;
- (void)setObscuredByOverlay:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation BCSCoachingMessageView

- (BCSCoachingMessageView)init
{
  v52[8] = *MEMORY[0x277D85DE8];
  v51.receiver = self;
  v51.super_class = BCSCoachingMessageView;
  v2 = [(BCSCoachingMessageView *)&v51 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D756B8]);
    v4 = _BCSLocalizedString();
    [(UILabel *)v3 setText:v4];

    v5 = [MEMORY[0x277D75348] whiteColor];
    [(UILabel *)v3 setTextColor:v5];

    [(UILabel *)v3 setClipsToBounds:0];
    [(UILabel *)v3 setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)v3 setMinimumScaleFactor:0.1];
    [(UILabel *)v3 setLineBreakMode:2];
    [(UILabel *)v3 setTextAlignment:1];
    [(UILabel *)v3 setNumberOfLines:1];
    [(UILabel *)v3 setBaselineAdjustment:1];
    v6 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769D0]];
    v7 = [v6 fontDescriptorWithSymbolicTraits:2];

    v8 = [MEMORY[0x277D74300] fontWithDescriptor:v7 size:0.0];
    [(UILabel *)v3 setFont:v8];

    fontDescriptor = v2->_fontDescriptor;
    v2->_fontDescriptor = v7;
    v50 = v7;

    [(UILabel *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    coachingMessageLabel = v2->_coachingMessageLabel;
    v2->_coachingMessageLabel = v3;
    v11 = v3;

    v12 = objc_alloc(MEMORY[0x277D75D68]);
    v13 = [MEMORY[0x277D75210] effectWithStyle:2];
    v14 = [v12 initWithEffect:v13];

    [(UIVisualEffectView *)v14 _setContinuousCornerRadius:14.0];
    [(UIVisualEffectView *)v14 setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = [(UIVisualEffectView *)v14 contentView];
    [v15 addSubview:v11];

    coachingMessageContainerView = v2->_coachingMessageContainerView;
    v2->_coachingMessageContainerView = v14;
    v17 = v14;

    [(BCSCoachingMessageView *)v2 addSubview:v17];
    v18 = [(UILabel *)v11 topAnchor];
    v19 = [(UIVisualEffectView *)v17 topAnchor];
    v20 = [v18 constraintEqualToAnchor:v19 constant:0.0];
    coachingLabelTopAnchorConstraint = v2->_coachingLabelTopAnchorConstraint;
    v2->_coachingLabelTopAnchorConstraint = v20;

    v22 = [(UILabel *)v11 bottomAnchor];
    v23 = [(UIVisualEffectView *)v17 bottomAnchor];
    v24 = [v22 constraintEqualToAnchor:v23 constant:0.0];
    coachingLabelBottomAnchorConstraint = v2->_coachingLabelBottomAnchorConstraint;
    v2->_coachingLabelBottomAnchorConstraint = v24;

    v41 = MEMORY[0x277CCAAD0];
    v39 = v11;
    v49 = [(UILabel *)v11 leadingAnchor];
    v48 = [(UIVisualEffectView *)v17 leadingAnchor];
    v47 = [v49 constraintEqualToAnchor:v48 constant:15.0];
    v52[0] = v47;
    v46 = [(UILabel *)v11 trailingAnchor];
    v45 = [(UIVisualEffectView *)v17 trailingAnchor];
    v44 = [v46 constraintEqualToAnchor:v45 constant:-15.0];
    v52[1] = v44;
    v52[2] = v2->_coachingLabelTopAnchorConstraint;
    v52[3] = v2->_coachingLabelBottomAnchorConstraint;
    v43 = [(UIVisualEffectView *)v17 leadingAnchor];
    v42 = [(BCSCoachingMessageView *)v2 leadingAnchor];
    v40 = [v43 constraintEqualToAnchor:v42];
    v52[4] = v40;
    v38 = [(UIVisualEffectView *)v17 trailingAnchor];
    v37 = [(BCSCoachingMessageView *)v2 trailingAnchor];
    v26 = [v38 constraintEqualToAnchor:v37];
    v52[5] = v26;
    v27 = [(UIVisualEffectView *)v17 topAnchor];
    v28 = [(BCSCoachingMessageView *)v2 topAnchor];
    v29 = [v27 constraintEqualToAnchor:v28];
    v52[6] = v29;
    v30 = [(UIVisualEffectView *)v17 bottomAnchor];
    v31 = [(BCSCoachingMessageView *)v2 bottomAnchor];
    v32 = [v30 constraintEqualToAnchor:v31];
    v52[7] = v32;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:8];
    [v41 activateConstraints:v33];

    v34 = v2;
  }

  v35 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)setHidden:(BOOL)a3
{
  if (self->_contentHidden == !a3)
  {
    self->_contentHidden = a3;
    [(BCSCoachingMessageView *)self setNeedsLayout];
  }
}

- (void)setObscuredByOverlay:(BOOL)a3
{
  if (self->_obscuredByOverlay == !a3)
  {
    self->_obscuredByOverlay = a3;
    [(BCSCoachingMessageView *)self setNeedsLayout];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v11.receiver = self;
  v11.super_class = BCSCoachingMessageView;
  v4 = a3;
  [(BCSCoachingMessageView *)&v11 traitCollectionDidChange:v4];
  v5 = [(BCSCoachingMessageView *)self traitCollection:v11.receiver];
  v6 = [v5 preferredContentSizeCategory];
  v7 = [v4 preferredContentSizeCategory];

  LOBYTE(v4) = [v6 isEqualToString:v7];
  if ((v4 & 1) == 0)
  {
    v8 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769D0]];
    v9 = [v8 fontDescriptorWithSymbolicTraits:2];
    fontDescriptor = self->_fontDescriptor;
    self->_fontDescriptor = v9;

    [(BCSCoachingMessageView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v24.receiver = self;
  v24.super_class = BCSCoachingMessageView;
  [(BCSCoachingMessageView *)&v24 layoutSubviews];
  v3 = [(BCSCoachingMessageView *)self window];
  v4 = [v3 windowScene];
  if (([v4 interfaceOrientation] - 3) > 1)
  {
    v6 = 0;
  }

  else
  {
    v5 = [(BCSCoachingMessageView *)self traitCollection];
    v6 = [v5 userInterfaceIdiom] == 0;
  }

  v7 = [MEMORY[0x277D759A0] mainScreen];
  [v7 _referenceBounds];
  v9 = v8;

  v10 = 4.0;
  if (v9 > 320.0)
  {
    v10 = 8.0;
  }

  v11 = 20.0;
  if (v9 <= 320.0)
  {
    v11 = 18.0;
  }

  if (v6)
  {
    v12 = 8.0;
  }

  else
  {
    v12 = 14.0;
  }

  v13 = 15.0;
  if (v6)
  {
    v13 = v10;
    v14 = v11;
  }

  else
  {
    v14 = 0.0;
  }

  [(NSLayoutConstraint *)self->_coachingLabelTopAnchorConstraint setConstant:v13];
  [(NSLayoutConstraint *)self->_coachingLabelTopAnchorConstraint constant];
  [(NSLayoutConstraint *)self->_coachingLabelBottomAnchorConstraint setConstant:-v15];
  [(UIVisualEffectView *)self->_coachingMessageContainerView _setContinuousCornerRadius:v12];
  v16 = [(UIFontDescriptor *)self->_fontDescriptor fontAttributes];
  v17 = [v16 objectForKeyedSubscript:*MEMORY[0x277D74350]];
  [v17 doubleValue];
  v19 = v18;

  if (v19 >= v14)
  {
    v20 = v14;
  }

  else
  {
    v20 = v19;
  }

  v21 = [MEMORY[0x277D74300] fontWithDescriptor:self->_fontDescriptor size:v20];
  [(UILabel *)self->_coachingMessageLabel setFont:v21];

  if (self->_contentHidden)
  {
    v22 = 1;
  }

  else
  {
    v22 = v6 & self->_obscuredByOverlay;
  }

  v23.receiver = self;
  v23.super_class = BCSCoachingMessageView;
  [(BCSCoachingMessageView *)&v23 setHidden:v22];
}

@end