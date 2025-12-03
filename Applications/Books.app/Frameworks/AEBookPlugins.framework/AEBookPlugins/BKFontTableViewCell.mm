@interface BKFontTableViewCell
- (BKFontTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (NSString)labelText;
- (UIImageView)selectionView;
- (UILabel)label;
- (UIView)buttonContainerView;
- (unint64_t)accessibilityTraits;
- (void)_setEffectiveLabelFont;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)prepareForReuse;
- (void)setFont:(id)font;
- (void)setLabelFont:(id)font;
- (void)setLabelText:(id)text;
@end

@implementation BKFontTableViewCell

- (BKFontTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v52.receiver = self;
  v52.super_class = BKFontTableViewCell;
  v4 = [(BKFontTableViewCell *)&v52 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    contentView = [(BKFontTableViewCell *)v4 contentView];
    label = [(BKFontTableViewCell *)v5 label];
    selectionView = [(BKFontTableViewCell *)v5 selectionView];
    buttonContainerView = [(BKFontTableViewCell *)v5 buttonContainerView];
    [contentView addSubview:label];
    [contentView addSubview:selectionView];
    [contentView addSubview:buttonContainerView];
    [label setTranslatesAutoresizingMaskIntoConstraints:0];
    [selectionView setTranslatesAutoresizingMaskIntoConstraints:0];
    [buttonContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = label;
    [label setNumberOfLines:0];
    v11 = [NSLayoutConstraint constraintWithItem:buttonContainerView attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:0.0];
    buttonContainerWidthConstraint = v5->_buttonContainerWidthConstraint;
    v5->_buttonContainerWidthConstraint = v11;

    +[IMRadialProgressButton minimumBoundingBox];
    v14 = v13;
    v15 = _BKFontCellAppearanceFontHeight() * 0.55;
    if (v14 < v15)
    {
      v14 = v15;
    }

    image = [selectionView image];
    [image size];
    v18 = v17;

    widthAnchor = [selectionView widthAnchor];
    v50 = [widthAnchor constraintEqualToConstant:v18];
    v53[0] = v50;
    leadingAnchor = [selectionView leadingAnchor];
    layoutMarginsGuide = [contentView layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v45 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v53[1] = v45;
    v47 = selectionView;
    centerYAnchor = [selectionView centerYAnchor];
    centerYAnchor2 = [contentView centerYAnchor];
    v41 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v53[2] = v41;
    leadingAnchor3 = [v10 leadingAnchor];
    trailingAnchor = [selectionView trailingAnchor];
    v37 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:8.0];
    v53[3] = v37;
    v44 = v10;
    centerYAnchor3 = [v10 centerYAnchor];
    centerYAnchor4 = [contentView centerYAnchor];
    v32 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v53[4] = v32;
    trailingAnchor2 = [v10 trailingAnchor];
    leadingAnchor4 = [buttonContainerView leadingAnchor];
    v29 = [trailingAnchor2 constraintEqualToAnchor:leadingAnchor4 constant:-8.0];
    v53[5] = v29;
    heightAnchor = [buttonContainerView heightAnchor];
    v20 = [heightAnchor constraintEqualToConstant:v14];
    v53[6] = v20;
    v35 = buttonContainerView;
    centerYAnchor5 = [buttonContainerView centerYAnchor];
    v36 = contentView;
    centerYAnchor6 = [contentView centerYAnchor];
    v23 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
    v53[7] = v23;
    trailingAnchor3 = [buttonContainerView trailingAnchor];
    layoutMarginsGuide2 = [contentView layoutMarginsGuide];
    trailingAnchor4 = [layoutMarginsGuide2 trailingAnchor];
    v27 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v53[8] = v27;
    v53[9] = v5->_buttonContainerWidthConstraint;
    v40 = [NSArray arrayWithObjects:v53 count:10];

    [NSLayoutConstraint activateConstraints:v40];
  }

  return v5;
}

- (void)dealloc
{
  [(BKFontTableViewCell *)self setFont:0];
  v3.receiver = self;
  v3.super_class = BKFontTableViewCell;
  [(BKFontTableViewCell *)&v3 dealloc];
}

- (NSString)labelText
{
  label = [(BKFontTableViewCell *)self label];
  text = [label text];

  return text;
}

- (void)setLabelText:(id)text
{
  textCopy = text;
  label = [(BKFontTableViewCell *)self label];
  [label setText:textCopy];

  [(BKFontTableViewCell *)self _setEffectiveLabelFont];
}

- (void)setLabelFont:(id)font
{
  fontCopy = font;
  if (self->_labelFont != fontCopy)
  {
    v6 = fontCopy;
    objc_storeStrong(&self->_labelFont, font);
    [(BKFontTableViewCell *)self _setEffectiveLabelFont];
    fontCopy = v6;
  }
}

- (void)_setEffectiveLabelFont
{
  labelFont = [(BKFontTableViewCell *)self labelFont];
  labelText = [(BKFontTableViewCell *)self labelText];
  v4 = [labelFont bkEffectiveFontForText:labelText];
  label = [(BKFontTableViewCell *)self label];
  [label setFont:v4];
}

- (void)setFont:(id)font
{
  fontCopy = font;
  font = self->_font;
  if (font != fontCopy)
  {
    v9 = fontCopy;
    [(BKFont *)font removeObserver:self forKeyPath:@"displayName" context:off_22C1F0];
    objc_storeStrong(&self->_font, font);
    [(BKFont *)self->_font addObserver:self forKeyPath:@"displayName" options:0 context:off_22C1F0];
    font = [(BKFontTableViewCell *)self font];
    displayName = [font displayName];
    [(BKFontTableViewCell *)self setLabelText:displayName];

    fontCopy = v9;
  }

  _objc_release_x1(font, fontCopy);
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (off_22C1F0 == context)
  {
    v8 = [(BKFontTableViewCell *)self font:path];
    displayName = [v8 displayName];
    [(BKFontTableViewCell *)self setLabelText:displayName];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = BKFontTableViewCell;
    [(BKFontTableViewCell *)&v9 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (UILabel)label
{
  label = self->_label;
  if (!label)
  {
    v4 = [UILabel alloc];
    [(BKFontTableViewCell *)self frame];
    v5 = [v4 initWithFrame:?];
    v6 = self->_label;
    self->_label = v5;

    v7 = +[UIColor clearColor];
    [(UILabel *)self->_label setBackgroundColor:v7];

    [(UILabel *)self->_label setHighlightedTextColor:0];
    [(UILabel *)self->_label setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)self->_label setMinimumFontSize:14.0];
    label = self->_label;
  }

  return label;
}

- (UIImageView)selectionView
{
  selectionView = self->_selectionView;
  if (!selectionView)
  {
    v4 = [UIImageSymbolConfiguration configurationWithTextStyle:UIFontTextStyleBody];
    v5 = [UIImage systemImageNamed:@"checkmark"];
    v6 = [v5 bc_imageWithConfiguration:v4 limitedToContentSizeCategory:UIContentSizeCategoryAccessibilityExtraLarge];

    v7 = [v6 imageWithRenderingMode:2];

    v8 = [[UIImageView alloc] initWithImage:v7];
    v9 = self->_selectionView;
    self->_selectionView = v8;

    selectionView = self->_selectionView;
  }

  return selectionView;
}

- (UIView)buttonContainerView
{
  buttonContainerView = self->_buttonContainerView;
  if (!buttonContainerView)
  {
    v4 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v5 = self->_buttonContainerView;
    self->_buttonContainerView = v4;

    buttonContainerView = self->_buttonContainerView;
  }

  return buttonContainerView;
}

- (void)prepareForReuse
{
  v6.receiver = self;
  v6.super_class = BKFontTableViewCell;
  [(BKFontTableViewCell *)&v6 prepareForReuse];
  label = [(BKFontTableViewCell *)self label];
  [label setText:0];

  buttonContainerView = [(BKFontTableViewCell *)self buttonContainerView];
  subviews = [buttonContainerView subviews];
  [subviews makeObjectsPerformSelector:"removeFromSuperview"];
}

- (unint64_t)accessibilityTraits
{
  v5.receiver = self;
  v5.super_class = BKFontTableViewCell;
  accessibilityTraits = [(BKFontTableViewCell *)&v5 accessibilityTraits];
  if ([(UIImageView *)self->_selectionView isHidden])
  {
    return accessibilityTraits & ~UIAccessibilityTraitSelected;
  }

  else
  {
    return UIAccessibilityTraitSelected | accessibilityTraits;
  }
}

@end