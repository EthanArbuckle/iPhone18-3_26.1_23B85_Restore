@interface NTKHadesFaceView
+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device;
- (NTKHadesFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier;
- (double)_timeAlphaForEditMode:(int64_t)mode;
- (id)_logoForRotation:(unint64_t)rotation;
- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options;
- (id)createFaceColorPalette;
- (void)_applyBreathingAndRubberbanding;
- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyDataMode;
- (void)_applyFraction:(double)fraction fromRotation:(id)rotation toRotation:(id)toRotation;
- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_cleanupAfterEditing;
- (void)_configureForEditMode:(int64_t)mode;
- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode;
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
- (void)_updateContentColorsFromPalette:(id)palette;
- (void)_updateHour;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setOverrideDate:(id)date duration:(double)duration;
@end

@implementation NTKHadesFaceView

- (NTKHadesFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier
{
  v6.receiver = self;
  v6.super_class = NTKHadesFaceView;
  return [(NTKHadesFaceView *)&v6 initWithFaceStyle:style forDevice:device clientIdentifier:identifier];
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
  device = [(NTKHadesFaceView *)self device];
  v5 = [(NTKHadesHourView *)v3 initWithDevice:device];
  [(NTKHadesFaceView *)self setHourView:v5];

  contentView = [(NTKHadesFaceView *)self contentView];
  [contentView addSubview:self->_hourView];

  v20 = [(NTKHadesFaceView *)self _logoForRotation:self->_rotation];
  contentView2 = [(NTKHadesFaceView *)self contentView];
  [contentView2 addSubview:v20];

  v8 = [NTKRoundedCornerOverlayView alloc];
  [(NTKHadesFaceView *)self bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  device2 = [(NTKHadesFaceView *)self device];
  v18 = [v8 initWithFrame:device2 forDeviceCornerRadius:{v10, v12, v14, v16}];
  [(NTKHadesFaceView *)self setCorners:v18];

  contentView3 = [(NTKHadesFaceView *)self contentView];
  [contentView3 addSubview:self->_corners];
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
  dataMode = [(NTKHadesFaceView *)self dataMode];
  if ((dataMode - 2) < 4 || dataMode == 0)
  {
    [(NTKHadesFaceView *)self _stopHourUpdate];
  }

  else if (dataMode == &dword_0 + 1)
  {
    [(NTKHadesFaceView *)self _startHourUpdate];
  }
}

- (void)setOverrideDate:(id)date duration:(double)duration
{
  v6.receiver = self;
  v6.super_class = NTKHadesFaceView;
  [(NTKHadesFaceView *)&v6 setOverrideDate:duration duration:?];
  if (date)
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
  currentDisplayDate = [(NTKHadesFaceView *)self currentDisplayDate];
  if (currentDisplayDate)
  {
    CLKClockTimerDateForDate();
  }

  else
  {
    CLKClockTimerDateForNow();
  }

  [(NTKHadesFaceView *)self _updateHour:v5];
}

- (id)_logoForRotation:(unint64_t)rotation
{
  v5 = [NSNumber numberWithUnsignedInteger:?];
  v6 = [(NSMutableDictionary *)self->_logos objectForKeyedSubscript:v5];
  if (!v6)
  {
    v7 = @"HadesLogoStraight";
    if (rotation == 1)
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

- (void)_updateContentColorsFromPalette:(id)palette
{
  paletteCopy = palette;
  secondHand = [paletteCopy secondHand];
  timeView = [(NTKHadesFaceView *)self timeView];
  secondHandView = [timeView secondHandView];
  [secondHandView setColor:secondHand];

  [(NTKHadesHourView *)self->_hourView setPalette:paletteCopy];
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
  device = [(NTKHadesFaceView *)self device];
  v12 = sub_1DE88(device, device);
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

- (void)_configureForEditMode:(int64_t)mode
{
  v8.receiver = self;
  v8.super_class = NTKHadesFaceView;
  [(NTKHadesFaceView *)&v8 _configureForEditMode:?];
  [(NTKHadesFaceView *)self _timeAlphaForEditMode:mode];
  v6 = v5;
  timeView = [(NTKHadesFaceView *)self timeView];
  [timeView setAlpha:v6];
}

- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode
{
  v11.receiver = self;
  v11.super_class = NTKHadesFaceView;
  [NTKHadesFaceView _configureForTransitionFraction:"_configureForTransitionFraction:fromEditMode:toEditMode:" fromEditMode:? toEditMode:?];
  [(NTKHadesFaceView *)self _timeAlphaForEditMode:mode];
  [(NTKHadesFaceView *)self _timeAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  v9 = v8;
  timeView = [(NTKHadesFaceView *)self timeView];
  [timeView setAlpha:v9];
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

- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  v10.receiver = self;
  v10.super_class = NTKHadesFaceView;
  [(NTKHadesFaceView *)&v10 _applyOption:optionCopy forCustomEditMode:mode slot:slot];
  if (mode == 10)
  {
    palette = [(NTKHadesFaceView *)self palette];
    [(NTKHadesFaceView *)self _updateContentColorsFromPalette:palette];
  }

  else if (mode == 15)
  {
    [(NTKHadesFaceView *)self _applyRotation:optionCopy];
  }
}

- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  toOptionCopy = toOption;
  v15.receiver = self;
  v15.super_class = NTKHadesFaceView;
  [(NTKHadesFaceView *)&v15 _applyTransitionFraction:optionCopy fromOption:toOptionCopy toOption:mode forCustomEditMode:slot slot:fraction];
  if (mode == 10)
  {
    interpolatedColorPalette = [(NTKHadesFaceView *)self interpolatedColorPalette];
    [(NTKHadesFaceView *)self _updateContentColorsFromPalette:interpolatedColorPalette];
  }

  else if (mode == 15)
  {
    [(NTKHadesFaceView *)self _applyFraction:optionCopy fromRotation:toOptionCopy toRotation:fraction];
  }
}

- (void)_applyFraction:(double)fraction fromRotation:(id)rotation toRotation:(id)toRotation
{
  rotationCopy = rotation;
  toRotationCopy = toRotation;
  v10 = toRotationCopy;
  if (!rotationCopy)
  {
    rotationCopy = toRotationCopy;
    fraction = 1.0;
  }

  rotation = [rotationCopy rotation];
  rotation2 = [v10 rotation];
  [(NTKHadesHourView *)self->_hourView applyFraction:rotation fromRotation:rotation2 toRotation:fraction];
  if (![(NTKHadesFaceView *)self _isFractionAtEnd:fraction])
  {
    v21 = [(NTKHadesFaceView *)self _logoForRotation:rotation];
    v22 = [(NTKHadesFaceView *)self _logoForRotation:rotation2];
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
    superview = [v16 superview];

    if (!superview)
    {
      contentView = [(NTKHadesFaceView *)self contentView];
      [contentView addSubview:v16];
    }

    superview2 = [v20 superview];

    if (superview2)
    {
      if (superview)
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
        device = [(NTKHadesFaceView *)self device];
        v44 = sub_1DE88(device, device);
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
      contentView2 = [(NTKHadesFaceView *)self contentView];
      [contentView2 addSubview:v20];
    }

    [(NTKHadesFaceView *)self _layoutLogo];
    goto LABEL_17;
  }

  if (fraction == 0.0)
  {
    v13 = rotation;
  }

  else
  {
    v13 = rotation2;
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
  superview3 = [v16 superview];

  if (!superview3)
  {
    contentView3 = [(NTKHadesFaceView *)self contentView];
    [contentView3 addSubview:v16];

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

- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v8.receiver = self;
  v8.super_class = NTKHadesFaceView;
  [(NTKHadesFaceView *)&v8 _applyBreathingFraction:mode forCustomEditMode:slot slot:?];
  if (mode)
  {
    self->_breathingFraction = fraction;
    [(NTKHadesFaceView *)self _applyBreathingAndRubberbanding];
  }
}

- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v8.receiver = self;
  v8.super_class = NTKHadesFaceView;
  [(NTKHadesFaceView *)&v8 _applyRubberBandingFraction:mode forCustomEditMode:slot slot:?];
  if (mode)
  {
    self->_rubberbandingFraction = fraction;
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
  contentView = [(NTKHadesFaceView *)self contentView];
  v8 = v9;
  [contentView setTransform:&v8];

  timeView = [(NTKHadesFaceView *)self timeView];
  v8 = v9;
  [timeView setTransform:&v8];
}

- (id)createFaceColorPalette
{
  v2 = objc_opt_new();

  return v2;
}

+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device
{
  if (options == 15)
  {
    return &off_47FC8;
  }

  else
  {
    return 0;
  }
}

- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options
{
  optionCopy = option;
  if (mode == 15)
  {
    v9 = [options objectForKeyedSubscript:&off_477A8];
    if (!qword_58B10)
    {
      v10 = objc_opt_new();
      v11 = qword_58B10;
      qword_58B10 = v10;
    }

    v12 = [NSString stringWithFormat:@"%@-%@", optionCopy, v9];
    v13 = [qword_58B10 objectForKey:v12];
    if (!v13)
    {
      palette = [(NTKHadesFaceView *)self palette];
      v15 = [palette copy];

      [v15 setPigmentEditOption:v9];
      +[NTKEditOption sizeForSwatchStyle:](NTKEditOption, "sizeForSwatchStyle:", [optionCopy swatchStyle]);
      v13 = +[NTKHadesHourView imageForRotation:palette:hour:size:](NTKHadesHourView, "imageForRotation:palette:hour:size:", [optionCopy rotation], v15, 10, v16, v17);
      [qword_58B10 setObject:v13 forKey:v12];
    }
  }

  else
  {
    v19.receiver = self;
    v19.super_class = NTKHadesFaceView;
    v13 = [(NTKHadesFaceView *)&v19 _swatchImageForEditOption:optionCopy mode:mode withSelectedOptions:options];
  }

  return v13;
}

@end