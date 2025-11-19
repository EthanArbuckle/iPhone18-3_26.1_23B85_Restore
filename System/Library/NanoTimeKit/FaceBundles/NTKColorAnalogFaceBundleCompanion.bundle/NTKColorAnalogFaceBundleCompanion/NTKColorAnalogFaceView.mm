@interface NTKColorAnalogFaceView
+ (id)_swatchForEditModeDependsOnOptions:(int64_t)a3 forDevice:(id)a4;
- (CGRect)_frameForComplicationDisplayWrapper:(id)a3 inSlot:(id)a4;
- (CGRect)_monogramReferenceFrame;
- (CGRect)_monogramReferenceFrameForStyle:(unint64_t)a3;
- (NTKColorAnalogFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5;
- (UIEdgeInsets)_monogramKeylinePadding;
- (double)_edgeGapForState:(int64_t)a3;
- (double)_keylineCornerRadiusForComplicationSlot:(id)a3;
- (double)_keylinePaddingForState:(int64_t)a3;
- (double)_lisaGapForState:(int64_t)a3;
- (id)_colorComplicationViewForSlot:(id)a3;
- (id)_complicationContainerViewForSlot:(id)a3;
- (id)_keylineViewForComplicationSlot:(id)a3;
- (id)_newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5;
- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5;
- (int64_t)_complicationPickerStyleForSlot:(id)a3;
- (int64_t)_keylineStyleForComplicationSlot:(id)a3;
- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7;
- (void)_cleanupAfterTransitionToOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_configureComplicationView:(id)a3 forSlot:(id)a4;
- (void)_configureForEditMode:(int64_t)a3;
- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5;
- (void)_configureTimeView:(id)a3;
- (void)_enumerateColorComplicationSlotsWithBlock:(id)a3;
- (void)_fadeComplicationFraction:(double)a3 entry:(double)a4 exit:(double)a5 slot:(id)a6;
- (void)_loadSnapshotContentViews;
- (void)_unloadSnapshotContentViews;
- (void)_updateMonogramLayoutRule;
- (void)layoutSubviews;
@end

@implementation NTKColorAnalogFaceView

- (NTKColorAnalogFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5
{
  v12.receiver = self;
  v12.super_class = NTKColorAnalogFaceView;
  v5 = [(NTKColorAnalogFaceView *)&v12 initWithFaceStyle:a3 forDevice:a4 clientIdentifier:a5];
  if (v5)
  {
    v6 = [UIView alloc];
    [(NTKColorAnalogFaceView *)v5 bounds];
    v7 = [v6 initWithFrame:?];
    backgroundComplicationContainerView = v5->_backgroundComplicationContainerView;
    v5->_backgroundComplicationContainerView = v7;

    v9 = [(NTKColorAnalogFaceView *)v5 contentView];
    [v9 insertSubview:v5->_backgroundComplicationContainerView atIndex:0];

    size = CGRectNull.size;
    v5->_monogramOverrideFrame.origin = CGRectNull.origin;
    v5->_monogramOverrideFrame.size = size;
  }

  return v5;
}

- (void)_loadSnapshotContentViews
{
  v18.receiver = self;
  v18.super_class = NTKColorAnalogFaceView;
  [(NTKColorAnalogFaceView *)&v18 _loadSnapshotContentViews];
  v3 = [NTKColorAnalogBackgroundView alloc];
  [(NTKColorAnalogFaceView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(NTKColorAnalogFaceView *)self device];
  v13 = [(NTKColorAnalogBackgroundView *)v3 initWithFrame:v12 device:v5, v7, v9, v11];
  backgroundView = self->_backgroundView;
  self->_backgroundView = v13;

  v15 = [(NTKColorAnalogFaceView *)self contentView];
  [v15 addSubview:self->_backgroundView];

  v16 = [(NTKColorAnalogFaceView *)self contentView];
  v17 = +[UIColor blackColor];
  [v16 setBackgroundColor:v17];
}

- (void)_unloadSnapshotContentViews
{
  v6.receiver = self;
  v6.super_class = NTKColorAnalogFaceView;
  [(NTKColorAnalogFaceView *)&v6 _unloadSnapshotContentViews];
  [(NTKColorAnalogBackgroundView *)self->_backgroundView removeFromSuperview];
  backgroundView = self->_backgroundView;
  self->_backgroundView = 0;

  v4 = [(NTKColorAnalogFaceView *)self contentView];
  v5 = +[UIColor clearColor];
  [v4 setBackgroundColor:v5];
}

- (id)_complicationContainerViewForSlot:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:NTKComplicationSlotMonogram])
  {
    v8.receiver = self;
    v8.super_class = NTKColorAnalogFaceView;
    v5 = [(NTKColorAnalogFaceView *)&v8 _complicationContainerViewForSlot:v4];
  }

  else
  {
    v5 = self->_backgroundComplicationContainerView;
  }

  v6 = v5;

  return v6;
}

