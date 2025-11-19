@interface NTKProteusFaceView
+ (id)_swatchForEditModeDependsOnOptions:(int64_t)a3 forDevice:(id)a4;
- (BOOL)_wantsStatusBarIconShadow;
- (NTKProteusFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5;
- (double)_angleForDigit:(unint64_t)a3;
- (double)_complicationAlphaForEditMode:(int64_t)a3;
- (double)_contentAlphaForEditMode:(int64_t)a3;
- (double)_dialAlphaForEditMode:(int64_t)a3;
- (double)_digitWeight:(unint64_t)a3 forAngle:(double)a4;
- (double)_horizontalPaddingForStatusBar;
- (double)_timeAlphaForEditMode:(int64_t)a3;
- (double)_timeAngle:(id)a3;
- (double)_verticalPaddingForStatusBar;
- (double)_weightForCWDistance:(double)a3;
- (id)_simpleTextComplicationColorForEditMode:(int64_t)a3;
- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5;
- (id)createFaceColorPalette;
- (unint64_t)_digitForAngle:(double)a3;
- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyComplicationColor:(id)a3;
- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyTransitionFraction:(double)a3 fromBackgroundStyle:(unint64_t)a4 toBackgroundStyle:(unint64_t)a5;
- (void)_applyTransitionFraction:(double)a3 fromColor:(id)a4 toColor:(id)a5;
- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7;
- (void)_cleanupAfterEditing;
- (void)_configureComplicationView:(id)a3 forSlot:(id)a4;
- (void)_configureForEditMode:(int64_t)a3;
- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5;
- (void)_loadSnapshotContentViews;
- (void)_prepareForStatusChange:(BOOL)a3;
- (void)_removeProteusContentView;
- (void)_removeViews;
- (void)_reorderSwitcherSnapshotView;
- (void)_setupProteusContentView;
- (void)_setupViews;
- (void)_unloadSnapshotContentViews;
- (void)_updateDigitWeights;
- (void)_updateNotchDigitWeights;
- (void)_updateSimpleTextLabelColor:(id)a3;
- (void)_updateSubDialRichComplicationsColor:(id)a3 alternateColor:(id)a4;
- (void)_updateViewColorsWithPalette:(id)a3;
- (void)applyColorOnAnalogHands;
- (void)configureComplicationAlphaFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5;
- (void)layoutSubviews;
- (void)setBackgroundStyle:(unint64_t)a3;
- (void)setOverrideDate:(id)a3 duration:(double)a4;
@end

@implementation NTKProteusFaceView

- (NTKProteusFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5
{
  v16.receiver = self;
  v16.super_class = NTKProteusFaceView;
  v5 = [(NTKProteusFaceView *)&v16 initWithFaceStyle:a3 forDevice:a4 clientIdentifier:a5];
  if (v5)
  {
    v6 = objc_alloc_init(NTKCompositeComplicationFactory);
    v7 = [NTKFullscreenSubdialComplicationFactory alloc];
    v8 = [(NTKProteusFaceView *)v5 device];
    v9 = [v7 initForDevice:v8];

    [v9 setFaceView:v5];
    v10 = [(NTKProteusFaceView *)v5 device];
    sub_66A4(v10, v13);
    [v9 setCircularComplicationDistanceFromCenter:{v14, v15}];

    [v9 setAlpha:v5 faceView:1.0];
    [v6 registerFactory:v9 forSlot:NTKComplicationSlotSubdialBottom];
    v11 = objc_alloc_init(NTKSimpleTextFaceViewComplicationFactory);
    [v11 setFaceView:v5];
    [v6 registerFactory:v11 forSlot:NTKComplicationSlotSubdialTop];
    [(NTKProteusFaceView *)v5 setComplicationFactory:v6];
  }

  return v5;
}

- (BOOL)_wantsStatusBarIconShadow
{
  v2 = [(NTKProteusFaceView *)self optionForCustomEditMode:12 slot:0];
  v3 = [v2 backgroundStyle] == &dword_0 + 1;

  return v3;
}

- (double)_horizontalPaddingForStatusBar
{
  v6 = 0;
  memset(&v5[1], 0, 32);
  v3 = [(NTKProteusFaceView *)self device:0];
  sub_66A4(v3, v5);

  [(NTKProteusFaceView *)self _adjustedTritiumFraction];
  CLKInterpolateBetweenFloatsClipped();

  CLKInterpolateBetweenFloatsClipped();
  return result;
}

- (double)_verticalPaddingForStatusBar
{
  v6 = 0;
  v5[2] = 0u;
  v3 = [(NTKProteusFaceView *)self device:0];
  sub_66A4(v3, v5);

  [(NTKProteusFaceView *)self _adjustedTritiumFraction];

  CLKInterpolateBetweenFloatsClipped();
  return result;
}

- (void)_prepareForStatusChange:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = NTKProteusFaceView;
  [(NTKProteusFaceView *)&v6 _prepareForStatusChange:?];
  if (self->_showingStatus != v3)
  {
    self->_showingStatus = v3;
    v5 = 0.0;
    if (v3)
    {
      v5 = 1.0;
    }

    [(NTKProteusContentView *)self->_proteusContentView setNotchFraction:v5];
    [(NTKProteusFaceView *)self _updateNotchDigitWeights];
  }
}

- (void)_reorderSwitcherSnapshotView
{
  v3 = [(NTKProteusFaceView *)self switcherSnapshotView];

  if (v3)
  {
    v4 = [(NTKProteusFaceView *)self switcherSnapshotView];
    [(NTKProteusFaceView *)self bringSubviewToFront:v4];
  }
}

- (void)_loadSnapshotContentViews
{
  v3.receiver = self;
  v3.super_class = NTKProteusFaceView;
  [(NTKProteusFaceView *)&v3 _loadSnapshotContentViews];
  [(NTKProteusFaceView *)self _setupViews];
}

- (void)_unloadSnapshotContentViews
{
  v3.receiver = self;
  v3.super_class = NTKProteusFaceView;
  [(NTKProteusFaceView *)&v3 _unloadSnapshotContentViews];
  [(NTKProteusFaceView *)self _removeViews];
}

- (void)_setupProteusContentView
{
  v3 = [NTKProteusContentView alloc];
  [(NTKProteusFaceView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  style = self->_style;
  v13 = [(NTKProteusFaceView *)self backgroundStyle];
  v14 = [(NTKProteusFaceView *)self colorPalette];
  v15 = [(NTKProteusFaceView *)self device];
  v16 = [(NTKProteusContentView *)v3 initWithFrame:style style:v13 backgroundStyle:v14 colorPalette:v15 device:v5, v7, v9, v11];
  proteusContentView = self->_proteusContentView;
  self->_proteusContentView = v16;

  v18 = [(NTKProteusFaceView *)self contentView];
  [v18 addSubview:self->_proteusContentView];

  [(NTKProteusFaceView *)self _updateDigitWeights];
}

- (void)_setupViews
{
  [(NTKProteusFaceView *)self _setupProteusContentView];
  v3 = [NTKRoundedCornerOverlayView alloc];
  [(NTKProteusFaceView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(NTKProteusFaceView *)self device];
  v13 = [v3 initWithFrame:v12 forDeviceCornerRadius:{v5, v7, v9, v11}];
  cornerView = self->_cornerView;
  self->_cornerView = v13;

  v15 = [(NTKProteusFaceView *)self contentView];
  [v15 addSubview:self->_cornerView];

  [(NTKProteusFaceView *)self applyColorOnAnalogHands];
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = NTKProteusFaceView;
  [(NTKProteusFaceView *)&v5 layoutSubviews];
  proteusContentView = self->_proteusContentView;
  [(NTKProteusFaceView *)self bounds];
  [(NTKProteusContentView *)proteusContentView ntk_setBoundsAndPositionFromFrame:?];
  cornerView = self->_cornerView;
  [(NTKProteusFaceView *)self bounds];
  [(NTKRoundedCornerOverlayView *)cornerView ntk_setBoundsAndPositionFromFrame:?];
}

- (void)_removeProteusContentView
{
  [(NTKProteusContentView *)self->_proteusContentView removeFromSuperview];
  proteusContentView = self->_proteusContentView;
  self->_proteusContentView = 0;
}

- (void)_removeViews
{
  [(NTKProteusFaceView *)self _removeProteusContentView];
  [(NTKRoundedCornerOverlayView *)self->_cornerView removeFromSuperview];
  cornerView = self->_cornerView;
  self->_cornerView = 0;
}

- (void)applyColorOnAnalogHands
{
  v11 = [(NTKProteusFaceView *)self timeView];
  v3 = +[UIColor whiteColor];
  v4 = [v11 hourHandView];
  [v4 setInlayColor:v3];

  v5 = [v11 minuteHandView];
  [v5 setInlayColor:v3];

  v6 = [v11 hourHandView];
  [v6 setColor:v3];

  v7 = [v11 minuteHandView];
  [v7 setColor:v3];

  v8 = [(NTKProteusFaceView *)self colorPalette];
  v9 = [v8 secondHand];
  v10 = [v11 secondHandView];
  [v10 setColor:v9];
}

- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v17 = a3;
  v8 = a5;
  switch(a4)
  {
    case 10:
      v11 = [(NTKProteusFaceView *)self colorPalette];
      [(NTKProteusFaceView *)self _updateViewColorsWithPalette:v11];

      [(NTKProteusFaceView *)self applyColorOnAnalogHands];
      v12 = [(NTKProteusFaceView *)self colorPalette];
      v13 = [v12 circularComplicationAColor];
      v14 = [(NTKProteusFaceView *)self colorPalette];
      v15 = [v14 circularComplicationB];
      [(NTKProteusFaceView *)self _updateSubDialRichComplicationsColor:v13 alternateColor:v15];

      v9 = [(NTKProteusFaceView *)self _simpleTextComplicationColorForEditMode:10];
      [(NTKProteusFaceView *)self _updateSimpleTextLabelColor:v9];
      break;
    case 12:
      v9 = [(NTKProteusFaceView *)self optionForCustomEditMode:12 slot:0];
      -[NTKProteusFaceView setBackgroundStyle:](self, "setBackgroundStyle:", [v9 backgroundStyle]);
      v10 = [(NTKProteusFaceView *)self colorPalette];
      [(NTKProteusFaceView *)self _updateViewColorsWithPalette:v10];

      break;
    case 15:
      v9 = [(NTKProteusFaceView *)self optionForCustomEditMode:15 slot:0];
      -[NTKProteusFaceView setStyle:](self, "setStyle:", [v9 style]);
      break;
    default:
      goto LABEL_8;
  }

LABEL_8:
  v16 = [(NTKProteusFaceView *)self delegate];
  [v16 faceViewDidChangeWantsStatusBarIconShadow];
}

- (void)_updateSubDialRichComplicationsColor:(id)a3 alternateColor:(id)a4
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_4EF8;
  v5[3] = &unk_104F8;
  v6 = self;
  v7 = a3;
  v4 = v7;
  [(NTKProteusFaceView *)v6 enumerateComplicationDisplayWrappersWithBlock:v5];
}

- (void)setBackgroundStyle:(unint64_t)a3
{
  self->_backgroundStyle = a3;
  v5 = [(NTKProteusFaceView *)self colorPalette];
  [v5 setBackgroundStyle:a3];

  v6 = [(NTKProteusFaceView *)self colorPalette];
  [(NTKProteusFaceView *)self _updateViewColorsWithPalette:v6];
}

- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7
{
  v14 = a4;
  v12 = a5;
  v13 = a7;
  switch(a6)
  {
    case 10:
      [(NTKProteusFaceView *)self _applyTransitionFraction:v14 fromColor:v12 toColor:a3];
      break;
    case 12:
      -[NTKProteusFaceView _applyTransitionFraction:fromBackgroundStyle:toBackgroundStyle:](self, "_applyTransitionFraction:fromBackgroundStyle:toBackgroundStyle:", [v14 backgroundStyle], objc_msgSend(v12, "backgroundStyle"), a3);
      break;
    case 15:
      -[NTKProteusFaceView _applyTransitionFraction:fromStyle:toStyle:](self, "_applyTransitionFraction:fromStyle:toStyle:", [v14 style], objc_msgSend(v12, "style"), a3);
      break;
  }
}

- (void)_applyTransitionFraction:(double)a3 fromColor:(id)a4 toColor:(id)a5
{
  v6 = [(NTKProteusFaceView *)self interpolatedColorPalette:a4];
  [(NTKProteusFaceView *)self _updateViewColorsWithPalette:v6];
}

- (void)_applyTransitionFraction:(double)a3 fromBackgroundStyle:(unint64_t)a4 toBackgroundStyle:(unint64_t)a5
{
  v9 = [(NTKProteusFaceView *)self colorPalette];
  v13 = [v9 copy];

  [v13 setBackgroundStyle:a4];
  v10 = [(NTKProteusFaceView *)self colorPalette];
  v11 = [v10 copy];

  [v11 setBackgroundStyle:a5];
  v12 = [[NTKInterpolatedColorPalette alloc] initWithFromPalette:v13 toPalette:v11];
  [v12 setTransitionFraction:a3];
  [(NTKProteusFaceView *)self _updateViewColorsWithPalette:v12];
}

- (void)_configureComplicationView:(id)a3 forSlot:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = NTKProteusFaceView;
  [(NTKProteusFaceView *)&v15 _configureComplicationView:v6 forSlot:v7];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v7 isEqualToString:NTKComplicationSlotSubdialBottom])
  {
    v8 = v6;
    v9 = [(NTKProteusFaceView *)self colorPalette];
    v10 = [v9 circularComplicationAColor];
    [(NTKProteusFaceView *)self setComplicationColor:v10];

    v11 = [(NTKProteusFaceView *)self complicationColor];
    [(NTKProteusFaceView *)self setInterpolatedComplicationColor:v11];

    [v8 updateMonochromeColor];
LABEL_8:

    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v6;
    v8 = [(NTKProteusFaceView *)self _simpleTextComplicationColorForEditMode:[(NTKProteusFaceView *)self editing]];
    v13 = [v12 label];

    [v13 setTextColor:v8];
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v6;
    v8 = [(NTKProteusFaceView *)self _simpleTextComplicationColorForEditMode:[(NTKProteusFaceView *)self editing]];
    [v14 setTextColor:v8];

    goto LABEL_8;
  }

