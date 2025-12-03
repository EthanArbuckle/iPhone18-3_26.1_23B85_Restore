@interface NTKPrideAnalogRichFaceView
- (void)_configureComplicationView:(id)view forSlot:(id)slot;
- (void)_setupComplicationFactoryForDevice:(id)device;
- (void)_updateComplicationColors;
- (void)_updateComplicationColorsForView:(id)view foregroundColor:(id)color platterColor:(id)platterColor;
@end

@implementation NTKPrideAnalogRichFaceView

- (void)_setupComplicationFactoryForDevice:(id)device
{
  deviceCopy = device;
  v5 = [NTKWhistlerAnalogFaceViewComplicationFactory alloc];
  [NTKAnalogUtilities dialSizeForDevice:deviceCopy];
  v6 = [v5 initWithFaceView:self dialDiameter:deviceCopy device:?];

  cornerComplicationFactory = self->_cornerComplicationFactory;
  self->_cornerComplicationFactory = v6;

  v8 = self->_cornerComplicationFactory;

  [(NTKPrideAnalogRichFaceView *)self setComplicationFactory:v8];
}

- (void)_configureComplicationView:(id)view forSlot:(id)slot
{
  viewCopy = view;
  v12.receiver = self;
  v12.super_class = NTKPrideAnalogRichFaceView;
  [(NTKPrideAnalogRichFaceView *)&v12 _configureComplicationView:viewCopy forSlot:slot];
  activeQuad = [(NTKPrideAnalogFaceView *)self activeQuad];
  v8 = [activeQuad splineColorAtIndex:0];

  [(NTKPrideAnalogFaceView *)self complicationBrightness];
  v10 = [(NTKPrideAnalogFaceView *)self adjustBrightnessOfColor:v8 brightnessAmount:v9];
  v11 = [(NTKPrideAnalogFaceView *)self adjustBrightnessOfColor:v10 brightnessAmount:-0.8];
  [(NTKPrideAnalogRichFaceView *)self _updateComplicationColorsForView:viewCopy foregroundColor:v10 platterColor:v11];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [viewCopy transitionToMonochromeWithFraction:1.0];
  }
}

- (void)_updateComplicationColors
{
  activeQuad = [(NTKPrideAnalogFaceView *)self activeQuad];
  v4 = [activeQuad splineColorAtIndex:0];

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

- (void)_updateComplicationColorsForView:(id)view foregroundColor:(id)color platterColor:(id)platterColor
{
  viewCopy = view;
  colorCopy = color;
  platterColorCopy = platterColor;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = viewCopy;
    [v10 setForegroundColor:colorCopy];
    [v10 setPlatterColor:platterColorCopy];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_6;
    }

    v11 = viewCopy;
    [(NTKPrideAnalogRichFaceView *)self setComplicationColor:colorCopy];
    [(NTKPrideAnalogRichFaceView *)self setInterpolatedComplicationColor:colorCopy];
    [v11 updateMonochromeColor];
  }

LABEL_6:
}

@end