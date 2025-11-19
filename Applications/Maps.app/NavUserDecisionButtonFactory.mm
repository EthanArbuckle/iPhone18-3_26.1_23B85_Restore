@interface NavUserDecisionButtonFactory
+ (id)cancelButton;
+ (id)confirmButton;
+ (id)dismissButtonWithHeight:(float)a3;
@end

@implementation NavUserDecisionButtonFactory

+ (id)dismissButtonWithHeight:(float)a3
{
  v4 = [MapsCircularProgressButton buttonWithType:0];
  v5 = +[UIColor labelColor];
  v20 = v5;
  v6 = [NSArray arrayWithObjects:&v20 count:1];
  v7 = [UIImageSymbolConfiguration configurationWithPaletteColors:v6];

  v8 = [UIFont systemFontOfSize:a3 * 0.4];
  v9 = [UIImageSymbolConfiguration configurationWithFont:v8];
  v10 = [v7 configurationByApplyingConfiguration:v9];

  v11 = [UIImageSymbolConfiguration configurationWithWeight:UIFontWeightMedium];
  v12 = [v10 configurationByApplyingConfiguration:v11];

  v13 = [UIImage systemImageNamed:@"xmark" withConfiguration:v12];
  v14 = +[UIColor tertiarySystemFillColor];
  v19 = v14;
  v15 = [NSArray arrayWithObjects:&v19 count:1];
  v16 = [UIImageSymbolConfiguration configurationWithPaletteColors:v15];

  v17 = [UIImage systemImageNamed:@"circle.fill" withConfiguration:v16];
  [v4 setImage:v13 forState:0];
  [v4 setBackgroundImage:v17 forState:0];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 setAccessibilityIdentifier:@"DismissButton"];

  return v4;
}

+ (id)confirmButton
{
  v2 = [MapsProgressBackgroundFillButton buttonWithType:1];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = [v2 titleLabel];
  [v3 setTextAlignment:1];

  [v2 setClipsToBounds:1];
  v4 = [v2 layer];
  [v4 setCornerRadius:10.0];

  v5 = [v2 titleLabel];
  [v5 setAdjustsFontSizeToFitWidth:1];

  v6 = [v2 titleLabel];
  [v6 setMinimumScaleFactor:0.5];

  [v2 setAccessibilityIdentifier:@"ConfirmButton"];
  v7 = [v2 theme];
  v8 = [v7 blueButtonBackgroundColor:0];
  v9 = [v7 fadedGrayButtonBackgroundColor:0];
  [v2 setBackgroundColor:v9 forState:0];
  [v2 setTitleColor:v8 forState:0];
  v10 = [v2 titleLabel];
  [v2 sendSubviewToBack:v10];

  return v2;
}

+ (id)cancelButton
{
  v2 = [MapsProgressBarButton buttonWithType:1];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = [v2 titleLabel];
  [v3 setTextAlignment:1];

  [v2 setClipsToBounds:1];
  v4 = [v2 layer];
  [v4 setCornerRadius:10.0];

  v5 = [v2 titleLabel];
  [v5 setAdjustsFontSizeToFitWidth:1];

  v6 = [v2 titleLabel];
  [v6 setMinimumScaleFactor:0.5];

  v7 = [UIFont _maps_boldSystemFontWithFixedSize:22.0];
  v8 = [v2 titleLabel];
  [v8 setFont:v7];

  [v2 setAccessibilityIdentifier:@"CancelButton"];
  v9 = objc_opt_new();
  [v2 setBackgroundImage:v9 forState:0];

  v10 = [v2 theme];
  v11 = [v10 blueButtonBackgroundColor:0];
  v12 = [v10 fadedGrayButtonBackgroundColor:0];
  [v2 setTitleColor:v11 forState:0];
  [v2 setBackgroundColor:v12 forState:0];

  return v2;
}

@end