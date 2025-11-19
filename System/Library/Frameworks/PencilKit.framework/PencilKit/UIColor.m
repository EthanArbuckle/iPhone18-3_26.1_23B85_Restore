@interface UIColor
@end

@implementation UIColor

id __46__UIColor_PKUtilities___pk_betaLabelTextColor__block_invoke(uint64_t a1, void *a2)
{
  if ([a2 userInterfaceStyle] == 2)
  {
    [MEMORY[0x1E69DC888] blackColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }
  v2 = ;

  return v2;
}

id __59__UIColor_PKUtilities___pk_betaLabelTextEncapsulationColor__block_invoke(uint64_t a1, void *a2)
{
  if ([a2 userInterfaceStyle] == 2)
  {
    v2 = 0.552941203;
    v3 = 0.576470613;
  }

  else
  {
    v2 = 0.533333361;
    v3 = 0.549019635;
  }

  v4 = [MEMORY[0x1E69DC888] colorWithRed:v2 green:v2 blue:v3 alpha:1.0];

  return v4;
}

@end