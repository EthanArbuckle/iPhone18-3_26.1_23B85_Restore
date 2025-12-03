@interface CarTwoPartLabel
- (CGSize)intrinsicContentSize;
- (CarTwoPartLabel)initWithTopLabelHorizontalCompressionResistancePriority:(float)priority bottomLabelHorizontalCompressionResistancePriority:(float)resistancePriority;
- (double)_topToBottomBaselineConstant;
- (void)_setupConstraints;
- (void)layoutIfNeeded;
- (void)setPrimaryAttributedText:(id)text;
- (void)setPrimaryText:(id)text;
- (void)setSecondaryAccessibilityText:(id)text;
- (void)setSecondaryText:(id)text;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation CarTwoPartLabel

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = CarTwoPartLabel;
  changeCopy = change;
  [(CarTwoPartLabel *)&v8 traitCollectionDidChange:changeCopy];
  v5 = [(CarTwoPartLabel *)self traitCollection:v8.receiver];
  preferredContentSizeCategory = [v5 preferredContentSizeCategory];
  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];

  if (preferredContentSizeCategory != preferredContentSizeCategory2)
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

- (void)setSecondaryAccessibilityText:(id)text
{
  textCopy = text;
  secondaryAccessibilityText = self->_secondaryAccessibilityText;
  v9 = textCopy;
  v7 = secondaryAccessibilityText;
  if (v9 | v7)
  {
    v8 = [v9 isEqual:v7];

    if ((v8 & 1) == 0)
    {
      objc_storeStrong(&self->_secondaryAccessibilityText, text);
      [(UILabel *)self->_bottomLabel setAccessibilityLabel:v9];
    }
  }
}

- (void)setSecondaryText:(id)text
{
  textCopy = text;
  secondaryText = self->_secondaryText;
  v9 = textCopy;
  v7 = secondaryText;
  if (v9 | v7)
  {
    v8 = [v9 isEqual:v7];

    if ((v8 & 1) == 0)
    {
      objc_storeStrong(&self->_secondaryText, text);
      [(UILabel *)self->_bottomLabel setText:v9];
      [(CarTwoPartLabel *)self invalidateIntrinsicContentSize];
    }
  }
}

- (void)setPrimaryAttributedText:(id)text
{
  textCopy = text;
  primaryAttributedText = self->_primaryAttributedText;
  v9 = textCopy;
  v7 = primaryAttributedText;
  if (v9 | v7)
  {
    v8 = [v9 isEqual:v7];

    if ((v8 & 1) == 0)
    {
      objc_storeStrong(&self->_primaryAttributedText, text);
      [(UILabel *)self->_topLabel setAttributedText:v9];
      [(CarTwoPartLabel *)self invalidateIntrinsicContentSize];
    }
  }
}

- (void)setPrimaryText:(id)text
{
  textCopy = text;
  primaryText = self->_primaryText;
  v9 = textCopy;
  v7 = primaryText;
  if (v9 | v7)
  {
    v8 = [v9 isEqual:v7];

    if ((v8 & 1) == 0)
    {
      objc_storeStrong(&self->_primaryText, text);
      [(UILabel *)self->_topLabel setText:v9];
      [(CarTwoPartLabel *)self invalidateIntrinsicContentSize];
    }
  }
}

