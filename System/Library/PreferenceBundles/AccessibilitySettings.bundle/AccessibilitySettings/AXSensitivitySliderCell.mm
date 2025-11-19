@interface AXSensitivitySliderCell
+ (id)specifierWithSensitivityNames:(id)a3 minimumValue:(float)a4 maximumValue:(float)a5 target:(id)a6 set:(SEL)a7 get:(SEL)a8;
- (AXSensitivitySliderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (id)accessibilityValue;
- (int64_t)_sliderLevel;
- (int64_t)_sliderLevelForValue:(float)a3;
- (int64_t)sensitivitySliderLevel;
- (void)_accessibilityIncrementOrDecrement:(BOOL)a3;
- (void)layoutSubviews;
- (void)setAccessibilityLabel:(id)a3;
- (void)setSensitivitySliderLevel:(int64_t)a3;
- (void)setSpecifier:(id)a3;
@end

@implementation AXSensitivitySliderCell

+ (id)specifierWithSensitivityNames:(id)a3 minimumValue:(float)a4 maximumValue:(float)a5 target:(id)a6 set:(SEL)a7 get:(SEL)a8
{
  v13 = a3;
  v14 = a6;
  v15 = [PSSpecifier preferenceSpecifierNamed:0 target:v14 set:a7 get:a8 detail:0 cell:5 edit:0];
  [v15 setProperty:objc_opt_class() forKey:PSCellClassKey];
  [v15 setProperty:&__kCFBooleanTrue forKey:PSSliderIsSegmented];
  [v15 setProperty:&off_27A410 forKey:PSSliderSegmentCount];
  [v15 setProperty:&__kCFBooleanFalse forKey:PSSliderIsContinuous];
  v16 = [v14 performSelector:a8 withObject:v15];

  [v15 setProperty:v16 forKey:PSValueKey];
  *&v17 = a4;
  v18 = [NSNumber numberWithFloat:v17];
  [v15 setProperty:v18 forKey:PSControlMinimumKey];

  *&v19 = a5;
  v20 = [NSNumber numberWithFloat:v19];
  [v15 setProperty:v20 forKey:PSControlMaximumKey];

  if ([v13 count] != &dword_0 + 3)
  {
    v22 = v13;
    _AXAssert();
  }

  [v15 setProperty:v13 forKey:{@"SensitivityNames", v22}];

  return v15;
}

- (AXSensitivitySliderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v75.receiver = self;
  v75.super_class = AXSensitivitySliderCell;
  v69 = a4;
  v70 = a5;
  v7 = [(AXSensitivitySliderCell *)&v75 initWithStyle:a3 reuseIdentifier:v69 specifier:?];
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
    v11 = [(AXSensitivitySliderCell *)v7 contentView];
    [v11 addSubview:v7->_leftLabel];

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
      v15 = [(AXSensitivitySliderCell *)v7 contentView];
      [v15 addSubview:v7->_centerLabel];
    }

    v16 = objc_alloc_init(UILabel);
    rightLabel = v7->_rightLabel;
    v7->_rightLabel = v16;

    v18 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    [(UILabel *)v7->_rightLabel setFont:v18];

    [(UILabel *)v7->_rightLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v7->_rightLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v7->_rightLabel sizeToFit];
    v19 = [(AXSensitivitySliderCell *)v7 contentView];
    [v19 addSubview:v7->_rightLabel];

    v71 = [(AXSensitivitySliderCell *)v7 control];
    [v71 setTranslatesAutoresizingMaskIntoConstraints:0];
    objc_initWeak(&location, v7);
    v72[0] = _NSConcreteStackBlock;
    v72[1] = 3221225472;
    v72[2] = __67__AXSensitivitySliderCell_initWithStyle_reuseIdentifier_specifier___block_invoke;
    v72[3] = &unk_255F00;
    objc_copyWeak(&v73, &location);
    [v71 _setAccessibilityValueBlock:v72];
    v63 = [v71 bottomAnchor];
    v65 = [(AXSensitivitySliderCell *)v7 contentView];
    v62 = [v65 bottomAnchor];
    v61 = [v63 constraintEqualToAnchor:v62 constant:-10.0];
    v77[0] = v61;
    v59 = [v71 widthAnchor];
    v60 = [(AXSensitivitySliderCell *)v7 contentView];
    v58 = [v60 widthAnchor];
    v57 = [v59 constraintEqualToAnchor:v58 constant:-60.0];
    v77[1] = v57;
    v55 = [v71 centerXAnchor];
    v56 = [(AXSensitivitySliderCell *)v7 contentView];
    v54 = [v56 centerXAnchor];
    v53 = [v55 constraintEqualToAnchor:v54 constant:0.0];
    v77[2] = v53;
    v52 = [v71 topAnchor];
    v51 = [(UILabel *)v7->_rightLabel lastBaselineAnchor];
    v50 = [v52 constraintEqualToAnchor:v51 constant:5.0];
    v77[3] = v50;
    v49 = [v71 topAnchor];
    v48 = [(UILabel *)v7->_leftLabel lastBaselineAnchor];
    v47 = [v49 constraintEqualToAnchor:v48 constant:5.0];
    v77[4] = v47;
    v45 = [(UILabel *)v7->_rightLabel topAnchor];
    v46 = [(AXSensitivitySliderCell *)v7 contentView];
    v44 = [v46 topAnchor];
    v43 = [v45 constraintEqualToAnchor:v44 constant:10.0];
    v77[5] = v43;
    v41 = [(UILabel *)v7->_rightLabel trailingAnchor];
    v42 = [(AXSensitivitySliderCell *)v7 contentView];
    v40 = [v42 trailingAnchor];
    v39 = [v41 constraintEqualToAnchor:v40 constant:-10.0];
    v77[6] = v39;
    v20 = [(UILabel *)v7->_leftLabel topAnchor];
    v21 = [(AXSensitivitySliderCell *)v7 contentView];
    v22 = [v21 topAnchor];
    v23 = [v20 constraintEqualToAnchor:v22 constant:10.0];
    v77[7] = v23;
    v24 = [(UILabel *)v7->_leftLabel leadingAnchor];
    v25 = [(AXSensitivitySliderCell *)v7 contentView];
    v26 = [v25 leadingAnchor];
    v27 = [v24 constraintEqualToAnchor:v26 constant:10.0];
    v77[8] = v27;
    v28 = [NSArray arrayWithObjects:v77 count:9];
    [NSLayoutConstraint activateConstraints:v28];

    if ((IsAccessibilityCategory & 1) == 0)
    {
      v66 = [(UILabel *)v7->_centerLabel topAnchor];
      v68 = [(AXSensitivitySliderCell *)v7 contentView];
      v64 = [v68 topAnchor];
      v29 = [v66 constraintEqualToAnchor:v64 constant:10.0];
      v76[0] = v29;
      v30 = [(UILabel *)v7->_centerLabel centerXAnchor];
      v31 = [(AXSensitivitySliderCell *)v7 contentView];
      v32 = [v31 centerXAnchor];
      v33 = [v30 constraintEqualToAnchor:v32 constant:0.0];
      v76[1] = v33;
      v34 = [v71 topAnchor];
      v35 = [(UILabel *)v7->_centerLabel lastBaselineAnchor];
      v36 = [v34 constraintEqualToAnchor:v35 constant:5.0];
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

- (void)setSpecifier:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = AXSensitivitySliderCell;
  [(AXSensitivitySliderCell *)&v10 setSpecifier:v4];
  if (v4)
  {
    v5 = [v4 propertyForKey:@"SensitivityNames"];
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

- (void)setAccessibilityLabel:(id)a3
{
  v5.receiver = self;
  v5.super_class = AXSensitivitySliderCell;
  v4 = a3;
  [(AXSensitivitySliderCell *)&v5 setAccessibilityLabel:v4];
  [*&self->PSSliderTableCell_opaque[OBJC_IVAR___PSControlTableCell__control] setAccessibilityLabel:{v4, v5.receiver, v5.super_class}];
}

- (void)_accessibilityIncrementOrDecrement:(BOOL)a3
{
  v3 = a3;
  v12 = [(AXSensitivitySliderCell *)self control];
  [v12 minimumValue];
  v6 = v5;
  [v12 maximumValue];
  v8 = v7;
  v9 = (v6 + v7) * 0.5;
  v10 = [(AXSensitivitySliderCell *)self _sliderLevel];
  if (v10 == 2)
  {
    if (v3)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (v10 == 1)
  {
    if (v3)
    {
      v9 = v8;
    }

    else
    {
      v9 = v6;
    }

    goto LABEL_10;
  }

  if (!v10 && v3)
  {
LABEL_10:
    *&v11 = v9;
    [v12 setValue:v11];
  }

LABEL_11:
  [v12 sendActionsForControlEvents:4096];
}

- (id)accessibilityValue
{
  v3 = [(AXSensitivitySliderCell *)self specifier];
  v4 = [v3 propertyForKey:@"SensitivityNames"];

  if ([v4 count] == &dword_0 + 3)
  {
    v5 = [(AXSensitivitySliderCell *)self _sliderLevel];
    switch(v5)
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

  v8 = [(AXSensitivitySliderCell *)self specifier];

  if (v8)
  {
    v12 = self;
    v13 = v4;
    _AXAssert();
  }

  v14.receiver = self;
  v14.super_class = AXSensitivitySliderCell;
  v9 = [(AXSensitivitySliderCell *)&v14 accessibilityValue:v12];
LABEL_12:
  v10 = v9;

  return v10;
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = AXSensitivitySliderCell;
  [(AXSensitivitySliderCell *)&v11 layoutSubviews];
  v3 = [(AXSensitivitySliderCell *)self control];
  [v3 frame];

  [(UILabel *)self->_leftLabel _lastLineBaselineFrameOriginY];
  v5 = v4 + 5.0;
  v6 = [(AXSensitivitySliderCell *)self contentView];
  [v6 bounds];
  v7 = CGRectGetWidth(v12) + -60.0;

  v8 = [(AXSensitivitySliderCell *)self contentView];
  [v8 bounds];
  v9 = CGRectGetMaxY(v13) + -10.0 - v5;

  v10 = [(AXSensitivitySliderCell *)self control];
  [v10 setFrame:{30.0, v5, v7, v9}];
}

- (int64_t)_sliderLevel
{
  v3 = [(AXSensitivitySliderCell *)self control];
  [v3 value];
  v4 = [(AXSensitivitySliderCell *)self _sliderLevelForValue:?];

  return v4;
}

- (int64_t)_sliderLevelForValue:(float)a3
{
  v4 = [(AXSensitivitySliderCell *)self control];
  [v4 minimumValue];
  v6 = v5;
  [v4 maximumValue];
  if (vabds_f32(a3, v6) >= 0.00000011921)
  {
    if (fabsf(a3 + ((v6 + v7) * -0.5)) >= 0.00000011921)
    {
      if (vabds_f32(a3, v7) < 0.00000011921)
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

- (void)setSensitivitySliderLevel:(int64_t)a3
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