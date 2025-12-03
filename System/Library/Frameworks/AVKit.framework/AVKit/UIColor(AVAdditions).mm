@interface UIColor(AVAdditions)
+ (id)AV_indicatorBackgroundColor;
+ (id)AV_indicatorForegroundColor;
+ (id)avkit_tintColorForControlElementIsOverVideo:()AVAdditions withUserInterfaceStyle:;
+ (id)avkit_tintColorForControlElementWithUserInterfaceStyle:()AVAdditions;
@end

@implementation UIColor(AVAdditions)

+ (id)avkit_tintColorForControlElementWithUserInterfaceStyle:()AVAdditions
{
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  if (a3 == 1)
  {
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];

    whiteColor = secondaryLabelColor;
  }

  return whiteColor;
}

+ (id)avkit_tintColorForControlElementIsOverVideo:()AVAdditions withUserInterfaceStyle:
{
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  if (a4 == 1)
  {
    if (a3)
    {
      [MEMORY[0x1E69DC888] whiteColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] secondaryLabelColor];
    }
    v7 = ;

    whiteColor = v7;
  }

  return whiteColor;
}

+ (id)AV_indicatorForegroundColor
{
  if (AV_indicatorForegroundColor_onceToken != -1)
  {
    dispatch_once(&AV_indicatorForegroundColor_onceToken, &__block_literal_global_2);
  }

  v1 = AV_indicatorForegroundColor__indicatorForegroundColor;

  return v1;
}

+ (id)AV_indicatorBackgroundColor
{
  if (AV_indicatorBackgroundColor_onceToken != -1)
  {
    dispatch_once(&AV_indicatorBackgroundColor_onceToken, &__block_literal_global_17114);
  }

  v1 = AV_indicatorBackgroundColor__indicatorBackgroundColor;

  return v1;
}

@end