@interface NTKPrideWeaveFaceView
- (NTKPrideWeaveFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5;
- (double)_complicationAlphaForEditMode:(int64_t)a3;
- (double)_dialAlphaForEditMode:(int64_t)a3;
- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5;
- (id)colorForView:(id)a3 accented:(BOOL)a4;
- (id)filterForView:(id)a3 style:(int64_t)a4;
- (id)filterForView:(id)a3 style:(int64_t)a4 fraction:(double)a5;
- (id)filtersForView:(id)a3 style:(int64_t)a4 fraction:(double)a5;
- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyDataMode;
- (void)_applyFrozen;
- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7;
- (void)_cleanupAfterTransitionComplicationSlot:(id)a3 selectedComplication:(id)a4;
- (void)_configureComplicationView:(id)a3 forSlot:(id)a4;
- (void)_configureForEditMode:(int64_t)a3;
- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5;
- (void)_configureTimeView:(id)a3;
- (void)_finalizeForSnapshotting:(id)a3;
- (void)_loadLayoutRules;
- (void)_loadSnapshotContentViews;
- (void)_unloadSnapshotContentViews;
- (void)_updatePausedState;
- (void)cleanupAfterEditing;
- (void)layoutSubviews;
- (void)prepareForEditing;
- (void)setAnalogHandsColor;
@end

@implementation NTKPrideWeaveFaceView

- (NTKPrideWeaveFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5
{
  v8 = a4;
  v14.receiver = self;
  v14.super_class = NTKPrideWeaveFaceView;
  v9 = [(NTKPrideWeaveFaceView *)&v14 initWithFaceStyle:a3 forDevice:v8 clientIdentifier:a5];
  if (v9)
  {
    v10 = [[NTKWhistlerAnalogFaceViewComplicationFactory alloc] initForDevice:v8];
    faceViewComplicationFactory = v9->_faceViewComplicationFactory;
    v9->_faceViewComplicationFactory = v10;

    [(NTKPrideWeaveFaceView *)v9 setComplicationFactory:v9->_faceViewComplicationFactory];
    v12 = +[UIColor whiteColor];
    [(NTKPrideWeaveFaceView *)v9 setComplicationColor:v12];
  }

  return v9;
}

- (void)_loadSnapshotContentViews
{
  v14.receiver = self;
  v14.super_class = NTKPrideWeaveFaceView;
  [(NTKPrideWeaveFaceView *)&v14 _loadSnapshotContentViews];
  v3 = +[UIColor blackColor];
  [(NTKPrideWeaveFaceView *)self setBackgroundColor:v3];

  v4 = [(NTKPrideWeaveFaceView *)self device];
  [v4 screenBounds];
  v5 = [CLKUIQuadView quadViewWithFrame:@"PrWv" identifier:9 options:0 colorSpace:?];
  quadView = self->_quadView;
  self->_quadView = v5;

  v7 = objc_alloc_init(NTKPrideWeaveBarberQuad);
  barberQuad = self->_barberQuad;
  self->_barberQuad = v7;

  v9 = objc_alloc_init(NTKPrideWeaveSpiroQuad);
  spiroQuad = self->_spiroQuad;
  self->_spiroQuad = v9;

  [(CLKUIMetalQuadView *)self->_quadView addQuad:self->_barberQuad];
  [(CLKUIMetalQuadView *)self->_quadView addQuad:self->_spiroQuad];
  [(CLKUIMetalQuadView *)self->_quadView setOpaque:1];
  LODWORD(v11) = 1.0;
  [(NTKPrideWeaveBarberQuad *)self->_barberQuad setWinding:v11];
  [(NTKPrideWeaveBarberQuad *)self->_barberQuad setRotation:0.0];
  [(NTKPrideWeaveBarberQuad *)self->_barberQuad setTimeScale:0.0];
  LODWORD(v12) = 1.0;
  [(NTKPrideWeaveSpiroQuad *)self->_spiroQuad setWinding:v12];
  [(NTKPrideWeaveSpiroQuad *)self->_spiroQuad setRotation:0.0];
  [(NTKPrideWeaveSpiroQuad *)self->_spiroQuad setTimeScale:0.0];
  v13 = [(NTKPrideWeaveFaceView *)self contentView];
  [v13 addSubview:self->_quadView];

  [(CLKUIMetalQuadView *)self->_quadView setPreferredFramesPerSecond:60];
  [(CLKUIMetalQuadView *)self->_quadView setPaused:0];
  [(NTKPrideWeaveFaceView *)self setNeedsLayout];
}

- (void)_unloadSnapshotContentViews
{
  v6.receiver = self;
  v6.super_class = NTKPrideWeaveFaceView;
  [(NTKPrideWeaveFaceView *)&v6 _unloadSnapshotContentViews];
  [(CLKUIMetalQuadView *)self->_quadView removeFromSuperview];
  barberQuad = self->_barberQuad;
  self->_barberQuad = 0;

  spiroQuad = self->_spiroQuad;
  self->_spiroQuad = 0;

  quadView = self->_quadView;
  self->_quadView = 0;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = NTKPrideWeaveFaceView;
  [(NTKPrideWeaveFaceView *)&v3 layoutSubviews];
  [(NTKPrideWeaveFaceView *)self bounds];
  [(CLKUIMetalQuadView *)self->_quadView setFrame:?];
}

- (void)_configureTimeView:(id)a3
{
  v4.receiver = self;
  v4.super_class = NTKPrideWeaveFaceView;
  [(NTKPrideWeaveFaceView *)&v4 _configureTimeView:a3];
  [(NTKPrideWeaveFaceView *)self setAnalogHandsColor];
}

- (void)setAnalogHandsColor
{
  v3 = [(NTKPrideWeaveFaceView *)self timeView];
  v4 = +[UIColor whiteColor];
  v5 = +[UIColor blackColor];
  [v3 applyHourMinuteHandsStrokeColor:v4 fillColor:v5];

  v6 = [(NTKPrideWeaveFaceView *)self timeView];
  v7 = +[UIColor systemRedColor];
  [v6 applySecondHandColor:v7];

  v10 = [(NTKPrideWeaveFaceView *)self timeView];
  v8 = [v10 secondHandView];
  v9 = +[UIColor blackColor];
  [v8 setHandDotColor:v9];
}

- (void)prepareForEditing
{
  v3.receiver = self;
  v3.super_class = NTKPrideWeaveFaceView;
  [(NTKPrideWeaveFaceView *)&v3 prepareForEditing];
  [(NTKPrideWeaveFaceView *)self _updatePausedState];
}

- (void)cleanupAfterEditing
{
  v3.receiver = self;
  v3.super_class = NTKPrideWeaveFaceView;
  [(NTKPrideWeaveFaceView *)&v3 cleanupAfterEditing];
  [(NTKPrideWeaveFaceView *)self _updatePausedState];
}

- (void)_applyFrozen
{
  v3.receiver = self;
  v3.super_class = NTKPrideWeaveFaceView;
  [(NTKPrideWeaveFaceView *)&v3 _applyFrozen];
  [(NTKPrideWeaveFaceView *)self _updatePausedState];
}

- (void)_applyDataMode
{
  v3.receiver = self;
  v3.super_class = NTKPrideWeaveFaceView;
  [(NTKPrideWeaveFaceView *)&v3 _applyDataMode];
  [(NTKPrideWeaveFaceView *)self _updatePausedState];
}

- (void)_updatePausedState
{
  if (([(NTKPrideWeaveFaceView *)self editing]& 1) != 0)
  {
    goto LABEL_2;
  }

  if (([(NTKPrideWeaveFaceView *)self isFrozen]& 1) != 0)
  {
    v3 = 1;
  }

  else
  {
    if ([(NTKPrideWeaveFaceView *)self dataMode]== &dword_0 + 1 || [(NTKPrideWeaveFaceView *)self dataMode]== &dword_4 + 1)
    {
LABEL_2:
      v3 = 0;
      goto LABEL_5;
    }

    v3 = [(NTKPrideWeaveFaceView *)self dataMode]!= &dword_0 + 3;
  }

LABEL_5:
  v4 = NTKIsScreenOn() ^ 1;
  LODWORD(v5) = 1.0;
  [(NTKPrideWeaveBarberQuad *)self->_barberQuad setTimeScale:v5];
  LODWORD(v6) = 1.0;
  [(NTKPrideWeaveSpiroQuad *)self->_spiroQuad setTimeScale:v6];
  quadView = self->_quadView;

  [(CLKUIMetalQuadView *)quadView setPaused:v3 | v4];
}

- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v8 = a3;
  if (a4 == 12)
  {
    v15 = v8;
    v9 = flt_1B128[[v8 dialShape]];
    objc_storeStrong(&self->_currentContentOption, a3);
    *&v10 = v9;
    [(NTKPrideWeaveBarberQuad *)self->_barberQuad setViewMode:v10];
    *&v11 = v9;
    [(NTKPrideWeaveSpiroQuad *)self->_spiroQuad setViewMode:v11];
    *&v12 = 1.0 - v9;
    [(NTKPrideWeaveBarberQuad *)self->_barberQuad setThickness:v12];
    *&v13 = v9;
    [(NTKPrideWeaveSpiroQuad *)self->_spiroQuad setThickness:v13];
    v14 = [(NTKPrideWeaveFaceView *)self delegate];
    [v14 faceViewDidChangeWantsStatusBarIconShadow];

    v8 = v15;
  }
}

- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7
{
  if (a6 == 12)
  {
    v10 = a5;
    v11 = flt_1B128[[a4 dialShape]];
    v12 = [v10 dialShape];

    v13 = flt_1B128[v12];
    CLKInterpolateBetweenFloatsUnclipped();
    v15 = v14;
    *&v14 = v15;
    [(NTKPrideWeaveBarberQuad *)self->_barberQuad setViewMode:v14];
    *&v16 = v15;
    [(NTKPrideWeaveSpiroQuad *)self->_spiroQuad setViewMode:v16];
    *&v17 = 1.0 - fminf(v15 + v15, 1.0);
    [(NTKPrideWeaveBarberQuad *)self->_barberQuad setThickness:v17];
    spiroQuad = self->_spiroQuad;
    v19 = 1.0 - fmin(1.0 - v15 + 1.0 - v15, 1.0);
    *&v19 = v19;

    [(NTKPrideWeaveSpiroQuad *)spiroQuad setThickness:v19];
  }
}

- (double)_complicationAlphaForEditMode:(int64_t)a3
{
  result = NTKEditModeDimmedAlpha;
  if (a3 < 2)
  {
    return 1.0;
  }

  return result;
}

- (double)_dialAlphaForEditMode:(int64_t)a3
{
  result = NTKEditModeDimmedAlpha;
  if (a3 != 1)
  {
    return 1.0;
  }

  return result;
}

- (void)_configureForEditMode:(int64_t)a3
{
  v5 = [(NTKPrideWeaveFaceView *)self complicationContainerView];
  [(NTKPrideWeaveFaceView *)self _complicationAlphaForEditMode:a3];
  [v5 setAlpha:?];

  quadView = self->_quadView;
  [(NTKPrideWeaveFaceView *)self _dialAlphaForEditMode:a3];

  [(CLKUIMetalQuadView *)quadView setAlpha:?];
}

- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5
{
  v8 = [(NTKPrideWeaveFaceView *)self complicationContainerView];
  [(NTKPrideWeaveFaceView *)self _complicationAlphaForEditMode:a4];
  [(NTKPrideWeaveFaceView *)self _complicationAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  [v8 setAlpha:?];

  [(NTKPrideWeaveFaceView *)self _dialAlphaForEditMode:a4];
  [(NTKPrideWeaveFaceView *)self _dialAlphaForEditMode:a5];
  quadView = self->_quadView;
  CLKInterpolateBetweenFloatsClipped();

  [(CLKUIMetalQuadView *)quadView setAlpha:?];
}

- (void)_cleanupAfterTransitionComplicationSlot:(id)a3 selectedComplication:(id)a4
{
  v4.receiver = self;
  v4.super_class = NTKPrideWeaveFaceView;
  [(NTKPrideWeaveFaceView *)&v4 _cleanupAfterTransitionComplicationSlot:a3 selectedComplication:a4];
}

- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v5.receiver = self;
  v5.super_class = NTKPrideWeaveFaceView;
  [(NTKPrideWeaveFaceView *)&v5 _applyRubberBandingFraction:a4 forCustomEditMode:a5 slot:a3];
}

- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v5.receiver = self;
  v5.super_class = NTKPrideWeaveFaceView;
  [(NTKPrideWeaveFaceView *)&v5 _applyBreathingFraction:a4 forCustomEditMode:a5 slot:a3];
}

