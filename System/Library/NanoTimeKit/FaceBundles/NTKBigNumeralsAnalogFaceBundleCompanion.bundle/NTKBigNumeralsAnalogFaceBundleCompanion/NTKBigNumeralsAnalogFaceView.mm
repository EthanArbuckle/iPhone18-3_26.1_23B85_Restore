@interface NTKBigNumeralsAnalogFaceView
+ (id)_swatchForEditModeDependsOnOptions:(int64_t)a3 forDevice:(id)a4;
- (id)_renderTimeViewSwatchImageForStyle:(unint64_t)a3 typeface:(unint64_t)a4 colorOption:(id)a5;
- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5;
- (id)createFaceColorPalette;
- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyDataMode;
- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7;
- (void)_cleanupAfterTransitionToOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_configureForEditMode:(int64_t)a3;
- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5;
- (void)_createBackgroundView;
- (void)_loadSnapshotContentViews;
- (void)_removeBackgroundView;
- (void)_reorderSwitcherSnapshotView;
- (void)_unloadSnapshotContentViews;
- (void)applySecondHandColor:(id)a3;
- (void)layoutSubviews;
- (void)setOverrideDate:(id)a3 duration:(double)a4;
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
  v4 = [(NTKBigNumeralsAnalogFaceView *)self contentView];
  [v4 bounds];
  [(NTKBigNumeralsAnalogBackgroundView *)backgroundView ntk_setBoundsAndPositionFromFrame:?];
}

- (void)_loadSnapshotContentViews
{
  v5.receiver = self;
  v5.super_class = NTKBigNumeralsAnalogFaceView;
  [(NTKBigNumeralsAnalogFaceView *)&v5 _loadSnapshotContentViews];
  [(NTKBigNumeralsAnalogFaceView *)self _createBackgroundView];
  v3 = [(NTKBigNumeralsAnalogFaceView *)self colorPalette];
  v4 = [v3 secondHand];
  [(NTKBigNumeralsAnalogFaceView *)self applySecondHandColor:v4];
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
  v3 = [(NTKBigNumeralsAnalogFaceView *)self switcherSnapshotView];

  if (v3)
  {
    v4 = [(NTKBigNumeralsAnalogFaceView *)self switcherSnapshotView];
    [(NTKBigNumeralsAnalogFaceView *)self bringSubviewToFront:v4];
  }
}

- (void)_createBackgroundView
{
  if (!self->_backgroundView)
  {
    v3 = [NTKBigNumeralsAnalogBackgroundView alloc];
    v4 = [(NTKBigNumeralsAnalogFaceView *)self device];
    v5 = [(NTKBigNumeralsAnalogBackgroundView *)v3 initWithDevice:v4];
    backgroundView = self->_backgroundView;
    self->_backgroundView = v5;

    v7 = [(NTKBigNumeralsAnalogFaceView *)self contentView];
    [v7 addSubview:self->_backgroundView];
  }
}

- (void)applySecondHandColor:(id)a3
{
  v4 = a3;
  v6 = [(NTKBigNumeralsAnalogFaceView *)self timeView];
  v5 = [v6 secondHandView];
  [v5 setColor:v4];
}

- (void)_removeBackgroundView
{
  [(NTKBigNumeralsAnalogBackgroundView *)self->_backgroundView removeFromSuperview];
  backgroundView = self->_backgroundView;
  self->_backgroundView = 0;
}

- (void)setOverrideDate:(id)a3 duration:(double)a4
{
  v7.receiver = self;
  v7.super_class = NTKBigNumeralsAnalogFaceView;
  v6 = a3;
  [(NTKBigNumeralsAnalogFaceView *)&v7 setOverrideDate:v6 duration:a4];
  [(NTKBigNumeralsAnalogBackgroundView *)self->_backgroundView setOverrideDate:v6 duration:a4, v7.receiver, v7.super_class];
}

