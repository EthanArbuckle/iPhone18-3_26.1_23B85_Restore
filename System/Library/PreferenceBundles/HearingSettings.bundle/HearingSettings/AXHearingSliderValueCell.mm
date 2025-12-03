@interface AXHearingSliderValueCell
- (AXHearingSliderValueCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)_specifierKey;
- (id)accessibilityLabel;
- (id)description;
- (id)value;
- (id)valueString;
- (signed)numberOfSteps;
- (void)dealloc;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)setValue:(id)value;
- (void)sliderValueDidChange:(id)change;
- (void)updateContentsWithSpecifier:(id)specifier;
- (void)updateValue;
- (void)willMoveToSuperview:(id)superview;
@end

@implementation AXHearingSliderValueCell

- (AXHearingSliderValueCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v30.receiver = self;
  v30.super_class = AXHearingSliderValueCell;
  v4 = [(AXHearingSliderValueCell *)&v30 initWithStyle:1 reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc_init(NSNumberFormatter);
    numberFormatter = v4->_numberFormatter;
    v4->_numberFormatter = v5;

    [(NSNumberFormatter *)v4->_numberFormatter setNumberStyle:3];
    [(NSNumberFormatter *)v4->_numberFormatter setPercentSymbol:&stru_49868];
    [(NSNumberFormatter *)v4->_numberFormatter setMaximumFractionDigits:0];
    v7 = v4->_numberFormatter;
    v8 = [NSNumber numberWithInt:0];
    v9 = [(NSNumberFormatter *)v7 stringFromNumber:v8];
    [(NSNumberFormatter *)v7 setNotANumberSymbol:v9];

    v10 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v11 = dispatch_queue_create("hearing_slider_queue", v10);
    valueUpdateQueue = v4->_valueUpdateQueue;
    v4->_valueUpdateQueue = v11;

    v13 = objc_alloc_init(UILabel);
    valueLabel = v4->_valueLabel;
    v4->_valueLabel = v13;

    v15 = v4->_valueLabel;
    v16 = +[UIColor clearColor];
    [(UILabel *)v15 setBackgroundColor:v16];

    v17 = v4->_valueLabel;
    v18 = [UIFont systemFontOfSize:14.0];
    [(UILabel *)v17 setFont:v18];

    [(UILabel *)v4->_valueLabel setTextAlignment:1];
    contentView = [(AXHearingSliderValueCell *)v4 contentView];
    [contentView addSubview:v4->_valueLabel];

    [(UILabel *)v4->_valueLabel sizeToFit];
    v20 = v4->_numberFormatter;
    LODWORD(v21) = 1.0;
    v22 = [NSNumber numberWithFloat:v21];
    v23 = [(NSNumberFormatter *)v20 stringFromNumber:v22];
    font = [(UILabel *)v4->_valueLabel font];
    [v23 _legacy_sizeWithFont:font];
    v4->_valueWidth = v25 + 10.0;

    v26 = objc_alloc_init(HUIStepSlider);
    slider = v4->_slider;
    v4->_slider = v26;

    [(HUIStepSlider *)v4->_slider setIsAccessibilityElement:0];
    [(HUIStepSlider *)v4->_slider setContinuous:1];
    [(HUIStepSlider *)v4->_slider setDrawsEndTicks:0];
    [(HUIStepSlider *)v4->_slider addTarget:v4 action:"sliderValueDidChange:" forControlEvents:4096];
    contentView2 = [(AXHearingSliderValueCell *)v4 contentView];
    [contentView2 addSubview:v4->_slider];
  }

  return v4;
}

- (void)dealloc
{
  [(UIView *)self->_leftView removeFromSuperview];
  [(HUIStepSlider *)self->_slider removeFromSuperview];
  [(UILabel *)self->_valueLabel removeFromSuperview];
  v3.receiver = self;
  v3.super_class = AXHearingSliderValueCell;
  [(AXHearingSliderValueCell *)&v3 dealloc];
}

