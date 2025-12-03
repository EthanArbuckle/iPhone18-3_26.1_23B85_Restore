@interface AKUserInterfaceItemHelper
+ (int64_t)highlightAttributeTagFromHighlightToolTag:(int64_t)tag;
@end

@implementation AKUserInterfaceItemHelper

+ (int64_t)highlightAttributeTagFromHighlightToolTag:(int64_t)tag
{
  if ((tag - 764051) >= 7)
  {
    return 0;
  }

  else
  {
    return tag + 1149;
  }
}

@end