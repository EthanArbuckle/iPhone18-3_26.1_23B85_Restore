@interface CarTwoPartLabel
- (CGSize)intrinsicContentSize;
- (CarTwoPartLabel)initWithTopLabelHorizontalCompressionResistancePriority:(float)a3 bottomLabelHorizontalCompressionResistancePriority:(float)a4;
- (double)_topToBottomBaselineConstant;
- (void)_setupConstraints;
- (void)layoutIfNeeded;
- (void)setPrimaryAttributedText:(id)a3;
- (void)setPrimaryText:(id)a3;
- (void)setSecondaryAccessibilityText:(id)a3;
- (void)setSecondaryText:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation CarTwoPartLabel

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = CarTwoPartLabel;
  v4 = a3;
  [(CarTwoPartLabel *)&v8 traitCollectionDidChange:v4];
  v5 = [(CarTwoPartLabel *)self traitCollection:v8.receiver];
  v6 = [v5 preferredContentSizeCategory];
  v7 = [v4 preferredContentSizeCategory];

  if (v6 != v7)
  {
    [(CarTwoPartLabel *)self _topToBottomBaselineConstant];
    [(NSLayoutConstraint *)self->_topToBottomConstraint setConstant:?];
  }
}

- (CGSize)intrinsicContentSize
{
  [(UILabel *)self->_topLabel intrinsicContentSize];
  v4 = v3;
  v6 = v5;
  [(UILabel *)self->_bottomLabel intrinsicContentSize];
  v8 = fmax(v4, v7);
  v10 = v6 + 10.0 + v9;
  result.height = v10;
  result.width = v8;
  return result;
}

- (void)setSecondaryAccessibilityText:(id)a3
{
  v5 = a3;
  secondaryAccessibilityText = self->_secondaryAccessibilityText;
  v9 = v5;
  v7 = secondaryAccessibilityText;
  if (v9 | v7)
  {
    v8 = [v9 isEqual:v7];

    if ((v8 & 1) == 0)
    {
      objc_storeStrong(&self->_secondaryAccessibilityText, a3);
      [(UILabel *)self->_bottomLabel setAccessibilityLabel:v9];
    }
  }
}

- (void)setSecondaryText:(id)a3
{
  v5 = a3;
  secondaryText = self->_secondaryText;
  v9 = v5;
  v7 = secondaryText;
  if (v9 | v7)
  {
    v8 = [v9 isEqual:v7];

    if ((v8 & 1) == 0)
    {
      objc_storeStrong(&self->_secondaryText, a3);
      [(UILabel *)self->_bottomLabel setText:v9];
      [(CarTwoPartLabel *)self invalidateIntrinsicContentSize];
    }
  }
}

- (void)setPrimaryAttributedText:(id)a3
{
  v5 = a3;
  primaryAttributedText = self->_primaryAttributedText;
  v9 = v5;
  v7 = primaryAttributedText;
  if (v9 | v7)
  {
    v8 = [v9 isEqual:v7];

    if ((v8 & 1) == 0)
    {
      objc_storeStrong(&self->_primaryAttributedText, a3);
      [(UILabel *)self->_topLabel setAttributedText:v9];
      [(CarTwoPartLabel *)self invalidateIntrinsicContentSize];
    }
  }
}

- (void)setPrimaryText:(id)a3
{
  v5 = a3;
  primaryText = self->_primaryText;
  v9 = v5;
  v7 = primaryText;
  if (v9 | v7)
  {
    v8 = [v9 isEqual:v7];

    if ((v8 & 1) == 0)
    {
      objc_storeStrong(&self->_primaryText, a3);
      [(UILabel *)self->_topLabel setText:v9];
      [(CarTwoPartLabel *)self invalidateIntrinsicContentSize];
    }
  }
}

