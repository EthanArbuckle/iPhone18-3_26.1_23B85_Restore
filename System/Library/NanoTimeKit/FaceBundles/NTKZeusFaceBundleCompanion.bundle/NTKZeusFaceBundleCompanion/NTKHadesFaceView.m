@interface NTKHadesFaceView
+ (id)_swatchForEditModeDependsOnOptions:(int64_t)a3 forDevice:(id)a4;
- (NTKHadesFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5;
- (double)_timeAlphaForEditMode:(int64_t)a3;
- (id)_logoForRotation:(unint64_t)a3;
- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5;
- (id)createFaceColorPalette;
- (void)_applyBreathingAndRubberbanding;
- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyDataMode;
- (void)_applyFraction:(double)a3 fromRotation:(id)a4 toRotation:(id)a5;
- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7;
- (void)_cleanupAfterEditing;
- (void)_configureForEditMode:(int64_t)a3;
- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5;
- (void)_layoutLogo;
- (void)_loadSnapshotContentViews;
- (void)_prepareForEditing;
- (void)_removeListeners;
- (void)_removeViews;
- (void)_setupListeners;
- (void)_setupViews;
- (void)_startHourUpdate;
- (void)_stopHourUpdate;
- (void)_unloadSnapshotContentViews;
- (void)_updateContentColorsFromPalette:(id)a3;
- (void)_updateHour;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setOverrideDate:(id)a3 duration:(double)a4;
@end

@implementation NTKHadesFaceView

- (NTKHadesFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5
{
  v6.receiver = self;
  v6.super_class = NTKHadesFaceView;
  return [(NTKHadesFaceView *)&v6 initWithFaceStyle:a3 forDevice:a4 clientIdentifier:a5];
}

- (void)dealloc
{
  if (self->_hourToken)
  {
    v3 = +[CLKClockTimer sharedInstance];
    [v3 stopUpdatesForToken:self->_hourToken];
  }

  v4.receiver = self;
  v4.super_class = NTKHadesFaceView;
  [(NTKHadesFaceView *)&v4 dealloc];
}

- (void)_loadSnapshotContentViews
{
  v3.receiver = self;
  v3.super_class = NTKHadesFaceView;
  [(NTKHadesFaceView *)&v3 _loadSnapshotContentViews];
  [(NTKHadesFaceView *)self _setupViews];
  [(NTKHadesFaceView *)self _setupListeners];
}

- (void)_unloadSnapshotContentViews
{
  v3.receiver = self;
  v3.super_class = NTKHadesFaceView;
  [(NTKHadesFaceView *)&v3 _unloadSnapshotContentViews];
  [(NTKHadesFaceView *)self _removeViews];
  [(NTKHadesFaceView *)self _removeListeners];
}

- (void)_setupViews
{
  v3 = [NTKHadesHourView alloc];
  v4 = [(NTKHadesFaceView *)self device];
  v5 = [(NTKHadesHourView *)v3 initWithDevice:v4];
  [(NTKHadesFaceView *)self setHourView:v5];

  v6 = [(NTKHadesFaceView *)self contentView];
  [v6 addSubview:self->_hourView];

  v20 = [(NTKHadesFaceView *)self _logoForRotation:self->_rotation];
  v7 = [(NTKHadesFaceView *)self contentView];
  [v7 addSubview:v20];

  v8 = [NTKRoundedCornerOverlayView alloc];
  [(NTKHadesFaceView *)self bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [(NTKHadesFaceView *)self device];
  v18 = [v8 initWithFrame:v17 forDeviceCornerRadius:{v10, v12, v14, v16}];
  [(NTKHadesFaceView *)self setCorners:v18];

  v19 = [(NTKHadesFaceView *)self contentView];
  [v19 addSubview:self->_corners];
}

- (void)_setupListeners
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_updateHour" name:UIApplicationSignificantTimeChangeNotification object:0];

  [(NTKHadesFaceView *)self _startHourUpdate];
}

- (void)_removeViews
{
  [(NTKHadesHourView *)self->_hourView removeFromSuperview];
  [(NTKHadesFaceView *)self setHourView:0];
  [(NSMutableDictionary *)self->_logos enumerateKeysAndObjectsUsingBlock:&stru_45258];
  [(NTKHadesFaceView *)self setLogos:0];
  [(UIView *)self->_corners removeFromSuperview];

  [(NTKHadesFaceView *)self setCorners:0];
}

- (void)_removeListeners
{
  [(NTKHadesFaceView *)self _stopHourUpdate];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:UIApplicationSignificantTimeChangeNotification object:0];
}

- (void)_applyDataMode
{
  v5.receiver = self;
  v5.super_class = NTKHadesFaceView;
  [(NTKHadesFaceView *)&v5 _applyDataMode];
  v3 = [(NTKHadesFaceView *)self dataMode];
  if ((v3 - 2) < 4 || v3 == 0)
  {
    [(NTKHadesFaceView *)self _stopHourUpdate];
  }

  else if (v3 == &dword_0 + 1)
  {
    [(NTKHadesFaceView *)self _startHourUpdate];
  }
}

- (void)setOverrideDate:(id)a3 duration:(double)a4
{
  v6.receiver = self;
  v6.super_class = NTKHadesFaceView;
  [(NTKHadesFaceView *)&v6 setOverrideDate:a4 duration:?];
  if (a3)
  {
    [(NTKHadesFaceView *)self _stopHourUpdate];
  }

  else
  {
    [(NTKHadesFaceView *)self _startHourUpdate];
  }
}

- (void)_startHourUpdate
{
  if (!self->_hourToken)
  {
    objc_initWeak(&location, self);
    v3 = +[CLKClockTimer sharedInstance];
    v5 = _NSConcreteStackBlock;
    v6 = 3221225472;
    v7 = sub_1C998;
    v8 = &unk_45148;
    objc_copyWeak(&v9, &location);
    v4 = [v3 startUpdatesWithUpdateFrequency:0 withHandler:&v5 identificationLog:&stru_45278];
    [(NTKHadesFaceView *)self setHourToken:v4, v5, v6, v7, v8];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  [(NTKHadesFaceView *)self _updateHour];
}

- (void)_stopHourUpdate
{
  if (self->_hourToken)
  {
    v3 = +[CLKClockTimer sharedInstance];
    [v3 stopUpdatesForToken:self->_hourToken];

    [(NTKHadesFaceView *)self setHourToken:0];
  }

  [(NTKHadesFaceView *)self _updateHour];
}

- (void)_updateHour
{
  v3 = [(NTKHadesFaceView *)self currentDisplayDate];
  if (v3)
  {
    CLKClockTimerDateForDate();
  }

  else
  {
    CLKClockTimerDateForNow();
  }

  [(NTKHadesFaceView *)self _updateHour:v5];
}

- (id)_logoForRotation:(unint64_t)a3
{
  v5 = [NSNumber numberWithUnsignedInteger:?];
  v6 = [(NSMutableDictionary *)self->_logos objectForKeyedSubscript:v5];
  if (!v6)
  {
    v7 = @"HadesLogoStraight";
    if (a3 == 1)
    {
      v7 = @"HadesLogoTwisted";
    }

    v8 = v7;
    v9 = [UIImageView alloc];
    v10 = [NTKHadesFaceBundle imageWithName:v8];

    v6 = [v9 initWithImage:v10];
    v11 = +[UIColor whiteColor];
    [v6 setTintColor:v11];

    logos = self->_logos;
    if (!logos)
    {
      v13 = objc_opt_new();
      v14 = self->_logos;
      self->_logos = v13;

      logos = self->_logos;
    }

    [(NSMutableDictionary *)logos setObject:v6 forKeyedSubscript:v5];
  }

  return v6;
}

- (void)_updateContentColorsFromPalette:(id)a3
{
  v7 = a3;
  v4 = [v7 secondHand];
  v5 = [(NTKHadesFaceView *)self timeView];
  v6 = [v5 secondHandView];
  [v6 setColor:v4];

  [(NTKHadesHourView *)self->_hourView setPalette:v7];
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = NTKHadesFaceView;
  [(NTKHadesFaceView *)&v11 layoutSubviews];
  [(NTKHadesFaceView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(NTKHadesHourView *)self->_hourView setFrame:?];
  [(NTKHadesFaceView *)self _layoutLogo];
  [(UIView *)self->_corners setFrame:v4, v6, v8, v10];
}

- (void)_layoutLogo
{
  [(NTKHadesFaceView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(NTKHadesFaceView *)self device];
  v12 = sub_1DE88(v11, v11);
  v14 = v13;

  logos = self->_logos;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1CE78;
  v16[3] = &unk_452A0;
  v16[5] = v4;
  v16[6] = v6;
  v16[7] = v8;
  v16[8] = v10;
  v16[4] = self;
  *&v16[9] = v12;
  v16[10] = v14;
  [(NSMutableDictionary *)logos enumerateKeysAndObjectsUsingBlock:v16];
}

- (void)_prepareForEditing
{
  v3.receiver = self;
  v3.super_class = NTKHadesFaceView;
  [(NTKHadesFaceView *)&v3 _prepareForEditing];
  [(NTKHadesHourView *)self->_hourView beginEditing];
}

- (void)_cleanupAfterEditing
{
  v9.receiver = self;
  v9.super_class = NTKHadesFaceView;
  [(NTKHadesFaceView *)&v9 _cleanupAfterEditing];
  [(NTKHadesHourView *)self->_hourView endEditing];
  v3 = objc_opt_new();
  logos = self->_logos;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1D0E0;
  v7[3] = &unk_452C8;
  v7[4] = self;
  v8 = v3;
  v5 = v3;
  [(NSMutableDictionary *)logos enumerateKeysAndObjectsUsingBlock:v7];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1D168;
  v6[3] = &unk_452F0;
  v6[4] = self;
  [v5 enumerateObjectsUsingBlock:v6];
}

- (void)_configureForEditMode:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = NTKHadesFaceView;
  [(NTKHadesFaceView *)&v8 _configureForEditMode:?];
  [(NTKHadesFaceView *)self _timeAlphaForEditMode:a3];
  v6 = v5;
  v7 = [(NTKHadesFaceView *)self timeView];
  [v7 setAlpha:v6];
}

- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5
{
  v11.receiver = self;
  v11.super_class = NTKHadesFaceView;
  [NTKHadesFaceView _configureForTransitionFraction:"_configureForTransitionFraction:fromEditMode:toEditMode:" fromEditMode:? toEditMode:?];
  [(NTKHadesFaceView *)self _timeAlphaForEditMode:a4];
  [(NTKHadesFaceView *)self _timeAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  v9 = v8;
  v10 = [(NTKHadesFaceView *)self timeView];
  [v10 setAlpha:v9];
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

- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v8 = a3;
  v10.receiver = self;
  v10.super_class = NTKHadesFaceView;
  [(NTKHadesFaceView *)&v10 _applyOption:v8 forCustomEditMode:a4 slot:a5];
  if (a4 == 10)
  {
    v9 = [(NTKHadesFaceView *)self palette];
    [(NTKHadesFaceView *)self _updateContentColorsFromPalette:v9];
  }

  else if (a4 == 15)
  {
    [(NTKHadesFaceView *)self _applyRotation:v8];
  }
}

- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7
{
  v12 = a4;
  v13 = a5;
  v15.receiver = self;
  v15.super_class = NTKHadesFaceView;
  [(NTKHadesFaceView *)&v15 _applyTransitionFraction:v12 fromOption:v13 toOption:a6 forCustomEditMode:a7 slot:a3];
  if (a6 == 10)
  {
    v14 = [(NTKHadesFaceView *)self interpolatedColorPalette];
    [(NTKHadesFaceView *)self _updateContentColorsFromPalette:v14];
  }

  else if (a6 == 15)
  {
    [(NTKHadesFaceView *)self _applyFraction:v12 fromRotation:v13 toRotation:a3];
  }
}

- (void)_applyFraction:(double)a3 fromRotation:(id)a4 toRotation:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (!v8)
  {
    v8 = v9;
    a3 = 1.0;
  }

  v11 = [v8 rotation];
  v12 = [v10 rotation];
  [(NTKHadesHourView *)self->_hourView applyFraction:v11 fromRotation:v12 toRotation:a3];
  if (![(NTKHadesFaceView *)self _isFractionAtEnd:a3])
  {
    v21 = [(NTKHadesFaceView *)self _logoForRotation:v11];
    v22 = [(NTKHadesFaceView *)self _logoForRotation:v12];
    logos = self->_logos;
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_1D908;
    v46[3] = &unk_452C8;
    v16 = v21;
    v47 = v16;
    v20 = v22;
    v48 = v20;
    [(NSMutableDictionary *)logos enumerateKeysAndObjectsUsingBlock:v46];
    v24 = [v16 superview];

    if (!v24)
    {
      v25 = [(NTKHadesFaceView *)self contentView];
      [v25 addSubview:v16];
    }

    v26 = [v20 superview];

    if (v26)
    {
      if (v24)
      {
LABEL_17:
        [v20 bounds];
        CGRectGetWidth(v52);
        [v16 bounds];
        CGRectGetWidth(v53);
        [v20 bounds];
        CGRectGetHeight(v54);
        [v16 bounds];
        CGRectGetHeight(v55);
        CLKInterpolateBetweenFloatsClipped();
        v29 = v28;
        CLKInterpolateBetweenFloatsClipped();
        v31 = v30;
        v32 = [(NTKHadesFaceView *)self device];
        v44 = sub_1DE88(v32, v32);
        v45 = v33;

        CLKInterpolateBetweenFloatsClipped();
        v35 = v34;
        CLKInterpolateBetweenFloatsClipped();
        v37 = v36;
        CLKInterpolateBetweenFloatsClipped();
        v39 = v38;
        CLKInterpolateBetweenFloatsClipped();
        v41 = v40;
        [v16 setAlpha:v39];
        CGAffineTransformMakeScale(&v49, v29, v29);
        CGAffineTransformTranslate(&v43, &v49, 0.0, v35);
        v49 = v43;
        [v16 setTransform:&v49];
        [v20 setAlpha:v41];
        CGAffineTransformMakeScale(&v49, v31, v31);
        CGAffineTransformTranslate(&v42, &v49, 0.0, v37);
        v49 = v42;
        [v20 setTransform:&v49];

        goto LABEL_18;
      }
    }

    else
    {
      v27 = [(NTKHadesFaceView *)self contentView];
      [v27 addSubview:v20];
    }

    [(NTKHadesFaceView *)self _layoutLogo];
    goto LABEL_17;
  }

  if (a3 == 0.0)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  [(NTKHadesFaceView *)self setRotation:v13];
  v14 = [(NTKHadesFaceView *)self _logoForRotation:self->_rotation];
  v15 = self->_logos;
  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_1D8F0;
  v50[3] = &unk_45318;
  v16 = v14;
  v51 = v16;
  [(NSMutableDictionary *)v15 enumerateKeysAndObjectsUsingBlock:v50];
  v17 = [v16 superview];

  if (!v17)
  {
    v18 = [(NTKHadesFaceView *)self contentView];
    [v18 addSubview:v16];

    [(NTKHadesFaceView *)self _layoutLogo];
  }

  [v16 setAlpha:1.0];
  v19 = *&CGAffineTransformIdentity.c;
  *&v49.a = *&CGAffineTransformIdentity.a;
  *&v49.c = v19;
  *&v49.tx = *&CGAffineTransformIdentity.tx;
  [v16 setTransform:&v49];
  v20 = v51;
LABEL_18:
}

- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v8.receiver = self;
  v8.super_class = NTKHadesFaceView;
  [(NTKHadesFaceView *)&v8 _applyBreathingFraction:a4 forCustomEditMode:a5 slot:?];
  if (a4)
  {
    self->_breathingFraction = a3;
    [(NTKHadesFaceView *)self _applyBreathingAndRubberbanding];
  }
}

- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v8.receiver = self;
  v8.super_class = NTKHadesFaceView;
  [(NTKHadesFaceView *)&v8 _applyRubberBandingFraction:a4 forCustomEditMode:a5 slot:?];
  if (a4)
  {
    self->_rubberbandingFraction = a3;
    [(NTKHadesFaceView *)self _applyBreathingAndRubberbanding];
  }
}

- (void)_applyBreathingAndRubberbanding
{
  NTKLargeElementScaleForBreathingFraction();
  v4 = v3;
  NTKScaleForRubberBandingFraction();
  memset(&v9, 0, sizeof(v9));
  CGAffineTransformMakeScale(&v9, v4 * v5, v4 * v5);
  v6 = [(NTKHadesFaceView *)self contentView];
  v8 = v9;
  [v6 setTransform:&v8];

  v7 = [(NTKHadesFaceView *)self timeView];
  v8 = v9;
  [v7 setTransform:&v8];
}

- (id)createFaceColorPalette
{
  v2 = objc_opt_new();

  return v2;
}

+ (id)_swatchForEditModeDependsOnOptions:(int64_t)a3 forDevice:(id)a4
{
  if (a3 == 15)
  {
    return &off_47FC8;
  }

  else
  {
    return 0;
  }
}

- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5
{
  v8 = a3;
  if (a4 == 15)
  {
    v9 = [a5 objectForKeyedSubscript:&off_477A8];
    if (!qword_58B10)
    {
      v10 = objc_opt_new();
      v11 = qword_58B10;
      qword_58B10 = v10;
    }

    v12 = [NSString stringWithFormat:@"%@-%@", v8, v9];
    v13 = [qword_58B10 objectForKey:v12];
    if (!v13)
    {
      v14 = [(NTKHadesFaceView *)self palette];
      v15 = [v14 copy];

      [v15 setPigmentEditOption:v9];
      +[NTKEditOption sizeForSwatchStyle:](NTKEditOption, "sizeForSwatchStyle:", [v8 swatchStyle]);
      v13 = +[NTKHadesHourView imageForRotation:palette:hour:size:](NTKHadesHourView, "imageForRotation:palette:hour:size:", [v8 rotation], v15, 10, v16, v17);
      [qword_58B10 setObject:v13 forKey:v12];
    }
  }

  else
  {
    v19.receiver = self;
    v19.super_class = NTKHadesFaceView;
    v13 = [(NTKHadesFaceView *)&v19 _swatchImageForEditOption:v8 mode:a4 withSelectedOptions:a5];
  }

  return v13;
}

@end