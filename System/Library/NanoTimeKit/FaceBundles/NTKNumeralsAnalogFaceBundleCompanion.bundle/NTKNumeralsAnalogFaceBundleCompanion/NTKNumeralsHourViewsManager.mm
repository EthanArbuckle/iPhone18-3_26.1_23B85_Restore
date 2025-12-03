@interface NTKNumeralsHourViewsManager
- (BOOL)needHourAnimationForChangeToHour:(int64_t)hour toFaceConfiguration:(id)configuration;
- (CGPoint)_currentHourViewPlacementForEditMode:(int64_t)mode faceConfiguration:(id)configuration;
- (NTKNumeralsHourViewsManager)initWithStyleFromFaceConfiguration:(id)configuration forDevice:(id)device;
- (double)_hourAlphaForEditMode:(int64_t)mode;
- (id)_hourViewForHour:(int64_t)hour loadIfNeeded:(BOOL)needed;
- (void)_unloadInvisibleHours;
- (void)_update12AdjustmentForStatusIndicator;
- (void)addHourViewsToSuperview:(id)superview;
- (void)applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode;
- (void)applyFaceColorFromFaceConfiguration:(id)configuration;
- (void)applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode;
- (void)applyTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode faceConfiguration:(id)configuration;
- (void)applyTransitionFraction:(double)fraction fromFaceColorPalette:(id)palette toFaceColorPalette:(id)colorPalette faceConfiguration:(id)configuration;
- (void)configureForEditMode:(int64_t)mode;
- (void)removeHourViews;
- (void)setAdjustsForStatusIndicator:(BOOL)indicator animated:(BOOL)animated;
- (void)updateVisibleHour:(int64_t)hour targetUtilitySlot:(int64_t)slot faceConfiguration:(id)configuration animationProgress:(double)progress forEditMode:(int64_t)mode;
@end

@implementation NTKNumeralsHourViewsManager

- (NTKNumeralsHourViewsManager)initWithStyleFromFaceConfiguration:(id)configuration forDevice:(id)device
{
  configurationCopy = configuration;
  deviceCopy = device;
  v15.receiver = self;
  v15.super_class = NTKNumeralsHourViewsManager;
  v8 = [(NTKNumeralsHourViewsManager *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_device, device);
    v10 = objc_opt_new();
    for (i = 1; i != 13; ++i)
    {
      v12 = -[NTKNumeralsHourView initUnloadedHourViewForHour:style:faceConfiguration:]([NTKNumeralsHourView alloc], "initUnloadedHourViewForHour:style:faceConfiguration:", i, [configurationCopy selectedStyle], configurationCopy);
      [v12 setHidden:1];
      [(NSArray *)v10 addObject:v12];
    }

    hourViews = v9->_hourViews;
    v9->_hourViews = v10;
  }

  return v9;
}

- (void)addHourViewsToSuperview:(id)superview
{
  superviewCopy = superview;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_hourViews;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [superviewCopy addSubview:{*(*(&v10 + 1) + 8 * v9), v10}];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)removeHourViews
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_hourViews;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) removeFromSuperview];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (BOOL)needHourAnimationForChangeToHour:(int64_t)hour toFaceConfiguration:(id)configuration
{
  if (self->_visibleHour != hour)
  {
    return 1;
  }

  configurationCopy = configuration;
  _visibleHourView = [(NTKNumeralsHourViewsManager *)self _visibleHourView];
  [_visibleHourView center];
  v9 = v8;
  v11 = v10;

  areAllComplicationsOff = [configurationCopy areAllComplicationsOff];
  utilitySlot = [configurationCopy utilitySlot];

  [NTKNumeralsAnalogElementsPlacement hourViewPositionForHour:hour complicationHidden:areAllComplicationsOff utilitySlot:utilitySlot forDevice:self->_device];
  return v11 != v15 || v9 != v14;
}