- (void)_configureTimeView:(id)a3
{
  v6.receiver = self;
  v6.super_class = NTKColorAnalogFaceView;
  v3 = a3;
  [(NTKColorAnalogFaceView *)&v6 _configureTimeView:v3];
  v4 = [v3 secondHandView];

  v5 = +[UIColor systemOrangeColor];
  [v4 setColor:v5];
}

- (id)_newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5
{
  v7 = NTKComplicationSlotMonogram;
  v8 = a3;
  LODWORD(a5) = [a5 isEqualToString:v7];
  v9 = [v8 complicationType];

  v10 = [NTKCircularComplicationView viewForComplicationType:v9];
  v11 = v10;
  v12 = &OBJC_IVAR___NTKColorAnalogFaceView__complicationForegroundColor;
  if (a5)
  {
    v12 = &OBJC_IVAR___NTKColorAnalogFaceView__monogramForegroundColor;
  }

  [v10 setForegroundColor:*&self->NTKAnalogFaceView_opaque[*v12]];
  [v11 setPlatterColor:self->_complicationPlatterColor];
  [v11 setUseRoundedFontDesign:1];
  return v11;
}

- (void)_configureComplicationView:(id)a3 forSlot:(id)a4
{
  v10 = a3;
  v6 = [a4 isEqualToString:NTKComplicationSlotMonogram];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = &OBJC_IVAR___NTKColorAnalogFaceView__complicationForegroundColor;
    if (v6)
    {
      v7 = &OBJC_IVAR___NTKColorAnalogFaceView__monogramForegroundColor;
    }

    v8 = *&self->NTKAnalogFaceView_opaque[*v7];
    v9 = v10;
    [v9 setForegroundColor:v8];
    [v9 setPlatterColor:self->_complicationPlatterColor];
    [v9 setUseRoundedFontDesign:1];
  }
}

- (CGRect)_frameForComplicationDisplayWrapper:(id)a3 inSlot:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 isEqualToString:NTKComplicationSlotMonogram] && !CGRectIsNull(self->_monogramOverrideFrame))
  {
    x = self->_monogramOverrideFrame.origin.x;
    y = self->_monogramOverrideFrame.origin.y;
    width = self->_monogramOverrideFrame.size.width;
    height = self->_monogramOverrideFrame.size.height;
  }

  else
  {
    v20.receiver = self;
    v20.super_class = NTKColorAnalogFaceView;
    [(NTKColorAnalogFaceView *)&v20 _frameForComplicationDisplayWrapper:v6 inSlot:v7];
    x = v8;
    y = v10;
    width = v12;
    height = v14;
  }

  v16 = x;
  v17 = y;
  v18 = width;
  v19 = height;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = NTKColorAnalogFaceView;
  [(NTKColorAnalogFaceView *)&v3 layoutSubviews];
  [(NTKColorAnalogFaceView *)self layoutComplicationViews];
}