LABEL_9:
}

- (void)_updateViewColorsWithPalette:(id)a3
{
  proteusContentView = self->_proteusContentView;
  v5 = a3;
  [(NTKProteusContentView *)proteusContentView setColorPalette:v5];
  v16 = [(NTKProteusFaceView *)self timeView];
  v6 = [v5 hourHandInlay];
  v7 = [v16 hourHandView];
  [v7 setInlayColor:v6];

  v8 = [v5 hourHandInlay];
  v9 = [v16 minuteHandView];
  [v9 setInlayColor:v8];

  v10 = [v5 hourHandStroke];
  v11 = [v16 hourHandView];
  [v11 setColor:v10];

  v12 = [v5 hourHandStroke];
  v13 = [v16 minuteHandView];
  [v13 setColor:v12];

  v14 = [v5 secondHand];
  v15 = [v16 secondHandView];
  [v15 setColor:v14];

  [(NTKProteusFaceView *)self _applyComplicationColor:v5];
}

- (void)_applyComplicationColor:(id)a3
{
  v4 = a3;
  v5 = [v4 circularComplicationAColor];
  v6 = [v4 circularComplicationB];
  [(NTKProteusFaceView *)self _updateSubDialRichComplicationsColor:v5 alternateColor:v6];

  v7 = [v4 simpleTextComplicationColor];

  [(NTKProteusFaceView *)self _updateSimpleTextLabelColor:v7];
}

- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v12.receiver = self;
  v12.super_class = NTKProteusFaceView;
  [(NTKProteusFaceView *)&v12 _applyBreathingFraction:a4 forCustomEditMode:a5 slot:?];
  NTKLargeElementScaleForBreathingFraction();
  memset(&v11, 0, sizeof(v11));
  CGAffineTransformMakeScale(&v11, v6, v6);
  v7 = [(NTKProteusFaceView *)self contentView];
  v10 = v11;
  [v7 setTransform:&v10];

  v8 = [(NTKProteusFaceView *)self timeView];
  v10 = v11;
  [v8 setTransform:&v10];

  v9 = [(NTKProteusFaceView *)self complicationContainerView];
  v10 = v11;
  [v9 setTransform:&v10];
}

- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v9.receiver = self;
  v9.super_class = NTKProteusFaceView;
  [(NTKProteusFaceView *)&v9 _applyRubberBandingFraction:a4 forCustomEditMode:a5 slot:?];
  if (a4)
  {
    NTKScaleForRubberBandingFraction();
    CGAffineTransformMakeScale(&v8, v7, v7);
    [(NTKProteusFaceView *)self setTransform:&v8];
    NTKAlphaForRubberBandingFraction();
    [(NTKProteusFaceView *)self setAlpha:?];
  }
}

