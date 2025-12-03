@interface SFScanningCreditCardCollectionViewCell
+ (double)desiredCellWidth;
- (SFScanningCreditCardCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation SFScanningCreditCardCollectionViewCell

+ (double)desiredCellWidth
{
  if (desiredCellWidth_onceToken != -1)
  {
    +[SFScanningCreditCardCollectionViewCell desiredCellWidth];
  }

  return *&desiredCellWidth_cellWidth;
}

void __58__SFScanningCreditCardCollectionViewCell_desiredCellWidth__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E69DCAE0]);
  v1 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"creditcard.viewfinder"];
  v11 = [v0 initWithImage:v1];

  v2 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  v3 = MEMORY[0x1E69DB878];
  v4 = *MEMORY[0x1E69DDD00];
  v5 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:*MEMORY[0x1E69DDC70]];
  v6 = [v3 preferredFontForTextStyle:v4 compatibleWithTraitCollection:v5];
  [v2 setFont:v6];

  v7 = _WBSLocalizedString();
  [v2 setText:v7];

  [v11 intrinsicContentSize];
  v9 = v8;
  [v2 intrinsicContentSize];
  *&desiredCellWidth_cellWidth = v9 + v10 + 4.0 + 40.0;
}

- (SFScanningCreditCardCollectionViewCell)initWithFrame:(CGRect)frame
{
  v39[2] = *MEMORY[0x1E69E9840];
  v37.receiver = self;
  v37.super_class = SFScanningCreditCardCollectionViewCell;
  v3 = [(SFScanningCreditCardCollectionViewCell *)&v37 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(SFScanningCreditCardCollectionViewCell *)v3 setAccessibilityIdentifier:@"ScanCreditCardCell"];
    contentView = [(SFScanningCreditCardCollectionViewCell *)v4 contentView];
    v36 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [v36 _setContinuousCornerRadius:12.0];
    [(SFScanningCreditCardCollectionViewCell *)v4 setBackgroundView:v36];
    v6 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"creditcard.viewfinder"];
    v8 = [v6 initWithImage:v7];
    scanningImageView = v4->_scanningImageView;
    v4->_scanningImageView = v8;

    v10 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    scanCardLabel = v4->_scanCardLabel;
    v4->_scanCardLabel = v10;

    v12 = MEMORY[0x1E69DB878];
    v13 = *MEMORY[0x1E69DDD00];
    v14 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:*MEMORY[0x1E69DDC70]];
    v15 = [v12 preferredFontForTextStyle:v13 compatibleWithTraitCollection:v14];
    [(UILabel *)v4->_scanCardLabel setFont:v15];

    v16 = _WBSLocalizedString();
    [(UILabel *)v4->_scanCardLabel setText:v16];

    v17 = objc_alloc(MEMORY[0x1E69DCF90]);
    v39[0] = v4->_scanningImageView;
    v39[1] = v4->_scanCardLabel;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:2];
    v19 = [v17 initWithArrangedSubviews:v18];

    [v19 setAxis:0];
    [v19 setDistribution:0];
    [v19 setAlignment:3];
    [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v19 setSpacing:4.0];
    v20 = contentView;
    [contentView addSubview:v19];
    v31 = MEMORY[0x1E696ACD8];
    centerXAnchor = [v19 centerXAnchor];
    centerXAnchor2 = [contentView centerXAnchor];
    v32 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v38[0] = v32;
    centerYAnchor = [v19 centerYAnchor];
    v33 = v20;
    centerYAnchor2 = [v20 centerYAnchor];
    v23 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v38[1] = v23;
    widthAnchor = [v19 widthAnchor];
    layoutMarginsGuide = [v20 layoutMarginsGuide];
    widthAnchor2 = [layoutMarginsGuide widthAnchor];
    v27 = [widthAnchor constraintLessThanOrEqualToAnchor:widthAnchor2];
    v38[2] = v27;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:3];
    [v31 activateConstraints:v28];

    v29 = v4;
  }

  return v4;
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  isHighlighted = [(SFScanningCreditCardCollectionViewCell *)self isHighlighted];
  v8.receiver = self;
  v8.super_class = SFScanningCreditCardCollectionViewCell;
  [(SFScanningCreditCardCollectionViewCell *)&v8 setHighlighted:highlightedCopy];
  if (isHighlighted != highlightedCopy)
  {
    if (highlightedCopy)
    {
      [MEMORY[0x1E69DC888] systemFillColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] clearColor];
    }
    v6 = ;
    backgroundView = [(SFScanningCreditCardCollectionViewCell *)self backgroundView];
    [backgroundView setBackgroundColor:v6];
  }
}

@end