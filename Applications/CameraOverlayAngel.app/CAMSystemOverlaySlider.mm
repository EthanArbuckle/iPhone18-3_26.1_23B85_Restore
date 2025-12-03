@interface CAMSystemOverlaySlider
- (CAMSystemOverlaySlider)initWithFrame:(CGRect)frame;
- (CAMSystemOverlaySliderDelegate)delegate;
- (CGAffineTransform)_orientationTransform;
- (double)_tickMarkSpacingForStyle:(unint64_t)style;
- (id)_displayValueRange;
- (id)configurationAtIndex:(unint64_t)index;
- (unint64_t)_effectiveStyle;
- (void)_configureWithRange:(id)range magneticRange:(id)magneticRange protectedRange:(id)protectedRange style:(unint64_t)style enabled:(BOOL)enabled;
- (void)_handleContinuousSliderValueChanged:(id)changed;
- (void)_handleDiscreteSliderValueChanged:(id)changed;
- (void)_updateInternalSlider;
- (void)_updateSelectorConfigurations;
- (void)_updateSliderData;
- (void)_updateSliderEnabled;
- (void)_updateSliderValue;
- (void)layoutSubviews;
- (void)performWaveAnimation;
- (void)setCurrentNumber:(id)number;
- (void)setEnabled:(BOOL)enabled;
- (void)setFeedbackDisabled:(BOOL)disabled;
- (void)sliderDidEndScrolling:(id)scrolling;
- (void)sliderWillBeginScrolling:(id)scrolling;
@end

@implementation CAMSystemOverlaySlider

- (CAMSystemOverlaySlider)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = CAMSystemOverlaySlider;
  result = [(CAMSystemOverlaySlider *)&v4 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (result)
  {
    result->_enabled = 1;
  }

  return result;
}

- (void)layoutSubviews
{
  [(CAMSystemOverlaySlider *)self bounds];
  _currentSlider = [(CAMSystemOverlaySlider *)self _currentSlider];
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

- (void)_configureWithRange:(id)range magneticRange:(id)magneticRange protectedRange:(id)protectedRange style:(unint64_t)style enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  rangeCopy = range;
  magneticRangeCopy = magneticRange;
  protectedRangeCopy = protectedRange;
  if (self->_valueRange != rangeCopy && ![(CAMOverlayValueRange *)rangeCopy isEqualToRange:?]|| self->_magneticRange != magneticRangeCopy && ![(CAMOverlayDiscreteFloatRange *)magneticRangeCopy isEqualToRange:?]|| self->_protectedRange != protectedRangeCopy && ![(CAMOverlayDiscreteFloatRange *)protectedRangeCopy isEqualToRange:?]|| self->_enabled != enabledCopy || self->_style != style)
  {
    objc_storeStrong(&self->_valueRange, range);
    objc_storeStrong(&self->_magneticRange, magneticRange);
    objc_storeStrong(&self->_protectedRange, protectedRange);
    self->_style = style;
    self->_enabled = enabledCopy;
    [(CAMSystemOverlaySlider *)self _updateSelectorConfigurations];
    [(CAMSystemOverlaySlider *)self _updateInternalSlider];
    [(CAMSystemOverlaySlider *)self _updateSliderData];
    [(CAMSystemOverlaySlider *)self _updateSliderValue];
    [(CAMSystemOverlaySlider *)self _updateSliderEnabled];
  }
}

- (void)setCurrentNumber:(id)number
{
  numberCopy = number;
  if (self->_currentNumber != numberCopy && ([(NSNumber *)numberCopy isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_currentNumber, number);
    [(CAMSystemOverlaySlider *)self _updateSliderValue];
  }

  _objc_release_x1();
}

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled != enabled)
  {
    self->_enabled = enabled;
    [(CAMSystemOverlaySlider *)self _updateSliderData];

    [(CAMSystemOverlaySlider *)self _updateSliderEnabled];
  }
}

