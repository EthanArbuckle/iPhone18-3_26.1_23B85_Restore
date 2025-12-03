@interface PLSegmentedLabelSliderCell
- (PLSegmentedLabelSliderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (PLSegmentedLabelSliderCellDelegate)delegate;
- (id)createLabelStack;
- (id)createSlider;
- (void)darkenValue:(float)value;
- (void)drawRect:(CGRect)rect;
- (void)hideLabelsIfNecessary;
- (void)highlightValue:(float)value;
- (void)reloadWithSpecifier:(id)specifier animated:(BOOL)animated;
- (void)sliderValueChangedToValue:(float)value;
- (void)sliderValueChangedWithSlider:(id)slider;
- (void)sliderValueChangingSlider:(id)slider;
@end

@implementation PLSegmentedLabelSliderCell

- (id)createSlider
{
  v3 = objc_opt_new();
  [v3 setContinuous:1];
  [v3 setSegmented:1];
  [v3 setSnapsToSegment:1];
  [v3 setSegmentCount:{-[PLSegmentedLabelSliderCell segments](self, "segments")}];
  *&v4 = [(PLSegmentedLabelSliderCell *)self maxValue];
  [v3 setMaximumValue:v4];
  *&v5 = [(PLSegmentedLabelSliderCell *)self minValue];
  [v3 setMinimumValue:v5];
  v6 = +[UIColor clearColor];
  [v3 setMinimumTrackTintColor:v6];

  [v3 addTarget:self action:"sliderValueChangingSlider:" forControlEvents:4096];
  [v3 addTarget:self action:"sliderValueChangedWithSlider:" forControlEvents:448];
  [v3 setAccessibilityIdentifier:@"CHARGING_LIMIT_SLIDER"];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v3;
}

- (void)sliderValueChangingSlider:(id)slider
{
  sliderCopy = slider;
  [sliderCopy value];
  [(PLSegmentedLabelSliderCell *)self darkenValue:?];
  delegate = [(PLSegmentedLabelSliderCell *)self delegate];
  [sliderCopy value];
  v5 = [delegate shouldShowHighLight:?];

  if (v5)
  {
    delegate2 = [(PLSegmentedLabelSliderCell *)self delegate];
    [delegate2 getHighlightValue];
    [(PLSegmentedLabelSliderCell *)self highlightValue:?];
  }

  else
  {
    [(PLSegmentedLabelSliderCell *)self removeHighlight:1];
  }

  if (![sliderCopy state] && (objc_msgSend(sliderCopy, "isTracking") & 1) == 0)
  {
    [sliderCopy value];
    [(PLSegmentedLabelSliderCell *)self sliderValueChangedToValue:?];
  }
}

- (void)sliderValueChangedWithSlider:(id)slider
{
  [slider value];

  [(PLSegmentedLabelSliderCell *)self sliderValueChangedToValue:?];
}

- (void)sliderValueChangedToValue:(float)value
{
  delegate = [(PLSegmentedLabelSliderCell *)self delegate];
  *&v6 = value;
  [delegate setSegmentedControlValue:v6];

  slider = [(PLSegmentedLabelSliderCell *)self slider];
  [slider maximumValue];
  v9 = v8;

  if (v9 != value)
  {
    delegate2 = [(PLSegmentedLabelSliderCell *)self delegate];
    *&v11 = value;
    v12 = [delegate2 shouldShowHighLight:v11];

    if (v12)
    {
      delegate3 = [(PLSegmentedLabelSliderCell *)self delegate];
      [delegate3 getHighlightValue];
      [(PLSegmentedLabelSliderCell *)self highlightValue:?];
    }

    else
    {
      [(PLSegmentedLabelSliderCell *)self removeHighlight:1];
    }

    delegate4 = [(PLSegmentedLabelSliderCell *)self delegate];
    [delegate4 getSegmentedControlValue];
    v16 = v15;

    LODWORD(v17) = v16;

    [(PLSegmentedLabelSliderCell *)self setCurrentValue:1 animated:v17];
  }
}

- (void)darkenValue:(float)value
{
  labelMap = [(PLSegmentedLabelSliderCell *)self labelMap];
  *&v6 = value;
  v7 = [NSNumber numberWithFloat:v6];
  v8 = [labelMap objectForKeyedSubscript:v7];

  if (v8)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    labelStack = [(PLSegmentedLabelSliderCell *)self labelStack];
    arrangedSubviews = [labelStack arrangedSubviews];

    v11 = [arrangedSubviews countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v23;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(arrangedSubviews);
          }

          v15 = *(*(&v22 + 1) + 8 * i);
          textColor = [v15 textColor];
          v17 = +[UIColor systemGreenColor];

          if (textColor != v17)
          {
            v18 = +[UIColor systemGrayColor];
            [v15 setTextColor:v18];
          }
        }

        v12 = [arrangedSubviews countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v12);
    }

    textColor2 = [v8 textColor];
    v20 = +[UIColor systemGreenColor];

    if (textColor2 != v20)
    {
      v21 = +[UIColor labelColor];
      [v8 setTextColor:v21];
    }
  }
}

