@interface NTKActivityAnalogRichFaceView
- (NTKActivityAnalogRichFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5;
- (id)_newFaceViewFactoryForDevice:(id)a3;
- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7;
- (void)_configureComplicationView:(id)a3 forSlot:(id)a4;
- (void)fadeComplicationSlot:(id)a3 entry:(double)a4 exit:(double)a5 fraction:(double)a6 fromPalette:(id)a7 toPalette:(id)a8;
@end

@implementation NTKActivityAnalogRichFaceView

- (NTKActivityAnalogRichFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5
{
  v8 = a4;
  v22.receiver = self;
  v22.super_class = NTKActivityAnalogRichFaceView;
  v9 = [(NTKActivityAnalogFaceView *)&v22 initWithFaceStyle:a3 forDevice:v8 clientIdentifier:a5];
  if (v9)
  {
    v10 = [NTKWhistlerAnalogFaceViewComplicationFactory alloc];
    [NTKAnalogUtilities dialSizeForDevice:v8];
    v11 = [v10 initWithFaceView:v9 dialDiameter:v8 device:?];
    cornerComplicationFactory = v9->_cornerComplicationFactory;
    v9->_cornerComplicationFactory = v11;

    [(NTKWhistlerAnalogFaceViewComplicationFactory *)v9->_cornerComplicationFactory setUsesNarrowTopSlots:1];
    v13 = objc_opt_new();
    compositeComplicationFactory = v9->_compositeComplicationFactory;
    v9->_compositeComplicationFactory = v13;

    v15 = v9->_compositeComplicationFactory;
    v16 = v9->_cornerComplicationFactory;
    v24[0] = NTKComplicationSlotTopLeft;
    v24[1] = NTKComplicationSlotTopRight;
    v17 = [NSArray arrayWithObjects:v24 count:2];
    [(NTKCompositeComplicationFactory *)v15 registerFactory:v16 forSlots:v17];

    v18 = v9->_compositeComplicationFactory;
    v19 = [(NTKActivityAnalogFaceView *)v9 faceViewFactory];
    v23[0] = NTKComplicationSlotBottomCenter;
    v23[1] = NTKComplicationSlotDate;
    v20 = [NSArray arrayWithObjects:v23 count:2];
    [(NTKCompositeComplicationFactory *)v18 registerFactory:v19 forSlots:v20];

    [(NTKActivityAnalogRichFaceView *)v9 setComplicationFactory:v9->_compositeComplicationFactory];
  }

  return v9;
}

- (void)_configureComplicationView:(id)a3 forSlot:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = NTKActivityAnalogRichFaceView;
  [(NTKActivityAnalogRichFaceView *)&v15 _configureComplicationView:v6 forSlot:v7];
  v8 = [(NTKActivityAnalogRichFaceView *)self faceColorPalette];
  v9 = [v8 primaryColor];

  [(NTKActivityAnalogRichFaceView *)self setComplicationColor:v9];
  [(NTKActivityAnalogRichFaceView *)self setInterpolatedComplicationColor:v9];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v6;
    v11 = [(NTKActivityAnalogRichFaceView *)self faceColorPalette];
    if ([v11 isMulticolor])
    {
      v12 = 0.0;
    }

    else
    {
      v12 = 1.0;
    }

    [v10 transitionToMonochromeWithFraction:v12];
  }

  if ([v7 isEqualToString:NTKComplicationSlotBottomCenter] && objc_msgSend(v6, "conformsToProtocol:", &OBJC_PROTOCOL___NTKUtilityComplicationView))
  {
    v13 = v6;
    v14 = [(NTKActivityAnalogRichFaceView *)self faceColorPalette];
    [v13 applyFaceColorPalette:v14 units:1];
  }
}

- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v8.receiver = self;
  v8.super_class = NTKActivityAnalogRichFaceView;
  [(NTKActivityAnalogFaceView *)&v8 _applyOption:a3 forCustomEditMode:a4 slot:a5];
  if (a4 == 10)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_6D0C;
    v7[3] = &unk_20978;
    v7[4] = self;
    [(NTKActivityAnalogRichFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v7];
  }
}

- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7
{
  v12 = a4;
  v13 = a5;
  v20.receiver = self;
  v20.super_class = NTKActivityAnalogRichFaceView;
  [(NTKActivityAnalogFaceView *)&v20 _applyTransitionFraction:v12 fromOption:v13 toOption:a6 forCustomEditMode:a7 slot:a3];
  if (a6 == 10)
  {
    v14 = [(NTKActivityAnalogRichFaceView *)self faceColorPalette];
    v15 = [v14 copy];

    v16 = [v12 pigmentEditOption];
    [v15 setPigmentEditOption:v16];

    v17 = [(NTKActivityAnalogRichFaceView *)self faceColorPalette];
    v18 = [v17 copy];

    v19 = [v13 pigmentEditOption];
    [v18 setPigmentEditOption:v19];

    [(NTKActivityAnalogRichFaceView *)self fadeComplicationSlot:NTKComplicationSlotTopRight entry:v15 exit:v18 fraction:0.05 fromPalette:0.15 toPalette:a3];
    [(NTKActivityAnalogRichFaceView *)self fadeComplicationSlot:NTKComplicationSlotBottomCenter entry:v15 exit:v18 fraction:0.45 fromPalette:0.55 toPalette:a3];
    [(NTKActivityAnalogRichFaceView *)self fadeComplicationSlot:NTKComplicationSlotTopLeft entry:v15 exit:v18 fraction:0.85 fromPalette:0.95 toPalette:a3];
  }
}

- (void)fadeComplicationSlot:(id)a3 entry:(double)a4 exit:(double)a5 fraction:(double)a6 fromPalette:(id)a7 toPalette:(id)a8
{
  v25 = a7;
  v11 = a8;
  v12 = a3;
  [v25 isMulticolor];
  [v11 isMulticolor];
  CLKCompressFraction();
  v14 = v13;
  CLKInterpolateBetweenFloatsClipped();
  v16 = v15;
  v17 = [v25 primaryColor];
  v18 = [v11 primaryColor];
  v19 = NTKInterpolateBetweenColors();

  [(NTKActivityAnalogRichFaceView *)self setComplicationColor:v19];
  [(NTKActivityAnalogRichFaceView *)self setInterpolatedComplicationColor:v19];
  v20 = [(NTKActivityAnalogRichFaceView *)self normalComplicationDisplayWrapperForSlot:v12];

  v21 = [v20 display];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v21 transitionToMonochromeWithFraction:v16];
  }

  if ([v21 conformsToProtocol:&OBJC_PROTOCOL___NTKUtilityComplicationView])
  {
    v22 = v21;
    v23 = v22;
    if (v14 == 0.0)
    {
      v24 = v25;
    }

    else
    {
      if (v14 != 1.0)
      {
        [v22 applyTransitionFraction:v25 fromFaceColorPalette:v11 toFaceColorPalette:1 units:0 brightenedUnits:v14];
        goto LABEL_9;
      }

      v24 = v11;
    }

    [v22 applyFaceColorPalette:v24 units:1];
LABEL_9:
  }
}

- (id)_newFaceViewFactoryForDevice:(id)a3
{
  v3 = a3;
  v4 = [[NTKActivityFaceViewFactory alloc] initForAnalog:1 richComplications:1 forDevice:v3];

  return v4;
}

@end