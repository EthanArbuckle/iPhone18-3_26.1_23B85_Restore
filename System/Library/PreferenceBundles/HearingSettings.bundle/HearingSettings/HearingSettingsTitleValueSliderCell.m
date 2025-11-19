@interface HearingSettingsTitleValueSliderCell
- (HearingSettingsTitleValueSliderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (double)sliderValue;
- (id)_accessibilityUserTestingChildren;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (void)refreshCellContentsWithSpecifier:(id)a3;
- (void)sliderValueDidChange:(id)a3;
@end

@implementation HearingSettingsTitleValueSliderCell

- (HearingSettingsTitleValueSliderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v38.receiver = self;
  v38.super_class = HearingSettingsTitleValueSliderCell;
  v4 = [(HearingSettingsTitleValueSliderCell *)&v38 initWithStyle:1 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(HearingSettingsTitleValueSliderCell *)v4 setShouldHideTitle:1];
    v6 = [[HUITitleValueSlider alloc] initWithEffect:0];
    slider = v5->_slider;
    v5->_slider = v6;

    v8 = [(HUITitleValueSlider *)v5->_slider slider];
    [v8 setDrawsEndTicks:0];

    [(HUITitleValueSlider *)v5->_slider setIsAccessibilityElement:0];
    v9 = [(HUITitleValueSlider *)v5->_slider slider];
    [v9 setMinimumValue:0.0];

    v10 = [(HUITitleValueSlider *)v5->_slider slider];
    LODWORD(v11) = 1.0;
    [v10 setMaximumValue:v11];

    v12 = [(HUITitleValueSlider *)v5->_slider slider];
    [v12 setContinuous:1];

    v13 = [(HUITitleValueSlider *)v5->_slider slider];
    [v13 addTarget:v5 action:"sliderValueDidChange:" forControlEvents:4096];

    [(HUITitleValueSlider *)v5->_slider setTranslatesAutoresizingMaskIntoConstraints:0];
    v14 = +[UIColor systemGrayColor];
    v15 = [UIImage _systemImageNamed:@"speaker.fill"];
    v37 = [v15 imageWithTintColor:v14 renderingMode:1];

    v16 = [UIImage _systemImageNamed:@"speaker.wave.3.fill"];
    v36 = [v16 imageWithTintColor:v14 renderingMode:1];

    v17 = [(HUITitleValueSlider *)v5->_slider slider];
    [v17 setMinimumValueImage:v37];

    v18 = [(HUITitleValueSlider *)v5->_slider slider];
    [v18 setMaximumValueImage:v36];

    v19 = +[UIColor systemGrayColor];
    v20 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleCallout addingSymbolicTraits:0x8000 options:0];
    v21 = [(HUITitleValueSlider *)v5->_slider slider];
    [v21 setMinimumTrackTintColor:0];

    v22 = [(HUITitleValueSlider *)v5->_slider titleLabel];
    [v22 setTextColor:v19];

    v23 = [(HUITitleValueSlider *)v5->_slider valueLabel];
    [v23 setTextColor:v19];

    v24 = [(HUITitleValueSlider *)v5->_slider titleLabel];
    [v20 pointSize];
    v25 = [UIFont fontWithDescriptor:v20 size:?];
    [v24 setFont:v25];

    v26 = [(HUITitleValueSlider *)v5->_slider valueLabel];
    [v20 pointSize];
    v27 = [UIFont fontWithDescriptor:v20 size:?];
    [v26 setFont:v27];

    v28 = [(HearingSettingsTitleValueSliderCell *)v5 contentView];
    [v28 addSubview:v5->_slider];

    v29 = [(HearingSettingsTitleValueSliderCell *)v5 contentView];
    v30 = _NSDictionaryOfVariableBindings(@"_slider", v5->_slider, 0);
    v31 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-(8.0)-[_slider]-(8.0)-|", 0, 0, v30);
    [v29 addConstraints:v31];

    v32 = [(HearingSettingsTitleValueSliderCell *)v5 contentView];
    v33 = _NSDictionaryOfVariableBindings(@"_slider", v5->_slider, 0);
    v34 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-[_slider]-|", 0, 0, v33);
    [v32 addConstraints:v34];
  }

  return v5;
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v15.receiver = self;
  v15.super_class = HearingSettingsTitleValueSliderCell;
  v4 = a3;
  [(HearingSettingsTitleValueSliderCell *)&v15 refreshCellContentsWithSpecifier:v4];
  v5 = [(HUITitleValueSlider *)self->_slider slider:v15.receiver];
  v6 = [v4 performGetter];
  [v6 doubleValue];
  *&v7 = v7;
  [v5 setValue:v7];

  v8 = [(HUITitleValueSlider *)self->_slider titleLabel];
  v9 = [v4 name];
  [v8 setText:v9];

  v10 = [(HUITitleValueSlider *)self->_slider valueLabel];
  v11 = objc_opt_class();
  v12 = [v4 performGetter];

  [v12 doubleValue];
  *&v13 = v13;
  v14 = [v11 sliderLabelForValue:v13];
  [v10 setText:v14];
}

- (id)_accessibilityUserTestingChildren
{
  slider = self->_slider;
  v2 = [NSArray arrayWithObjects:&slider count:1];

  return v2;
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
  slider = self->_slider;
  v5 = a3;
  v6 = [(HUITitleValueSlider *)slider valueLabel];
  v7 = objc_opt_class();
  [v5 value];
  v8 = [v7 sliderLabelForValue:?];
  [v6 setText:v8];

  WeakRetained = objc_loadWeakRetained(&self->PSTableCell_opaque[OBJC_IVAR___PSTableCell__specifier]);
  [v5 value];
  v10 = v9;

  LODWORD(v11) = v10;
  v12 = [NSNumber numberWithFloat:v11];
  [WeakRetained performSetterWithValue:v12];
}

- (id)accessibilityLabel
{
  WeakRetained = objc_loadWeakRetained(&self->PSTableCell_opaque[OBJC_IVAR___PSTableCell__specifier]);
  v3 = [WeakRetained name];

  return v3;
}

- (id)accessibilityValue
{
  v2 = [(HUITitleValueSlider *)self->_slider valueLabel];
  v3 = [v2 text];

  return v3;
}

@end