- (id)_keylineViewForComplicationSlot:(id)a3
{
  v4 = NTKComplicationSlotMonogram;
  v5 = a3;
  if ([v5 isEqualToString:v4])
  {
    v6 = [(NTKColorAnalogFaceView *)self _defaultKeylineViewForComplicationSlot:v5];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = NTKColorAnalogFaceView;
    v6 = [(NTKColorAnalogFaceView *)&v9 _keylineViewForComplicationSlot:v5];
  }

  v7 = v6;

  return v7;
}

- (double)_edgeGapForState:(int64_t)a3
{
  if ((a3 - 2) >= 2)
  {
    if (a3 == 1)
    {
      v3 = [(NTKColorAnalogFaceView *)self device];
      NTKColorFaceViewEdgeGapEditing();
    }

    else
    {
      v3 = [(NTKColorAnalogFaceView *)self device];
      NTKColorFaceViewEdgeGapNormal();
    }
  }

  else
  {
    v3 = [(NTKColorAnalogFaceView *)self device];
    NTKColorFaceViewEdgeGapDeselected();
  }

  v5 = v4;

  return v5;
}

- (double)_keylinePaddingForState:(int64_t)a3
{
  v3 = 0.0;
  if ((a3 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    NTKKeylineWidth();
    v6 = v5;
    v7 = [(NTKColorAnalogFaceView *)self device];
    NTKColorFaceViewDeselectedKeylineInnerPadding();
    v3 = v6 + v8;
  }

  return v3;
}

- (double)_lisaGapForState:(int64_t)a3
{
  if ((a3 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    return 0.0;
  }

  v3 = [(NTKColorAnalogFaceView *)self device];
  NTKColorFaceViewLisaKeylineGap();
  v5 = v4;

  return v5;
}

- (UIEdgeInsets)_monogramKeylinePadding
{
  NTKKeylineWidth();
  v4 = v3;
  v5 = [(NTKColorAnalogFaceView *)self device];
  sub_755C(v5, v16);
  v6 = v4 + v17;

  NTKKeylineWidth();
  v8 = v7;
  v9 = [(NTKColorAnalogFaceView *)self device];
  sub_755C(v9, v15);
  v10 = v8 + v15[6];

  v11 = v6;
  v12 = v10;
  v13 = v6;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (CGRect)_monogramReferenceFrameForStyle:(unint64_t)a3
{
  v5 = [(NTKColorAnalogFaceView *)self device];
  v30 = 0;
  memset(v29, 0, sizeof(v29));
  v28 = 0u;
  sub_755C(v5, &v28);
  [(NTKColorAnalogFaceView *)self _monogramKeylinePadding];
  v8 = v6;
  v10 = v9;
  v11 = v7;
  v13 = v12;
  if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_7;
    }

    v14 = v29 + 1;
  }

  else
  {
    v14 = v29;
  }

  v15 = v7 + v6 + *v14 - *(&v28 + 1);
  [NTKAnalogUtilities dialSizeForDevice:v5];
  [(NTKColorAnalogFaceView *)self bounds];
LABEL_7:
  [(NTKColorAnalogFaceView *)self bounds];
  CLKRectCenteredXInRectForDevice();
  v17 = v10 + v16;
  v19 = v8 + v18;
  v21 = v20 - (v10 + v13);
  v23 = v22 - (v8 + v11);

  v24 = v17;
  v25 = v19;
  v26 = v21;
  v27 = v23;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (CGRect)_monogramReferenceFrame
{
  v3 = [(NTKColorAnalogFaceView *)self optionForCustomEditMode:15 slot:0];
  v4 = [v3 style];

  [(NTKColorAnalogFaceView *)self _monogramReferenceFrameForStyle:v4];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (a4 == 15)
  {
    v17 = [v8 style];
    self->_currentStyle = v17;
    [(NTKColorAnalogBackgroundView *)self->_backgroundView applyStyle:v17];
    [(NTKColorAnalogFaceView *)self _monogramReferenceFrameForStyle:self->_currentStyle];
    self->_monogramOverrideFrame.origin.x = v18;
    self->_monogramOverrideFrame.origin.y = v19;
    self->_monogramOverrideFrame.size.width = v20;
    self->_monogramOverrideFrame.size.height = v21;
    v22 = [(NTKColorAnalogFaceView *)self device];
    v23 = [(NTKColorAnalogFaceView *)self faceColorPalette];
    v10 = [NTKFaceColorScheme colorSchemeForDevice:v22 withFaceColorPalette:v23 units:49];

    if (self->_currentStyle)
    {
      _MonogramDarkForegroundColor();
    }

    else
    {
      [v10 shiftedForegroundColor];
    }
    v25 = ;
    objc_storeStrong(&self->_monogramForegroundColor, v25);

    v26 = [(NTKColorAnalogFaceView *)self _colorComplicationViewForSlot:NTKComplicationSlotMonogram];
    [v26 setForegroundColor:self->_monogramForegroundColor];

    [(NTKColorAnalogFaceView *)self invalidateComplicationLayout];
    v27 = [(NTKColorAnalogFaceView *)self delegate];
    [v27 faceViewDidChangeWantsStatusBarIconShadow];

    goto LABEL_11;
  }

  if (a4 == 10)
  {
    v10 = [(NTKColorAnalogFaceView *)self faceColorPalette];
    backgroundView = self->_backgroundView;
    v12 = [v10 primaryColor];
    [(NTKColorAnalogBackgroundView *)backgroundView applyColor:v12];

    v13 = [v10 primaryShiftedColor];
    complicationForegroundColor = self->_complicationForegroundColor;
    self->_complicationForegroundColor = v13;

    v15 = [v10 secondaryShiftedColor];
    complicationPlatterColor = self->_complicationPlatterColor;
    self->_complicationPlatterColor = v15;

    if (self->_currentStyle)
    {
      _MonogramDarkForegroundColor();
    }

    else
    {
      [v10 primaryShiftedColor];
    }
    v24 = ;
    objc_storeStrong(&self->_monogramForegroundColor, v24);

    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_5930;
    v28[3] = &unk_10520;
    v28[4] = self;
    [(NTKColorAnalogFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v28];
LABEL_11:
  }
}

- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7
{
  v12 = a4;
  v13 = a5;
  v42.receiver = self;
  v42.super_class = NTKColorAnalogFaceView;
  [(NTKColorAnalogFaceView *)&v42 _applyTransitionFraction:v12 fromOption:v13 toOption:a6 forCustomEditMode:a7 slot:a3];
  if (a6 == 15)
  {
    v30 = [v12 style];
    v31 = [v13 style];
    [(NTKColorAnalogBackgroundView *)self->_backgroundView applyTransitionFraction:v30 fromStyle:v31 toStyle:a3];
    if (a3 <= 0.5)
    {
      v32 = v30;
    }

    else
    {
      v32 = v31;
    }

    self->_currentStyle = v32;
    v14 = [(NTKColorAnalogFaceView *)self _colorComplicationViewForSlot:NTKComplicationSlotMonogram];
    v33 = _MonogramDarkForegroundColor();
    v34 = [(NTKColorAnalogFaceView *)self faceColorPalette];
    v35 = [v34 primaryShiftedColor];
    v36 = NTKInterpolateBetweenColors();
    [v14 setForegroundColor:v36];

    [(NTKColorAnalogFaceView *)self _monogramReferenceFrameForStyle:v30];
    [(NTKColorAnalogFaceView *)self _monogramReferenceFrameForStyle:v31];
    CLKInterpolateBetweenRects();
    self->_monogramOverrideFrame.origin.x = v37;
    self->_monogramOverrideFrame.origin.y = v38;
    self->_monogramOverrideFrame.size.width = v39;
    self->_monogramOverrideFrame.size.height = v40;
    [(NTKColorAnalogFaceView *)self layoutComplicationViews];
LABEL_10:

    goto LABEL_11;
  }

  if (a6 == 10)
  {
    v41 = v12;
    v14 = [(NTKColorAnalogFaceView *)self interpolatedColorPalette];
    backgroundView = self->_backgroundView;
    [v14 transitionFraction];
    v17 = v16;
    v18 = [v14 fromPalette];
    v19 = [v18 primaryColor];
    v20 = [v14 toPalette];
    v21 = [v20 primaryColor];
    v22 = [v14 primaryColor];
    v23 = [v14 primaryShiftedColor];
    [(NTKColorAnalogBackgroundView *)backgroundView applyTransitionFraction:v19 fromColor:v21 toColor:v22 withPrimaryColor:v23 boostedColor:v17];

    if (!self->_currentStyle)
    {
      CLKCompressFraction();
      v25 = v24;
      v26 = [(NTKColorAnalogFaceView *)self interpolatedColorPalette];
      [v26 setTransitionFraction:v25];

      v27 = [(NTKColorAnalogFaceView *)self _colorComplicationViewForSlot:NTKComplicationSlotMonogram];
      v28 = [(NTKColorAnalogFaceView *)self interpolatedColorPalette];
      v29 = [v28 primaryShiftedColor];
      [v27 setForegroundColor:v29];
    }

    [(NTKColorAnalogFaceView *)self _fadeComplicationFraction:NTKComplicationSlotTopRight entry:a3 exit:0.05 slot:0.15];
    [(NTKColorAnalogFaceView *)self _fadeComplicationFraction:NTKComplicationSlotBottomRight entry:a3 exit:0.35 slot:0.45];
    [(NTKColorAnalogFaceView *)self _fadeComplicationFraction:NTKComplicationSlotBottomLeft entry:a3 exit:0.55 slot:0.65];
    [(NTKColorAnalogFaceView *)self _fadeComplicationFraction:NTKComplicationSlotTopLeft entry:a3 exit:0.85 slot:0.95];
    v12 = v41;
    goto LABEL_10;
  }

LABEL_11:
}

- (void)_fadeComplicationFraction:(double)a3 entry:(double)a4 exit:(double)a5 slot:(id)a6
{
  v7 = a6;
  CLKCompressFraction();
  v9 = v8;
  v10 = [(NTKColorAnalogFaceView *)self interpolatedColorPalette];
  [v10 setTransitionFraction:v9];

  v11 = [(NTKColorAnalogFaceView *)self normalComplicationDisplayWrapperForSlot:v7];

  v17 = [v11 display];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v17;
    v13 = [(NTKColorAnalogFaceView *)self interpolatedColorPalette];
    v14 = [v13 primaryShiftedColor];
    [v12 setForegroundColor:v14];

    v15 = [(NTKColorAnalogFaceView *)self interpolatedColorPalette];
    v16 = [v15 secondaryShiftedColor];
    [v12 setPlatterColor:v16];
  }
}

- (void)_updateMonogramLayoutRule
{
  NTKEnumerateComplicationStates();
  v3 = [(NTKColorAnalogFaceView *)self delegate];
  [v3 faceViewDidHideOrShowComplicationSlot];
}

- (void)_cleanupAfterTransitionToOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  if (a4 == 15)
  {
    [(NTKColorAnalogFaceView *)self _updateMonogramLayoutRule];
  }
}

- (void)_configureForEditMode:(int64_t)a3
{
  v14.receiver = self;
  v14.super_class = NTKColorAnalogFaceView;
  [(NTKColorAnalogFaceView *)&v14 _configureForEditMode:?];
  v5 = [(NTKColorAnalogFaceView *)self timeView];
  v6 = v5;
  v7 = NTKEditModeDimmedAlpha;
  v8 = a3 == 15 || a3 == 10;
  v9 = 0.0;
  if (v8)
  {
    v9 = NTKEditModeDimmedAlpha;
  }

  if (!a3)
  {
    v9 = 1.0;
  }

  [v5 setAlpha:v9];

  if (a3 == 1)
  {
    v10 = v7;
  }

  else
  {
    v10 = 1.0;
  }

  [(NTKColorAnalogBackgroundView *)self->_backgroundView setAlpha:v10];
  v11 = 0.975;
  if (a3 < 2)
  {
    v11 = 1.0;
  }

  backgroundView = self->_backgroundView;
  CGAffineTransformMakeScale(&v13, v11, v11);
  [(NTKColorAnalogBackgroundView *)backgroundView setTransform:&v13];
  [(NTKColorAnalogFaceView *)self setClipsToBounds:a3 != 10];
}

- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5
{
  v25.receiver = self;
  v25.super_class = NTKColorAnalogFaceView;
  [NTKColorAnalogFaceView _configureForTransitionFraction:"_configureForTransitionFraction:fromEditMode:toEditMode:" fromEditMode:? toEditMode:?];
  v9 = [(NTKColorAnalogFaceView *)self timeView];
  CLKInterpolateBetweenFloatsClipped();
  [v9 setAlpha:?];

  backgroundView = self->_backgroundView;
  CLKInterpolateBetweenFloatsClipped();
  [(NTKColorAnalogBackgroundView *)backgroundView setAlpha:?];
  CLKInterpolateBetweenFloatsClipped();
  v11 = self->_backgroundView;
  CGAffineTransformMakeScale(&v24, v12, v12);
  [(NTKColorAnalogBackgroundView *)v11 setTransform:&v24];
  v13 = [(NTKColorAnalogFaceView *)self device];
  v14 = [(NTKColorAnalogFaceView *)self faceColorPalette];
  v15 = [NTKFaceColorScheme colorSchemeForDevice:v13 withFaceColorPalette:v14 units:49];

  v16 = [(NTKColorAnalogFaceView *)self _colorComplicationViewForSlot:NTKComplicationSlotMonogram];
  v17 = [(NTKColorAnalogFaceView *)self optionForCustomEditMode:15 slot:0];
  v18 = [v17 style];

  if (v18)
  {
    _MonogramDarkForegroundColor();
  }

  else
  {
    [v15 shiftedForegroundColor];
  }
  v19 = ;
  v20 = v19;
  if (a4 == 1)
  {
    v20 = [v15 shiftedForegroundColor];
  }

  v21 = v19;
  if (a5 == 1)
  {
    v21 = [v15 shiftedForegroundColor];
  }

  v22 = NTKInterpolateBetweenColors();
  [v16 setForegroundColor:v22];

  if (a3 <= 0.5)
  {
    v23 = v20;
  }

  else
  {
    v23 = v21;
  }

  objc_storeStrong(&self->_monogramForegroundColor, v23);
}

- (int64_t)_keylineStyleForComplicationSlot:(id)a3
{
  v4 = a3;
  v5 = [(NTKColorAnalogFaceView *)self device];
  if ([v5 deviceCategory] == &dword_0 + 1)
  {
  }

  else
  {
    v6 = [v4 isEqual:NTKComplicationSlotMonogram];

    if ((v6 & 1) == 0)
    {
      v7 = 1;
      goto LABEL_6;
    }
  }

  v7 = 0;
LABEL_6:

  return v7;
}

- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v13.receiver = self;
  v13.super_class = NTKColorAnalogFaceView;
  [(NTKColorAnalogFaceView *)&v13 _applyBreathingFraction:a4 forCustomEditMode:a5 slot:?];
  NTKLargeElementScaleForBreathingFraction();
  memset(&v12, 0, sizeof(v12));
  CGAffineTransformMakeScale(&v12, v7, v7);
  if (a4 == 10)
  {
    v8 = [(NTKColorAnalogFaceView *)self foregroundContainerView];
    v11 = v12;
    [v8 setTransform:&v11];

    backgroundComplicationContainerView = self->_backgroundComplicationContainerView;
    v11 = v12;
    [(UIView *)backgroundComplicationContainerView setTransform:&v11];
  }

  backgroundView = self->_backgroundView;
  v11 = v12;
  [(NTKColorAnalogBackgroundView *)backgroundView setTransform:&v11];
}

- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v16.receiver = self;
  v16.super_class = NTKColorAnalogFaceView;
  [(NTKColorAnalogFaceView *)&v16 _applyRubberBandingFraction:a4 forCustomEditMode:a5 slot:?];
  if (a4)
  {
    NTKLargeElementScaleForBreathingFraction();
    memset(&v15, 0, sizeof(v15));
    CGAffineTransformMakeScale(&v15, v7, v7);
    v8 = [(NTKColorAnalogFaceView *)self foregroundContainerView];
    v14 = v15;
    [v8 setTransform:&v14];

    backgroundComplicationContainerView = self->_backgroundComplicationContainerView;
    v14 = v15;
    [(UIView *)backgroundComplicationContainerView setTransform:&v14];
    backgroundView = self->_backgroundView;
    v14 = v15;
    [(NTKColorAnalogBackgroundView *)backgroundView setTransform:&v14];
    NTKAlphaForRubberBandingFraction();
    v12 = v11;
    v13 = [(NTKColorAnalogFaceView *)self foregroundContainerView];
    [v13 setAlpha:v12];

    [(UIView *)self->_backgroundComplicationContainerView setAlpha:v12];
    [(NTKColorAnalogBackgroundView *)self->_backgroundView setAlpha:v12];
  }
}

- (int64_t)_complicationPickerStyleForSlot:(id)a3
{
  v3 = [(NTKColorAnalogFaceView *)self device];
  v4 = [v3 deviceCategory] != &dword_0 + 1;

  return v4;
}