- (void)_setupConstraints
{
  [(CarTwoPartLabel *)self _topToBottomBaselineConstant];
  v4 = v3;
  firstBaselineAnchor = [(UILabel *)self->_bottomLabel firstBaselineAnchor];
  lastBaselineAnchor = [(UILabel *)self->_topLabel lastBaselineAnchor];
  v7 = [firstBaselineAnchor constraintEqualToAnchor:lastBaselineAnchor constant:v4];
  topToBottomConstraint = self->_topToBottomConstraint;
  self->_topToBottomConstraint = v7;

  firstBaselineAnchor2 = [(UILabel *)self->_topLabel firstBaselineAnchor];
  topAnchor = [(CarTwoPartLabel *)self topAnchor];
  v29 = [firstBaselineAnchor2 constraintEqualToAnchor:topAnchor constant:20.0];
  v32[0] = v29;
  leadingAnchor = [(UILabel *)self->_topLabel leadingAnchor];
  leadingAnchor2 = [(CarTwoPartLabel *)self leadingAnchor];
  v26 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v32[1] = v26;
  trailingAnchor = [(UILabel *)self->_topLabel trailingAnchor];
  trailingAnchor2 = [(CarTwoPartLabel *)self trailingAnchor];
  v23 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v9 = self->_topToBottomConstraint;
  v32[2] = v23;
  v32[3] = v9;
  leadingAnchor3 = [(UILabel *)self->_bottomLabel leadingAnchor];
  leadingAnchor4 = [(UILabel *)self->_topLabel leadingAnchor];
  v20 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v32[4] = v20;
  leadingAnchor5 = [(UILabel *)self->_bottomLabel leadingAnchor];
  leadingAnchor6 = [(CarTwoPartLabel *)self leadingAnchor];
  v12 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v32[5] = v12;
  trailingAnchor3 = [(UILabel *)self->_bottomLabel trailingAnchor];
  trailingAnchor4 = [(CarTwoPartLabel *)self trailingAnchor];
  v15 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v32[6] = v15;
  bottomAnchor = [(UILabel *)self->_bottomLabel bottomAnchor];
  bottomAnchor2 = [(CarTwoPartLabel *)self bottomAnchor];
  v18 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v32[7] = v18;
  v19 = [NSArray arrayWithObjects:v32 count:8];
  [NSLayoutConstraint activateConstraints:v19];
}

- (double)_topToBottomBaselineConstant
{
  font = [(UILabel *)self->_topLabel font];
  [font _scaledValueForValue:1 useLanguageAwareScaling:13.0];
  v5 = v4;
  font2 = [(UILabel *)self->_bottomLabel font];
  [font2 _scaledValueForValue:1 useLanguageAwareScaling:13.0];
  if (v5 > v7)
  {
    v8 = 56;
  }

  else
  {
    v8 = 64;
  }

  font3 = [*(&self->super.super.super.isa + v8) font];
  [font3 _scaledValueForValue:1 useLanguageAwareScaling:13.0];
  v11 = v10;

  return v11;
}

- (void)layoutIfNeeded
{
  v6.receiver = self;
  v6.super_class = CarTwoPartLabel;
  [(CarTwoPartLabel *)&v6 layoutIfNeeded];
  window = [(CarTwoPartLabel *)self window];

  if (window)
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

- (CarTwoPartLabel)initWithTopLabelHorizontalCompressionResistancePriority:(float)priority bottomLabelHorizontalCompressionResistancePriority:(float)resistancePriority
{
  v34.receiver = self;
  v34.super_class = CarTwoPartLabel;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  height = [(CarTwoPartLabel *)&v34 initWithFrame:CGRectZero.origin.x, y, width, height];
  v10 = height;
  if (height)
  {
    [(CarTwoPartLabel *)height setAccessibilityIdentifier:@"CarTwoPartLabel"];
    v10->_topLabelPriority = priority;
    v10->_bottomLabelPriority = resistancePriority;
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
    font = [(UILabel *)v10->_topLabel font];
    [font pointSize];
    v19 = v10->_topLabel;
    if (10.0 / v18 > 1.0)
    {
      [(UILabel *)v19 setMinimumScaleFactor:1.0];
    }

    else
    {
      font2 = [(UILabel *)v19 font];
      [font2 pointSize];
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
    font3 = [(UILabel *)v10->_bottomLabel font];
    [font3 pointSize];
    v30 = v10->_bottomLabel;
    if (10.0 / v29 > 1.0)
    {
      [(UILabel *)v30 setMinimumScaleFactor:1.0];
    }

    else
    {
      font4 = [(UILabel *)v30 font];
      [font4 pointSize];
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