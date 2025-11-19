@interface CAMSystemOverlaySlider
- (CAMSystemOverlaySlider)initWithFrame:(CGRect)a3;
- (CAMSystemOverlaySliderDelegate)delegate;
- (CGAffineTransform)_orientationTransform;
- (double)_tickMarkSpacingForStyle:(unint64_t)a3;
- (id)_displayValueRange;
- (id)configurationAtIndex:(unint64_t)a3;
- (unint64_t)_effectiveStyle;
- (void)_configureWithRange:(id)a3 magneticRange:(id)a4 protectedRange:(id)a5 style:(unint64_t)a6 enabled:(BOOL)a7;
- (void)_handleContinuousSliderValueChanged:(id)a3;
- (void)_handleDiscreteSliderValueChanged:(id)a3;
- (void)_updateInternalSlider;
- (void)_updateSelectorConfigurations;
- (void)_updateSliderData;
- (void)_updateSliderEnabled;
- (void)_updateSliderValue;
- (void)layoutSubviews;
- (void)performWaveAnimation;
- (void)setCurrentNumber:(id)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setFeedbackDisabled:(BOOL)a3;
- (void)sliderDidEndScrolling:(id)a3;
- (void)sliderWillBeginScrolling:(id)a3;
@end

@implementation CAMSystemOverlaySlider

- (CAMSystemOverlaySlider)initWithFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = CAMSystemOverlaySlider;
  result = [(CAMSystemOverlaySlider *)&v4 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (result)
  {
    result->_enabled = 1;
  }

  return result;
}

- (void)layoutSubviews
{
  [(CAMSystemOverlaySlider *)self bounds];
  v3 = [(CAMSystemOverlaySlider *)self _currentSlider];
  [(CAMSystemOverlaySlider *)self alignment];
  [(CAMSystemOverlaySlider *)self alignment];
  UIRectInsetEdges();
  memset(v6, 0, sizeof(v6));
  CAMViewGeometryForOrientedFrame();
  memset(&v5, 0, sizeof(v5));
  CGAffineTransformScale(v4, &v5, -1.0, 1.0);
  v6[1] = v4[0];
  v4[1] = v4[0];
  v4[0] = v6[0];
  CAMViewSetGeometry();
  UIEdgeInsetsMakeWithEdges();
  [(CAMSystemOverlaySlider *)self setHitTestInsets:?];
}

- (void)_configureWithRange:(id)a3 magneticRange:(id)a4 protectedRange:(id)a5 style:(unint64_t)a6 enabled:(BOOL)a7
{
  v7 = a7;
  v15 = a3;
  v13 = a4;
  v14 = a5;
  if (self->_valueRange != v15 && ![(CAMOverlayValueRange *)v15 isEqualToRange:?]|| self->_magneticRange != v13 && ![(CAMOverlayDiscreteFloatRange *)v13 isEqualToRange:?]|| self->_protectedRange != v14 && ![(CAMOverlayDiscreteFloatRange *)v14 isEqualToRange:?]|| self->_enabled != v7 || self->_style != a6)
  {
    objc_storeStrong(&self->_valueRange, a3);
    objc_storeStrong(&self->_magneticRange, a4);
    objc_storeStrong(&self->_protectedRange, a5);
    self->_style = a6;
    self->_enabled = v7;
    [(CAMSystemOverlaySlider *)self _updateSelectorConfigurations];
    [(CAMSystemOverlaySlider *)self _updateInternalSlider];
    [(CAMSystemOverlaySlider *)self _updateSliderData];
    [(CAMSystemOverlaySlider *)self _updateSliderValue];
    [(CAMSystemOverlaySlider *)self _updateSliderEnabled];
  }
}

