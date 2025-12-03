@interface ARUIMetricColors
+ (CGGradient)newGradientForStartColor:(id)color endColor:(id)endColor;
+ (id)clockColors;
+ (id)distanceColors;
+ (id)diveColors;
+ (id)elapsedTimeColors;
+ (id)energyColors;
+ (id)heartRateColors;
+ (id)keyColors;
+ (id)noMetricColors;
+ (id)paceColors;
+ (id)pausedRingsColors;
+ (id)systemGrayTextColor;
@end

@implementation ARUIMetricColors

+ (id)keyColors
{
  v2 = objc_alloc_init(self);
  v3 = [MEMORY[0x1E69DC888] colorWithRed:0.717647059 green:1.0 blue:0.0 alpha:1.0];
  [v2 setGradientLightColor:v3];

  v4 = [MEMORY[0x1E69DC888] colorWithRed:0.215686275 green:0.862745098 blue:0.0 alpha:1.0];
  [v2 setGradientDarkColor:v4];

  v5 = [MEMORY[0x1E69DC888] colorWithRed:0.0666666667 green:0.470588235 blue:0.392156863 alpha:1.0];
  [v2 setGradientContrastColor:v5];

  v6 = [MEMORY[0x1E69DC888] colorWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v2 setNonGradientTextColor:v6];

  nonGradientTextColor = [v2 nonGradientTextColor];
  v8 = [nonGradientTextColor colorWithAlphaComponent:0.300000012];
  [v2 setAdjustmentButtonBackgroundColor:v8];

  blackColor = [MEMORY[0x1E69DC888] blackColor];
  [v2 setButtonTextColor:blackColor];

  blackColor2 = [MEMORY[0x1E69DC888] blackColor];
  [v2 setButtonDisabledTextColor:blackColor2];

  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [v2 setValueDisplayColor:whiteColor];

  v12 = [MEMORY[0x1E69DC888] colorWithRed:0.792156863 green:1.0 blue:0.403921569 alpha:1.0];
  [v2 setHighContrastTextColor:v12];

  nonGradientTextColor2 = [v2 nonGradientTextColor];
  highContrastTextColor = [v2 highContrastTextColor];
  v15 = nonGradientTextColor2;
  v16 = highContrastTextColor;
  v17 = objc_alloc(MEMORY[0x1E69DC888]);
  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __ARUIColorForCurrentContrastMode_block_invoke;
  v25 = &unk_1E83CE510;
  v26 = v16;
  v27 = v15;
  v18 = v16;
  v19 = v15;
  v20 = [v17 initWithDynamicProvider:&v22];

  [v2 setTextDisplayColor:{v20, v22, v23, v24, v25}];

  return v2;
}

+ (id)energyColors
{
  v2 = objc_alloc_init(self);
  v3 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:0.196078431 blue:0.529411765 alpha:1.0];
  [v2 setGradientLightColor:v3];

  v4 = [MEMORY[0x1E69DC888] colorWithRed:0.882352941 green:0.0 blue:0.0784313725 alpha:1.0];
  [v2 setGradientDarkColor:v4];

  v5 = [MEMORY[0x1E69DC888] colorWithRed:0.274509804 green:0.0 blue:0.690196078 alpha:1.0];
  [v2 setGradientContrastColor:v5];

  v6 = [MEMORY[0x1E69DC888] colorWithRed:0.980392157 green:0.0666666667 blue:0.309803922 alpha:1.0];
  [v2 setNonGradientTextColor:v6];

  nonGradientTextColor = [v2 nonGradientTextColor];
  v8 = [nonGradientTextColor colorWithAlphaComponent:0.300000012];
  [v2 setAdjustmentButtonBackgroundColor:v8];

  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [v2 setButtonTextColor:whiteColor];

  v10 = [MEMORY[0x1E69DC888] colorWithWhite:0.2 alpha:1.0];
  [v2 setButtonDisabledTextColor:v10];

  whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
  [v2 setValueDisplayColor:whiteColor2];

  [v2 setWorkoutRingColorIdentifier:@"calorieWorkout"];
  v12 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:0.392156863 blue:0.509803922 alpha:1.0];
  [v2 setHighContrastTextColor:v12];

  nonGradientTextColor2 = [v2 nonGradientTextColor];
  highContrastTextColor = [v2 highContrastTextColor];
  v15 = nonGradientTextColor2;
  v16 = highContrastTextColor;
  v17 = objc_alloc(MEMORY[0x1E69DC888]);
  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __ARUIColorForCurrentContrastMode_block_invoke;
  v25 = &unk_1E83CE510;
  v26 = v16;
  v27 = v15;
  v18 = v16;
  v19 = v15;
  v20 = [v17 initWithDynamicProvider:&v22];

  [v2 setTextDisplayColor:{v20, v22, v23, v24, v25}];

  return v2;
}

