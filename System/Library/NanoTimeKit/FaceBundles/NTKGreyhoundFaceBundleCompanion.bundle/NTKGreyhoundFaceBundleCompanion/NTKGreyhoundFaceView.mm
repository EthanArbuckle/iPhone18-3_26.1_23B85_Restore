@interface NTKGreyhoundFaceView
+ (id)swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device;
- (BOOL)_wantsStatusBarIconShadow;
- (NTKGreyhoundFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier;
- (double)_complicationAlphaForEditMode:(int64_t)mode;
- (double)_contentImageViewAlphaForEditMode:(int64_t)mode;
- (double)_contentsScaleForDensity:(unint64_t)density statusBar:(BOOL)bar;
- (double)_timeAlphaForEditMode:(int64_t)mode;
- (id)_complicationColorForEditMode:(int64_t)mode;
- (id)_complicationFontForTypeface:(unint64_t)typeface;
- (id)_complicationFontForTypeface:(unint64_t)typeface complicationType:(unint64_t)type;
- (id)_dialComplicationView;
- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options;
- (id)createFaceColorPalette;
- (void)_applyBreathingAndRubberbandingScale;
- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyRubberbandingAlpha;
- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_cleanupComplicationTransition;
- (void)_configureComplicationView:(id)view forSlot:(id)slot;
- (void)_configureForEditMode:(int64_t)mode;
- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode;
- (void)_configureTimeView:(id)view;
- (void)_loadContentViews;
- (void)_loadCurrentComplicationFont;
- (void)_loadSnapshotContentViews;
- (void)_unloadContentViews;
- (void)_unloadSnapshotContentViews;
- (void)_updateComplicationCenterOffsetForStyle:(unint64_t)style;
- (void)_updateContentViewColorsWithPalette:(id)palette;
- (void)_updateDialComplicationWithFont:(id)font;
- (void)_updateDialComplicationWithTextColor:(id)color;
- (void)layoutSubviews;
@end

@implementation NTKGreyhoundFaceView

- (NTKGreyhoundFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = NTKGreyhoundFaceView;
  v5 = [(NTKGreyhoundFaceView *)&v8 initWithFaceStyle:style forDevice:device clientIdentifier:identifier];
  if (v5)
  {
    v6 = objc_alloc_init(NTKSimpleTextFaceViewComplicationFactory);
    [v6 setFaceView:v5];
    [(NTKGreyhoundFaceView *)v5 setComplicationFactory:v6];
  }

  return v5;
}

- (void)_configureTimeView:(id)view
{
  v6.receiver = self;
  v6.super_class = NTKGreyhoundFaceView;
  viewCopy = view;
  [(NTKGreyhoundFaceView *)&v6 _configureTimeView:viewCopy];
  v4 = [UIColor blackColor:v6.receiver];
  secondHandView = [viewCopy secondHandView];

  [secondHandView setHandDotColor:v4];
}

- (void)_loadSnapshotContentViews
{
  v3.receiver = self;
  v3.super_class = NTKGreyhoundFaceView;
  [(NTKGreyhoundFaceView *)&v3 _loadSnapshotContentViews];
  [(NTKGreyhoundFaceView *)self _loadContentViews];
}

- (void)_unloadSnapshotContentViews
{
  v3.receiver = self;
  v3.super_class = NTKGreyhoundFaceView;
  [(NTKGreyhoundFaceView *)&v3 _unloadSnapshotContentViews];
  [(NTKGreyhoundFaceView *)self _unloadContentViews];
}

- (id)createFaceColorPalette
{
  v2 = objc_alloc_init(NTKCaliforniaColorPalette);

  return v2;
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = NTKGreyhoundFaceView;
  [(NTKGreyhoundFaceView *)&v7 layoutSubviews];
  backgroundView = self->_backgroundView;
  [(NTKGreyhoundFaceView *)self bounds];
  [(UIView *)backgroundView ntk_setBoundsAndPositionFromFrame:?];
  contentContainerView = self->_contentContainerView;
  [(NTKGreyhoundFaceView *)self bounds];
  [(UIView *)contentContainerView ntk_setBoundsAndPositionFromFrame:?];
  greyhoundContentView = self->_greyhoundContentView;
  contentView = [(NTKGreyhoundFaceView *)self contentView];
  [contentView bounds];
  [(NTKGreyhoundContentView *)greyhoundContentView ntk_setBoundsAndPositionFromFrame:?];
}

- (void)_loadContentViews
{
  if (!self->_backgroundView)
  {
    v3 = objc_opt_new();
    backgroundView = self->_backgroundView;
    self->_backgroundView = v3;

    contentView = [(NTKGreyhoundFaceView *)self contentView];
    [contentView addSubview:self->_backgroundView];
  }

  if (!self->_contentContainerView)
  {
    v6 = objc_opt_new();
    contentContainerView = self->_contentContainerView;
    self->_contentContainerView = v6;

    [(UIView *)self->_backgroundView addSubview:self->_contentContainerView];
  }

  if (!self->_greyhoundContentView)
  {
    v8 = [NTKGreyhoundContentView alloc];
    contentView2 = [(NTKGreyhoundFaceView *)self contentView];
    [contentView2 bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    device = [(NTKGreyhoundFaceView *)self device];
    style = self->_style;
    density = self->_density;
    typeface = self->_typeface;
    palette = [(NTKGreyhoundFaceView *)self palette];
    v23 = [(NTKGreyhoundContentView *)v8 initWithFrame:device device:style style:density density:typeface typeface:palette colorPalette:v11, v13, v15, v17];
    greyhoundContentView = self->_greyhoundContentView;
    self->_greyhoundContentView = v23;

    [(UIView *)self->_contentContainerView addSubview:self->_greyhoundContentView];
    sx = 0.0;
    memset(v43, 0, sizeof(v43));
    device2 = [(NTKGreyhoundFaceView *)self device];
    sub_C514(device2, v43);

    CGAffineTransformMakeScale(&v42, sx, sx);
    v26 = self->_greyhoundContentView;
    v41 = v42;
    [(NTKGreyhoundContentView *)v26 setTransform:&v41];
  }

  if (!self->_cornerView)
  {
    v27 = [NTKRoundedCornerOverlayView alloc];
    contentView3 = [(NTKGreyhoundFaceView *)self contentView];
    [contentView3 bounds];
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
    device3 = [(NTKGreyhoundFaceView *)self device];
    v38 = [v27 initWithFrame:device3 forDeviceCornerRadius:{v30, v32, v34, v36}];
    cornerView = self->_cornerView;
    self->_cornerView = v38;

    contentView4 = [(NTKGreyhoundFaceView *)self contentView];
    [contentView4 addSubview:self->_cornerView];
  }
}

- (void)_unloadContentViews
{
  [(NTKGreyhoundContentView *)self->_greyhoundContentView removeFromSuperview];
  greyhoundContentView = self->_greyhoundContentView;
  self->_greyhoundContentView = 0;

  [(UIView *)self->_contentContainerView removeFromSuperview];
  contentContainerView = self->_contentContainerView;
  self->_contentContainerView = 0;

  [(UIView *)self->_backgroundView removeFromSuperview];
  backgroundView = self->_backgroundView;
  self->_backgroundView = 0;

  [(NTKRoundedCornerOverlayView *)self->_cornerView removeFromSuperview];
  cornerView = self->_cornerView;
  self->_cornerView = 0;
}

- (void)_updateContentViewColorsWithPalette:(id)palette
{
  greyhoundContentView = self->_greyhoundContentView;
  paletteCopy = palette;
  [(NTKGreyhoundContentView *)greyhoundContentView setColorPalette:paletteCopy];
  background = [paletteCopy background];
  [(UIView *)self->_backgroundView setBackgroundColor:background];

  timeView = [(NTKGreyhoundFaceView *)self timeView];
  clockHands = [paletteCopy clockHands];
  clockHandsInlay = [paletteCopy clockHandsInlay];
  [timeView applyHourMinuteHandsStrokeColor:clockHands fillColor:clockHandsInlay];

  timeView2 = [(NTKGreyhoundFaceView *)self timeView];
  secondHand = [paletteCopy secondHand];
  [timeView2 applySecondHandColor:secondHand];

  digit = [paletteCopy digit];

  [(NTKGreyhoundFaceView *)self _updateDialComplicationWithTextColor:digit];
}

- (void)_configureComplicationView:(id)view forSlot:(id)slot
{
  viewCopy = view;
  v14.receiver = self;
  v14.super_class = NTKGreyhoundFaceView;
  [(NTKGreyhoundFaceView *)&v14 _configureComplicationView:viewCopy forSlot:slot];
  v7 = [(NTKGreyhoundFaceView *)self optionForCustomEditMode:13 slot:0];
  typeface = [v7 typeface];

  v9 = [(NTKGreyhoundFaceView *)self _complicationColorForEditMode:[(NTKGreyhoundFaceView *)self editing]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = viewCopy;
    label = [v10 label];
    [label setTextColor:v9];

    complicationType = [v10 complicationType];
LABEL_5:
    v13 = [(NTKGreyhoundFaceView *)self _complicationFontForTypeface:typeface complicationType:complicationType];
    [viewCopy setFont:v13];

    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [viewCopy setTextColor:v9];
    complicationType = &stru_20 + 13;
    goto LABEL_5;
  }

LABEL_6:
}

- (id)_dialComplicationView
{
  v2 = [(NTKGreyhoundFaceView *)self normalComplicationDisplayWrapperForSlot:NTKComplicationSlotSubdialTop];
  display = [v2 display];

  return display;
}

- (void)_loadCurrentComplicationFont
{
  v3 = [(NTKGreyhoundFaceView *)self _complicationFontForTypeface:self->_typeface];
  [(NTKGreyhoundFaceView *)self _updateDialComplicationWithFont:?];
  if (self->_density == 1)
  {
    [(NTKGreyhoundFaceView *)self _cleanupComplicationTransition];
  }
}

- (void)_cleanupComplicationTransition
{
  if ([(NTKGreyhoundFaceView *)self editing])
  {
    dialComplicationContainerView = [(NTKGreyhoundFaceView *)self dialComplicationContainerView];
    [dialComplicationContainerView setAlpha:1.0];

    dialComplicationContainerView2 = [(NTKGreyhoundFaceView *)self dialComplicationContainerView];
    v5 = *&CGAffineTransformIdentity.c;
    v6[0] = *&CGAffineTransformIdentity.a;
    v6[1] = v5;
    v6[2] = *&CGAffineTransformIdentity.tx;
    [dialComplicationContainerView2 setTransform:v6];
  }
}

- (void)_updateDialComplicationWithFont:(id)font
{
  fontCopy = font;
  _dialComplicationView = [(NTKGreyhoundFaceView *)self _dialComplicationView];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    [_dialComplicationView setFont:fontCopy];
  }
}

- (void)_updateDialComplicationWithTextColor:(id)color
{
  colorCopy = color;
  _dialComplicationView = [(NTKGreyhoundFaceView *)self _dialComplicationView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    label = [_dialComplicationView label];
    [label setTextColor:colorCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [_dialComplicationView setTextColor:colorCopy];
    }
  }
}

- (id)_complicationFontForTypeface:(unint64_t)typeface
{
  _dialComplicationView = [(NTKGreyhoundFaceView *)self _dialComplicationView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    complicationType = [_dialComplicationView complicationType];
  }

  else
  {
    complicationType = &stru_20 + 13;
  }

  v7 = [(NTKGreyhoundFaceView *)self _complicationFontForTypeface:typeface complicationType:complicationType];

  return v7;
}

- (id)_complicationFontForTypeface:(unint64_t)typeface complicationType:(unint64_t)type
{
  v15 = 0;
  v13 = 0u;
  memset(v14, 0, sizeof(v14));
  device = [(NTKGreyhoundFaceView *)self device];
  sub_C514(device, &v13);

  if (type == 3)
  {
    v8 = v14;
    v9 = 1;
  }

  else
  {
    if (type == 45 || type == 4)
    {
      v8 = v14 + 1;
      v9 = 1;
      v10 = *(&v13 + 1);
      goto LABEL_8;
    }

    v9 = 0;
    v8 = v14;
  }

  v10 = *&v13;
LABEL_8:
  v11 = *v8;

  return [(NTKGreyhoundFaceView *)self _complicationFontForTypeface:typeface fontSize:v9 fontWeight:v10 useNumeralsFont:v11];
}

- (void)_updateComplicationCenterOffsetForStyle:(unint64_t)style
{
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  memset(v9, 0, sizeof(v9));
  device = [(NTKGreyhoundFaceView *)self device];
  sub_C514(device, v9);

  v6 = v10 + 1;
  if (style != 4)
  {
    v6 = v10;
  }

  v7 = *v6;
  complicationFactory = [(NTKGreyhoundFaceView *)self complicationFactory];
  [complicationFactory verticalCenterOffset];
  if ((CLKFloatEqualsFloat() & 1) == 0)
  {
    [complicationFactory setVerticalCenterOffset:v7];
    [(NTKGreyhoundFaceView *)self invalidateComplicationLayout];
    [(NTKGreyhoundFaceView *)self layoutIfNeeded];
    [(NTKGreyhoundFaceView *)self layoutComplicationViews];
  }
}

- (BOOL)_wantsStatusBarIconShadow
{
  palette = [(NTKGreyhoundFaceView *)self palette];
  isBlackBackground = [palette isBlackBackground];

  return isBlackBackground ^ 1;
}

- (double)_contentsScaleForDensity:(unint64_t)density statusBar:(BOOL)bar
{
  barCopy = bar;
  v12 = 0.0;
  v6 = [(NTKGreyhoundFaceView *)self device:density];
  sub_C514(v6, &v10);

  v7 = 1.0;
  if (barCopy)
  {
    if (self->_density)
    {
      v8 = &v11;
    }

    else
    {
      v8 = &v11 + 1;
    }

    v7 = *v8;
  }

  return v7 * v12;
}

- (void)_configureForEditMode:(int64_t)mode
{
  v16.receiver = self;
  v16.super_class = NTKGreyhoundFaceView;
  [(NTKGreyhoundFaceView *)&v16 _configureForEditMode:?];
  palette = [(NTKGreyhoundFaceView *)self palette];
  [(NTKGreyhoundFaceView *)self _updateContentViewColorsWithPalette:palette];

  [(NTKGreyhoundFaceView *)self _loadCurrentComplicationFont];
  v6 = [(NTKGreyhoundFaceView *)self _complicationColorForEditMode:mode];
  [(NTKGreyhoundFaceView *)self _updateDialComplicationWithTextColor:v6];

  [(NTKGreyhoundFaceView *)self _timeAlphaForEditMode:mode];
  v8 = v7;
  timeView = [(NTKGreyhoundFaceView *)self timeView];
  [timeView setAlpha:v8];

  [(NTKGreyhoundFaceView *)self _complicationAlphaForEditMode:mode];
  v11 = v10;
  complicationContainerView = [(NTKGreyhoundFaceView *)self complicationContainerView];
  [complicationContainerView setAlpha:v11];

  [(NTKGreyhoundFaceView *)self _contentImageViewAlphaForEditMode:mode];
  v14 = v13;
  contentView = [(NTKGreyhoundFaceView *)self contentView];
  [contentView setAlpha:v14];
}

- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode
{
  v20.receiver = self;
  v20.super_class = NTKGreyhoundFaceView;
  [NTKGreyhoundFaceView _configureForTransitionFraction:"_configureForTransitionFraction:fromEditMode:toEditMode:" fromEditMode:? toEditMode:?];
  [(NTKGreyhoundFaceView *)self _timeAlphaForEditMode:mode];
  [(NTKGreyhoundFaceView *)self _timeAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  v9 = v8;
  timeView = [(NTKGreyhoundFaceView *)self timeView];
  [timeView setAlpha:v9];

  [(NTKGreyhoundFaceView *)self _complicationAlphaForEditMode:mode];
  [(NTKGreyhoundFaceView *)self _complicationAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  v12 = v11;
  complicationContainerView = [(NTKGreyhoundFaceView *)self complicationContainerView];
  [complicationContainerView setAlpha:v12];

  [(NTKGreyhoundFaceView *)self _contentImageViewAlphaForEditMode:mode];
  [(NTKGreyhoundFaceView *)self _contentImageViewAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  v15 = v14;
  contentView = [(NTKGreyhoundFaceView *)self contentView];
  [contentView setAlpha:v15];

  if (self->_density == 1)
  {
    v17 = [(NTKGreyhoundFaceView *)self _complicationColorForEditMode:mode];
    v18 = [(NTKGreyhoundFaceView *)self _complicationColorForEditMode:editMode];
    v19 = NTKInterpolateBetweenColors();
    [(NTKGreyhoundFaceView *)self _updateDialComplicationWithTextColor:v19];
  }
}

- (double)_timeAlphaForEditMode:(int64_t)mode
{
  result = NTKEditModeDimmedAlpha;
  if (!mode)
  {
    return 1.0;
  }

  return result;
}

- (double)_complicationAlphaForEditMode:(int64_t)mode
{
  result = 1.0;
  if (mode && mode != 11)
  {
    if (self->_density)
    {
      result = NTKEditModeDimmedAlpha;
      if (mode != 15)
      {
        return 1.0;
      }
    }

    else
    {
      return 0.0;
    }
  }

  return result;
}

- (double)_contentImageViewAlphaForEditMode:(int64_t)mode
{
  result = NTKEditModeDimmedAlpha;
  if (mode != 1)
  {
    return 1.0;
  }

  return result;
}

- (id)_complicationColorForEditMode:(int64_t)mode
{
  if (mode == 1)
  {
    digit = [UIColor colorWithWhite:0.95 alpha:1.0];
  }

  else
  {
    palette = [(NTKGreyhoundFaceView *)self palette];
    digit = [palette digit];
  }

  return digit;
}

- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  v14.receiver = self;
  v14.super_class = NTKGreyhoundFaceView;
  [(NTKGreyhoundFaceView *)&v14 _applyOption:optionCopy forCustomEditMode:mode slot:slot];
  if (mode > 12)
  {
    if (mode == 13)
    {
      typeface = [optionCopy typeface];
      self->_typeface = typeface;
      [(NTKGreyhoundContentView *)self->_greyhoundContentView setTypeface:typeface];
      [(NTKGreyhoundFaceView *)self _loadCurrentComplicationFont];
    }

    else if (mode == 15)
    {
      style = [optionCopy style];
      self->_style = style;
      [(NTKGreyhoundContentView *)self->_greyhoundContentView setStyle:style];
      [(NTKGreyhoundFaceView *)self _updateComplicationCenterOffsetForStyle:self->_style];
    }
  }

  else if (mode == 10)
  {
    palette = [(NTKGreyhoundFaceView *)self palette];
    [(NTKGreyhoundFaceView *)self _updateContentViewColorsWithPalette:palette];

    delegate = [(NTKGreyhoundFaceView *)self delegate];
    [delegate faceViewDidChangeWantsStatusBarIconShadow];
  }

  else if (mode == 11)
  {
    density = [optionCopy density];
    self->_density = density;
    [(NTKGreyhoundContentView *)self->_greyhoundContentView setDensity:density];
  }
}

- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  toOptionCopy = toOption;
  v51.receiver = self;
  v51.super_class = NTKGreyhoundFaceView;
  [(NTKGreyhoundFaceView *)&v51 _applyTransitionFraction:optionCopy fromOption:toOptionCopy toOption:mode forCustomEditMode:slot slot:fraction];
  if (mode <= 12)
  {
    if (mode != 10)
    {
      if (mode == 11)
      {
        density = [optionCopy density];
        density2 = [toOptionCopy density];
        if (density != density2)
        {
          v16 = density2;
          if (fraction >= 0.5)
          {
            CLKMapFractionIntoRange();
            v17 = v33;
            v19 = v33;
            v20 = v16;
          }

          else
          {
            v17 = 0.0;
            CLKMapFractionIntoRange();
            v19 = v18;
            v20 = density;
          }

          [(NTKGreyhoundFaceView *)self _contentsScaleForDensity:density statusBar:0];
          [(NTKGreyhoundFaceView *)self _contentsScaleForDensity:v16 statusBar:0];
          CLKInterpolateBetweenFloatsClipped();
          CLKMapFractionIntoRange();
          memset(&v50, 0, sizeof(v50));
          CGAffineTransformMakeScale(&v50, v34, v34);
          [(NTKGreyhoundContentView *)self->_greyhoundContentView setDensity:v20];
          [(NTKGreyhoundContentView *)self->_greyhoundContentView setAlpha:v19];
          v49 = v50;
          [(NTKGreyhoundContentView *)self->_greyhoundContentView setTransform:&v49];
          dialComplicationContainerView = [(NTKGreyhoundFaceView *)self dialComplicationContainerView];
          [dialComplicationContainerView setAlpha:v17];

          v48 = v50;
          dialComplicationContainerView2 = [(NTKGreyhoundFaceView *)self dialComplicationContainerView];
          v37 = dialComplicationContainerView2;
          *&v49.a = *&v48.a;
          *&v49.c = *&v48.c;
          v38 = *&v48.tx;
          goto LABEL_25;
        }
      }

      goto LABEL_26;
    }

    interpolatedColorPalette = [(NTKGreyhoundFaceView *)self interpolatedColorPalette];
    fromPalette = [interpolatedColorPalette fromPalette];
    toPalette = [interpolatedColorPalette toPalette];
    if (([fromPalette isEqual:toPalette] & 1) == 0)
    {
      [(NTKGreyhoundFaceView *)self _updateContentViewColorsWithPalette:interpolatedColorPalette];
    }

LABEL_15:
    goto LABEL_26;
  }

  if (mode == 13)
  {
    typeface = [optionCopy typeface];
    typeface2 = [toOptionCopy typeface];
    if (typeface == typeface2)
    {
      goto LABEL_26;
    }

    if (fraction >= 0.5)
    {
      v41 = typeface2;
      CLKMapFractionIntoRange();
      v32 = v42;
      typeface = v41;
    }

    else
    {
      CLKMapFractionIntoRange();
      v32 = v31;
    }

    interpolatedColorPalette = [(NTKGreyhoundFaceView *)self _complicationFontForTypeface:typeface];
    [(NTKGreyhoundFaceView *)self _contentsScaleForDensity:self->_density statusBar:0];
    CLKMapFractionIntoRange();
    memset(&v50, 0, sizeof(v50));
    CGAffineTransformMakeScale(&v50, v43, v43);
    [(NTKGreyhoundFaceView *)self _updateDialComplicationWithFont:interpolatedColorPalette];
    [(NTKGreyhoundContentView *)self->_greyhoundContentView setTypeface:typeface];
    [(NTKGreyhoundContentView *)self->_greyhoundContentView setAlpha:v32];
    v49 = v50;
    [(NTKGreyhoundContentView *)self->_greyhoundContentView setTransform:&v49];
    if (self->_density == 1)
    {
      dialComplicationContainerView3 = [(NTKGreyhoundFaceView *)self dialComplicationContainerView];
      [dialComplicationContainerView3 setAlpha:v32];

      v47 = v50;
      dialComplicationContainerView4 = [(NTKGreyhoundFaceView *)self dialComplicationContainerView];
      v49 = v47;
      [dialComplicationContainerView4 setTransform:&v49];
    }

    goto LABEL_15;
  }

  if (mode == 15)
  {
    style = [optionCopy style];
    style2 = [toOptionCopy style];
    if (style != style2)
    {
      v23 = style2;
      CLKMapFractionIntoRange();
      if (fraction >= 0.5)
      {
        v25 = v24;
        style = v23;
      }

      else
      {
        v25 = v24;
      }

      [(NTKGreyhoundFaceView *)self _contentsScaleForDensity:self->_density statusBar:0];
      CLKMapFractionIntoRange();
      memset(&v50, 0, sizeof(v50));
      CGAffineTransformMakeScale(&v50, v39, v39);
      [(NTKGreyhoundContentView *)self->_greyhoundContentView setStyle:style];
      [(NTKGreyhoundContentView *)self->_greyhoundContentView setAlpha:v25];
      v49 = v50;
      [(NTKGreyhoundContentView *)self->_greyhoundContentView setTransform:&v49];
      [(NTKGreyhoundFaceView *)self _updateComplicationCenterOffsetForStyle:style];
      if (v23 == &dword_4 && self->_density == 1)
      {
        dialComplicationContainerView5 = [(NTKGreyhoundFaceView *)self dialComplicationContainerView];
        [dialComplicationContainerView5 setAlpha:v25];

        v46 = v50;
        dialComplicationContainerView2 = [(NTKGreyhoundFaceView *)self dialComplicationContainerView];
        v37 = dialComplicationContainerView2;
        *&v49.a = *&v46.a;
        *&v49.c = *&v46.c;
        v38 = *&v46.tx;
LABEL_25:
        *&v49.tx = v38;
        [dialComplicationContainerView2 setTransform:&v49];
      }
    }
  }

LABEL_26:
}

- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v8.receiver = self;
  v8.super_class = NTKGreyhoundFaceView;
  [(NTKGreyhoundFaceView *)&v8 _applyBreathingFraction:mode forCustomEditMode:slot slot:?];
  if (mode)
  {
    self->_breathingFraction = fraction;
    [(NTKGreyhoundFaceView *)self _applyBreathingAndRubberbandingScale];
  }
}

- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v8.receiver = self;
  v8.super_class = NTKGreyhoundFaceView;
  [(NTKGreyhoundFaceView *)&v8 _applyRubberBandingFraction:mode forCustomEditMode:slot slot:?];
  if (mode)
  {
    self->_rubberbandingFraction = fraction;
    [(NTKGreyhoundFaceView *)self _applyBreathingAndRubberbandingScale];
    [(NTKGreyhoundFaceView *)self _applyRubberbandingAlpha];
  }
}