- (void)_setupConstraints
{
  [(CarTwoPartLabel *)self _topToBottomBaselineConstant];
  v4 = v3;
  v5 = [(UILabel *)self->_bottomLabel firstBaselineAnchor];
  v6 = [(UILabel *)self->_topLabel lastBaselineAnchor];
  v7 = [v5 constraintEqualToAnchor:v6 constant:v4];
  topToBottomConstraint = self->_topToBottomConstraint;
  self->_topToBottomConstraint = v7;

  v31 = [(UILabel *)self->_topLabel firstBaselineAnchor];
  v30 = [(CarTwoPartLabel *)self topAnchor];
  v29 = [v31 constraintEqualToAnchor:v30 constant:20.0];
  v32[0] = v29;
  v28 = [(UILabel *)self->_topLabel leadingAnchor];
  v27 = [(CarTwoPartLabel *)self leadingAnchor];
  v26 = [v28 constraintEqualToAnchor:v27];
  v32[1] = v26;
  v25 = [(UILabel *)self->_topLabel trailingAnchor];
  v24 = [(CarTwoPartLabel *)self trailingAnchor];
  v23 = [v25 constraintEqualToAnchor:v24];
  v9 = self->_topToBottomConstraint;
  v32[2] = v23;
  v32[3] = v9;
  v22 = [(UILabel *)self->_bottomLabel leadingAnchor];
  v21 = [(UILabel *)self->_topLabel leadingAnchor];
  v20 = [v22 constraintEqualToAnchor:v21];
  v32[4] = v20;
  v10 = [(UILabel *)self->_bottomLabel leadingAnchor];
  v11 = [(CarTwoPartLabel *)self leadingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  v32[5] = v12;
  v13 = [(UILabel *)self->_bottomLabel trailingAnchor];
  v14 = [(CarTwoPartLabel *)self trailingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  v32[6] = v15;
  v16 = [(UILabel *)self->_bottomLabel bottomAnchor];
  v17 = [(CarTwoPartLabel *)self bottomAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];
  v32[7] = v18;
  v19 = [NSArray arrayWithObjects:v32 count:8];
  [NSLayoutConstraint activateConstraints:v19];
}

- (double)_topToBottomBaselineConstant
{
  v3 = [(UILabel *)self->_topLabel font];
  [v3 _scaledValueForValue:1 useLanguageAwareScaling:13.0];
  v5 = v4;
  v6 = [(UILabel *)self->_bottomLabel font];
  [v6 _scaledValueForValue:1 useLanguageAwareScaling:13.0];
  if (v5 > v7)
  {
    v8 = 56;
  }

  else
  {
    v8 = 64;
  }

  v9 = [*(&self->super.super.super.isa + v8) font];
  [v9 _scaledValueForValue:1 useLanguageAwareScaling:13.0];
  v11 = v10;

  return v11;
}

- (void)layoutIfNeeded
{
  v6.receiver = self;
  v6.super_class = CarTwoPartLabel;
  [(CarTwoPartLabel *)&v6 layoutIfNeeded];
  v3 = [(CarTwoPartLabel *)self window];

  if (v3)
  {
    if ([(UILabel *)self->_topLabel isTextTruncated])
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100ABB528;
      block[3] = &unk_101661B18;
      block[4] = self;
      if (qword_10195E3D0 != -1)
      {
        dispatch_once(&qword_10195E3D0, block);
      }
    }

    if ([(UILabel *)self->_bottomLabel isTextTruncated])
    {
      v4[0] = _NSConcreteStackBlock;
      v4[1] = 3221225472;
      v4[2] = sub_100ABB6EC;
      v4[3] = &unk_101661B18;
      v4[4] = self;
      if (qword_10195E3D8 != -1)
      {
        dispatch_once(&qword_10195E3D8, v4);
      }
    }
  }
}

- (CarTwoPartLabel)initWithTopLabelHorizontalCompressionResistancePriority:(float)a3 bottomLabelHorizontalCompressionResistancePriority:(float)a4
{
  v34.receiver = self;
  v34.super_class = CarTwoPartLabel;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v9 = [(CarTwoPartLabel *)&v34 initWithFrame:CGRectZero.origin.x, y, width, height];
  v10 = v9;
  if (v9)
  {
    [(CarTwoPartLabel *)v9 setAccessibilityIdentifier:@"CarTwoPartLabel"];
    v10->_topLabelPriority = a3;
    v10->_bottomLabelPriority = a4;
    v11 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    topLabel = v10->_topLabel;
    v10->_topLabel = v11;

    [(UILabel *)v10->_topLabel setAccessibilityIdentifier:@"TopLabel"];
    [(UILabel *)v10->_topLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v13) = 1148846080;
    [(UILabel *)v10->_topLabel setContentHuggingPriority:1 forAxis:v13];
    LODWORD(v14) = 1148846080;
    [(UILabel *)v10->_topLabel setContentCompressionResistancePriority:1 forAxis:v14];
    v15 = +[UIColor labelColor];
    [(UILabel *)v10->_topLabel setTextColor:v15];

    v16 = [UIFont _mapsCar_fontForTextStyle:UIFontTextStyleFootnote weight:UIFontWeightBold];
    [(UILabel *)v10->_topLabel setFont:v16];

    [(UILabel *)v10->_topLabel setAdjustsFontSizeToFitWidth:1];
    v17 = [(UILabel *)v10->_topLabel font];
    [v17 pointSize];
    v19 = v10->_topLabel;
    if (10.0 / v18 > 1.0)
    {
      [(UILabel *)v19 setMinimumScaleFactor:1.0];
    }

    else
    {
      v20 = [(UILabel *)v19 font];
      [v20 pointSize];
      [(UILabel *)v10->_topLabel setMinimumScaleFactor:10.0 / v21];
    }

    [(CarTwoPartLabel *)v10 addSubview:v10->_topLabel];
    v22 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    bottomLabel = v10->_bottomLabel;
    v10->_bottomLabel = v22;

    [(UILabel *)v10->_bottomLabel setAccessibilityIdentifier:@"BottomLabel"];
    [(UILabel *)v10->_bottomLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v24) = 1148846080;
    [(UILabel *)v10->_bottomLabel setContentHuggingPriority:1 forAxis:v24];
    LODWORD(v25) = 1148846080;
    [(UILabel *)v10->_bottomLabel setContentCompressionResistancePriority:1 forAxis:v25];
    v26 = +[UIColor _carSystemPrimaryColor];
    [(UILabel *)v10->_bottomLabel setTextColor:v26];

    v27 = [UIFont _mapsCar_fontForTextStyle:UIFontTextStyleCaption1 weight:UIFontWeightRegular];
    [(UILabel *)v10->_bottomLabel setFont:v27];

    [(UILabel *)v10->_bottomLabel setAdjustsFontSizeToFitWidth:1];
    v28 = [(UILabel *)v10->_bottomLabel font];
    [v28 pointSize];
    v30 = v10->_bottomLabel;
    if (10.0 / v29 > 1.0)
    {
      [(UILabel *)v30 setMinimumScaleFactor:1.0];
    }

    else
    {
      v31 = [(UILabel *)v30 font];
      [v31 pointSize];
      [(UILabel *)v10->_bottomLabel setMinimumScaleFactor:10.0 / v32];
    }

    if (_os_feature_enabled_impl())
    {
      [(UILabel *)v10->_topLabel setAdjustsFontForContentSizeCategory:1];
      [(UILabel *)v10->_topLabel setMinimumContentSizeCategory:UIContentSizeCategoryLarge];
      [(UILabel *)v10->_topLabel setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraLarge];
      [(UILabel *)v10->_bottomLabel setAdjustsFontForContentSizeCategory:1];
      [(UILabel *)v10->_bottomLabel setMinimumContentSizeCategory:UIContentSizeCategoryLarge];
      [(UILabel *)v10->_bottomLabel setMaximumContentSizeCategory:UIContentSizeCategoryExtraLarge];
    }

    [(CarTwoPartLabel *)v10 addSubview:v10->_bottomLabel];
    [(CarTwoPartLabel *)v10 _setupConstraints];
  }

  return v10;
}

@end