- (void)_updateSliderEnabled
{
  enabled = [(CAMSystemOverlaySlider *)self enabled];
  _currentSlider = [(CAMSystemOverlaySlider *)self _currentSlider];
  _discreteSlider = [(CAMSystemOverlaySlider *)self _discreteSlider];

  if (_currentSlider == _discreteSlider)
  {
    _discreteSlider2 = [(CAMSystemOverlaySlider *)self _discreteSlider];
    [_discreteSlider2 setEnabled:enabled];
  }

  else
  {
    _discreteSlider2 = [(CAMSystemOverlaySlider *)self _continuousSlider];
    [_discreteSlider2 setEnabled:enabled dimmed:enabled ^ 1 animated:0];
  }
}

- (void)setFeedbackDisabled:(BOOL)disabled
{
  if (self->_feedbackDisabled != disabled)
  {
    self->_feedbackDisabled = disabled;
    [(CAMSystemOverlaySlider *)self _updateInternalSlider];
  }
}

- (void)performWaveAnimation
{
  _currentSlider = [(CAMSystemOverlaySlider *)self _currentSlider];
  [_currentSlider performWaveAnimation];
}

- (void)_handleDiscreteSliderValueChanged:(id)changed
{
  changedCopy = changed;
  valueRange = [(CAMSystemOverlaySlider *)self valueRange];
  if ([valueRange isDiscrete])
  {
    v5 = [valueRange valueAtIndex:{objc_msgSend(changedCopy, "selectedIndex")}];
    [(CAMSystemOverlaySlider *)self setCurrentNumber:v5];

    delegate = [(CAMSystemOverlaySlider *)self delegate];
    [delegate overlaySliderDidChangeCurrentValue:self];
  }
}

- (void)_handleContinuousSliderValueChanged:(id)changed
{
  changedCopy = changed;
  valueRange = [(CAMSystemOverlaySlider *)self valueRange];
  if ([valueRange isFloatingPoint] && (objc_msgSend(valueRange, "isDiscrete") & 1) == 0)
  {
    [changedCopy value];
    v5 = [NSNumber numberWithDouble:?];
    [(CAMSystemOverlaySlider *)self setCurrentNumber:v5];

    delegate = [(CAMSystemOverlaySlider *)self delegate];
    [delegate overlaySliderDidChangeCurrentValue:self];
  }
}

- (void)_updateSliderValue
{
  valueRange = [(CAMSystemOverlaySlider *)self valueRange];

  if (valueRange)
  {
    _discreteSlider = [(CAMSystemOverlaySlider *)self _discreteSlider];
    _continuousSlider = [(CAMSystemOverlaySlider *)self _continuousSlider];
    valueRange2 = [(CAMSystemOverlaySlider *)self valueRange];
    currentNumber = [(CAMSystemOverlaySlider *)self currentNumber];
    if ([valueRange2 isDiscrete])
    {
      unsignedIntegerValue = [currentNumber unsignedIntegerValue];
      if ([valueRange2 isFloatingPoint])
      {
        v8 = valueRange2;
        [currentNumber doubleValue];
        unsignedIntegerValue = [v8 indexOfValueClosestToValue:?];
      }

      [_discreteSlider setSelectedIndex:unsignedIntegerValue];
    }

    else if ([valueRange2 isFloatingPoint])
    {
      v9 = valueRange2;
      [currentNumber doubleValue];
      [v9 valueClosestToValue:?];
      v11 = v10;

      [_continuousSlider setValue:v11];
    }
  }
}