- (void)setOverrideDate:(id)a3 duration:(double)a4
{
  v5.receiver = self;
  v5.super_class = NTKProteusFaceView;
  [(NTKProteusFaceView *)&v5 setOverrideDate:a3 duration:a4];
  [(NTKProteusFaceView *)self _updateDigitWeights];
}

- (void)_updateNotchDigitWeights
{
  v9 = [(NTKProteusFaceView *)self currentDisplayDate];
  [(NTKProteusFaceView *)self _timeAngle:v9];
  v4 = v3;
  [(NTKProteusFaceView *)self _digitWeight:1 forAngle:?];
  v6 = v5;
  [(NTKProteusFaceView *)self _digitWeight:12 forAngle:v4];
  v8 = v7;
  [(NTKProteusContentView *)self->_proteusContentView setDigitWeight:1 forDigit:v6];
  [(NTKProteusContentView *)self->_proteusContentView setDigitWeight:12 forDigit:v8];
}

- (void)_updateDigitWeights
{
  v6 = [(NTKProteusFaceView *)self currentDisplayDate];
  [(NTKProteusFaceView *)self _timeAngle:?];
  v4 = v3;
  for (i = 1; i != 13; ++i)
  {
    [(NTKProteusFaceView *)self _digitWeight:i forAngle:v4];
    [(NTKProteusContentView *)self->_proteusContentView setDigitWeight:i forDigit:?];
  }
}

