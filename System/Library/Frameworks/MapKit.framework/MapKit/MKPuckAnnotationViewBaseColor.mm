@interface MKPuckAnnotationViewBaseColor
@end

@implementation MKPuckAnnotationViewBaseColor

id ___MKPuckAnnotationViewBaseColor_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 userInterfaceStyle] == 2)
  {
    if ([v3 accessibilityContrast] == 1)
    {
      v4 = 0.682352941;
      v5 = 0.698039216;
    }

    else
    {
      v4 = 0.780392157;
      v5 = 0.8;
    }

    v7 = [MEMORY[0x1E69DC888] colorWithRed:v4 green:v4 blue:v5 alpha:1.0];
    v6 = v7;
    if (*(a1 + 32) == 1)
    {
      v8 = [v7 colorWithAlphaComponent:0.5];

      v6 = v8;
    }
  }

  else
  {
    v6 = [MEMORY[0x1E69DC888] whiteColor];
  }

  return v6;
}

@end