- (void)willMoveToSuperview:(id)superview
{
  v5.receiver = self;
  v5.super_class = AXHearingSliderValueCell;
  [(AXHearingSliderValueCell *)&v5 willMoveToSuperview:superview];
  specifier = [(AXHearingSliderValueCell *)self specifier];
  [(AXHearingSliderValueCell *)self updateContentsWithSpecifier:specifier];
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v26.receiver = self;
  v26.super_class = AXHearingSliderValueCell;
  specifierCopy = specifier;
  [(AXHearingSliderValueCell *)&v26 refreshCellContentsWithSpecifier:specifierCopy];
  [(AXHearingSliderValueCell *)self updateContentsWithSpecifier:specifierCopy, v26.receiver, v26.super_class];

  valueLabel = self->_valueLabel;
  valueString = [(AXHearingSliderValueCell *)self valueString];
  [(UILabel *)valueLabel setText:valueString];

  [(UILabel *)self->_valueLabel sizeToFit];
  numberFormatter = self->_numberFormatter;
  LODWORD(v8) = 1.0;
  v9 = [NSNumber numberWithFloat:v8];
  v10 = [(NSNumberFormatter *)numberFormatter stringFromNumber:v9];
  font = [(UILabel *)self->_valueLabel font];
  [v10 _legacy_sizeWithFont:font];
  self->_valueWidth = v12 + 10.0;

  _specifierKey = [(AXHearingSliderValueCell *)self _specifierKey];
  slider = self->_slider;
  v15 = OBJC_IVAR___PSTableCell__specifier;
  WeakRetained = objc_loadWeakRetained(&self->PSTableCell_opaque[OBJC_IVAR___PSTableCell__specifier]);
  v17 = [WeakRetained propertyForKey:PSControlMinimumKey];
  [v17 floatValue];
  [(HUIStepSlider *)slider setMinimumValue:?];

  v18 = self->_slider;
  v19 = objc_loadWeakRetained(&self->PSTableCell_opaque[v15]);
  v20 = [v19 propertyForKey:PSControlMaximumKey];
  [v20 floatValue];
  [(HUIStepSlider *)v18 setMaximumValue:?];

  [(HUIStepSlider *)self->_slider setSegmentCount:[(AXHearingSliderValueCell *)self numberOfSteps]];
  v21 = self->_slider;
  if ([_specifierKey isEqualToString:@"Treble"])
  {
    v22 = 0;
  }

  else
  {
    v22 = [_specifierKey isEqualToString:@"Bass"] ^ 1;
  }

  [(HUIStepSlider *)v21 setRestrictsValuesToTicks:v22];
  v23 = self->_slider;
  value = [(AXHearingSliderValueCell *)self value];
  [value doubleValue];
  *&v25 = v25;
  [(HUIStepSlider *)v23 setValue:v25];
}

- (void)prepareForReuse
{
  v11.receiver = self;
  v11.super_class = AXHearingSliderValueCell;
  [(AXHearingSliderValueCell *)&v11 prepareForReuse];
  leftView = self->_leftView;
  if (leftView)
  {
    [(UIView *)leftView removeFromSuperview];
    v4 = self->_leftView;
    self->_leftView = 0;
  }

  slider = self->_slider;
  v6 = +[UISlider appearance];
  minimumTrackTintColor = [v6 minimumTrackTintColor];
  [(HUIStepSlider *)slider setMinimumTrackTintColor:minimumTrackTintColor];

  v8 = self->_slider;
  v9 = +[UISlider appearance];
  maximumTrackTintColor = [v9 maximumTrackTintColor];
  [(HUIStepSlider *)v8 setMaximumTrackTintColor:maximumTrackTintColor];

  [(HUIStepSlider *)self->_slider setRestrictsValuesToTicks:1];
}

