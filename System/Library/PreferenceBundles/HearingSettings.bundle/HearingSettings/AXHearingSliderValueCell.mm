@interface AXHearingSliderValueCell
- (AXHearingSliderValueCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)_specifierKey;
- (id)accessibilityLabel;
- (id)description;
- (id)value;
- (id)valueString;
- (signed)numberOfSteps;
- (void)dealloc;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)a3;
- (void)setValue:(id)a3;
- (void)sliderValueDidChange:(id)a3;
- (void)updateContentsWithSpecifier:(id)a3;
- (void)updateValue;
- (void)willMoveToSuperview:(id)a3;
@end

@implementation AXHearingSliderValueCell

- (AXHearingSliderValueCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v30.receiver = self;
  v30.super_class = AXHearingSliderValueCell;
  v4 = [(AXHearingSliderValueCell *)&v30 initWithStyle:1 reuseIdentifier:a4];
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
    v19 = [(AXHearingSliderValueCell *)v4 contentView];
    [v19 addSubview:v4->_valueLabel];

    [(UILabel *)v4->_valueLabel sizeToFit];
    v20 = v4->_numberFormatter;
    LODWORD(v21) = 1.0;
    v22 = [NSNumber numberWithFloat:v21];
    v23 = [(NSNumberFormatter *)v20 stringFromNumber:v22];
    v24 = [(UILabel *)v4->_valueLabel font];
    [v23 _legacy_sizeWithFont:v24];
    v4->_valueWidth = v25 + 10.0;

    v26 = objc_alloc_init(HUIStepSlider);
    slider = v4->_slider;
    v4->_slider = v26;

    [(HUIStepSlider *)v4->_slider setIsAccessibilityElement:0];
    [(HUIStepSlider *)v4->_slider setContinuous:1];
    [(HUIStepSlider *)v4->_slider setDrawsEndTicks:0];
    [(HUIStepSlider *)v4->_slider addTarget:v4 action:"sliderValueDidChange:" forControlEvents:4096];
    v28 = [(AXHearingSliderValueCell *)v4 contentView];
    [v28 addSubview:v4->_slider];
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

- (void)willMoveToSuperview:(id)a3
{
  v5.receiver = self;
  v5.super_class = AXHearingSliderValueCell;
  [(AXHearingSliderValueCell *)&v5 willMoveToSuperview:a3];
  v4 = [(AXHearingSliderValueCell *)self specifier];
  [(AXHearingSliderValueCell *)self updateContentsWithSpecifier:v4];
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v26.receiver = self;
  v26.super_class = AXHearingSliderValueCell;
  v4 = a3;
  [(AXHearingSliderValueCell *)&v26 refreshCellContentsWithSpecifier:v4];
  [(AXHearingSliderValueCell *)self updateContentsWithSpecifier:v4, v26.receiver, v26.super_class];

  valueLabel = self->_valueLabel;
  v6 = [(AXHearingSliderValueCell *)self valueString];
  [(UILabel *)valueLabel setText:v6];

  [(UILabel *)self->_valueLabel sizeToFit];
  numberFormatter = self->_numberFormatter;
  LODWORD(v8) = 1.0;
  v9 = [NSNumber numberWithFloat:v8];
  v10 = [(NSNumberFormatter *)numberFormatter stringFromNumber:v9];
  v11 = [(UILabel *)self->_valueLabel font];
  [v10 _legacy_sizeWithFont:v11];
  self->_valueWidth = v12 + 10.0;

  v13 = [(AXHearingSliderValueCell *)self _specifierKey];
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
  if ([v13 isEqualToString:@"Treble"])
  {
    v22 = 0;
  }

  else
  {
    v22 = [v13 isEqualToString:@"Bass"] ^ 1;
  }

  [(HUIStepSlider *)v21 setRestrictsValuesToTicks:v22];
  v23 = self->_slider;
  v24 = [(AXHearingSliderValueCell *)self value];
  [v24 doubleValue];
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
  v7 = [v6 minimumTrackTintColor];
  [(HUIStepSlider *)slider setMinimumTrackTintColor:v7];

  v8 = self->_slider;
  v9 = +[UISlider appearance];
  v10 = [v9 maximumTrackTintColor];
  [(HUIStepSlider *)v8 setMaximumTrackTintColor:v10];

  [(HUIStepSlider *)self->_slider setRestrictsValuesToTicks:1];
}

- (void)updateContentsWithSpecifier:(id)a3
{
  v4 = OBJC_IVAR___PSTableCell__specifier;
  objc_storeWeak(&self->PSTableCell_opaque[OBJC_IVAR___PSTableCell__specifier], a3);
  if (self->_leftView)
  {
    return;
  }

  v46 = [(AXHearingSliderValueCell *)self _specifierKey];
  WeakRetained = objc_loadWeakRetained(&self->PSTableCell_opaque[v4]);
  v6 = [WeakRetained userInfo];
  v7 = [v6 leftAvailable];
  if (!v7)
  {
    if ([v46 isEqualToString:@"Treble"])
    {
      goto LABEL_9;
    }

    v26 = [v46 isEqualToString:@"Bass"];

    if (v26)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

  v8 = objc_loadWeakRetained(&self->PSTableCell_opaque[v4]);
  v9 = [v8 userInfo];
  if ([v9 rightAvailable] && !objc_msgSend(v46, "hasPrefix:", @"Master"))
  {
    goto LABEL_7;
  }

  if ([v46 isEqualToString:@"Treble"])
  {
    if ((v7 & 1) == 0)
    {
LABEL_9:

      goto LABEL_10;
    }

LABEL_7:

    goto LABEL_9;
  }

  v29 = [v46 isEqualToString:@"Bass"];
  if (v7)
  {
  }

  if ((v29 & 1) == 0)
  {
LABEL_29:
    v30 = accessibilityHearingAidImageNamed();
    v31 = [v30 imageWithRenderingMode:2];

    v13 = [v31 imageFlippedForRightToLeftLayoutDirection];

    v32 = [[UIImageView alloc] initWithImage:v13];
    v33 = +[UIColor labelColor];
    [(UIView *)v32 setTintColor:v33];

    v34 = [(AXHearingSliderValueCell *)self contentView];
    [v34 addSubview:v32];

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

  v13 = hearingLocString();
  v14 = hearingLocString();
  if (([v46 isEqualToString:@"Treble"] & 1) != 0 || objc_msgSend(v46, "isEqualToString:", @"Bass"))
  {
    v15 = hearingLocString();

    v16 = hearingLocString();

    v14 = v16;
    v13 = v15;
  }

  v17 = [(UIView *)v10 font];
  [v13 _legacy_sizeWithFont:v17];
  v19 = v18;

  v20 = [(UIView *)v10 font];
  [v14 _legacy_sizeWithFont:v20];
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
  if ([v46 rangeOfString:@"Left"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([v46 rangeOfString:@"Right"] == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([v46 isEqualToString:@"Treble"] || objc_msgSend(v46, "isEqualToString:", @"Bass"))
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
    v25 = v13;
  }

  [(UIView *)v24 setText:v25];
LABEL_25:
  [(UIView *)v10 sizeToFit];
  v27 = [(AXHearingSliderValueCell *)self contentView];
  [v27 addSubview:v10];

  v28 = self->_leftView;
  self->_leftView = v10;

LABEL_30:
}

- (void)sliderValueDidChange:(id)a3
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

- (void)setValue:(id)a3
{
  v11 = a3;
  WeakRetained = objc_loadWeakRetained(&self->PSTableCell_opaque[OBJC_IVAR___PSTableCell__specifier]);
  v5 = [WeakRetained userInfo];

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v6 = [(AXHearingSliderValueCell *)self _specifierKey];
    if ([v6 isEqualToString:@"MasterVolume"])
    {
      [v11 doubleValue];
      [v5 setLeftMicrophoneVolume:?];
    }

    else
    {
      if ([v6 isEqualToString:@"LeftVolume"])
      {
        [v11 doubleValue];
        [v5 setLeftMicrophoneVolume:?];
        goto LABEL_20;
      }

      if (![v6 isEqualToString:@"RightVolume"])
      {
        if ([v6 isEqualToString:@"MasterStreamVolume"])
        {
          [v11 doubleValue];
          [v5 setLeftStreamVolume:?];
        }

        else
        {
          if ([v6 isEqualToString:@"LeftStreamVolume"])
          {
            [v11 doubleValue];
            [v5 setLeftStreamVolume:?];
            goto LABEL_20;
          }

          if (![v6 isEqualToString:@"RightStreamVolume"])
          {
            if ([v6 isEqualToString:@"MasterSensitivity"])
            {
              [v11 doubleValue];
              [v5 setLeftSensitivity:?];
            }

            else
            {
              if ([v6 isEqualToString:@"LeftSensitivity"])
              {
                [v11 doubleValue];
                [v5 setLeftSensitivity:?];
                goto LABEL_20;
              }

              if (![v6 isEqualToString:@"RightSensitivity"])
              {
                if ([v6 isEqualToString:@"Treble"])
                {
                  [v11 doubleValue];
                  v8 = ((v7 + -0.5) * 255.0);
                  [v5 setLeftTreble:v8];
                  [v5 setRightTreble:v8];
                }

                else if ([v6 isEqualToString:@"Bass"])
                {
                  [v11 doubleValue];
                  v10 = ((v9 + -0.5) * 255.0);
                  [v5 setLeftBass:v10];
                  [v5 setRightBass:v10];
                }

                else
                {
                  if ([v6 isEqualToString:@"MasterMixedVolume"])
                  {
                    [v11 doubleValue];
                    [v5 setLeftMixedVolume:?];
                  }

                  else
                  {
                    if ([v6 isEqualToString:@"LeftMixedVolume"])
                    {
                      [v11 doubleValue];
                      [v5 setLeftMixedVolume:?];
                      goto LABEL_20;
                    }

                    if (![v6 isEqualToString:@"RightMixedVolume"])
                    {
                      goto LABEL_20;
                    }
                  }

                  [v11 doubleValue];
                  [v5 setRightMixedVolume:?];
                }

LABEL_20:

                goto LABEL_21;
              }
            }

            [v11 doubleValue];
            [v5 setRightSensitivity:?];
            goto LABEL_20;
          }
        }

        [v11 doubleValue];
        [v5 setRightStreamVolume:?];
        goto LABEL_20;
      }
    }

    [v11 doubleValue];
    [v5 setRightMicrophoneVolume:?];
    goto LABEL_20;
  }

LABEL_21:
}

- (id)value
{
  WeakRetained = objc_loadWeakRetained(&self->PSTableCell_opaque[OBJC_IVAR___PSTableCell__specifier]);
  v4 = [WeakRetained userInfo];

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

  v5 = [(AXHearingSliderValueCell *)self _specifierKey];
  if ([v5 isEqualToString:@"LeftVolume"])
  {
    [v4 leftMicrophoneVolume];
  }

  else if ([v5 isEqualToString:@"RightVolume"])
  {
    [v4 rightMicrophoneVolume];
  }

  else if ([v5 isEqualToString:@"LeftMixedVolume"])
  {
    [v4 leftMixedVolume];
  }

  else if ([v5 isEqualToString:@"RightMixedVolume"])
  {
    [v4 rightMixedVolume];
  }

  else if ([v5 isEqualToString:@"LeftStreamVolume"])
  {
    [v4 leftStreamVolume];
  }

  else if ([v5 isEqualToString:@"RightStreamVolume"])
  {
    [v4 rightStreamVolume];
  }

  else if ([v5 isEqualToString:@"LeftSensitivity"])
  {
    [v4 leftSensitivity];
  }

  else if ([v5 isEqualToString:@"RightSensitivity"])
  {
    [v4 rightSensitivity];
  }

  else
  {
    if ([v5 isEqualToString:@"MasterStreamVolume"])
    {
      v8 = 0.0;
      v9 = 0.0;
      if ([v4 leftAvailable])
      {
        [v4 leftStreamVolume];
        v8 = v10 + 0.0;
        v9 = 1.0;
      }

      if ([v4 rightAvailable])
      {
        v9 = v9 + 1.0;
        [v4 rightStreamVolume];
        v8 = v8 + v11;
      }

      v12 = v8 / v9;
      v6 = [NSNumber numberWithDouble:v12];
      [v4 leftStreamVolume];
      if (v12 != v13)
      {
        [v4 setLeftStreamVolume:v12];
      }

      [v4 rightStreamVolume];
      if (v12 != v14)
      {
        [v4 setRightStreamVolume:v12];
      }

      goto LABEL_21;
    }

    if ([v5 isEqualToString:@"MasterVolume"])
    {
      v15 = 0.0;
      v16 = 0.0;
      if ([v4 leftAvailable])
      {
        [v4 leftMicrophoneVolume];
        v16 = v17 + 0.0;
        v15 = 1.0;
      }

      if ([v4 rightAvailable])
      {
        v15 = v15 + 1.0;
        [v4 rightMicrophoneVolume];
        v16 = v16 + v18;
      }

      v19 = v16 / v15;
      v6 = [NSNumber numberWithDouble:v19];
      [v4 leftMicrophoneVolume];
      if (v19 != v20)
      {
        [v4 setLeftMicrophoneVolume:v19];
      }

      [v4 rightMicrophoneVolume];
      if (v19 != v21)
      {
        [v4 setRightMicrophoneVolume:v19];
      }

      goto LABEL_21;
    }

    if ([v5 isEqualToString:@"MasterMixedVolume"])
    {
      v22 = 0.0;
      v23 = 0.0;
      if ([v4 leftAvailable])
      {
        [v4 leftMixedVolume];
        v23 = v24 + 0.0;
        v22 = 1.0;
      }

      if ([v4 rightAvailable])
      {
        v22 = v22 + 1.0;
        [v4 rightMixedVolume];
        v23 = v23 + v25;
      }

      v26 = v23 / v22;
      v6 = [NSNumber numberWithDouble:v26];
      [v4 leftMixedVolume];
      if (v26 != v27)
      {
        [v4 setLeftMixedVolume:v26];
      }

      [v4 rightMixedVolume];
      if (v26 != v28)
      {
        [v4 setRightMixedVolume:v26];
      }

      goto LABEL_21;
    }

    if ([v5 isEqualToString:@"MasterSensitivity"])
    {
      v29 = 0.0;
      v30 = 0.0;
      if ([v4 leftAvailable])
      {
        [v4 leftSensitivity];
        v30 = v31 + 0.0;
        v29 = 1.0;
      }

      if ([v4 rightAvailable])
      {
        v29 = v29 + 1.0;
        [v4 rightSensitivity];
        v30 = v30 + v32;
      }

      v33 = v30 / v29;
      v6 = [NSNumber numberWithDouble:v33];
      [v4 leftSensitivity];
      if (v33 != v34)
      {
        [v4 setLeftSensitivity:v33];
      }

      [v4 rightSensitivity];
      if (v33 != v35)
      {
        [v4 setRightSensitivity:v33];
      }

      goto LABEL_21;
    }

    if ([v5 isEqualToString:@"Treble"])
    {
      [v4 leftTreble];
      v36 = [v4 leftTreble];
      if (v36 != [v4 rightTreble] && !objc_msgSend(v4, "leftTreble"))
      {
        [v4 rightTreble];
      }
    }

    else
    {
      if (![v5 isEqualToString:@"Bass"])
      {
        v6 = 0;
        goto LABEL_21;
      }

      [v4 leftBass];
      v37 = [v4 leftBass];
      if (v37 != [v4 rightBass] && !objc_msgSend(v4, "leftBass"))
      {
        [v4 rightBass];
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
  v3 = [(AXHearingSliderValueCell *)self value];
  v4 = [(NSNumberFormatter *)self->_numberFormatter stringFromNumber:v3];
  v5 = [(AXHearingSliderValueCell *)self _specifierKey];
  if (([v5 isEqualToString:@"Treble"] & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"Bass"))
  {
    numberFormatter = self->_numberFormatter;
    [v3 doubleValue];
    v8 = [NSNumber numberWithDouble:v7 + -0.5 + v7 + -0.5];
    v9 = [(NSNumberFormatter *)numberFormatter stringFromNumber:v8];

    v4 = v9;
  }

  return v4;
}

- (void)updateValue
{
  v10 = [(AXHearingSliderValueCell *)self value];
  if (v10)
  {
    [(HUIStepSlider *)self->_slider value];
    v4 = v3;
    [v10 doubleValue];
    if (v5 != v4)
    {
      slider = self->_slider;
      [v10 doubleValue];
      *&v7 = v7;
      [(HUIStepSlider *)slider setValue:v7];
      valueLabel = self->_valueLabel;
      v9 = [(AXHearingSliderValueCell *)self valueString];
      [(UILabel *)valueLabel setText:v9];

      [(HUIStepSlider *)self->_slider setSegmentCount:[(AXHearingSliderValueCell *)self numberOfSteps]];
    }
  }
}

- (signed)numberOfSteps
{
  WeakRetained = objc_loadWeakRetained(&self->PSTableCell_opaque[OBJC_IVAR___PSTableCell__specifier]);
  v4 = [WeakRetained userInfo];

  v5 = [(AXHearingSliderValueCell *)self _specifierKey];
  if ([v5 isEqualToString:@"MasterVolume"])
  {
    v6 = [v4 leftMicrophoneVolumeSteps];
    v7 = [v4 rightMicrophoneVolumeSteps];
    goto LABEL_3;
  }

  if ([v5 isEqualToString:@"LeftVolume"])
  {
    v8 = [v4 leftMicrophoneVolumeSteps];
    goto LABEL_9;
  }

  if ([v5 isEqualToString:@"RightVolume"])
  {
    v8 = [v4 rightMicrophoneVolumeSteps];
    goto LABEL_9;
  }

  if ([v5 isEqualToString:@"MasterStreamVolume"])
  {
    v6 = [v4 leftStreamVolumeSteps];
    v7 = [v4 rightStreamVolumeSteps];
  }

  else
  {
    if ([v5 isEqualToString:@"LeftStreamVolume"])
    {
      v8 = [v4 leftStreamVolumeSteps];
      goto LABEL_9;
    }

    if ([v5 isEqualToString:@"RightStreamVolume"])
    {
      v8 = [v4 rightStreamVolumeSteps];
      goto LABEL_9;
    }

    if (![v5 isEqualToString:@"MasterSensitivity"])
    {
      if ([v5 isEqualToString:@"LeftSensitivity"])
      {
        v8 = [v4 leftSensitivitySteps];
      }

      else
      {
        if (![v5 isEqualToString:@"RightSensitivity"])
        {
          if (([v5 isEqualToString:@"Treble"] & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"Bass"))
          {
            LOWORD(v6) = 2;
          }

          else
          {
            LOWORD(v6) = 1;
          }

          goto LABEL_10;
        }

        v8 = [v4 rightSensitivitySteps];
      }

LABEL_9:
      LOWORD(v6) = v8;
      goto LABEL_10;
    }

    v6 = [v4 leftSensitivitySteps];
    v7 = [v4 rightSensitivitySteps];
  }

LABEL_3:
  if (v6 <= v7)
  {
    LOWORD(v6) = v7;
  }

LABEL_10:
  if (![v5 isEqualToString:@"MasterMixedVolume"])
  {
    if ([v5 isEqualToString:@"LeftMixedVolume"])
    {
      v10 = [v4 leftMixedVolumeSteps];
    }

    else
    {
      if (![v5 isEqualToString:@"RightMixedVolume"])
      {
        goto LABEL_18;
      }

      v10 = [v4 rightMixedVolumeSteps];
    }

    LOWORD(v6) = v10;
    goto LABEL_18;
  }

  v6 = [v4 leftMixedVolumeSteps];
  v9 = [v4 rightMixedVolumeSteps];
  if (v6 <= v9)
  {
    LOWORD(v6) = v9;
  }

LABEL_18:

  return v6;
}

- (void)layoutSubviews
{
  v46.receiver = self;
  v46.super_class = AXHearingSliderValueCell;
  [(AXHearingSliderValueCell *)&v46 layoutSubviews];
  v3 = [(AXHearingSliderValueCell *)self value];
  if (!v3)
  {
    WeakRetained = objc_loadWeakRetained(&self->PSTableCell_opaque[OBJC_IVAR___PSTableCell__specifier]);
    v3 = [WeakRetained propertyForKey:PSDefaultValueKey];
  }

  leftView = self->_leftView;
  if (leftView)
  {
    [(UIView *)leftView frame];
    v7 = v6;
    v9 = v8;
    v10 = [(AXHearingSliderValueCell *)self contentView];
    [v10 frame];
    v12 = v11 * 0.5;
    v13 = v9 * 0.5;
    v14 = ((floorf(v12) - floorf(v13)) + 2.0);

    if ([UIApp userInterfaceLayoutDirection])
    {
      v15 = [(AXHearingSliderValueCell *)self contentView];
      [v15 bounds];
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
  v23 = [(AXHearingSliderValueCell *)self contentView];
  [v23 frame];
  v25 = floor(v24 * 0.5);
  v26 = floor(v21 * 0.5);
  v27 = ((v25 - v26) + 2.0);

  v28 = 0.0;
  if (![UIApp userInterfaceLayoutDirection])
  {
    v29 = [(AXHearingSliderValueCell *)self contentView];
    [v29 frame];
    Width = CGRectGetWidth(v47);
    v48.origin.x = v19;
    v48.origin.y = v27;
    v48.size.width = valueWidth;
    v48.size.height = v21;
    v28 = Width - CGRectGetWidth(v48);
  }

  [(UILabel *)self->_valueLabel setFrame:v28, v27, valueWidth, v21];
  v31 = [(AXHearingSliderValueCell *)self contentView];
  [v31 frame];
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
    v36 = [(AXHearingSliderValueCell *)self contentView];
    [v36 frame];
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
  v41 = [(AXHearingSliderValueCell *)self contentView];
  [v41 frame];
  v43 = v42 * 0.5;
  v44 = v40 * 0.5;
  v45 = ((floorf(v43) - floorf(v44)) + 2.0);

  [(HUIStepSlider *)self->_slider setFrame:v35, v45, v38, v40];
}

- (id)accessibilityLabel
{
  v3 = [(AXHearingSliderValueCell *)self _specifierKey];
  WeakRetained = objc_loadWeakRetained(&self->PSTableCell_opaque[OBJC_IVAR___PSTableCell__specifier]);
  v5 = [WeakRetained userInfo];

  if ([v3 isEqualToString:@"MasterVolume"] || objc_msgSend(v3, "isEqualToString:", @"LeftVolume") || objc_msgSend(v3, "isEqualToString:", @"RightVolume"))
  {
    goto LABEL_4;
  }

  if ([v3 isEqualToString:@"MasterStreamVolume"])
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = sub_1D9E0;
    v21 = sub_1D9F0;
    v22 = [v5 rightSelectedStreamingProgram];
    if (([v18[5] isStream] & 1) == 0)
    {
      v8 = [v5 programs];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1D9F8;
      v16[3] = &unk_48FB0;
      v16[4] = &v17;
      [v8 enumerateObjectsUsingBlock:v16];
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

  if ([v3 isEqualToString:@"LeftStreamVolume"])
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = sub_1D9E0;
    v21 = sub_1D9F0;
    v22 = [v5 leftSelectedStreamingProgram];
    if (([v18[5] isStream] & 1) == 0)
    {
      v10 = [v5 leftPrograms];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_1DA7C;
      v15[3] = &unk_48FB0;
      v15[4] = &v17;
      [v10 enumerateObjectsUsingBlock:v15];
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

  if ([v3 isEqualToString:@"RightStreamVolume"])
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = sub_1D9E0;
    v21 = sub_1D9F0;
    v22 = [v5 rightSelectedStreamingProgram];
    if (([v18[5] isStream] & 1) == 0)
    {
      v11 = [v5 rightPrograms];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1DB00;
      v14[3] = &unk_48FB0;
      v14[4] = &v17;
      [v11 enumerateObjectsUsingBlock:v14];
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

  if ([v3 isEqualToString:@"MasterSensitivity"] || objc_msgSend(v3, "isEqualToString:", @"LeftSensitivity") || objc_msgSend(v3, "isEqualToString:", @"RightSensitivity") || objc_msgSend(v3, "isEqualToString:", @"Treble") || objc_msgSend(v3, "isEqualToString:", @"Bass") || objc_msgSend(v3, "isEqualToString:", @"MasterMixedVolume") || objc_msgSend(v3, "isEqualToString:", @"LeftMixedVolume") || objc_msgSend(v3, "isEqualToString:", @"RightMixedVolume"))
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
  v3 = [(AXHearingSliderValueCell *)self _specifierKey];
  v9.receiver = self;
  v9.super_class = AXHearingSliderValueCell;
  v4 = [(AXHearingSliderValueCell *)&v9 description];
  WeakRetained = objc_loadWeakRetained(&self->PSTableCell_opaque[OBJC_IVAR___PSTableCell__specifier]);
  v6 = [WeakRetained userInfo];
  v7 = [NSString stringWithFormat:@"%@ (%@) - [%@]", v4, v3, v6];

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