@interface BKFontTableViewCell
- (BKFontTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (NSString)labelText;
- (UIImageView)selectionView;
- (UILabel)label;
- (UIView)buttonContainerView;
- (unint64_t)accessibilityTraits;
- (void)_setEffectiveLabelFont;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)prepareForReuse;
- (void)setFont:(id)a3;
- (void)setLabelFont:(id)a3;
- (void)setLabelText:(id)a3;
@end

@implementation BKFontTableViewCell

- (BKFontTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v52.receiver = self;
  v52.super_class = BKFontTableViewCell;
  v4 = [(BKFontTableViewCell *)&v52 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(BKFontTableViewCell *)v4 contentView];
    v7 = [(BKFontTableViewCell *)v5 label];
    v8 = [(BKFontTableViewCell *)v5 selectionView];
    v9 = [(BKFontTableViewCell *)v5 buttonContainerView];
    [v6 addSubview:v7];
    [v6 addSubview:v8];
    [v6 addSubview:v9];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = v7;
    [v7 setNumberOfLines:0];
    v11 = [NSLayoutConstraint constraintWithItem:v9 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:0.0];
    buttonContainerWidthConstraint = v5->_buttonContainerWidthConstraint;
    v5->_buttonContainerWidthConstraint = v11;

    +[IMRadialProgressButton minimumBoundingBox];
    v14 = v13;
    v15 = _BKFontCellAppearanceFontHeight() * 0.55;
    if (v14 < v15)
    {
      v14 = v15;
    }

    v16 = [v8 image];
    [v16 size];
    v18 = v17;

    v51 = [v8 widthAnchor];
    v50 = [v51 constraintEqualToConstant:v18];
    v53[0] = v50;
    v48 = [v8 leadingAnchor];
    v49 = [v6 layoutMarginsGuide];
    v46 = [v49 leadingAnchor];
    v45 = [v48 constraintEqualToAnchor:v46];
    v53[1] = v45;
    v47 = v8;
    v43 = [v8 centerYAnchor];
    v42 = [v6 centerYAnchor];
    v41 = [v43 constraintEqualToAnchor:v42];
    v53[2] = v41;
    v39 = [v10 leadingAnchor];
    v38 = [v8 trailingAnchor];
    v37 = [v39 constraintEqualToAnchor:v38 constant:8.0];
    v53[3] = v37;
    v44 = v10;
    v34 = [v10 centerYAnchor];
    v33 = [v6 centerYAnchor];
    v32 = [v34 constraintEqualToAnchor:v33];
    v53[4] = v32;
    v31 = [v10 trailingAnchor];
    v30 = [v9 leadingAnchor];
    v29 = [v31 constraintEqualToAnchor:v30 constant:-8.0];
    v53[5] = v29;
    v19 = [v9 heightAnchor];
    v20 = [v19 constraintEqualToConstant:v14];
    v53[6] = v20;
    v35 = v9;
    v21 = [v9 centerYAnchor];
    v36 = v6;
    v22 = [v6 centerYAnchor];
    v23 = [v21 constraintEqualToAnchor:v22];
    v53[7] = v23;
    v24 = [v9 trailingAnchor];
    v25 = [v6 layoutMarginsGuide];
    v26 = [v25 trailingAnchor];
    v27 = [v24 constraintEqualToAnchor:v26];
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
  v2 = [(BKFontTableViewCell *)self label];
  v3 = [v2 text];

  return v3;
}

- (void)setLabelText:(id)a3
{
  v4 = a3;
  v5 = [(BKFontTableViewCell *)self label];
  [v5 setText:v4];

  [(BKFontTableViewCell *)self _setEffectiveLabelFont];
}

- (void)setLabelFont:(id)a3
{
  v5 = a3;
  if (self->_labelFont != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_labelFont, a3);
    [(BKFontTableViewCell *)self _setEffectiveLabelFont];
    v5 = v6;
  }
}

- (void)_setEffectiveLabelFont
{
  v6 = [(BKFontTableViewCell *)self labelFont];
  v3 = [(BKFontTableViewCell *)self labelText];
  v4 = [v6 bkEffectiveFontForText:v3];
  v5 = [(BKFontTableViewCell *)self label];
  [v5 setFont:v4];
}

- (void)setFont:(id)a3
{
  v5 = a3;
  font = self->_font;
  if (font != v5)
  {
    v9 = v5;
    [(BKFont *)font removeObserver:self forKeyPath:@"displayName" context:off_22C1F0];
    objc_storeStrong(&self->_font, a3);
    [(BKFont *)self->_font addObserver:self forKeyPath:@"displayName" options:0 context:off_22C1F0];
    v7 = [(BKFontTableViewCell *)self font];
    v8 = [v7 displayName];
    [(BKFontTableViewCell *)self setLabelText:v8];

    v5 = v9;
  }

  _objc_release_x1(font, v5);
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (off_22C1F0 == a6)
  {
    v8 = [(BKFontTableViewCell *)self font:a3];
    v7 = [v8 displayName];
    [(BKFontTableViewCell *)self setLabelText:v7];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = BKFontTableViewCell;
    [(BKFontTableViewCell *)&v9 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
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
  v3 = [(BKFontTableViewCell *)self label];
  [v3 setText:0];

  v4 = [(BKFontTableViewCell *)self buttonContainerView];
  v5 = [v4 subviews];
  [v5 makeObjectsPerformSelector:"removeFromSuperview"];
}

- (unint64_t)accessibilityTraits
{
  v5.receiver = self;
  v5.super_class = BKFontTableViewCell;
  v3 = [(BKFontTableViewCell *)&v5 accessibilityTraits];
  if ([(UIImageView *)self->_selectionView isHidden])
  {
    return v3 & ~UIAccessibilityTraitSelected;
  }

  else
  {
    return UIAccessibilityTraitSelected | v3;
  }
}

@end