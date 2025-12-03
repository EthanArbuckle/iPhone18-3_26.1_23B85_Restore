@interface NTKBigNumeralsAnalogFaceView
+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device;
- (id)_renderTimeViewSwatchImageForStyle:(unint64_t)style typeface:(unint64_t)typeface colorOption:(id)option;
- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options;
- (id)createFaceColorPalette;
- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyDataMode;
- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_cleanupAfterTransitionToOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_configureForEditMode:(int64_t)mode;
- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode;
- (void)_createBackgroundView;
- (void)_loadSnapshotContentViews;
- (void)_removeBackgroundView;
- (void)_reorderSwitcherSnapshotView;
- (void)_unloadSnapshotContentViews;
- (void)applySecondHandColor:(id)color;
- (void)layoutSubviews;
- (void)setOverrideDate:(id)date duration:(double)duration;
@end

@implementation NTKBigNumeralsAnalogFaceView

- (id)createFaceColorPalette
{
  v2 = [[NTKBigNumeralsAnalogColorPalette alloc] initWithFaceClass:objc_opt_class()];

  return v2;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = NTKBigNumeralsAnalogFaceView;
  [(NTKBigNumeralsAnalogFaceView *)&v5 layoutSubviews];
  backgroundView = self->_backgroundView;
  contentView = [(NTKBigNumeralsAnalogFaceView *)self contentView];
  [contentView bounds];
  [(NTKBigNumeralsAnalogBackgroundView *)backgroundView ntk_setBoundsAndPositionFromFrame:?];
}

- (void)_loadSnapshotContentViews
{
  v5.receiver = self;
  v5.super_class = NTKBigNumeralsAnalogFaceView;
  [(NTKBigNumeralsAnalogFaceView *)&v5 _loadSnapshotContentViews];
  [(NTKBigNumeralsAnalogFaceView *)self _createBackgroundView];
  colorPalette = [(NTKBigNumeralsAnalogFaceView *)self colorPalette];
  secondHand = [colorPalette secondHand];
  [(NTKBigNumeralsAnalogFaceView *)self applySecondHandColor:secondHand];
}

- (void)_unloadSnapshotContentViews
{
  v3.receiver = self;
  v3.super_class = NTKBigNumeralsAnalogFaceView;
  [(NTKBigNumeralsAnalogFaceView *)&v3 _unloadSnapshotContentViews];
  [(NTKBigNumeralsAnalogFaceView *)self _removeBackgroundView];
}

- (void)_reorderSwitcherSnapshotView
{
  switcherSnapshotView = [(NTKBigNumeralsAnalogFaceView *)self switcherSnapshotView];

  if (switcherSnapshotView)
  {
    switcherSnapshotView2 = [(NTKBigNumeralsAnalogFaceView *)self switcherSnapshotView];
    [(NTKBigNumeralsAnalogFaceView *)self bringSubviewToFront:switcherSnapshotView2];
  }
}

- (void)_createBackgroundView
{
  if (!self->_backgroundView)
  {
    v3 = [NTKBigNumeralsAnalogBackgroundView alloc];
    device = [(NTKBigNumeralsAnalogFaceView *)self device];
    v5 = [(NTKBigNumeralsAnalogBackgroundView *)v3 initWithDevice:device];
    backgroundView = self->_backgroundView;
    self->_backgroundView = v5;

    contentView = [(NTKBigNumeralsAnalogFaceView *)self contentView];
    [contentView addSubview:self->_backgroundView];
  }
}

- (void)applySecondHandColor:(id)color
{
  colorCopy = color;
  timeView = [(NTKBigNumeralsAnalogFaceView *)self timeView];
  secondHandView = [timeView secondHandView];
  [secondHandView setColor:colorCopy];
}

- (void)_removeBackgroundView
{
  [(NTKBigNumeralsAnalogBackgroundView *)self->_backgroundView removeFromSuperview];
  backgroundView = self->_backgroundView;
  self->_backgroundView = 0;
}

- (void)setOverrideDate:(id)date duration:(double)duration
{
  v7.receiver = self;
  v7.super_class = NTKBigNumeralsAnalogFaceView;
  dateCopy = date;
  [(NTKBigNumeralsAnalogFaceView *)&v7 setOverrideDate:dateCopy duration:duration];
  [(NTKBigNumeralsAnalogBackgroundView *)self->_backgroundView setOverrideDate:dateCopy duration:duration, v7.receiver, v7.super_class];
}

