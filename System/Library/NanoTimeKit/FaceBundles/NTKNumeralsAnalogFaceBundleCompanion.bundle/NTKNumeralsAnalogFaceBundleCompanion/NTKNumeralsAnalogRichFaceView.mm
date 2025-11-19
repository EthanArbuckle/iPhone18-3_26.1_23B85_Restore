@interface NTKNumeralsAnalogRichFaceView
- (int64_t)_keylineStyleForComplicationSlot:(id)a3;
- (void)_applyFaceColorPalette:(id)a3 toComplicationView:(id)a4;
- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7;
- (void)_configureComplicationFactory:(id)a3;
- (void)_configureComplicationView:(id)a3 forSlot:(id)a4;
- (void)_loadLayoutRules;
@end

@implementation NTKNumeralsAnalogRichFaceView

- (void)_applyFaceColorPalette:(id)a3 toComplicationView:(id)a4
{
  v13 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [(NTKNumeralsAnalogRichFaceView *)self device];
    v8 = [NTKFaceColorScheme colorSchemeForDevice:v7 withFaceColorPalette:v13 units:25];

    v9 = v6;
    v10 = [v8 foregroundColor];
    [(NTKNumeralsAnalogRichFaceView *)self setComplicationColor:v10];

    v11 = [v8 foregroundColor];
    [(NTKNumeralsAnalogRichFaceView *)self setInterpolatedComplicationColor:v11];

    v12 = +[UIColor whiteColor];
    [(NTKNumeralsAnalogRichFaceView *)self setAlternateComplicationColor:v12];

    [v9 updateMonochromeColor];
    [v9 transitionToMonochromeWithFraction:1.0];
  }
}

- (void)_configureComplicationView:(id)a3 forSlot:(id)a4
{
  v5 = a3;
  v6 = [(NTKNumeralsAnalogRichFaceView *)self faceColorPalette];
  [(NTKNumeralsAnalogRichFaceView *)self _applyFaceColorPalette:v6 toComplicationView:v5];
}

- (void)_loadLayoutRules
{
  v15.receiver = self;
  v15.super_class = NTKNumeralsAnalogRichFaceView;
  [(NTKNumeralsAnalogFaceView *)&v15 _loadLayoutRules];
  [(NTKNumeralsAnalogRichFaceView *)self bounds];
  v3 = NTKComplicationSlot1;
  v4 = [(NTKNumeralsAnalogRichFaceView *)self complicationLayoutforSlot:v3];
  v5 = [(NTKNumeralsAnalogRichFaceView *)self device];
  sub_7668(v5, v5);
  NTKGraphicCircularScaledComplicationDiameter();
  v7 = v6;
  NTKWhistlerSubdialComplicationDiameter();
  NTKWhistlerSubdialComplicationContentDiameter();
  memset(&v14, 0, sizeof(v14));
  CGAffineTransformMakeScale(&v14, v7 / v8, v7 / v8);
  v9 = [(NTKNumeralsAnalogFaceView *)self _faceConfiguration];
  [v9 utilitySlot];

  v12 = v5;
  v13 = v4;
  v10 = v4;
  v11 = v5;
  NTKEnumerateComplicationStates();
}

- (int64_t)_keylineStyleForComplicationSlot:(id)a3
{
  v4 = a3;
  v5 = [(NTKNumeralsAnalogRichFaceView *)self delegate];
  v6 = [v5 faceViewComplicationFamilyForSlot:v4];

  return v6 == &dword_8 + 2;
}

- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7
{
  v22.receiver = self;
  v22.super_class = NTKNumeralsAnalogRichFaceView;
  [(NTKNumeralsAnalogFaceView *)&v22 _applyTransitionFraction:a4 fromOption:a5 toOption:a6 forCustomEditMode:a7 slot:?];
  if (a6 == 10)
  {
    v10 = [(NTKNumeralsAnalogRichFaceView *)self device];
    v11 = [(NTKNumeralsAnalogRichFaceView *)self interpolatedColorPalette];
    v12 = [v11 fromPalette];
    v13 = [NTKFaceColorScheme colorSchemeForDevice:v10 withFaceColorPalette:v12 units:25];
    v14 = [(NTKNumeralsAnalogRichFaceView *)self device];
    v15 = [(NTKNumeralsAnalogRichFaceView *)self interpolatedColorPalette];
    v16 = [v15 toPalette];
    v17 = [NTKFaceColorScheme colorSchemeForDevice:v14 withFaceColorPalette:v16 units:25];
    v18 = [NTKFaceColorScheme interpolationFrom:v13 to:v17 fraction:a3];

    v19 = [v18 foregroundColor];
    [(NTKNumeralsAnalogRichFaceView *)self setComplicationColor:v19];

    v20 = [v18 foregroundColor];
    [(NTKNumeralsAnalogRichFaceView *)self setInterpolatedComplicationColor:v20];

    v21 = +[UIColor whiteColor];
    [(NTKNumeralsAnalogRichFaceView *)self setAlternateComplicationColor:v21];

    [(NTKNumeralsAnalogFaceView *)self _enumerateComplicationViewsWithBlock:&stru_10728];
  }
}

- (void)_configureComplicationFactory:(id)a3
{
  v4.receiver = self;
  v4.super_class = NTKNumeralsAnalogRichFaceView;
  v3 = a3;
  [(NTKNumeralsAnalogFaceView *)&v4 _configureComplicationFactory:v3];
  [v3 setGraphicCornerComplications:{1, v4.receiver, v4.super_class}];
}

@end