- (void)updateVisibleHour:(int64_t)hour targetUtilitySlot:(int64_t)slot faceConfiguration:(id)configuration animationProgress:(double)progress forEditMode:(int64_t)mode
{
  configurationCopy = configuration;
  v19 = configurationCopy;
  if (progress >= 0.5 && self->_visibleHour != hour)
  {
    v13 = [(NTKNumeralsHourViewsManager *)self _hourViewForHour:hour loadIfNeeded:1];
    [v13 applyFaceColorFromFaceConfiguration:v19];
    [v13 sizeToFit];
    +[NTKNumeralsAnalogElementsPlacement hourViewPositionForHour:complicationHidden:utilitySlot:forDevice:](NTKNumeralsAnalogElementsPlacement, "hourViewPositionForHour:complicationHidden:utilitySlot:forDevice:", hour, [v19 areAllComplicationsOff], slot, self->_device);
    [v13 setCenter:?];
    [v13 setHidden:0];
    _visibleHourView = [(NTKNumeralsHourViewsManager *)self _visibleHourView];
    [_visibleHourView setHidden:1];

    self->_visibleHour = hour;
    self->_visibleComplicationSlot = [v19 utilitySlot];
    self->_areComplicationsOff = [v19 areAllComplicationsOff];

    configurationCopy = v19;
  }

  v15 = [configurationCopy areAllComplicationsOff] ^ 1;
  if ((slot - 1) >= 2)
  {
    LOBYTE(v15) = 0;
  }

  self->_hasUpperComplication = v15;
  [(NTKNumeralsHourViewsManager *)self _update12AdjustmentForStatusIndicator];
  [(NTKNumeralsHourViewsManager *)self _hourAlphaForEditMode:mode];
  CLKInterpolateBetweenFloatsClipped();
  v17 = v16;
  _visibleHourView2 = [(NTKNumeralsHourViewsManager *)self _visibleHourView];
  [_visibleHourView2 setAlpha:v17];

  [(NTKNumeralsHourViewsManager *)self _unloadInvisibleHours];
}

- (void)_unloadInvisibleHours
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_hourViews;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        if ([v8 hour] != self->_visibleHour)
        {
          [v8 unload];
        }
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)configureForEditMode:(int64_t)mode
{
  _visibleHourView = [(NTKNumeralsHourViewsManager *)self _visibleHourView];
  [_visibleHourView setHidden:mode == 13];
}

- (void)applyTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode faceConfiguration:(id)configuration
{
  configurationCopy = configuration;
  [(NTKNumeralsHourViewsManager *)self _currentHourViewPlacementForEditMode:mode faceConfiguration:configurationCopy];
  [(NTKNumeralsHourViewsManager *)self _currentHourViewPlacementForEditMode:editMode faceConfiguration:configurationCopy];

  CLKInterpolateBetweenPoints();
  v11 = v10;
  v13 = v12;
  _visibleHourView = [(NTKNumeralsHourViewsManager *)self _visibleHourView];
  [_visibleHourView setCenter:{v11, v13}];

  [(NTKNumeralsHourViewsManager *)self _hourAlphaForEditMode:mode];
  [(NTKNumeralsHourViewsManager *)self _hourAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  v16 = v15;
  _visibleHourView2 = [(NTKNumeralsHourViewsManager *)self _visibleHourView];
  [_visibleHourView2 setAlpha:v16];

  _visibleHourView3 = [(NTKNumeralsHourViewsManager *)self _visibleHourView];
  [_visibleHourView3 setHidden:0];
}

- (void)applyTransitionFraction:(double)fraction fromFaceColorPalette:(id)palette toFaceColorPalette:(id)colorPalette faceConfiguration:(id)configuration
{
  configurationCopy = configuration;
  colorPaletteCopy = colorPalette;
  paletteCopy = palette;
  _visibleHourView = [(NTKNumeralsHourViewsManager *)self _visibleHourView];
  [_visibleHourView applyTransitionFraction:paletteCopy fromFaceColorPalette:colorPaletteCopy toFaceColorPalette:configurationCopy faceConfiguration:fraction];
}

- (void)applyFaceColorFromFaceConfiguration:(id)configuration
{
  configurationCopy = configuration;
  _visibleHourView = [(NTKNumeralsHourViewsManager *)self _visibleHourView];
  [_visibleHourView applyFaceColorFromFaceConfiguration:configurationCopy];
}

- (void)applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode
{
  if (mode == 10)
  {
    v13 = v7;
    v14 = v6;
    v15 = v4;
    v16 = v5;
    NTKLargeElementScaleForBreathingFraction();
    v10 = v9;
    _visibleHourView = [(NTKNumeralsHourViewsManager *)self _visibleHourView];
    CGAffineTransformMakeScale(&v12, v10, v10);
    [_visibleHourView setTransform:&v12];
  }
}

- (void)applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode
{
  NTKScaleForRubberBandingFraction();
  v7 = v6;
  NTKAlphaForRubberBandingFraction();
  if (mode == 10)
  {
    v9 = v8;
    _visibleHourView = [(NTKNumeralsHourViewsManager *)self _visibleHourView];
    CGAffineTransformMakeScale(&v12, v7, v7);
    [_visibleHourView setTransform:&v12];

    _visibleHourView2 = [(NTKNumeralsHourViewsManager *)self _visibleHourView];
    [_visibleHourView2 setAlpha:v9];
  }
}

- (id)_hourViewForHour:(int64_t)hour loadIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  v7 = [(NSArray *)self->_hourViews count];
  v8 = 0;
  if (hour && v7)
  {
    v8 = [(NSArray *)self->_hourViews objectAtIndexedSubscript:hour - 1];
  }

  if (([v8 isLoaded] & 1) == 0 && neededCopy)
  {
    [v8 load];
  }

  return v8;
}

