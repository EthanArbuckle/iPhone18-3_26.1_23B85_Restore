@interface NTKSeltzerFaceView
+ (id)_swatchForEditModeDependsOnOptions:(int64_t)a3 forDevice:(id)a4;
- (CGRect)_relativeKeylineFrameForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (NTKSeltzerFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5;
- (double)_backgroundImageViewAlphaForEditMode:(int64_t)a3;
- (double)_complicationsAlphaForEditMode:(int64_t)a3;
- (double)_dialViewAlphaForEditMode:(int64_t)a3;
- (double)_timeViewContainerViewAlphaForEditMode:(int64_t)a3;
- (double)_timeViewScaleForEditMode:(int64_t)a3;
- (id)_keylineViewForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5;
- (id)createFaceColorPalette;
- (unint64_t)_keylineLabelAlignmentForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (void)_applyBreathingAndRubberBandingForEditMode:(int64_t)a3;
- (void)_applyDataMode;
- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7;
- (void)_cleanupAfterEditing;
- (void)_configureComplicationView:(id)a3 forSlot:(id)a4;
- (void)_configureForEditMode:(int64_t)a3;
- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5;
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
- (void)_updateViewColorsWithPalette:(id)a3;
- (void)layoutSubviews;
- (void)setOverrideDate:(id)a3 duration:(double)a4;
@end

@implementation NTKSeltzerFaceView

- (NTKSeltzerFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5
{
  v8 = a4;
  v14.receiver = self;
  v14.super_class = NTKSeltzerFaceView;
  v9 = [(NTKSeltzerFaceView *)&v14 initWithFaceStyle:a3 forDevice:v8 clientIdentifier:a5];
  if (v9)
  {
    memset(v13, 0, sizeof(v13));
    sub_4944(v8, v13);
    v10 = [NTKWhistlerAnalogFaceViewComplicationFactory alloc];
    v11 = [v10 initWithFaceView:v9 dialDiameter:v8 device:*&v13[0].receiver];
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

- (void)setOverrideDate:(id)a3 duration:(double)a4
{
  v7.receiver = self;
  v7.super_class = NTKSeltzerFaceView;
  v6 = a3;
  [(NTKSeltzerFaceView *)&v7 setOverrideDate:v6 duration:a4];
  [(NTKSeltzerDialView *)self->_seltzerDialView setOverrideDate:v6 duration:a4, v7.receiver, v7.super_class];
}

- (void)_applyDataMode
{
  v6.receiver = self;
  v6.super_class = NTKSeltzerFaceView;
  [(NTKSeltzerFaceView *)&v6 _applyDataMode];
  v3 = [(NTKSeltzerFaceView *)self dataMode];
  v4 = v3;
  if (v3 == (&dword_0 + 1))
  {
    v5 = 1;
    goto LABEL_6;
  }

  if (v3 == &dword_4 || v3 == (&dword_0 + 3))
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

  v5 = [(NTKSeltzerFaceView *)self contentView];
  [v5 addSubview:self->_backgroundImageView];
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
  v4 = [(NTKSeltzerFaceView *)self contentView];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(NTKSeltzerFaceView *)self device];
  v14 = [v3 initWithFrame:v13 forDeviceCornerRadius:{v6, v8, v10, v12}];
  cornerOverlayView = self->_cornerOverlayView;
  self->_cornerOverlayView = v14;

  v16 = [(NTKSeltzerFaceView *)self contentView];
  [v16 addSubview:self->_cornerOverlayView];
}

- (void)_unloadCornerOverlayView
{
  [(NTKRoundedCornerOverlayView *)self->_cornerOverlayView removeFromSuperview];
  cornerOverlayView = self->_cornerOverlayView;
  self->_cornerOverlayView = 0;
}

- (void)_loadTimeView
{
  v9 = [(NTKSeltzerFaceView *)self device];
  sub_4944(v9, &v10);
  v3 = *(&v10 + 1);
  v4 = [[UIView alloc] initWithFrame:{0.0, 0.0, v3, v3}];
  timeViewContainerView = self->_timeViewContainerView;
  self->_timeViewContainerView = v4;

  v6 = [(NTKSeltzerFaceView *)self contentView];
  [v6 addSubview:self->_timeViewContainerView];

  v7 = [[NTKSeltzerTimeView alloc] initWithFrame:0 style:v9 andDevice:0.0, 0.0, v3, v3];
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
  v10 = [(NTKSeltzerFaceView *)self device];
  sub_4944(v10, v11);
  v3 = v11[0];
  v4 = [NTKSeltzerDialView alloc];
  calendar = self->_calendar;
  v6 = [(NTKSeltzerFaceView *)self colorPalette];
  v7 = [(NTKSeltzerDialView *)v4 initWithFrame:v10 device:calendar calendar:v6 palette:0.0, 0.0, v3, v3];
  seltzerDialView = self->_seltzerDialView;
  self->_seltzerDialView = v7;

  v9 = [(NTKSeltzerFaceView *)self contentView];
  [v9 addSubview:self->_seltzerDialView];
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
  v3 = [(NTKSeltzerFaceView *)self contentView];
  [v3 bounds];
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

- (id)_keylineViewForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  if (a3 == 15)
  {
    [(NTKSeltzerFaceView *)self _faceEditingScaleForEditMode:15 slot:a4];
    [(NTKSeltzerTimeView *)self->_seltzerTimeView bounds];
    CGRectGetWidth(v9);
    v5 = NTKKeylineViewWithCircle();
  }

  else
  {
    v7.receiver = self;
    v7.super_class = NTKSeltzerFaceView;
    v5 = [(NTKSeltzerFaceView *)&v7 _keylineViewForCustomEditMode:a3 slot:a4];
  }

  return v5;
}

- (CGRect)_relativeKeylineFrameForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  if (a3 == 15)
  {
    v5 = [(NTKSeltzerFaceView *)self device:15];
    sub_4944(v5, &v18);
    v6 = *(&v18 + 1);

    v7 = [(NTKSeltzerFaceView *)self contentView];
    [v7 bounds];
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
    [(NTKSeltzerFaceView *)&v17 _relativeKeylineFrameForCustomEditMode:a3 slot:a4];
    v6 = v15;
  }

  v16 = v6;
  result.size.height = v14;
  result.size.width = v16;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (unint64_t)_keylineLabelAlignmentForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  if (a3 == 15)
  {
    return 148;
  }

  v8 = v4;
  v9 = v5;
  v7.receiver = self;
  v7.super_class = NTKSeltzerFaceView;
  return [(NTKSeltzerFaceView *)&v7 _keylineLabelAlignmentForCustomEditMode:a3 slot:a4];
}

- (void)_configureComplicationView:(id)a3 forSlot:(id)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = NTKSeltzerFaceView;
  [(NTKSeltzerFaceView *)&v11 _configureComplicationView:v6 forSlot:a4];
  v7 = v6;
  [v7 setFontStyle:1];
  v8 = [(NTKSeltzerFaceView *)self colorPalette];
  v9 = [v8 innerComplication];
  [(NTKSeltzerFaceView *)self setComplicationColor:v9];
  [(NTKSeltzerFaceView *)self setInterpolatedComplicationColor:v9];
  v10 = [v8 outerComplication];
  [(NTKSeltzerFaceView *)self setAlternateComplicationColor:v10];

  [v7 updateMonochromeColor];
}

- (void)_prepareForEditing
{
  v4.receiver = self;
  v4.super_class = NTKSeltzerFaceView;
  [(NTKSeltzerFaceView *)&v4 _prepareForEditing];
  v3 = [(NTKSeltzerFaceView *)self contentView];
  [v3 setClipsToBounds:1];
}

- (void)_cleanupAfterEditing
{
  v4.receiver = self;
  v4.super_class = NTKSeltzerFaceView;
  [(NTKSeltzerFaceView *)&v4 _cleanupAfterEditing];
  v3 = [(NTKSeltzerFaceView *)self contentView];
  [v3 setClipsToBounds:0];
}

- (void)_configureForEditMode:(int64_t)a3
{
  [(NTKSeltzerFaceView *)self _timeViewScaleForEditMode:?];
  memset(&v10, 0, sizeof(v10));
  CGAffineTransformMakeScale(&v10, v5, v5);
  v9 = v10;
  [(NTKSeltzerTimeView *)self->_seltzerTimeView setTransform:&v9];
  [(NTKSeltzerFaceView *)self _dialViewAlphaForEditMode:a3];
  [(NTKSeltzerDialView *)self->_seltzerDialView setAlpha:?];
  [(NTKSeltzerFaceView *)self _backgroundImageViewAlphaForEditMode:a3];
  [(UIImageView *)self->_backgroundImageView setAlpha:?];
  [(NTKSeltzerFaceView *)self _timeViewContainerViewAlphaForEditMode:a3];
  [(UIView *)self->_timeViewContainerView setAlpha:?];
  [(NTKSeltzerFaceView *)self _complicationsAlphaForEditMode:a3];
  v7 = v6;
  v8 = [(NTKSeltzerFaceView *)self complicationContainerView];
  [v8 setAlpha:v7];
}

- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5
{
  [(NTKSeltzerFaceView *)self _timeViewScaleForEditMode:?];
  [(NTKSeltzerFaceView *)self _timeViewScaleForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  memset(&v13, 0, sizeof(v13));
  CGAffineTransformMakeScale(&v13, v8, v8);
  v12 = v13;
  [(NTKSeltzerTimeView *)self->_seltzerTimeView setTransform:&v12];
  [(NTKSeltzerFaceView *)self _dialViewAlphaForEditMode:a4];
  [(NTKSeltzerFaceView *)self _dialViewAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  [(NTKSeltzerDialView *)self->_seltzerDialView setAlpha:?];
  [(NTKSeltzerFaceView *)self _backgroundImageViewAlphaForEditMode:a4];
  [(NTKSeltzerFaceView *)self _backgroundImageViewAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  [(UIImageView *)self->_backgroundImageView setAlpha:?];
  [(NTKSeltzerFaceView *)self _timeViewContainerViewAlphaForEditMode:a4];
  [(NTKSeltzerFaceView *)self _timeViewContainerViewAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  [(UIView *)self->_timeViewContainerView setAlpha:?];
  [(NTKSeltzerFaceView *)self _complicationsAlphaForEditMode:a4];
  [(NTKSeltzerFaceView *)self _complicationsAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  v10 = v9;
  v11 = [(NTKSeltzerFaceView *)self complicationContainerView];
  [v11 setAlpha:v10];
}

- (double)_timeViewScaleForEditMode:(int64_t)a3
{
  if (a3 == 10)
  {
    v4 = [(NTKSeltzerFaceView *)self device];
    sub_4944(v4, &v7);
    v5 = &v8;
    goto LABEL_5;
  }

  v3 = 1.0;
  if (a3 == 15)
  {
    v4 = [(NTKSeltzerFaceView *)self device];
    sub_4944(v4, &v9);
    v5 = &v10;
LABEL_5:
    v3 = *v5;
  }

  return v3;
}

- (double)_dialViewAlphaForEditMode:(int64_t)a3
{
  result = 1.0;
  if (a3)
  {
    if (a3 != 12)
    {
      return NTKEditModeDimmedAlpha;
    }
  }

  return result;
}

- (double)_backgroundImageViewAlphaForEditMode:(int64_t)a3
{
  result = NTKEditModeDimmedAlpha;
  if (!a3)
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

- (double)_complicationsAlphaForEditMode:(int64_t)a3
{
  result = NTKEditModeDimmedAlpha;
  if (a3 < 2)
  {
    return 1.0;
  }

  return result;
}

- (void)_applyBreathingAndRubberBandingForEditMode:(int64_t)a3
{
  breathingFraction = self->_breathingFraction;
  NTKLargeElementScaleForBreathingFraction();
  v7 = v6;
  rubberBandingFraction = self->_rubberBandingFraction;
  NTKScaleForRubberBandingFraction();
  memset(&v15, 0, sizeof(v15));
  CGAffineTransformMakeScale(&v15, v7 * v9, v7 * v9);
  if (a3 == 10)
  {
LABEL_4:
    v14 = v15;
    v10 = [(NTKSeltzerFaceView *)self contentView];
    v13 = v14;
    [v10 setTransform:&v13];

    v12 = v15;
    v11 = [(NTKSeltzerFaceView *)self complicationContainerView];
    v13 = v12;
    [v11 setTransform:&v13];

    return;
  }

  if (a3 != 15)
  {
    if (a3 != 12)
    {
      return;
    }

    goto LABEL_4;
  }

  v13 = v15;
  [(UIView *)self->_timeViewContainerView setTransform:&v13];
}

- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v11 = a3;
  v8 = a5;
  switch(a4)
  {
    case 10:
      v10 = [(NTKSeltzerFaceView *)self colorPalette];
      [(NTKSeltzerFaceView *)self _updateViewColorsWithPalette:v10];

      break;
    case 15:
      -[NTKSeltzerTimeView setStyle:](self->_seltzerTimeView, "setStyle:", [v11 style]);
      break;
    case 12:
      v9 = [v11 calendar];
      self->_calendar = v9;
      [(NTKSeltzerDialView *)self->_seltzerDialView setCalendar:v9];
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
      v14 = [(NTKSeltzerFaceView *)self interpolatedColorPalette];
      [(NTKSeltzerFaceView *)self _updateViewColorsWithPalette:v14];

      break;
    case 15:
      -[NTKSeltzerTimeView applyTransitionFraction:fromStyle:toStyle:](self->_seltzerTimeView, "applyTransitionFraction:fromStyle:toStyle:", [v15 style], objc_msgSend(v12, "style"), a3);
      break;
    case 12:
      -[NTKSeltzerDialView applyTransitionFraction:fromCalendar:toCalendar:](self->_seltzerDialView, "applyTransitionFraction:fromCalendar:toCalendar:", [v15 calendar], objc_msgSend(v12, "calendar"), a3);
      break;
  }
}

- (id)createFaceColorPalette
{
  v2 = [[NTKSeltzerColorPalette alloc] initWithFaceClass:objc_opt_class()];

  return v2;
}

- (void)_updateViewColorsWithPalette:(id)a3
{
  seltzerTimeView = self->_seltzerTimeView;
  v5 = a3;
  [(NTKSeltzerTimeView *)seltzerTimeView setPalette:v5];
  v7 = [v5 innerComplication];
  v6 = [v5 outerComplication];

  [(NTKSeltzerFaceView *)self updateRichCornerComplicationsInnerColor:v7 outerColor:v6];
}

+ (id)_swatchForEditModeDependsOnOptions:(int64_t)a3 forDevice:(id)a4
{
  if (a3 == 15)
  {
    v6 = &off_10EC0;
  }

  else
  {
    v9 = v4;
    v10 = v5;
    v8.receiver = a1;
    v8.super_class = &OBJC_METACLASS___NTKSeltzerFaceView;
    v6 = objc_msgSendSuper2(&v8, "_swatchForEditModeDependsOnOptions:forDevice:", a3, a4);
  }

  return v6;
}

- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (a4 == 15)
  {
    if (qword_15CF8 != -1)
    {
      sub_9074();
    }

    v10 = v8;
    v11 = [v9 objectForKeyedSubscript:&off_10DA0];
    v12 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v10 style]);
    v13 = [v11 identifier];
    v14 = [NSString stringWithFormat:@"%@-%@", v12, v13];

    v15 = [qword_15CF0 objectForKey:v14];
    if (!v15)
    {
      v16 = [NTKSeltzerFaceView alloc];
      v17 = [(NTKSeltzerFaceView *)self device];
      v18 = [(NTKSeltzerFaceView *)v16 initWithFaceStyle:44 forDevice:v17 clientIdentifier:0];

      [(NTKSeltzerFaceView *)self frame];
      [(NTKSeltzerFaceView *)v18 setFrame:?];
      [(NTKSeltzerFaceView *)v18 _loadSnapshotContentViews];
      [(NTKSeltzerFaceView *)v18 setOption:v10 forCustomEditMode:15 slot:0];
      [(NTKSeltzerFaceView *)v18 setOption:v11 forCustomEditMode:10 slot:0];
      v19 = NTKIdealizedDate();
      [(NTKSeltzerFaceView *)v18 setOverrideDate:v19 duration:0.0];

      memset(v47, 0, 32);
      v46 = 0u;
      v20 = [(NTKSeltzerFaceView *)self device];
      sub_4944(v20, &v46);

      v21 = [(NTKSeltzerFaceView *)v18 timeView];
      [v21 bounds];
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v29 = v28;
      v30 = [v21 style];
      v31 = v47 + 1;
      if (!v30)
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
      v41 = v21;
      v42 = x;
      v43 = y;
      v44 = width;
      v45 = height;
      v37 = v21;
      v15 = [v36 imageWithActions:v40];
      [qword_15CF0 setObject:v15 forKey:v14];
    }
  }

  else
  {
    v39.receiver = self;
    v39.super_class = NTKSeltzerFaceView;
    v15 = [(NTKSeltzerFaceView *)&v39 _swatchImageForEditOption:v8 mode:a4 withSelectedOptions:v9];
  }

  return v15;
}

@end