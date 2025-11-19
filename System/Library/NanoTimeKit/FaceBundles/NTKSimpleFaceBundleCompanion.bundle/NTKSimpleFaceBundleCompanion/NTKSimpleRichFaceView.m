@interface NTKSimpleRichFaceView
- (NTKSimpleRichFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5;
- (void)_addDetailedMinutesToView:(id)a3;
- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7;
- (void)_configureComplicationView:(id)a3 forSlot:(id)a4;
- (void)_removeComplicationOverlapHiding;
- (void)_updateComplicationOverlapHiding;
@end

@implementation NTKSimpleRichFaceView

- (NTKSimpleRichFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5
{
  v9.receiver = self;
  v9.super_class = NTKSimpleRichFaceView;
  v5 = [(NTKSimpleFaceView *)&v9 initWithFaceStyle:a3 forDevice:a4 clientIdentifier:a5];
  v6 = v5;
  if (v5)
  {
    v7 = [(NTKSimpleRichFaceView *)v5 complicationFactory];
    [v7 setGraphicCornerComplications:1];
  }

  return v6;
}

- (void)_configureComplicationView:(id)a3 forSlot:(id)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = NTKSimpleRichFaceView;
  [(NTKSimpleFaceView *)&v10 _configureComplicationView:v6 forSlot:a4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    v8 = [(NTKSimpleFaceView *)self accentColor];
    [(NTKSimpleRichFaceView *)self setComplicationColor:v8];

    v9 = [(NTKSimpleFaceView *)self accentColor];
    [(NTKSimpleRichFaceView *)self setInterpolatedComplicationColor:v9];

    [v7 transitionToMonochromeWithFraction:1.0];
    [v7 updateMonochromeColor];
  }
}

- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v8.receiver = self;
  v8.super_class = NTKSimpleRichFaceView;
  [(NTKSimpleFaceView *)&v8 _applyOption:a3 forCustomEditMode:a4 slot:a5];
  if (a4 == 10)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_5620;
    v7[3] = &unk_103E0;
    v7[4] = self;
    [(NTKSimpleRichFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v7];
  }
}

- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7
{
  v20.receiver = self;
  v20.super_class = NTKSimpleRichFaceView;
  [(NTKSimpleFaceView *)&v20 _applyTransitionFraction:a4 fromOption:a5 toOption:a6 forCustomEditMode:a7 slot:?];
  if (a6 == 10)
  {
    v10 = [(NTKSimpleRichFaceView *)self interpolatedColorPalette];
    v11 = [v10 fromPalette];
    v12 = [(NTKSimpleFaceView *)self _faceColorSchemeForFaceColorPalette:v11];
    v13 = [(NTKSimpleRichFaceView *)self interpolatedColorPalette];
    v14 = [v13 toPalette];
    v15 = [(NTKSimpleFaceView *)self _faceColorSchemeForFaceColorPalette:v14];
    v16 = [NTKFaceColorScheme interpolationFrom:v12 to:v15 fraction:a3];

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
    v5 = [v4 outerDigits];
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
            objc_enumerationMutation(v5);
          }

          [*(*(&v10 + 1) + 8 * v9) setHidden:0];
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (void)_addDetailedMinutesToView:(id)a3
{
  v4 = a3;
  v5 = [(NTKSimpleRichFaceView *)self device];
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  memset(v33, 0, sizeof(v33));
  sub_6044(v5, v33);
  [NTKAnalogUtilities dialDiameterForDevice:v5];
  v7 = v6 * 0.5;
  v8 = *(&v34 + 1);
  v9 = [CLKFont systemFontOfSize:*&v35];
  [v4 center];
  v27 = v11;
  v28 = v10;
  v12 = [v4 outerDigits];

  if (v12)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v13 = [v4 outerDigits];
    v14 = [v13 countByEnumeratingWithState:&v29 objects:v39 count:16];
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
            objc_enumerationMutation(v13);
          }

          [*(*(&v29 + 1) + 8 * i) removeFromSuperview];
        }

        v15 = [v13 countByEnumeratingWithState:&v29 objects:v39 count:16];
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
      [v4 addSubview:v22];
      [v18 addObject:v22];
    }
  }

  while (v19 < 0x38);
  v26 = [NSArray arrayWithArray:v18];
  [v4 setOuterDigits:v26];
}

- (void)_updateComplicationOverlapHiding
{
  v3 = [(NTKSimpleRichFaceView *)self delegate];
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

        if (![v3 faceViewComplicationIsEmptyForSlot:*(*(&v21 + 1) + 8 * i)])
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
    v10 = [v9 outerDigits];
    v11 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
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
            objc_enumerationMutation(v10);
          }

          [*(*(&v17 + 1) + 8 * k) setHidden:v5];
        }

        v12 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
      }

      while (v12);
    }

    v15 = [v9 outerDigits];
    v16 = [v15 lastObject];

    [v16 setHidden:{v5 | -[NTKSimpleFaceView _isShowingStatus](self, "_isShowingStatus")}];
  }
}

@end