- (void)updateContentsWithSpecifier:(id)specifier
{
  v4 = OBJC_IVAR___PSTableCell__specifier;
  objc_storeWeak(&self->PSTableCell_opaque[OBJC_IVAR___PSTableCell__specifier], specifier);
  if (self->_leftView)
  {
    return;
  }

  _specifierKey = [(AXHearingSliderValueCell *)self _specifierKey];
  WeakRetained = objc_loadWeakRetained(&self->PSTableCell_opaque[v4]);
  userInfo = [WeakRetained userInfo];
  leftAvailable = [userInfo leftAvailable];
  if (!leftAvailable)
  {
    if ([_specifierKey isEqualToString:@"Treble"])
    {
      goto LABEL_9;
    }

    v26 = [_specifierKey isEqualToString:@"Bass"];

    if (v26)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

  v8 = objc_loadWeakRetained(&self->PSTableCell_opaque[v4]);
  userInfo2 = [v8 userInfo];
  if ([userInfo2 rightAvailable] && !objc_msgSend(_specifierKey, "hasPrefix:", @"Master"))
  {
    goto LABEL_7;
  }

  if ([_specifierKey isEqualToString:@"Treble"])
  {
    if ((leftAvailable & 1) == 0)
    {
LABEL_9:

      goto LABEL_10;
    }

LABEL_7:

    goto LABEL_9;
  }

  v29 = [_specifierKey isEqualToString:@"Bass"];
  if (leftAvailable)
  {
  }

  if ((v29 & 1) == 0)
  {
LABEL_29:
    v30 = accessibilityHearingAidImageNamed();
    v31 = [v30 imageWithRenderingMode:2];

    imageFlippedForRightToLeftLayoutDirection = [v31 imageFlippedForRightToLeftLayoutDirection];

    v32 = [[UIImageView alloc] initWithImage:imageFlippedForRightToLeftLayoutDirection];
    v33 = +[UIColor labelColor];
    [(UIView *)v32 setTintColor:v33];

    contentView = [(AXHearingSliderValueCell *)self contentView];
    [contentView addSubview:v32];

    leftView = self->_leftView;
    self->_leftView = v32;
    v36 = v32;

    [(UIView *)v36 frame];
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v44 = v43;

    v48.origin.x = v38;
    v48.origin.y = v40;
    v48.size.width = v42;
    v48.size.height = v44;
    self->_sliderMargin = CGRectGetWidth(v48) + 10.0 + 15.0;
    goto LABEL_30;
  }

LABEL_10:
  v10 = objc_alloc_init(UILabel);
  v11 = +[UIColor clearColor];
  [(UIView *)v10 setBackgroundColor:v11];

  v12 = [UIFont systemFontOfSize:15.0];
  [(UIView *)v10 setFont:v12];

  imageFlippedForRightToLeftLayoutDirection = hearingLocString();
  v14 = hearingLocString();
  if (([_specifierKey isEqualToString:@"Treble"] & 1) != 0 || objc_msgSend(_specifierKey, "isEqualToString:", @"Bass"))
  {
    v15 = hearingLocString();

    v16 = hearingLocString();

    v14 = v16;
    imageFlippedForRightToLeftLayoutDirection = v15;
  }

  font = [(UIView *)v10 font];
  [imageFlippedForRightToLeftLayoutDirection _legacy_sizeWithFont:font];
  v19 = v18;

  font2 = [(UIView *)v10 font];
  [v14 _legacy_sizeWithFont:font2];
  v22 = v21;

  if (v19 >= v22)
  {
    v23 = v19;
  }

  else
  {
    v23 = v22;
  }

  self->_sliderMargin = v23 + 10.0 + 15.0;
  if ([_specifierKey rangeOfString:@"Left"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([_specifierKey rangeOfString:@"Right"] == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([_specifierKey isEqualToString:@"Treble"] || objc_msgSend(_specifierKey, "isEqualToString:", @"Bass"))
      {
        v45 = hearingLocString();
        [(UIView *)v10 setText:v45];
      }

      goto LABEL_25;
    }

    v24 = v10;
    v25 = v14;
  }

  else
  {
    v24 = v10;
    v25 = imageFlippedForRightToLeftLayoutDirection;
  }

  [(UIView *)v24 setText:v25];
LABEL_25:
  [(UIView *)v10 sizeToFit];
  contentView2 = [(AXHearingSliderValueCell *)self contentView];
  [contentView2 addSubview:v10];

  v28 = self->_leftView;
  self->_leftView = v10;

LABEL_30:
}

- (void)sliderValueDidChange:(id)change
{
  [(HUIStepSlider *)self->_slider value];
  v5 = [NSNumber numberWithDouble:v4];
  valueUpdateQueue = self->_valueUpdateQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1C248;
  v8[3] = &unk_489F8;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(valueUpdateQueue, v8);
}

- (void)setValue:(id)value
{
  valueCopy = value;
  WeakRetained = objc_loadWeakRetained(&self->PSTableCell_opaque[OBJC_IVAR___PSTableCell__specifier]);
  userInfo = [WeakRetained userInfo];

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    _specifierKey = [(AXHearingSliderValueCell *)self _specifierKey];
    if ([_specifierKey isEqualToString:@"MasterVolume"])
    {
      [valueCopy doubleValue];
      [userInfo setLeftMicrophoneVolume:?];
    }

    else
    {
      if ([_specifierKey isEqualToString:@"LeftVolume"])
      {
        [valueCopy doubleValue];
        [userInfo setLeftMicrophoneVolume:?];
        goto LABEL_20;
      }

      if (![_specifierKey isEqualToString:@"RightVolume"])
      {
        if ([_specifierKey isEqualToString:@"MasterStreamVolume"])
        {
          [valueCopy doubleValue];
          [userInfo setLeftStreamVolume:?];
        }

        else
        {
          if ([_specifierKey isEqualToString:@"LeftStreamVolume"])
          {
            [valueCopy doubleValue];
            [userInfo setLeftStreamVolume:?];
            goto LABEL_20;
          }

          if (![_specifierKey isEqualToString:@"RightStreamVolume"])
          {
            if ([_specifierKey isEqualToString:@"MasterSensitivity"])
            {
              [valueCopy doubleValue];
              [userInfo setLeftSensitivity:?];
            }

            else
            {
              if ([_specifierKey isEqualToString:@"LeftSensitivity"])
              {
                [valueCopy doubleValue];
                [userInfo setLeftSensitivity:?];
                goto LABEL_20;
              }

              if (![_specifierKey isEqualToString:@"RightSensitivity"])
              {
                if ([_specifierKey isEqualToString:@"Treble"])
                {
                  [valueCopy doubleValue];
                  v8 = ((v7 + -0.5) * 255.0);
                  [userInfo setLeftTreble:v8];
                  [userInfo setRightTreble:v8];
                }

                else if ([_specifierKey isEqualToString:@"Bass"])
                {
                  [valueCopy doubleValue];
                  v10 = ((v9 + -0.5) * 255.0);
                  [userInfo setLeftBass:v10];
                  [userInfo setRightBass:v10];
                }

                else
                {
                  if ([_specifierKey isEqualToString:@"MasterMixedVolume"])
                  {
                    [valueCopy doubleValue];
                    [userInfo setLeftMixedVolume:?];
                  }

                  else
                  {
                    if ([_specifierKey isEqualToString:@"LeftMixedVolume"])
                    {
                      [valueCopy doubleValue];
                      [userInfo setLeftMixedVolume:?];
                      goto LABEL_20;
                    }

                    if (![_specifierKey isEqualToString:@"RightMixedVolume"])
                    {
                      goto LABEL_20;
                    }
                  }

                  [valueCopy doubleValue];
                  [userInfo setRightMixedVolume:?];
                }

LABEL_20:

                goto LABEL_21;
              }
            }

            [valueCopy doubleValue];
            [userInfo setRightSensitivity:?];
            goto LABEL_20;
          }
        }

        [valueCopy doubleValue];
        [userInfo setRightStreamVolume:?];
        goto LABEL_20;
      }
    }

    [valueCopy doubleValue];
    [userInfo setRightMicrophoneVolume:?];
    goto LABEL_20;
  }

LABEL_21:
}

- (id)value
{
  WeakRetained = objc_loadWeakRetained(&self->PSTableCell_opaque[OBJC_IVAR___PSTableCell__specifier]);
  userInfo = [WeakRetained userInfo];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = 0;
      goto LABEL_22;
    }
  }

  _specifierKey = [(AXHearingSliderValueCell *)self _specifierKey];
  if ([_specifierKey isEqualToString:@"LeftVolume"])
  {
    [userInfo leftMicrophoneVolume];
  }

  else if ([_specifierKey isEqualToString:@"RightVolume"])
  {
    [userInfo rightMicrophoneVolume];
  }

  else if ([_specifierKey isEqualToString:@"LeftMixedVolume"])
  {
    [userInfo leftMixedVolume];
  }

  else if ([_specifierKey isEqualToString:@"RightMixedVolume"])
  {
    [userInfo rightMixedVolume];
  }

  else if ([_specifierKey isEqualToString:@"LeftStreamVolume"])
  {
    [userInfo leftStreamVolume];
  }

  else if ([_specifierKey isEqualToString:@"RightStreamVolume"])
  {
    [userInfo rightStreamVolume];
  }

  else if ([_specifierKey isEqualToString:@"LeftSensitivity"])
  {
    [userInfo leftSensitivity];
  }

  else if ([_specifierKey isEqualToString:@"RightSensitivity"])
  {
    [userInfo rightSensitivity];
  }

  else
  {
    if ([_specifierKey isEqualToString:@"MasterStreamVolume"])
    {
      v8 = 0.0;
      v9 = 0.0;
      if ([userInfo leftAvailable])
      {
        [userInfo leftStreamVolume];
        v8 = v10 + 0.0;
        v9 = 1.0;
      }

      if ([userInfo rightAvailable])
      {
        v9 = v9 + 1.0;
        [userInfo rightStreamVolume];
        v8 = v8 + v11;
      }

      v12 = v8 / v9;
      v6 = [NSNumber numberWithDouble:v12];
      [userInfo leftStreamVolume];
      if (v12 != v13)
      {
        [userInfo setLeftStreamVolume:v12];
      }

      [userInfo rightStreamVolume];
      if (v12 != v14)
      {
        [userInfo setRightStreamVolume:v12];
      }

      goto LABEL_21;
    }

    if ([_specifierKey isEqualToString:@"MasterVolume"])
    {
      v15 = 0.0;
      v16 = 0.0;
      if ([userInfo leftAvailable])
      {
        [userInfo leftMicrophoneVolume];
        v16 = v17 + 0.0;
        v15 = 1.0;
      }

      if ([userInfo rightAvailable])
      {
        v15 = v15 + 1.0;
        [userInfo rightMicrophoneVolume];
        v16 = v16 + v18;
      }

      v19 = v16 / v15;
      v6 = [NSNumber numberWithDouble:v19];
      [userInfo leftMicrophoneVolume];
      if (v19 != v20)
      {
        [userInfo setLeftMicrophoneVolume:v19];
      }

      [userInfo rightMicrophoneVolume];
      if (v19 != v21)
      {
        [userInfo setRightMicrophoneVolume:v19];
      }

      goto LABEL_21;
    }

    if ([_specifierKey isEqualToString:@"MasterMixedVolume"])
    {
      v22 = 0.0;
      v23 = 0.0;
      if ([userInfo leftAvailable])
      {
        [userInfo leftMixedVolume];
        v23 = v24 + 0.0;
        v22 = 1.0;
      }

      if ([userInfo rightAvailable])
      {
        v22 = v22 + 1.0;
        [userInfo rightMixedVolume];
        v23 = v23 + v25;
      }

      v26 = v23 / v22;
      v6 = [NSNumber numberWithDouble:v26];
      [userInfo leftMixedVolume];
      if (v26 != v27)
      {
        [userInfo setLeftMixedVolume:v26];
      }

      [userInfo rightMixedVolume];
      if (v26 != v28)
      {
        [userInfo setRightMixedVolume:v26];
      }

      goto LABEL_21;
    }

    if ([_specifierKey isEqualToString:@"MasterSensitivity"])
    {
      v29 = 0.0;
      v30 = 0.0;
      if ([userInfo leftAvailable])
      {
        [userInfo leftSensitivity];
        v30 = v31 + 0.0;
        v29 = 1.0;
      }

      if ([userInfo rightAvailable])
      {
        v29 = v29 + 1.0;
        [userInfo rightSensitivity];
        v30 = v30 + v32;
      }

      v33 = v30 / v29;
      v6 = [NSNumber numberWithDouble:v33];
      [userInfo leftSensitivity];
      if (v33 != v34)
      {
        [userInfo setLeftSensitivity:v33];
      }

      [userInfo rightSensitivity];
      if (v33 != v35)
      {
        [userInfo setRightSensitivity:v33];
      }

      goto LABEL_21;
    }

    if ([_specifierKey isEqualToString:@"Treble"])
    {
      [userInfo leftTreble];
      leftTreble = [userInfo leftTreble];
      if (leftTreble != [userInfo rightTreble] && !objc_msgSend(userInfo, "leftTreble"))
      {
        [userInfo rightTreble];
      }
    }

    else
    {
      if (![_specifierKey isEqualToString:@"Bass"])
      {
        v6 = 0;
        goto LABEL_21;
      }

      [userInfo leftBass];
      leftBass = [userInfo leftBass];
      if (leftBass != [userInfo rightBass] && !objc_msgSend(userInfo, "leftBass"))
      {
        [userInfo rightBass];
      }
    }
  }

  v6 = [NSNumber numberWithDouble:?];
