@interface NTKUtilityRichFaceView
- (NTKUtilityRichFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier;
- (void)_configureComplicationView:(id)view forSlot:(id)slot;
@end

@implementation NTKUtilityRichFaceView

- (NTKUtilityRichFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier
{
  v9.receiver = self;
  v9.super_class = NTKUtilityRichFaceView;
  v5 = [(NTKUtilityFaceView *)&v9 initWithFaceStyle:style forDevice:device clientIdentifier:identifier];
  v6 = v5;
  if (v5)
  {
    complicationFactory = [(NTKUtilityRichFaceView *)v5 complicationFactory];
    [complicationFactory setGraphicCornerComplications:1];
  }

  return v6;
}

- (void)_configureComplicationView:(id)view forSlot:(id)slot
{
  viewCopy = view;
  slotCopy = slot;
  v12.receiver = self;
  v12.super_class = NTKUtilityRichFaceView;
  [(NTKUtilityFaceView *)&v12 _configureComplicationView:viewCopy forSlot:slotCopy];
  if ([viewCopy conformsToProtocol:&OBJC_PROTOCOL___NTKUtilityComplicationView])
  {
    v8 = viewCopy;
    if ([slotCopy isEqualToString:NTKComplicationSlotBottomCenter])
    {
      [v8 setUseRoundedFontDesign:1];
      [v8 setFontWeight:UIFontWeightMedium];
      v9 = [UIColor colorWithRed:0.701960784 green:0.701960784 blue:0.701960784 alpha:1.0];
      [v8 setForegroundColor:v9];
    }

    else
    {
      faceColorPalette = [(NTKUtilityRichFaceView *)self faceColorPalette];
      v11 = [NTKPigmentEditOption pigmentNamed:ntk_special_multicolor];
      v9 = [faceColorPalette copyWithOption:v11];

      [v8 applyFaceColorPalette:v9 units:1];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [viewCopy transitionToMonochromeWithFraction:0.0];
  }
}

@end