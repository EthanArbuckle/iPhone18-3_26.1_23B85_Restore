@interface AXSensitivitySliderCell
+ (id)specifierWithSensitivityNames:(id)names minimumValue:(float)value maximumValue:(float)maximumValue target:(id)target set:(SEL)set get:(SEL)get;
- (AXSensitivitySliderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (id)accessibilityValue;
- (int64_t)_sliderLevel;
- (int64_t)_sliderLevelForValue:(float)value;
- (int64_t)sensitivitySliderLevel;
- (void)_accessibilityIncrementOrDecrement:(BOOL)decrement;
- (void)layoutSubviews;
- (void)setAccessibilityLabel:(id)label;
- (void)setSensitivitySliderLevel:(int64_t)level;
- (void)setSpecifier:(id)specifier;
@end

@implementation AXSensitivitySliderCell

+ (id)specifierWithSensitivityNames:(id)names minimumValue:(float)value maximumValue:(float)maximumValue target:(id)target set:(SEL)set get:(SEL)get
{
  namesCopy = names;
  targetCopy = target;
  v15 = [PSSpecifier preferenceSpecifierNamed:0 target:targetCopy set:set get:get detail:0 cell:5 edit:0];
  [v15 setProperty:objc_opt_class() forKey:PSCellClassKey];
  [v15 setProperty:&__kCFBooleanTrue forKey:PSSliderIsSegmented];
  [v15 setProperty:&off_27A410 forKey:PSSliderSegmentCount];
  [v15 setProperty:&__kCFBooleanFalse forKey:PSSliderIsContinuous];
  v16 = [targetCopy performSelector:get withObject:v15];

  [v15 setProperty:v16 forKey:PSValueKey];
  *&v17 = value;
  v18 = [NSNumber numberWithFloat:v17];
  [v15 setProperty:v18 forKey:PSControlMinimumKey];

  *&v19 = maximumValue;
  v20 = [NSNumber numberWithFloat:v19];
  [v15 setProperty:v20 forKey:PSControlMaximumKey];

  if ([namesCopy count] != &dword_0 + 3)
  {
    v22 = namesCopy;
    _AXAssert();
  }

  [v15 setProperty:namesCopy forKey:{@"SensitivityNames", v22}];

  return v15;
}

- (AXSensitivitySliderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v75.receiver = self;
  v75.super_class = AXSensitivitySliderCell;
  identifierCopy = identifier;
  specifierCopy = specifier;
  v7 = [(AXSensitivitySliderCell *)&v75 initWithStyle:style reuseIdentifier:identifierCopy specifier:?];
  if (v7)
  {
    v8 = objc_alloc_init(UILabel);
    leftLabel = v7->_leftLabel;
    v7->_leftLabel = v8;

    v10 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    [(UILabel *)v7->_leftLabel setFont:v10];

    [(UILabel *)v7->_leftLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v7->_leftLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v7->_leftLabel sizeToFit];
    contentView = [(AXSensitivitySliderCell *)v7 contentView];
    [contentView addSubview:v7->_leftLabel];

    IsAccessibilityCategory = AXPreferredContentSizeCategoryIsAccessibilityCategory();
    if ((IsAccessibilityCategory & 1) == 0)
    {
      v12 = objc_alloc_init(UILabel);
      centerLabel = v7->_centerLabel;
      v7->_centerLabel = v12;

      v14 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
      [(UILabel *)v7->_centerLabel setFont:v14];

      [(UILabel *)v7->_centerLabel setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UILabel *)v7->_centerLabel setAdjustsFontForContentSizeCategory:1];
      [(UILabel *)v7->_centerLabel sizeToFit];
      contentView2 = [(AXSensitivitySliderCell *)v7 contentView];
      [contentView2 addSubview:v7->_centerLabel];
    }

    v16 = objc_alloc_init(UILabel);
    rightLabel = v7->_rightLabel;
    v7->_rightLabel = v16;

    v18 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    [(UILabel *)v7->_rightLabel setFont:v18];

    [(UILabel *)v7->_rightLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v7->_rightLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v7->_rightLabel sizeToFit];
    contentView3 = [(AXSensitivitySliderCell *)v7 contentView];
    [contentView3 addSubview:v7->_rightLabel];

    control = [(AXSensitivitySliderCell *)v7 control];
    [control setTranslatesAutoresizingMaskIntoConstraints:0];
    objc_initWeak(&location, v7);
    v72[0] = _NSConcreteStackBlock;
    v72[1] = 3221225472;
    v72[2] = __67__AXSensitivitySliderCell_initWithStyle_reuseIdentifier_specifier___block_invoke;
    v72[3] = &unk_255F00;
    objc_copyWeak(&v73, &location);
    [control _setAccessibilityValueBlock:v72];
    bottomAnchor = [control bottomAnchor];
    contentView4 = [(AXSensitivitySliderCell *)v7 contentView];
    bottomAnchor2 = [contentView4 bottomAnchor];
    v61 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-10.0];
    v77[0] = v61;
    widthAnchor = [control widthAnchor];
    contentView5 = [(AXSensitivitySliderCell *)v7 contentView];
    widthAnchor2 = [contentView5 widthAnchor];
    v57 = [widthAnchor constraintEqualToAnchor:widthAnchor2 constant:-60.0];
    v77[1] = v57;
    centerXAnchor = [control centerXAnchor];
    contentView6 = [(AXSensitivitySliderCell *)v7 contentView];
    centerXAnchor2 = [contentView6 centerXAnchor];
    v53 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2 constant:0.0];
    v77[2] = v53;
    topAnchor = [control topAnchor];
    lastBaselineAnchor = [(UILabel *)v7->_rightLabel lastBaselineAnchor];
    v50 = [topAnchor constraintEqualToAnchor:lastBaselineAnchor constant:5.0];
    v77[3] = v50;
    topAnchor2 = [control topAnchor];
    lastBaselineAnchor2 = [(UILabel *)v7->_leftLabel lastBaselineAnchor];
    v47 = [topAnchor2 constraintEqualToAnchor:lastBaselineAnchor2 constant:5.0];
    v77[4] = v47;
    topAnchor3 = [(UILabel *)v7->_rightLabel topAnchor];
    contentView7 = [(AXSensitivitySliderCell *)v7 contentView];
    topAnchor4 = [contentView7 topAnchor];
    v43 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:10.0];
    v77[5] = v43;
    trailingAnchor = [(UILabel *)v7->_rightLabel trailingAnchor];
    contentView8 = [(AXSensitivitySliderCell *)v7 contentView];
    trailingAnchor2 = [contentView8 trailingAnchor];
    v39 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-10.0];
    v77[6] = v39;
    topAnchor5 = [(UILabel *)v7->_leftLabel topAnchor];
    contentView9 = [(AXSensitivitySliderCell *)v7 contentView];
    topAnchor6 = [contentView9 topAnchor];
    v23 = [topAnchor5 constraintEqualToAnchor:topAnchor6 constant:10.0];
    v77[7] = v23;
    leadingAnchor = [(UILabel *)v7->_leftLabel leadingAnchor];
    contentView10 = [(AXSensitivitySliderCell *)v7 contentView];
    leadingAnchor2 = [contentView10 leadingAnchor];
    v27 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:10.0];
    v77[8] = v27;
    v28 = [NSArray arrayWithObjects:v77 count:9];
    [NSLayoutConstraint activateConstraints:v28];

    if ((IsAccessibilityCategory & 1) == 0)
    {
      topAnchor7 = [(UILabel *)v7->_centerLabel topAnchor];
      contentView11 = [(AXSensitivitySliderCell *)v7 contentView];
      topAnchor8 = [contentView11 topAnchor];
      v29 = [topAnchor7 constraintEqualToAnchor:topAnchor8 constant:10.0];
      v76[0] = v29;
      centerXAnchor3 = [(UILabel *)v7->_centerLabel centerXAnchor];
      contentView12 = [(AXSensitivitySliderCell *)v7 contentView];
      centerXAnchor4 = [contentView12 centerXAnchor];
      v33 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4 constant:0.0];
      v76[1] = v33;
      topAnchor9 = [control topAnchor];
      lastBaselineAnchor3 = [(UILabel *)v7->_centerLabel lastBaselineAnchor];
      v36 = [topAnchor9 constraintEqualToAnchor:lastBaselineAnchor3 constant:5.0];
      v76[2] = v36;
      v37 = [NSArray arrayWithObjects:v76 count:3];
      [NSLayoutConstraint activateConstraints:v37];
    }

    objc_destroyWeak(&v73);
    objc_destroyWeak(&location);
  }

  return v7;
}