- (void)_loadLayoutRules
{
  faceViewComplicationFactory = self->_faceViewComplicationFactory;
  v8 = [(NTKPrideWeaveFaceView *)self device];
  [v8 screenBounds];
  v5 = v4;
  v6 = [(NTKPrideWeaveFaceView *)self device];
  [v6 screenScale];
  [(NTKWhistlerAnalogFaceViewComplicationFactory *)faceViewComplicationFactory loadLayoutRulesForFaceView:self dialDiameter:v5 * v7];
}

- (void)_configureComplicationView:(id)a3 forSlot:(id)a4
{
  v6 = a3;
  [(NTKWhistlerAnalogFaceViewComplicationFactory *)self->_faceViewComplicationFactory configureComplicationView:v6 forSlot:a4 faceView:self];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 updateMonochromeColor];
  }
}

- (id)filtersForView:(id)a3 style:(int64_t)a4 fraction:(double)a5
{
  v6 = [(NTKPrideWeaveFaceView *)self _outerComplicationColors];
  v7 = [(NTKPrideWeaveFaceView *)self _innerComplicationColors];
  v8 = CLKUIMonochromeFiltersForStyleWithTintedBackground();

  return v8;
}

- (id)filterForView:(id)a3 style:(int64_t)a4 fraction:(double)a5
{
  v8 = [(NTKPrideWeaveFaceView *)self _outerComplicationColors];
  v9 = [(NTKPrideWeaveFaceView *)self _innerComplicationColors];
  if (a4 <= 2)
  {
    if (!a4)
    {
LABEL_10:
      v10 = NTKFlatMonochromeFilter();
      goto LABEL_11;
    }

    if (a4 != 1)
    {
      if (a4 != 2)
      {
        goto LABEL_12;
      }

      goto LABEL_10;
    }

LABEL_9:
    v10 = NTKDesatMonochromeFilter();
LABEL_11:
    v5 = v10;
    goto LABEL_12;
  }

  if (a4 == 3 || a4 == 4 || a4 == 5)
  {
    goto LABEL_9;
  }

LABEL_12:

  return v5;
}

