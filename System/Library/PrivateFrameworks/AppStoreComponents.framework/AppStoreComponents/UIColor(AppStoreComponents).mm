@interface UIColor(AppStoreComponents)
+ (id)_asc_highlightBlendColor;
+ (id)asc_colorWithLightColor:()AppStoreComponents darkColor:;
- (id)asc_highlightedColor;
@end

@implementation UIColor(AppStoreComponents)

+ (id)_asc_highlightBlendColor
{
  if (_asc_highlightBlendColor_onceToken != -1)
  {
    +[UIColor(AppStoreComponents) _asc_highlightBlendColor];
  }

  v1 = _asc_highlightBlendColor_highlightBlendColor;

  return v1;
}

+ (id)asc_colorWithLightColor:()AppStoreComponents darkColor:
{
  v6 = a3;
  v7 = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __65__UIColor_AppStoreComponents__asc_colorWithLightColor_darkColor___block_invoke;
  v12[3] = &unk_2781CB8D0;
  v13 = v7;
  v14 = v6;
  v8 = v6;
  v9 = v7;
  v10 = [self colorWithDynamicProvider:v12];

  return v10;
}

- (id)asc_highlightedColor
{
  _asc_highlightBlendColor = [MEMORY[0x277D75348] _asc_highlightBlendColor];
  v3 = [self _colorBlendedWithColor:_asc_highlightBlendColor];

  return v3;
}

@end