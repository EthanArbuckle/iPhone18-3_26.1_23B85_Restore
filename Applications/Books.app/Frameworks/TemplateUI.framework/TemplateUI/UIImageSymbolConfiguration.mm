@interface UIImageSymbolConfiguration
+ (id)tui_configurationWithPointSize:(double)a3 weight:(int64_t)a4 scale:(int64_t)a5 renderingMode:(unint64_t)a6 colors:(id)a7;
+ (id)tui_configurationWithRenderingMode:(unint64_t)a3 colors:(id)a4;
@end

@implementation UIImageSymbolConfiguration

+ (id)tui_configurationWithRenderingMode:(unint64_t)a3 colors:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (a3 == 3)
  {
    v9 = +[UIImageSymbolConfiguration configurationPreferringMulticolor];
    goto LABEL_10;
  }

  if (a3 == 2)
  {
    if (![v5 count])
    {
      goto LABEL_8;
    }

    v9 = [UIImageSymbolConfiguration configurationWithPaletteColors:v6];
LABEL_10:
    v7 = v9;
    goto LABEL_11;
  }

  if (a3 != 1)
  {
LABEL_8:
    v7 = 0;
    goto LABEL_11;
  }

  v7 = [v5 firstObject];

  if (v7)
  {
    v8 = [v6 firstObject];
    v7 = [UIImageSymbolConfiguration configurationWithHierarchicalColor:v8];
  }

LABEL_11:

  return v7;
}

+ (id)tui_configurationWithPointSize:(double)a3 weight:(int64_t)a4 scale:(int64_t)a5 renderingMode:(unint64_t)a6 colors:(id)a7
{
  v12 = a7;
  v13 = [UIImageSymbolConfiguration configurationWithPointSize:a4 weight:a5 scale:a3];
  v14 = [a1 tui_configurationWithRenderingMode:a6 colors:v12];

  v15 = [v13 configurationByApplyingConfiguration:v14];

  return v15;
}

@end