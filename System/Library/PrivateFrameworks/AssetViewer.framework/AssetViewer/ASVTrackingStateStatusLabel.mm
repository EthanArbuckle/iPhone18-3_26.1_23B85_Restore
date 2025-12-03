@interface ASVTrackingStateStatusLabel
- (ASVTrackingStateStatusLabel)initWithFrame:(CGRect)frame controlStyle:(int64_t)style;
- (NSString)text;
- (void)setControlStyle:(int64_t)style;
- (void)setText:(id)text;
@end

@implementation ASVTrackingStateStatusLabel

- (ASVTrackingStateStatusLabel)initWithFrame:(CGRect)frame controlStyle:(int64_t)style
{
  v40[4] = *MEMORY[0x277D85DE8];
  v39.receiver = self;
  v39.super_class = ASVTrackingStateStatusLabel;
  v4 = [(ASVTrackingStateStatusLabel *)&v39 initWithFrame:style, frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    fontDescriptor = [v12 fontDescriptor];
    v14 = [fontDescriptor fontDescriptorWithSymbolicTraits:2];
    v15 = [v11 fontWithDescriptor:v14 size:0.0];
    [(UILabel *)v5->_label setFont:v15];

    [(UILabel *)v5->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v5->_label setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v5->_label setAdjustsFontSizeToFitWidth:1];
    [(ASVTrackingStateStatusLabel *)v5 addSubview:v5->_label];
    v16 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.AssetViewer"];
    v17 = [v16 localizedStringForKey:@"LOW_DETAIL" value:&stru_285305818 table:0];
    label = [(ASVTrackingStateStatusLabel *)v5 label];
    [label setText:v17];

    widthAnchor = [(ASVTrackingStateStatusLabel *)v5 widthAnchor];
    label2 = [(ASVTrackingStateStatusLabel *)v5 label];
    [label2 intrinsicContentSize];
    v22 = [widthAnchor constraintEqualToConstant:v21 + 36.0];
    viewWidthConstraint = v5->_viewWidthConstraint;
    v5->_viewWidthConstraint = v22;

    [(NSLayoutConstraint *)v5->_viewWidthConstraint setActive:1];
    v33 = MEMORY[0x277CCAAD0];
    leadingAnchor = [(UILabel *)v5->_label leadingAnchor];
    leadingAnchor2 = [(ASVTrackingStateStatusLabel *)v5 leadingAnchor];
    v36 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v40[0] = v36;
    trailingAnchor = [(UILabel *)v5->_label trailingAnchor];
    trailingAnchor2 = [(ASVTrackingStateStatusLabel *)v5 trailingAnchor];
    v24 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v40[1] = v24;
    topAnchor = [(UILabel *)v5->_label topAnchor];
    topAnchor2 = [(ASVTrackingStateStatusLabel *)v5 topAnchor];
    v27 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v40[2] = v27;
    bottomAnchor = [(UILabel *)v5->_label bottomAnchor];
    bottomAnchor2 = [(ASVTrackingStateStatusLabel *)v5 bottomAnchor];
    v30 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v40[3] = v30;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:4];
    [v33 activateConstraints:v31];
  }

  return v5;
}

- (void)setText:(id)text
{
  textCopy = text;
  label = [(ASVTrackingStateStatusLabel *)self label];
  [label setText:textCopy];

  label2 = [(ASVTrackingStateStatusLabel *)self label];
  [label2 intrinsicContentSize];
  [(NSLayoutConstraint *)self->_viewWidthConstraint setConstant:v6 + 36.0];
}

- (NSString)text
{
  label = [(ASVTrackingStateStatusLabel *)self label];
  text = [label text];

  return text;
}

- (void)setControlStyle:(int64_t)style
{
  if (self->_controlStyle != style)
  {
    self->_controlStyle = style;
    blurredBackgroundView = [(ASVTrackingStateStatusLabel *)self blurredBackgroundView];
    [blurredBackgroundView setControlStyle:style];
  }
}

@end