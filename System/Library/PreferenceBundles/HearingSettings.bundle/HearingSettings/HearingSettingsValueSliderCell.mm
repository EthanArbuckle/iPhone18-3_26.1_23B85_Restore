@interface HearingSettingsValueSliderCell
+ (BOOL)shouldAppearAsListForWidth:(double)width;
- (CGPoint)accessibilityActivationPoint;
- (HearingSettingsValueSliderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (double)sliderValue;
- (id)description;
- (unint64_t)accessibilityTraits;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)sliderValueDidChange:(id)change;
- (void)updateCenterLabel:(id)label;
- (void)updateConstraints;
@end

@implementation HearingSettingsValueSliderCell

+ (BOOL)shouldAppearAsListForWidth:(double)width
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 1;
  v5 = objc_alloc_init(UILabel);
  v6 = [UIFont _preferredFontForTextStyle:UIFontTextStyleBody maximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraLarge];
  [v5 setFont:v6];

  valueLabels = [objc_opt_class() valueLabels];
  v8 = [valueLabels count];

  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  valueLabels2 = [self valueLabels];
  v10 = v8;
  if (!v8)
  {
    v10 = 3.0;
  }

  v11 = width / v10;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1E488;
  v15[3] = &unk_48FD8;
  v12 = v5;
  v16 = v12;
  v17 = &v20;
  v19 = v11;
  v18 = &v24;
  [valueLabels2 enumerateObjectsUsingBlock:v15];

  if (v21[3] >= width)
  {
    v13 = 1;
    *(v25 + 24) = 1;
  }

  else
  {
    v13 = *(v25 + 24);
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);
  return v13 & 1;
}

