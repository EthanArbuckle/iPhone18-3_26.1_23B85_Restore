@interface BSUIElementProfileImage
+ (id)supportedAttributes;
+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
@end

@implementation BSUIElementProfileImage

+ (id)supportedAttributes
{
  if (qword_3CA7C8 != -1)
  {
    sub_2BD97C();
  }

  v3 = qword_3CA7C0;

  return v3;
}

+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6
{
  var0 = a4.var0;
  v8 = a5;
  v9 = a3;
  [v8 floatForAttribute:60 node:var0];
  [v9 setCornerRadius:?];
  v10 = [v8 colorForAttribute:126 node:var0];

  [v9 setMaskColor:v10];
}

@end