- (void)highlightValue:(float)value
{
  labelMap = [(PLSegmentedLabelSliderCell *)self labelMap];
  *&v6 = value;
  v7 = [NSNumber numberWithFloat:v6];
  v9 = [labelMap objectForKeyedSubscript:v7];

  if (v9)
  {
    [(PLSegmentedLabelSliderCell *)self removeHighlight];
    v8 = +[UIColor systemGreenColor];
    [v9 setTextColor:v8];
  }
}

- (id)createLabelStack
{
  v3 = objc_alloc_init(UIStackView);
  [v3 setAxis:0];
  [v3 setDistribution:4];
  [v3 setAlignment:4];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = objc_opt_new();
  [(PLSegmentedLabelSliderCell *)self setLabelMap:v4];

  if ([(PLSegmentedLabelSliderCell *)self segments])
  {
    segments = [(PLSegmentedLabelSliderCell *)self segments];
  }

  else
  {
    segments = 1;
  }

  maxValue = [(PLSegmentedLabelSliderCell *)self maxValue];
  minValue = [(PLSegmentedLabelSliderCell *)self minValue];
  minValue2 = [(PLSegmentedLabelSliderCell *)self minValue];
  if (minValue2 <= [(PLSegmentedLabelSliderCell *)self maxValue])
  {
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v12 = (maxValue - minValue) / segments;
    do
    {
      v13 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
      v14 = [PLBatteryUIUtilities localizedStringWithPercentage:minValue2];
      [v13 setText:v14];

      v15 = +[UIColor systemGrayColor];
      [v13 setTextColor:v15];

      v16 = [UIFont _preferredFontForTextStyle:UIFontTextStyleFootnote weight:UIFontWeightSemibold];
      [v13 setFont:v16];

      [v13 setAdjustsFontForContentSizeCategory:1];
      [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v13 setNumberOfLines:1];
      labelMap = [(PLSegmentedLabelSliderCell *)self labelMap];
      v18 = [NSNumber numberWithInt:minValue2];
      [labelMap setObject:v13 forKeyedSubscript:v18];

      [v3 addArrangedSubview:v13];
      minValue2 = (minValue2 + v12);
    }

    while (minValue2 <= [(PLSegmentedLabelSliderCell *)self maxValue]);
  }

  return v3;
}

- (PLSegmentedLabelSliderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  specifierCopy = specifier;
  v79.receiver = self;
  v79.super_class = PLSegmentedLabelSliderCell;
  v9 = [(PLSegmentedLabelSliderCell *)&v79 initWithStyle:style reuseIdentifier:identifier specifier:specifierCopy];
  if (v9)
  {
    v10 = [specifierCopy propertyForKey:@"PLSegmentedLabelSliderCellSegmentCountKey"];
    -[PLSegmentedLabelSliderCell setSegments:](v9, "setSegments:", [v10 intValue]);

    v11 = [specifierCopy propertyForKey:@"PLSegmentedLabelSliderCellMaxValueKey"];
    -[PLSegmentedLabelSliderCell setMaxValue:](v9, "setMaxValue:", [v11 intValue]);

    v12 = [specifierCopy propertyForKey:@"PLSegmentedLabelSliderCellMinValueKey"];
    -[PLSegmentedLabelSliderCell setMinValue:](v9, "setMinValue:", [v12 intValue]);

    v78 = specifierCopy;
    v13 = [specifierCopy propertyForKey:@"PLSegmentedLabelSliderCellDelegateKey"];
    [(PLSegmentedLabelSliderCell *)v9 setDelegate:v13];

    createLabelStack = [(PLSegmentedLabelSliderCell *)v9 createLabelStack];
    [(PLSegmentedLabelSliderCell *)v9 setLabelStack:createLabelStack];

    createSlider = [(PLSegmentedLabelSliderCell *)v9 createSlider];
    [(PLSegmentedLabelSliderCell *)v9 setSlider:createSlider];

    delegate = [(PLSegmentedLabelSliderCell *)v9 delegate];
    [delegate getSegmentedControlValue];
    [(PLSegmentedLabelSliderCell *)v9 setCurrentValue:0 animated:?];

    delegate2 = [(PLSegmentedLabelSliderCell *)v9 delegate];
    slider = [(PLSegmentedLabelSliderCell *)v9 slider];
    [slider value];
    v19 = [delegate2 shouldShowHighLight:?];

    if (v19)
    {
      delegate3 = [(PLSegmentedLabelSliderCell *)v9 delegate];
      [delegate3 getHighlightValue];
      [(PLSegmentedLabelSliderCell *)v9 highlightValue:?];
    }

    contentView = [(PLSegmentedLabelSliderCell *)v9 contentView];
    labelStack = [(PLSegmentedLabelSliderCell *)v9 labelStack];
    v77 = contentView;
    [contentView addSubview:labelStack];

    slider2 = [(PLSegmentedLabelSliderCell *)v9 slider];
    [contentView addSubview:slider2];

    slider3 = [(PLSegmentedLabelSliderCell *)v9 slider];
    [contentView bringSubviewToFront:slider3];

    [(PLSegmentedLabelSliderCell *)v9 setSeparatorStyle:1];
    [(PLSegmentedLabelSliderCell *)v9 setSeparatorInset:0.0, 0.0, 0.0, 0.0];
    labelStack2 = [(PLSegmentedLabelSliderCell *)v9 labelStack];
    arrangedSubviews = [labelStack2 arrangedSubviews];
    firstObject = [arrangedSubviews firstObject];

    [firstObject sizeToFit];
    labelStack3 = [(PLSegmentedLabelSliderCell *)v9 labelStack];
    arrangedSubviews2 = [labelStack3 arrangedSubviews];
    lastObject = [arrangedSubviews2 lastObject];

    [lastObject sizeToFit];
    v75 = lastObject;
    v76 = firstObject;
    if (+[PLBatteryUIUtilities isDeviceLayoutRTL])
    {
      v31 = lastObject;
    }

    else
    {
      v31 = firstObject;
    }

    [v31 frame];
    v33 = v32 * 0.5;
    if (+[PLBatteryUIUtilities isDeviceLayoutRTL])
    {
      v34 = firstObject;
    }

    else
    {
      v34 = lastObject;
    }

    [v34 frame];
    v36 = v35 * 0.5;
    if (v33 >= v36)
    {
      v37 = v33;
    }

    else
    {
      v37 = v35 * 0.5;
    }

    slider4 = [(PLSegmentedLabelSliderCell *)v9 slider];
    topAnchor = [slider4 topAnchor];
    contentView2 = [(PLSegmentedLabelSliderCell *)v9 contentView];
    topAnchor2 = [contentView2 topAnchor];
    v70 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:7.0];
    v80[0] = v70;
    slider5 = [(PLSegmentedLabelSliderCell *)v9 slider];
    leadingAnchor = [slider5 leadingAnchor];
    contentView3 = [(PLSegmentedLabelSliderCell *)v9 contentView];
    leadingAnchor2 = [contentView3 leadingAnchor];
    v65 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:(v37 + 7.0)];
    v80[1] = v65;
    slider6 = [(PLSegmentedLabelSliderCell *)v9 slider];
    trailingAnchor = [slider6 trailingAnchor];
    contentView4 = [(PLSegmentedLabelSliderCell *)v9 contentView];
    trailingAnchor2 = [contentView4 trailingAnchor];
    v60 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:(-7.0 - v37)];
    v80[2] = v60;
    labelStack4 = [(PLSegmentedLabelSliderCell *)v9 labelStack];
    topAnchor3 = [labelStack4 topAnchor];
    slider7 = [(PLSegmentedLabelSliderCell *)v9 slider];
    bottomAnchor = [slider7 bottomAnchor];
    v55 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:3.0];
    v80[3] = v55;
    labelStack5 = [(PLSegmentedLabelSliderCell *)v9 labelStack];
    leadingAnchor3 = [labelStack5 leadingAnchor];
    slider8 = [(PLSegmentedLabelSliderCell *)v9 slider];
    leadingAnchor4 = [slider8 leadingAnchor];
    v49 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:(18.0 - v33)];
    v80[4] = v49;
    labelStack6 = [(PLSegmentedLabelSliderCell *)v9 labelStack];
    trailingAnchor3 = [labelStack6 trailingAnchor];
    slider9 = [(PLSegmentedLabelSliderCell *)v9 slider];
    trailingAnchor4 = [slider9 trailingAnchor];
    v41 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:(v36 + -18.0)];
    v80[5] = v41;
    labelStack7 = [(PLSegmentedLabelSliderCell *)v9 labelStack];
    bottomAnchor2 = [labelStack7 bottomAnchor];
    contentView5 = [(PLSegmentedLabelSliderCell *)v9 contentView];
    bottomAnchor3 = [contentView5 bottomAnchor];
    v46 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:-15.0];
    v80[6] = v46;
    v53 = [NSArray arrayWithObjects:v80 count:7];

    [NSLayoutConstraint activateConstraints:v53];
    [(PLSegmentedLabelSliderCell *)v9 setNeedsLayout];

    specifierCopy = v78;
  }

  return v9;
}

