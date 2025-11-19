@interface NTKNumeralsHourViewsManager
- (BOOL)needHourAnimationForChangeToHour:(int64_t)a3 toFaceConfiguration:(id)a4;
- (CGPoint)_currentHourViewPlacementForEditMode:(int64_t)a3 faceConfiguration:(id)a4;
- (NTKNumeralsHourViewsManager)initWithStyleFromFaceConfiguration:(id)a3 forDevice:(id)a4;
- (double)_hourAlphaForEditMode:(int64_t)a3;
- (id)_hourViewForHour:(int64_t)a3 loadIfNeeded:(BOOL)a4;
- (void)_unloadInvisibleHours;
- (void)_update12AdjustmentForStatusIndicator;
- (void)addHourViewsToSuperview:(id)a3;
- (void)applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4;
- (void)applyFaceColorFromFaceConfiguration:(id)a3;
- (void)applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4;
- (void)applyTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5 faceConfiguration:(id)a6;
- (void)applyTransitionFraction:(double)a3 fromFaceColorPalette:(id)a4 toFaceColorPalette:(id)a5 faceConfiguration:(id)a6;
- (void)configureForEditMode:(int64_t)a3;
- (void)removeHourViews;
- (void)setAdjustsForStatusIndicator:(BOOL)a3 animated:(BOOL)a4;
- (void)updateVisibleHour:(int64_t)a3 targetUtilitySlot:(int64_t)a4 faceConfiguration:(id)a5 animationProgress:(double)a6 forEditMode:(int64_t)a7;
@end

@implementation NTKNumeralsHourViewsManager

- (NTKNumeralsHourViewsManager)initWithStyleFromFaceConfiguration:(id)a3 forDevice:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = NTKNumeralsHourViewsManager;
  v8 = [(NTKNumeralsHourViewsManager *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_device, a4);
    v10 = objc_opt_new();
    for (i = 1; i != 13; ++i)
    {
      v12 = -[NTKNumeralsHourView initUnloadedHourViewForHour:style:faceConfiguration:]([NTKNumeralsHourView alloc], "initUnloadedHourViewForHour:style:faceConfiguration:", i, [v6 selectedStyle], v6);
      [v12 setHidden:1];
      [(NSArray *)v10 addObject:v12];
    }

    hourViews = v9->_hourViews;
    v9->_hourViews = v10;
  }

  return v9;
}

- (void)addHourViewsToSuperview:(id)a3
{
  v4 = a3;
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

        [v4 addSubview:{*(*(&v10 + 1) + 8 * v9), v10}];
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

- (BOOL)needHourAnimationForChangeToHour:(int64_t)a3 toFaceConfiguration:(id)a4
{
  if (self->_visibleHour != a3)
  {
    return 1;
  }

  v6 = a4;
  v7 = [(NTKNumeralsHourViewsManager *)self _visibleHourView];
  [v7 center];
  v9 = v8;
  v11 = v10;

  v12 = [v6 areAllComplicationsOff];
  v13 = [v6 utilitySlot];

  [NTKNumeralsAnalogElementsPlacement hourViewPositionForHour:a3 complicationHidden:v12 utilitySlot:v13 forDevice:self->_device];
  return v11 != v15 || v9 != v14;
}

- (void)updateVisibleHour:(int64_t)a3 targetUtilitySlot:(int64_t)a4 faceConfiguration:(id)a5 animationProgress:(double)a6 forEditMode:(int64_t)a7
{
  v12 = a5;
  v19 = v12;
  if (a6 >= 0.5 && self->_visibleHour != a3)
  {
    v13 = [(NTKNumeralsHourViewsManager *)self _hourViewForHour:a3 loadIfNeeded:1];
    [v13 applyFaceColorFromFaceConfiguration:v19];
    [v13 sizeToFit];
    +[NTKNumeralsAnalogElementsPlacement hourViewPositionForHour:complicationHidden:utilitySlot:forDevice:](NTKNumeralsAnalogElementsPlacement, "hourViewPositionForHour:complicationHidden:utilitySlot:forDevice:", a3, [v19 areAllComplicationsOff], a4, self->_device);
    [v13 setCenter:?];
    [v13 setHidden:0];
    v14 = [(NTKNumeralsHourViewsManager *)self _visibleHourView];
    [v14 setHidden:1];

    self->_visibleHour = a3;
    self->_visibleComplicationSlot = [v19 utilitySlot];
    self->_areComplicationsOff = [v19 areAllComplicationsOff];

    v12 = v19;
  }

  v15 = [v12 areAllComplicationsOff] ^ 1;
  if ((a4 - 1) >= 2)
  {
    LOBYTE(v15) = 0;
  }

  self->_hasUpperComplication = v15;
  [(NTKNumeralsHourViewsManager *)self _update12AdjustmentForStatusIndicator];
  [(NTKNumeralsHourViewsManager *)self _hourAlphaForEditMode:a7];
  CLKInterpolateBetweenFloatsClipped();
  v17 = v16;
  v18 = [(NTKNumeralsHourViewsManager *)self _visibleHourView];
  [v18 setAlpha:v17];

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

- (void)configureForEditMode:(int64_t)a3
{
  v4 = [(NTKNumeralsHourViewsManager *)self _visibleHourView];
  [v4 setHidden:a3 == 13];
}

- (void)applyTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5 faceConfiguration:(id)a6
{
  v9 = a6;
  [(NTKNumeralsHourViewsManager *)self _currentHourViewPlacementForEditMode:a4 faceConfiguration:v9];
  [(NTKNumeralsHourViewsManager *)self _currentHourViewPlacementForEditMode:a5 faceConfiguration:v9];

  CLKInterpolateBetweenPoints();
  v11 = v10;
  v13 = v12;
  v14 = [(NTKNumeralsHourViewsManager *)self _visibleHourView];
  [v14 setCenter:{v11, v13}];

  [(NTKNumeralsHourViewsManager *)self _hourAlphaForEditMode:a4];
  [(NTKNumeralsHourViewsManager *)self _hourAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  v16 = v15;
  v17 = [(NTKNumeralsHourViewsManager *)self _visibleHourView];
  [v17 setAlpha:v16];

  v18 = [(NTKNumeralsHourViewsManager *)self _visibleHourView];
  [v18 setHidden:0];
}

- (void)applyTransitionFraction:(double)a3 fromFaceColorPalette:(id)a4 toFaceColorPalette:(id)a5 faceConfiguration:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = [(NTKNumeralsHourViewsManager *)self _visibleHourView];
  [v13 applyTransitionFraction:v12 fromFaceColorPalette:v11 toFaceColorPalette:v10 faceConfiguration:a3];
}

- (void)applyFaceColorFromFaceConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(NTKNumeralsHourViewsManager *)self _visibleHourView];
  [v5 applyFaceColorFromFaceConfiguration:v4];
}

