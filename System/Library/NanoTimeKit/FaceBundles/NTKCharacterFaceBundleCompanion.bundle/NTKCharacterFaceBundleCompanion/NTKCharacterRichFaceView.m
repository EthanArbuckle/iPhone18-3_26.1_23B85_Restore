@interface NTKCharacterRichFaceView
- (NTKCharacterRichFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5;
- (id)_newScaleView;
- (void)_configureComplicationView:(id)a3 forSlot:(id)a4;
@end

@implementation NTKCharacterRichFaceView

- (NTKCharacterRichFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5
{
  v9.receiver = self;
  v9.super_class = NTKCharacterRichFaceView;
  v5 = [(NTKCharacterFaceView *)&v9 initWithFaceStyle:a3 forDevice:a4 clientIdentifier:a5];
  v6 = v5;
  if (v5)
  {
    v7 = [(NTKCharacterRichFaceView *)v5 complicationFactory];
    [v7 setGraphicCornerComplications:1];
  }

  return v6;
}

- (void)_configureComplicationView:(id)a3 forSlot:(id)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = NTKCharacterRichFaceView;
  [(NTKCharacterFaceView *)&v10 _configureComplicationView:v6 forSlot:a4];
  if ([v6 conformsToProtocol:&OBJC_PROTOCOL___NTKUtilityComplicationView])
  {
    v7 = v6;
    [v7 setUseRoundedFontDesign:1];
    [v7 setFontWeight:UIFontWeightMedium];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v6;
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
  v2 = [(NTKCharacterFaceView *)&v5 _newScaleView];
  CGAffineTransformMakeScale(&v4, 0.95, 0.95);
  [v2 setTransform:&v4];
  return v2;
}

@end