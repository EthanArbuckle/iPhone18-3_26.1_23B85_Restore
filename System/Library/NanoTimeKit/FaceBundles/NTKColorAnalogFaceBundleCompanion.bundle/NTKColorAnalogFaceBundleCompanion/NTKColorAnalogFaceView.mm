@interface NTKColorAnalogFaceView
+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device;
- (CGRect)_frameForComplicationDisplayWrapper:(id)wrapper inSlot:(id)slot;
- (CGRect)_monogramReferenceFrame;
- (CGRect)_monogramReferenceFrameForStyle:(unint64_t)style;
- (NTKColorAnalogFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier;
- (UIEdgeInsets)_monogramKeylinePadding;
- (double)_edgeGapForState:(int64_t)state;
- (double)_keylineCornerRadiusForComplicationSlot:(id)slot;
- (double)_keylinePaddingForState:(int64_t)state;
- (double)_lisaGapForState:(int64_t)state;
- (id)_colorComplicationViewForSlot:(id)slot;
- (id)_complicationContainerViewForSlot:(id)slot;
- (id)_keylineViewForComplicationSlot:(id)slot;
- (id)_newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot;
- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options;
- (int64_t)_complicationPickerStyleForSlot:(id)slot;
- (int64_t)_keylineStyleForComplicationSlot:(id)slot;
- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_cleanupAfterTransitionToOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_configureComplicationView:(id)view forSlot:(id)slot;
- (void)_configureForEditMode:(int64_t)mode;
- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode;
- (void)_configureTimeView:(id)view;
- (void)_enumerateColorComplicationSlotsWithBlock:(id)block;
- (void)_fadeComplicationFraction:(double)fraction entry:(double)entry exit:(double)exit slot:(id)slot;
- (void)_loadSnapshotContentViews;
- (void)_unloadSnapshotContentViews;
- (void)_updateMonogramLayoutRule;
- (void)layoutSubviews;
@end

@implementation NTKColorAnalogFaceView

- (NTKColorAnalogFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier
{
  v12.receiver = self;
  v12.super_class = NTKColorAnalogFaceView;
  v5 = [(NTKColorAnalogFaceView *)&v12 initWithFaceStyle:style forDevice:device clientIdentifier:identifier];
  if (v5)
  {
    v6 = [UIView alloc];
    [(NTKColorAnalogFaceView *)v5 bounds];
    v7 = [v6 initWithFrame:?];
    backgroundComplicationContainerView = v5->_backgroundComplicationContainerView;
    v5->_backgroundComplicationContainerView = v7;

    contentView = [(NTKColorAnalogFaceView *)v5 contentView];
    [contentView insertSubview:v5->_backgroundComplicationContainerView atIndex:0];

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
  device = [(NTKColorAnalogFaceView *)self device];
  v13 = [(NTKColorAnalogBackgroundView *)v3 initWithFrame:device device:v5, v7, v9, v11];
  backgroundView = self->_backgroundView;
  self->_backgroundView = v13;

  contentView = [(NTKColorAnalogFaceView *)self contentView];
  [contentView addSubview:self->_backgroundView];

  contentView2 = [(NTKColorAnalogFaceView *)self contentView];
  v17 = +[UIColor blackColor];
  [contentView2 setBackgroundColor:v17];
}

- (void)_unloadSnapshotContentViews
{
  v6.receiver = self;
  v6.super_class = NTKColorAnalogFaceView;
  [(NTKColorAnalogFaceView *)&v6 _unloadSnapshotContentViews];
  [(NTKColorAnalogBackgroundView *)self->_backgroundView removeFromSuperview];
  backgroundView = self->_backgroundView;
  self->_backgroundView = 0;

  contentView = [(NTKColorAnalogFaceView *)self contentView];
  v5 = +[UIColor clearColor];
  [contentView setBackgroundColor:v5];
}

- (id)_complicationContainerViewForSlot:(id)slot
{
  slotCopy = slot;
  if ([slotCopy isEqualToString:NTKComplicationSlotMonogram])
  {
    v8.receiver = self;
    v8.super_class = NTKColorAnalogFaceView;
    v5 = [(NTKColorAnalogFaceView *)&v8 _complicationContainerViewForSlot:slotCopy];
  }

  else
  {
    v5 = self->_backgroundComplicationContainerView;
  }

  v6 = v5;

  return v6;
}

- (void)_configureTimeView:(id)view
{
  v6.receiver = self;
  v6.super_class = NTKColorAnalogFaceView;
  viewCopy = view;
  [(NTKColorAnalogFaceView *)&v6 _configureTimeView:viewCopy];
  secondHandView = [viewCopy secondHandView];

  v5 = +[UIColor systemOrangeColor];
  [secondHandView setColor:v5];
}

- (id)_newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot
{
  v7 = NTKComplicationSlotMonogram;
  complicationCopy = complication;
  LODWORD(slot) = [slot isEqualToString:v7];
  complicationType = [complicationCopy complicationType];

  v10 = [NTKCircularComplicationView viewForComplicationType:complicationType];
  v11 = v10;
  v12 = &OBJC_IVAR___NTKColorAnalogFaceView__complicationForegroundColor;
  if (slot)
  {
    v12 = &OBJC_IVAR___NTKColorAnalogFaceView__monogramForegroundColor;
  }

  [v10 setForegroundColor:*&self->NTKAnalogFaceView_opaque[*v12]];
  [v11 setPlatterColor:self->_complicationPlatterColor];
  [v11 setUseRoundedFontDesign:1];
  return v11;
}

- (void)_configureComplicationView:(id)view forSlot:(id)slot
{
  viewCopy = view;
  v6 = [slot isEqualToString:NTKComplicationSlotMonogram];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = &OBJC_IVAR___NTKColorAnalogFaceView__complicationForegroundColor;
    if (v6)
    {
      v7 = &OBJC_IVAR___NTKColorAnalogFaceView__monogramForegroundColor;
    }

    v8 = *&self->NTKAnalogFaceView_opaque[*v7];
    v9 = viewCopy;
    [v9 setForegroundColor:v8];
    [v9 setPlatterColor:self->_complicationPlatterColor];
    [v9 setUseRoundedFontDesign:1];
  }
}

- (CGRect)_frameForComplicationDisplayWrapper:(id)wrapper inSlot:(id)slot
{
  wrapperCopy = wrapper;
  slotCopy = slot;
  if ([slotCopy isEqualToString:NTKComplicationSlotMonogram] && !CGRectIsNull(self->_monogramOverrideFrame))
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
    [(NTKColorAnalogFaceView *)&v20 _frameForComplicationDisplayWrapper:wrapperCopy inSlot:slotCopy];
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

- (id)_keylineViewForComplicationSlot:(id)slot
{
  v4 = NTKComplicationSlotMonogram;
  slotCopy = slot;
  if ([slotCopy isEqualToString:v4])
  {
    v6 = [(NTKColorAnalogFaceView *)self _defaultKeylineViewForComplicationSlot:slotCopy];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = NTKColorAnalogFaceView;
    v6 = [(NTKColorAnalogFaceView *)&v9 _keylineViewForComplicationSlot:slotCopy];
  }

  v7 = v6;

  return v7;
}

- (double)_edgeGapForState:(int64_t)state
{
  if ((state - 2) >= 2)
  {
    if (state == 1)
    {
      device = [(NTKColorAnalogFaceView *)self device];
      NTKColorFaceViewEdgeGapEditing();
    }

    else
    {
      device = [(NTKColorAnalogFaceView *)self device];
      NTKColorFaceViewEdgeGapNormal();
    }
  }

  else
  {
    device = [(NTKColorAnalogFaceView *)self device];
    NTKColorFaceViewEdgeGapDeselected();
  }

  v5 = v4;

  return v5;
}

- (double)_keylinePaddingForState:(int64_t)state
{
  v3 = 0.0;
  if ((state & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    NTKKeylineWidth();
    v6 = v5;
    device = [(NTKColorAnalogFaceView *)self device];
    NTKColorFaceViewDeselectedKeylineInnerPadding();
    v3 = v6 + v8;
  }

  return v3;
}

- (double)_lisaGapForState:(int64_t)state
{
  if ((state & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    return 0.0;
  }

  device = [(NTKColorAnalogFaceView *)self device];
  NTKColorFaceViewLisaKeylineGap();
  v5 = v4;

  return v5;
}

- (UIEdgeInsets)_monogramKeylinePadding
{
  NTKKeylineWidth();
  v4 = v3;
  device = [(NTKColorAnalogFaceView *)self device];
  sub_755C(device, v16);
  v6 = v4 + v17;

  NTKKeylineWidth();
  v8 = v7;
  device2 = [(NTKColorAnalogFaceView *)self device];
  sub_755C(device2, v15);
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

- (CGRect)_monogramReferenceFrameForStyle:(unint64_t)style
{
  device = [(NTKColorAnalogFaceView *)self device];
  v30 = 0;
  memset(v29, 0, sizeof(v29));
  v28 = 0u;
  sub_755C(device, &v28);
  [(NTKColorAnalogFaceView *)self _monogramKeylinePadding];
  v8 = v6;
  v10 = v9;
  v11 = v7;
  v13 = v12;
  if (style)
  {
    if (style != 1)
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
  [NTKAnalogUtilities dialSizeForDevice:device];
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
  style = [v3 style];

  [(NTKColorAnalogFaceView *)self _monogramReferenceFrameForStyle:style];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  slotCopy = slot;
  if (mode == 15)
  {
    style = [optionCopy style];
    self->_currentStyle = style;
    [(NTKColorAnalogBackgroundView *)self->_backgroundView applyStyle:style];
    [(NTKColorAnalogFaceView *)self _monogramReferenceFrameForStyle:self->_currentStyle];
    self->_monogramOverrideFrame.origin.x = v18;
    self->_monogramOverrideFrame.origin.y = v19;
    self->_monogramOverrideFrame.size.width = v20;
    self->_monogramOverrideFrame.size.height = v21;
    device = [(NTKColorAnalogFaceView *)self device];
    faceColorPalette = [(NTKColorAnalogFaceView *)self faceColorPalette];
    faceColorPalette2 = [NTKFaceColorScheme colorSchemeForDevice:device withFaceColorPalette:faceColorPalette units:49];

    if (self->_currentStyle)
    {
      _MonogramDarkForegroundColor();
    }

    else
    {
      [faceColorPalette2 shiftedForegroundColor];
    }
    v25 = ;
    objc_storeStrong(&self->_monogramForegroundColor, v25);

    v26 = [(NTKColorAnalogFaceView *)self _colorComplicationViewForSlot:NTKComplicationSlotMonogram];
    [v26 setForegroundColor:self->_monogramForegroundColor];

    [(NTKColorAnalogFaceView *)self invalidateComplicationLayout];
    delegate = [(NTKColorAnalogFaceView *)self delegate];
    [delegate faceViewDidChangeWantsStatusBarIconShadow];

    goto LABEL_11;
  }

  if (mode == 10)
  {
    faceColorPalette2 = [(NTKColorAnalogFaceView *)self faceColorPalette];
    backgroundView = self->_backgroundView;
    primaryColor = [faceColorPalette2 primaryColor];
    [(NTKColorAnalogBackgroundView *)backgroundView applyColor:primaryColor];

    primaryShiftedColor = [faceColorPalette2 primaryShiftedColor];
    complicationForegroundColor = self->_complicationForegroundColor;
    self->_complicationForegroundColor = primaryShiftedColor;

    secondaryShiftedColor = [faceColorPalette2 secondaryShiftedColor];
    complicationPlatterColor = self->_complicationPlatterColor;
    self->_complicationPlatterColor = secondaryShiftedColor;

    if (self->_currentStyle)
    {
      _MonogramDarkForegroundColor();
    }

    else
    {
      [faceColorPalette2 primaryShiftedColor];
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

- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  toOptionCopy = toOption;
  v42.receiver = self;
  v42.super_class = NTKColorAnalogFaceView;
  [(NTKColorAnalogFaceView *)&v42 _applyTransitionFraction:optionCopy fromOption:toOptionCopy toOption:mode forCustomEditMode:slot slot:fraction];
  if (mode == 15)
  {
    style = [optionCopy style];
    style2 = [toOptionCopy style];
    [(NTKColorAnalogBackgroundView *)self->_backgroundView applyTransitionFraction:style fromStyle:style2 toStyle:fraction];
    if (fraction <= 0.5)
    {
      v32 = style;
    }

    else
    {
      v32 = style2;
    }

    self->_currentStyle = v32;
    interpolatedColorPalette = [(NTKColorAnalogFaceView *)self _colorComplicationViewForSlot:NTKComplicationSlotMonogram];
    v33 = _MonogramDarkForegroundColor();
    faceColorPalette = [(NTKColorAnalogFaceView *)self faceColorPalette];
    primaryShiftedColor = [faceColorPalette primaryShiftedColor];
    v36 = NTKInterpolateBetweenColors();
    [interpolatedColorPalette setForegroundColor:v36];

    [(NTKColorAnalogFaceView *)self _monogramReferenceFrameForStyle:style];
    [(NTKColorAnalogFaceView *)self _monogramReferenceFrameForStyle:style2];
    CLKInterpolateBetweenRects();
    self->_monogramOverrideFrame.origin.x = v37;
    self->_monogramOverrideFrame.origin.y = v38;
    self->_monogramOverrideFrame.size.width = v39;
    self->_monogramOverrideFrame.size.height = v40;
    [(NTKColorAnalogFaceView *)self layoutComplicationViews];
LABEL_10:

    goto LABEL_11;
  }

  if (mode == 10)
  {
    v41 = optionCopy;
    interpolatedColorPalette = [(NTKColorAnalogFaceView *)self interpolatedColorPalette];
    backgroundView = self->_backgroundView;
    [interpolatedColorPalette transitionFraction];
    v17 = v16;
    fromPalette = [interpolatedColorPalette fromPalette];
    primaryColor = [fromPalette primaryColor];
    toPalette = [interpolatedColorPalette toPalette];
    primaryColor2 = [toPalette primaryColor];
    primaryColor3 = [interpolatedColorPalette primaryColor];
    primaryShiftedColor2 = [interpolatedColorPalette primaryShiftedColor];
    [(NTKColorAnalogBackgroundView *)backgroundView applyTransitionFraction:primaryColor fromColor:primaryColor2 toColor:primaryColor3 withPrimaryColor:primaryShiftedColor2 boostedColor:v17];

    if (!self->_currentStyle)
    {
      CLKCompressFraction();
      v25 = v24;
      interpolatedColorPalette2 = [(NTKColorAnalogFaceView *)self interpolatedColorPalette];
      [interpolatedColorPalette2 setTransitionFraction:v25];

      v27 = [(NTKColorAnalogFaceView *)self _colorComplicationViewForSlot:NTKComplicationSlotMonogram];
      interpolatedColorPalette3 = [(NTKColorAnalogFaceView *)self interpolatedColorPalette];
      primaryShiftedColor3 = [interpolatedColorPalette3 primaryShiftedColor];
      [v27 setForegroundColor:primaryShiftedColor3];
    }

    [(NTKColorAnalogFaceView *)self _fadeComplicationFraction:NTKComplicationSlotTopRight entry:fraction exit:0.05 slot:0.15];
    [(NTKColorAnalogFaceView *)self _fadeComplicationFraction:NTKComplicationSlotBottomRight entry:fraction exit:0.35 slot:0.45];
    [(NTKColorAnalogFaceView *)self _fadeComplicationFraction:NTKComplicationSlotBottomLeft entry:fraction exit:0.55 slot:0.65];
    [(NTKColorAnalogFaceView *)self _fadeComplicationFraction:NTKComplicationSlotTopLeft entry:fraction exit:0.85 slot:0.95];
    optionCopy = v41;
    goto LABEL_10;
  }

LABEL_11:
}

- (void)_fadeComplicationFraction:(double)fraction entry:(double)entry exit:(double)exit slot:(id)slot
{
  slotCopy = slot;
  CLKCompressFraction();
  v9 = v8;
  interpolatedColorPalette = [(NTKColorAnalogFaceView *)self interpolatedColorPalette];
  [interpolatedColorPalette setTransitionFraction:v9];

  v11 = [(NTKColorAnalogFaceView *)self normalComplicationDisplayWrapperForSlot:slotCopy];

  display = [v11 display];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = display;
    interpolatedColorPalette2 = [(NTKColorAnalogFaceView *)self interpolatedColorPalette];
    primaryShiftedColor = [interpolatedColorPalette2 primaryShiftedColor];
    [v12 setForegroundColor:primaryShiftedColor];

    interpolatedColorPalette3 = [(NTKColorAnalogFaceView *)self interpolatedColorPalette];
    secondaryShiftedColor = [interpolatedColorPalette3 secondaryShiftedColor];
    [v12 setPlatterColor:secondaryShiftedColor];
  }
}

- (void)_updateMonogramLayoutRule
{
  NTKEnumerateComplicationStates();
  delegate = [(NTKColorAnalogFaceView *)self delegate];
  [delegate faceViewDidHideOrShowComplicationSlot];
}

- (void)_cleanupAfterTransitionToOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  if (mode == 15)
  {
    [(NTKColorAnalogFaceView *)self _updateMonogramLayoutRule];
  }
}

- (void)_configureForEditMode:(int64_t)mode
{
  v14.receiver = self;
  v14.super_class = NTKColorAnalogFaceView;
  [(NTKColorAnalogFaceView *)&v14 _configureForEditMode:?];
  timeView = [(NTKColorAnalogFaceView *)self timeView];
  v6 = timeView;
  v7 = NTKEditModeDimmedAlpha;
  v8 = mode == 15 || mode == 10;
  v9 = 0.0;
  if (v8)
  {
    v9 = NTKEditModeDimmedAlpha;
  }

  if (!mode)
  {
    v9 = 1.0;
  }

  [timeView setAlpha:v9];

  if (mode == 1)
  {
    v10 = v7;
  }

  else
  {
    v10 = 1.0;
  }

  [(NTKColorAnalogBackgroundView *)self->_backgroundView setAlpha:v10];
  v11 = 0.975;
  if (mode < 2)
  {
    v11 = 1.0;
  }

  backgroundView = self->_backgroundView;
  CGAffineTransformMakeScale(&v13, v11, v11);
  [(NTKColorAnalogBackgroundView *)backgroundView setTransform:&v13];
  [(NTKColorAnalogFaceView *)self setClipsToBounds:mode != 10];
}

- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode
{
  v25.receiver = self;
  v25.super_class = NTKColorAnalogFaceView;
  [NTKColorAnalogFaceView _configureForTransitionFraction:"_configureForTransitionFraction:fromEditMode:toEditMode:" fromEditMode:? toEditMode:?];
  timeView = [(NTKColorAnalogFaceView *)self timeView];
  CLKInterpolateBetweenFloatsClipped();
  [timeView setAlpha:?];

  backgroundView = self->_backgroundView;
  CLKInterpolateBetweenFloatsClipped();
  [(NTKColorAnalogBackgroundView *)backgroundView setAlpha:?];
  CLKInterpolateBetweenFloatsClipped();
  v11 = self->_backgroundView;
  CGAffineTransformMakeScale(&v24, v12, v12);
  [(NTKColorAnalogBackgroundView *)v11 setTransform:&v24];
  device = [(NTKColorAnalogFaceView *)self device];
  faceColorPalette = [(NTKColorAnalogFaceView *)self faceColorPalette];
  v15 = [NTKFaceColorScheme colorSchemeForDevice:device withFaceColorPalette:faceColorPalette units:49];

  v16 = [(NTKColorAnalogFaceView *)self _colorComplicationViewForSlot:NTKComplicationSlotMonogram];
  v17 = [(NTKColorAnalogFaceView *)self optionForCustomEditMode:15 slot:0];
  style = [v17 style];

  if (style)
  {
    _MonogramDarkForegroundColor();
  }

  else
  {
    [v15 shiftedForegroundColor];
  }
  v19 = ;
  shiftedForegroundColor = v19;
  if (mode == 1)
  {
    shiftedForegroundColor = [v15 shiftedForegroundColor];
  }

  shiftedForegroundColor2 = v19;
  if (editMode == 1)
  {
    shiftedForegroundColor2 = [v15 shiftedForegroundColor];
  }

  v22 = NTKInterpolateBetweenColors();
  [v16 setForegroundColor:v22];

  if (fraction <= 0.5)
  {
    v23 = shiftedForegroundColor;
  }

  else
  {
    v23 = shiftedForegroundColor2;
  }

  objc_storeStrong(&self->_monogramForegroundColor, v23);
}

- (int64_t)_keylineStyleForComplicationSlot:(id)slot
{
  slotCopy = slot;
  device = [(NTKColorAnalogFaceView *)self device];
  if ([device deviceCategory] == &dword_0 + 1)
  {
  }

  else
  {
    v6 = [slotCopy isEqual:NTKComplicationSlotMonogram];

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

- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v13.receiver = self;
  v13.super_class = NTKColorAnalogFaceView;
  [(NTKColorAnalogFaceView *)&v13 _applyBreathingFraction:mode forCustomEditMode:slot slot:?];
  NTKLargeElementScaleForBreathingFraction();
  memset(&v12, 0, sizeof(v12));
  CGAffineTransformMakeScale(&v12, v7, v7);
  if (mode == 10)
  {
    foregroundContainerView = [(NTKColorAnalogFaceView *)self foregroundContainerView];
    v11 = v12;
    [foregroundContainerView setTransform:&v11];

    backgroundComplicationContainerView = self->_backgroundComplicationContainerView;
    v11 = v12;
    [(UIView *)backgroundComplicationContainerView setTransform:&v11];
  }

  backgroundView = self->_backgroundView;
  v11 = v12;
  [(NTKColorAnalogBackgroundView *)backgroundView setTransform:&v11];
}

- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v16.receiver = self;
  v16.super_class = NTKColorAnalogFaceView;
  [(NTKColorAnalogFaceView *)&v16 _applyRubberBandingFraction:mode forCustomEditMode:slot slot:?];
  if (mode)
  {
    NTKLargeElementScaleForBreathingFraction();
    memset(&v15, 0, sizeof(v15));
    CGAffineTransformMakeScale(&v15, v7, v7);
    foregroundContainerView = [(NTKColorAnalogFaceView *)self foregroundContainerView];
    v14 = v15;
    [foregroundContainerView setTransform:&v14];

    backgroundComplicationContainerView = self->_backgroundComplicationContainerView;
    v14 = v15;
    [(UIView *)backgroundComplicationContainerView setTransform:&v14];
    backgroundView = self->_backgroundView;
    v14 = v15;
    [(NTKColorAnalogBackgroundView *)backgroundView setTransform:&v14];
    NTKAlphaForRubberBandingFraction();
    v12 = v11;
    foregroundContainerView2 = [(NTKColorAnalogFaceView *)self foregroundContainerView];
    [foregroundContainerView2 setAlpha:v12];

    [(UIView *)self->_backgroundComplicationContainerView setAlpha:v12];
    [(NTKColorAnalogBackgroundView *)self->_backgroundView setAlpha:v12];
  }
}

- (int64_t)_complicationPickerStyleForSlot:(id)slot
{
  device = [(NTKColorAnalogFaceView *)self device];
  v4 = [device deviceCategory] != &dword_0 + 1;

  return v4;
}

- (double)_keylineCornerRadiusForComplicationSlot:(id)slot
{
  if ([slot isEqual:NTKComplicationSlotMonogram])
  {

    _NTKKeylineCornerRadiusSmall();
  }

  else
  {

    _NTKKeylineCornerRadiusLarge();
  }

  return result;
}

- (void)_enumerateColorComplicationSlotsWithBlock:(id)block
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_68C8;
  v5[3] = &unk_10570;
  blockCopy = block;
  v4 = blockCopy;
  [(NTKColorAnalogFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v5];
}

- (id)_colorComplicationViewForSlot:(id)slot
{
  v3 = [(NTKColorAnalogFaceView *)self normalComplicationDisplayWrapperForSlot:slot];
  display = [v3 display];

  return display;
}

+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device
{
  if (options == 15)
  {
    return &off_11330;
  }

  else
  {
    return 0;
  }
}

- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options
{
  optionCopy = option;
  optionsCopy = options;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = optionCopy;
    v11 = [optionsCopy objectForKeyedSubscript:&off_10E40];

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
      style = [v10 style];
      if (style > 2)
      {
        v17 = 0;
      }

      else
      {
        v17 = [NTKColorAnalogFaceBundle imageWithName:*(&off_105B0 + style)];
      }

      faceColorPalette = [(NTKColorAnalogFaceView *)self faceColorPalette];
      v19 = [faceColorPalette copy];

      v20 = [NTKFaceColorPaletteConfiguration alloc];
      pigmentEditOption = [v11 pigmentEditOption];
      v22 = [v20 initWithPigmentEditOption:pigmentEditOption];
      [v19 setConfiguration:v22];

      device = [(NTKColorAnalogFaceView *)self device];
      v24 = [NTKFaceColorScheme colorSchemeForDevice:device withFaceColorPalette:v19 units:1];

      foregroundColor = [v24 foregroundColor];
      v15 = [v17 _flatImageWithColor:foregroundColor];

      [qword_156A0 setObject:v15 forKey:v14];
    }
  }

  else
  {
    v27.receiver = self;
    v27.super_class = NTKColorAnalogFaceView;
    v15 = [(NTKColorAnalogFaceView *)&v27 _swatchImageForEditOption:optionCopy mode:mode withSelectedOptions:optionsCopy];
  }

  return v15;
}

@end