id __67__AXSensitivitySliderCell_initWithStyle_reuseIdentifier_specifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained accessibilityValue];

  return v2;
}

- (void)setSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v10.receiver = self;
  v10.super_class = AXSensitivitySliderCell;
  [(AXSensitivitySliderCell *)&v10 setSpecifier:specifierCopy];
  if (specifierCopy)
  {
    v5 = [specifierCopy propertyForKey:@"SensitivityNames"];
    if ([v5 count] != &dword_0 + 3)
    {
      v9 = 3;
      _AXAssert();
    }

    if ([v5 count] == &dword_0 + 3)
    {
      v6 = [v5 objectAtIndexedSubscript:0];
      [(UILabel *)self->_leftLabel setText:v6];

      v7 = [v5 objectAtIndexedSubscript:1];
      [(UILabel *)self->_centerLabel setText:v7];

      v8 = [v5 objectAtIndexedSubscript:2];
      [(UILabel *)self->_rightLabel setText:v8];
    }
  }
}

- (void)setAccessibilityLabel:(id)label
{
  v5.receiver = self;
  v5.super_class = AXSensitivitySliderCell;
  labelCopy = label;
  [(AXSensitivitySliderCell *)&v5 setAccessibilityLabel:labelCopy];
  [*&self->PSSliderTableCell_opaque[OBJC_IVAR___PSControlTableCell__control] setAccessibilityLabel:{labelCopy, v5.receiver, v5.super_class}];
}

