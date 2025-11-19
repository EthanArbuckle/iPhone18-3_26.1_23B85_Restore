@interface ASVTrackingStateStatusLabel
- (ASVTrackingStateStatusLabel)initWithFrame:(CGRect)a3 controlStyle:(int64_t)a4;
- (NSString)text;
- (void)setControlStyle:(int64_t)a3;
- (void)setText:(id)a3;
@end

@implementation ASVTrackingStateStatusLabel

- (ASVTrackingStateStatusLabel)initWithFrame:(CGRect)a3 controlStyle:(int64_t)a4
{
  v40[4] = *MEMORY[0x277D85DE8];
  v39.receiver = self;
  v39.super_class = ASVTrackingStateStatusLabel;
  v4 = [(ASVTrackingStateStatusLabel *)&v39 initWithFrame:a4, a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v5 = v4;
  if (v4)
  {
    [(ASVTrackingStateStatusLabel *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = objc_alloc(MEMORY[0x277D756B8]);
    v7 = [v6 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    label = v5->_label;
    v5->_label = v7;

    [(UILabel *)v5->_label setContentMode:7];
    LODWORD(v9) = 1132134400;
    [(UILabel *)v5->_label setContentHuggingPriority:0 forAxis:v9];
    LODWORD(v10) = 1132134400;
    [(UILabel *)v5->_label setContentHuggingPriority:1 forAxis:v10];
    [(UILabel *)v5->_label setTextAlignment:1];
    [(UILabel *)v5->_label setLineBreakMode:4];
    [(UILabel *)v5->_label setNumberOfLines:1];
    v11 = MEMORY[0x277D74300];
    v12 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
    v13 = [v12 fontDescriptor];
    v14 = [v13 fontDescriptorWithSymbolicTraits:2];
    v15 = [v11 fontWithDescriptor:v14 size:0.0];
    [(UILabel *)v5->_label setFont:v15];

    [(UILabel *)v5->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v5->_label setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v5->_label setAdjustsFontSizeToFitWidth:1];
    [(ASVTrackingStateStatusLabel *)v5 addSubview:v5->_label];
    v16 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.AssetViewer"];
    v17 = [v16 localizedStringForKey:@"LOW_DETAIL" value:&stru_285305818 table:0];
    v18 = [(ASVTrackingStateStatusLabel *)v5 label];
    [v18 setText:v17];

    v19 = [(ASVTrackingStateStatusLabel *)v5 widthAnchor];
    v20 = [(ASVTrackingStateStatusLabel *)v5 label];
    [v20 intrinsicContentSize];
    v22 = [v19 constraintEqualToConstant:v21 + 36.0];
    viewWidthConstraint = v5->_viewWidthConstraint;
    v5->_viewWidthConstraint = v22;

    [(NSLayoutConstraint *)v5->_viewWidthConstraint setActive:1];
    v33 = MEMORY[0x277CCAAD0];
    v38 = [(UILabel *)v5->_label leadingAnchor];
    v37 = [(ASVTrackingStateStatusLabel *)v5 leadingAnchor];
    v36 = [v38 constraintEqualToAnchor:v37];
    v40[0] = v36;
    v35 = [(UILabel *)v5->_label trailingAnchor];
    v34 = [(ASVTrackingStateStatusLabel *)v5 trailingAnchor];
    v24 = [v35 constraintEqualToAnchor:v34];
    v40[1] = v24;
    v25 = [(UILabel *)v5->_label topAnchor];
    v26 = [(ASVTrackingStateStatusLabel *)v5 topAnchor];
    v27 = [v25 constraintEqualToAnchor:v26];
    v40[2] = v27;
    v28 = [(UILabel *)v5->_label bottomAnchor];
    v29 = [(ASVTrackingStateStatusLabel *)v5 bottomAnchor];
    v30 = [v28 constraintEqualToAnchor:v29];
    v40[3] = v30;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:4];
    [v33 activateConstraints:v31];
  }

  return v5;
}

- (void)setText:(id)a3
{
  v4 = a3;
  v5 = [(ASVTrackingStateStatusLabel *)self label];
  [v5 setText:v4];

  v7 = [(ASVTrackingStateStatusLabel *)self label];
  [v7 intrinsicContentSize];
  [(NSLayoutConstraint *)self->_viewWidthConstraint setConstant:v6 + 36.0];
}

- (NSString)text
{
  v2 = [(ASVTrackingStateStatusLabel *)self label];
  v3 = [v2 text];

  return v3;
}

- (void)setControlStyle:(int64_t)a3
{
  if (self->_controlStyle != a3)
  {
    self->_controlStyle = a3;
    v5 = [(ASVTrackingStateStatusLabel *)self blurredBackgroundView];
    [v5 setControlStyle:a3];
  }
}

@end