- (void)_applyDataMode
{
  backgroundView = self->_backgroundView;
  v3 = [(NTKBigNumeralsAnalogFaceView *)self dataMode];

  [(NTKBigNumeralsAnalogBackgroundView *)backgroundView applyDataMode:v3];
}

- (void)_configureForEditMode:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = NTKBigNumeralsAnalogFaceView;
  [(NTKBigNumeralsAnalogFaceView *)&v7 _configureForEditMode:?];
  if (a3)
  {
    v5 = NTKEditModeDimmedAlpha;
  }

  else
  {
    v5 = 1.0;
  }

  v6 = [(NTKBigNumeralsAnalogFaceView *)self timeView];
  [v6 setAlpha:v5];
}

- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5
{
  v9.receiver = self;
  v9.super_class = NTKBigNumeralsAnalogFaceView;
  [NTKBigNumeralsAnalogFaceView _configureForTransitionFraction:"_configureForTransitionFraction:fromEditMode:toEditMode:" fromEditMode:? toEditMode:?];
  CLKInterpolateBetweenFloatsClipped();
  v7 = v6;
  v8 = [(NTKBigNumeralsAnalogFaceView *)self timeView];
  [v8 setAlpha:v7];
}

- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v16 = a3;
  v8 = a5;
  switch(a4)
  {
    case 10:
      backgroundView = self->_backgroundView;
      v13 = [v16 pigmentEditOption];
      v14 = [(NTKBigNumeralsAnalogFaceView *)self colorPalette];
      [(NTKBigNumeralsAnalogBackgroundView *)backgroundView updateHourLabelColorForColorOption:v13 palette:v14];

      v10 = [(NTKBigNumeralsAnalogFaceView *)self colorPalette];
      v15 = [v10 secondHand];
      [(NTKBigNumeralsAnalogFaceView *)self applySecondHandColor:v15];

      break;
    case 15:
      v11 = [v16 style];
      v10 = [(NTKBigNumeralsAnalogBackgroundView *)self->_backgroundView hourLabel];
      [v10 setStyle:v11];
      break;
    case 13:
      v9 = [v16 typeface];
      v10 = [(NTKBigNumeralsAnalogBackgroundView *)self->_backgroundView hourLabel];
      [v10 setTypeface:v9];
      break;
    default:
      goto LABEL_8;
  }

LABEL_8:
}

- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7
{
  v20 = a4;
  v12 = a5;
  v13 = a7;
  switch(a6)
  {
    case 10:
      v15 = [(NTKBigNumeralsAnalogFaceView *)self interpolatedColorPalette];
      v16 = [v15 secondHand];
      [(NTKBigNumeralsAnalogFaceView *)self applySecondHandColor:v16];

      backgroundView = self->_backgroundView;
      v14 = [v20 pigmentEditOption];
      v18 = [v12 pigmentEditOption];
      v19 = [(NTKBigNumeralsAnalogFaceView *)self interpolatedColorPalette];
      [(NTKBigNumeralsAnalogBackgroundView *)backgroundView applyTransitionFraction:v14 fromPigmentOption:v18 toPigmentOption:v19 palette:a3];

      break;
    case 15:
      v14 = [(NTKBigNumeralsAnalogBackgroundView *)self->_backgroundView hourLabel];
      [v14 applyTransitionFraction:objc_msgSend(v20 fromStyle:"style") toStyle:{objc_msgSend(v12, "style"), a3}];
      break;
    case 13:
      v14 = [(NTKBigNumeralsAnalogBackgroundView *)self->_backgroundView hourLabel];
      [v14 applyTransitionFraction:objc_msgSend(v20 fromTypeface:"typeface") toTypeface:{objc_msgSend(v12, "typeface"), a3}];
      break;
    default:
      goto LABEL_8;
  }

LABEL_8:
}

- (void)_cleanupAfterTransitionToOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v5 = [(NTKBigNumeralsAnalogBackgroundView *)self->_backgroundView hourLabel:a3];
  [v5 cleanupTransition];
}

- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  NTKLargeElementScaleForBreathingFraction();
  v7 = v6;
  v8 = [(NTKBigNumeralsAnalogFaceView *)self contentView];
  CGAffineTransformMakeScale(&v9, v7, v7);
  [v8 setTransform:&v9];
}

- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  NTKScaleForRubberBandingFraction();
  v7 = v6;
  v8 = [(NTKBigNumeralsAnalogFaceView *)self contentView];
  CGAffineTransformMakeScale(&v12, v7, v7);
  [v8 setTransform:&v12];

  NTKAlphaForRubberBandingFraction();
  v10 = v9;
  v11 = [(NTKBigNumeralsAnalogFaceView *)self contentView];
  [v11 setAlpha:v10];
}

+ (id)_swatchForEditModeDependsOnOptions:(int64_t)a3 forDevice:(id)a4
{
  v4 = &off_CD78;
  if (a3 != 13)
  {
    v4 = 0;
  }

  if (a3 == 15)
  {
    return &off_CD60;
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
  if (!qword_113F8)
  {
    v10 = objc_opt_new();
    v11 = qword_113F8;
    qword_113F8 = v10;
  }

  v12 = [v9 objectForKeyedSubscript:&off_CA20];
  v13 = [v12 style];

  v14 = [v9 objectForKeyedSubscript:&off_CA08];
  v15 = [v14 typeface];

  v16 = [v9 objectForKeyedSubscript:&off_C9F0];
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
      v25.super_class = NTKBigNumeralsAnalogFaceView;
      v22 = [(NTKBigNumeralsAnalogFaceView *)&v25 _swatchImageForEditOption:v8 mode:a4 withSelectedOptions:v9];
      goto LABEL_11;
    }

    v24 = self;
    v13 = [v8 style];
  }

  v18 = [NSNumber numberWithUnsignedInteger:v13];
  v19 = [NSNumber numberWithUnsignedInteger:v15];
  v20 = [v17 JSONObjectRepresentation];
  v21 = [NSString stringWithFormat:@"%@-%@-%@", v18, v19, v20];

  v22 = [qword_113F8 objectForKey:v21];
  if (!v22)
  {
    v22 = [(NTKBigNumeralsAnalogFaceView *)v24 _renderTimeViewSwatchImageForStyle:v13 typeface:v15 colorOption:v17];
    [qword_113F8 setObject:v22 forKey:v21];
  }

LABEL_11:

  return v22;
}

- (id)_renderTimeViewSwatchImageForStyle:(unint64_t)a3 typeface:(unint64_t)a4 colorOption:(id)a5
{
  v8 = a5;
  backgroundView = self->_backgroundView;
  if (!backgroundView)
  {
    [(NTKBigNumeralsAnalogFaceView *)self _loadSnapshotContentViews];
    backgroundView = self->_backgroundView;
  }

  v10 = [(NTKBigNumeralsAnalogBackgroundView *)backgroundView hourLabel];
  v23 = [v10 style];
  v11 = [v10 typeface];
  v12 = [v10 color];
  v13 = [(NTKBigNumeralsAnalogFaceView *)self faceColorPalette];
  v14 = [v13 copy];

  [v14 setPigmentEditOption:v8];
  [v10 setStyle:a3];
  [v10 setTypeface:a4];
  v15 = [v14 primaryColor];
  [v10 setColor:v15];

  [(NTKBigNumeralsAnalogBackgroundView *)self->_backgroundView bounds];
  v20 = [[UIGraphicsImageRenderer alloc] initWithBounds:{v16, v17, v18, v19}];
  [(NTKBigNumeralsAnalogFaceView *)self layoutIfNeeded];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1F8C;
  v24[3] = &unk_C318;
  v24[4] = self;
  v21 = [v20 imageWithActions:v24];
  [v10 setStyle:v23];
  [v10 setTypeface:v11];
  [v10 setColor:v12];

  return v21;
}

@end