- (HearingSettingsValueSliderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v40.receiver = self;
  v40.super_class = HearingSettingsValueSliderCell;
  v4 = [(HearingSettingsValueSliderCell *)&v40 initWithStyle:1 reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc_init(PSSegmentableSlider);
    slider = v4->_slider;
    v4->_slider = v5;

    [(PSSegmentableSlider *)v4->_slider setIsAccessibilityElement:0];
    [(PSSegmentableSlider *)v4->_slider setMinimumValue:0.0];
    LODWORD(v7) = 1.0;
    [(PSSegmentableSlider *)v4->_slider setMaximumValue:v7];
    [(PSSegmentableSlider *)v4->_slider setContinuous:1];
    [(PSSegmentableSlider *)v4->_slider addTarget:v4 action:"sliderValueDidChange:" forControlEvents:4096];
    [(PSSegmentableSlider *)v4->_slider setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v8) = 0.5;
    [(PSSegmentableSlider *)v4->_slider setValue:v8];
    if ([objc_opt_class() shouldForceLeftToRightLayout])
    {
      [(PSSegmentableSlider *)v4->_slider setSemanticContentAttribute:3];
    }

    contentView = [(HearingSettingsValueSliderCell *)v4 contentView];
    [contentView addSubview:v4->_slider];

    if ([objc_opt_class() shouldForceLeftToRightLayout])
    {
      contentView2 = [(HearingSettingsValueSliderCell *)v4 contentView];
      [contentView2 setSemanticContentAttribute:3];
    }

    valueLabels = [objc_opt_class() valueLabels];
    if ([valueLabels count])
    {
      [(PSSegmentableSlider *)v4->_slider setSegmentCount:2];
      [(PSSegmentableSlider *)v4->_slider setSegmented:1];
      [(PSSegmentableSlider *)v4->_slider setLocksToSegment:0];
      firstObject = [valueLabels firstObject];
      lastObject = [valueLabels lastObject];
      if ([valueLabels count] < 3)
      {
        v14 = 0;
      }

      else
      {
        v14 = [valueLabels objectAtIndex:1];
      }

      v18 = objc_alloc_init(UILabel);
      valueLeft = v4->_valueLeft;
      v4->_valueLeft = v18;

      v20 = v4->_valueLeft;
      v21 = +[UIColor clearColor];
      [(UILabel *)v20 setBackgroundColor:v21];

      v22 = v4->_valueLeft;
      v23 = [UIFont _preferredFontForTextStyle:UIFontTextStyleBody maximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraLarge];
      [(UILabel *)v22 setFont:v23];

      [(UILabel *)v4->_valueLeft setTextAlignment:0];
      [(UILabel *)v4->_valueLeft setText:firstObject];
      if ([objc_opt_class() shouldForceLeftToRightLayout])
      {
        [(UILabel *)v4->_valueLeft setSemanticContentAttribute:3];
      }

      [(UILabel *)v4->_valueLeft setTranslatesAutoresizingMaskIntoConstraints:0];
      contentView3 = [(HearingSettingsValueSliderCell *)v4 contentView];
      [contentView3 addSubview:v4->_valueLeft];

      if ([valueLabels count] >= 3)
      {
        v25 = objc_alloc_init(UILabel);
        valueCenter = v4->_valueCenter;
        v4->_valueCenter = v25;

        v27 = v4->_valueCenter;
        v28 = +[UIColor clearColor];
        [(UILabel *)v27 setBackgroundColor:v28];

        v29 = v4->_valueCenter;
        v30 = [UIFont _preferredFontForTextStyle:UIFontTextStyleBody maximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraLarge];
        [(UILabel *)v29 setFont:v30];

        [(UILabel *)v4->_valueCenter setTextAlignment:1];
        [(UILabel *)v4->_valueCenter setText:v14];
        [(UILabel *)v4->_valueCenter setTranslatesAutoresizingMaskIntoConstraints:0];
        contentView4 = [(HearingSettingsValueSliderCell *)v4 contentView];
        [contentView4 addSubview:v4->_valueCenter];
      }

      v32 = objc_alloc_init(UILabel);
      valueRight = v4->_valueRight;
      v4->_valueRight = v32;

      v34 = v4->_valueRight;
      v35 = +[UIColor clearColor];
      [(UILabel *)v34 setBackgroundColor:v35];

      v36 = v4->_valueRight;
      v37 = [UIFont _preferredFontForTextStyle:UIFontTextStyleBody maximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraLarge];
      [(UILabel *)v36 setFont:v37];

      [(UILabel *)v4->_valueRight setTextAlignment:2];
      [(UILabel *)v4->_valueRight setText:lastObject];
      if ([objc_opt_class() shouldForceLeftToRightLayout])
      {
        [(UILabel *)v4->_valueRight setSemanticContentAttribute:3];
      }

      [(UILabel *)v4->_valueRight setTranslatesAutoresizingMaskIntoConstraints:0];
      contentView5 = [(HearingSettingsValueSliderCell *)v4 contentView];
      [contentView5 addSubview:v4->_valueRight];

      [(HearingSettingsValueSliderCell *)v4 setNeedsUpdateConstraints];
    }

    else
    {
      contentView6 = [(HearingSettingsValueSliderCell *)v4 contentView];
      v16 = _NSDictionaryOfVariableBindings(@"_slider", v4->_slider, 0);
      v17 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-[_slider]-|", 0, 0, v16);
      [contentView6 addConstraints:v17];

      firstObject = [(HearingSettingsValueSliderCell *)v4 contentView];
      lastObject = _NSDictionaryOfVariableBindings(@"_slider", v4->_slider, 0);
      v14 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-[_slider]-|", 0, 0, lastObject);
      [firstObject addConstraints:v14];
    }
  }

  return v4;
}

- (double)sliderValue
{
  WeakRetained = objc_loadWeakRetained(&self->PSTableCell_opaque[OBJC_IVAR___PSTableCell__specifier]);
  performGetter = [WeakRetained performGetter];
  [performGetter doubleValue];
  v5 = v4;

  return v5;
}

- (void)sliderValueDidChange:(id)change
{
  v4 = OBJC_IVAR___PSTableCell__specifier;
  changeCopy = change;
  WeakRetained = objc_loadWeakRetained(&self->PSTableCell_opaque[v4]);
  [changeCopy value];
  v7 = v6;

  LODWORD(v8) = v7;
  v9 = [NSNumber numberWithFloat:v8];
  [WeakRetained performSetterWithValue:v9];
}

