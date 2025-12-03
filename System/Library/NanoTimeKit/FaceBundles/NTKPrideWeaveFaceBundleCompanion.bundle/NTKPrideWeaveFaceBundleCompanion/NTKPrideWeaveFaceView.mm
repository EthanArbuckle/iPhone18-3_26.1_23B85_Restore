@interface NTKPrideWeaveFaceView
- (NTKPrideWeaveFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier;
- (double)_complicationAlphaForEditMode:(int64_t)mode;
- (double)_dialAlphaForEditMode:(int64_t)mode;
- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options;
- (id)colorForView:(id)view accented:(BOOL)accented;
- (id)filterForView:(id)view style:(int64_t)style;
- (id)filterForView:(id)view style:(int64_t)style fraction:(double)fraction;
- (id)filtersForView:(id)view style:(int64_t)style fraction:(double)fraction;
- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyDataMode;
- (void)_applyFrozen;
- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_cleanupAfterTransitionComplicationSlot:(id)slot selectedComplication:(id)complication;
- (void)_configureComplicationView:(id)view forSlot:(id)slot;
- (void)_configureForEditMode:(int64_t)mode;
- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode;
- (void)_configureTimeView:(id)view;
- (void)_finalizeForSnapshotting:(id)snapshotting;
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

- (NTKPrideWeaveFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier
{
  deviceCopy = device;
  v14.receiver = self;
  v14.super_class = NTKPrideWeaveFaceView;
  v9 = [(NTKPrideWeaveFaceView *)&v14 initWithFaceStyle:style forDevice:deviceCopy clientIdentifier:identifier];
  if (v9)
  {
    v10 = [[NTKWhistlerAnalogFaceViewComplicationFactory alloc] initForDevice:deviceCopy];
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

  device = [(NTKPrideWeaveFaceView *)self device];
  [device screenBounds];
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
  contentView = [(NTKPrideWeaveFaceView *)self contentView];
  [contentView addSubview:self->_quadView];

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

- (void)_configureTimeView:(id)view
{
  v4.receiver = self;
  v4.super_class = NTKPrideWeaveFaceView;
  [(NTKPrideWeaveFaceView *)&v4 _configureTimeView:view];
  [(NTKPrideWeaveFaceView *)self setAnalogHandsColor];
}

- (void)setAnalogHandsColor
{
  timeView = [(NTKPrideWeaveFaceView *)self timeView];
  v4 = +[UIColor whiteColor];
  v5 = +[UIColor blackColor];
  [timeView applyHourMinuteHandsStrokeColor:v4 fillColor:v5];

  timeView2 = [(NTKPrideWeaveFaceView *)self timeView];
  v7 = +[UIColor systemRedColor];
  [timeView2 applySecondHandColor:v7];

  timeView3 = [(NTKPrideWeaveFaceView *)self timeView];
  secondHandView = [timeView3 secondHandView];
  v9 = +[UIColor blackColor];
  [secondHandView setHandDotColor:v9];
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

- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  if (mode == 12)
  {
    v15 = optionCopy;
    v9 = flt_1B128[[optionCopy dialShape]];
    objc_storeStrong(&self->_currentContentOption, option);
    *&v10 = v9;
    [(NTKPrideWeaveBarberQuad *)self->_barberQuad setViewMode:v10];
    *&v11 = v9;
    [(NTKPrideWeaveSpiroQuad *)self->_spiroQuad setViewMode:v11];
    *&v12 = 1.0 - v9;
    [(NTKPrideWeaveBarberQuad *)self->_barberQuad setThickness:v12];
    *&v13 = v9;
    [(NTKPrideWeaveSpiroQuad *)self->_spiroQuad setThickness:v13];
    delegate = [(NTKPrideWeaveFaceView *)self delegate];
    [delegate faceViewDidChangeWantsStatusBarIconShadow];

    optionCopy = v15;
  }
}

- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot
{
  if (mode == 12)
  {
    toOptionCopy = toOption;
    v11 = flt_1B128[[option dialShape]];
    dialShape = [toOptionCopy dialShape];

    v13 = flt_1B128[dialShape];
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

- (double)_complicationAlphaForEditMode:(int64_t)mode
{
  result = NTKEditModeDimmedAlpha;
  if (mode < 2)
  {
    return 1.0;
  }

  return result;
}

- (double)_dialAlphaForEditMode:(int64_t)mode
{
  result = NTKEditModeDimmedAlpha;
  if (mode != 1)
  {
    return 1.0;
  }

  return result;
}

- (void)_configureForEditMode:(int64_t)mode
{
  complicationContainerView = [(NTKPrideWeaveFaceView *)self complicationContainerView];
  [(NTKPrideWeaveFaceView *)self _complicationAlphaForEditMode:mode];
  [complicationContainerView setAlpha:?];

  quadView = self->_quadView;
  [(NTKPrideWeaveFaceView *)self _dialAlphaForEditMode:mode];

  [(CLKUIMetalQuadView *)quadView setAlpha:?];
}

- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode
{
  complicationContainerView = [(NTKPrideWeaveFaceView *)self complicationContainerView];
  [(NTKPrideWeaveFaceView *)self _complicationAlphaForEditMode:mode];
  [(NTKPrideWeaveFaceView *)self _complicationAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  [complicationContainerView setAlpha:?];

  [(NTKPrideWeaveFaceView *)self _dialAlphaForEditMode:mode];
  [(NTKPrideWeaveFaceView *)self _dialAlphaForEditMode:editMode];
  quadView = self->_quadView;
  CLKInterpolateBetweenFloatsClipped();

  [(CLKUIMetalQuadView *)quadView setAlpha:?];
}

- (void)_cleanupAfterTransitionComplicationSlot:(id)slot selectedComplication:(id)complication
{
  v4.receiver = self;
  v4.super_class = NTKPrideWeaveFaceView;
  [(NTKPrideWeaveFaceView *)&v4 _cleanupAfterTransitionComplicationSlot:slot selectedComplication:complication];
}

- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v5.receiver = self;
  v5.super_class = NTKPrideWeaveFaceView;
  [(NTKPrideWeaveFaceView *)&v5 _applyRubberBandingFraction:mode forCustomEditMode:slot slot:fraction];
}

- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v5.receiver = self;
  v5.super_class = NTKPrideWeaveFaceView;
  [(NTKPrideWeaveFaceView *)&v5 _applyBreathingFraction:mode forCustomEditMode:slot slot:fraction];
}

- (void)_loadLayoutRules
{
  faceViewComplicationFactory = self->_faceViewComplicationFactory;
  device = [(NTKPrideWeaveFaceView *)self device];
  [device screenBounds];
  v5 = v4;
  device2 = [(NTKPrideWeaveFaceView *)self device];
  [device2 screenScale];
  [(NTKWhistlerAnalogFaceViewComplicationFactory *)faceViewComplicationFactory loadLayoutRulesForFaceView:self dialDiameter:v5 * v7];
}

- (void)_configureComplicationView:(id)view forSlot:(id)slot
{
  viewCopy = view;
  [(NTKWhistlerAnalogFaceViewComplicationFactory *)self->_faceViewComplicationFactory configureComplicationView:viewCopy forSlot:slot faceView:self];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [viewCopy updateMonochromeColor];
  }
}

- (id)filtersForView:(id)view style:(int64_t)style fraction:(double)fraction
{
  _outerComplicationColors = [(NTKPrideWeaveFaceView *)self _outerComplicationColors];
  _innerComplicationColors = [(NTKPrideWeaveFaceView *)self _innerComplicationColors];
  v8 = CLKUIMonochromeFiltersForStyleWithTintedBackground();

  return v8;
}

- (id)filterForView:(id)view style:(int64_t)style fraction:(double)fraction
{
  _outerComplicationColors = [(NTKPrideWeaveFaceView *)self _outerComplicationColors];
  _innerComplicationColors = [(NTKPrideWeaveFaceView *)self _innerComplicationColors];
  if (style <= 2)
  {
    if (!style)
    {
LABEL_10:
      v10 = NTKFlatMonochromeFilter();
      goto LABEL_11;
    }

    if (style != 1)
    {
      if (style != 2)
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

  if (style == 3 || style == 4 || style == 5)
  {
    goto LABEL_9;
  }

LABEL_12:

  return v5;
}

- (id)filterForView:(id)view style:(int64_t)style
{
  _outerComplicationColors = [(NTKPrideWeaveFaceView *)self _outerComplicationColors];
  _innerComplicationColors = [(NTKPrideWeaveFaceView *)self _innerComplicationColors];
  if (style <= 2)
  {
    if (!style)
    {
LABEL_10:
      v9 = NTKFlatMonochromeFilterOpaque();
      goto LABEL_11;
    }

    if (style != 1)
    {
      if (style != 2)
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

  if (style == 3 || style == 4 || style == 5)
  {
    goto LABEL_9;
  }

LABEL_12:

  return v4;
}

- (id)colorForView:(id)view accented:(BOOL)accented
{
  if (accented)
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

- (void)_finalizeForSnapshotting:(id)snapshotting
{
  barberQuad = self->_barberQuad;
  snapshottingCopy = snapshotting;
  LODWORD(v5) = 1.0;
  [(NTKPrideWeaveBarberQuad *)barberQuad setWinding:v5];
  [(NTKPrideWeaveBarberQuad *)self->_barberQuad setRotation:0.0];
  LODWORD(v6) = 1.0;
  [(NTKPrideWeaveSpiroQuad *)self->_spiroQuad setWinding:v6];
  [(NTKPrideWeaveSpiroQuad *)self->_spiroQuad setRotation:0.0];
  [(NTKSpringCrownHandler *)self->_barberCrownHandler setCurrentPosition:1.0];
  [(NTKSpringCrownHandler *)self->_spiroCrownHandler setCurrentPosition:1.0];
  [(CLKUIMetalQuadView *)self->_quadView renderSynchronouslyWithImageQueueDiscard:1 inGroup:0 completion:snapshottingCopy];
}

- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options
{
  optionCopy = option;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [NTKPrideSwatchMappedImageCache keyForFaceStyle:@"NTKPrideWeaveFace" editOption:optionCopy mode:mode selectedOptions:0];
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
      [v12 _applyOption:optionCopy forCustomEditMode:mode slot:0];
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