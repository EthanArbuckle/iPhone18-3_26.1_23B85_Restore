@interface PKPaletteBackgroundColorFactory
- (id)makeBackgroundColor;
@end

@implementation PKPaletteBackgroundColorFactory

- (id)makeBackgroundColor
{
  if (a1)
  {
    a1 = [MEMORY[0x1E69DC888] colorWithDynamicProvider:&__block_literal_global_46];
    v1 = vars8;
  }

  return a1;
}

id __54__PKPaletteBackgroundColorFactory_makeBackgroundColor__block_invoke(uint64_t a1, void *a2)
{
  if ([a2 userInterfaceStyle] == 2)
  {
    v2 = [MEMORY[0x1E69DC888] blackColor];
    v3 = v2;
    v4 = 0.7;
  }

  else
  {
    v2 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    v3 = v2;
    v4 = 0.9;
  }

  v5 = [v2 colorWithAlphaComponent:v4];

  return v5;
}

@end