- (void)updateCenterLabel:(id)label
{
  labelCopy = label;
  valueCenter = self->_valueCenter;
  v13 = labelCopy;
  if (labelCopy && !valueCenter)
  {
    v6 = objc_alloc_init(UILabel);
    v7 = self->_valueCenter;
    self->_valueCenter = v6;

    v8 = self->_valueCenter;
    v9 = +[UIColor clearColor];
    [(UILabel *)v8 setBackgroundColor:v9];

    v10 = self->_valueCenter;
    v11 = [UIFont _preferredFontForTextStyle:UIFontTextStyleBody maximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraLarge];
    [(UILabel *)v10 setFont:v11];

    [(UILabel *)self->_valueCenter setTextAlignment:1];
    [(UILabel *)self->_valueCenter setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(HearingSettingsValueSliderCell *)self contentView];
    [contentView addSubview:self->_valueCenter];

    [(HearingSettingsValueSliderCell *)self setNeedsUpdateConstraints];
    labelCopy = v13;
    valueCenter = self->_valueCenter;
  }

  [(UILabel *)valueCenter setText:labelCopy];
}

- (void)updateConstraints
{
  valueLabels = [objc_opt_class() valueLabels];
  if ([valueLabels count])
  {
    constraints = [(HearingSettingsValueSliderCell *)self constraints];
    [(HearingSettingsValueSliderCell *)self removeConstraints:constraints];

    v37.receiver = self;
    v37.super_class = HearingSettingsValueSliderCell;
    [(HearingSettingsValueSliderCell *)&v37 updateConstraints];
    if ([objc_opt_class() shouldForceLeftToRightLayout])
    {
      v5 = 0x10000;
    }

    else
    {
      v5 = 0;
    }

    if ([valueLabels count] == &dword_0 + 3 || (v6 = objc_opt_class(), -[HearingSettingsValueSliderCell frame](self, "frame"), objc_msgSend(v6, "shouldAppearAsListForWidth:", CGRectGetWidth(v38))))
    {
      contentView = [(HearingSettingsValueSliderCell *)self contentView];
      v8 = _NSDictionaryOfVariableBindings(@"_slider", self->_slider, 0);
      v9 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-[_slider]-|", v5, 0, v8);
      [contentView addConstraints:v9];

      contentView2 = [(HearingSettingsValueSliderCell *)self contentView];
      v11 = _NSDictionaryOfVariableBindings(@"_valueLeft, _slider", self->_valueLeft, self->_slider, 0);
      v12 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-[_valueLeft]-[_slider]-|", v5, 0, v11);
      [contentView2 addConstraints:v12];

      contentView3 = [(HearingSettingsValueSliderCell *)self contentView];
      v14 = [NSLayoutConstraint constraintWithItem:self->_valueRight attribute:10 relatedBy:0 toItem:self->_valueLeft attribute:10 multiplier:1.0 constant:0.0];
      [contentView3 addConstraint:v14];

      valueCenter = self->_valueCenter;
      contentView4 = [(HearingSettingsValueSliderCell *)self contentView];
      if (valueCenter)
      {
        v17 = self->_valueCenter;
        [(HearingSettingsValueSliderCell *)self contentView];
        v18 = v35 = v5;
        v19 = [NSLayoutConstraint constraintWithItem:v17 attribute:9 relatedBy:0 toItem:v18 attribute:9 multiplier:1.0 constant:0.0];
        [contentView4 addConstraint:v19];

        contentView5 = [(HearingSettingsValueSliderCell *)self contentView];
        v21 = [NSLayoutConstraint constraintWithItem:self->_valueCenter attribute:10 relatedBy:0 toItem:self->_valueLeft attribute:10 multiplier:1.0 constant:0.0];
        [contentView5 addConstraint:v21];

        contentView4 = [(HearingSettingsValueSliderCell *)self contentView];
        v22 = _NSDictionaryOfVariableBindings(@"_valueLeft, _valueRight", self->_valueLeft, self->_valueRight, 0);
        v23 = @"H:|-[_valueLeft(100.0)]-[_valueRight(100.0)]-|";
        v24 = v35;
      }

      else
      {
        v22 = _NSDictionaryOfVariableBindings(@"_valueLeft, _valueRight", self->_valueLeft, self->_valueRight, 0);
        v23 = @"H:|-[_valueLeft(150.0)]-[_valueRight(150.0)]-|";
        v24 = v5;
      }
    }

    else
    {
      contentView6 = [(HearingSettingsValueSliderCell *)self contentView];
      v26 = _NSDictionaryOfVariableBindings(@"_valueLeft", self->_valueLeft, 0);
      v27 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-[_valueLeft]-|", v5, 0, v26);
      [contentView6 addConstraints:v27];

      contentView7 = [(HearingSettingsValueSliderCell *)self contentView];
      v29 = _NSDictionaryOfVariableBindings(@"_valueRight", self->_valueRight, 0);
      v30 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-[_valueRight]-|", v5, 0, v29);
      [contentView7 addConstraints:v30];

      contentView8 = [(HearingSettingsValueSliderCell *)self contentView];
      v32 = _NSDictionaryOfVariableBindings(@"_slider", self->_slider, 0);
      v33 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-[_slider]-|", v5, 0, v32);
      [contentView8 addConstraints:v33];

      contentView4 = [(HearingSettingsValueSliderCell *)self contentView];
      v22 = _NSDictionaryOfVariableBindings(@"_valueLeft, _slider, _valueRight", self->_valueLeft, self->_slider, self->_valueRight, 0);
      v23 = @"V:|-[_valueLeft]-[_slider]-[_valueRight]-|";
      v24 = v5;
    }

    v34 = [NSLayoutConstraint constraintsWithVisualFormat:v23 options:v24 metrics:0 views:v22];
    [contentView4 addConstraints:v34];
  }

  else
  {
    v36.receiver = self;
    v36.super_class = HearingSettingsValueSliderCell;
    [(HearingSettingsValueSliderCell *)&v36 updateConstraints];
  }
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v12.receiver = self;
  v12.super_class = HearingSettingsValueSliderCell;
  [(HearingSettingsValueSliderCell *)&v12 refreshCellContentsWithSpecifier:specifier];
  valueLabels = [objc_opt_class() valueLabels];
  slider = self->_slider;
  [(HearingSettingsValueSliderCell *)self sliderValue];
  *&v6 = v6;
  [(PSSegmentableSlider *)slider setValue:v6];
  valueLeft = self->_valueLeft;
  firstObject = [valueLabels firstObject];
  [(UILabel *)valueLeft setText:firstObject];

  valueRight = self->_valueRight;
  lastObject = [valueLabels lastObject];
  [(UILabel *)valueRight setText:lastObject];

  if ([valueLabels count] < 3)
  {
    v11 = 0;
  }

  else
  {
    v11 = [valueLabels objectAtIndex:1];
  }

  [(HearingSettingsValueSliderCell *)self updateCenterLabel:v11];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = HearingSettingsValueSliderCell;
  [(HearingSettingsValueSliderCell *)&v4 prepareForReuse];
  v3.receiver = self;
  v3.super_class = HearingSettingsValueSliderCell;
  [(HearingSettingsValueSliderCell *)&v3 updateConstraints];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = HearingSettingsValueSliderCell;
  [(HearingSettingsValueSliderCell *)&v4 layoutSubviews];
  [(HearingSettingsValueSliderCell *)self sliderValue];
  *&v3 = v3;
  [(PSSegmentableSlider *)self->_slider setValue:v3];
}

