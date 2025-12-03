@interface UIImageSymbolConfiguration
+ (id)tui_configurationWithPointSize:(double)size weight:(int64_t)weight scale:(int64_t)scale renderingMode:(unint64_t)mode colors:(id)colors;
+ (id)tui_configurationWithRenderingMode:(unint64_t)mode colors:(id)colors;
@end

@implementation UIImageSymbolConfiguration

+ (id)tui_configurationWithRenderingMode:(unint64_t)mode colors:(id)colors
{
  colorsCopy = colors;
  v6 = colorsCopy;
  if (mode == 3)
  {
    v9 = +[UIImageSymbolConfiguration configurationPreferringMulticolor];
    goto LABEL_10;
  }

  if (mode == 2)
  {
    if (![colorsCopy count])
    {
      goto LABEL_8;
    }

    v9 = [UIImageSymbolConfiguration configurationWithPaletteColors:v6];
LABEL_10:
    firstObject = v9;
    goto LABEL_11;
  }

  if (mode != 1)
  {
LABEL_8:
    firstObject = 0;
    goto LABEL_11;
  }

  firstObject = [colorsCopy firstObject];

  if (firstObject)
  {
    firstObject2 = [v6 firstObject];
    firstObject = [UIImageSymbolConfiguration configurationWithHierarchicalColor:firstObject2];
  }

LABEL_11:

  return firstObject;
}

+ (id)tui_configurationWithPointSize:(double)size weight:(int64_t)weight scale:(int64_t)scale renderingMode:(unint64_t)mode colors:(id)colors
{
  colorsCopy = colors;
  v13 = [UIImageSymbolConfiguration configurationWithPointSize:weight weight:scale scale:size];
  v14 = [self tui_configurationWithRenderingMode:mode colors:colorsCopy];

  v15 = [v13 configurationByApplyingConfiguration:v14];

  return v15;
}

@end