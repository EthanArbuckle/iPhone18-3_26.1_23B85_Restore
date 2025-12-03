@interface NTKBigNumeralsDigitalFaceView
+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device;
- (NTKBigNumeralsDigitalFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier;
- (id)_renderTimeViewSwatchImageForStyle:(unint64_t)style typeface:(unint64_t)typeface colorOption:(id)option;
- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options;
- (id)createFaceColorPalette;
- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_cleanupAfterTransitionToOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_createTimeView;
- (void)_loadSnapshotContentViews;
- (void)_removeTimeView;
- (void)_unloadSnapshotContentViews;
- (void)layoutSubviews;
@end

@implementation NTKBigNumeralsDigitalFaceView

- (NTKBigNumeralsDigitalFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier
{
  v9.receiver = self;
  v9.super_class = NTKBigNumeralsDigitalFaceView;
  v5 = [(NTKBigNumeralsDigitalFaceView *)&v9 initWithFaceStyle:style forDevice:device clientIdentifier:identifier];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  return v6;
}

- (id)createFaceColorPalette
{
  v3 = [[NTKBigNumeralsDigitalColorPalette alloc] initWithFaceClass:objc_opt_class()];
  bigNumeralsColorPalette = self->_bigNumeralsColorPalette;
  self->_bigNumeralsColorPalette = v3;

  v5 = self->_bigNumeralsColorPalette;

  return v5;
}

- (void)_loadSnapshotContentViews
{
  v4.receiver = self;
  v4.super_class = NTKBigNumeralsDigitalFaceView;
  [(NTKBigNumeralsDigitalFaceView *)&v4 _loadSnapshotContentViews];
  [(NTKBigNumeralsDigitalFaceView *)self _createTimeView];
  timeView = [(NTKBigNumeralsDigitalFaceView *)self timeView];
  [timeView setDelegate:self];
}

- (void)_unloadSnapshotContentViews
{
  v4.receiver = self;
  v4.super_class = NTKBigNumeralsDigitalFaceView;
  [(NTKBigNumeralsDigitalFaceView *)&v4 _unloadSnapshotContentViews];
  timeView = [(NTKBigNumeralsDigitalFaceView *)self timeView];
  [timeView setDelegate:0];

  [(NTKBigNumeralsDigitalFaceView *)self _removeTimeView];
}

- (void)_createTimeView
{
  timeView = [(NTKBigNumeralsDigitalFaceView *)self timeView];

  if (!timeView)
  {
    v4 = [NTKBigNumeralsDigitalTimeView alloc];
    device = [(NTKBigNumeralsDigitalFaceView *)self device];
    v7 = [(NTKBigNumeralsDigitalTimeView *)v4 initWithDevice:device];

    [(NTKBigNumeralsDigitalFaceView *)self setTimeView:v7];
    contentView = [(NTKBigNumeralsDigitalFaceView *)self contentView];
    [contentView addSubview:v7];
  }
}

- (void)_removeTimeView
{
  timeView = [(NTKBigNumeralsDigitalFaceView *)self timeView];
  [timeView removeFromSuperview];

  [(NTKBigNumeralsDigitalFaceView *)self setTimeView:0];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = NTKBigNumeralsDigitalFaceView;
  [(NTKBigNumeralsDigitalFaceView *)&v4 layoutSubviews];
  timeView = [(NTKBigNumeralsDigitalFaceView *)self timeView];
  [(NTKBigNumeralsDigitalFaceView *)self bounds];
  [timeView ntk_setBoundsAndPositionFromFrame:?];
}

- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  timeView = [(NTKBigNumeralsDigitalFaceView *)self timeView];
  switch(mode)
  {
    case 10:
      isRainbowColor = [(NTKBigNumeralsDigitalColorPalette *)self->_bigNumeralsColorPalette isRainbowColor];
      v9 = 0.0;
      if (isRainbowColor)
      {
        v9 = 1.0;
      }

      [timeView applyRainbowColorTransitionWithFraction:self->_bigNumeralsColorPalette colorPalette:v9];
      [timeView applyColorPalette:self->_bigNumeralsColorPalette];
      break;
    case 15:
      [timeView applyStyle:{objc_msgSend(optionCopy, "style")}];
      break;
    case 13:
      [timeView applyTypeface:{objc_msgSend(optionCopy, "typeface")}];
      break;
  }
}

- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  toOptionCopy = toOption;
  timeView = [(NTKBigNumeralsDigitalFaceView *)self timeView];
  switch(mode)
  {
    case 10:
      pigmentEditOption = [optionCopy pigmentEditOption];
      pigmentEditOption2 = [toOptionCopy pigmentEditOption];
      if (([pigmentEditOption isRainbowColor] & 1) != 0 || objc_msgSend(pigmentEditOption2, "isRainbowColor"))
      {
        interpolatedColorPalette = [(NTKBigNumeralsDigitalFaceView *)self interpolatedColorPalette];
        toPalette = [interpolatedColorPalette toPalette];

        if (([pigmentEditOption isRainbowColor] & 1) != 0 || !objc_msgSend(pigmentEditOption2, "isRainbowColor"))
        {
          fraction = 1.0 - fraction;
        }

        else
        {
          interpolatedColorPalette2 = [(NTKBigNumeralsDigitalFaceView *)self interpolatedColorPalette];
          fromPalette = [interpolatedColorPalette2 fromPalette];

          toPalette = fromPalette;
        }

        [timeView applyRainbowColorTransitionWithFraction:toPalette colorPalette:fraction];
      }

      else
      {
        interpolatedColorPalette3 = [(NTKBigNumeralsDigitalFaceView *)self interpolatedColorPalette];
        [timeView applyRainbowColorTransitionWithFraction:interpolatedColorPalette3 colorPalette:0.0];

        toPalette = [(NTKBigNumeralsDigitalFaceView *)self interpolatedColorPalette];
        [timeView applyColorPalette:toPalette];
      }

      break;
    case 15:
      [timeView applyTransitionFraction:objc_msgSend(optionCopy fromStyle:"style") toStyle:{objc_msgSend(toOptionCopy, "style"), fraction}];
      break;
    case 13:
      [timeView applyTransitionFraction:objc_msgSend(optionCopy fromTypeface:"typeface") toTypeface:{objc_msgSend(toOptionCopy, "typeface"), fraction}];
      break;
  }
}

- (void)_cleanupAfterTransitionToOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v5 = [(NTKBigNumeralsDigitalFaceView *)self timeView:option];
  [v5 cleanupTransition];
}

- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  NTKLargeElementScaleForBreathingFraction();
  v7 = v6;
  contentView = [(NTKBigNumeralsDigitalFaceView *)self contentView];
  CGAffineTransformMakeScale(&v9, v7, v7);
  [contentView setTransform:&v9];
}

- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  NTKScaleForRubberBandingFraction();
  v7 = v6;
  contentView = [(NTKBigNumeralsDigitalFaceView *)self contentView];
  CGAffineTransformMakeScale(&v12, v7, v7);
  [contentView setTransform:&v12];

  NTKAlphaForRubberBandingFraction();
  v10 = v9;
  contentView2 = [(NTKBigNumeralsDigitalFaceView *)self contentView];
  [contentView2 setAlpha:v10];
}

+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device
{
  v4 = &off_D5B0;
  if (options != 13)
  {
    v4 = 0;
  }

  if (options == 15)
  {
    return &off_D598;
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
  if (!qword_11CE8)
  {
    v10 = objc_opt_new();
    v11 = qword_11CE8;
    qword_11CE8 = v10;
  }

  v12 = [optionsCopy objectForKeyedSubscript:&off_CE88];
  style = [v12 style];

  v14 = [optionsCopy objectForKeyedSubscript:&off_CE70];
  typeface = [v14 typeface];

  v16 = [optionsCopy objectForKeyedSubscript:&off_CE58];
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
      v25.super_class = NTKBigNumeralsDigitalFaceView;
      v22 = [(NTKBigNumeralsDigitalFaceView *)&v25 _swatchImageForEditOption:optionCopy mode:mode withSelectedOptions:optionsCopy];
      goto LABEL_11;
    }

    selfCopy2 = self;
    style = [optionCopy style];
  }

  v18 = [NSNumber numberWithUnsignedInteger:style];
  v19 = [NSNumber numberWithUnsignedInteger:typeface];
  jSONObjectRepresentation = [pigmentEditOption JSONObjectRepresentation];
  v21 = [NSString stringWithFormat:@"%@-%@-%@", v18, v19, jSONObjectRepresentation];

  v22 = [qword_11CE8 objectForKey:v21];
  if (!v22)
  {
    v22 = [(NTKBigNumeralsDigitalFaceView *)selfCopy2 _renderTimeViewSwatchImageForStyle:style typeface:typeface colorOption:pigmentEditOption];
    [qword_11CE8 setObject:v22 forKey:v21];
  }

LABEL_11:

  return v22;
}

- (id)_renderTimeViewSwatchImageForStyle:(unint64_t)style typeface:(unint64_t)typeface colorOption:(id)option
{
  optionCopy = option;
  timeView = [(NTKBigNumeralsDigitalFaceView *)self timeView];

  if (!timeView)
  {
    [(NTKBigNumeralsDigitalFaceView *)self _loadSnapshotContentViews];
  }

  timeView2 = [(NTKBigNumeralsDigitalFaceView *)self timeView];
  style = [timeView2 style];
  typeface = [timeView2 typeface];
  faceColorPalette = [(NTKBigNumeralsDigitalFaceView *)self faceColorPalette];
  v14 = [faceColorPalette copy];

  [v14 setPigmentEditOption:optionCopy];
  [timeView2 applyStyle:style];
  [timeView2 applyTypeface:typeface];
  [timeView2 applyColorPalette:v14];
  [(NTKBigNumeralsDigitalFaceView *)self layoutIfNeeded];
  [timeView2 bounds];
  v19 = [[UIGraphicsImageRenderer alloc] initWithBounds:{v15, v16, v17, v18}];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1D1C;
  v24[3] = &unk_C3D8;
  v25 = timeView2;
  v20 = timeView2;
  v21 = [v19 imageWithActions:v24];
  [v20 applyStyle:style];
  [v20 applyTypeface:typeface];
  faceColorPalette2 = [(NTKBigNumeralsDigitalFaceView *)self faceColorPalette];
  [v20 applyColorPalette:faceColorPalette2];

  return v21;
}

@end