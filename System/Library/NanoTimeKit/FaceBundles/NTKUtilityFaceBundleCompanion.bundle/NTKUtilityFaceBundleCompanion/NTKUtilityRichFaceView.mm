@interface NTKUtilityRichFaceView
- (NTKUtilityRichFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5;
- (void)_configureComplicationView:(id)a3 forSlot:(id)a4;
@end

@implementation NTKUtilityRichFaceView

- (NTKUtilityRichFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5
{
  v9.receiver = self;
  v9.super_class = NTKUtilityRichFaceView;
  v5 = [(NTKUtilityFaceView *)&v9 initWithFaceStyle:a3 forDevice:a4 clientIdentifier:a5];
  v6 = v5;
  if (v5)
  {
    v7 = [(NTKUtilityRichFaceView *)v5 complicationFactory];
    [v7 setGraphicCornerComplications:1];
  }

  return v6;
}

- (void)_configureComplicationView:(id)a3 forSlot:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = NTKUtilityRichFaceView;
  [(NTKUtilityFaceView *)&v12 _configureComplicationView:v6 forSlot:v7];
  if ([v6 conformsToProtocol:&OBJC_PROTOCOL___NTKUtilityComplicationView])
  {
    v8 = v6;
    if ([v7 isEqualToString:NTKComplicationSlotBottomCenter])
    {
      [v8 setUseRoundedFontDesign:1];
      [v8 setFontWeight:UIFontWeightMedium];
      v9 = [UIColor colorWithRed:0.701960784 green:0.701960784 blue:0.701960784 alpha:1.0];
      [v8 setForegroundColor:v9];
    }

    else
    {
      v10 = [(NTKUtilityRichFaceView *)self faceColorPalette];
      v11 = [NTKPigmentEditOption pigmentNamed:ntk_special_multicolor];
      v9 = [v10 copyWithOption:v11];

      [v8 applyFaceColorPalette:v9 units:1];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 transitionToMonochromeWithFraction:0.0];
  }
}

@end