+ (id)distanceColors
{
  v2 = objc_alloc_init(self);
  v3 = [MEMORY[0x1E69DC888] colorWithRed:0.0 green:0.815686275 blue:1.0 alpha:1.0];
  [v2 setGradientLightColor:v3];

  v4 = [MEMORY[0x1E69DC888] colorWithRed:0.0 green:0.666666667 blue:1.0 alpha:1.0];
  [v2 setGradientDarkColor:v4];

  v5 = [MEMORY[0x1E69DC888] colorWithRed:0.0 green:0.717647059 blue:1.0 alpha:1.0];
  [v2 setNonGradientTextColor:v5];

  nonGradientTextColor = [v2 nonGradientTextColor];
  v7 = [nonGradientTextColor colorWithAlphaComponent:0.300000012];
  [v2 setAdjustmentButtonBackgroundColor:v7];

  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [v2 setButtonTextColor:whiteColor];

  v9 = [MEMORY[0x1E69DC888] colorWithWhite:0.2 alpha:1.0];
  [v2 setButtonDisabledTextColor:v9];

  whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
  [v2 setValueDisplayColor:whiteColor2];

  [v2 setWorkoutRingColorIdentifier:@"distanceWorkout"];
  v11 = [MEMORY[0x1E69DC888] colorWithRed:0.329411765 green:0.82745098 blue:1.0 alpha:1.0];
  [v2 setHighContrastTextColor:v11];

  nonGradientTextColor2 = [v2 nonGradientTextColor];
  highContrastTextColor = [v2 highContrastTextColor];
  v14 = nonGradientTextColor2;
  v15 = highContrastTextColor;
  v16 = objc_alloc(MEMORY[0x1E69DC888]);
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __ARUIColorForCurrentContrastMode_block_invoke;
  v24 = &unk_1E83CE510;
  v25 = v15;
  v26 = v14;
  v17 = v15;
  v18 = v14;
  v19 = [v16 initWithDynamicProvider:&v21];

  [v2 setTextDisplayColor:{v19, v21, v22, v23, v24}];

  return v2;
}

+ (id)systemGrayTextColor
{
  if (systemGrayTextColor_onceToken[0] != -1)
  {
    +[ARUIMetricColors systemGrayTextColor];
  }

  v3 = systemGrayTextColor_systemGrayTextColor;

  return v3;
}

