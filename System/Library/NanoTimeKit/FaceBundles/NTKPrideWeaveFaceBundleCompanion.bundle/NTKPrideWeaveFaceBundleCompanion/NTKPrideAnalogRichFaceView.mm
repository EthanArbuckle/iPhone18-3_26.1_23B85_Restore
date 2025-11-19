@interface NTKPrideAnalogRichFaceView
- (void)_configureComplicationView:(id)a3 forSlot:(id)a4;
- (void)_setupComplicationFactoryForDevice:(id)a3;
- (void)_updateComplicationColors;
- (void)_updateComplicationColorsForView:(id)a3 foregroundColor:(id)a4 platterColor:(id)a5;
@end

@implementation NTKPrideAnalogRichFaceView

- (void)_setupComplicationFactoryForDevice:(id)a3
{
  v4 = a3;
  v5 = [NTKWhistlerAnalogFaceViewComplicationFactory alloc];
  [NTKAnalogUtilities dialSizeForDevice:v4];
  v6 = [v5 initWithFaceView:self dialDiameter:v4 device:?];

  cornerComplicationFactory = self->_cornerComplicationFactory;
  self->_cornerComplicationFactory = v6;

  v8 = self->_cornerComplicationFactory;

  [(NTKPrideAnalogRichFaceView *)self setComplicationFactory:v8];
}

- (void)_configureComplicationView:(id)a3 forSlot:(id)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = NTKPrideAnalogRichFaceView;
  [(NTKPrideAnalogRichFaceView *)&v12 _configureComplicationView:v6 forSlot:a4];
  v7 = [(NTKPrideAnalogFaceView *)self activeQuad];
  v8 = [v7 splineColorAtIndex:0];

  [(NTKPrideAnalogFaceView *)self complicationBrightness];
  v10 = [(NTKPrideAnalogFaceView *)self adjustBrightnessOfColor:v8 brightnessAmount:v9];
  v11 = [(NTKPrideAnalogFaceView *)self adjustBrightnessOfColor:v10 brightnessAmount:-0.8];
  [(NTKPrideAnalogRichFaceView *)self _updateComplicationColorsForView:v6 foregroundColor:v10 platterColor:v11];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 transitionToMonochromeWithFraction:1.0];
  }
}

- (void)_updateComplicationColors
{
  v3 = [(NTKPrideAnalogFaceView *)self activeQuad];
  v4 = [v3 splineColorAtIndex:0];

  [(NTKPrideAnalogFaceView *)self complicationBrightness];
  v6 = [(NTKPrideAnalogFaceView *)self adjustBrightnessOfColor:v4 brightnessAmount:v5];
  [(NTKPrideAnalogFaceView *)self adjustBrightnessOfColor:v6 brightnessAmount:-0.8];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_13FD0;
  v9[3] = &unk_24B90;
  v9[4] = self;
  v11 = v10 = v6;
  v7 = v11;
  v8 = v6;
  [(NTKPrideAnalogRichFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v9];
}

- (void)_updateComplicationColorsForView:(id)a3 foregroundColor:(id)a4 platterColor:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v12;
    [v10 setForegroundColor:v8];
    [v10 setPlatterColor:v9];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_6;
    }

    v11 = v12;
    [(NTKPrideAnalogRichFaceView *)self setComplicationColor:v8];
    [(NTKPrideAnalogRichFaceView *)self setInterpolatedComplicationColor:v8];
    [v11 updateMonochromeColor];
  }

LABEL_6:
}

@end