- (void)_applyBreathingAndRubberbandingScale
{
  breathingFraction = self->_breathingFraction;
  NTKLargeElementScaleForBreathingFraction();
  v5 = v4;
  rubberbandingFraction = self->_rubberbandingFraction;
  NTKScaleForRubberBandingFraction();
  memset(&v12, 0, sizeof(v12));
  CGAffineTransformMakeScale(&v12, v5 * v7, v5 * v7);
  contentView = [(NTKGreyhoundFaceView *)self contentView];
  v11 = v12;
  [contentView setTransform:&v11];

  timeView = [(NTKGreyhoundFaceView *)self timeView];
  v11 = v12;
  [timeView setTransform:&v11];

  complicationContainerView = [(NTKGreyhoundFaceView *)self complicationContainerView];
  v11 = v12;
  [complicationContainerView setTransform:&v11];
}

- (void)_applyRubberbandingAlpha
{
  rubberbandingFraction = self->_rubberbandingFraction;
  NTKAlphaForRubberBandingFraction();

  [(NTKGreyhoundFaceView *)self setAlpha:?];
}

+ (id)swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device
{
  if ((options - 11) > 4)
  {
    return 0;
  }

  else
  {
    return (&off_146C0)[options - 11];
  }
}

- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options
{
  optionCopy = option;
  optionsCopy = options;
  v10 = optionsCopy;
  if (mode > 0xF || ((1 << mode) & 0xA800) == 0)
  {
    v30.receiver = self;
    v30.super_class = NTKGreyhoundFaceView;
    v17 = [(NTKGreyhoundFaceView *)&v30 _swatchImageForEditOption:optionCopy mode:mode withSelectedOptions:optionsCopy];
    goto LABEL_16;
  }

  v11 = [optionsCopy objectForKeyedSubscript:&off_15B70];
  v12 = [v10 objectForKeyedSubscript:&off_15B28];
  v13 = [v10 objectForKeyedSubscript:&off_15B40];
  v14 = [v10 objectForKeyedSubscript:&off_15B58];
  if (mode == 11)
  {
    v15 = v11;
    v16 = v12;
    v11 = optionCopy;
  }

  else if (mode == 15)
  {
    v15 = v13;
    v13 = optionCopy;
    v16 = v12;
  }

  else
  {
    v15 = v12;
    v16 = optionCopy;
    if (mode != 13)
    {
      goto LABEL_11;
    }
  }

  v18 = optionCopy;

  v12 = v16;
LABEL_11:
  if (!qword_1B708)
  {
    v19 = objc_opt_new();
    v20 = qword_1B708;
    qword_1B708 = v19;
  }

  v21 = [NSString stringWithFormat:@"%@-%@-%@-%@", v11, v12, v13, v14];
  v17 = [qword_1B708 objectForKey:v21];
  if (!v17)
  {
    v22 = [NTKGreyhoundFaceView alloc];
    device = [(NTKGreyhoundFaceView *)self device];
    v24 = [(NTKGreyhoundFaceView *)v22 initWithFaceStyle:44 forDevice:device clientIdentifier:0];

    [(NTKGreyhoundFaceView *)self frame];
    [(NTKGreyhoundFaceView *)v24 setFrame:?];
    [(NTKGreyhoundFaceView *)v24 _loadSnapshotContentViews];
    [(NTKGreyhoundFaceView *)v24 setOption:v11 forCustomEditMode:11 slot:0];
    [(NTKGreyhoundFaceView *)v24 setOption:v12 forCustomEditMode:13 slot:0];
    [(NTKGreyhoundFaceView *)v24 setOption:v13 forCustomEditMode:15 slot:0];
    [(NTKGreyhoundFaceView *)v24 setOption:v14 forCustomEditMode:10 slot:0];
    v25 = NTKIdealizedDate();
    [(NTKGreyhoundFaceView *)v24 setOverrideDate:v25 duration:0.0];

    [(NTKGreyhoundFaceView *)self frame];
    [(NTKGreyhoundFaceView *)v24 setFrame:?];
    [(NTKGreyhoundFaceView *)v24 bounds];
    v32.width = v26;
    v32.height = v27;
    UIGraphicsBeginImageContextWithOptions(v32, 0, 0.0);
    layer = [(NTKGreyhoundFaceView *)v24 layer];
    [layer renderInContext:UIGraphicsGetCurrentContext()];

    v17 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    [qword_1B708 setObject:v17 forKey:v21];
  }

LABEL_16:

  return v17;
}

@end