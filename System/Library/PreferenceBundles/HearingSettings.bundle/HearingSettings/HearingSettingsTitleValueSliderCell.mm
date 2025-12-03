@interface HearingSettingsTitleValueSliderCell
- (HearingSettingsTitleValueSliderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (double)sliderValue;
- (id)_accessibilityUserTestingChildren;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)sliderValueDidChange:(id)change;
@end

@implementation HearingSettingsTitleValueSliderCell

- (HearingSettingsTitleValueSliderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v38.receiver = self;
  v38.super_class = HearingSettingsTitleValueSliderCell;
  v4 = [(HearingSettingsTitleValueSliderCell *)&v38 initWithStyle:1 reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(HearingSettingsTitleValueSliderCell *)v4 setShouldHideTitle:1];
    v6 = [[HUITitleValueSlider alloc] initWithEffect:0];
    slider = v5->_slider;
    v5->_slider = v6;

    slider = [(HUITitleValueSlider *)v5->_slider slider];
    [slider setDrawsEndTicks:0];

    [(HUITitleValueSlider *)v5->_slider setIsAccessibilityElement:0];
    slider2 = [(HUITitleValueSlider *)v5->_slider slider];
    [slider2 setMinimumValue:0.0];

    slider3 = [(HUITitleValueSlider *)v5->_slider slider];
    LODWORD(v11) = 1.0;
    [slider3 setMaximumValue:v11];

    slider4 = [(HUITitleValueSlider *)v5->_slider slider];
    [slider4 setContinuous:1];

    slider5 = [(HUITitleValueSlider *)v5->_slider slider];
    [slider5 addTarget:v5 action:"sliderValueDidChange:" forControlEvents:4096];

    [(HUITitleValueSlider *)v5->_slider setTranslatesAutoresizingMaskIntoConstraints:0];
    v14 = +[UIColor systemGrayColor];
    v15 = [UIImage _systemImageNamed:@"speaker.fill"];
    v37 = [v15 imageWithTintColor:v14 renderingMode:1];

    v16 = [UIImage _systemImageNamed:@"speaker.wave.3.fill"];
    v36 = [v16 imageWithTintColor:v14 renderingMode:1];

    slider6 = [(HUITitleValueSlider *)v5->_slider slider];
    [slider6 setMinimumValueImage:v37];

    slider7 = [(HUITitleValueSlider *)v5->_slider slider];
    [slider7 setMaximumValueImage:v36];

    v19 = +[UIColor systemGrayColor];
    v20 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleCallout addingSymbolicTraits:0x8000 options:0];
    slider8 = [(HUITitleValueSlider *)v5->_slider slider];
    [slider8 setMinimumTrackTintColor:0];

    titleLabel = [(HUITitleValueSlider *)v5->_slider titleLabel];
    [titleLabel setTextColor:v19];

    valueLabel = [(HUITitleValueSlider *)v5->_slider valueLabel];
    [valueLabel setTextColor:v19];

    titleLabel2 = [(HUITitleValueSlider *)v5->_slider titleLabel];
    [v20 pointSize];
    v25 = [UIFont fontWithDescriptor:v20 size:?];
    [titleLabel2 setFont:v25];

    valueLabel2 = [(HUITitleValueSlider *)v5->_slider valueLabel];
    [v20 pointSize];
    v27 = [UIFont fontWithDescriptor:v20 size:?];
    [valueLabel2 setFont:v27];

    contentView = [(HearingSettingsTitleValueSliderCell *)v5 contentView];
    [contentView addSubview:v5->_slider];

    contentView2 = [(HearingSettingsTitleValueSliderCell *)v5 contentView];
    v30 = _NSDictionaryOfVariableBindings(@"_slider", v5->_slider, 0);
    v31 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-(8.0)-[_slider]-(8.0)-|", 0, 0, v30);
    [contentView2 addConstraints:v31];

    contentView3 = [(HearingSettingsTitleValueSliderCell *)v5 contentView];
    v33 = _NSDictionaryOfVariableBindings(@"_slider", v5->_slider, 0);
    v34 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-[_slider]-|", 0, 0, v33);
    [contentView3 addConstraints:v34];
  }

  return v5;
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v15.receiver = self;
  v15.super_class = HearingSettingsTitleValueSliderCell;
  specifierCopy = specifier;
  [(HearingSettingsTitleValueSliderCell *)&v15 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [(HUITitleValueSlider *)self->_slider slider:v15.receiver];
  performGetter = [specifierCopy performGetter];
  [performGetter doubleValue];
  *&v7 = v7;
  [v5 setValue:v7];

  titleLabel = [(HUITitleValueSlider *)self->_slider titleLabel];
  name = [specifierCopy name];
  [titleLabel setText:name];

  valueLabel = [(HUITitleValueSlider *)self->_slider valueLabel];
  v11 = objc_opt_class();
  performGetter2 = [specifierCopy performGetter];

  [performGetter2 doubleValue];
  *&v13 = v13;
  v14 = [v11 sliderLabelForValue:v13];
  [valueLabel setText:v14];
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
  performGetter = [WeakRetained performGetter];
  [performGetter doubleValue];
  v5 = v4;

  return v5;
}

- (void)sliderValueDidChange:(id)change
{
  slider = self->_slider;
  changeCopy = change;
  valueLabel = [(HUITitleValueSlider *)slider valueLabel];
  v7 = objc_opt_class();
  [changeCopy value];
  v8 = [v7 sliderLabelForValue:?];
  [valueLabel setText:v8];

  WeakRetained = objc_loadWeakRetained(&self->PSTableCell_opaque[OBJC_IVAR___PSTableCell__specifier]);
  [changeCopy value];
  v10 = v9;

  LODWORD(v11) = v10;
  v12 = [NSNumber numberWithFloat:v11];
  [WeakRetained performSetterWithValue:v12];
}

- (id)accessibilityLabel
{
  WeakRetained = objc_loadWeakRetained(&self->PSTableCell_opaque[OBJC_IVAR___PSTableCell__specifier]);
  name = [WeakRetained name];

  return name;
}

- (id)accessibilityValue
{
  valueLabel = [(HUITitleValueSlider *)self->_slider valueLabel];
  text = [valueLabel text];

  return text;
}

@end