- (double)_angleForDigit:(unint64_t)a3
{
  if (a3 > 3)
  {
    return ((a3 - 3) / -6.0 + 2.0) * 3.14159265;
  }

  else
  {
    return (3 - a3) * 3.14159265 / 6.0;
  }
}

- (unint64_t)_digitForAngle:(double)a3
{
  v3 = 15;
  if (a3 < 1.30899694)
  {
    v3 = 3;
  }

  return v3 - vcvtpd_u64_f64((a3 * 12.0 / 3.14159265 + -1.0) * 0.5);
}

- (double)_timeAngle:(id)a3
{
  v4 = a3;
  v5 = +[NSCalendar currentCalendar];
  v6 = [v5 components:32992 fromDate:v4];

  -[NTKProteusFaceView _angleForDigit:](self, "_angleForDigit:", [v6 hour] % 12);
  v8 = v7;
  if ([v6 minute] == &stru_20.vmaddr + 3)
  {
    v9 = [v6 second];
    if (v9 >= 0x3A)
    {
      v10 = (1000 * v9 + [v6 nanosecond] / 0xF4240 - 58000) / 2000.0;
      if (v10 > 1.0)
      {
        v10 = 1.0;
      }

      v8 = v8 + fmax(v10, 0.0) * -0.523598776;
    }
  }

  return v8;
}

