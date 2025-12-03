@interface NTKChronoRichFaceView
- ($F24F406B2B787EFB06265DBA3D28CBD5)_startButtonLayoutConstants;
- (NTKChronoRichFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier;
- (void)_configureComplicationView:(id)view forSlot:(id)slot;
@end

@implementation NTKChronoRichFaceView

- (NTKChronoRichFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier
{
  v9.receiver = self;
  v9.super_class = NTKChronoRichFaceView;
  v5 = [(NTKChronoFaceView *)&v9 initWithFaceStyle:style forDevice:device clientIdentifier:identifier];
  v6 = v5;
  if (v5)
  {
    complicationFactory = [(NTKChronoRichFaceView *)v5 complicationFactory];
    [complicationFactory setGraphicCornerComplications:1];
  }

  return v6;
}

- (void)_configureComplicationView:(id)view forSlot:(id)slot
{
  viewCopy = view;
  v9.receiver = self;
  v9.super_class = NTKChronoRichFaceView;
  [(NTKChronoFaceView *)&v9 _configureComplicationView:viewCopy forSlot:slot];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = viewCopy;
    v8 = [UIColor colorWithRed:0.701960784 green:0.701960784 blue:0.701960784 alpha:1.0];
    [(NTKChronoRichFaceView *)self setComplicationColor:v8];
    [(NTKChronoRichFaceView *)self setInterpolatedComplicationColor:v8];
    [v7 transitionToMonochromeWithFraction:1.0];
    [v7 updateMonochromeColor];
  }
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)_startButtonLayoutConstants
{
  device = [(NTKChronoRichFaceView *)self device];
  sub_F908(device, device);
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.var1 = v8;
  result.var0 = v7;
  return result;
}

@end