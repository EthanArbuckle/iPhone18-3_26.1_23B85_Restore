@interface NTKProteusFaceView
+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device;
- (BOOL)_wantsStatusBarIconShadow;
- (NTKProteusFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier;
- (double)_angleForDigit:(unint64_t)digit;
- (double)_complicationAlphaForEditMode:(int64_t)mode;
- (double)_contentAlphaForEditMode:(int64_t)mode;
- (double)_dialAlphaForEditMode:(int64_t)mode;
- (double)_digitWeight:(unint64_t)weight forAngle:(double)angle;
- (double)_horizontalPaddingForStatusBar;
- (double)_timeAlphaForEditMode:(int64_t)mode;
- (double)_timeAngle:(id)angle;
- (double)_verticalPaddingForStatusBar;
- (double)_weightForCWDistance:(double)distance;
- (id)_simpleTextComplicationColorForEditMode:(int64_t)mode;
- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options;
- (id)createFaceColorPalette;
- (unint64_t)_digitForAngle:(double)angle;
- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyComplicationColor:(id)color;
- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyTransitionFraction:(double)fraction fromBackgroundStyle:(unint64_t)style toBackgroundStyle:(unint64_t)backgroundStyle;
- (void)_applyTransitionFraction:(double)fraction fromColor:(id)color toColor:(id)toColor;
- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_cleanupAfterEditing;
- (void)_configureComplicationView:(id)view forSlot:(id)slot;
- (void)_configureForEditMode:(int64_t)mode;
- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode;
- (void)_loadSnapshotContentViews;
- (void)_prepareForStatusChange:(BOOL)change;
- (void)_removeProteusContentView;
- (void)_removeViews;
- (void)_reorderSwitcherSnapshotView;
- (void)_setupProteusContentView;
- (void)_setupViews;
- (void)_unloadSnapshotContentViews;
- (void)_updateDigitWeights;
- (void)_updateNotchDigitWeights;
- (void)_updateSimpleTextLabelColor:(id)color;
- (void)_updateSubDialRichComplicationsColor:(id)color alternateColor:(id)alternateColor;
- (void)_updateViewColorsWithPalette:(id)palette;
- (void)applyColorOnAnalogHands;
- (void)configureComplicationAlphaFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode;
- (void)layoutSubviews;
- (void)setBackgroundStyle:(unint64_t)style;
- (void)setOverrideDate:(id)date duration:(double)duration;
@end

@implementation NTKProteusFaceView

- (NTKProteusFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier
{
  v16.receiver = self;
  v16.super_class = NTKProteusFaceView;
  v5 = [(NTKProteusFaceView *)&v16 initWithFaceStyle:style forDevice:device clientIdentifier:identifier];
  if (v5)
  {
    v6 = objc_alloc_init(NTKCompositeComplicationFactory);
    v7 = [NTKFullscreenSubdialComplicationFactory alloc];
    device = [(NTKProteusFaceView *)v5 device];
    v9 = [v7 initForDevice:device];

    [v9 setFaceView:v5];
    device2 = [(NTKProteusFaceView *)v5 device];
    sub_66A4(device2, v13);
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

- (void)_prepareForStatusChange:(BOOL)change
{
  changeCopy = change;
  v6.receiver = self;
  v6.super_class = NTKProteusFaceView;
  [(NTKProteusFaceView *)&v6 _prepareForStatusChange:?];
  if (self->_showingStatus != changeCopy)
  {
    self->_showingStatus = changeCopy;
    v5 = 0.0;
    if (changeCopy)
    {
      v5 = 1.0;
    }

    [(NTKProteusContentView *)self->_proteusContentView setNotchFraction:v5];
    [(NTKProteusFaceView *)self _updateNotchDigitWeights];
  }
}

- (void)_reorderSwitcherSnapshotView
{
  switcherSnapshotView = [(NTKProteusFaceView *)self switcherSnapshotView];

  if (switcherSnapshotView)
  {
    switcherSnapshotView2 = [(NTKProteusFaceView *)self switcherSnapshotView];
    [(NTKProteusFaceView *)self bringSubviewToFront:switcherSnapshotView2];
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
  backgroundStyle = [(NTKProteusFaceView *)self backgroundStyle];
  colorPalette = [(NTKProteusFaceView *)self colorPalette];
  device = [(NTKProteusFaceView *)self device];
  v16 = [(NTKProteusContentView *)v3 initWithFrame:style style:backgroundStyle backgroundStyle:colorPalette colorPalette:device device:v5, v7, v9, v11];
  proteusContentView = self->_proteusContentView;
  self->_proteusContentView = v16;

  contentView = [(NTKProteusFaceView *)self contentView];
  [contentView addSubview:self->_proteusContentView];

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
  device = [(NTKProteusFaceView *)self device];
  v13 = [v3 initWithFrame:device forDeviceCornerRadius:{v5, v7, v9, v11}];
  cornerView = self->_cornerView;
  self->_cornerView = v13;

  contentView = [(NTKProteusFaceView *)self contentView];
  [contentView addSubview:self->_cornerView];

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
  timeView = [(NTKProteusFaceView *)self timeView];
  v3 = +[UIColor whiteColor];
  hourHandView = [timeView hourHandView];
  [hourHandView setInlayColor:v3];

  minuteHandView = [timeView minuteHandView];
  [minuteHandView setInlayColor:v3];

  hourHandView2 = [timeView hourHandView];
  [hourHandView2 setColor:v3];

  minuteHandView2 = [timeView minuteHandView];
  [minuteHandView2 setColor:v3];

  colorPalette = [(NTKProteusFaceView *)self colorPalette];
  secondHand = [colorPalette secondHand];
  secondHandView = [timeView secondHandView];
  [secondHandView setColor:secondHand];
}

- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  slotCopy = slot;
  switch(mode)
  {
    case 10:
      colorPalette = [(NTKProteusFaceView *)self colorPalette];
      [(NTKProteusFaceView *)self _updateViewColorsWithPalette:colorPalette];

      [(NTKProteusFaceView *)self applyColorOnAnalogHands];
      colorPalette2 = [(NTKProteusFaceView *)self colorPalette];
      circularComplicationAColor = [colorPalette2 circularComplicationAColor];
      colorPalette3 = [(NTKProteusFaceView *)self colorPalette];
      circularComplicationB = [colorPalette3 circularComplicationB];
      [(NTKProteusFaceView *)self _updateSubDialRichComplicationsColor:circularComplicationAColor alternateColor:circularComplicationB];

      v9 = [(NTKProteusFaceView *)self _simpleTextComplicationColorForEditMode:10];
      [(NTKProteusFaceView *)self _updateSimpleTextLabelColor:v9];
      break;
    case 12:
      v9 = [(NTKProteusFaceView *)self optionForCustomEditMode:12 slot:0];
      -[NTKProteusFaceView setBackgroundStyle:](self, "setBackgroundStyle:", [v9 backgroundStyle]);
      colorPalette4 = [(NTKProteusFaceView *)self colorPalette];
      [(NTKProteusFaceView *)self _updateViewColorsWithPalette:colorPalette4];

      break;
    case 15:
      v9 = [(NTKProteusFaceView *)self optionForCustomEditMode:15 slot:0];
      -[NTKProteusFaceView setStyle:](self, "setStyle:", [v9 style]);
      break;
    default:
      goto LABEL_8;
  }

LABEL_8:
  delegate = [(NTKProteusFaceView *)self delegate];
  [delegate faceViewDidChangeWantsStatusBarIconShadow];
}

- (void)_updateSubDialRichComplicationsColor:(id)color alternateColor:(id)alternateColor
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_4EF8;
  v5[3] = &unk_104F8;
  selfCopy = self;
  colorCopy = color;
  v4 = colorCopy;
  [(NTKProteusFaceView *)selfCopy enumerateComplicationDisplayWrappersWithBlock:v5];
}

- (void)setBackgroundStyle:(unint64_t)style
{
  self->_backgroundStyle = style;
  colorPalette = [(NTKProteusFaceView *)self colorPalette];
  [colorPalette setBackgroundStyle:style];

  colorPalette2 = [(NTKProteusFaceView *)self colorPalette];
  [(NTKProteusFaceView *)self _updateViewColorsWithPalette:colorPalette2];
}

- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  toOptionCopy = toOption;
  slotCopy = slot;
  switch(mode)
  {
    case 10:
      [(NTKProteusFaceView *)self _applyTransitionFraction:optionCopy fromColor:toOptionCopy toColor:fraction];
      break;
    case 12:
      -[NTKProteusFaceView _applyTransitionFraction:fromBackgroundStyle:toBackgroundStyle:](self, "_applyTransitionFraction:fromBackgroundStyle:toBackgroundStyle:", [optionCopy backgroundStyle], objc_msgSend(toOptionCopy, "backgroundStyle"), fraction);
      break;
    case 15:
      -[NTKProteusFaceView _applyTransitionFraction:fromStyle:toStyle:](self, "_applyTransitionFraction:fromStyle:toStyle:", [optionCopy style], objc_msgSend(toOptionCopy, "style"), fraction);
      break;
  }
}

- (void)_applyTransitionFraction:(double)fraction fromColor:(id)color toColor:(id)toColor
{
  v6 = [(NTKProteusFaceView *)self interpolatedColorPalette:color];
  [(NTKProteusFaceView *)self _updateViewColorsWithPalette:v6];
}

- (void)_applyTransitionFraction:(double)fraction fromBackgroundStyle:(unint64_t)style toBackgroundStyle:(unint64_t)backgroundStyle
{
  colorPalette = [(NTKProteusFaceView *)self colorPalette];
  v13 = [colorPalette copy];

  [v13 setBackgroundStyle:style];
  colorPalette2 = [(NTKProteusFaceView *)self colorPalette];
  v11 = [colorPalette2 copy];

  [v11 setBackgroundStyle:backgroundStyle];
  v12 = [[NTKInterpolatedColorPalette alloc] initWithFromPalette:v13 toPalette:v11];
  [v12 setTransitionFraction:fraction];
  [(NTKProteusFaceView *)self _updateViewColorsWithPalette:v12];
}

- (void)_configureComplicationView:(id)view forSlot:(id)slot
{
  viewCopy = view;
  slotCopy = slot;
  v15.receiver = self;
  v15.super_class = NTKProteusFaceView;
  [(NTKProteusFaceView *)&v15 _configureComplicationView:viewCopy forSlot:slotCopy];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [slotCopy isEqualToString:NTKComplicationSlotSubdialBottom])
  {
    v8 = viewCopy;
    colorPalette = [(NTKProteusFaceView *)self colorPalette];
    circularComplicationAColor = [colorPalette circularComplicationAColor];
    [(NTKProteusFaceView *)self setComplicationColor:circularComplicationAColor];

    complicationColor = [(NTKProteusFaceView *)self complicationColor];
    [(NTKProteusFaceView *)self setInterpolatedComplicationColor:complicationColor];

    [v8 updateMonochromeColor];
LABEL_8:

    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = viewCopy;
    v8 = [(NTKProteusFaceView *)self _simpleTextComplicationColorForEditMode:[(NTKProteusFaceView *)self editing]];
    label = [v12 label];

    [label setTextColor:v8];
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = viewCopy;
    v8 = [(NTKProteusFaceView *)self _simpleTextComplicationColorForEditMode:[(NTKProteusFaceView *)self editing]];
    [v14 setTextColor:v8];

    goto LABEL_8;
  }

LABEL_9:
}

- (void)_updateViewColorsWithPalette:(id)palette
{
  proteusContentView = self->_proteusContentView;
  paletteCopy = palette;
  [(NTKProteusContentView *)proteusContentView setColorPalette:paletteCopy];
  timeView = [(NTKProteusFaceView *)self timeView];
  hourHandInlay = [paletteCopy hourHandInlay];
  hourHandView = [timeView hourHandView];
  [hourHandView setInlayColor:hourHandInlay];

  hourHandInlay2 = [paletteCopy hourHandInlay];
  minuteHandView = [timeView minuteHandView];
  [minuteHandView setInlayColor:hourHandInlay2];

  hourHandStroke = [paletteCopy hourHandStroke];
  hourHandView2 = [timeView hourHandView];
  [hourHandView2 setColor:hourHandStroke];

  hourHandStroke2 = [paletteCopy hourHandStroke];
  minuteHandView2 = [timeView minuteHandView];
  [minuteHandView2 setColor:hourHandStroke2];

  secondHand = [paletteCopy secondHand];
  secondHandView = [timeView secondHandView];
  [secondHandView setColor:secondHand];

  [(NTKProteusFaceView *)self _applyComplicationColor:paletteCopy];
}

- (void)_applyComplicationColor:(id)color
{
  colorCopy = color;
  circularComplicationAColor = [colorCopy circularComplicationAColor];
  circularComplicationB = [colorCopy circularComplicationB];
  [(NTKProteusFaceView *)self _updateSubDialRichComplicationsColor:circularComplicationAColor alternateColor:circularComplicationB];

  simpleTextComplicationColor = [colorCopy simpleTextComplicationColor];

  [(NTKProteusFaceView *)self _updateSimpleTextLabelColor:simpleTextComplicationColor];
}

- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v12.receiver = self;
  v12.super_class = NTKProteusFaceView;
  [(NTKProteusFaceView *)&v12 _applyBreathingFraction:mode forCustomEditMode:slot slot:?];
  NTKLargeElementScaleForBreathingFraction();
  memset(&v11, 0, sizeof(v11));
  CGAffineTransformMakeScale(&v11, v6, v6);
  contentView = [(NTKProteusFaceView *)self contentView];
  v10 = v11;
  [contentView setTransform:&v10];

  timeView = [(NTKProteusFaceView *)self timeView];
  v10 = v11;
  [timeView setTransform:&v10];

  complicationContainerView = [(NTKProteusFaceView *)self complicationContainerView];
  v10 = v11;
  [complicationContainerView setTransform:&v10];
}

- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v9.receiver = self;
  v9.super_class = NTKProteusFaceView;
  [(NTKProteusFaceView *)&v9 _applyRubberBandingFraction:mode forCustomEditMode:slot slot:?];
  if (mode)
  {
    NTKScaleForRubberBandingFraction();
    CGAffineTransformMakeScale(&v8, v7, v7);
    [(NTKProteusFaceView *)self setTransform:&v8];
    NTKAlphaForRubberBandingFraction();
    [(NTKProteusFaceView *)self setAlpha:?];
  }
}

- (void)setOverrideDate:(id)date duration:(double)duration
{
  v5.receiver = self;
  v5.super_class = NTKProteusFaceView;
  [(NTKProteusFaceView *)&v5 setOverrideDate:date duration:duration];
  [(NTKProteusFaceView *)self _updateDigitWeights];
}

- (void)_updateNotchDigitWeights
{
  currentDisplayDate = [(NTKProteusFaceView *)self currentDisplayDate];
  [(NTKProteusFaceView *)self _timeAngle:currentDisplayDate];
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
  currentDisplayDate = [(NTKProteusFaceView *)self currentDisplayDate];
  [(NTKProteusFaceView *)self _timeAngle:?];
  v4 = v3;
  for (i = 1; i != 13; ++i)
  {
    [(NTKProteusFaceView *)self _digitWeight:i forAngle:v4];
    [(NTKProteusContentView *)self->_proteusContentView setDigitWeight:i forDigit:?];
  }
}