- (double)_digitWeight:(unint64_t)a3 forAngle:(double)a4
{
  [(NTKProteusFaceView *)self _angleForDigit:a3];
  [NTKProteusWave clockwiseDistance:"clockwiseDistance:fromStartAngle:" fromStartAngle:?];

  [(NTKProteusFaceView *)self _weightForCWDistance:?];
  return result;
}

- (double)_weightForCWDistance:(double)a3
{
  if (a3 >= 0.523598776)
  {
    return (a3 + -0.523598776) / 5.75958653;
  }

  else
  {
    return a3 / -0.523598776 + 1.0;
  }
}

- (void)_configureForEditMode:(int64_t)a3
{
  v12.receiver = self;
  v12.super_class = NTKProteusFaceView;
  [(NTKProteusFaceView *)&v12 _configureForEditMode:?];
  [(NTKProteusFaceView *)self configureComplicationAlphaFraction:a3 fromEditMode:a3 toEditMode:1.0];
  [(NTKProteusFaceView *)self _contentAlphaForEditMode:a3];
  v6 = v5;
  v7 = [(NTKProteusFaceView *)self proteusContentView];
  [v7 setAlpha:v6];

  [(NTKProteusFaceView *)self _timeAlphaForEditMode:a3];
  v9 = v8;
  v10 = [(NTKProteusFaceView *)self timeView];
  [v10 setAlpha:v9];

  v11 = [(NTKProteusFaceView *)self colorPalette];
  [(NTKProteusFaceView *)self _updateViewColorsWithPalette:v11];
}

- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5
{
  v18.receiver = self;
  v18.super_class = NTKProteusFaceView;
  [NTKProteusFaceView _configureForTransitionFraction:"_configureForTransitionFraction:fromEditMode:toEditMode:" fromEditMode:? toEditMode:?];
  [(NTKProteusFaceView *)self _contentAlphaForEditMode:a4];
  [(NTKProteusFaceView *)self _contentAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  v10 = v9;
  v11 = [(NTKProteusFaceView *)self proteusContentView];
  [v11 setAlpha:v10];

  [(NTKProteusFaceView *)self _timeAlphaForEditMode:a4];
  [(NTKProteusFaceView *)self _timeAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  v13 = v12;
  v14 = [(NTKProteusFaceView *)self timeView];
  [v14 setAlpha:v13];

  [(NTKProteusFaceView *)self configureComplicationAlphaFraction:a4 fromEditMode:a5 toEditMode:a3];
  v15 = [(NTKProteusFaceView *)self _simpleTextComplicationColorForEditMode:a4];
  v16 = [(NTKProteusFaceView *)self _simpleTextComplicationColorForEditMode:a5];
  v17 = NTKInterpolateBetweenColors();

  [(NTKProteusFaceView *)self _updateSimpleTextLabelColor:v17];
}

- (void)_updateSimpleTextLabelColor:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_5EE4;
  v5[3] = &unk_10520;
  v6 = a3;
  v4 = v6;
  [(NTKProteusFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v5];
}

- (void)configureComplicationAlphaFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_6048;
  v5[3] = &unk_10548;
  v5[4] = self;
  v5[5] = a4;
  v5[6] = a5;
  *&v5[7] = a3;
  [(NTKProteusFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v5];
}

- (void)_cleanupAfterEditing
{
  v4.receiver = self;
  v4.super_class = NTKProteusFaceView;
  [(NTKProteusFaceView *)&v4 _cleanupAfterEditing];
  v3 = [(NTKProteusFaceView *)self delegate];
  [v3 faceViewDidChangeWantsStatusBarIconShadow];
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

- (id)_simpleTextComplicationColorForEditMode:(int64_t)a3
{
  if (a3 == 1)
  {
    v3 = [UIColor colorWithWhite:0.95 alpha:1.0];
  }

  else
  {
    v4 = [(NTKProteusFaceView *)self colorPalette];
    v3 = [v4 simpleTextComplicationColor];
  }

  return v3;
}

- (double)_dialAlphaForEditMode:(int64_t)a3
{
  if (!a3)
  {
    return 1.0;
  }

  if (a3 == 1)
  {
    return 0.0;
  }

  return NTKEditModeDimmedAlpha;
}

- (double)_contentAlphaForEditMode:(int64_t)a3
{
  result = NTKEditModeDimmedAlpha;
  if (a3 != 1)
  {
    return 1.0;
  }

  return result;
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

+ (id)_swatchForEditModeDependsOnOptions:(int64_t)a3 forDevice:(id)a4
{
  v4 = &off_10DB8;
  if (a3 != 12)
  {
    v4 = 0;
  }

  if (a3 == 15)
  {
    return &off_10DA0;
  }

  else
  {
    return v4;
  }
}

- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (a4 == 15)
  {
    v11 = v8;
    v12 = [v10 objectForKeyedSubscript:&off_10B90];
  }

  else
  {
    if (a4 != 12)
    {
      v27.receiver = self;
      v27.super_class = NTKProteusFaceView;
      v18 = [(NTKProteusFaceView *)&v27 _swatchImageForEditOption:v8 mode:a4 withSelectedOptions:v9];
      goto LABEL_11;
    }

    v11 = [v9 objectForKeyedSubscript:&off_10BD8];
    v12 = v8;
  }

  v13 = v12;
  v14 = [v10 objectForKeyedSubscript:&off_10BA8];
  if (!qword_16378)
  {
    v15 = objc_opt_new();
    v16 = qword_16378;
    qword_16378 = v15;
  }

  v17 = [NSString stringWithFormat:@"%@-%@-%@", v11, v13, v14];
  v18 = [qword_16378 objectForKey:v17];
  if (!v18)
  {
    v19 = [NTKProteusFaceView alloc];
    v20 = [(NTKProteusFaceView *)self device];
    v21 = [(NTKProteusFaceView *)v19 initWithFaceStyle:44 forDevice:v20 clientIdentifier:0];

    [(NTKProteusFaceView *)self frame];
    [(NTKProteusFaceView *)v21 setFrame:?];
    [(NTKProteusFaceView *)v21 _loadSnapshotContentViews];
    [(NTKProteusFaceView *)v21 setOption:v14 forCustomEditMode:10 slot:0];
    [(NTKProteusFaceView *)v21 setOption:v11 forCustomEditMode:15 slot:0];
    [(NTKProteusFaceView *)v21 setOption:v13 forCustomEditMode:12 slot:0];
    v22 = NTKIdealizedDate();
    [(NTKProteusFaceView *)v21 setOverrideDate:v22 duration:0.0];

    [(NTKProteusFaceView *)self frame];
    [(NTKProteusFaceView *)v21 setFrame:?];
    [(NTKProteusFaceView *)v21 bounds];
    v29.width = v23;
    v29.height = v24;
    UIGraphicsBeginImageContextWithOptions(v29, 0, 0.0);
    v25 = [(NTKProteusFaceView *)v21 layer];
    [v25 renderInContext:UIGraphicsGetCurrentContext()];

    v18 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    [qword_16378 setObject:v18 forKey:v17];
  }

LABEL_11:

  return v18;
}

- (id)createFaceColorPalette
{
  v3 = [NTKProteusFaceColorPalette alloc];
  v4 = objc_opt_class();
  v5 = [(NTKProteusFaceView *)self device];
  v6 = [(NTKProteusFaceColorPalette *)v3 initWithFaceClass:v4 device:v5];

  [(NTKProteusFaceColorPalette *)v6 setBackgroundStyle:[(NTKProteusFaceView *)self backgroundStyle]];

  return v6;
}

@end