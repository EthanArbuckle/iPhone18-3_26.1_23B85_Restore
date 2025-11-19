@interface HearingSettingsValueSliderCell
+ (BOOL)shouldAppearAsListForWidth:(double)a3;
- (CGPoint)accessibilityActivationPoint;
- (HearingSettingsValueSliderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (double)sliderValue;
- (id)description;
- (unint64_t)accessibilityTraits;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)a3;
- (void)sliderValueDidChange:(id)a3;
- (void)updateCenterLabel:(id)a3;
- (void)updateConstraints;
@end

@implementation HearingSettingsValueSliderCell

+ (BOOL)shouldAppearAsListForWidth:(double)a3
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 1;
  v5 = objc_alloc_init(UILabel);
  v6 = [UIFont _preferredFontForTextStyle:UIFontTextStyleBody maximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraLarge];
  [v5 setFont:v6];

  v7 = [objc_opt_class() valueLabels];
  v8 = [v7 count];

  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v9 = [a1 valueLabels];
  v10 = v8;
  if (!v8)
  {
    v10 = 3.0;
  }

  v11 = a3 / v10;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1E488;
  v15[3] = &unk_48FD8;
  v12 = v5;
  v16 = v12;
  v17 = &v20;
  v19 = v11;
  v18 = &v24;
  [v9 enumerateObjectsUsingBlock:v15];

  if (v21[3] >= a3)
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

- (HearingSettingsValueSliderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v40.receiver = self;
  v40.super_class = HearingSettingsValueSliderCell;
  v4 = [(HearingSettingsValueSliderCell *)&v40 initWithStyle:1 reuseIdentifier:a4];
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

    v9 = [(HearingSettingsValueSliderCell *)v4 contentView];
    [v9 addSubview:v4->_slider];

    if ([objc_opt_class() shouldForceLeftToRightLayout])
    {
      v10 = [(HearingSettingsValueSliderCell *)v4 contentView];
      [v10 setSemanticContentAttribute:3];
    }

    v11 = [objc_opt_class() valueLabels];
    if ([v11 count])
    {
      [(PSSegmentableSlider *)v4->_slider setSegmentCount:2];
      [(PSSegmentableSlider *)v4->_slider setSegmented:1];
      [(PSSegmentableSlider *)v4->_slider setLocksToSegment:0];
      v12 = [v11 firstObject];
      v13 = [v11 lastObject];
      if ([v11 count] < 3)
      {
        v14 = 0;
      }

      else
      {
        v14 = [v11 objectAtIndex:1];
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
      [(UILabel *)v4->_valueLeft setText:v12];
      if ([objc_opt_class() shouldForceLeftToRightLayout])
      {
        [(UILabel *)v4->_valueLeft setSemanticContentAttribute:3];
      }

      [(UILabel *)v4->_valueLeft setTranslatesAutoresizingMaskIntoConstraints:0];
      v24 = [(HearingSettingsValueSliderCell *)v4 contentView];
      [v24 addSubview:v4->_valueLeft];

      if ([v11 count] >= 3)
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
        v31 = [(HearingSettingsValueSliderCell *)v4 contentView];
        [v31 addSubview:v4->_valueCenter];
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
      [(UILabel *)v4->_valueRight setText:v13];
      if ([objc_opt_class() shouldForceLeftToRightLayout])
      {
        [(UILabel *)v4->_valueRight setSemanticContentAttribute:3];
      }

      [(UILabel *)v4->_valueRight setTranslatesAutoresizingMaskIntoConstraints:0];
      v38 = [(HearingSettingsValueSliderCell *)v4 contentView];
      [v38 addSubview:v4->_valueRight];

      [(HearingSettingsValueSliderCell *)v4 setNeedsUpdateConstraints];
    }

    else
    {
      v15 = [(HearingSettingsValueSliderCell *)v4 contentView];
      v16 = _NSDictionaryOfVariableBindings(@"_slider", v4->_slider, 0);
      v17 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-[_slider]-|", 0, 0, v16);
      [v15 addConstraints:v17];

      v12 = [(HearingSettingsValueSliderCell *)v4 contentView];
      v13 = _NSDictionaryOfVariableBindings(@"_slider", v4->_slider, 0);
      v14 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-[_slider]-|", 0, 0, v13);
      [v12 addConstraints:v14];
    }
  }

  return v4;
}

- (double)sliderValue
{
  WeakRetained = objc_loadWeakRetained(&self->PSTableCell_opaque[OBJC_IVAR___PSTableCell__specifier]);
  v3 = [WeakRetained performGetter];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (void)sliderValueDidChange:(id)a3
{
  v4 = OBJC_IVAR___PSTableCell__specifier;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->PSTableCell_opaque[v4]);
  [v5 value];
  v7 = v6;

  LODWORD(v8) = v7;
  v9 = [NSNumber numberWithFloat:v8];
  [WeakRetained performSetterWithValue:v9];
}

- (void)updateCenterLabel:(id)a3
{
  v4 = a3;
  valueCenter = self->_valueCenter;
  v13 = v4;
  if (v4 && !valueCenter)
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
    v12 = [(HearingSettingsValueSliderCell *)self contentView];
    [v12 addSubview:self->_valueCenter];

    [(HearingSettingsValueSliderCell *)self setNeedsUpdateConstraints];
    v4 = v13;
    valueCenter = self->_valueCenter;
  }

  [(UILabel *)valueCenter setText:v4];
}

