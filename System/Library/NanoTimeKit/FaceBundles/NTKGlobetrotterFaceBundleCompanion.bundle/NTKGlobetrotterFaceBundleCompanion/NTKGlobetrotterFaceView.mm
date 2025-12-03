@interface NTKGlobetrotterFaceView
+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device;
- (CGRect)_relativeKeylineFrameForCustomEditMode:(int64_t)mode slot:(id)slot;
- (NTKGlobetrotterFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier;
- (double)_complicationAlphaForEditMode:(int64_t)mode;
- (double)_dialViewAlphaForEditMode:(int64_t)mode;
- (double)_globetrotterCitySubviewsAlphaForEditMode:(int64_t)mode;
- (double)_timeViewAlphaForEditMode:(int64_t)mode;
- (double)_timeViewContainerViewAlphaForEditMode:(int64_t)mode;
- (double)_timeViewScaleForEditMode:(int64_t)mode;
- (id)_keylineViewForCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options;
- (id)createFaceColorPalette;
- (unint64_t)_keylineLabelAlignmentForCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyDataMode;
- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_cleanupAfterEditing;
- (void)_configureComplicationView:(id)view forSlot:(id)slot;
- (void)_configureForEditMode:(int64_t)mode;
- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode;
- (void)_loadDialView;
- (void)_loadSnapshotContentViews;
- (void)_loadTimeView;
- (void)_loadUI;
- (void)_prepareForEditing;
- (void)_setNumerals:(unint64_t)numerals;
- (void)_unloadDialView;
- (void)_unloadSnapshotContentViews;
- (void)_unloadTimeView;
- (void)_unloadUI;
- (void)_updateTimeZoneHourOffset;
- (void)_updateViewColorsWithPalette:(id)palette;
- (void)layoutSubviews;
- (void)setOverrideDate:(id)date duration:(double)duration;
@end

@implementation NTKGlobetrotterFaceView

- (NTKGlobetrotterFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier
{
  deviceCopy = device;
  v16.receiver = self;
  v16.super_class = NTKGlobetrotterFaceView;
  v9 = [(NTKGlobetrotterFaceView *)&v16 initWithFaceStyle:style forDevice:deviceCopy clientIdentifier:identifier];
  v10 = v9;
  if (v9)
  {
    v11 = sub_58A4(v9, deviceCopy);
    v10->_numberSystem = -1;
    v12 = [[NTKWhistlerAnalogFaceViewComplicationFactory alloc] initWithFaceView:v10 dialDiameter:deviceCopy device:v11];
    [v12 setUsesNarrowTopSlots:1];
    [(NTKGlobetrotterFaceView *)v10 setComplicationFactory:v12];
    v13 = [NSTimeZone timeZoneWithAbbreviation:@"PST"];
    referenceTimeZone = v10->_referenceTimeZone;
    v10->_referenceTimeZone = v13;

    [(NTKGlobetrotterFaceView *)v10 _updateTimeZoneHourOffset];
  }

  return v10;
}

- (void)setOverrideDate:(id)date duration:(double)duration
{
  v7.receiver = self;
  v7.super_class = NTKGlobetrotterFaceView;
  dateCopy = date;
  [(NTKGlobetrotterFaceView *)&v7 setOverrideDate:dateCopy duration:duration];
  [(NTKGlobetrotterDialView *)self->_globetrotterDialView setOverrideDate:dateCopy duration:duration, v7.receiver, v7.super_class];
}

- (void)_loadSnapshotContentViews
{
  v3.receiver = self;
  v3.super_class = NTKGlobetrotterFaceView;
  [(NTKGlobetrotterFaceView *)&v3 _loadSnapshotContentViews];
  [(NTKGlobetrotterFaceView *)self _loadUI];
}

- (void)_unloadSnapshotContentViews
{
  v3.receiver = self;
  v3.super_class = NTKGlobetrotterFaceView;
  [(NTKGlobetrotterFaceView *)&v3 _unloadSnapshotContentViews];
  [(NTKGlobetrotterFaceView *)self _unloadUI];
}

- (void)_applyDataMode
{
  v3.receiver = self;
  v3.super_class = NTKGlobetrotterFaceView;
  [(NTKGlobetrotterFaceView *)&v3 _applyDataMode];
  [(NTKGlobetrotterTimeView *)self->_globetrotterTimeView applyDataMode:[(NTKGlobetrotterFaceView *)self dataMode]];
}

- (void)_loadUI
{
  [(NTKGlobetrotterFaceView *)self _loadDialView];

  [(NTKGlobetrotterFaceView *)self _loadTimeView];
}

- (void)_unloadUI
{
  [(NTKGlobetrotterFaceView *)self _unloadDialView];

  [(NTKGlobetrotterFaceView *)self _unloadTimeView];
}

- (void)_loadDialView
{
  device = [(NTKGlobetrotterFaceView *)self device];
  v4 = sub_58A4(device, device);

  v5 = [NTKGlobetrotterDialView alloc];
  timeZoneHourOffset = self->_timeZoneHourOffset;
  device2 = [(NTKGlobetrotterFaceView *)self device];
  v8 = [(NTKGlobetrotterDialView *)v5 initWithFrame:timeZoneHourOffset timeZoneHourOffset:device2 device:0.0, 0.0, v4, v4];
  globetrotterDialView = self->_globetrotterDialView;
  self->_globetrotterDialView = v8;

  [(NTKGlobetrotterDialView *)self->_globetrotterDialView setNumberSystem:self->_numberSystem];
  contentView = [(NTKGlobetrotterFaceView *)self contentView];
  [contentView addSubview:self->_globetrotterDialView];
}

- (void)_unloadDialView
{
  [(NTKGlobetrotterDialView *)self->_globetrotterDialView removeFromSuperview];
  globetrotterDialView = self->_globetrotterDialView;
  self->_globetrotterDialView = 0;
}

- (void)_loadTimeView
{
  device = [(NTKGlobetrotterFaceView *)self device];
  sub_58A4(device, device);
  v4 = v3;
  v5 = [[UIView alloc] initWithFrame:{0.0, 0.0, v4, v4}];
  timeViewContainerView = self->_timeViewContainerView;
  self->_timeViewContainerView = v5;

  contentView = [(NTKGlobetrotterFaceView *)self contentView];
  [contentView addSubview:self->_timeViewContainerView];

  v8 = [[NTKGlobetrotterTimeView alloc] initWithFrame:0 style:0 numberSystem:device andDevice:self->_timeZoneHourOffset timeZoneHourOffset:0.0, 0.0, v4, v4];
  globetrotterTimeView = self->_globetrotterTimeView;
  self->_globetrotterTimeView = v8;

  [(NTKGlobetrotterTimeView *)self->_globetrotterTimeView setNumberSystem:self->_numberSystem];
  [(UIView *)self->_timeViewContainerView addSubview:self->_globetrotterTimeView];
  [(NTKGlobetrotterFaceView *)self setTimeView:self->_globetrotterTimeView];
}

- (void)_unloadTimeView
{
  [(NTKGlobetrotterTimeView *)self->_globetrotterTimeView removeFromSuperview];
  globetrotterTimeView = self->_globetrotterTimeView;
  self->_globetrotterTimeView = 0;

  [(UIView *)self->_timeViewContainerView removeFromSuperview];
  timeViewContainerView = self->_timeViewContainerView;
  self->_timeViewContainerView = 0;
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = NTKGlobetrotterFaceView;
  [(NTKGlobetrotterFaceView *)&v12 layoutSubviews];
  contentView = [(NTKGlobetrotterFaceView *)self contentView];
  [contentView bounds];
  CLKRectGetCenter();
  v5 = v4;
  v7 = v6;

  [(UIView *)self->_timeViewContainerView bounds];
  CLKRectGetCenter();
  v9 = v8;
  v11 = v10;
  [(UIView *)self->_timeViewContainerView setCenter:v5, v7];
  [(NTKGlobetrotterDialView *)self->_globetrotterDialView setCenter:v5, v7];
  [(NTKGlobetrotterTimeView *)self->_globetrotterTimeView setCenter:v9, v11];
}

- (void)_updateViewColorsWithPalette:(id)palette
{
  globetrotterDialView = self->_globetrotterDialView;
  paletteCopy = palette;
  [(NTKGlobetrotterDialView *)globetrotterDialView setPalette:paletteCopy];
  [(NTKGlobetrotterTimeView *)self->_globetrotterTimeView setPalette:paletteCopy];
  innerComplication = [paletteCopy innerComplication];
  outerComplication = [paletteCopy outerComplication];

  [(NTKGlobetrotterFaceView *)self updateRichCornerComplicationsInnerColor:innerComplication outerColor:outerComplication];
}

- (void)_updateTimeZoneHourOffset
{
  v6 = NTKIdealizedDate();
  v3 = +[NSTimeZone localTimeZone];
  v4 = [(NSTimeZone *)self->_referenceTimeZone secondsFromGMTForDate:v6];
  v5 = ([v3 secondsFromGMTForDate:v6] - v4) / 3600;
  self->_timeZoneHourOffset = v5;
  [(NTKGlobetrotterDialView *)self->_globetrotterDialView setTimeZoneHourOffset:v5];
  [(NTKGlobetrotterTimeView *)self->_globetrotterTimeView setTimeZoneHourOffset:v5 animated:1];
}

- (id)_keylineViewForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slotCopy = slot;
  if (mode == 19)
  {
    [(NTKGlobetrotterFaceView *)self _faceEditingScaleForEditMode:19 slot:slotCopy];
    hourMarkerDialView = [(NTKGlobetrotterDialView *)self->_globetrotterDialView hourMarkerDialView];
    [hourMarkerDialView frame];
    CGRectGetWidth(v14);
    v9 = NTKKeylineViewWithCircle();
  }

  else
  {
    if (mode == 15)
    {
      [(NTKGlobetrotterFaceView *)self _faceEditingScaleForEditMode:15 slot:slotCopy];
      [(NTKGlobetrotterTimeView *)self->_globetrotterTimeView bounds];
      CGRectGetWidth(v13);
      v7 = NTKKeylineViewWithCircle();
    }

    else
    {
      v11.receiver = self;
      v11.super_class = NTKGlobetrotterFaceView;
      v7 = [(NTKGlobetrotterFaceView *)&v11 _keylineViewForCustomEditMode:mode slot:slotCopy];
    }

    v9 = v7;
  }

  return v9;
}

- (CGRect)_relativeKeylineFrameForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slotCopy = slot;
  if (mode == 19)
  {
    globetrotterDialView = self->_globetrotterDialView;
    hourMarkerDialView = [(NTKGlobetrotterDialView *)globetrotterDialView hourMarkerDialView];
    [hourMarkerDialView frame];
    [(NTKGlobetrotterDialView *)globetrotterDialView convertRect:self toView:?];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
  }

  else
  {
    if (mode == 15)
    {
      [(UIView *)self->_timeViewContainerView frame];
    }

    else
    {
      v25.receiver = self;
      v25.super_class = NTKGlobetrotterFaceView;
      [(NTKGlobetrotterFaceView *)&v25 _relativeKeylineFrameForCustomEditMode:mode slot:slotCopy];
    }

    v14 = v7;
    v16 = v8;
    v18 = v9;
    v20 = v10;
  }

  v21 = v14;
  v22 = v16;
  v23 = v18;
  v24 = v20;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (unint64_t)_keylineLabelAlignmentForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slotCopy = slot;
  v7 = &stru_68 + 44;
  if (mode != 15 && mode != 19)
  {
    v9.receiver = self;
    v9.super_class = NTKGlobetrotterFaceView;
    v7 = [(NTKGlobetrotterFaceView *)&v9 _keylineLabelAlignmentForCustomEditMode:mode slot:slotCopy];
  }

  return v7;
}

