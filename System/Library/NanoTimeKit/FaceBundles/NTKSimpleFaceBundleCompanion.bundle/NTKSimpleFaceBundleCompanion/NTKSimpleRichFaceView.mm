@interface NTKSimpleRichFaceView
- (NTKSimpleRichFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier;
- (void)_addDetailedMinutesToView:(id)view;
- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_configureComplicationView:(id)view forSlot:(id)slot;
- (void)_removeComplicationOverlapHiding;
- (void)_updateComplicationOverlapHiding;
@end

@implementation NTKSimpleRichFaceView

- (NTKSimpleRichFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier
{
  v9.receiver = self;
  v9.super_class = NTKSimpleRichFaceView;
  v5 = [(NTKSimpleFaceView *)&v9 initWithFaceStyle:style forDevice:device clientIdentifier:identifier];
  v6 = v5;
  if (v5)
  {
    complicationFactory = [(NTKSimpleRichFaceView *)v5 complicationFactory];
    [complicationFactory setGraphicCornerComplications:1];
  }

  return v6;
}

- (void)_configureComplicationView:(id)view forSlot:(id)slot
{
  viewCopy = view;
  v10.receiver = self;
  v10.super_class = NTKSimpleRichFaceView;
  [(NTKSimpleFaceView *)&v10 _configureComplicationView:viewCopy forSlot:slot];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = viewCopy;
    accentColor = [(NTKSimpleFaceView *)self accentColor];
    [(NTKSimpleRichFaceView *)self setComplicationColor:accentColor];

    accentColor2 = [(NTKSimpleFaceView *)self accentColor];
    [(NTKSimpleRichFaceView *)self setInterpolatedComplicationColor:accentColor2];

    [v7 transitionToMonochromeWithFraction:1.0];
    [v7 updateMonochromeColor];
  }
}

- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v8.receiver = self;
  v8.super_class = NTKSimpleRichFaceView;
  [(NTKSimpleFaceView *)&v8 _applyOption:option forCustomEditMode:mode slot:slot];
  if (mode == 10)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_5620;
    v7[3] = &unk_103E0;
    v7[4] = self;
    [(NTKSimpleRichFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v7];
  }
}

- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v20.receiver = self;
  v20.super_class = NTKSimpleRichFaceView;
  [(NTKSimpleFaceView *)&v20 _applyTransitionFraction:option fromOption:toOption toOption:mode forCustomEditMode:slot slot:?];
  if (mode == 10)
  {
    interpolatedColorPalette = [(NTKSimpleRichFaceView *)self interpolatedColorPalette];
    fromPalette = [interpolatedColorPalette fromPalette];
    v12 = [(NTKSimpleFaceView *)self _faceColorSchemeForFaceColorPalette:fromPalette];
    interpolatedColorPalette2 = [(NTKSimpleRichFaceView *)self interpolatedColorPalette];
    toPalette = [interpolatedColorPalette2 toPalette];
    v15 = [(NTKSimpleFaceView *)self _faceColorSchemeForFaceColorPalette:toPalette];
    v16 = [NTKFaceColorScheme interpolationFrom:v12 to:v15 fraction:fraction];

    [v16 accentColor];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_5874;
    v18[3] = &unk_10450;
    v19 = v18[4] = self;
    v17 = v19;
    [(NTKSimpleRichFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v18];
  }
}

- (void)_removeComplicationOverlapHiding
{
  for (i = 0; i != 4; ++i)
  {
    v4 = [(NTKSimpleFaceView *)self _ticksViewAtIndex:i];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    outerDigits = [v4 outerDigits];
    v6 = [outerDigits countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(outerDigits);
          }

          [*(*(&v10 + 1) + 8 * v9) setHidden:0];
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [outerDigits countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (void)_addDetailedMinutesToView:(id)view
{
  viewCopy = view;
  device = [(NTKSimpleRichFaceView *)self device];
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  memset(v33, 0, sizeof(v33));
  sub_6044(device, v33);
  [NTKAnalogUtilities dialDiameterForDevice:device];
  v7 = v6 * 0.5;
  v8 = *(&v34 + 1);
  v9 = [CLKFont systemFontOfSize:*&v35];
  [viewCopy center];
  v27 = v11;
  v28 = v10;
  outerDigits = [viewCopy outerDigits];

  if (outerDigits)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    outerDigits2 = [viewCopy outerDigits];
    v14 = [outerDigits2 countByEnumeratingWithState:&v29 objects:v39 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v30;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v30 != v16)
          {
            objc_enumerationMutation(outerDigits2);
          }

          [*(*(&v29 + 1) + 8 * i) removeFromSuperview];
        }

        v15 = [outerDigits2 countByEnumeratingWithState:&v29 objects:v39 count:16];
      }

      while (v15);
    }
  }

  v18 = objc_opt_new();
  v19 = 0;
  height = CGSizeZero.height;
  y = CGPointZero.y;
  do
  {
    v19 += 5;
    if (v19 != 15 && v19 != 45)
    {
      v22 = objc_opt_new();
      v23 = [NSString localizedStringWithFormat:@"%02ld", v19];
      [v22 setText:v23];

      [v22 setFont:v9];
      v24 = +[UIColor whiteColor];
      [v22 setTextColor:v24];

      [v22 setTag:v19];
      [v22 sizeThatFits:{CGSizeZero.width, height}];
      [v9 lineHeight];
      CLKPixelAlignRectForDevice();
      [v22 setBounds:?];
      v25 = __sincos_stret(v19 * -6.28318531 / 60.0 + 1.57079633);
      [v22 setCenter:{v28 + round((v7 + v8) * v25.__cosval), v27 - round((v7 + v8) * v25.__sinval)}];
      [viewCopy addSubview:v22];
      [v18 addObject:v22];
    }
  }

  while (v19 < 0x38);
  v26 = [NSArray arrayWithArray:v18];
  [viewCopy setOuterDigits:v26];
}

- (void)_updateComplicationOverlapHiding
{
  delegate = [(NTKSimpleRichFaceView *)self delegate];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v26[0] = NTKComplicationSlotTopLeft;
  v26[1] = NTKComplicationSlotTopRight;
  v26[2] = NTKComplicationSlotBottomLeft;
  v26[3] = NTKComplicationSlotBottomRight;
  v4 = [NSArray arrayWithObjects:v26 count:4];
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v5)
  {
    v6 = *v22;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(v4);
        }

        if (![delegate faceViewComplicationIsEmptyForSlot:*(*(&v21 + 1) + 8 * i)])
        {
          v5 = &dword_0 + 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v21 objects:v27 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  for (j = 0; j != 4; ++j)
  {
    v9 = [(NTKSimpleFaceView *)self _ticksViewAtIndex:j];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    outerDigits = [v9 outerDigits];
    v11 = [outerDigits countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        for (k = 0; k != v12; k = k + 1)
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(outerDigits);
          }

          [*(*(&v17 + 1) + 8 * k) setHidden:v5];
        }

        v12 = [outerDigits countByEnumeratingWithState:&v17 objects:v25 count:16];
      }

      while (v12);
    }

    outerDigits2 = [v9 outerDigits];
    lastObject = [outerDigits2 lastObject];

    [lastObject setHidden:{v5 | -[NTKSimpleFaceView _isShowingStatus](self, "_isShowingStatus")}];
  }
}

@end