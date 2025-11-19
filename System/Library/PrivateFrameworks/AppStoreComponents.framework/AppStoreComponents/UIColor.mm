@interface UIColor
@end

@implementation UIColor

void __55__UIColor_AppStoreComponents___asc_highlightBlendColor__block_invoke()
{
  v2 = [MEMORY[0x277D75348] blackColor];
  v0 = [v2 colorWithAlphaComponent:0.4];
  v1 = _asc_highlightBlendColor_highlightBlendColor;
  _asc_highlightBlendColor_highlightBlendColor = v0;
}

id __65__UIColor_AppStoreComponents__asc_colorWithLightColor_darkColor___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 userInterfaceStyle];
  v4 = 40;
  if (v3 == 2)
  {
    v4 = 32;
  }

  v5 = *(a1 + v4);

  return v5;
}

@end