- (void)_configureComplicationView:(id)view forSlot:(id)slot
{
  viewCopy = view;
  v11.receiver = self;
  v11.super_class = NTKGlobetrotterFaceView;
  [(NTKGlobetrotterFaceView *)&v11 _configureComplicationView:viewCopy forSlot:slot];
  v7 = viewCopy;
  globetrotterPalette = [(NTKGlobetrotterFaceView *)self globetrotterPalette];
  innerComplication = [globetrotterPalette innerComplication];
  [(NTKGlobetrotterFaceView *)self setComplicationColor:innerComplication];
  [(NTKGlobetrotterFaceView *)self setInterpolatedComplicationColor:innerComplication];
  outerComplication = [globetrotterPalette outerComplication];
  [(NTKGlobetrotterFaceView *)self setAlternateComplicationColor:outerComplication];

  [v7 updateMonochromeColor];
}

- (void)_prepareForEditing
{
  [(NTKGlobetrotterDialView *)self->_globetrotterDialView prepareForEditing];
  globetrotterTimeView = self->_globetrotterTimeView;

  [(NTKGlobetrotterTimeView *)globetrotterTimeView prepareForEditing];
}

- (void)_cleanupAfterEditing
{
  [(NTKGlobetrotterDialView *)self->_globetrotterDialView cleanupAfterEditing];
  globetrotterTimeView = self->_globetrotterTimeView;

  [(NTKGlobetrotterTimeView *)globetrotterTimeView cleanupAfterEditing];
}