- (void)setCurrentNumber:(id)a3
{
  v5 = a3;
  if (self->_currentNumber != v5 && ([(NSNumber *)v5 isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_currentNumber, a3);
    [(CAMSystemOverlaySlider *)self _updateSliderValue];
  }

  _objc_release_x1();
}

- (void)setEnabled:(BOOL)a3
{
  if (self->_enabled != a3)
  {
    self->_enabled = a3;
    [(CAMSystemOverlaySlider *)self _updateSliderData];

    [(CAMSystemOverlaySlider *)self _updateSliderEnabled];
  }
}

- (void)_updateSliderEnabled
{
  v3 = [(CAMSystemOverlaySlider *)self enabled];
  v4 = [(CAMSystemOverlaySlider *)self _currentSlider];
  v5 = [(CAMSystemOverlaySlider *)self _discreteSlider];

  if (v4 == v5)
  {
    v6 = [(CAMSystemOverlaySlider *)self _discreteSlider];
    [v6 setEnabled:v3];
  }

  else
  {
    v6 = [(CAMSystemOverlaySlider *)self _continuousSlider];
    [v6 setEnabled:v3 dimmed:v3 ^ 1 animated:0];
  }
}

- (void)setFeedbackDisabled:(BOOL)a3
{
  if (self->_feedbackDisabled != a3)
  {
    self->_feedbackDisabled = a3;
    [(CAMSystemOverlaySlider *)self _updateInternalSlider];
  }
}

- (void)performWaveAnimation
{
  v2 = [(CAMSystemOverlaySlider *)self _currentSlider];
  [v2 performWaveAnimation];
}

- (void)_handleDiscreteSliderValueChanged:(id)a3
{
  v7 = a3;
  v4 = [(CAMSystemOverlaySlider *)self valueRange];
  if ([v4 isDiscrete])
  {
    v5 = [v4 valueAtIndex:{objc_msgSend(v7, "selectedIndex")}];
    [(CAMSystemOverlaySlider *)self setCurrentNumber:v5];

    v6 = [(CAMSystemOverlaySlider *)self delegate];
    [v6 overlaySliderDidChangeCurrentValue:self];
  }
}

- (void)_handleContinuousSliderValueChanged:(id)a3
{
  v7 = a3;
  v4 = [(CAMSystemOverlaySlider *)self valueRange];
  if ([v4 isFloatingPoint] && (objc_msgSend(v4, "isDiscrete") & 1) == 0)
  {
    [v7 value];
    v5 = [NSNumber numberWithDouble:?];
    [(CAMSystemOverlaySlider *)self setCurrentNumber:v5];

    v6 = [(CAMSystemOverlaySlider *)self delegate];
    [v6 overlaySliderDidChangeCurrentValue:self];
  }
}

- (void)_updateSliderValue
{
  v3 = [(CAMSystemOverlaySlider *)self valueRange];

  if (v3)
  {
    v12 = [(CAMSystemOverlaySlider *)self _discreteSlider];
    v4 = [(CAMSystemOverlaySlider *)self _continuousSlider];
    v5 = [(CAMSystemOverlaySlider *)self valueRange];
    v6 = [(CAMSystemOverlaySlider *)self currentNumber];
    if ([v5 isDiscrete])
    {
      v7 = [v6 unsignedIntegerValue];
      if ([v5 isFloatingPoint])
      {
        v8 = v5;
        [v6 doubleValue];
        v7 = [v8 indexOfValueClosestToValue:?];
      }

      [v12 setSelectedIndex:v7];
    }

    else if ([v5 isFloatingPoint])
    {
      v9 = v5;
      [v6 doubleValue];
      [v9 valueClosestToValue:?];
      v11 = v10;

      [v4 setValue:v11];
    }
  }
}

- (id)_displayValueRange
{
  v3 = [(CAMSystemOverlaySlider *)self valueRange];
  if (![(CAMSystemOverlaySlider *)self enabled]&& [(CAMSystemOverlaySlider *)self _effectiveStyle]!= 6)
  {
    if ([v3 isFloatingPoint])
    {
      v4 = v3;
      [v4 minimum];
      v6 = v5;
      [v4 maximum];
      if (v6 == v7)
      {
        if ([v4 isDiscrete])
        {
          v8 = [[CAMOverlayDiscreteFloatRange alloc] initWithMinimum:-10.0 maximum:10.0 step:1.0];
        }

        else
        {
          v9 = [(CAMSystemOverlaySlider *)self _effectiveStyle];
          v10 = [CAMOverlayContinuousFloatRange alloc];
          if (v9 == 4)
          {
            v11 = 1.0;
          }

          else
          {
            v11 = 0.0;
          }

          v8 = [v10 initWithMinimum:v11 maximum:10.0];
        }

        v12 = v8;

        v4 = v12;
      }

      goto LABEL_15;
    }

    if ([v3 isDiscrete] && objc_msgSend(v3, "count") <= 1)
    {
      v4 = [[CAMOverlayIndexedRange alloc] initWithCount:20];
LABEL_15:

      v3 = v4;
    }
  }

  return v3;
}

- (void)_updateSliderData
{
  v3 = [(CAMSystemOverlaySlider *)self valueRange];

  if (v3)
  {
    v4 = [(CAMSystemOverlaySlider *)self _discreteSlider];
    v5 = [(CAMSystemOverlaySlider *)self _continuousSlider];
    v6 = [v4 tickMarksConfiguration];
    v7 = [v5 tickMarksConfiguration];
    v8 = [(CAMSystemOverlaySlider *)self _currentSlider];
    v9 = [(CAMSystemOverlaySlider *)self _displayValueRange];
    v10 = [(CAMSystemOverlaySlider *)self magneticRange];
    v44 = [(CAMSystemOverlaySlider *)self protectedRange];
    v11 = [(CAMSystemOverlaySlider *)self _effectiveStyle];
    if ([v9 isDiscrete])
    {
      v41 = v8;
      v42 = v6;
      v12 = v7;
      [v4 setIndexCount:{objc_msgSend(v9, "count")}];
      if ([v9 isFloatingPoint])
      {
        v13 = v9;
        v14 = v9;
        v15 = [v14 indexesOfValuesInRange:v10];
        v16 = [v14 indexesOfValuesInRange:v44];

        v9 = v13;
      }

      else
      {
        v16 = 0;
        v15 = 0;
      }

      [v4 setMagneticIndexes:v15];
      [v4 setProtectedIndexes:v16];

      v7 = v12;
      v8 = v41;
      v6 = v42;
    }

    else if ([v9 isFloatingPoint])
    {
      if (v11 == 3)
      {
        v17 = 0.1;
      }

      else
      {
        v17 = 10.0;
      }

      v43 = v9;
      v18 = v9;
      [v5 tickMarksConfiguration];
      v19 = v10;
      v20 = v6;
      v21 = v8;
      v23 = v22 = v7;
      [v23 setMainTickMarkInterval:10];

      v7 = v22;
      v8 = v21;
      v6 = v20;
      v10 = v19;
      [v18 minimum];
      v25 = v24;
      [v18 maximum];
      v27 = v26;

      v9 = v43;
      [v7 setMainTickMarkInterval:10];
      [v7 setMainTickMarkOffset:((ceil(v25) - v25) * 10.0)];
      [v5 setTickMarkCount:((v27 - v25) * v17 + 1.0)];
      [v5 setMinimumValue:v25];
      [v5 setMaximumValue:v27];
      [v5 setMagneticRange:v19];
    }

    if (v8 == v5)
    {
      v28 = v7;
    }

    else
    {
      v28 = v6;
    }

    v29 = v28;
    [(CAMSystemOverlaySlider *)self _tickMarkSpacingForStyle:v11];
    [v29 setTickMarkSpacing:?];
    if (v11 < 5)
    {
      [v29 setEndTickMarksProminent:1];
      if (v8 == v5)
      {
        [v5 setLogarithmic:v11 == 4];
      }

      else if (v8 == v4)
      {
        [v4 cellDataConfiguration];
        v30 = v10;
        v32 = v31 = v9;
        [v32 setCellDataProvider:0];

        v9 = v31;
        v10 = v30;
        [v4 setLevelIndicatorHeight:10.0];
        [v4 setBiasScrollingToCurrentSelection:1];
        [v6 setTickMarkWidth:2.0];
        [v6 setMainTickMarkInterval:3];
        [v6 setMainTickMarkColor:0];
      }

      goto LABEL_25;
    }

    if (v11 == 5)
    {
      [v4 cellDataConfiguration];
      v38 = v10;
      v40 = v39 = v9;
      [v40 setCellDataProvider:0];

      v9 = v39;
      v10 = v38;
      [v4 setLevelIndicatorHeight:10.0];
      [v4 setBiasScrollingToCurrentSelection:0];
      [v4 setMagneticIndexes:0];
      [v6 setTickMarkWidth:4.0];
      [v6 setMainTickMarkInterval:1];
      [v6 setMainTickMarkColor:0];
    }

    else
    {
      if (v11 != 6)
      {
LABEL_25:

        return;
      }

      [v4 cellDataConfiguration];
      v33 = v10;
      v35 = v34 = v9;
      [v35 setCellDataProvider:self];

      [(CAMSystemOverlaySlider *)self _orientationTransform];
      v36 = [v4 cellDataConfiguration];
      v45[0] = *(&v45[3] + 8);
      v45[1] = *(&v45[4] + 8);
      v45[2] = *(&v45[5] + 8);
      [v36 setContentTransform:v45];

      [(CAMSystemOverlaySlider *)self _longestSelectorConfigurationDimension];
      [v4 setLevelIndicatorHeight:?];
      [v4 setBiasScrollingToCurrentSelection:0];
      [v4 setMagneticIndexes:0];
      [v6 setTickMarkWidth:20.0];
      [v6 setMainTickMarkInterval:1];
      v37 = +[UIColor whiteColor];
      [v6 setMainTickMarkColor:v37];

      v9 = v34;
      v10 = v33;
    }

    [v6 setEndTickMarksProminent:0];
    goto LABEL_25;
  }
}

- (double)_tickMarkSpacingForStyle:(unint64_t)a3
{
  if (a3 <= 2)
  {
    switch(a3)
    {
      case 0uLL:
LABEL_12:
        v4 = [(CAMSystemOverlaySlider *)self valueRange];
        if ([v4 isDiscrete])
        {
          v3 = 8.0;
        }

        else
        {
          v3 = 9.0;
        }

        return v3;
      case 1uLL:
        return 5.0;
      case 2uLL:
        return 10.0;
    }

    return 0.0;
  }

  if (a3 <= 4)
  {
    if (a3 != 3)
    {
      return 7.0;
    }

    goto LABEL_12;
  }

  if (a3 != 5)
  {
    if (a3 == 6)
    {
      return 40.0;
    }

    return 0.0;
  }

  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"systemOverlay.preferredPickerTicksSpacing", @"com.apple.camera", 0);
  v6 = 30;
  if (AppIntegerValue > 5)
  {
    return AppIntegerValue;
  }

  return v6;
}

