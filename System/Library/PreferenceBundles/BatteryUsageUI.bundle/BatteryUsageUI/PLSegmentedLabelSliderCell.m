@interface PLSegmentedLabelSliderCell
- (PLSegmentedLabelSliderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (PLSegmentedLabelSliderCellDelegate)delegate;
- (id)createLabelStack;
- (id)createSlider;
- (void)darkenValue:(float)a3;
- (void)drawRect:(CGRect)a3;
- (void)hideLabelsIfNecessary;
- (void)highlightValue:(float)a3;
- (void)reloadWithSpecifier:(id)a3 animated:(BOOL)a4;
- (void)sliderValueChangedToValue:(float)a3;
- (void)sliderValueChangedWithSlider:(id)a3;
- (void)sliderValueChangingSlider:(id)a3;
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

- (void)sliderValueChangingSlider:(id)a3
{
  v7 = a3;
  [v7 value];
  [(PLSegmentedLabelSliderCell *)self darkenValue:?];
  v4 = [(PLSegmentedLabelSliderCell *)self delegate];
  [v7 value];
  v5 = [v4 shouldShowHighLight:?];

  if (v5)
  {
    v6 = [(PLSegmentedLabelSliderCell *)self delegate];
    [v6 getHighlightValue];
    [(PLSegmentedLabelSliderCell *)self highlightValue:?];
  }

  else
  {
    [(PLSegmentedLabelSliderCell *)self removeHighlight:1];
  }

  if (![v7 state] && (objc_msgSend(v7, "isTracking") & 1) == 0)
  {
    [v7 value];
    [(PLSegmentedLabelSliderCell *)self sliderValueChangedToValue:?];
  }
}

- (void)sliderValueChangedWithSlider:(id)a3
{
  [a3 value];

  [(PLSegmentedLabelSliderCell *)self sliderValueChangedToValue:?];
}

- (void)sliderValueChangedToValue:(float)a3
{
  v5 = [(PLSegmentedLabelSliderCell *)self delegate];
  *&v6 = a3;
  [v5 setSegmentedControlValue:v6];

  v7 = [(PLSegmentedLabelSliderCell *)self slider];
  [v7 maximumValue];
  v9 = v8;

  if (v9 != a3)
  {
    v10 = [(PLSegmentedLabelSliderCell *)self delegate];
    *&v11 = a3;
    v12 = [v10 shouldShowHighLight:v11];

    if (v12)
    {
      v13 = [(PLSegmentedLabelSliderCell *)self delegate];
      [v13 getHighlightValue];
      [(PLSegmentedLabelSliderCell *)self highlightValue:?];
    }

    else
    {
      [(PLSegmentedLabelSliderCell *)self removeHighlight:1];
    }

    v14 = [(PLSegmentedLabelSliderCell *)self delegate];
    [v14 getSegmentedControlValue];
    v16 = v15;

    LODWORD(v17) = v16;

    [(PLSegmentedLabelSliderCell *)self setCurrentValue:1 animated:v17];
  }
}

- (void)darkenValue:(float)a3
{
  v5 = [(PLSegmentedLabelSliderCell *)self labelMap];
  *&v6 = a3;
  v7 = [NSNumber numberWithFloat:v6];
  v8 = [v5 objectForKeyedSubscript:v7];

  if (v8)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = [(PLSegmentedLabelSliderCell *)self labelStack];
    v10 = [v9 arrangedSubviews];

    v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v22 + 1) + 8 * i);
          v16 = [v15 textColor];
          v17 = +[UIColor systemGreenColor];

          if (v16 != v17)
          {
            v18 = +[UIColor systemGrayColor];
            [v15 setTextColor:v18];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v12);
    }

    v19 = [v8 textColor];
    v20 = +[UIColor systemGreenColor];

    if (v19 != v20)
    {
      v21 = +[UIColor labelColor];
      [v8 setTextColor:v21];
    }
  }
}