- (unint64_t)accessibilityTraits
{
  accessibilityTraits = [(PSSegmentableSlider *)self->_slider accessibilityTraits];
  specifier = [(HearingSettingsValueSliderCell *)self specifier];
  v5 = [specifier propertyForKey:PSEnabledKey];
  bOOLValue = [v5 BOOLValue];

  v7 = UIAccessibilityTraitNotEnabled;
  if (bOOLValue)
  {
    v7 = 0;
  }

  return v7 | accessibilityTraits;
}

- (CGPoint)accessibilityActivationPoint
{
  [(PSSegmentableSlider *)self->_slider accessibilityActivationPoint];
  result.y = v3;
  result.x = v2;
  return result;
}

- (id)description
{
  v3 = OBJC_IVAR___PSTableCell__specifier;
  WeakRetained = objc_loadWeakRetained(&self->PSTableCell_opaque[OBJC_IVAR___PSTableCell__specifier]);
  v5 = [WeakRetained propertyForKey:PSKeyNameKey];

  if (!v5)
  {
    v6 = objc_loadWeakRetained(&self->PSTableCell_opaque[v3]);
    v5 = [v6 propertyForKey:PSIDKey];
  }

  v12.receiver = self;
  v12.super_class = HearingSettingsValueSliderCell;
  v7 = [(HearingSettingsValueSliderCell *)&v12 description];
  v8 = objc_loadWeakRetained(&self->PSTableCell_opaque[v3]);
  userInfo = [v8 userInfo];
  v10 = [NSString stringWithFormat:@"%@ (%@) - [%@]", v7, v5, userInfo];

  return v10;
}

@end