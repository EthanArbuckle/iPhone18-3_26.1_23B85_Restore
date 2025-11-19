@interface NTKGlobetrotterFaceView
+ (id)_swatchForEditModeDependsOnOptions:(int64_t)a3 forDevice:(id)a4;
- (CGRect)_relativeKeylineFrameForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (NTKGlobetrotterFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5;
- (double)_complicationAlphaForEditMode:(int64_t)a3;
- (double)_dialViewAlphaForEditMode:(int64_t)a3;
- (double)_globetrotterCitySubviewsAlphaForEditMode:(int64_t)a3;
- (double)_timeViewAlphaForEditMode:(int64_t)a3;
- (double)_timeViewContainerViewAlphaForEditMode:(int64_t)a3;
- (double)_timeViewScaleForEditMode:(int64_t)a3;
- (id)_keylineViewForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5;
- (id)createFaceColorPalette;
- (unint64_t)_keylineLabelAlignmentForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyDataMode;
- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7;
- (void)_cleanupAfterEditing;
- (void)_configureComplicationView:(id)a3 forSlot:(id)a4;
- (void)_configureForEditMode:(int64_t)a3;
- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5;
- (void)_loadDialView;
- (void)_loadSnapshotContentViews;
- (void)_loadTimeView;
- (void)_loadUI;
- (void)_prepareForEditing;
- (void)_setNumerals:(unint64_t)a3;
- (void)_unloadDialView;
- (void)_unloadSnapshotContentViews;
- (void)_unloadTimeView;
- (void)_unloadUI;
- (void)_updateTimeZoneHourOffset;
- (void)_updateViewColorsWithPalette:(id)a3;
- (void)layoutSubviews;
- (void)setOverrideDate:(id)a3 duration:(double)a4;
@end

@implementation NTKGlobetrotterFaceView

- (NTKGlobetrotterFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5
{
  v8 = a4;
  v16.receiver = self;
  v16.super_class = NTKGlobetrotterFaceView;
  v9 = [(NTKGlobetrotterFaceView *)&v16 initWithFaceStyle:a3 forDevice:v8 clientIdentifier:a5];
  v10 = v9;
  if (v9)
  {
    v11 = sub_58A4(v9, v8);
    v10->_numberSystem = -1;
    v12 = [[NTKWhistlerAnalogFaceViewComplicationFactory alloc] initWithFaceView:v10 dialDiameter:v8 device:v11];
    [v12 setUsesNarrowTopSlots:1];
    [(NTKGlobetrotterFaceView *)v10 setComplicationFactory:v12];
    v13 = [NSTimeZone timeZoneWithAbbreviation:@"PST"];
    referenceTimeZone = v10->_referenceTimeZone;
    v10->_referenceTimeZone = v13;

    [(NTKGlobetrotterFaceView *)v10 _updateTimeZoneHourOffset];
  }

  return v10;
}

- (void)setOverrideDate:(id)a3 duration:(double)a4
{
  v7.receiver = self;
  v7.super_class = NTKGlobetrotterFaceView;
  v6 = a3;
  [(NTKGlobetrotterFaceView *)&v7 setOverrideDate:v6 duration:a4];
  [(NTKGlobetrotterDialView *)self->_globetrotterDialView setOverrideDate:v6 duration:a4, v7.receiver, v7.super_class];
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
  v3 = [(NTKGlobetrotterFaceView *)self device];
  v4 = sub_58A4(v3, v3);

  v5 = [NTKGlobetrotterDialView alloc];
  timeZoneHourOffset = self->_timeZoneHourOffset;
  v7 = [(NTKGlobetrotterFaceView *)self device];
  v8 = [(NTKGlobetrotterDialView *)v5 initWithFrame:timeZoneHourOffset timeZoneHourOffset:v7 device:0.0, 0.0, v4, v4];
  globetrotterDialView = self->_globetrotterDialView;
  self->_globetrotterDialView = v8;

  [(NTKGlobetrotterDialView *)self->_globetrotterDialView setNumberSystem:self->_numberSystem];
  v10 = [(NTKGlobetrotterFaceView *)self contentView];
  [v10 addSubview:self->_globetrotterDialView];
}

- (void)_unloadDialView
{
  [(NTKGlobetrotterDialView *)self->_globetrotterDialView removeFromSuperview];
  globetrotterDialView = self->_globetrotterDialView;
  self->_globetrotterDialView = 0;
}

- (void)_loadTimeView
{
  v10 = [(NTKGlobetrotterFaceView *)self device];
  sub_58A4(v10, v10);
  v4 = v3;
  v5 = [[UIView alloc] initWithFrame:{0.0, 0.0, v4, v4}];
  timeViewContainerView = self->_timeViewContainerView;
  self->_timeViewContainerView = v5;

  v7 = [(NTKGlobetrotterFaceView *)self contentView];
  [v7 addSubview:self->_timeViewContainerView];

  v8 = [[NTKGlobetrotterTimeView alloc] initWithFrame:0 style:0 numberSystem:v10 andDevice:self->_timeZoneHourOffset timeZoneHourOffset:0.0, 0.0, v4, v4];
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
  v3 = [(NTKGlobetrotterFaceView *)self contentView];
  [v3 bounds];
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

- (void)_updateViewColorsWithPalette:(id)a3
{
  globetrotterDialView = self->_globetrotterDialView;
  v5 = a3;
  [(NTKGlobetrotterDialView *)globetrotterDialView setPalette:v5];
  [(NTKGlobetrotterTimeView *)self->_globetrotterTimeView setPalette:v5];
  v7 = [v5 innerComplication];
  v6 = [v5 outerComplication];

  [(NTKGlobetrotterFaceView *)self updateRichCornerComplicationsInnerColor:v7 outerColor:v6];
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

- (id)_keylineViewForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v6 = a4;
  if (a3 == 19)
  {
    [(NTKGlobetrotterFaceView *)self _faceEditingScaleForEditMode:19 slot:v6];
    v8 = [(NTKGlobetrotterDialView *)self->_globetrotterDialView hourMarkerDialView];
    [v8 frame];
    CGRectGetWidth(v14);
    v9 = NTKKeylineViewWithCircle();
  }

  else
  {
    if (a3 == 15)
    {
      [(NTKGlobetrotterFaceView *)self _faceEditingScaleForEditMode:15 slot:v6];
      [(NTKGlobetrotterTimeView *)self->_globetrotterTimeView bounds];
      CGRectGetWidth(v13);
      v7 = NTKKeylineViewWithCircle();
    }

    else
    {
      v11.receiver = self;
      v11.super_class = NTKGlobetrotterFaceView;
      v7 = [(NTKGlobetrotterFaceView *)&v11 _keylineViewForCustomEditMode:a3 slot:v6];
    }

    v9 = v7;
  }

  return v9;
}

- (CGRect)_relativeKeylineFrameForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v6 = a4;
  if (a3 == 19)
  {
    globetrotterDialView = self->_globetrotterDialView;
    v12 = [(NTKGlobetrotterDialView *)globetrotterDialView hourMarkerDialView];
    [v12 frame];
    [(NTKGlobetrotterDialView *)globetrotterDialView convertRect:self toView:?];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
  }

  else
  {
    if (a3 == 15)
    {
      [(UIView *)self->_timeViewContainerView frame];
    }

    else
    {
      v25.receiver = self;
      v25.super_class = NTKGlobetrotterFaceView;
      [(NTKGlobetrotterFaceView *)&v25 _relativeKeylineFrameForCustomEditMode:a3 slot:v6];
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

- (unint64_t)_keylineLabelAlignmentForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v6 = a4;
  v7 = &stru_68 + 44;
  if (a3 != 15 && a3 != 19)
  {
    v9.receiver = self;
    v9.super_class = NTKGlobetrotterFaceView;
    v7 = [(NTKGlobetrotterFaceView *)&v9 _keylineLabelAlignmentForCustomEditMode:a3 slot:v6];
  }

  return v7;
}

- (void)_configureComplicationView:(id)a3 forSlot:(id)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = NTKGlobetrotterFaceView;
  [(NTKGlobetrotterFaceView *)&v11 _configureComplicationView:v6 forSlot:a4];
  v7 = v6;
  v8 = [(NTKGlobetrotterFaceView *)self globetrotterPalette];
  v9 = [v8 innerComplication];
  [(NTKGlobetrotterFaceView *)self setComplicationColor:v9];
  [(NTKGlobetrotterFaceView *)self setInterpolatedComplicationColor:v9];
  v10 = [v8 outerComplication];
  [(NTKGlobetrotterFaceView *)self setAlternateComplicationColor:v10];

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

- (void)_configureForEditMode:(int64_t)a3
{
  [(NTKGlobetrotterFaceView *)self _timeViewScaleForEditMode:?];
  memset(&v16, 0, sizeof(v16));
  CGAffineTransformMakeScale(&v16, v5, v5);
  v15 = v16;
  [(NTKGlobetrotterTimeView *)self->_globetrotterTimeView setTransform:&v15];
  [(NTKGlobetrotterFaceView *)self _timeViewContainerViewAlphaForEditMode:a3];
  [(UIView *)self->_timeViewContainerView setAlpha:?];
  [(NTKGlobetrotterFaceView *)self _dialViewAlphaForEditMode:a3];
  [(NTKGlobetrotterDialView *)self->_globetrotterDialView setAlpha:?];
  globetrotterDialView = self->_globetrotterDialView;
  [(NTKGlobetrotterFaceView *)self _globetrotterCitySubviewsAlphaForEditMode:a3];
  [(NTKGlobetrotterDialView *)globetrotterDialView setAlphaForNonHourMarkerSubviews:?];
  [(NTKGlobetrotterFaceView *)self _complicationAlphaForEditMode:a3];
  v8 = v7;
  v9 = [(NTKGlobetrotterFaceView *)self complicationContainerView];
  [v9 setAlpha:v8];

  v10 = [(NTKGlobetrotterTimeView *)self->_globetrotterTimeView style];
  [(NTKGlobetrotterFaceView *)self _timeViewAlphaForEditMode:a3];
  v12 = v11;
  globetrotterTimeView = self->_globetrotterTimeView;
  if (v10)
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

- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5
{
  [(NTKGlobetrotterFaceView *)self _timeViewScaleForEditMode:?];
  [(NTKGlobetrotterFaceView *)self _timeViewScaleForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  memset(&v18, 0, sizeof(v18));
  CGAffineTransformMakeScale(&v18, v8, v8);
  v17 = v18;
  [(NTKGlobetrotterTimeView *)self->_globetrotterTimeView setTransform:&v17];
  [(NTKGlobetrotterFaceView *)self _timeViewContainerViewAlphaForEditMode:a4];
  [(NTKGlobetrotterFaceView *)self _timeViewContainerViewAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  [(UIView *)self->_timeViewContainerView setAlpha:?];
  [(NTKGlobetrotterFaceView *)self _dialViewAlphaForEditMode:a4];
  [(NTKGlobetrotterFaceView *)self _dialViewAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  [(NTKGlobetrotterDialView *)self->_globetrotterDialView setAlpha:?];
  [(NTKGlobetrotterFaceView *)self _complicationAlphaForEditMode:a4];
  [(NTKGlobetrotterFaceView *)self _complicationAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  v10 = v9;
  v11 = [(NTKGlobetrotterFaceView *)self complicationContainerView];
  [v11 setAlpha:v10];

  [(NTKGlobetrotterFaceView *)self _globetrotterCitySubviewsAlphaForEditMode:a4];
  [(NTKGlobetrotterFaceView *)self _globetrotterCitySubviewsAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  [(NTKGlobetrotterDialView *)self->_globetrotterDialView setAlphaForNonHourMarkerSubviews:?];
  v12 = [(NTKGlobetrotterTimeView *)self->_globetrotterTimeView style];
  [(NTKGlobetrotterFaceView *)self _timeViewAlphaForEditMode:a4];
  [(NTKGlobetrotterFaceView *)self _timeViewAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  v14 = v13;
  globetrotterTimeView = self->_globetrotterTimeView;
  if (v12)
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

- (double)_timeViewScaleForEditMode:(int64_t)a3
{
  v3 = 1.0;
  if (a3 == 15)
  {
    v4 = [(NTKGlobetrotterFaceView *)self device];
    sub_58A4(v4, v4);
    v3 = v5;
  }

  return v3;
}

- (double)_dialViewAlphaForEditMode:(int64_t)a3
{
  v3 = a3 == 1 || a3 == 15;
  result = NTKEditModeDimmedAlpha;
  if (!v3)
  {
    return 1.0;
  }

  return result;
}

- (double)_timeViewContainerViewAlphaForEditMode:(int64_t)a3
{
  result = NTKEditModeDimmedAlpha;
  if (a3 != 1)
  {
    return 1.0;
  }

  return result;
}

- (double)_globetrotterCitySubviewsAlphaForEditMode:(int64_t)a3
{
  result = NTKEditModeDimmedAlpha;
  if (a3 != 19)
  {
    return 1.0;
  }

  return result;
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

- (double)_timeViewAlphaForEditMode:(int64_t)a3
{
  result = NTKEditModeDimmedAlpha;
  if (a3 != 10)
  {
    return 1.0;
  }

  return result;
}

- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v10 = a3;
  v8 = a5;
  switch(a4)
  {
    case 10:
      v9 = [(NTKGlobetrotterFaceView *)self globetrotterPalette];
      [(NTKGlobetrotterFaceView *)self _updateViewColorsWithPalette:v9];

      break;
    case 19:
      -[NTKGlobetrotterFaceView _setNumerals:](self, "_setNumerals:", [v10 numeralOption]);
      break;
    case 15:
      -[NTKGlobetrotterTimeView setStyle:](self->_globetrotterTimeView, "setStyle:", [v10 style]);
      break;
  }
}

- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7
{
  v15 = a4;
  v12 = a5;
  v13 = a7;
  switch(a6)
  {
    case 10:
      v14 = [(NTKGlobetrotterFaceView *)self interpolatedColorPalette];
      [(NTKGlobetrotterFaceView *)self _updateViewColorsWithPalette:v14];

      break;
    case 19:
      [(NTKGlobetrotterTimeView *)self->_globetrotterTimeView applyTransitionFraction:v15 fromNumeralOption:v12 toNumeralOption:a3];
      [(NTKGlobetrotterDialView *)self->_globetrotterDialView applyTransitionFraction:v15 fromNumeralOption:v12 toNumeralOption:a3];
      break;
    case 15:
      -[NTKGlobetrotterTimeView applyTransitionFraction:fromStyle:toStyle:](self->_globetrotterTimeView, "applyTransitionFraction:fromStyle:toStyle:", [v15 style], objc_msgSend(v12, "style"), a3);
      break;
  }
}

- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  NTKLargeElementScaleForBreathingFraction();
  memset(&v16, 0, sizeof(v16));
  CGAffineTransformMakeScale(&v16, v7, v7);
  switch(a4)
  {
    case 10:
      v13 = v16;
      v11 = [(NTKGlobetrotterFaceView *)self contentView];
      v15 = v13;
      [v11 setTransform:&v15];

      v12 = v16;
      v8 = [(NTKGlobetrotterFaceView *)self complicationContainerView];
      v9 = v8;
      *&v15.a = *&v12.a;
      *&v15.c = *&v12.c;
      v10 = *&v12.tx;
      goto LABEL_7;
    case 19:
      v15 = v16;
      [(UIView *)self->_timeViewContainerView setTransform:&v15];
      v14 = v16;
      v8 = [(NTKGlobetrotterDialView *)self->_globetrotterDialView hourMarkerDialView];
      v9 = v8;
      *&v15.a = *&v14.a;
      *&v15.c = *&v14.c;
      v10 = *&v14.tx;
LABEL_7:
      *&v15.tx = v10;
      [v8 setTransform:&v15];

      return;
    case 15:
      v15 = v16;
      [(UIView *)self->_timeViewContainerView setTransform:&v15];
      break;
  }
}

- (void)_setNumerals:(unint64_t)a3
{
  v4 = CLKLocaleNumberSystemFromNumeralOption();
  if (self->_numberSystem != v4)
  {
    v5 = v4;
    self->_numberSystem = v4;
    v6 = [(NTKGlobetrotterFaceView *)self device];
    v7 = NTKShowIndicScriptNumerals();

    if (v7)
    {
      [(NTKGlobetrotterTimeView *)self->_globetrotterTimeView setNumberSystem:v5];
      globetrotterDialView = self->_globetrotterDialView;

      [(NTKGlobetrotterDialView *)globetrotterDialView setNumberSystem:v5];
    }
  }
}

- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  NTKScaleForRubberBandingFraction();
  memset(&v16, 0, sizeof(v16));
  CGAffineTransformMakeScale(&v16, v7, v7);
  switch(a4)
  {
    case 10:
      v13 = v16;
      v11 = [(NTKGlobetrotterFaceView *)self contentView];
      v15 = v13;
      [v11 setTransform:&v15];

      v12 = v16;
      v8 = [(NTKGlobetrotterFaceView *)self complicationContainerView];
      v9 = v8;
      *&v15.a = *&v12.a;
      *&v15.c = *&v12.c;
      v10 = *&v12.tx;
      goto LABEL_7;
    case 19:
      v15 = v16;
      [(UIView *)self->_timeViewContainerView setTransform:&v15];
      v14 = v16;
      v8 = [(NTKGlobetrotterDialView *)self->_globetrotterDialView hourMarkerDialView];
      v9 = v8;
      *&v15.a = *&v14.a;
      *&v15.c = *&v14.c;
      v10 = *&v14.tx;
LABEL_7:
      *&v15.tx = v10;
      [v8 setTransform:&v15];

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

+ (id)_swatchForEditModeDependsOnOptions:(int64_t)a3 forDevice:(id)a4
{
  if (a3 == 15)
  {
    return &off_11280;
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
  if (a4 == 19)
  {
    v10 = [(NTKGlobetrotterTimeView *)self->_globetrotterTimeView _digitalLabelFont];
    v11 = [(NTKGlobetrotterFaceView *)self device];
    v15 = [v8 swatchImageWithFont:v10 device:v11 baseline:0.0];
LABEL_9:

    goto LABEL_11;
  }

  if (a4 == 15)
  {
    if (qword_15BF0 != -1)
    {
      sub_92E4();
    }

    v10 = v8;
    v11 = [v9 objectForKeyedSubscript:&off_116D0];
    v12 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v10 style]);
    v13 = [v11 identifier];
    v14 = [NSString stringWithFormat:@"%@-%@", v12, v13];

    v15 = [qword_15BE8 objectForKey:v14];
    if (!v15)
    {
      v16 = [NTKGlobetrotterFaceView alloc];
      v17 = [(NTKGlobetrotterFaceView *)self device];
      v18 = [(NTKGlobetrotterFaceView *)v16 initWithFaceStyle:44 forDevice:v17 clientIdentifier:0];

      [(NTKGlobetrotterFaceView *)self frame];
      [v18 setFrame:?];
      [v18 _loadSnapshotContentViews];
      [v18 setOption:v10 forCustomEditMode:15 slot:0];
      [v18 setOption:v11 forCustomEditMode:10 slot:0];
      v19 = NTKIdealizedDate();
      [v18 setOverrideDate:v19 duration:0.0];

      v20 = [v18 timeView];
      [v20 bounds];
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;

      v35.width = v26;
      v35.height = v28;
      UIGraphicsBeginImageContextWithOptions(v35, 0, 0.0);
      v29 = [v18[1] globeSnapshotImage];
      [v29 drawInRect:{v22, v24, v26, v28}];

      v30 = [v18 timeView];
      v31 = [v30 layer];
      [v31 renderInContext:UIGraphicsGetCurrentContext()];

      v15 = UIGraphicsGetImageFromCurrentImageContext();
      UIGraphicsEndImageContext();
      [qword_15BE8 setObject:v15 forKey:v14];
    }

    goto LABEL_9;
  }

  v33.receiver = self;
  v33.super_class = NTKGlobetrotterFaceView;
  v15 = [(NTKGlobetrotterFaceView *)&v33 _swatchImageForEditOption:v8 mode:a4 withSelectedOptions:v9];
LABEL_11:

  return v15;
}

@end