LABEL_21:

LABEL_22:

  return v6;
}

- (id)valueString
{
  value = [(AXHearingSliderValueCell *)self value];
  v4 = [(NSNumberFormatter *)self->_numberFormatter stringFromNumber:value];
  _specifierKey = [(AXHearingSliderValueCell *)self _specifierKey];
  if (([_specifierKey isEqualToString:@"Treble"] & 1) != 0 || objc_msgSend(_specifierKey, "isEqualToString:", @"Bass"))
  {
    numberFormatter = self->_numberFormatter;
    [value doubleValue];
    v8 = [NSNumber numberWithDouble:v7 + -0.5 + v7 + -0.5];
    v9 = [(NSNumberFormatter *)numberFormatter stringFromNumber:v8];

    v4 = v9;
  }

  return v4;
}

- (void)updateValue
{
  value = [(AXHearingSliderValueCell *)self value];
  if (value)
  {
    [(HUIStepSlider *)self->_slider value];
    v4 = v3;
    [value doubleValue];
    if (v5 != v4)
    {
      slider = self->_slider;
      [value doubleValue];
      *&v7 = v7;
      [(HUIStepSlider *)slider setValue:v7];
      valueLabel = self->_valueLabel;
      valueString = [(AXHearingSliderValueCell *)self valueString];
      [(UILabel *)valueLabel setText:valueString];

      [(HUIStepSlider *)self->_slider setSegmentCount:[(AXHearingSliderValueCell *)self numberOfSteps]];
    }
  }
}

