@interface NTKSeltzerFaceView
+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device;
- (CGRect)_relativeKeylineFrameForCustomEditMode:(int64_t)mode slot:(id)slot;
- (NTKSeltzerFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier;
- (double)_backgroundImageViewAlphaForEditMode:(int64_t)mode;
- (double)_complicationsAlphaForEditMode:(int64_t)mode;
- (double)_dialViewAlphaForEditMode:(int64_t)mode;
- (double)_timeViewContainerViewAlphaForEditMode:(int64_t)mode;
- (double)_timeViewScaleForEditMode:(int64_t)mode;
- (id)_keylineViewForCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options;
- (id)createFaceColorPalette;
- (unint64_t)_keylineLabelAlignmentForCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyBreathingAndRubberBandingForEditMode:(int64_t)mode;
- (void)_applyDataMode;
- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_cleanupAfterEditing;
- (void)_configureComplicationView:(id)view forSlot:(id)slot;
- (void)_configureForEditMode:(int64_t)mode;
- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode;
- (void)_loadBackgroundView;
- (void)_loadCornerOverlayView;
- (void)_loadDialView;
- (void)_loadSnapshotContentViews;
- (void)_loadTimeView;
- (void)_loadUI;
- (void)_prepareForEditing;
- (void)_unloadBackgroundView;
- (void)_unloadCornerOverlayView;
- (void)_unloadDialView;
- (void)_unloadSnapshotContentViews;
- (void)_unloadTimeView;
- (void)_unloadUI;
- (void)_updateUI;
- (void)_updateViewColorsWithPalette:(id)palette;
- (void)layoutSubviews;
- (void)setOverrideDate:(id)date duration:(double)duration;
@end

@implementation NTKSeltzerFaceView

- (NTKSeltzerFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier
{
  deviceCopy = device;
  v14.receiver = self;
  v14.super_class = NTKSeltzerFaceView;
  v9 = [(NTKSeltzerFaceView *)&v14 initWithFaceStyle:style forDevice:deviceCopy clientIdentifier:identifier];
  if (v9)
  {
    memset(v13, 0, sizeof(v13));
    sub_4944(deviceCopy, v13);
    v10 = [NTKWhistlerAnalogFaceViewComplicationFactory alloc];
    v11 = [v10 initWithFaceView:v9 dialDiameter:deviceCopy device:*&v13[0].receiver];
    [v11 setUsesNarrowTopSlots:1];
    [(NTKSeltzerFaceView *)v9 setComplicationFactory:v11];
  }

  return v9;
}

- (void)_loadSnapshotContentViews
{
  v3.receiver = self;
  v3.super_class = NTKSeltzerFaceView;
  [(NTKSeltzerFaceView *)&v3 _loadSnapshotContentViews];
  [(NTKSeltzerFaceView *)self _loadUI];
}

- (void)_unloadSnapshotContentViews
{
  [(NTKSeltzerFaceView *)self _unloadUI];
  v3.receiver = self;
  v3.super_class = NTKSeltzerFaceView;
  [(NTKSeltzerFaceView *)&v3 _unloadSnapshotContentViews];
}

- (void)setOverrideDate:(id)date duration:(double)duration
{
  v7.receiver = self;
  v7.super_class = NTKSeltzerFaceView;
  dateCopy = date;
  [(NTKSeltzerFaceView *)&v7 setOverrideDate:dateCopy duration:duration];
  [(NTKSeltzerDialView *)self->_seltzerDialView setOverrideDate:dateCopy duration:duration, v7.receiver, v7.super_class];
}

- (void)_applyDataMode
{
  v6.receiver = self;
  v6.super_class = NTKSeltzerFaceView;
  [(NTKSeltzerFaceView *)&v6 _applyDataMode];
  dataMode = [(NTKSeltzerFaceView *)self dataMode];
  v4 = dataMode;
  if (dataMode == (&dword_0 + 1))
  {
    v5 = 1;
    goto LABEL_6;
  }

  if (dataMode == &dword_4 || dataMode == (&dword_0 + 3))
  {
    v5 = 0;
LABEL_6:
    [(NTKSeltzerDialView *)self->_seltzerDialView setUserInteractionEnabled:v5];
  }

  [(NTKSeltzerTimeView *)self->_seltzerTimeView applyDataMode:v4];
}

- (void)_loadUI
{
  [(NTKSeltzerFaceView *)self _loadBackgroundView];
  [(NTKSeltzerFaceView *)self _loadCornerOverlayView];
  [(NTKSeltzerFaceView *)self _loadTimeView];

  [(NTKSeltzerFaceView *)self _loadDialView];
}

- (void)_unloadUI
{
  [(NTKSeltzerFaceView *)self _unloadDialView];
  [(NTKSeltzerFaceView *)self _unloadTimeView];
  [(NTKSeltzerFaceView *)self _unloadCornerOverlayView];

  [(NTKSeltzerFaceView *)self _unloadBackgroundView];
}

- (void)_loadBackgroundView
{
  v6 = [NTKSeltzerFaceBundle imageWithName:@"starfield"];
  v3 = [[UIImageView alloc] initWithImage:v6];
  backgroundImageView = self->_backgroundImageView;
  self->_backgroundImageView = v3;

  contentView = [(NTKSeltzerFaceView *)self contentView];
  [contentView addSubview:self->_backgroundImageView];
}

- (void)_unloadBackgroundView
{
  [(UIImageView *)self->_backgroundImageView removeFromSuperview];
  backgroundImageView = self->_backgroundImageView;
  self->_backgroundImageView = 0;
}

- (void)_loadCornerOverlayView
{
  v3 = [NTKRoundedCornerOverlayView alloc];
  contentView = [(NTKSeltzerFaceView *)self contentView];
  [contentView bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  device = [(NTKSeltzerFaceView *)self device];
  v14 = [v3 initWithFrame:device forDeviceCornerRadius:{v6, v8, v10, v12}];
  cornerOverlayView = self->_cornerOverlayView;
  self->_cornerOverlayView = v14;

  contentView2 = [(NTKSeltzerFaceView *)self contentView];
  [contentView2 addSubview:self->_cornerOverlayView];
}

- (void)_unloadCornerOverlayView
{
  [(NTKRoundedCornerOverlayView *)self->_cornerOverlayView removeFromSuperview];
  cornerOverlayView = self->_cornerOverlayView;
  self->_cornerOverlayView = 0;
}

- (void)_loadTimeView
{
  device = [(NTKSeltzerFaceView *)self device];
  sub_4944(device, &v10);
  v3 = *(&v10 + 1);
  v4 = [[UIView alloc] initWithFrame:{0.0, 0.0, v3, v3}];
  timeViewContainerView = self->_timeViewContainerView;
  self->_timeViewContainerView = v4;

  contentView = [(NTKSeltzerFaceView *)self contentView];
  [contentView addSubview:self->_timeViewContainerView];

  v7 = [[NTKSeltzerTimeView alloc] initWithFrame:0 style:device andDevice:0.0, 0.0, v3, v3];
  seltzerTimeView = self->_seltzerTimeView;
  self->_seltzerTimeView = v7;

  [(UIView *)self->_timeViewContainerView addSubview:self->_seltzerTimeView];
  [(NTKSeltzerFaceView *)self setTimeView:self->_seltzerTimeView];
}

- (void)_unloadTimeView
{
  [(NTKSeltzerTimeView *)self->_seltzerTimeView removeFromSuperview];
  seltzerTimeView = self->_seltzerTimeView;
  self->_seltzerTimeView = 0;

  [(UIView *)self->_timeViewContainerView removeFromSuperview];
  timeViewContainerView = self->_timeViewContainerView;
  self->_timeViewContainerView = 0;
}

- (void)_loadDialView
{
  device = [(NTKSeltzerFaceView *)self device];
  sub_4944(device, v11);
  v3 = v11[0];
  v4 = [NTKSeltzerDialView alloc];
  calendar = self->_calendar;
  colorPalette = [(NTKSeltzerFaceView *)self colorPalette];
  v7 = [(NTKSeltzerDialView *)v4 initWithFrame:device device:calendar calendar:colorPalette palette:0.0, 0.0, v3, v3];
  seltzerDialView = self->_seltzerDialView;
  self->_seltzerDialView = v7;

  contentView = [(NTKSeltzerFaceView *)self contentView];
  [contentView addSubview:self->_seltzerDialView];
}

- (void)_unloadDialView
{
  [(NTKSeltzerDialView *)self->_seltzerDialView removeFromSuperview];
  seltzerDialView = self->_seltzerDialView;
  self->_seltzerDialView = 0;
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = NTKSeltzerFaceView;
  [(NTKSeltzerFaceView *)&v12 layoutSubviews];
  contentView = [(NTKSeltzerFaceView *)self contentView];
  [contentView bounds];
  CLKRectGetCenter();
  v5 = v4;
  v7 = v6;

  [(UIView *)self->_timeViewContainerView bounds];
  CLKRectGetCenter();
  v9 = v8;
  v11 = v10;
  [(UIImageView *)self->_backgroundImageView setCenter:v5, v7];
  [(UIView *)self->_timeViewContainerView setCenter:v5, v7];
  [(NTKSeltzerTimeView *)self->_seltzerTimeView setCenter:v9, v11];
  [(NTKSeltzerDialView *)self->_seltzerDialView setCenter:v5, v7];
}

- (void)_updateUI
{
  [(NTKSeltzerDialView *)self->_seltzerDialView updateDialUI];
  seltzerTimeView = self->_seltzerTimeView;

  [(NTKSeltzerTimeView *)seltzerTimeView updateSunLocation];
}

- (id)_keylineViewForCustomEditMode:(int64_t)mode slot:(id)slot
{
  if (mode == 15)
  {
    [(NTKSeltzerFaceView *)self _faceEditingScaleForEditMode:15 slot:slot];
    [(NTKSeltzerTimeView *)self->_seltzerTimeView bounds];
    CGRectGetWidth(v9);
    v5 = NTKKeylineViewWithCircle();
  }

  else
  {
    v7.receiver = self;
    v7.super_class = NTKSeltzerFaceView;
    v5 = [(NTKSeltzerFaceView *)&v7 _keylineViewForCustomEditMode:mode slot:slot];
  }

  return v5;
}

- (CGRect)_relativeKeylineFrameForCustomEditMode:(int64_t)mode slot:(id)slot
{
  if (mode == 15)
  {
    v5 = [(NTKSeltzerFaceView *)self device:15];
    sub_4944(v5, &v18);
    v6 = *(&v18 + 1);

    contentView = [(NTKSeltzerFaceView *)self contentView];
    [contentView bounds];
    CLKRectGetCenter();
    v9 = v8;
    v11 = v10;

    v12 = v9 - v6 * 0.5;
    v13 = v11 - v6 * 0.5;
    v14 = v6;
  }

  else
  {
    v17.receiver = self;
    v17.super_class = NTKSeltzerFaceView;
    [(NTKSeltzerFaceView *)&v17 _relativeKeylineFrameForCustomEditMode:mode slot:slot];
    v6 = v15;
  }

  v16 = v6;
  result.size.height = v14;
  result.size.width = v16;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (unint64_t)_keylineLabelAlignmentForCustomEditMode:(int64_t)mode slot:(id)slot
{
  if (mode == 15)
  {
    return 148;
  }

  v8 = v4;
  v9 = v5;
  v7.receiver = self;
  v7.super_class = NTKSeltzerFaceView;
  return [(NTKSeltzerFaceView *)&v7 _keylineLabelAlignmentForCustomEditMode:mode slot:slot];
}

- (void)_configureComplicationView:(id)view forSlot:(id)slot
{
  viewCopy = view;
  v11.receiver = self;
  v11.super_class = NTKSeltzerFaceView;
  [(NTKSeltzerFaceView *)&v11 _configureComplicationView:viewCopy forSlot:slot];
  v7 = viewCopy;
  [v7 setFontStyle:1];
  colorPalette = [(NTKSeltzerFaceView *)self colorPalette];
  innerComplication = [colorPalette innerComplication];
  [(NTKSeltzerFaceView *)self setComplicationColor:innerComplication];
  [(NTKSeltzerFaceView *)self setInterpolatedComplicationColor:innerComplication];
  outerComplication = [colorPalette outerComplication];
  [(NTKSeltzerFaceView *)self setAlternateComplicationColor:outerComplication];

  [v7 updateMonochromeColor];
}

- (void)_prepareForEditing
{
  v4.receiver = self;
  v4.super_class = NTKSeltzerFaceView;
  [(NTKSeltzerFaceView *)&v4 _prepareForEditing];
  contentView = [(NTKSeltzerFaceView *)self contentView];
  [contentView setClipsToBounds:1];
}

- (void)_cleanupAfterEditing
{
  v4.receiver = self;
  v4.super_class = NTKSeltzerFaceView;
  [(NTKSeltzerFaceView *)&v4 _cleanupAfterEditing];
  contentView = [(NTKSeltzerFaceView *)self contentView];
  [contentView setClipsToBounds:0];
}

- (void)_configureForEditMode:(int64_t)mode
{
  [(NTKSeltzerFaceView *)self _timeViewScaleForEditMode:?];
  memset(&v10, 0, sizeof(v10));
  CGAffineTransformMakeScale(&v10, v5, v5);
  v9 = v10;
  [(NTKSeltzerTimeView *)self->_seltzerTimeView setTransform:&v9];
  [(NTKSeltzerFaceView *)self _dialViewAlphaForEditMode:mode];
  [(NTKSeltzerDialView *)self->_seltzerDialView setAlpha:?];
  [(NTKSeltzerFaceView *)self _backgroundImageViewAlphaForEditMode:mode];
  [(UIImageView *)self->_backgroundImageView setAlpha:?];
  [(NTKSeltzerFaceView *)self _timeViewContainerViewAlphaForEditMode:mode];
  [(UIView *)self->_timeViewContainerView setAlpha:?];
  [(NTKSeltzerFaceView *)self _complicationsAlphaForEditMode:mode];
  v7 = v6;
  complicationContainerView = [(NTKSeltzerFaceView *)self complicationContainerView];
  [complicationContainerView setAlpha:v7];
}

- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode
{
  [(NTKSeltzerFaceView *)self _timeViewScaleForEditMode:?];
  [(NTKSeltzerFaceView *)self _timeViewScaleForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  memset(&v13, 0, sizeof(v13));
  CGAffineTransformMakeScale(&v13, v8, v8);
  v12 = v13;
  [(NTKSeltzerTimeView *)self->_seltzerTimeView setTransform:&v12];
  [(NTKSeltzerFaceView *)self _dialViewAlphaForEditMode:mode];
  [(NTKSeltzerFaceView *)self _dialViewAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  [(NTKSeltzerDialView *)self->_seltzerDialView setAlpha:?];
  [(NTKSeltzerFaceView *)self _backgroundImageViewAlphaForEditMode:mode];
  [(NTKSeltzerFaceView *)self _backgroundImageViewAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  [(UIImageView *)self->_backgroundImageView setAlpha:?];
  [(NTKSeltzerFaceView *)self _timeViewContainerViewAlphaForEditMode:mode];
  [(NTKSeltzerFaceView *)self _timeViewContainerViewAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  [(UIView *)self->_timeViewContainerView setAlpha:?];
  [(NTKSeltzerFaceView *)self _complicationsAlphaForEditMode:mode];
  [(NTKSeltzerFaceView *)self _complicationsAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  v10 = v9;
  complicationContainerView = [(NTKSeltzerFaceView *)self complicationContainerView];
  [complicationContainerView setAlpha:v10];
}

- (double)_timeViewScaleForEditMode:(int64_t)mode
{
  if (mode == 10)
  {
    device = [(NTKSeltzerFaceView *)self device];
    sub_4944(device, &v7);
    v5 = &v8;
    goto LABEL_5;
  }

  v3 = 1.0;
  if (mode == 15)
  {
    device = [(NTKSeltzerFaceView *)self device];
    sub_4944(device, &v9);
    v5 = &v10;
LABEL_5:
    v3 = *v5;
  }

  return v3;
}

- (double)_dialViewAlphaForEditMode:(int64_t)mode
{
  result = 1.0;
  if (mode)
  {
    if (mode != 12)
    {
      return NTKEditModeDimmedAlpha;
    }
  }

  return result;
}

- (double)_backgroundImageViewAlphaForEditMode:(int64_t)mode
{
  result = NTKEditModeDimmedAlpha;
  if (!mode)
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

- (double)_complicationsAlphaForEditMode:(int64_t)mode
{
  result = NTKEditModeDimmedAlpha;
  if (mode < 2)
  {
    return 1.0;
  }

  return result;
}

- (void)_applyBreathingAndRubberBandingForEditMode:(int64_t)mode
{
  breathingFraction = self->_breathingFraction;
  NTKLargeElementScaleForBreathingFraction();
  v7 = v6;
  rubberBandingFraction = self->_rubberBandingFraction;
  NTKScaleForRubberBandingFraction();
  memset(&v15, 0, sizeof(v15));
  CGAffineTransformMakeScale(&v15, v7 * v9, v7 * v9);
  if (mode == 10)
  {
LABEL_4:
    v14 = v15;
    contentView = [(NTKSeltzerFaceView *)self contentView];
    v13 = v14;
    [contentView setTransform:&v13];

    v12 = v15;
    complicationContainerView = [(NTKSeltzerFaceView *)self complicationContainerView];
    v13 = v12;
    [complicationContainerView setTransform:&v13];

    return;
  }

  if (mode != 15)
  {
    if (mode != 12)
    {
      return;
    }

    goto LABEL_4;
  }

  v13 = v15;
  [(UIView *)self->_timeViewContainerView setTransform:&v13];
}

- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  slotCopy = slot;
  switch(mode)
  {
    case 10:
      colorPalette = [(NTKSeltzerFaceView *)self colorPalette];
      [(NTKSeltzerFaceView *)self _updateViewColorsWithPalette:colorPalette];

      break;
    case 15:
      -[NTKSeltzerTimeView setStyle:](self->_seltzerTimeView, "setStyle:", [optionCopy style]);
      break;
    case 12:
      calendar = [optionCopy calendar];
      self->_calendar = calendar;
      [(NTKSeltzerDialView *)self->_seltzerDialView setCalendar:calendar];
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
      interpolatedColorPalette = [(NTKSeltzerFaceView *)self interpolatedColorPalette];
      [(NTKSeltzerFaceView *)self _updateViewColorsWithPalette:interpolatedColorPalette];

      break;
    case 15:
      -[NTKSeltzerTimeView applyTransitionFraction:fromStyle:toStyle:](self->_seltzerTimeView, "applyTransitionFraction:fromStyle:toStyle:", [optionCopy style], objc_msgSend(toOptionCopy, "style"), fraction);
      break;
    case 12:
      -[NTKSeltzerDialView applyTransitionFraction:fromCalendar:toCalendar:](self->_seltzerDialView, "applyTransitionFraction:fromCalendar:toCalendar:", [optionCopy calendar], objc_msgSend(toOptionCopy, "calendar"), fraction);
      break;
  }
}

- (id)createFaceColorPalette
{
  v2 = [[NTKSeltzerColorPalette alloc] initWithFaceClass:objc_opt_class()];

  return v2;
}

- (void)_updateViewColorsWithPalette:(id)palette
{
  seltzerTimeView = self->_seltzerTimeView;
  paletteCopy = palette;
  [(NTKSeltzerTimeView *)seltzerTimeView setPalette:paletteCopy];
  innerComplication = [paletteCopy innerComplication];
  outerComplication = [paletteCopy outerComplication];

  [(NTKSeltzerFaceView *)self updateRichCornerComplicationsInnerColor:innerComplication outerColor:outerComplication];
}

+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device
{
  if (options == 15)
  {
    v6 = &off_10EC0;
  }

  else
  {
    v9 = v4;
    v10 = v5;
    v8.receiver = self;
    v8.super_class = &OBJC_METACLASS___NTKSeltzerFaceView;
    v6 = objc_msgSendSuper2(&v8, "_swatchForEditModeDependsOnOptions:forDevice:", options, device);
  }

  return v6;
}

- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options
{
  optionCopy = option;
  optionsCopy = options;
  if (mode == 15)
  {
    if (qword_15CF8 != -1)
    {
      sub_9074();
    }

    v10 = optionCopy;
    v11 = [optionsCopy objectForKeyedSubscript:&off_10DA0];
    v12 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v10 style]);
    identifier = [v11 identifier];
    v14 = [NSString stringWithFormat:@"%@-%@", v12, identifier];

    v15 = [qword_15CF0 objectForKey:v14];
    if (!v15)
    {
      v16 = [NTKSeltzerFaceView alloc];
      device = [(NTKSeltzerFaceView *)self device];
      v18 = [(NTKSeltzerFaceView *)v16 initWithFaceStyle:44 forDevice:device clientIdentifier:0];

      [(NTKSeltzerFaceView *)self frame];
      [(NTKSeltzerFaceView *)v18 setFrame:?];
      [(NTKSeltzerFaceView *)v18 _loadSnapshotContentViews];
      [(NTKSeltzerFaceView *)v18 setOption:v10 forCustomEditMode:15 slot:0];
      [(NTKSeltzerFaceView *)v18 setOption:v11 forCustomEditMode:10 slot:0];
      v19 = NTKIdealizedDate();
      [(NTKSeltzerFaceView *)v18 setOverrideDate:v19 duration:0.0];

      memset(v47, 0, 32);
      v46 = 0u;
      device2 = [(NTKSeltzerFaceView *)self device];
      sub_4944(device2, &v46);

      timeView = [(NTKSeltzerFaceView *)v18 timeView];
      [timeView bounds];
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v29 = v28;
      style = [timeView style];
      v31 = v47 + 1;
      if (!style)
      {
        v31 = v47;
      }

      v49.origin.x = v23;
      v49.origin.y = v25;
      v49.size.width = v27;
      v49.size.height = v29;
      v50 = CGRectInset(v49, *v31, *v31);
      x = v50.origin.x;
      y = v50.origin.y;
      width = v50.size.width;
      height = v50.size.height;
      v36 = [[UIGraphicsImageRenderer alloc] initWithBounds:{v23, v25, v27, v29}];
      v40[0] = _NSConcreteStackBlock;
      v40[1] = 3221225472;
      v40[2] = sub_4818;
      v40[3] = &unk_10510;
      v41 = timeView;
      v42 = x;
      v43 = y;
      v44 = width;
      v45 = height;
      v37 = timeView;
      v15 = [v36 imageWithActions:v40];
      [qword_15CF0 setObject:v15 forKey:v14];
    }
  }

  else
  {
    v39.receiver = self;
    v39.super_class = NTKSeltzerFaceView;
    v15 = [(NTKSeltzerFaceView *)&v39 _swatchImageForEditOption:optionCopy mode:mode withSelectedOptions:optionsCopy];
  }

  return v15;
}

@end