- (double)_angleForDigit:(unint64_t)digit
{
  if (digit > 3)
  {
    return ((digit - 3) / -6.0 + 2.0) * 3.14159265;
  }

  else
  {
    return (3 - digit) * 3.14159265 / 6.0;
  }
}

- (unint64_t)_digitForAngle:(double)angle
{
  v3 = 15;
  if (angle < 1.30899694)
  {
    v3 = 3;
  }

  return v3 - vcvtpd_u64_f64((angle * 12.0 / 3.14159265 + -1.0) * 0.5);
}

- (double)_timeAngle:(id)angle
{
  angleCopy = angle;
  v5 = +[NSCalendar currentCalendar];
  v6 = [v5 components:32992 fromDate:angleCopy];

  -[NTKProteusFaceView _angleForDigit:](self, "_angleForDigit:", [v6 hour] % 12);
  v8 = v7;
  if ([v6 minute] == &stru_20.vmaddr + 3)
  {
    second = [v6 second];
    if (second >= 0x3A)
    {
      v10 = (1000 * second + [v6 nanosecond] / 0xF4240 - 58000) / 2000.0;
      if (v10 > 1.0)
      {
        v10 = 1.0;
      }

      v8 = v8 + fmax(v10, 0.0) * -0.523598776;
    }
  }

  return v8;
}

