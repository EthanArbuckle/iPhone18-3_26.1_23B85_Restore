@interface NTKActivityAnalogRichFaceView
- (NTKActivityAnalogRichFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier;
- (id)_newFaceViewFactoryForDevice:(id)device;
- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_configureComplicationView:(id)view forSlot:(id)slot;
- (void)fadeComplicationSlot:(id)slot entry:(double)entry exit:(double)exit fraction:(double)fraction fromPalette:(id)palette toPalette:(id)toPalette;
@end

@implementation NTKActivityAnalogRichFaceView

- (NTKActivityAnalogRichFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier
{
  deviceCopy = device;
  v22.receiver = self;
  v22.super_class = NTKActivityAnalogRichFaceView;
  v9 = [(NTKActivityAnalogFaceView *)&v22 initWithFaceStyle:style forDevice:deviceCopy clientIdentifier:identifier];
  if (v9)
  {
    v10 = [NTKWhistlerAnalogFaceViewComplicationFactory alloc];
    [NTKAnalogUtilities dialSizeForDevice:deviceCopy];
    v11 = [v10 initWithFaceView:v9 dialDiameter:deviceCopy device:?];
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
    faceViewFactory = [(NTKActivityAnalogFaceView *)v9 faceViewFactory];
    v23[0] = NTKComplicationSlotBottomCenter;
    v23[1] = NTKComplicationSlotDate;
    v20 = [NSArray arrayWithObjects:v23 count:2];
    [(NTKCompositeComplicationFactory *)v18 registerFactory:faceViewFactory forSlots:v20];

    [(NTKActivityAnalogRichFaceView *)v9 setComplicationFactory:v9->_compositeComplicationFactory];
  }

  return v9;
}

- (void)_configureComplicationView:(id)view forSlot:(id)slot
{
  viewCopy = view;
  slotCopy = slot;
  v15.receiver = self;
  v15.super_class = NTKActivityAnalogRichFaceView;
  [(NTKActivityAnalogRichFaceView *)&v15 _configureComplicationView:viewCopy forSlot:slotCopy];
  faceColorPalette = [(NTKActivityAnalogRichFaceView *)self faceColorPalette];
  primaryColor = [faceColorPalette primaryColor];

  [(NTKActivityAnalogRichFaceView *)self setComplicationColor:primaryColor];
  [(NTKActivityAnalogRichFaceView *)self setInterpolatedComplicationColor:primaryColor];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = viewCopy;
    faceColorPalette2 = [(NTKActivityAnalogRichFaceView *)self faceColorPalette];
    if ([faceColorPalette2 isMulticolor])
    {
      v12 = 0.0;
    }

    else
    {
      v12 = 1.0;
    }

    [v10 transitionToMonochromeWithFraction:v12];
  }

  if ([slotCopy isEqualToString:NTKComplicationSlotBottomCenter] && objc_msgSend(viewCopy, "conformsToProtocol:", &OBJC_PROTOCOL___NTKUtilityComplicationView))
  {
    v13 = viewCopy;
    faceColorPalette3 = [(NTKActivityAnalogRichFaceView *)self faceColorPalette];
    [v13 applyFaceColorPalette:faceColorPalette3 units:1];
  }
}

- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v8.receiver = self;
  v8.super_class = NTKActivityAnalogRichFaceView;
  [(NTKActivityAnalogFaceView *)&v8 _applyOption:option forCustomEditMode:mode slot:slot];
  if (mode == 10)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_6D0C;
    v7[3] = &unk_20978;
    v7[4] = self;
    [(NTKActivityAnalogRichFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v7];
  }
}

- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  toOptionCopy = toOption;
  v20.receiver = self;
  v20.super_class = NTKActivityAnalogRichFaceView;
  [(NTKActivityAnalogFaceView *)&v20 _applyTransitionFraction:optionCopy fromOption:toOptionCopy toOption:mode forCustomEditMode:slot slot:fraction];
  if (mode == 10)
  {
    faceColorPalette = [(NTKActivityAnalogRichFaceView *)self faceColorPalette];
    v15 = [faceColorPalette copy];

    pigmentEditOption = [optionCopy pigmentEditOption];
    [v15 setPigmentEditOption:pigmentEditOption];

    faceColorPalette2 = [(NTKActivityAnalogRichFaceView *)self faceColorPalette];
    v18 = [faceColorPalette2 copy];

    pigmentEditOption2 = [toOptionCopy pigmentEditOption];
    [v18 setPigmentEditOption:pigmentEditOption2];

    [(NTKActivityAnalogRichFaceView *)self fadeComplicationSlot:NTKComplicationSlotTopRight entry:v15 exit:v18 fraction:0.05 fromPalette:0.15 toPalette:fraction];
    [(NTKActivityAnalogRichFaceView *)self fadeComplicationSlot:NTKComplicationSlotBottomCenter entry:v15 exit:v18 fraction:0.45 fromPalette:0.55 toPalette:fraction];
    [(NTKActivityAnalogRichFaceView *)self fadeComplicationSlot:NTKComplicationSlotTopLeft entry:v15 exit:v18 fraction:0.85 fromPalette:0.95 toPalette:fraction];
  }
}

- (void)fadeComplicationSlot:(id)slot entry:(double)entry exit:(double)exit fraction:(double)fraction fromPalette:(id)palette toPalette:(id)toPalette
{
  paletteCopy = palette;
  toPaletteCopy = toPalette;
  slotCopy = slot;
  [paletteCopy isMulticolor];
  [toPaletteCopy isMulticolor];
  CLKCompressFraction();
  v14 = v13;
  CLKInterpolateBetweenFloatsClipped();
  v16 = v15;
  primaryColor = [paletteCopy primaryColor];
  primaryColor2 = [toPaletteCopy primaryColor];
  v19 = NTKInterpolateBetweenColors();

  [(NTKActivityAnalogRichFaceView *)self setComplicationColor:v19];
  [(NTKActivityAnalogRichFaceView *)self setInterpolatedComplicationColor:v19];
  v20 = [(NTKActivityAnalogRichFaceView *)self normalComplicationDisplayWrapperForSlot:slotCopy];

  display = [v20 display];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [display transitionToMonochromeWithFraction:v16];
  }

  if ([display conformsToProtocol:&OBJC_PROTOCOL___NTKUtilityComplicationView])
  {
    v22 = display;
    v23 = v22;
    if (v14 == 0.0)
    {
      v24 = paletteCopy;
    }

    else
    {
      if (v14 != 1.0)
      {
        [v22 applyTransitionFraction:paletteCopy fromFaceColorPalette:toPaletteCopy toFaceColorPalette:1 units:0 brightenedUnits:v14];
        goto LABEL_9;
      }

      v24 = toPaletteCopy;
    }

    [v22 applyFaceColorPalette:v24 units:1];
LABEL_9:
  }
}

- (id)_newFaceViewFactoryForDevice:(id)device
{
  deviceCopy = device;
  v4 = [[NTKActivityFaceViewFactory alloc] initForAnalog:1 richComplications:1 forDevice:deviceCopy];

  return v4;
}

@end