- (void)applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4
{
  if (a4 == 10)
  {
    v13 = v7;
    v14 = v6;
    v15 = v4;
    v16 = v5;
    NTKLargeElementScaleForBreathingFraction();
    v10 = v9;
    v11 = [(NTKNumeralsHourViewsManager *)self _visibleHourView];
    CGAffineTransformMakeScale(&v12, v10, v10);
    [v11 setTransform:&v12];
  }
}

- (void)applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4
{
  NTKScaleForRubberBandingFraction();
  v7 = v6;
  NTKAlphaForRubberBandingFraction();
  if (a4 == 10)
  {
    v9 = v8;
    v10 = [(NTKNumeralsHourViewsManager *)self _visibleHourView];
    CGAffineTransformMakeScale(&v12, v7, v7);
    [v10 setTransform:&v12];

    v11 = [(NTKNumeralsHourViewsManager *)self _visibleHourView];
    [v11 setAlpha:v9];
  }
}

- (id)_hourViewForHour:(int64_t)a3 loadIfNeeded:(BOOL)a4
{
  v4 = a4;
  v7 = [(NSArray *)self->_hourViews count];
  v8 = 0;
  if (a3 && v7)
  {
    v8 = [(NSArray *)self->_hourViews objectAtIndexedSubscript:a3 - 1];
  }

  if (([v8 isLoaded] & 1) == 0 && v4)
  {
    [v8 load];
  }

  return v8;
}

- (double)_hourAlphaForEditMode:(int64_t)a3
{
  result = NTKEditModeDimmedAlpha;
  if (a3 != 1)
  {
    return 1.0;
  }

  return result;
}

- (CGPoint)_currentHourViewPlacementForEditMode:(int64_t)a3 faceConfiguration:(id)a4
{
  v6 = a4;
  +[NTKNumeralsAnalogElementsPlacement hourViewPositionForHour:complicationHidden:utilitySlot:forDevice:](NTKNumeralsAnalogElementsPlacement, "hourViewPositionForHour:complicationHidden:utilitySlot:forDevice:", self->_visibleHour, [v6 areAllComplicationsOff], objc_msgSend(v6, "utilitySlot"), self->_device);
  v8 = v7;
  v10 = v9;
  if (a3 == 10)
  {
    v8 = v7 + NTKNumeralsAnalogColorEditingHourHorizontalIndent(self->_device);
    v10 = v10 + NTKNumeralsAnalogColorEditingHourVerticalindent(self->_device);
  }

  else if (a3 == 13)
  {
    +[NTKNumeralsAnalogElementsPlacement centerPointFor10NumeralInImageForStyle:forDevice:](NTKNumeralsAnalogElementsPlacement, "centerPointFor10NumeralInImageForStyle:forDevice:", [v6 selectedStyle], self->_device);
    v12 = v11;
    v14 = v13;
    v15 = NTKNumeralsAnalogStyleEditingBoxSize(self->_device) * 0.5;
    NTKNumeralsAnalogStyleEditingBoxSize(self->_device);
    v17 = v16 * 0.5 + NTKNumeralsAnalogEditingVerticalIndent(self->_device);
    v18 = [(NTKNumeralsHourViewsManager *)self _visibleHourView];
    v19 = [v18 image];
    [v19 size];
    v21 = v20;

    v22 = [(NTKNumeralsHourViewsManager *)self _visibleHourView];
    v23 = [v22 image];
    [v23 size];
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

- (void)setAdjustsForStatusIndicator:(BOOL)a3 animated:(BOOL)a4
{
  self->_adjustingForStatusIndicator = a3;
  if (a4)
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