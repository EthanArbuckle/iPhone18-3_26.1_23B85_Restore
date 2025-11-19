@interface UIColor
@end

@implementation UIColor

uint64_t __51__UIColor_AVAdditions__AV_indicatorForegroundColor__block_invoke()
{
  v0 = [MEMORY[0x1E69DC888] systemGrayColor];
  v1 = AV_indicatorForegroundColor__indicatorForegroundColor;
  AV_indicatorForegroundColor__indicatorForegroundColor = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __51__UIColor_AVAdditions__AV_indicatorBackgroundColor__block_invoke()
{
  v0 = [MEMORY[0x1E69DC888] blackColor];
  v1 = AV_indicatorBackgroundColor__indicatorBackgroundColor;
  AV_indicatorBackgroundColor__indicatorBackgroundColor = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end