- (void)_applyDataMode
{
  backgroundView = self->_backgroundView;
  dataMode = [(NTKBigNumeralsAnalogFaceView *)self dataMode];

  [(NTKBigNumeralsAnalogBackgroundView *)backgroundView applyDataMode:dataMode];
}

- (void)_configureForEditMode:(int64_t)mode
{
  v7.receiver = self;
  v7.super_class = NTKBigNumeralsAnalogFaceView;
  [(NTKBigNumeralsAnalogFaceView *)&v7 _configureForEditMode:?];
  if (mode)
  {
    v5 = NTKEditModeDimmedAlpha;
  }

  else
  {
    v5 = 1.0;
  }

  timeView = [(NTKBigNumeralsAnalogFaceView *)self timeView];
  [timeView setAlpha:v5];
}

- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode
{
  v9.receiver = self;
  v9.super_class = NTKBigNumeralsAnalogFaceView;
  [NTKBigNumeralsAnalogFaceView _configureForTransitionFraction:"_configureForTransitionFraction:fromEditMode:toEditMode:" fromEditMode:? toEditMode:?];
  CLKInterpolateBetweenFloatsClipped();
  v7 = v6;
  timeView = [(NTKBigNumeralsAnalogFaceView *)self timeView];
  [timeView setAlpha:v7];
}

- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  slotCopy = slot;
  switch(mode)
  {
    case 10:
      backgroundView = self->_backgroundView;
      pigmentEditOption = [optionCopy pigmentEditOption];
      colorPalette = [(NTKBigNumeralsAnalogFaceView *)self colorPalette];
      [(NTKBigNumeralsAnalogBackgroundView *)backgroundView updateHourLabelColorForColorOption:pigmentEditOption palette:colorPalette];

      colorPalette2 = [(NTKBigNumeralsAnalogFaceView *)self colorPalette];
      secondHand = [colorPalette2 secondHand];
      [(NTKBigNumeralsAnalogFaceView *)self applySecondHandColor:secondHand];

      break;
    case 15:
      style = [optionCopy style];
      colorPalette2 = [(NTKBigNumeralsAnalogBackgroundView *)self->_backgroundView hourLabel];
      [colorPalette2 setStyle:style];
      break;
    case 13:
      typeface = [optionCopy typeface];
      colorPalette2 = [(NTKBigNumeralsAnalogBackgroundView *)self->_backgroundView hourLabel];
      [colorPalette2 setTypeface:typeface];
      break;
    default:
      goto LABEL_8;
  }

LABEL_8:
}

- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  toOptionCopy = toOption;
  slotCopy = slot;
  switch(mode)
  {
    case 10:
      interpolatedColorPalette = [(NTKBigNumeralsAnalogFaceView *)self interpolatedColorPalette];
      secondHand = [interpolatedColorPalette secondHand];
      [(NTKBigNumeralsAnalogFaceView *)self applySecondHandColor:secondHand];

      backgroundView = self->_backgroundView;
      pigmentEditOption = [optionCopy pigmentEditOption];
      pigmentEditOption2 = [toOptionCopy pigmentEditOption];
      interpolatedColorPalette2 = [(NTKBigNumeralsAnalogFaceView *)self interpolatedColorPalette];
      [(NTKBigNumeralsAnalogBackgroundView *)backgroundView applyTransitionFraction:pigmentEditOption fromPigmentOption:pigmentEditOption2 toPigmentOption:interpolatedColorPalette2 palette:fraction];

      break;
    case 15:
      pigmentEditOption = [(NTKBigNumeralsAnalogBackgroundView *)self->_backgroundView hourLabel];
      [pigmentEditOption applyTransitionFraction:objc_msgSend(optionCopy fromStyle:"style") toStyle:{objc_msgSend(toOptionCopy, "style"), fraction}];
      break;
    case 13:
      pigmentEditOption = [(NTKBigNumeralsAnalogBackgroundView *)self->_backgroundView hourLabel];
      [pigmentEditOption applyTransitionFraction:objc_msgSend(optionCopy fromTypeface:"typeface") toTypeface:{objc_msgSend(toOptionCopy, "typeface"), fraction}];
      break;
    default:
      goto LABEL_8;
  }

LABEL_8:
}

- (void)_cleanupAfterTransitionToOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v5 = [(NTKBigNumeralsAnalogBackgroundView *)self->_backgroundView hourLabel:option];
  [v5 cleanupTransition];
}

- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  NTKLargeElementScaleForBreathingFraction();
  v7 = v6;
  contentView = [(NTKBigNumeralsAnalogFaceView *)self contentView];
  CGAffineTransformMakeScale(&v9, v7, v7);
  [contentView setTransform:&v9];
}

- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  NTKScaleForRubberBandingFraction();
  v7 = v6;
  contentView = [(NTKBigNumeralsAnalogFaceView *)self contentView];
  CGAffineTransformMakeScale(&v12, v7, v7);
  [contentView setTransform:&v12];

  NTKAlphaForRubberBandingFraction();
  v10 = v9;
  contentView2 = [(NTKBigNumeralsAnalogFaceView *)self contentView];
  [contentView2 setAlpha:v10];
}

+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device
{
  v4 = &off_CD78;
  if (options != 13)
  {
    v4 = 0;
  }

  if (options == 15)
  {
    return &off_CD60;
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
  if (!qword_113F8)
  {
    v10 = objc_opt_new();
    v11 = qword_113F8;
    qword_113F8 = v10;
  }

  v12 = [optionsCopy objectForKeyedSubscript:&off_CA20];
  style = [v12 style];

  v14 = [optionsCopy objectForKeyedSubscript:&off_CA08];
  typeface = [v14 typeface];

  v16 = [optionsCopy objectForKeyedSubscript:&off_C9F0];
  pigmentEditOption = [v16 pigmentEditOption];

  if (mode == 13)
  {
    selfCopy2 = self;
    typeface = [optionCopy typeface];
  }

  else
  {
    if (mode != 15)
    {
      v25.receiver = self;
      v25.super_class = NTKBigNumeralsAnalogFaceView;
      v22 = [(NTKBigNumeralsAnalogFaceView *)&v25 _swatchImageForEditOption:optionCopy mode:mode withSelectedOptions:optionsCopy];
      goto LABEL_11;
    }

    selfCopy2 = self;
    style = [optionCopy style];
  }

  v18 = [NSNumber numberWithUnsignedInteger:style];
  v19 = [NSNumber numberWithUnsignedInteger:typeface];
  jSONObjectRepresentation = [pigmentEditOption JSONObjectRepresentation];
  v21 = [NSString stringWithFormat:@"%@-%@-%@", v18, v19, jSONObjectRepresentation];

  v22 = [qword_113F8 objectForKey:v21];
  if (!v22)
  {
    v22 = [(NTKBigNumeralsAnalogFaceView *)selfCopy2 _renderTimeViewSwatchImageForStyle:style typeface:typeface colorOption:pigmentEditOption];
    [qword_113F8 setObject:v22 forKey:v21];
  }

LABEL_11:

  return v22;
}

- (id)_renderTimeViewSwatchImageForStyle:(unint64_t)style typeface:(unint64_t)typeface colorOption:(id)option
{
  optionCopy = option;
  backgroundView = self->_backgroundView;
  if (!backgroundView)
  {
    [(NTKBigNumeralsAnalogFaceView *)self _loadSnapshotContentViews];
    backgroundView = self->_backgroundView;
  }

  hourLabel = [(NTKBigNumeralsAnalogBackgroundView *)backgroundView hourLabel];
  style = [hourLabel style];
  typeface = [hourLabel typeface];
  color = [hourLabel color];
  faceColorPalette = [(NTKBigNumeralsAnalogFaceView *)self faceColorPalette];
  v14 = [faceColorPalette copy];

  [v14 setPigmentEditOption:optionCopy];
  [hourLabel setStyle:style];
  [hourLabel setTypeface:typeface];
  primaryColor = [v14 primaryColor];
  [hourLabel setColor:primaryColor];

  [(NTKBigNumeralsAnalogBackgroundView *)self->_backgroundView bounds];
  v20 = [[UIGraphicsImageRenderer alloc] initWithBounds:{v16, v17, v18, v19}];
  [(NTKBigNumeralsAnalogFaceView *)self layoutIfNeeded];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1F8C;
  v24[3] = &unk_C318;
  v24[4] = self;
  v21 = [v20 imageWithActions:v24];
  [hourLabel setStyle:style];
  [hourLabel setTypeface:typeface];
  [hourLabel setColor:color];

  return v21;
}

@end