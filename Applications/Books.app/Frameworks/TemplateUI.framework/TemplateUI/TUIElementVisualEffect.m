@interface TUIElementVisualEffect
+ (id)supportedAttributes;
+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
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

+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6
{
  var0 = a4.var0;
  v8 = a3;
  v9 = [a5 stringForAttribute:40 node:var0];
  [v8 setBlurStyle:{+[TUIVisualEffectBox blurEffectStyleFromString:](TUIVisualEffectBox, "blurEffectStyleFromString:", v9)}];
}

@end