- (id)filterForView:(id)a3 style:(int64_t)a4
{
  v7 = [(NTKPrideWeaveFaceView *)self _outerComplicationColors];
  v8 = [(NTKPrideWeaveFaceView *)self _innerComplicationColors];
  if (a4 <= 2)
  {
    if (!a4)
    {
LABEL_10:
      v9 = NTKFlatMonochromeFilterOpaque();
      goto LABEL_11;
    }

    if (a4 != 1)
    {
      if (a4 != 2)
      {
        goto LABEL_12;
      }

      goto LABEL_10;
    }

LABEL_9:
    v9 = NTKDesatMonochromeFilterOpaque();
LABEL_11:
    v4 = v9;
    goto LABEL_12;
  }

  if (a4 == 3 || a4 == 4 || a4 == 5)
  {
    goto LABEL_9;
  }

LABEL_12:

  return v4;
}

- (id)colorForView:(id)a3 accented:(BOOL)a4
{
  if (a4)
  {
    [(NTKPrideWeaveFaceView *)self _innerComplicationColors];
  }

  else
  {
    [(NTKPrideWeaveFaceView *)self _outerComplicationColors];
  }
  v4 = ;

  return v4;
}

- (void)_finalizeForSnapshotting:(id)a3
{
  barberQuad = self->_barberQuad;
  v7 = a3;
  LODWORD(v5) = 1.0;
  [(NTKPrideWeaveBarberQuad *)barberQuad setWinding:v5];
  [(NTKPrideWeaveBarberQuad *)self->_barberQuad setRotation:0.0];
  LODWORD(v6) = 1.0;
  [(NTKPrideWeaveSpiroQuad *)self->_spiroQuad setWinding:v6];
  [(NTKPrideWeaveSpiroQuad *)self->_spiroQuad setRotation:0.0];
  [(NTKSpringCrownHandler *)self->_barberCrownHandler setCurrentPosition:1.0];
  [(NTKSpringCrownHandler *)self->_spiroCrownHandler setCurrentPosition:1.0];
  [(CLKUIMetalQuadView *)self->_quadView renderSynchronouslyWithImageQueueDiscard:1 inGroup:0 completion:v7];
}

- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [NTKPrideSwatchMappedImageCache keyForFaceStyle:@"NTKPrideWeaveFace" editOption:v6 mode:a4 selectedOptions:0];
    v8 = +[NTKPrideSwatchMappedImageCache sharedCache];
    v9 = [v8 imageForKey:v7];

    if (!v9)
    {
      v10 = [NTKPrideWeaveFaceView alloc];
      v11 = +[CLKDevice currentDevice];
      v12 = [(NTKPrideWeaveFaceView *)v10 initWithFaceStyle:44 forDevice:v11 clientIdentifier:0];

      [v12 _loadSnapshotContentViews];
      [NTKEditOption sizeForSwatchStyle:3];
      v14 = v13;
      v16 = v15;
      v17 = +[UIScreen mainScreen];
      [v17 nativeScale];
      v19 = v18;

      [v12 setBounds:{0.0, 0.0, v14, v16}];
      [v12 layoutSubviews];
      [v12 _applyOption:v6 forCustomEditMode:a4 slot:0];
      v9 = [v12[1] snapshotInRect:0.0 scale:0.0 time:{v14, v16, v19, 0.0}];
      v20 = +[NTKPrideSwatchMappedImageCache sharedCache];
      [v20 setImage:v9 forKey:v7];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end