- (double)_digitWeight:(unint64_t)weight forAngle:(double)angle
{
  [(NTKProteusFaceView *)self _angleForDigit:weight];
  [NTKProteusWave clockwiseDistance:"clockwiseDistance:fromStartAngle:" fromStartAngle:?];

  [(NTKProteusFaceView *)self _weightForCWDistance:?];
  return result;
}

- (double)_weightForCWDistance:(double)distance
{
  if (distance >= 0.523598776)
  {
    return (distance + -0.523598776) / 5.75958653;
  }

  else
  {
    return distance / -0.523598776 + 1.0;
  }
}

- (void)_configureForEditMode:(int64_t)mode
{
  v12.receiver = self;
  v12.super_class = NTKProteusFaceView;
  [(NTKProteusFaceView *)&v12 _configureForEditMode:?];
  [(NTKProteusFaceView *)self configureComplicationAlphaFraction:mode fromEditMode:mode toEditMode:1.0];
  [(NTKProteusFaceView *)self _contentAlphaForEditMode:mode];
  v6 = v5;
  proteusContentView = [(NTKProteusFaceView *)self proteusContentView];
  [proteusContentView setAlpha:v6];

  [(NTKProteusFaceView *)self _timeAlphaForEditMode:mode];
  v9 = v8;
  timeView = [(NTKProteusFaceView *)self timeView];
  [timeView setAlpha:v9];

  colorPalette = [(NTKProteusFaceView *)self colorPalette];
  [(NTKProteusFaceView *)self _updateViewColorsWithPalette:colorPalette];
}

- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode
{
  v18.receiver = self;
  v18.super_class = NTKProteusFaceView;
  [NTKProteusFaceView _configureForTransitionFraction:"_configureForTransitionFraction:fromEditMode:toEditMode:" fromEditMode:? toEditMode:?];
  [(NTKProteusFaceView *)self _contentAlphaForEditMode:mode];
  [(NTKProteusFaceView *)self _contentAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  v10 = v9;
  proteusContentView = [(NTKProteusFaceView *)self proteusContentView];
  [proteusContentView setAlpha:v10];

  [(NTKProteusFaceView *)self _timeAlphaForEditMode:mode];
  [(NTKProteusFaceView *)self _timeAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  v13 = v12;
  timeView = [(NTKProteusFaceView *)self timeView];
  [timeView setAlpha:v13];

  [(NTKProteusFaceView *)self configureComplicationAlphaFraction:mode fromEditMode:editMode toEditMode:fraction];
  v15 = [(NTKProteusFaceView *)self _simpleTextComplicationColorForEditMode:mode];
  v16 = [(NTKProteusFaceView *)self _simpleTextComplicationColorForEditMode:editMode];
  v17 = NTKInterpolateBetweenColors();

  [(NTKProteusFaceView *)self _updateSimpleTextLabelColor:v17];
}

- (void)_updateSimpleTextLabelColor:(id)color
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_5EE4;
  v5[3] = &unk_10520;
  colorCopy = color;
  v4 = colorCopy;
  [(NTKProteusFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v5];
}

- (void)configureComplicationAlphaFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_6048;
  v5[3] = &unk_10548;
  v5[4] = self;
  v5[5] = mode;
  v5[6] = editMode;
  *&v5[7] = fraction;
  [(NTKProteusFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v5];
}

- (void)_cleanupAfterEditing
{
  v4.receiver = self;
  v4.super_class = NTKProteusFaceView;
  [(NTKProteusFaceView *)&v4 _cleanupAfterEditing];
  delegate = [(NTKProteusFaceView *)self delegate];
  [delegate faceViewDidChangeWantsStatusBarIconShadow];
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

- (id)_simpleTextComplicationColorForEditMode:(int64_t)mode
{
  if (mode == 1)
  {
    simpleTextComplicationColor = [UIColor colorWithWhite:0.95 alpha:1.0];
  }

  else
  {
    colorPalette = [(NTKProteusFaceView *)self colorPalette];
    simpleTextComplicationColor = [colorPalette simpleTextComplicationColor];
  }

  return simpleTextComplicationColor;
}

- (double)_dialAlphaForEditMode:(int64_t)mode
{
  if (!mode)
  {
    return 1.0;
  }

  if (mode == 1)
  {
    return 0.0;
  }

  return NTKEditModeDimmedAlpha;
}

- (double)_contentAlphaForEditMode:(int64_t)mode
{
  result = NTKEditModeDimmedAlpha;
  if (mode != 1)
  {
    return 1.0;
  }

  return result;
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

+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device
{
  v4 = &off_10DB8;
  if (options != 12)
  {
    v4 = 0;
  }

  if (options == 15)
  {
    return &off_10DA0;
  }

  else
  {
    return v4;
  }
}

- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options
{
  optionCopy = option;
  optionsCopy = options;
  v10 = optionsCopy;
  if (mode == 15)
  {
    v11 = optionCopy;
    v12 = [v10 objectForKeyedSubscript:&off_10B90];
  }

  else
  {
    if (mode != 12)
    {
      v27.receiver = self;
      v27.super_class = NTKProteusFaceView;
      v18 = [(NTKProteusFaceView *)&v27 _swatchImageForEditOption:optionCopy mode:mode withSelectedOptions:optionsCopy];
      goto LABEL_11;
    }

    v11 = [optionsCopy objectForKeyedSubscript:&off_10BD8];
    v12 = optionCopy;
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
    device = [(NTKProteusFaceView *)self device];
    v21 = [(NTKProteusFaceView *)v19 initWithFaceStyle:44 forDevice:device clientIdentifier:0];

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
    layer = [(NTKProteusFaceView *)v21 layer];
    [layer renderInContext:UIGraphicsGetCurrentContext()];

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
  device = [(NTKProteusFaceView *)self device];
  v6 = [(NTKProteusFaceColorPalette *)v3 initWithFaceClass:v4 device:device];

  [(NTKProteusFaceColorPalette *)v6 setBackgroundStyle:[(NTKProteusFaceView *)self backgroundStyle]];

  return v6;
}

@end