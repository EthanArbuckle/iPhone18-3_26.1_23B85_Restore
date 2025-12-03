@interface NTKCharacterRichFaceView
- (NTKCharacterRichFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier;
- (id)_newScaleView;
- (void)_configureComplicationView:(id)view forSlot:(id)slot;
@end

@implementation NTKCharacterRichFaceView

- (NTKCharacterRichFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier
{
  v9.receiver = self;
  v9.super_class = NTKCharacterRichFaceView;
  v5 = [(NTKCharacterFaceView *)&v9 initWithFaceStyle:style forDevice:device clientIdentifier:identifier];
  v6 = v5;
  if (v5)
  {
    complicationFactory = [(NTKCharacterRichFaceView *)v5 complicationFactory];
    [complicationFactory setGraphicCornerComplications:1];
  }

  return v6;
}

- (void)_configureComplicationView:(id)view forSlot:(id)slot
{
  viewCopy = view;
  v10.receiver = self;
  v10.super_class = NTKCharacterRichFaceView;
  [(NTKCharacterFaceView *)&v10 _configureComplicationView:viewCopy forSlot:slot];
  if ([viewCopy conformsToProtocol:&OBJC_PROTOCOL___NTKUtilityComplicationView])
  {
    v7 = viewCopy;
    [v7 setUseRoundedFontDesign:1];
    [v7 setFontWeight:UIFontWeightMedium];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = viewCopy;
    v9 = [UIColor colorWithRed:0.701960784 green:0.701960784 blue:0.701960784 alpha:1.0];
    [(NTKCharacterRichFaceView *)self setComplicationColor:v9];
    [(NTKCharacterRichFaceView *)self setInterpolatedComplicationColor:v9];
    [v8 transitionToMonochromeWithFraction:1.0];
    [v8 updateMonochromeColor];
  }
}

- (id)_newScaleView
{
  v5.receiver = self;
  v5.super_class = NTKCharacterRichFaceView;
  _newScaleView = [(NTKCharacterFaceView *)&v5 _newScaleView];
  CGAffineTransformMakeScale(&v4, 0.95, 0.95);
  [_newScaleView setTransform:&v4];
  return _newScaleView;
}

@end