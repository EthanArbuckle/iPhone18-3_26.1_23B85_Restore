@interface NTKPlumeriaFaceView
- (NTKPlumeriaFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier;
- (id)createFaceColorPalette;
- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyFrozen;
- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_configureForEditMode:(int64_t)mode;
- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode;
- (void)_loadSnapshotContentViews;
- (void)_reorderSwitcherSnapshotView;
- (void)_setUpMetalView;
- (void)_tearDownMetalView;
- (void)_unloadSnapshotContentViews;
- (void)setOverrideDate:(id)date duration:(double)duration;
@end

@implementation NTKPlumeriaFaceView

- (NTKPlumeriaFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier
{
  deviceCopy = device;
  v13.receiver = self;
  v13.super_class = NTKPlumeriaFaceView;
  v10 = [(NTKPlumeriaFaceView *)&v13 initWithFaceStyle:style forDevice:deviceCopy clientIdentifier:identifier];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_device, device);
    v11->_isPaused = 1;
  }

  return v11;
}

- (void)_loadSnapshotContentViews
{
  v3.receiver = self;
  v3.super_class = NTKPlumeriaFaceView;
  [(NTKPlumeriaFaceView *)&v3 _loadSnapshotContentViews];
  [(NTKPlumeriaFaceView *)self _setUpMetalView];
}

- (void)_unloadSnapshotContentViews
{
  v3.receiver = self;
  v3.super_class = NTKPlumeriaFaceView;
  [(NTKPlumeriaFaceView *)&v3 _unloadSnapshotContentViews];
  [(NTKPlumeriaFaceView *)self _tearDownMetalView];
}

- (void)_applyFrozen
{
  v2.receiver = self;
  v2.super_class = NTKPlumeriaFaceView;
  [(NTKPlumeriaFaceView *)&v2 _applyFrozen];
}

- (void)setOverrideDate:(id)date duration:(double)duration
{
  v7.receiver = self;
  v7.super_class = NTKPlumeriaFaceView;
  dateCopy = date;
  [(NTKPlumeriaFaceView *)&v7 setOverrideDate:dateCopy duration:duration];
  [(NTKPlumeriaQuad *)self->_compositeQuad setOverrideDate:dateCopy duration:duration, v7.receiver, v7.super_class];
}

- (void)_reorderSwitcherSnapshotView
{
  switcherSnapshotView = [(NTKPlumeriaFaceView *)self switcherSnapshotView];

  if (switcherSnapshotView)
  {
    switcherSnapshotView2 = [(NTKPlumeriaFaceView *)self switcherSnapshotView];
    [(NTKPlumeriaFaceView *)self bringSubviewToFront:switcherSnapshotView2];
  }
}

- (void)_setUpMetalView
{
  [(CLKDevice *)self->_device screenBounds];
  v3 = [CLKUIMetalQuadView quadViewWithFrame:@"PLM" identifier:32 options:0 colorSpace:?];
  quadView = self->_quadView;
  self->_quadView = v3;

  [(CLKUIMetalQuadView *)self->_quadView setUserInteractionEnabled:0];
  [(CLKUIMetalQuadView *)self->_quadView setOpaque:1];
  v5 = [[NTKPlumeriaQuad alloc] initWithDevice:self->_device];
  compositeQuad = self->_compositeQuad;
  self->_compositeQuad = v5;

  [(CLKUIMetalQuadView *)self->_quadView addQuad:self->_compositeQuad];
  contentView = [(NTKPlumeriaFaceView *)self contentView];
  [contentView addSubview:self->_quadView];

  [(NTKPlumeriaFaceView *)self bounds];
  [(CLKUIMetalQuadView *)self->_quadView setFrame:?];
  v8 = self->_quadView;
  +[NTKPlumeriaQuad getDesiredFPS];

  [(CLKUIMetalQuadView *)v8 setPreferredFramesPerSecond:v9];
}

- (void)_tearDownMetalView
{
  [(CLKUIMetalQuadView *)self->_quadView setDelegate:0];
  [(CLKUIMetalQuadView *)self->_quadView removeQuad:self->_compositeQuad];
  compositeQuad = self->_compositeQuad;
  self->_compositeQuad = 0;

  [(CLKUIMetalQuadView *)self->_quadView removeFromSuperview];
  quadView = self->_quadView;
  self->_quadView = 0;
}

