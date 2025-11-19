@interface BCResources
+ (id)iconTextPopupHighlightUnderline;
@end

@implementation BCResources

+ (id)iconTextPopupHighlightUnderline
{
  v2 = IMCommonCoreBundle();
  v3 = [UIImage imageNamed:@"ib_text_pop_icon_highlight_underline" inBundle:v2];

  return v3;
}

@end