- (void)_configureForEditMode:(int64_t)mode
{
  [(NTKGlobetrotterFaceView *)self _timeViewScaleForEditMode:?];
  memset(&v16, 0, sizeof(v16));
  CGAffineTransformMakeScale(&v16, v5, v5);
  v15 = v16;
  [(NTKGlobetrotterTimeView *)self->_globetrotterTimeView setTransform:&v15];
  [(NTKGlobetrotterFaceView *)self _timeViewContainerViewAlphaForEditMode:mode];
  [(UIView *)self->_timeViewContainerView setAlpha:?];
  [(NTKGlobetrotterFaceView *)self _dialViewAlphaForEditMode:mode];
  [(NTKGlobetrotterDialView *)self->_globetrotterDialView setAlpha:?];
  globetrotterDialView = self->_globetrotterDialView;
  [(NTKGlobetrotterFaceView *)self _globetrotterCitySubviewsAlphaForEditMode:mode];
  [(NTKGlobetrotterDialView *)globetrotterDialView setAlphaForNonHourMarkerSubviews:?];
  [(NTKGlobetrotterFaceView *)self _complicationAlphaForEditMode:mode];
  v8 = v7;
  complicationContainerView = [(NTKGlobetrotterFaceView *)self complicationContainerView];
  [complicationContainerView setAlpha:v8];

  style = [(NTKGlobetrotterTimeView *)self->_globetrotterTimeView style];
  [(NTKGlobetrotterFaceView *)self _timeViewAlphaForEditMode:mode];
  v12 = v11;
  globetrotterTimeView = self->_globetrotterTimeView;
  if (style)
  {
    [(NTKGlobetrotterTimeView *)globetrotterTimeView digitalTimeLabel];
  }

  else
  {
    [(NTKGlobetrotterTimeView *)globetrotterTimeView analogHandsView];
  }
  v14 = ;
  [v14 setAlpha:v12];
}

- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode
{
  [(NTKGlobetrotterFaceView *)self _timeViewScaleForEditMode:?];
  [(NTKGlobetrotterFaceView *)self _timeViewScaleForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  memset(&v18, 0, sizeof(v18));
  CGAffineTransformMakeScale(&v18, v8, v8);
  v17 = v18;
  [(NTKGlobetrotterTimeView *)self->_globetrotterTimeView setTransform:&v17];
  [(NTKGlobetrotterFaceView *)self _timeViewContainerViewAlphaForEditMode:mode];
  [(NTKGlobetrotterFaceView *)self _timeViewContainerViewAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  [(UIView *)self->_timeViewContainerView setAlpha:?];
  [(NTKGlobetrotterFaceView *)self _dialViewAlphaForEditMode:mode];
  [(NTKGlobetrotterFaceView *)self _dialViewAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  [(NTKGlobetrotterDialView *)self->_globetrotterDialView setAlpha:?];
  [(NTKGlobetrotterFaceView *)self _complicationAlphaForEditMode:mode];
  [(NTKGlobetrotterFaceView *)self _complicationAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  v10 = v9;
  complicationContainerView = [(NTKGlobetrotterFaceView *)self complicationContainerView];
  [complicationContainerView setAlpha:v10];

  [(NTKGlobetrotterFaceView *)self _globetrotterCitySubviewsAlphaForEditMode:mode];
  [(NTKGlobetrotterFaceView *)self _globetrotterCitySubviewsAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  [(NTKGlobetrotterDialView *)self->_globetrotterDialView setAlphaForNonHourMarkerSubviews:?];
  style = [(NTKGlobetrotterTimeView *)self->_globetrotterTimeView style];
  [(NTKGlobetrotterFaceView *)self _timeViewAlphaForEditMode:mode];
  [(NTKGlobetrotterFaceView *)self _timeViewAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  v14 = v13;
  globetrotterTimeView = self->_globetrotterTimeView;
  if (style)
  {
    [(NTKGlobetrotterTimeView *)globetrotterTimeView digitalTimeLabel];
  }

  else
  {
    [(NTKGlobetrotterTimeView *)globetrotterTimeView analogHandsView];
  }
  v16 = ;
  [v16 setAlpha:v14];
}

- (double)_timeViewScaleForEditMode:(int64_t)mode
{
  v3 = 1.0;
  if (mode == 15)
  {
    device = [(NTKGlobetrotterFaceView *)self device];
    sub_58A4(device, device);
    v3 = v5;
  }

  return v3;
}

- (double)_dialViewAlphaForEditMode:(int64_t)mode
{
  v3 = mode == 1 || mode == 15;
  result = NTKEditModeDimmedAlpha;
  if (!v3)
  {
    return 1.0;
  }

  return result;
}

- (double)_timeViewContainerViewAlphaForEditMode:(int64_t)mode
{
  result = NTKEditModeDimmedAlpha;
  if (mode != 1)
  {
    return 1.0;
  }

  return result;
}

- (double)_globetrotterCitySubviewsAlphaForEditMode:(int64_t)mode
{
  result = NTKEditModeDimmedAlpha;
  if (mode != 19)
  {
    return 1.0;
  }

  return result;
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

- (double)_timeViewAlphaForEditMode:(int64_t)mode
{
  result = NTKEditModeDimmedAlpha;
  if (mode != 10)
  {
    return 1.0;
  }

  return result;
}

- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  slotCopy = slot;
  switch(mode)
  {
    case 10:
      globetrotterPalette = [(NTKGlobetrotterFaceView *)self globetrotterPalette];
      [(NTKGlobetrotterFaceView *)self _updateViewColorsWithPalette:globetrotterPalette];

      break;
    case 19:
      -[NTKGlobetrotterFaceView _setNumerals:](self, "_setNumerals:", [optionCopy numeralOption]);
      break;
    case 15:
      -[NTKGlobetrotterTimeView setStyle:](self->_globetrotterTimeView, "setStyle:", [optionCopy style]);
      break;
  }
}

- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  toOptionCopy = toOption;
  slotCopy = slot;
  switch(mode)
  {
    case 10:
      interpolatedColorPalette = [(NTKGlobetrotterFaceView *)self interpolatedColorPalette];
      [(NTKGlobetrotterFaceView *)self _updateViewColorsWithPalette:interpolatedColorPalette];

      break;
    case 19:
      [(NTKGlobetrotterTimeView *)self->_globetrotterTimeView applyTransitionFraction:optionCopy fromNumeralOption:toOptionCopy toNumeralOption:fraction];
      [(NTKGlobetrotterDialView *)self->_globetrotterDialView applyTransitionFraction:optionCopy fromNumeralOption:toOptionCopy toNumeralOption:fraction];
      break;
    case 15:
      -[NTKGlobetrotterTimeView applyTransitionFraction:fromStyle:toStyle:](self->_globetrotterTimeView, "applyTransitionFraction:fromStyle:toStyle:", [optionCopy style], objc_msgSend(toOptionCopy, "style"), fraction);
      break;
  }
}

- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  NTKLargeElementScaleForBreathingFraction();
  memset(&v16, 0, sizeof(v16));
  CGAffineTransformMakeScale(&v16, v7, v7);
  switch(mode)
  {
    case 10:
      v13 = v16;
      contentView = [(NTKGlobetrotterFaceView *)self contentView];
      v15 = v13;
      [contentView setTransform:&v15];

      v12 = v16;
      complicationContainerView = [(NTKGlobetrotterFaceView *)self complicationContainerView];
      v9 = complicationContainerView;
      *&v15.a = *&v12.a;
      *&v15.c = *&v12.c;
      v10 = *&v12.tx;
      goto LABEL_7;
    case 19:
      v15 = v16;
      [(UIView *)self->_timeViewContainerView setTransform:&v15];
      v14 = v16;
      complicationContainerView = [(NTKGlobetrotterDialView *)self->_globetrotterDialView hourMarkerDialView];
      v9 = complicationContainerView;
      *&v15.a = *&v14.a;
      *&v15.c = *&v14.c;
      v10 = *&v14.tx;
LABEL_7:
      *&v15.tx = v10;
      [complicationContainerView setTransform:&v15];

      return;
    case 15:
      v15 = v16;
      [(UIView *)self->_timeViewContainerView setTransform:&v15];
      break;
  }
}

- (void)_setNumerals:(unint64_t)numerals
{
  v4 = CLKLocaleNumberSystemFromNumeralOption();
  if (self->_numberSystem != v4)
  {
    v5 = v4;
    self->_numberSystem = v4;
    device = [(NTKGlobetrotterFaceView *)self device];
    v7 = NTKShowIndicScriptNumerals();

    if (v7)
    {
      [(NTKGlobetrotterTimeView *)self->_globetrotterTimeView setNumberSystem:v5];
      globetrotterDialView = self->_globetrotterDialView;

      [(NTKGlobetrotterDialView *)globetrotterDialView setNumberSystem:v5];
    }
  }
}

- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  NTKScaleForRubberBandingFraction();
  memset(&v16, 0, sizeof(v16));
  CGAffineTransformMakeScale(&v16, v7, v7);
  switch(mode)
  {
    case 10:
      v13 = v16;
      contentView = [(NTKGlobetrotterFaceView *)self contentView];
      v15 = v13;
      [contentView setTransform:&v15];

      v12 = v16;
      complicationContainerView = [(NTKGlobetrotterFaceView *)self complicationContainerView];
      v9 = complicationContainerView;
      *&v15.a = *&v12.a;
      *&v15.c = *&v12.c;
      v10 = *&v12.tx;
      goto LABEL_7;
    case 19:
      v15 = v16;
      [(UIView *)self->_timeViewContainerView setTransform:&v15];
      v14 = v16;
      complicationContainerView = [(NTKGlobetrotterDialView *)self->_globetrotterDialView hourMarkerDialView];
      v9 = complicationContainerView;
      *&v15.a = *&v14.a;
      *&v15.c = *&v14.c;
      v10 = *&v14.tx;
LABEL_7:
      *&v15.tx = v10;
      [complicationContainerView setTransform:&v15];

      return;
    case 15:
      v15 = v16;
      [(UIView *)self->_timeViewContainerView setTransform:&v15];
      break;
  }
}

- (id)createFaceColorPalette
{
  v2 = [[NTKGlobetrotterFaceColorPalette alloc] initWithFaceClass:objc_opt_class()];

  return v2;
}

+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device
{
  if (options == 15)
  {
    return &off_11280;
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
  if (mode == 19)
  {
    _digitalLabelFont = [(NTKGlobetrotterTimeView *)self->_globetrotterTimeView _digitalLabelFont];
    device = [(NTKGlobetrotterFaceView *)self device];
    v15 = [optionCopy swatchImageWithFont:_digitalLabelFont device:device baseline:0.0];
LABEL_9:

    goto LABEL_11;
  }

  if (mode == 15)
  {
    if (qword_15BF0 != -1)
    {
      sub_92E4();
    }

    _digitalLabelFont = optionCopy;
    device = [optionsCopy objectForKeyedSubscript:&off_116D0];
    v12 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [_digitalLabelFont style]);
    identifier = [device identifier];
    v14 = [NSString stringWithFormat:@"%@-%@", v12, identifier];

    v15 = [qword_15BE8 objectForKey:v14];
    if (!v15)
    {
      v16 = [NTKGlobetrotterFaceView alloc];
      device2 = [(NTKGlobetrotterFaceView *)self device];
      v18 = [(NTKGlobetrotterFaceView *)v16 initWithFaceStyle:44 forDevice:device2 clientIdentifier:0];

      [(NTKGlobetrotterFaceView *)self frame];
      [v18 setFrame:?];
      [v18 _loadSnapshotContentViews];
      [v18 setOption:_digitalLabelFont forCustomEditMode:15 slot:0];
      [v18 setOption:device forCustomEditMode:10 slot:0];
      v19 = NTKIdealizedDate();
      [v18 setOverrideDate:v19 duration:0.0];

      timeView = [v18 timeView];
      [timeView bounds];
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;

      v35.width = v26;
      v35.height = v28;
      UIGraphicsBeginImageContextWithOptions(v35, 0, 0.0);
      globeSnapshotImage = [v18[1] globeSnapshotImage];
      [globeSnapshotImage drawInRect:{v22, v24, v26, v28}];

      timeView2 = [v18 timeView];
      layer = [timeView2 layer];
      [layer renderInContext:UIGraphicsGetCurrentContext()];

      v15 = UIGraphicsGetImageFromCurrentImageContext();
      UIGraphicsEndImageContext();
      [qword_15BE8 setObject:v15 forKey:v14];
    }

    goto LABEL_9;
  }

  v33.receiver = self;
  v33.super_class = NTKGlobetrotterFaceView;
  v15 = [(NTKGlobetrotterFaceView *)&v33 _swatchImageForEditOption:optionCopy mode:mode withSelectedOptions:optionsCopy];
LABEL_11:

  return v15;
}

@end