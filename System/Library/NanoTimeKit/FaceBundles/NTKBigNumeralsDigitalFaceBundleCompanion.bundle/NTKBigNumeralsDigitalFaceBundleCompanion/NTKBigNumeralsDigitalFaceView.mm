@interface NTKBigNumeralsDigitalFaceView
+ (id)_swatchForEditModeDependsOnOptions:(int64_t)a3 forDevice:(id)a4;
- (NTKBigNumeralsDigitalFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5;
- (id)_renderTimeViewSwatchImageForStyle:(unint64_t)a3 typeface:(unint64_t)a4 colorOption:(id)a5;
- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5;
- (id)createFaceColorPalette;
- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7;
- (void)_cleanupAfterTransitionToOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_createTimeView;
- (void)_loadSnapshotContentViews;
- (void)_removeTimeView;
- (void)_unloadSnapshotContentViews;
- (void)layoutSubviews;
@end

@implementation NTKBigNumeralsDigitalFaceView

- (NTKBigNumeralsDigitalFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5
{
  v9.receiver = self;
  v9.super_class = NTKBigNumeralsDigitalFaceView;
  v5 = [(NTKBigNumeralsDigitalFaceView *)&v9 initWithFaceStyle:a3 forDevice:a4 clientIdentifier:a5];
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
  v3 = [(NTKBigNumeralsDigitalFaceView *)self timeView];
  [v3 setDelegate:self];
}

- (void)_unloadSnapshotContentViews
{
  v4.receiver = self;
  v4.super_class = NTKBigNumeralsDigitalFaceView;
  [(NTKBigNumeralsDigitalFaceView *)&v4 _unloadSnapshotContentViews];
  v3 = [(NTKBigNumeralsDigitalFaceView *)self timeView];
  [v3 setDelegate:0];

  [(NTKBigNumeralsDigitalFaceView *)self _removeTimeView];
}

- (void)_createTimeView
{
  v3 = [(NTKBigNumeralsDigitalFaceView *)self timeView];

  if (!v3)
  {
    v4 = [NTKBigNumeralsDigitalTimeView alloc];
    v5 = [(NTKBigNumeralsDigitalFaceView *)self device];
    v7 = [(NTKBigNumeralsDigitalTimeView *)v4 initWithDevice:v5];

    [(NTKBigNumeralsDigitalFaceView *)self setTimeView:v7];
    v6 = [(NTKBigNumeralsDigitalFaceView *)self contentView];
    [v6 addSubview:v7];
  }
}

- (void)_removeTimeView
{
  v3 = [(NTKBigNumeralsDigitalFaceView *)self timeView];
  [v3 removeFromSuperview];

  [(NTKBigNumeralsDigitalFaceView *)self setTimeView:0];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = NTKBigNumeralsDigitalFaceView;
  [(NTKBigNumeralsDigitalFaceView *)&v4 layoutSubviews];
  v3 = [(NTKBigNumeralsDigitalFaceView *)self timeView];
  [(NTKBigNumeralsDigitalFaceView *)self bounds];
  [v3 ntk_setBoundsAndPositionFromFrame:?];
}

- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v10 = a3;
  v7 = [(NTKBigNumeralsDigitalFaceView *)self timeView];
  switch(a4)
  {
    case 10:
      v8 = [(NTKBigNumeralsDigitalColorPalette *)self->_bigNumeralsColorPalette isRainbowColor];
      v9 = 0.0;
      if (v8)
      {
        v9 = 1.0;
      }

      [v7 applyRainbowColorTransitionWithFraction:self->_bigNumeralsColorPalette colorPalette:v9];
      [v7 applyColorPalette:self->_bigNumeralsColorPalette];
      break;
    case 15:
      [v7 applyStyle:{objc_msgSend(v10, "style")}];
      break;
    case 13:
      [v7 applyTypeface:{objc_msgSend(v10, "typeface")}];
      break;
  }
}

- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7
{
  v20 = a4;
  v11 = a5;
  v12 = [(NTKBigNumeralsDigitalFaceView *)self timeView];
  switch(a6)
  {
    case 10:
      v13 = [v20 pigmentEditOption];
      v14 = [v11 pigmentEditOption];
      if (([v13 isRainbowColor] & 1) != 0 || objc_msgSend(v14, "isRainbowColor"))
      {
        v15 = [(NTKBigNumeralsDigitalFaceView *)self interpolatedColorPalette];
        v16 = [v15 toPalette];

        if (([v13 isRainbowColor] & 1) != 0 || !objc_msgSend(v14, "isRainbowColor"))
        {
          a3 = 1.0 - a3;
        }

        else
        {
          v17 = [(NTKBigNumeralsDigitalFaceView *)self interpolatedColorPalette];
          v18 = [v17 fromPalette];

          v16 = v18;
        }

        [v12 applyRainbowColorTransitionWithFraction:v16 colorPalette:a3];
      }

      else
      {
        v19 = [(NTKBigNumeralsDigitalFaceView *)self interpolatedColorPalette];
        [v12 applyRainbowColorTransitionWithFraction:v19 colorPalette:0.0];

        v16 = [(NTKBigNumeralsDigitalFaceView *)self interpolatedColorPalette];
        [v12 applyColorPalette:v16];
      }

      break;
    case 15:
      [v12 applyTransitionFraction:objc_msgSend(v20 fromStyle:"style") toStyle:{objc_msgSend(v11, "style"), a3}];
      break;
    case 13:
      [v12 applyTransitionFraction:objc_msgSend(v20 fromTypeface:"typeface") toTypeface:{objc_msgSend(v11, "typeface"), a3}];
      break;
  }
}

- (void)_cleanupAfterTransitionToOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v5 = [(NTKBigNumeralsDigitalFaceView *)self timeView:a3];
  [v5 cleanupTransition];
}

- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  NTKLargeElementScaleForBreathingFraction();
  v7 = v6;
  v8 = [(NTKBigNumeralsDigitalFaceView *)self contentView];
  CGAffineTransformMakeScale(&v9, v7, v7);
  [v8 setTransform:&v9];
}

- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  NTKScaleForRubberBandingFraction();
  v7 = v6;
  v8 = [(NTKBigNumeralsDigitalFaceView *)self contentView];
  CGAffineTransformMakeScale(&v12, v7, v7);
  [v8 setTransform:&v12];

  NTKAlphaForRubberBandingFraction();
  v10 = v9;
  v11 = [(NTKBigNumeralsDigitalFaceView *)self contentView];
  [v11 setAlpha:v10];
}

+ (id)_swatchForEditModeDependsOnOptions:(int64_t)a3 forDevice:(id)a4
{
  v4 = &off_D5B0;
  if (a3 != 13)
  {
    v4 = 0;
  }

  if (a3 == 15)
  {
    return &off_D598;
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
  if (!qword_11CE8)
  {
    v10 = objc_opt_new();
    v11 = qword_11CE8;
    qword_11CE8 = v10;
  }

  v12 = [v9 objectForKeyedSubscript:&off_CE88];
  v13 = [v12 style];

  v14 = [v9 objectForKeyedSubscript:&off_CE70];
  v15 = [v14 typeface];

  v16 = [v9 objectForKeyedSubscript:&off_CE58];
  v17 = [v16 pigmentEditOption];

  if (a4 == 13)
  {
    v24 = self;
    v15 = [v8 typeface];
  }

  else
  {
    if (a4 != 15)
    {
      v25.receiver = self;
      v25.super_class = NTKBigNumeralsDigitalFaceView;
      v22 = [(NTKBigNumeralsDigitalFaceView *)&v25 _swatchImageForEditOption:v8 mode:a4 withSelectedOptions:v9];
      goto LABEL_11;
    }

    v24 = self;
    v13 = [v8 style];
  }

  v18 = [NSNumber numberWithUnsignedInteger:v13];
  v19 = [NSNumber numberWithUnsignedInteger:v15];
  v20 = [v17 JSONObjectRepresentation];
  v21 = [NSString stringWithFormat:@"%@-%@-%@", v18, v19, v20];

  v22 = [qword_11CE8 objectForKey:v21];
  if (!v22)
  {
    v22 = [(NTKBigNumeralsDigitalFaceView *)v24 _renderTimeViewSwatchImageForStyle:v13 typeface:v15 colorOption:v17];
    [qword_11CE8 setObject:v22 forKey:v21];
  }

LABEL_11:

  return v22;
}

- (id)_renderTimeViewSwatchImageForStyle:(unint64_t)a3 typeface:(unint64_t)a4 colorOption:(id)a5
{
  v8 = a5;
  v9 = [(NTKBigNumeralsDigitalFaceView *)self timeView];

  if (!v9)
  {
    [(NTKBigNumeralsDigitalFaceView *)self _loadSnapshotContentViews];
  }

  v10 = [(NTKBigNumeralsDigitalFaceView *)self timeView];
  v11 = [v10 style];
  v12 = [v10 typeface];
  v13 = [(NTKBigNumeralsDigitalFaceView *)self faceColorPalette];
  v14 = [v13 copy];

  [v14 setPigmentEditOption:v8];
  [v10 applyStyle:a3];
  [v10 applyTypeface:a4];
  [v10 applyColorPalette:v14];
  [(NTKBigNumeralsDigitalFaceView *)self layoutIfNeeded];
  [v10 bounds];
  v19 = [[UIGraphicsImageRenderer alloc] initWithBounds:{v15, v16, v17, v18}];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1D1C;
  v24[3] = &unk_C3D8;
  v25 = v10;
  v20 = v10;
  v21 = [v19 imageWithActions:v24];
  [v20 applyStyle:v11];
  [v20 applyTypeface:v12];
  v22 = [(NTKBigNumeralsDigitalFaceView *)self faceColorPalette];
  [v20 applyColorPalette:v22];

  return v21;
}

@end