- (unint64_t)_effectiveStyle
{
  v3 = [(CAMSystemOverlaySlider *)self valueRange];
  v4 = [(CAMSystemOverlaySlider *)self style];
  v5 = v4;
  if (v4 - 5 < 2)
  {
    if ([v3 isDiscrete])
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (v4 == 4 && (([v3 isDiscrete] & 1) != 0 || (objc_msgSend(v3, "isFloatingPoint") & 1) == 0))
  {
LABEL_7:
    v5 = 0;
  }

LABEL_8:

  return v5;
}

- (void)_updateSelectorConfigurations
{
  if ([(CAMSystemOverlaySlider *)self _effectiveStyle]== 6)
  {
    v11 = [(CAMSystemOverlaySlider *)self valueRange];
    v3 = objc_alloc_init(NSMutableArray);
    if ([v11 count])
    {
      v4 = 0;
      v5 = 0.0;
      do
      {
        v6 = [v11 valueAtIndex:v4];
        v7 = [(CAMSystemOverlaySlider *)self delegate];
        v8 = [v7 overlaySlider:self cellConfigurationForValue:v6];

        [v3 addObject:v8];
        [v8 contentSize];
        v5 = fmax(v5, fmax(v9, v10));

        ++v4;
      }

      while (v4 < [v11 count]);
    }

    UICeilToViewScale();
    [(CAMSystemOverlaySlider *)self _setLongestSelectorConfigurationDimension:?];
    [(CAMSystemOverlaySlider *)self _setSelectorConfigurations:v3];
  }

  else
  {

    [(CAMSystemOverlaySlider *)self _setSelectorConfigurations:0];
  }
}

- (void)_updateInternalSlider
{
  v3 = [(CAMSystemOverlaySlider *)self valueRange];

  if (!v3)
  {
    return;
  }

  v4 = [(CAMSystemOverlaySlider *)self _currentSlider];
  v5 = [(CAMSystemOverlaySlider *)self _discreteSlider];
  v6 = [(CAMSystemOverlaySlider *)self _continuousSlider];
  v7 = [(CAMSystemOverlaySlider *)self valueRange];
  if ([v7 isDiscrete])
  {
    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = [[CEKDiscreteSlider alloc] initWithTickMarkStyle:1];
      [v8 setDelegate:self];
      [v8 setSliderVerticalAlignment:1];
      [v8 setGradientInsets:{13.0, 13.0}];
      [v8 setSelectionFeedbackProfile:2];
      [(CAMSystemOverlaySlider *)self _orientationTransform];
      v10 = [v8 cellDataConfiguration];
      v17[0] = v17[3];
      v17[1] = v17[4];
      v17[2] = v17[5];
      [v10 setContentTransform:v17];

      [v8 setTransparentGradients];
      [v8 addTarget:self action:"_handleDiscreteSliderValueChanged:" forControlEvents:4096];
      v11 = +[CAMOverlayServer sharedInstance];
      v12 = [v11 analyticsCollector];
      [v8 setContactObserver:v12];

      [(CAMSystemOverlaySlider *)self _setDiscreteSlider:v8];
      v5 = v8;
    }
  }

  else
  {
    if (![v7 isFloatingPoint])
    {
      v9 = 0;
      if (v4)
      {
        goto LABEL_13;
      }

      goto LABEL_15;
    }

    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [[CEKSlider alloc] initWithTickMarkStyle:1];
      [v8 setDelegate:self];
      [v8 setTickMarkSize:{2.0, 10.0}];
      [v8 setSliderVerticalAlignment:1];
      [v8 setGradientInsets:{13.0, 13.0}];
      [v8 setSelectionFeedbackProfile:2];
      [v8 setTransparentGradients];
      [v8 addTarget:self action:"_handleContinuousSliderValueChanged:" forControlEvents:4096];
      v13 = +[CAMOverlayServer sharedInstance];
      v14 = [v13 analyticsCollector];
      [v8 setContactObserver:v14];

      [(CAMSystemOverlaySlider *)self _setContinuousSlider:v8];
      v6 = v8;
    }
  }

  v9 = v8;
  if (v4)
  {
LABEL_13:
    if (v4 != v9)
    {
      [v4 removeFromSuperview];
    }
  }

