@interface NTKGreyhoundFaceView
+ (id)swatchForEditModeDependsOnOptions:(int64_t)a3 forDevice:(id)a4;
- (BOOL)_wantsStatusBarIconShadow;
- (NTKGreyhoundFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5;
- (double)_complicationAlphaForEditMode:(int64_t)a3;
- (double)_contentImageViewAlphaForEditMode:(int64_t)a3;
- (double)_contentsScaleForDensity:(unint64_t)a3 statusBar:(BOOL)a4;
- (double)_timeAlphaForEditMode:(int64_t)a3;
- (id)_complicationColorForEditMode:(int64_t)a3;
- (id)_complicationFontForTypeface:(unint64_t)a3;
- (id)_complicationFontForTypeface:(unint64_t)a3 complicationType:(unint64_t)a4;
- (id)_dialComplicationView;
- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5;
- (id)createFaceColorPalette;
- (void)_applyBreathingAndRubberbandingScale;
- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyRubberbandingAlpha;
- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7;
- (void)_cleanupComplicationTransition;
- (void)_configureComplicationView:(id)a3 forSlot:(id)a4;
- (void)_configureForEditMode:(int64_t)a3;
- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5;
- (void)_configureTimeView:(id)a3;
- (void)_loadContentViews;
- (void)_loadCurrentComplicationFont;
- (void)_loadSnapshotContentViews;
- (void)_unloadContentViews;
- (void)_unloadSnapshotContentViews;
- (void)_updateComplicationCenterOffsetForStyle:(unint64_t)a3;
- (void)_updateContentViewColorsWithPalette:(id)a3;
- (void)_updateDialComplicationWithFont:(id)a3;
- (void)_updateDialComplicationWithTextColor:(id)a3;
- (void)layoutSubviews;
@end

@implementation NTKGreyhoundFaceView

- (NTKGreyhoundFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5
{
  v8.receiver = self;
  v8.super_class = NTKGreyhoundFaceView;
  v5 = [(NTKGreyhoundFaceView *)&v8 initWithFaceStyle:a3 forDevice:a4 clientIdentifier:a5];
  if (v5)
  {
    v6 = objc_alloc_init(NTKSimpleTextFaceViewComplicationFactory);
    [v6 setFaceView:v5];
    [(NTKGreyhoundFaceView *)v5 setComplicationFactory:v6];
  }

  return v5;
}

- (void)_configureTimeView:(id)a3
{
  v6.receiver = self;
  v6.super_class = NTKGreyhoundFaceView;
  v3 = a3;
  [(NTKGreyhoundFaceView *)&v6 _configureTimeView:v3];
  v4 = [UIColor blackColor:v6.receiver];
  v5 = [v3 secondHandView];

  [v5 setHandDotColor:v4];
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
  v6 = [(NTKGreyhoundFaceView *)self contentView];
  [v6 bounds];
  [(NTKGreyhoundContentView *)greyhoundContentView ntk_setBoundsAndPositionFromFrame:?];
}

- (void)_loadContentViews
{
  if (!self->_backgroundView)
  {
    v3 = objc_opt_new();
    backgroundView = self->_backgroundView;
    self->_backgroundView = v3;

    v5 = [(NTKGreyhoundFaceView *)self contentView];
    [v5 addSubview:self->_backgroundView];
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
    v9 = [(NTKGreyhoundFaceView *)self contentView];
    [v9 bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v18 = [(NTKGreyhoundFaceView *)self device];
    style = self->_style;
    density = self->_density;
    typeface = self->_typeface;
    v22 = [(NTKGreyhoundFaceView *)self palette];
    v23 = [(NTKGreyhoundContentView *)v8 initWithFrame:v18 device:style style:density density:typeface typeface:v22 colorPalette:v11, v13, v15, v17];
    greyhoundContentView = self->_greyhoundContentView;
    self->_greyhoundContentView = v23;

    [(UIView *)self->_contentContainerView addSubview:self->_greyhoundContentView];
    sx = 0.0;
    memset(v43, 0, sizeof(v43));
    v25 = [(NTKGreyhoundFaceView *)self device];
    sub_C514(v25, v43);

    CGAffineTransformMakeScale(&v42, sx, sx);
    v26 = self->_greyhoundContentView;
    v41 = v42;
    [(NTKGreyhoundContentView *)v26 setTransform:&v41];
  }

  if (!self->_cornerView)
  {
    v27 = [NTKRoundedCornerOverlayView alloc];
    v28 = [(NTKGreyhoundFaceView *)self contentView];
    [v28 bounds];
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v37 = [(NTKGreyhoundFaceView *)self device];
    v38 = [v27 initWithFrame:v37 forDeviceCornerRadius:{v30, v32, v34, v36}];
    cornerView = self->_cornerView;
    self->_cornerView = v38;

    v40 = [(NTKGreyhoundFaceView *)self contentView];
    [v40 addSubview:self->_cornerView];
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

- (void)_updateContentViewColorsWithPalette:(id)a3
{
  greyhoundContentView = self->_greyhoundContentView;
  v5 = a3;
  [(NTKGreyhoundContentView *)greyhoundContentView setColorPalette:v5];
  v6 = [v5 background];
  [(UIView *)self->_backgroundView setBackgroundColor:v6];

  v7 = [(NTKGreyhoundFaceView *)self timeView];
  v8 = [v5 clockHands];
  v9 = [v5 clockHandsInlay];
  [v7 applyHourMinuteHandsStrokeColor:v8 fillColor:v9];

  v10 = [(NTKGreyhoundFaceView *)self timeView];
  v11 = [v5 secondHand];
  [v10 applySecondHandColor:v11];

  v12 = [v5 digit];

  [(NTKGreyhoundFaceView *)self _updateDialComplicationWithTextColor:v12];
}

- (void)_configureComplicationView:(id)a3 forSlot:(id)a4
{
  v6 = a3;
  v14.receiver = self;
  v14.super_class = NTKGreyhoundFaceView;
  [(NTKGreyhoundFaceView *)&v14 _configureComplicationView:v6 forSlot:a4];
  v7 = [(NTKGreyhoundFaceView *)self optionForCustomEditMode:13 slot:0];
  v8 = [v7 typeface];

  v9 = [(NTKGreyhoundFaceView *)self _complicationColorForEditMode:[(NTKGreyhoundFaceView *)self editing]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v6;
    v11 = [v10 label];
    [v11 setTextColor:v9];

    v12 = [v10 complicationType];
LABEL_5:
    v13 = [(NTKGreyhoundFaceView *)self _complicationFontForTypeface:v8 complicationType:v12];
    [v6 setFont:v13];

    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 setTextColor:v9];
    v12 = &stru_20 + 13;
    goto LABEL_5;
  }

LABEL_6:
}

- (id)_dialComplicationView
{
  v2 = [(NTKGreyhoundFaceView *)self normalComplicationDisplayWrapperForSlot:NTKComplicationSlotSubdialTop];
  v3 = [v2 display];

  return v3;
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
    v3 = [(NTKGreyhoundFaceView *)self dialComplicationContainerView];
    [v3 setAlpha:1.0];

    v4 = [(NTKGreyhoundFaceView *)self dialComplicationContainerView];
    v5 = *&CGAffineTransformIdentity.c;
    v6[0] = *&CGAffineTransformIdentity.a;
    v6[1] = v5;
    v6[2] = *&CGAffineTransformIdentity.tx;
    [v4 setTransform:v6];
  }
}

- (void)_updateDialComplicationWithFont:(id)a3
{
  v5 = a3;
  v4 = [(NTKGreyhoundFaceView *)self _dialComplicationView];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    [v4 setFont:v5];
  }
}

- (void)_updateDialComplicationWithTextColor:(id)a3
{
  v6 = a3;
  v4 = [(NTKGreyhoundFaceView *)self _dialComplicationView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 label];
    [v5 setTextColor:v6];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v4 setTextColor:v6];
    }
  }
}

