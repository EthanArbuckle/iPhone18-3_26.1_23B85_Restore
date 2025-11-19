@interface BSUIElementFamilyProfileImage
+ (id)supportedAttributes;
+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
@end

@implementation BSUIElementFamilyProfileImage

+ (id)supportedAttributes
{
  if (qword_3CA6B0 != -1)
  {
    sub_2BCD8C();
  }

  v3 = qword_3CA6A8;

  return v3;
}

+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6
{
  var0 = a4.var0;
  v8 = a5;
  v9 = a3;
  [v8 floatForAttribute:60 node:var0];
  [v9 setCornerRadius:?];
  v10 = [v8 stringForAttribute:215 node:var0];

  [v9 setUrlString:v10];
}

@end