- (void)_accessibilityIncrementOrDecrement:(BOOL)decrement
{
  decrementCopy = decrement;
  control = [(AXSensitivitySliderCell *)self control];
  [control minimumValue];
  v6 = v5;
  [control maximumValue];
  v8 = v7;
  v9 = (v6 + v7) * 0.5;
  _sliderLevel = [(AXSensitivitySliderCell *)self _sliderLevel];
  if (_sliderLevel == 2)
  {
    if (decrementCopy)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (_sliderLevel == 1)
  {
    if (decrementCopy)
    {
      v9 = v8;
    }

    else
    {
      v9 = v6;
    }

    goto LABEL_10;
  }

  if (!_sliderLevel && decrementCopy)
  {
LABEL_10:
    *&v11 = v9;
    [control setValue:v11];
  }

LABEL_11:
  [control sendActionsForControlEvents:4096];
}

- (id)accessibilityValue
{
  specifier = [(AXSensitivitySliderCell *)self specifier];
  v4 = [specifier propertyForKey:@"SensitivityNames"];

  if ([v4 count] == &dword_0 + 3)
  {
    _sliderLevel = [(AXSensitivitySliderCell *)self _sliderLevel];
    switch(_sliderLevel)
    {
      case 2:
        v6 = v4;
        v7 = 2;
        goto LABEL_11;
      case 1:
        v6 = v4;
        v7 = 1;
        goto LABEL_11;
      case 0:
        v6 = v4;
        v7 = 0;
LABEL_11:
        v9 = [v6 objectAtIndexedSubscript:v7];
        goto LABEL_12;
    }
  }

  specifier2 = [(AXSensitivitySliderCell *)self specifier];

  if (specifier2)
  {
    selfCopy = self;
    v13 = v4;
    _AXAssert();
  }

  v14.receiver = self;
  v14.super_class = AXSensitivitySliderCell;
  v9 = [(AXSensitivitySliderCell *)&v14 accessibilityValue:selfCopy];
LABEL_12:
  v10 = v9;

  return v10;
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = AXSensitivitySliderCell;
  [(AXSensitivitySliderCell *)&v11 layoutSubviews];
  control = [(AXSensitivitySliderCell *)self control];
  [control frame];

  [(UILabel *)self->_leftLabel _lastLineBaselineFrameOriginY];
  v5 = v4 + 5.0;
  contentView = [(AXSensitivitySliderCell *)self contentView];
  [contentView bounds];
  v7 = CGRectGetWidth(v12) + -60.0;

  contentView2 = [(AXSensitivitySliderCell *)self contentView];
  [contentView2 bounds];
  v9 = CGRectGetMaxY(v13) + -10.0 - v5;

  control2 = [(AXSensitivitySliderCell *)self control];
  [control2 setFrame:{30.0, v5, v7, v9}];
}

- (int64_t)_sliderLevel
{
  control = [(AXSensitivitySliderCell *)self control];
  [control value];
  v4 = [(AXSensitivitySliderCell *)self _sliderLevelForValue:?];

  return v4;
}

- (int64_t)_sliderLevelForValue:(float)value
{
  control = [(AXSensitivitySliderCell *)self control];
  [control minimumValue];
  v6 = v5;
  [control maximumValue];
  if (vabds_f32(value, v6) >= 0.00000011921)
  {
    if (fabsf(value + ((v6 + v7) * -0.5)) >= 0.00000011921)
    {
      if (vabds_f32(value, v7) < 0.00000011921)
      {
        v8 = 2;
        goto LABEL_8;
      }

      _AXAssert();
    }

    v8 = 1;
    goto LABEL_8;
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (void)setSensitivitySliderLevel:(int64_t)level
{
  objc_opt_class();

  NSRequestConcreteImplementation();
}

- (int64_t)sensitivitySliderLevel
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 1;
}

@end