- (id)_complicationFontForTypeface:(unint64_t)a3
{
  v5 = [(NTKGreyhoundFaceView *)self _dialComplicationView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 complicationType];
  }

  else
  {
    v6 = &stru_20 + 13;
  }

  v7 = [(NTKGreyhoundFaceView *)self _complicationFontForTypeface:a3 complicationType:v6];

  return v7;
}

- (id)_complicationFontForTypeface:(unint64_t)a3 complicationType:(unint64_t)a4
{
  v15 = 0;
  v13 = 0u;
  memset(v14, 0, sizeof(v14));
  v7 = [(NTKGreyhoundFaceView *)self device];
  sub_C514(v7, &v13);

  if (a4 == 3)
  {
    v8 = v14;
    v9 = 1;
  }

  else
  {
    if (a4 == 45 || a4 == 4)
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

  return [(NTKGreyhoundFaceView *)self _complicationFontForTypeface:a3 fontSize:v9 fontWeight:v10 useNumeralsFont:v11];
}

- (void)_updateComplicationCenterOffsetForStyle:(unint64_t)a3
{
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  memset(v9, 0, sizeof(v9));
  v5 = [(NTKGreyhoundFaceView *)self device];
  sub_C514(v5, v9);

  v6 = v10 + 1;
  if (a3 != 4)
  {
    v6 = v10;
  }

  v7 = *v6;
  v8 = [(NTKGreyhoundFaceView *)self complicationFactory];
  [v8 verticalCenterOffset];
  if ((CLKFloatEqualsFloat() & 1) == 0)
  {
    [v8 setVerticalCenterOffset:v7];
    [(NTKGreyhoundFaceView *)self invalidateComplicationLayout];
    [(NTKGreyhoundFaceView *)self layoutIfNeeded];
    [(NTKGreyhoundFaceView *)self layoutComplicationViews];
  }
}

- (BOOL)_wantsStatusBarIconShadow
{
  v2 = [(NTKGreyhoundFaceView *)self palette];
  v3 = [v2 isBlackBackground];

  return v3 ^ 1;
}

- (double)_contentsScaleForDensity:(unint64_t)a3 statusBar:(BOOL)a4
{
  v4 = a4;
  v12 = 0.0;
  v6 = [(NTKGreyhoundFaceView *)self device:a3];
  sub_C514(v6, &v10);

  v7 = 1.0;
  if (v4)
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

- (void)_configureForEditMode:(int64_t)a3
{
  v16.receiver = self;
  v16.super_class = NTKGreyhoundFaceView;
  [(NTKGreyhoundFaceView *)&v16 _configureForEditMode:?];
  v5 = [(NTKGreyhoundFaceView *)self palette];
  [(NTKGreyhoundFaceView *)self _updateContentViewColorsWithPalette:v5];

  [(NTKGreyhoundFaceView *)self _loadCurrentComplicationFont];
  v6 = [(NTKGreyhoundFaceView *)self _complicationColorForEditMode:a3];
  [(NTKGreyhoundFaceView *)self _updateDialComplicationWithTextColor:v6];

  [(NTKGreyhoundFaceView *)self _timeAlphaForEditMode:a3];
  v8 = v7;
  v9 = [(NTKGreyhoundFaceView *)self timeView];
  [v9 setAlpha:v8];

  [(NTKGreyhoundFaceView *)self _complicationAlphaForEditMode:a3];
  v11 = v10;
  v12 = [(NTKGreyhoundFaceView *)self complicationContainerView];
  [v12 setAlpha:v11];

  [(NTKGreyhoundFaceView *)self _contentImageViewAlphaForEditMode:a3];
  v14 = v13;
  v15 = [(NTKGreyhoundFaceView *)self contentView];
  [v15 setAlpha:v14];
}

- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5
{
  v20.receiver = self;
  v20.super_class = NTKGreyhoundFaceView;
  [NTKGreyhoundFaceView _configureForTransitionFraction:"_configureForTransitionFraction:fromEditMode:toEditMode:" fromEditMode:? toEditMode:?];
  [(NTKGreyhoundFaceView *)self _timeAlphaForEditMode:a4];
  [(NTKGreyhoundFaceView *)self _timeAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  v9 = v8;
  v10 = [(NTKGreyhoundFaceView *)self timeView];
  [v10 setAlpha:v9];

  [(NTKGreyhoundFaceView *)self _complicationAlphaForEditMode:a4];
  [(NTKGreyhoundFaceView *)self _complicationAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  v12 = v11;
  v13 = [(NTKGreyhoundFaceView *)self complicationContainerView];
  [v13 setAlpha:v12];

  [(NTKGreyhoundFaceView *)self _contentImageViewAlphaForEditMode:a4];
  [(NTKGreyhoundFaceView *)self _contentImageViewAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  v15 = v14;
  v16 = [(NTKGreyhoundFaceView *)self contentView];
  [v16 setAlpha:v15];

  if (self->_density == 1)
  {
    v17 = [(NTKGreyhoundFaceView *)self _complicationColorForEditMode:a4];
    v18 = [(NTKGreyhoundFaceView *)self _complicationColorForEditMode:a5];
    v19 = NTKInterpolateBetweenColors();
    [(NTKGreyhoundFaceView *)self _updateDialComplicationWithTextColor:v19];
  }
}

- (double)_timeAlphaForEditMode:(int64_t)a3
{
  result = NTKEditModeDimmedAlpha;
  if (!a3)
  {
    return 1.0;
  }

  return result;
}

- (double)_complicationAlphaForEditMode:(int64_t)a3
{
  result = 1.0;
  if (a3 && a3 != 11)
  {
    if (self->_density)
    {
      result = NTKEditModeDimmedAlpha;
      if (a3 != 15)
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

- (double)_contentImageViewAlphaForEditMode:(int64_t)a3
{
  result = NTKEditModeDimmedAlpha;
  if (a3 != 1)
  {
    return 1.0;
  }

  return result;
}

- (id)_complicationColorForEditMode:(int64_t)a3
{
  if (a3 == 1)
  {
    v3 = [UIColor colorWithWhite:0.95 alpha:1.0];
  }

  else
  {
    v4 = [(NTKGreyhoundFaceView *)self palette];
    v3 = [v4 digit];
  }

  return v3;
}

- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v8 = a3;
  v14.receiver = self;
  v14.super_class = NTKGreyhoundFaceView;
  [(NTKGreyhoundFaceView *)&v14 _applyOption:v8 forCustomEditMode:a4 slot:a5];
  if (a4 > 12)
  {
    if (a4 == 13)
    {
      v13 = [v8 typeface];
      self->_typeface = v13;
      [(NTKGreyhoundContentView *)self->_greyhoundContentView setTypeface:v13];
      [(NTKGreyhoundFaceView *)self _loadCurrentComplicationFont];
    }

    else if (a4 == 15)
    {
      v10 = [v8 style];
      self->_style = v10;
      [(NTKGreyhoundContentView *)self->_greyhoundContentView setStyle:v10];
      [(NTKGreyhoundFaceView *)self _updateComplicationCenterOffsetForStyle:self->_style];
    }
  }

  else if (a4 == 10)
  {
    v11 = [(NTKGreyhoundFaceView *)self palette];
    [(NTKGreyhoundFaceView *)self _updateContentViewColorsWithPalette:v11];

    v12 = [(NTKGreyhoundFaceView *)self delegate];
    [v12 faceViewDidChangeWantsStatusBarIconShadow];
  }

  else if (a4 == 11)
  {
    v9 = [v8 density];
    self->_density = v9;
    [(NTKGreyhoundContentView *)self->_greyhoundContentView setDensity:v9];
  }
}

- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7
{
  v12 = a4;
  v13 = a5;
  v51.receiver = self;
  v51.super_class = NTKGreyhoundFaceView;
  [(NTKGreyhoundFaceView *)&v51 _applyTransitionFraction:v12 fromOption:v13 toOption:a6 forCustomEditMode:a7 slot:a3];
  if (a6 <= 12)
  {
    if (a6 != 10)
    {
      if (a6 == 11)
      {
        v14 = [v12 density];
        v15 = [v13 density];
        if (v14 != v15)
        {
          v16 = v15;
          if (a3 >= 0.5)
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
            v20 = v14;
          }

          [(NTKGreyhoundFaceView *)self _contentsScaleForDensity:v14 statusBar:0];
          [(NTKGreyhoundFaceView *)self _contentsScaleForDensity:v16 statusBar:0];
          CLKInterpolateBetweenFloatsClipped();
          CLKMapFractionIntoRange();
          memset(&v50, 0, sizeof(v50));
          CGAffineTransformMakeScale(&v50, v34, v34);
          [(NTKGreyhoundContentView *)self->_greyhoundContentView setDensity:v20];
          [(NTKGreyhoundContentView *)self->_greyhoundContentView setAlpha:v19];
          v49 = v50;
          [(NTKGreyhoundContentView *)self->_greyhoundContentView setTransform:&v49];
          v35 = [(NTKGreyhoundFaceView *)self dialComplicationContainerView];
          [v35 setAlpha:v17];

          v48 = v50;
          v36 = [(NTKGreyhoundFaceView *)self dialComplicationContainerView];
          v37 = v36;
          *&v49.a = *&v48.a;
          *&v49.c = *&v48.c;
          v38 = *&v48.tx;
          goto LABEL_25;
        }
      }

      goto LABEL_26;
    }

    v26 = [(NTKGreyhoundFaceView *)self interpolatedColorPalette];
    v27 = [v26 fromPalette];
    v28 = [v26 toPalette];
    if (([v27 isEqual:v28] & 1) == 0)
    {
      [(NTKGreyhoundFaceView *)self _updateContentViewColorsWithPalette:v26];
    }

LABEL_15:
    goto LABEL_26;
  }

  if (a6 == 13)
  {
    v29 = [v12 typeface];
    v30 = [v13 typeface];
    if (v29 == v30)
    {
      goto LABEL_26;
    }

    if (a3 >= 0.5)
    {
      v41 = v30;
      CLKMapFractionIntoRange();
      v32 = v42;
      v29 = v41;
    }

    else
    {
      CLKMapFractionIntoRange();
      v32 = v31;
    }

    v26 = [(NTKGreyhoundFaceView *)self _complicationFontForTypeface:v29];
    [(NTKGreyhoundFaceView *)self _contentsScaleForDensity:self->_density statusBar:0];
    CLKMapFractionIntoRange();
    memset(&v50, 0, sizeof(v50));
    CGAffineTransformMakeScale(&v50, v43, v43);
    [(NTKGreyhoundFaceView *)self _updateDialComplicationWithFont:v26];
    [(NTKGreyhoundContentView *)self->_greyhoundContentView setTypeface:v29];
    [(NTKGreyhoundContentView *)self->_greyhoundContentView setAlpha:v32];
    v49 = v50;
    [(NTKGreyhoundContentView *)self->_greyhoundContentView setTransform:&v49];
    if (self->_density == 1)
    {
      v44 = [(NTKGreyhoundFaceView *)self dialComplicationContainerView];
      [v44 setAlpha:v32];

      v47 = v50;
      v45 = [(NTKGreyhoundFaceView *)self dialComplicationContainerView];
      v49 = v47;
      [v45 setTransform:&v49];
    }

    goto LABEL_15;
  }

  if (a6 == 15)
  {
    v21 = [v12 style];
    v22 = [v13 style];
    if (v21 != v22)
    {
      v23 = v22;
      CLKMapFractionIntoRange();
      if (a3 >= 0.5)
      {
        v25 = v24;
        v21 = v23;
      }

      else
      {
        v25 = v24;
      }

      [(NTKGreyhoundFaceView *)self _contentsScaleForDensity:self->_density statusBar:0];
      CLKMapFractionIntoRange();
      memset(&v50, 0, sizeof(v50));
      CGAffineTransformMakeScale(&v50, v39, v39);
      [(NTKGreyhoundContentView *)self->_greyhoundContentView setStyle:v21];
      [(NTKGreyhoundContentView *)self->_greyhoundContentView setAlpha:v25];
      v49 = v50;
      [(NTKGreyhoundContentView *)self->_greyhoundContentView setTransform:&v49];
      [(NTKGreyhoundFaceView *)self _updateComplicationCenterOffsetForStyle:v21];
      if (v23 == &dword_4 && self->_density == 1)
      {
        v40 = [(NTKGreyhoundFaceView *)self dialComplicationContainerView];
        [v40 setAlpha:v25];

        v46 = v50;
        v36 = [(NTKGreyhoundFaceView *)self dialComplicationContainerView];
        v37 = v36;
        *&v49.a = *&v46.a;
        *&v49.c = *&v46.c;
        v38 = *&v46.tx;
LABEL_25:
        *&v49.tx = v38;
        [v36 setTransform:&v49];
      }
    }
  }

LABEL_26:
}

- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v8.receiver = self;
  v8.super_class = NTKGreyhoundFaceView;
  [(NTKGreyhoundFaceView *)&v8 _applyBreathingFraction:a4 forCustomEditMode:a5 slot:?];
  if (a4)
  {
    self->_breathingFraction = a3;
    [(NTKGreyhoundFaceView *)self _applyBreathingAndRubberbandingScale];
  }
}

- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v8.receiver = self;
  v8.super_class = NTKGreyhoundFaceView;
  [(NTKGreyhoundFaceView *)&v8 _applyRubberBandingFraction:a4 forCustomEditMode:a5 slot:?];
  if (a4)
  {
    self->_rubberbandingFraction = a3;
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
  v8 = [(NTKGreyhoundFaceView *)self contentView];
  v11 = v12;
  [v8 setTransform:&v11];

  v9 = [(NTKGreyhoundFaceView *)self timeView];
  v11 = v12;
  [v9 setTransform:&v11];

  v10 = [(NTKGreyhoundFaceView *)self complicationContainerView];
  v11 = v12;
  [v10 setTransform:&v11];
}

- (void)_applyRubberbandingAlpha
{
  rubberbandingFraction = self->_rubberbandingFraction;
  NTKAlphaForRubberBandingFraction();

  [(NTKGreyhoundFaceView *)self setAlpha:?];
}

+ (id)swatchForEditModeDependsOnOptions:(int64_t)a3 forDevice:(id)a4
{
  if ((a3 - 11) > 4)
  {
    return 0;
  }

  else
  {
    return (&off_146C0)[a3 - 11];
  }
}

- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (a4 > 0xF || ((1 << a4) & 0xA800) == 0)
  {
    v30.receiver = self;
    v30.super_class = NTKGreyhoundFaceView;
    v17 = [(NTKGreyhoundFaceView *)&v30 _swatchImageForEditOption:v8 mode:a4 withSelectedOptions:v9];
    goto LABEL_16;
  }

  v11 = [v9 objectForKeyedSubscript:&off_15B70];
  v12 = [v10 objectForKeyedSubscript:&off_15B28];
  v13 = [v10 objectForKeyedSubscript:&off_15B40];
  v14 = [v10 objectForKeyedSubscript:&off_15B58];
  if (a4 == 11)
  {
    v15 = v11;
    v16 = v12;
    v11 = v8;
  }

  else if (a4 == 15)
  {
    v15 = v13;
    v13 = v8;
    v16 = v12;
  }

  else
  {
    v15 = v12;
    v16 = v8;
    if (a4 != 13)
    {
      goto LABEL_11;
    }
  }

  v18 = v8;

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
    v23 = [(NTKGreyhoundFaceView *)self device];
    v24 = [(NTKGreyhoundFaceView *)v22 initWithFaceStyle:44 forDevice:v23 clientIdentifier:0];

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
    v28 = [(NTKGreyhoundFaceView *)v24 layer];
    [v28 renderInContext:UIGraphicsGetCurrentContext()];

    v17 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    [qword_1B708 setObject:v17 forKey:v21];
  }

LABEL_16:

  return v17;
}

@end