- (signed)numberOfSteps
{
  WeakRetained = objc_loadWeakRetained(&self->PSTableCell_opaque[OBJC_IVAR___PSTableCell__specifier]);
  userInfo = [WeakRetained userInfo];

  _specifierKey = [(AXHearingSliderValueCell *)self _specifierKey];
  if ([_specifierKey isEqualToString:@"MasterVolume"])
  {
    leftMicrophoneVolumeSteps = [userInfo leftMicrophoneVolumeSteps];
    rightMicrophoneVolumeSteps = [userInfo rightMicrophoneVolumeSteps];
    goto LABEL_3;
  }

  if ([_specifierKey isEqualToString:@"LeftVolume"])
  {
    leftMicrophoneVolumeSteps2 = [userInfo leftMicrophoneVolumeSteps];
    goto LABEL_9;
  }

  if ([_specifierKey isEqualToString:@"RightVolume"])
  {
    leftMicrophoneVolumeSteps2 = [userInfo rightMicrophoneVolumeSteps];
    goto LABEL_9;
  }

  if ([_specifierKey isEqualToString:@"MasterStreamVolume"])
  {
    leftMicrophoneVolumeSteps = [userInfo leftStreamVolumeSteps];
    rightMicrophoneVolumeSteps = [userInfo rightStreamVolumeSteps];
  }

  else
  {
    if ([_specifierKey isEqualToString:@"LeftStreamVolume"])
    {
      leftMicrophoneVolumeSteps2 = [userInfo leftStreamVolumeSteps];
      goto LABEL_9;
    }

    if ([_specifierKey isEqualToString:@"RightStreamVolume"])
    {
      leftMicrophoneVolumeSteps2 = [userInfo rightStreamVolumeSteps];
      goto LABEL_9;
    }

    if (![_specifierKey isEqualToString:@"MasterSensitivity"])
    {
      if ([_specifierKey isEqualToString:@"LeftSensitivity"])
      {
        leftMicrophoneVolumeSteps2 = [userInfo leftSensitivitySteps];
      }

      else
      {
        if (![_specifierKey isEqualToString:@"RightSensitivity"])
        {
          if (([_specifierKey isEqualToString:@"Treble"] & 1) != 0 || objc_msgSend(_specifierKey, "isEqualToString:", @"Bass"))
          {
            LOWORD(leftMicrophoneVolumeSteps) = 2;
          }

          else
          {
            LOWORD(leftMicrophoneVolumeSteps) = 1;
          }

          goto LABEL_10;
        }

        leftMicrophoneVolumeSteps2 = [userInfo rightSensitivitySteps];
      }

LABEL_9:
      LOWORD(leftMicrophoneVolumeSteps) = leftMicrophoneVolumeSteps2;
      goto LABEL_10;
    }

    leftMicrophoneVolumeSteps = [userInfo leftSensitivitySteps];
    rightMicrophoneVolumeSteps = [userInfo rightSensitivitySteps];
  }

LABEL_3:
  if (leftMicrophoneVolumeSteps <= rightMicrophoneVolumeSteps)
  {
    LOWORD(leftMicrophoneVolumeSteps) = rightMicrophoneVolumeSteps;
  }

LABEL_10:
  if (![_specifierKey isEqualToString:@"MasterMixedVolume"])
  {
    if ([_specifierKey isEqualToString:@"LeftMixedVolume"])
    {
      leftMixedVolumeSteps = [userInfo leftMixedVolumeSteps];
    }

    else
    {
      if (![_specifierKey isEqualToString:@"RightMixedVolume"])
      {
        goto LABEL_18;
      }

      leftMixedVolumeSteps = [userInfo rightMixedVolumeSteps];
    }

    LOWORD(leftMicrophoneVolumeSteps) = leftMixedVolumeSteps;
    goto LABEL_18;
  }

  leftMicrophoneVolumeSteps = [userInfo leftMixedVolumeSteps];
  rightMixedVolumeSteps = [userInfo rightMixedVolumeSteps];
  if (leftMicrophoneVolumeSteps <= rightMixedVolumeSteps)
  {
    LOWORD(leftMicrophoneVolumeSteps) = rightMixedVolumeSteps;
  }

LABEL_18:

  return leftMicrophoneVolumeSteps;
}