uint64_t __39__ARUIMetricColors_systemGrayTextColor__block_invoke()
{
  v0 = [MEMORY[0x1E69DC888] colorWithRed:0.682352941 green:0.705882353 blue:0.749019608 alpha:1.0];
  v1 = systemGrayTextColor_systemGrayTextColor;
  systemGrayTextColor_systemGrayTextColor = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (CGGradient)newGradientForStartColor:(id)color endColor:(id)endColor
{
  v13[2] = *MEMORY[0x1E69E9840];
  colorCopy = color;
  endColorCopy = endColor;
  v13[0] = [color CGColor];
  cGColor = [endColorCopy CGColor];

  v13[1] = cGColor;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v11 = CGGradientCreateWithColors(DeviceRGB, v9, 0);
  CGColorSpaceRelease(DeviceRGB);

  return v11;
}

+ (id)noMetricColors
{
  keyColors = [self keyColors];
  [keyColors setWorkoutRingColorIdentifier:@"openWorkout"];

  return keyColors;
}

+ (id)elapsedTimeColors
{
  v2 = objc_alloc_init(self);
  v3 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:0.917647059 blue:0.0 alpha:1.0];
  [v2 setGradientLightColor:v3];

  v4 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:0.764705882 blue:0.0 alpha:1.0];
  [v2 setGradientDarkColor:v4];

  v5 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:0.901960784 blue:0.125490196 alpha:1.0];
  [v2 setNonGradientTextColor:v5];

  nonGradientTextColor = [v2 nonGradientTextColor];
  v7 = [nonGradientTextColor colorWithAlphaComponent:0.300000012];
  [v2 setAdjustmentButtonBackgroundColor:v7];

  adjustmentButtonBackgroundColor = [v2 adjustmentButtonBackgroundColor];
  v9 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.3];
  v10 = [v9 _colorBlendedWithColor:adjustmentButtonBackgroundColor];

  [v2 setLightenedNonGradientColor:v10];
  blackColor = [MEMORY[0x1E69DC888] blackColor];
  [v2 setButtonTextColor:blackColor];

  blackColor2 = [MEMORY[0x1E69DC888] blackColor];
  [v2 setButtonDisabledTextColor:blackColor2];

  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [v2 setValueDisplayColor:whiteColor];

  [v2 setWorkoutRingColorIdentifier:@"timedWorkout"];
  v14 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:0.941176471 blue:0.478431373 alpha:1.0];
  [v2 setHighContrastTextColor:v14];

  nonGradientTextColor2 = [v2 nonGradientTextColor];
  highContrastTextColor = [v2 highContrastTextColor];
  v17 = nonGradientTextColor2;
  v18 = highContrastTextColor;
  v19 = objc_alloc(MEMORY[0x1E69DC888]);
  v24 = MEMORY[0x1E69E9820];
  v25 = 3221225472;
  v26 = __ARUIColorForCurrentContrastMode_block_invoke;
  v27 = &unk_1E83CE510;
  v28 = v18;
  v29 = v17;
  v20 = v18;
  v21 = v17;
  v22 = [v19 initWithDynamicProvider:&v24];

  [v2 setTextDisplayColor:{v22, v24, v25, v26, v27}];

  return v2;
}

+ (id)paceColors
{
  v2 = objc_alloc_init(self);
  v3 = [MEMORY[0x1E69DC888] colorWithRed:0.0 green:0.980392157 blue:0.815686275 alpha:1.0];
  [v2 setGradientLightColor:v3];

  v4 = [MEMORY[0x1E69DC888] colorWithRed:0.274509804 green:0.380392157 blue:0.549019608 alpha:1.0];
  [v2 setGradientContrastColor:v4];

  v5 = [MEMORY[0x1E69DC888] colorWithRed:0.0 green:0.729411765 blue:0.882352941 alpha:1.0];
  [v2 setGradientDarkColor:v5];

  v6 = [MEMORY[0x1E69DC888] colorWithRed:0.22745098 green:0.91372549 blue:0.901960784 alpha:1.0];
  [v2 setNonGradientTextColor:v6];

  nonGradientTextColor = [v2 nonGradientTextColor];
  v8 = [nonGradientTextColor colorWithAlphaComponent:0.300000012];
  [v2 setAdjustmentButtonBackgroundColor:v8];

  nonGradientTextColor2 = [v2 nonGradientTextColor];
  v10 = [nonGradientTextColor2 colorWithAlphaComponent:0.300000012];
  [v2 setPlatterBackgroundColor:v10];

  nonGradientTextColor3 = [v2 nonGradientTextColor];
  v12 = [nonGradientTextColor3 colorWithAlphaComponent:0.219999999];
  [v2 setPlatterInactiveBackgroundColor:v12];

  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [v2 setValueDisplayColor:whiteColor];

  v14 = [MEMORY[0x1E69DC888] colorWithRed:0.541176471 green:1.0 blue:0.984313725 alpha:1.0];
  [v2 setHighContrastTextColor:v14];

  nonGradientTextColor4 = [v2 nonGradientTextColor];
  highContrastTextColor = [v2 highContrastTextColor];
  v17 = nonGradientTextColor4;
  v18 = highContrastTextColor;
  v19 = objc_alloc(MEMORY[0x1E69DC888]);
  v24 = MEMORY[0x1E69E9820];
  v25 = 3221225472;
  v26 = __ARUIColorForCurrentContrastMode_block_invoke;
  v27 = &unk_1E83CE510;
  v28 = v18;
  v29 = v17;
  v20 = v18;
  v21 = v17;
  v22 = [v19 initWithDynamicProvider:&v24];

  [v2 setTextDisplayColor:{v22, v24, v25, v26, v27}];

  return v2;
}