- (void)reloadWithSpecifier:(id)specifier animated:(BOOL)animated
{
  specifierCopy = specifier;
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_24D00;
  block[3] = &unk_1648D0;
  v9 = specifierCopy;
  v7 = specifierCopy;
  objc_copyWeak(&v11, &location);
  animatedCopy = animated;
  selfCopy = self;
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v11);

  objc_destroyWeak(&location);
}

- (void)drawRect:(CGRect)rect
{
  v4.receiver = self;
  v4.super_class = PLSegmentedLabelSliderCell;
  [(PLSegmentedLabelSliderCell *)&v4 drawRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  [(PLSegmentedLabelSliderCell *)self hideLabelsIfNecessary];
}

- (void)hideLabelsIfNecessary
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  labelMap = [(PLSegmentedLabelSliderCell *)self labelMap];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_24FE0;
  v12[3] = &unk_1648F8;
  v12[4] = &v13;
  [labelMap enumerateKeysAndObjectsUsingBlock:v12];

  slider = [(PLSegmentedLabelSliderCell *)self slider];
  [slider frame];
  v6 = v5;
  segments = [(PLSegmentedLabelSliderCell *)self segments];
  v8 = v14[6];

  labelMap2 = [(PLSegmentedLabelSliderCell *)self labelMap];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_2507C;
  v10[3] = &unk_164920;
  v10[4] = self;
  v11 = v6 / segments < v8;
  [labelMap2 enumerateKeysAndObjectsUsingBlock:v10];

  _Block_object_dispose(&v13, 8);
}

- (PLSegmentedLabelSliderCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end