- (void)highlightValue:(float)a3
{
  v5 = [(PLSegmentedLabelSliderCell *)self labelMap];
  *&v6 = a3;
  v7 = [NSNumber numberWithFloat:v6];
  v9 = [v5 objectForKeyedSubscript:v7];

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
    v5 = [(PLSegmentedLabelSliderCell *)self segments];
  }

  else
  {
    v5 = 1;
  }

  v6 = [(PLSegmentedLabelSliderCell *)self maxValue];
  v7 = [(PLSegmentedLabelSliderCell *)self minValue];
  v8 = [(PLSegmentedLabelSliderCell *)self minValue];
  if (v8 <= [(PLSegmentedLabelSliderCell *)self maxValue])
  {
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v12 = (v6 - v7) / v5;
    do
    {
      v13 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
      v14 = [PLBatteryUIUtilities localizedStringWithPercentage:v8];
      [v13 setText:v14];

      v15 = +[UIColor systemGrayColor];
      [v13 setTextColor:v15];

      v16 = [UIFont _preferredFontForTextStyle:UIFontTextStyleFootnote weight:UIFontWeightSemibold];
      [v13 setFont:v16];

      [v13 setAdjustsFontForContentSizeCategory:1];
      [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v13 setNumberOfLines:1];
      v17 = [(PLSegmentedLabelSliderCell *)self labelMap];
      v18 = [NSNumber numberWithInt:v8];
      [v17 setObject:v13 forKeyedSubscript:v18];

      [v3 addArrangedSubview:v13];
      v8 = (v8 + v12);
    }

    while (v8 <= [(PLSegmentedLabelSliderCell *)self maxValue]);
  }

  return v3;
}

- (PLSegmentedLabelSliderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v8 = a5;
  v79.receiver = self;
  v79.super_class = PLSegmentedLabelSliderCell;
  v9 = [(PLSegmentedLabelSliderCell *)&v79 initWithStyle:a3 reuseIdentifier:a4 specifier:v8];
  if (v9)
  {
    v10 = [v8 propertyForKey:@"PLSegmentedLabelSliderCellSegmentCountKey"];
    -[PLSegmentedLabelSliderCell setSegments:](v9, "setSegments:", [v10 intValue]);

    v11 = [v8 propertyForKey:@"PLSegmentedLabelSliderCellMaxValueKey"];
    -[PLSegmentedLabelSliderCell setMaxValue:](v9, "setMaxValue:", [v11 intValue]);

    v12 = [v8 propertyForKey:@"PLSegmentedLabelSliderCellMinValueKey"];
    -[PLSegmentedLabelSliderCell setMinValue:](v9, "setMinValue:", [v12 intValue]);

    v78 = v8;
    v13 = [v8 propertyForKey:@"PLSegmentedLabelSliderCellDelegateKey"];
    [(PLSegmentedLabelSliderCell *)v9 setDelegate:v13];

    v14 = [(PLSegmentedLabelSliderCell *)v9 createLabelStack];
    [(PLSegmentedLabelSliderCell *)v9 setLabelStack:v14];

    v15 = [(PLSegmentedLabelSliderCell *)v9 createSlider];
    [(PLSegmentedLabelSliderCell *)v9 setSlider:v15];

    v16 = [(PLSegmentedLabelSliderCell *)v9 delegate];
    [v16 getSegmentedControlValue];
    [(PLSegmentedLabelSliderCell *)v9 setCurrentValue:0 animated:?];

    v17 = [(PLSegmentedLabelSliderCell *)v9 delegate];
    v18 = [(PLSegmentedLabelSliderCell *)v9 slider];
    [v18 value];
    v19 = [v17 shouldShowHighLight:?];

    if (v19)
    {
      v20 = [(PLSegmentedLabelSliderCell *)v9 delegate];
      [v20 getHighlightValue];
      [(PLSegmentedLabelSliderCell *)v9 highlightValue:?];
    }

    v21 = [(PLSegmentedLabelSliderCell *)v9 contentView];
    v22 = [(PLSegmentedLabelSliderCell *)v9 labelStack];
    v77 = v21;
    [v21 addSubview:v22];

    v23 = [(PLSegmentedLabelSliderCell *)v9 slider];
    [v21 addSubview:v23];

    v24 = [(PLSegmentedLabelSliderCell *)v9 slider];
    [v21 bringSubviewToFront:v24];

    [(PLSegmentedLabelSliderCell *)v9 setSeparatorStyle:1];
    [(PLSegmentedLabelSliderCell *)v9 setSeparatorInset:0.0, 0.0, 0.0, 0.0];
    v25 = [(PLSegmentedLabelSliderCell *)v9 labelStack];
    v26 = [v25 arrangedSubviews];
    v27 = [v26 firstObject];

    [v27 sizeToFit];
    v28 = [(PLSegmentedLabelSliderCell *)v9 labelStack];
    v29 = [v28 arrangedSubviews];
    v30 = [v29 lastObject];

    [v30 sizeToFit];
    v75 = v30;
    v76 = v27;
    if (+[PLBatteryUIUtilities isDeviceLayoutRTL])
    {
      v31 = v30;
    }

    else
    {
      v31 = v27;
    }

    [v31 frame];
    v33 = v32 * 0.5;
    if (+[PLBatteryUIUtilities isDeviceLayoutRTL])
    {
      v34 = v27;
    }

    else
    {
      v34 = v30;
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

    v74 = [(PLSegmentedLabelSliderCell *)v9 slider];
    v72 = [v74 topAnchor];
    v73 = [(PLSegmentedLabelSliderCell *)v9 contentView];
    v71 = [v73 topAnchor];
    v70 = [v72 constraintEqualToAnchor:v71 constant:7.0];
    v80[0] = v70;
    v69 = [(PLSegmentedLabelSliderCell *)v9 slider];
    v67 = [v69 leadingAnchor];
    v68 = [(PLSegmentedLabelSliderCell *)v9 contentView];
    v66 = [v68 leadingAnchor];
    v65 = [v67 constraintEqualToAnchor:v66 constant:(v37 + 7.0)];
    v80[1] = v65;
    v64 = [(PLSegmentedLabelSliderCell *)v9 slider];
    v62 = [v64 trailingAnchor];
    v63 = [(PLSegmentedLabelSliderCell *)v9 contentView];
    v61 = [v63 trailingAnchor];
    v60 = [v62 constraintEqualToAnchor:v61 constant:(-7.0 - v37)];
    v80[2] = v60;
    v59 = [(PLSegmentedLabelSliderCell *)v9 labelStack];
    v57 = [v59 topAnchor];
    v58 = [(PLSegmentedLabelSliderCell *)v9 slider];
    v56 = [v58 bottomAnchor];
    v55 = [v57 constraintEqualToAnchor:v56 constant:3.0];
    v80[3] = v55;
    v54 = [(PLSegmentedLabelSliderCell *)v9 labelStack];
    v51 = [v54 leadingAnchor];
    v52 = [(PLSegmentedLabelSliderCell *)v9 slider];
    v50 = [v52 leadingAnchor];
    v49 = [v51 constraintEqualToAnchor:v50 constant:(18.0 - v33)];
    v80[4] = v49;
    v48 = [(PLSegmentedLabelSliderCell *)v9 labelStack];
    v38 = [v48 trailingAnchor];
    v39 = [(PLSegmentedLabelSliderCell *)v9 slider];
    v40 = [v39 trailingAnchor];
    v41 = [v38 constraintEqualToAnchor:v40 constant:(v36 + -18.0)];
    v80[5] = v41;
    v42 = [(PLSegmentedLabelSliderCell *)v9 labelStack];
    v43 = [v42 bottomAnchor];
    v44 = [(PLSegmentedLabelSliderCell *)v9 contentView];
    v45 = [v44 bottomAnchor];
    v46 = [v43 constraintEqualToAnchor:v45 constant:-15.0];
    v80[6] = v46;
    v53 = [NSArray arrayWithObjects:v80 count:7];

    [NSLayoutConstraint activateConstraints:v53];
    [(PLSegmentedLabelSliderCell *)v9 setNeedsLayout];

    v8 = v78;
  }

  return v9;
}

- (void)reloadWithSpecifier:(id)a3 animated:(BOOL)a4
{
  v6 = a3;
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_24D00;
  block[3] = &unk_1648D0;
  v9 = v6;
  v7 = v6;
  objc_copyWeak(&v11, &location);
  v12 = a4;
  v10 = self;
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v11);

  objc_destroyWeak(&location);
}

- (void)drawRect:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = PLSegmentedLabelSliderCell;
  [(PLSegmentedLabelSliderCell *)&v4 drawRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(PLSegmentedLabelSliderCell *)self hideLabelsIfNecessary];
}

- (void)hideLabelsIfNecessary
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v3 = [(PLSegmentedLabelSliderCell *)self labelMap];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_24FE0;
  v12[3] = &unk_1648F8;
  v12[4] = &v13;
  [v3 enumerateKeysAndObjectsUsingBlock:v12];

  v4 = [(PLSegmentedLabelSliderCell *)self slider];
  [v4 frame];
  v6 = v5;
  v7 = [(PLSegmentedLabelSliderCell *)self segments];
  v8 = v14[6];

  v9 = [(PLSegmentedLabelSliderCell *)self labelMap];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_2507C;
  v10[3] = &unk_164920;
  v10[4] = self;
  v11 = v6 / v7 < v8;
  [v9 enumerateKeysAndObjectsUsingBlock:v10];

  _Block_object_dispose(&v13, 8);
}

- (PLSegmentedLabelSliderCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end