- (id)_displayValueRange
{
  valueRange = [(CAMSystemOverlaySlider *)self valueRange];
  if (![(CAMSystemOverlaySlider *)self enabled]&& [(CAMSystemOverlaySlider *)self _effectiveStyle]!= 6)
  {
    if ([valueRange isFloatingPoint])
    {
      v4 = valueRange;
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
          _effectiveStyle = [(CAMSystemOverlaySlider *)self _effectiveStyle];
          v10 = [CAMOverlayContinuousFloatRange alloc];
          if (_effectiveStyle == 4)
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

    if ([valueRange isDiscrete] && objc_msgSend(valueRange, "count") <= 1)
    {
      v4 = [[CAMOverlayIndexedRange alloc] initWithCount:20];
LABEL_15:

      valueRange = v4;
    }
  }

  return valueRange;
}

- (void)_updateSliderData
{
  valueRange = [(CAMSystemOverlaySlider *)self valueRange];

  if (valueRange)
  {
    _discreteSlider = [(CAMSystemOverlaySlider *)self _discreteSlider];
    _continuousSlider = [(CAMSystemOverlaySlider *)self _continuousSlider];
    tickMarksConfiguration = [_discreteSlider tickMarksConfiguration];
    tickMarksConfiguration2 = [_continuousSlider tickMarksConfiguration];
    _currentSlider = [(CAMSystemOverlaySlider *)self _currentSlider];
    _displayValueRange = [(CAMSystemOverlaySlider *)self _displayValueRange];
    magneticRange = [(CAMSystemOverlaySlider *)self magneticRange];
    protectedRange = [(CAMSystemOverlaySlider *)self protectedRange];
    _effectiveStyle = [(CAMSystemOverlaySlider *)self _effectiveStyle];
    if ([_displayValueRange isDiscrete])
    {
      v41 = _currentSlider;
      v42 = tickMarksConfiguration;
      v12 = tickMarksConfiguration2;
      [_discreteSlider setIndexCount:{objc_msgSend(_displayValueRange, "count")}];
      if ([_displayValueRange isFloatingPoint])
      {
        v13 = _displayValueRange;
        v14 = _displayValueRange;
        v15 = [v14 indexesOfValuesInRange:magneticRange];
        v16 = [v14 indexesOfValuesInRange:protectedRange];

        _displayValueRange = v13;
      }

      else
      {
        v16 = 0;
        v15 = 0;
      }

      [_discreteSlider setMagneticIndexes:v15];
      [_discreteSlider setProtectedIndexes:v16];

      tickMarksConfiguration2 = v12;
      _currentSlider = v41;
      tickMarksConfiguration = v42;
    }

    else if ([_displayValueRange isFloatingPoint])
    {
      if (_effectiveStyle == 3)
      {
        v17 = 0.1;
      }

      else
      {
        v17 = 10.0;
      }

      v43 = _displayValueRange;
      v18 = _displayValueRange;
      [_continuousSlider tickMarksConfiguration];
      v19 = magneticRange;
      v20 = tickMarksConfiguration;
      v21 = _currentSlider;
      v23 = v22 = tickMarksConfiguration2;
      [v23 setMainTickMarkInterval:10];

      tickMarksConfiguration2 = v22;
      _currentSlider = v21;
      tickMarksConfiguration = v20;
      magneticRange = v19;
      [v18 minimum];
      v25 = v24;
      [v18 maximum];
      v27 = v26;

      _displayValueRange = v43;
      [tickMarksConfiguration2 setMainTickMarkInterval:10];
      [tickMarksConfiguration2 setMainTickMarkOffset:((ceil(v25) - v25) * 10.0)];
      [_continuousSlider setTickMarkCount:((v27 - v25) * v17 + 1.0)];
      [_continuousSlider setMinimumValue:v25];
      [_continuousSlider setMaximumValue:v27];
      [_continuousSlider setMagneticRange:v19];
    }

    if (_currentSlider == _continuousSlider)
    {
      v28 = tickMarksConfiguration2;
    }

    else
    {
      v28 = tickMarksConfiguration;
    }

    v29 = v28;
    [(CAMSystemOverlaySlider *)self _tickMarkSpacingForStyle:_effectiveStyle];
    [v29 setTickMarkSpacing:?];
    if (_effectiveStyle < 5)
    {
      [v29 setEndTickMarksProminent:1];
      if (_currentSlider == _continuousSlider)
      {
        [_continuousSlider setLogarithmic:_effectiveStyle == 4];
      }

      else if (_currentSlider == _discreteSlider)
      {
        [_discreteSlider cellDataConfiguration];
        v30 = magneticRange;
        v32 = v31 = _displayValueRange;
        [v32 setCellDataProvider:0];

        _displayValueRange = v31;
        magneticRange = v30;
        [_discreteSlider setLevelIndicatorHeight:10.0];
        [_discreteSlider setBiasScrollingToCurrentSelection:1];
        [tickMarksConfiguration setTickMarkWidth:2.0];
        [tickMarksConfiguration setMainTickMarkInterval:3];
        [tickMarksConfiguration setMainTickMarkColor:0];
      }

      goto LABEL_25;
    }

    if (_effectiveStyle == 5)
    {
      [_discreteSlider cellDataConfiguration];
      v38 = magneticRange;
      v40 = v39 = _displayValueRange;
      [v40 setCellDataProvider:0];

      _displayValueRange = v39;
      magneticRange = v38;
      [_discreteSlider setLevelIndicatorHeight:10.0];
      [_discreteSlider setBiasScrollingToCurrentSelection:0];
      [_discreteSlider setMagneticIndexes:0];
      [tickMarksConfiguration setTickMarkWidth:4.0];
      [tickMarksConfiguration setMainTickMarkInterval:1];
      [tickMarksConfiguration setMainTickMarkColor:0];
    }

    else
    {
      if (_effectiveStyle != 6)
      {
LABEL_25:

        return;
      }

      [_discreteSlider cellDataConfiguration];
      v33 = magneticRange;
      v35 = v34 = _displayValueRange;
      [v35 setCellDataProvider:self];

      [(CAMSystemOverlaySlider *)self _orientationTransform];
      cellDataConfiguration = [_discreteSlider cellDataConfiguration];
      v45[0] = *(&v45[3] + 8);
      v45[1] = *(&v45[4] + 8);
      v45[2] = *(&v45[5] + 8);
      [cellDataConfiguration setContentTransform:v45];

      [(CAMSystemOverlaySlider *)self _longestSelectorConfigurationDimension];
      [_discreteSlider setLevelIndicatorHeight:?];
      [_discreteSlider setBiasScrollingToCurrentSelection:0];
      [_discreteSlider setMagneticIndexes:0];
      [tickMarksConfiguration setTickMarkWidth:20.0];
      [tickMarksConfiguration setMainTickMarkInterval:1];
      v37 = +[UIColor whiteColor];
      [tickMarksConfiguration setMainTickMarkColor:v37];

      _displayValueRange = v34;
      magneticRange = v33;
    }

    [tickMarksConfiguration setEndTickMarksProminent:0];
    goto LABEL_25;
  }
}

- (double)_tickMarkSpacingForStyle:(unint64_t)style
{
  if (style <= 2)
  {
    switch(style)
    {
      case 0uLL:
LABEL_12:
        valueRange = [(CAMSystemOverlaySlider *)self valueRange];
        if ([valueRange isDiscrete])
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

  if (style <= 4)
  {
    if (style != 3)
    {
      return 7.0;
    }

    goto LABEL_12;
  }

  if (style != 5)
  {
    if (style == 6)
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
  valueRange = [(CAMSystemOverlaySlider *)self valueRange];
  style = [(CAMSystemOverlaySlider *)self style];
  v5 = style;
  if (style - 5 < 2)
  {
    if ([valueRange isDiscrete])
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (style == 4 && (([valueRange isDiscrete] & 1) != 0 || (objc_msgSend(valueRange, "isFloatingPoint") & 1) == 0))
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
    valueRange = [(CAMSystemOverlaySlider *)self valueRange];
    v3 = objc_alloc_init(NSMutableArray);
    if ([valueRange count])
    {
      v4 = 0;
      v5 = 0.0;
      do
      {
        v6 = [valueRange valueAtIndex:v4];
        delegate = [(CAMSystemOverlaySlider *)self delegate];
        v8 = [delegate overlaySlider:self cellConfigurationForValue:v6];

        [v3 addObject:v8];
        [v8 contentSize];
        v5 = fmax(v5, fmax(v9, v10));

        ++v4;
      }

      while (v4 < [valueRange count]);
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
  valueRange = [(CAMSystemOverlaySlider *)self valueRange];

  if (!valueRange)
  {
    return;
  }

  _currentSlider = [(CAMSystemOverlaySlider *)self _currentSlider];
  _discreteSlider = [(CAMSystemOverlaySlider *)self _discreteSlider];
  _continuousSlider = [(CAMSystemOverlaySlider *)self _continuousSlider];
  valueRange2 = [(CAMSystemOverlaySlider *)self valueRange];
  if ([valueRange2 isDiscrete])
  {
    if (_discreteSlider)
    {
      v8 = _discreteSlider;
    }

    else
    {
      v8 = [[CEKDiscreteSlider alloc] initWithTickMarkStyle:1];
      [v8 setDelegate:self];
      [v8 setSliderVerticalAlignment:1];
      [v8 setGradientInsets:{13.0, 13.0}];
      [v8 setSelectionFeedbackProfile:2];
      [(CAMSystemOverlaySlider *)self _orientationTransform];
      cellDataConfiguration = [v8 cellDataConfiguration];
      v17[0] = v17[3];
      v17[1] = v17[4];
      v17[2] = v17[5];
      [cellDataConfiguration setContentTransform:v17];

      [v8 setTransparentGradients];
      [v8 addTarget:self action:"_handleDiscreteSliderValueChanged:" forControlEvents:4096];
      v11 = +[CAMOverlayServer sharedInstance];
      analyticsCollector = [v11 analyticsCollector];
      [v8 setContactObserver:analyticsCollector];

      [(CAMSystemOverlaySlider *)self _setDiscreteSlider:v8];
      _discreteSlider = v8;
    }
  }

  else
  {
    if (![valueRange2 isFloatingPoint])
    {
      v9 = 0;
      if (_currentSlider)
      {
        goto LABEL_13;
      }

      goto LABEL_15;
    }

    if (_continuousSlider)
    {
      v8 = _continuousSlider;
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
      analyticsCollector2 = [v13 analyticsCollector];
      [v8 setContactObserver:analyticsCollector2];

      [(CAMSystemOverlaySlider *)self _setContinuousSlider:v8];
      _continuousSlider = v8;
    }
  }

  v9 = v8;
  if (_currentSlider)
  {
LABEL_13:
    if (_currentSlider != v9)
    {
      [_currentSlider removeFromSuperview];
    }
  }

LABEL_15:
  superview = [v9 superview];

  if (!superview)
  {
    [(CAMSystemOverlaySlider *)self insertSubview:v9 atIndex:0];
  }

  layer = [v9 layer];
  [layer setHitTestsAsOpaque:1];

  [v9 setFeedbackScope:{-[CAMSystemOverlaySlider feedbackDisabled](self, "feedbackDisabled") ^ 1}];
  [(CAMSystemOverlaySlider *)self _setCurrentSlider:v9];
}

- (void)sliderWillBeginScrolling:(id)scrolling
{
  delegate = [(CAMSystemOverlaySlider *)self delegate];
  [delegate overlaySliderWillBeginScrolling:self];
}

- (void)sliderDidEndScrolling:(id)scrolling
{
  delegate = [(CAMSystemOverlaySlider *)self delegate];
  [delegate overlaySliderDidEndScrolling:self];
}

- (id)configurationAtIndex:(unint64_t)index
{
  _selectorConfigurations = [(CAMSystemOverlaySlider *)self _selectorConfigurations];
  v5 = [_selectorConfigurations objectAtIndexedSubscript:index];

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
    _selectorConfigurations = [(CAMSystemOverlaySlider *)self _selectorConfigurations];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000047F0;
    v17[3] = &unk_1000553B8;
    v17[4] = &v16;
    [_selectorConfigurations enumerateObjectsUsingBlock:v17];

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
      _selectorConfigurations2 = [(CAMSystemOverlaySlider *)self _selectorConfigurations];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10000478C;
      v18[3] = &unk_1000553B8;
      v18[4] = &v16;
      [_selectorConfigurations2 enumerateObjectsUsingBlock:v18];

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