- (void)layoutSubviews
{
  v46.receiver = self;
  v46.super_class = AXHearingSliderValueCell;
  [(AXHearingSliderValueCell *)&v46 layoutSubviews];
  value = [(AXHearingSliderValueCell *)self value];
  if (!value)
  {
    WeakRetained = objc_loadWeakRetained(&self->PSTableCell_opaque[OBJC_IVAR___PSTableCell__specifier]);
    value = [WeakRetained propertyForKey:PSDefaultValueKey];
  }

  leftView = self->_leftView;
  if (leftView)
  {
    [(UIView *)leftView frame];
    v7 = v6;
    v9 = v8;
    contentView = [(AXHearingSliderValueCell *)self contentView];
    [contentView frame];
    v12 = v11 * 0.5;
    v13 = v9 * 0.5;
    v14 = ((floorf(v12) - floorf(v13)) + 2.0);

    if ([UIApp userInterfaceLayoutDirection])
    {
      contentView2 = [(AXHearingSliderValueCell *)self contentView];
      [contentView2 bounds];
      v17 = v16 - v7 + -15.0;
    }

    else
    {
      v17 = 15.0;
    }

    [(UIView *)self->_leftView setFrame:v17, v14, v7, v9];
  }

  [(UILabel *)self->_valueLabel frame];
  v19 = v18;
  v21 = v20;
  valueWidth = self->_valueWidth;
  contentView3 = [(AXHearingSliderValueCell *)self contentView];
  [contentView3 frame];
  v25 = floor(v24 * 0.5);
  v26 = floor(v21 * 0.5);
  v27 = ((v25 - v26) + 2.0);

  v28 = 0.0;
  if (![UIApp userInterfaceLayoutDirection])
  {
    contentView4 = [(AXHearingSliderValueCell *)self contentView];
    [contentView4 frame];
    Width = CGRectGetWidth(v47);
    v48.origin.x = v19;
    v48.origin.y = v27;
    v48.size.width = valueWidth;
    v48.size.height = v21;
    v28 = Width - CGRectGetWidth(v48);
  }

  [(UILabel *)self->_valueLabel setFrame:v28, v27, valueWidth, v21];
  contentView5 = [(AXHearingSliderValueCell *)self contentView];
  [contentView5 frame];
  v32 = CGRectGetWidth(v49);
  sliderMargin = self->_sliderMargin;
  v50.origin.x = v28;
  v50.origin.y = v27;
  v50.size.width = valueWidth;
  v50.size.height = v21;
  v34 = CGRectGetWidth(v50);

  v35 = self->_sliderMargin;
  if ([UIApp userInterfaceLayoutDirection] == &dword_0 + 1)
  {
    contentView6 = [(AXHearingSliderValueCell *)self contentView];
    [contentView6 frame];
    v37 = CGRectGetWidth(v51) - self->_sliderMargin;
    v52.origin.x = v28;
    v52.origin.y = v27;
    v52.size.width = valueWidth;
    v52.size.height = v21;
    v38 = v37 - CGRectGetWidth(v52);

    v35 = valueWidth;
  }

  else
  {
    v38 = v32 - sliderMargin - v34;
  }

  [(HUIStepSlider *)self->_slider frame];
  v40 = v39;
  contentView7 = [(AXHearingSliderValueCell *)self contentView];
  [contentView7 frame];
  v43 = v42 * 0.5;
  v44 = v40 * 0.5;
  v45 = ((floorf(v43) - floorf(v44)) + 2.0);

  [(HUIStepSlider *)self->_slider setFrame:v35, v45, v38, v40];
}