+ (id)heartRateColors
{
  v2 = objc_alloc_init(self);
  v3 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:0.262745098 blue:0.196078431 alpha:1.0];
  [v2 setGradientLightColor:v3];

  v4 = [MEMORY[0x1E69DC888] colorWithRed:0.901960784 green:0.129411765 blue:0.0901960784 alpha:1.0];
  [v2 setGradientDarkColor:v4];

  v5 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:0.219607843 blue:0.0980392157 alpha:1.0];
  [v2 setNonGradientTextColor:v5];

  v6 = [MEMORY[0x1E69DC888] colorWithRed:0.941176471 green:0.556862745 blue:0.482352941 alpha:1.0];
  [v2 setLightenedNonGradientColor:v6];

  nonGradientTextColor = [v2 nonGradientTextColor];
  v8 = [nonGradientTextColor colorWithAlphaComponent:0.300000012];
  [v2 setAdjustmentButtonBackgroundColor:v8];

  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [v2 setValueDisplayColor:whiteColor];

  v10 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:0.431372549 blue:0.298039216 alpha:1.0];
  [v2 setHighContrastTextColor:v10];

  nonGradientTextColor2 = [v2 nonGradientTextColor];
  highContrastTextColor = [v2 highContrastTextColor];
  v13 = nonGradientTextColor2;
  v14 = highContrastTextColor;
  v15 = objc_alloc(MEMORY[0x1E69DC888]);
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __ARUIColorForCurrentContrastMode_block_invoke;
  v23 = &unk_1E83CE510;
  v24 = v14;
  v25 = v13;
  v16 = v14;
  v17 = v13;
  v18 = [v15 initWithDynamicProvider:&v20];

  [v2 setTextDisplayColor:{v18, v20, v21, v22, v23}];

  return v2;
}

+ (id)clockColors
{
  v2 = objc_alloc_init(self);
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [v2 setGradientLightColor:whiteColor];

  whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
  [v2 setGradientDarkColor:whiteColor2];

  whiteColor3 = [MEMORY[0x1E69DC888] whiteColor];
  [v2 setNonGradientTextColor:whiteColor3];

  whiteColor4 = [MEMORY[0x1E69DC888] whiteColor];
  [v2 setAdjustmentButtonBackgroundColor:whiteColor4];

  whiteColor5 = [MEMORY[0x1E69DC888] whiteColor];
  [v2 setValueDisplayColor:whiteColor5];

  return v2;
}

+ (id)diveColors
{
  v2 = objc_alloc_init(self);
  v3 = [MEMORY[0x1E69DC888] colorWithRed:0.0 green:0.211764706 blue:0.28627451 alpha:1.0];
  [v2 setGradientLightColor:v3];

  v4 = [MEMORY[0x1E69DC888] colorWithRed:0.0 green:0.129411765 blue:0.133333333 alpha:1.0];
  [v2 setGradientDarkColor:v4];

  v5 = [MEMORY[0x1E69DC888] colorWithRed:0.0 green:0.717647059 blue:1.0 alpha:1.0];
  [v2 setNonGradientTextColor:v5];

  nonGradientTextColor = [v2 nonGradientTextColor];
  v7 = [nonGradientTextColor colorWithAlphaComponent:0.300000012];
  [v2 setAdjustmentButtonBackgroundColor:v7];

  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [v2 setValueDisplayColor:whiteColor];

  return v2;
}

+ (id)pausedRingsColors
{
  v2 = objc_alloc_init(self);
  v3 = [MEMORY[0x1E69DC888] colorWithRed:0.470588235 green:0.470588235 blue:0.501960784 alpha:1.0];
  [v2 setGradientLightColor:v3];

  v4 = [MEMORY[0x1E69DC888] colorWithRed:0.470588235 green:0.470588235 blue:0.501960784 alpha:1.0];
  [v2 setGradientDarkColor:v4];

  v5 = [MEMORY[0x1E69DC888] colorWithRed:0.470588235 green:0.470588235 blue:0.501960784 alpha:1.0];
  [v2 setNonGradientTextColor:v5];

  nonGradientTextColor = [v2 nonGradientTextColor];
  v7 = [nonGradientTextColor colorWithAlphaComponent:1.0];
  [v2 setAdjustmentButtonBackgroundColor:v7];

  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [v2 setValueDisplayColor:whiteColor];

  return v2;
}

@end