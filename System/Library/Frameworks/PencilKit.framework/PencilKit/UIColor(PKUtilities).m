@interface UIColor(PKUtilities)
+ (id)pk_convertColorPickerColor:()PKUtilities fromUserInterfaceStyle:to:;
+ (id)pk_doneButtonBackgroundColor;
+ (id)pk_paletteStrokeColor;
+ (id)pk_thicknessButtonBackgroundUseSystemColor:()PKUtilities;
+ (id)pk_thicknessButtonBlackUseSystemColor:()PKUtilities;
+ (id)pk_thicknessButtonLightGrayUseSystemColor:()PKUtilities;
+ (id)pk_thicknessButtonWhiteUseSystemColor:()PKUtilities;
+ (id)pk_toolSampleViewBackgroundColor;
+ (uint64_t)pk_randomColor;
@end

@implementation UIColor(PKUtilities)

+ (id)pk_paletteStrokeColor
{
  v0 = MEMORY[0x1E69DC888];
  v1 = PencilKitBundle();
  v2 = [v0 colorNamed:@"paletteStrokeColor" inBundle:v1 compatibleWithTraitCollection:0];

  return v2;
}

+ (id)pk_thicknessButtonLightGrayUseSystemColor:()PKUtilities
{
  if (a3)
  {
    [MEMORY[0x1E69DC888] systemLightGrayColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] lightGrayColor];
  }
  v3 = ;

  return v3;
}

+ (id)pk_thicknessButtonBlackUseSystemColor:()PKUtilities
{
  if (a3)
  {
    [MEMORY[0x1E69DC888] labelColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] systemLightMidGrayColor];
  }
  v3 = ;

  return v3;
}

+ (id)pk_thicknessButtonWhiteUseSystemColor:()PKUtilities
{
  if (a3)
  {
    [MEMORY[0x1E69DC888] systemBackgroundColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }
  v3 = ;

  return v3;
}

+ (id)pk_thicknessButtonBackgroundUseSystemColor:()PKUtilities
{
  if (a3)
  {
    [MEMORY[0x1E69DC888] labelColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] systemMidGrayColor];
  }
  v3 = ;

  return v3;
}

+ (id)pk_doneButtonBackgroundColor
{
  v0 = MEMORY[0x1E69DC888];
  v1 = PencilKitBundle();
  v2 = [v0 colorNamed:@"doneButtonBackgroundColor" inBundle:v1 compatibleWithTraitCollection:0];

  return v2;
}

+ (id)pk_toolSampleViewBackgroundColor
{
  v0 = MEMORY[0x1E69DC888];
  v1 = PencilKitBundle();
  v2 = [v0 colorNamed:@"toolSampleViewBackgroundColor" inBundle:v1 compatibleWithTraitCollection:0];

  return v2;
}

+ (id)pk_convertColorPickerColor:()PKUtilities fromUserInterfaceStyle:to:
{
  v7 = a3;
  v8 = v7;
  if (a5 && a4 && a4 != a5)
  {
    v9 = [MEMORY[0x1E69DC888] colorWithCGColor:{DKUTransformCGColor(objc_msgSend(v7, "CGColor"))}];
  }

  else
  {
    v9 = v7;
  }

  v10 = v9;

  return v10;
}

+ (uint64_t)pk_randomColor
{
  v0 = arc4random_uniform(0xFFu) / 255.0;
  v1 = arc4random_uniform(0xFFu) / 255.0;
  v2 = arc4random_uniform(0xFFu) / 255.0;
  v3 = MEMORY[0x1E69DC888];

  return [v3 colorWithRed:v0 green:v1 blue:v2 alpha:1.0];
}

@end