- (id)accessibilityLabel
{
  _specifierKey = [(AXHearingSliderValueCell *)self _specifierKey];
  WeakRetained = objc_loadWeakRetained(&self->PSTableCell_opaque[OBJC_IVAR___PSTableCell__specifier]);
  userInfo = [WeakRetained userInfo];

  if ([_specifierKey isEqualToString:@"MasterVolume"] || objc_msgSend(_specifierKey, "isEqualToString:", @"LeftVolume") || objc_msgSend(_specifierKey, "isEqualToString:", @"RightVolume"))
  {
    goto LABEL_4;
  }

  if ([_specifierKey isEqualToString:@"MasterStreamVolume"])
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = sub_1D9E0;
    v21 = sub_1D9F0;
    rightSelectedStreamingProgram = [userInfo rightSelectedStreamingProgram];
    if (([v18[5] isStream] & 1) == 0)
    {
      programs = [userInfo programs];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1D9F8;
      v16[3] = &unk_48FB0;
      v16[4] = &v17;
      [programs enumerateObjectsUsingBlock:v16];
    }

    v9 = hearingLocString();
    if ([v18[5] isStream])
    {
      [v18[5] name];
    }

    else
    {
      hearingLocString();
    }
    v12 = ;
    v13 = [NSString stringWithFormat:v9, v12];
LABEL_33:
    v6 = v13;

    _Block_object_dispose(&v17, 8);
    goto LABEL_5;
  }

  if ([_specifierKey isEqualToString:@"LeftStreamVolume"])
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = sub_1D9E0;
    v21 = sub_1D9F0;
    rightSelectedStreamingProgram = [userInfo leftSelectedStreamingProgram];
    if (([v18[5] isStream] & 1) == 0)
    {
      leftPrograms = [userInfo leftPrograms];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_1DA7C;
      v15[3] = &unk_48FB0;
      v15[4] = &v17;
      [leftPrograms enumerateObjectsUsingBlock:v15];
    }

    v9 = hearingLocString();
    if ([v18[5] isStream])
    {
      [v18[5] name];
    }

    else
    {
      hearingLocString();
    }
    v12 = ;
    v13 = [NSString stringWithFormat:v9, v12];
    goto LABEL_33;
  }

  if ([_specifierKey isEqualToString:@"RightStreamVolume"])
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = sub_1D9E0;
    v21 = sub_1D9F0;
    rightSelectedStreamingProgram = [userInfo rightSelectedStreamingProgram];
    if (([v18[5] isStream] & 1) == 0)
    {
      rightPrograms = [userInfo rightPrograms];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1DB00;
      v14[3] = &unk_48FB0;
      v14[4] = &v17;
      [rightPrograms enumerateObjectsUsingBlock:v14];
    }

    v9 = hearingLocString();
    if ([v18[5] isStream])
    {
      [v18[5] name];
    }

    else
    {
      hearingLocString();
    }
    v12 = ;
    v13 = [NSString stringWithFormat:v9, v12];
    goto LABEL_33;
  }

  if ([_specifierKey isEqualToString:@"MasterSensitivity"] || objc_msgSend(_specifierKey, "isEqualToString:", @"LeftSensitivity") || objc_msgSend(_specifierKey, "isEqualToString:", @"RightSensitivity") || objc_msgSend(_specifierKey, "isEqualToString:", @"Treble") || objc_msgSend(_specifierKey, "isEqualToString:", @"Bass") || objc_msgSend(_specifierKey, "isEqualToString:", @"MasterMixedVolume") || objc_msgSend(_specifierKey, "isEqualToString:", @"LeftMixedVolume") || objc_msgSend(_specifierKey, "isEqualToString:", @"RightMixedVolume"))
  {
LABEL_4:
    v6 = hearingLocString();
    goto LABEL_5;
  }

  v6 = 0;
LABEL_5:

  return v6;
}

- (id)description
{
  _specifierKey = [(AXHearingSliderValueCell *)self _specifierKey];
  v9.receiver = self;
  v9.super_class = AXHearingSliderValueCell;
  v4 = [(AXHearingSliderValueCell *)&v9 description];
  WeakRetained = objc_loadWeakRetained(&self->PSTableCell_opaque[OBJC_IVAR___PSTableCell__specifier]);
  userInfo = [WeakRetained userInfo];
  v7 = [NSString stringWithFormat:@"%@ (%@) - [%@]", v4, _specifierKey, userInfo];

  return v7;
}

- (id)_specifierKey
{
  v3 = OBJC_IVAR___PSTableCell__specifier;
  WeakRetained = objc_loadWeakRetained(&self->PSTableCell_opaque[OBJC_IVAR___PSTableCell__specifier]);
  v5 = [WeakRetained propertyForKey:PSKeyNameKey];

  if (!v5)
  {
    v6 = objc_loadWeakRetained(&self->PSTableCell_opaque[v3]);
    v5 = [v6 propertyForKey:PSIDKey];
  }

  return v5;
}

@end