- (double)_keylineCornerRadiusForComplicationSlot:(id)a3
{
  if ([a3 isEqual:NTKComplicationSlotMonogram])
  {

    _NTKKeylineCornerRadiusSmall();
  }

  else
  {

    _NTKKeylineCornerRadiusLarge();
  }

  return result;
}

- (void)_enumerateColorComplicationSlotsWithBlock:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_68C8;
  v5[3] = &unk_10570;
  v6 = a3;
  v4 = v6;
  [(NTKColorAnalogFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v5];
}

- (id)_colorComplicationViewForSlot:(id)a3
{
  v3 = [(NTKColorAnalogFaceView *)self normalComplicationDisplayWrapperForSlot:a3];
  v4 = [v3 display];

  return v4;
}

+ (id)_swatchForEditModeDependsOnOptions:(int64_t)a3 forDevice:(id)a4
{
  if (a3 == 15)
  {
    return &off_11330;
  }

  else
  {
    return 0;
  }
}

- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5
{
  v8 = a3;
  v9 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v8;
    v11 = [v9 objectForKeyedSubscript:&off_10E40];

    if (!qword_156A0)
    {
      v12 = objc_opt_new();
      v13 = qword_156A0;
      qword_156A0 = v12;
    }

    v14 = [NSString stringWithFormat:@"%@-%@", v10, v11];
    v15 = [qword_156A0 objectForKey:v14];
    if (!v15)
    {
      v16 = [v10 style];
      if (v16 > 2)
      {
        v17 = 0;
      }

      else
      {
        v17 = [NTKColorAnalogFaceBundle imageWithName:*(&off_105B0 + v16)];
      }

      v18 = [(NTKColorAnalogFaceView *)self faceColorPalette];
      v19 = [v18 copy];

      v20 = [NTKFaceColorPaletteConfiguration alloc];
      v21 = [v11 pigmentEditOption];
      v22 = [v20 initWithPigmentEditOption:v21];
      [v19 setConfiguration:v22];

      v23 = [(NTKColorAnalogFaceView *)self device];
      v24 = [NTKFaceColorScheme colorSchemeForDevice:v23 withFaceColorPalette:v19 units:1];

      v25 = [v24 foregroundColor];
      v15 = [v17 _flatImageWithColor:v25];

      [qword_156A0 setObject:v15 forKey:v14];
    }
  }

  else
  {
    v27.receiver = self;
    v27.super_class = NTKColorAnalogFaceView;
    v15 = [(NTKColorAnalogFaceView *)&v27 _swatchImageForEditOption:v8 mode:a4 withSelectedOptions:v9];
  }

  return v15;
}

@end