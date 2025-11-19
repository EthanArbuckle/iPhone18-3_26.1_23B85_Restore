@interface AKUserInterfaceItemHelper
+ (int64_t)highlightAttributeTagFromHighlightToolTag:(int64_t)a3;
@end

@implementation AKUserInterfaceItemHelper

+ (int64_t)highlightAttributeTagFromHighlightToolTag:(int64_t)a3
{
  if ((a3 - 764051) >= 7)
  {
    return 0;
  }

  else
  {
    return a3 + 1149;
  }
}

@end