- (void)_configureForEditMode:(int64_t)mode
{
  v6.receiver = self;
  v6.super_class = NTKPlumeriaFaceView;
  [(NTKPlumeriaFaceView *)&v6 _configureForEditMode:?];
  if (mode == 10)
  {
    v5 = 4;
  }

  else
  {
    if (mode)
    {
      return;
    }

    v5 = 0;
  }

  [(NTKPlumeriaQuad *)self->_compositeQuad setState:v5];
}

- (id)createFaceColorPalette
{
  v2 = [[NTKPlumeriaColorPalette alloc] initWithFaceClass:objc_opt_class()];

  return v2;
}

- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode
{
  v5.receiver = self;
  v5.super_class = NTKPlumeriaFaceView;
  [(NTKPlumeriaFaceView *)&v5 _configureForTransitionFraction:mode fromEditMode:editMode toEditMode:fraction];
}

- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot
{
  if (mode == 10)
  {
    v26 = v13;
    v27 = v10;
    v28 = v9;
    v29 = v8;
    v30 = v7;
    toOptionCopy = toOption;
    effectiveOptionName = [option effectiveOptionName];
    v20 = NTKPlumeriaSettingIndexFromColorwayName(effectiveOptionName);

    effectiveOptionName2 = [toOptionCopy effectiveOptionName];

    v22 = NTKPlumeriaSettingIndexFromColorwayName(effectiveOptionName2);
    if (v20 == v22)
    {
      v23 = 0;
    }

    else
    {
      v23 = 5;
    }

    [(NTKPlumeriaQuad *)self->_compositeQuad setState:v23, v14, v26, v27, v28, v29, v30, v11];
    compositeQuad = self->_compositeQuad;

    *&v24 = fraction;
    [(NTKPlumeriaQuad *)compositeQuad morphBetweenColorways:v20 index1:v22 index2:v24];
  }
}

- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  v12.receiver = self;
  v12.super_class = NTKPlumeriaFaceView;
  [(NTKPlumeriaFaceView *)&v12 _applyOption:optionCopy forCustomEditMode:mode slot:slot];
  if (mode == 10)
  {
    effectiveOptionName = [optionCopy effectiveOptionName];
    v10 = NTKPlumeriaSettingIndexFromColorwayName(effectiveOptionName);

    state = [(NTKPlumeriaQuad *)self->_compositeQuad state];
    [(NTKPlumeriaQuad *)self->_compositeQuad morphBetweenColorways:v10 index1:v10 index2:0.0];
    [(NTKPlumeriaQuad *)self->_compositeQuad setState:state];
  }
}

- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v11.receiver = self;
  v11.super_class = NTKPlumeriaFaceView;
  [(NTKPlumeriaFaceView *)&v11 _applyBreathingFraction:mode forCustomEditMode:slot slot:?];
  if (mode == 10)
  {
    NTKLargeElementScaleForBreathingFraction();
    v8 = v7;
    rootContainerView = [(NTKPlumeriaFaceView *)self rootContainerView];
    CGAffineTransformMakeScale(&v10, v8, v8);
    [rootContainerView setTransform:&v10];
  }
}

- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v15.receiver = self;
  v15.super_class = NTKPlumeriaFaceView;
  [(NTKPlumeriaFaceView *)&v15 _applyRubberBandingFraction:mode forCustomEditMode:slot slot:?];
  if (mode == 10)
  {
    NTKScaleForRubberBandingFraction();
    v8 = v7;
    NTKAlphaForRubberBandingFraction();
    v10 = v9;
    rootContainerView = [(NTKPlumeriaFaceView *)self rootContainerView];
    CGAffineTransformMakeScale(&v13, v8, v8);
    CGAffineTransformTranslate(&v14, &v13, 0.0, 1.0);
    [rootContainerView setTransform:&v14];

    rootContainerView2 = [(NTKPlumeriaFaceView *)self rootContainerView];
    [rootContainerView2 setAlpha:v10];
  }
}

@end