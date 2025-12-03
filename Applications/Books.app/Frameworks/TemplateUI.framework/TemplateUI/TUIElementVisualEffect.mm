@interface TUIElementVisualEffect
+ (id)supportedAttributes;
+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context;
@end

@implementation TUIElementVisualEffect

+ (id)supportedAttributes
{
  if (qword_2E63F8 != -1)
  {
    sub_19B0F0();
  }

  v3 = qword_2E63F0;

  return v3;
}

+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context
{
  var0 = node.var0;
  boxCopy = box;
  v9 = [attributes stringForAttribute:40 node:var0];
  [boxCopy setBlurStyle:{+[TUIVisualEffectBox blurEffectStyleFromString:](TUIVisualEffectBox, "blurEffectStyleFromString:", v9)}];
}

@end