- (void)updateConstraints
{
  v3 = [objc_opt_class() valueLabels];
  if ([v3 count])
  {
    v4 = [(HearingSettingsValueSliderCell *)self constraints];
    [(HearingSettingsValueSliderCell *)self removeConstraints:v4];

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

    if ([v3 count] == &dword_0 + 3 || (v6 = objc_opt_class(), -[HearingSettingsValueSliderCell frame](self, "frame"), objc_msgSend(v6, "shouldAppearAsListForWidth:", CGRectGetWidth(v38))))
    {
      v7 = [(HearingSettingsValueSliderCell *)self contentView];
      v8 = _NSDictionaryOfVariableBindings(@"_slider", self->_slider, 0);
      v9 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-[_slider]-|", v5, 0, v8);
      [v7 addConstraints:v9];

      v10 = [(HearingSettingsValueSliderCell *)self contentView];
      v11 = _NSDictionaryOfVariableBindings(@"_valueLeft, _slider", self->_valueLeft, self->_slider, 0);
      v12 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-[_valueLeft]-[_slider]-|", v5, 0, v11);
      [v10 addConstraints:v12];

      v13 = [(HearingSettingsValueSliderCell *)self contentView];
      v14 = [NSLayoutConstraint constraintWithItem:self->_valueRight attribute:10 relatedBy:0 toItem:self->_valueLeft attribute:10 multiplier:1.0 constant:0.0];
      [v13 addConstraint:v14];

      valueCenter = self->_valueCenter;
      v16 = [(HearingSettingsValueSliderCell *)self contentView];
      if (valueCenter)
      {
        v17 = self->_valueCenter;
        [(HearingSettingsValueSliderCell *)self contentView];
        v18 = v35 = v5;
        v19 = [NSLayoutConstraint constraintWithItem:v17 attribute:9 relatedBy:0 toItem:v18 attribute:9 multiplier:1.0 constant:0.0];
        [v16 addConstraint:v19];

        v20 = [(HearingSettingsValueSliderCell *)self contentView];
        v21 = [NSLayoutConstraint constraintWithItem:self->_valueCenter attribute:10 relatedBy:0 toItem:self->_valueLeft attribute:10 multiplier:1.0 constant:0.0];
        [v20 addConstraint:v21];

        v16 = [(HearingSettingsValueSliderCell *)self contentView];
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
      v25 = [(HearingSettingsValueSliderCell *)self contentView];
      v26 = _NSDictionaryOfVariableBindings(@"_valueLeft", self->_valueLeft, 0);
      v27 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-[_valueLeft]-|", v5, 0, v26);
      [v25 addConstraints:v27];

      v28 = [(HearingSettingsValueSliderCell *)self contentView];
      v29 = _NSDictionaryOfVariableBindings(@"_valueRight", self->_valueRight, 0);
      v30 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-[_valueRight]-|", v5, 0, v29);
      [v28 addConstraints:v30];

      v31 = [(HearingSettingsValueSliderCell *)self contentView];
      v32 = _NSDictionaryOfVariableBindings(@"_slider", self->_slider, 0);
      v33 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-[_slider]-|", v5, 0, v32);
      [v31 addConstraints:v33];

      v16 = [(HearingSettingsValueSliderCell *)self contentView];
      v22 = _NSDictionaryOfVariableBindings(@"_valueLeft, _slider, _valueRight", self->_valueLeft, self->_slider, self->_valueRight, 0);
      v23 = @"V:|-[_valueLeft]-[_slider]-[_valueRight]-|";
      v24 = v5;
    }

    v34 = [NSLayoutConstraint constraintsWithVisualFormat:v23 options:v24 metrics:0 views:v22];
    [v16 addConstraints:v34];
  }

  else
  {
    v36.receiver = self;
    v36.super_class = HearingSettingsValueSliderCell;
    [(HearingSettingsValueSliderCell *)&v36 updateConstraints];
  }
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v12.receiver = self;
  v12.super_class = HearingSettingsValueSliderCell;
  [(HearingSettingsValueSliderCell *)&v12 refreshCellContentsWithSpecifier:a3];
  v4 = [objc_opt_class() valueLabels];
  slider = self->_slider;
  [(HearingSettingsValueSliderCell *)self sliderValue];
  *&v6 = v6;
  [(PSSegmentableSlider *)slider setValue:v6];
  valueLeft = self->_valueLeft;
  v8 = [v4 firstObject];
  [(UILabel *)valueLeft setText:v8];

  valueRight = self->_valueRight;
  v10 = [v4 lastObject];
  [(UILabel *)valueRight setText:v10];

  if ([v4 count] < 3)
  {
    v11 = 0;
  }

  else
  {
    v11 = [v4 objectAtIndex:1];
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
  v3 = [(PSSegmentableSlider *)self->_slider accessibilityTraits];
  v4 = [(HearingSettingsValueSliderCell *)self specifier];
  v5 = [v4 propertyForKey:PSEnabledKey];
  v6 = [v5 BOOLValue];

  v7 = UIAccessibilityTraitNotEnabled;
  if (v6)
  {
    v7 = 0;
  }

  return v7 | v3;
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
  v9 = [v8 userInfo];
  v10 = [NSString stringWithFormat:@"%@ (%@) - [%@]", v7, v5, v9];

  return v10;
}

@end