LABEL_15:
  v15 = [v9 superview];

  if (!v15)
  {
    [(CAMSystemOverlaySlider *)self insertSubview:v9 atIndex:0];
  }

  v16 = [v9 layer];
  [v16 setHitTestsAsOpaque:1];

  [v9 setFeedbackScope:{-[CAMSystemOverlaySlider feedbackDisabled](self, "feedbackDisabled") ^ 1}];
  [(CAMSystemOverlaySlider *)self _setCurrentSlider:v9];
}

- (void)sliderWillBeginScrolling:(id)a3
{
  v4 = [(CAMSystemOverlaySlider *)self delegate];
  [v4 overlaySliderWillBeginScrolling:self];
}

- (void)sliderDidEndScrolling:(id)a3
{
  v4 = [(CAMSystemOverlaySlider *)self delegate];
  [v4 overlaySliderDidEndScrolling:self];
}

- (id)configurationAtIndex:(unint64_t)a3
{
  v4 = [(CAMSystemOverlaySlider *)self _selectorConfigurations];
  v5 = [v4 objectAtIndexedSubscript:a3];

  return v5;
}

- (CGAffineTransform)_orientationTransform
{
  orientation = self->_orientation;
  if (orientation == 2)
  {
    v5 = 3.14159265;
  }

  else if (orientation == 4)
  {
    v16.a = 0.0;
    *&v16.b = &v16;
    *&v16.c = 0x2020000000;
    v16.d = 0.0;
    v8 = [(CAMSystemOverlaySlider *)self _selectorConfigurations];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000047F0;
    v17[3] = &unk_1000553B8;
    v17[4] = &v16;
    [v8 enumerateObjectsUsingBlock:v17];

    v9 = *(*&v16.b + 24);
    _Block_object_dispose(&v16, 8);
    v5 = 1.57079633;
  }

  else
  {
    v5 = 0.0;
    if (orientation == 3)
    {
      v16.a = 0.0;
      *&v16.b = &v16;
      *&v16.c = 0x2020000000;
      v16.d = 0.0;
      v6 = [(CAMSystemOverlaySlider *)self _selectorConfigurations];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10000478C;
      v18[3] = &unk_1000553B8;
      v18[4] = &v16;
      [v6 enumerateObjectsUsingBlock:v18];

      v7 = -*(*&v16.b + 24);
      _Block_object_dispose(&v16, 8);
      v5 = -1.57079633;
    }
  }

  v10 = dbl_10003FB60[[(CAMSystemOverlaySlider *)self alignment]== 0];
  memset(&v16, 0, sizeof(v16));
  CGAffineTransformMakeRotation(&v16, v5 + v10);
  v14 = v16;
  memset(&v15, 0, sizeof(v15));
  CGAffineTransformScale(&v15, &v14, -1.0, 1.0);
  memset(&v14, 0, sizeof(v14));
  UIRoundToViewScale();
  v13 = v15;
  CGAffineTransformTranslate(&v14, &v13, 0.0, v11);
  v13 = v14;
  return UIIntegralTransform();
}

- (CAMSystemOverlaySliderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end