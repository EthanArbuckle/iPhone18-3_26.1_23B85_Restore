@interface NTKNumeralsAnalogRichFaceView
- (int64_t)_keylineStyleForComplicationSlot:(id)slot;
- (void)_applyFaceColorPalette:(id)palette toComplicationView:(id)view;
- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_configureComplicationFactory:(id)factory;
- (void)_configureComplicationView:(id)view forSlot:(id)slot;
- (void)_loadLayoutRules;
@end

@implementation NTKNumeralsAnalogRichFaceView

- (void)_applyFaceColorPalette:(id)palette toComplicationView:(id)view
{
  paletteCopy = palette;
  viewCopy = view;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    device = [(NTKNumeralsAnalogRichFaceView *)self device];
    v8 = [NTKFaceColorScheme colorSchemeForDevice:device withFaceColorPalette:paletteCopy units:25];

    v9 = viewCopy;
    foregroundColor = [v8 foregroundColor];
    [(NTKNumeralsAnalogRichFaceView *)self setComplicationColor:foregroundColor];

    foregroundColor2 = [v8 foregroundColor];
    [(NTKNumeralsAnalogRichFaceView *)self setInterpolatedComplicationColor:foregroundColor2];

    v12 = +[UIColor whiteColor];
    [(NTKNumeralsAnalogRichFaceView *)self setAlternateComplicationColor:v12];

    [v9 updateMonochromeColor];
    [v9 transitionToMonochromeWithFraction:1.0];
  }
}

- (void)_configureComplicationView:(id)view forSlot:(id)slot
{
  viewCopy = view;
  faceColorPalette = [(NTKNumeralsAnalogRichFaceView *)self faceColorPalette];
  [(NTKNumeralsAnalogRichFaceView *)self _applyFaceColorPalette:faceColorPalette toComplicationView:viewCopy];
}

- (void)_loadLayoutRules
{
  v15.receiver = self;
  v15.super_class = NTKNumeralsAnalogRichFaceView;
  [(NTKNumeralsAnalogFaceView *)&v15 _loadLayoutRules];
  [(NTKNumeralsAnalogRichFaceView *)self bounds];
  v3 = NTKComplicationSlot1;
  v4 = [(NTKNumeralsAnalogRichFaceView *)self complicationLayoutforSlot:v3];
  device = [(NTKNumeralsAnalogRichFaceView *)self device];
  sub_7668(device, device);
  NTKGraphicCircularScaledComplicationDiameter();
  v7 = v6;
  NTKWhistlerSubdialComplicationDiameter();
  NTKWhistlerSubdialComplicationContentDiameter();
  memset(&v14, 0, sizeof(v14));
  CGAffineTransformMakeScale(&v14, v7 / v8, v7 / v8);
  _faceConfiguration = [(NTKNumeralsAnalogFaceView *)self _faceConfiguration];
  [_faceConfiguration utilitySlot];

  v12 = device;
  v13 = v4;
  v10 = v4;
  v11 = device;
  NTKEnumerateComplicationStates();
}

- (int64_t)_keylineStyleForComplicationSlot:(id)slot
{
  slotCopy = slot;
  delegate = [(NTKNumeralsAnalogRichFaceView *)self delegate];
  v6 = [delegate faceViewComplicationFamilyForSlot:slotCopy];

  return v6 == &dword_8 + 2;
}

- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v22.receiver = self;
  v22.super_class = NTKNumeralsAnalogRichFaceView;
  [(NTKNumeralsAnalogFaceView *)&v22 _applyTransitionFraction:option fromOption:toOption toOption:mode forCustomEditMode:slot slot:?];
  if (mode == 10)
  {
    device = [(NTKNumeralsAnalogRichFaceView *)self device];
    interpolatedColorPalette = [(NTKNumeralsAnalogRichFaceView *)self interpolatedColorPalette];
    fromPalette = [interpolatedColorPalette fromPalette];
    v13 = [NTKFaceColorScheme colorSchemeForDevice:device withFaceColorPalette:fromPalette units:25];
    device2 = [(NTKNumeralsAnalogRichFaceView *)self device];
    interpolatedColorPalette2 = [(NTKNumeralsAnalogRichFaceView *)self interpolatedColorPalette];
    toPalette = [interpolatedColorPalette2 toPalette];
    v17 = [NTKFaceColorScheme colorSchemeForDevice:device2 withFaceColorPalette:toPalette units:25];
    v18 = [NTKFaceColorScheme interpolationFrom:v13 to:v17 fraction:fraction];

    foregroundColor = [v18 foregroundColor];
    [(NTKNumeralsAnalogRichFaceView *)self setComplicationColor:foregroundColor];

    foregroundColor2 = [v18 foregroundColor];
    [(NTKNumeralsAnalogRichFaceView *)self setInterpolatedComplicationColor:foregroundColor2];

    v21 = +[UIColor whiteColor];
    [(NTKNumeralsAnalogRichFaceView *)self setAlternateComplicationColor:v21];

    [(NTKNumeralsAnalogFaceView *)self _enumerateComplicationViewsWithBlock:&stru_10728];
  }
}

- (void)_configureComplicationFactory:(id)factory
{
  v4.receiver = self;
  v4.super_class = NTKNumeralsAnalogRichFaceView;
  factoryCopy = factory;
  [(NTKNumeralsAnalogFaceView *)&v4 _configureComplicationFactory:factoryCopy];
  [factoryCopy setGraphicCornerComplications:{1, v4.receiver, v4.super_class}];
}

@end