- (double)_hourAlphaForEditMode:(int64_t)mode
{
  result = NTKEditModeDimmedAlpha;
  if (mode != 1)
  {
    return 1.0;
  }

  return result;
}

- (CGPoint)_currentHourViewPlacementForEditMode:(int64_t)mode faceConfiguration:(id)configuration
{
  configurationCopy = configuration;
  +[NTKNumeralsAnalogElementsPlacement hourViewPositionForHour:complicationHidden:utilitySlot:forDevice:](NTKNumeralsAnalogElementsPlacement, "hourViewPositionForHour:complicationHidden:utilitySlot:forDevice:", self->_visibleHour, [configurationCopy areAllComplicationsOff], objc_msgSend(configurationCopy, "utilitySlot"), self->_device);
  v8 = v7;
  v10 = v9;
  if (mode == 10)
  {
    v8 = v7 + NTKNumeralsAnalogColorEditingHourHorizontalIndent(self->_device);
    v10 = v10 + NTKNumeralsAnalogColorEditingHourVerticalindent(self->_device);
  }

  else if (mode == 13)
  {
    +[NTKNumeralsAnalogElementsPlacement centerPointFor10NumeralInImageForStyle:forDevice:](NTKNumeralsAnalogElementsPlacement, "centerPointFor10NumeralInImageForStyle:forDevice:", [configurationCopy selectedStyle], self->_device);
    v12 = v11;
    v14 = v13;
    v15 = NTKNumeralsAnalogStyleEditingBoxSize(self->_device) * 0.5;
    NTKNumeralsAnalogStyleEditingBoxSize(self->_device);
    v17 = v16 * 0.5 + NTKNumeralsAnalogEditingVerticalIndent(self->_device);
    _visibleHourView = [(NTKNumeralsHourViewsManager *)self _visibleHourView];
    image = [_visibleHourView image];
    [image size];
    v21 = v20;

    _visibleHourView2 = [(NTKNumeralsHourViewsManager *)self _visibleHourView];
    image2 = [_visibleHourView2 image];
    [image2 size];
    v25 = v24;

    v8 = v15 - v12 + v21 * 0.5;
    v10 = v17 - v14 + v25 * 0.5;
  }

  v26 = v8;
  v27 = v10;
  result.y = v27;
  result.x = v26;
  return result;
}

- (void)setAdjustsForStatusIndicator:(BOOL)indicator animated:(BOOL)animated
{
  self->_adjustingForStatusIndicator = indicator;
  if (animated)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_30F4;
    v5[3] = &unk_104D8;
    v5[4] = self;
    [UIView animateWithDuration:v5 animations:0.3];
  }

  else
  {

    [(NTKNumeralsHourViewsManager *)self _update12AdjustmentForStatusIndicator];
  }
}

- (void)_update12AdjustmentForStatusIndicator
{
  if (self->_adjustingForStatusIndicator && !self->_hasUpperComplication)
  {
    [NTKNumeralsAnalogElementsPlacement edgeVerticalAdjustmentDistanceForDevice:self->_device];
    CGAffineTransformMakeTranslation(&v7, 0.0, v4);
  }

  else
  {
    v3 = *&CGAffineTransformIdentity.c;
    *&v7.a = *&CGAffineTransformIdentity.a;
    *&v7.c = v3;
    *&v7.tx = *&CGAffineTransformIdentity.tx;
  }

  v5 = [(NTKNumeralsHourViewsManager *)self _hourViewForHour:12 loadIfNeeded:0];
  v6 = v7;
  [v5 setTransform:&v6];
}

@end