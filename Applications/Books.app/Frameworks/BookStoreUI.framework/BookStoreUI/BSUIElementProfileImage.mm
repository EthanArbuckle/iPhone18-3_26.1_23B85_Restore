@interface BSUIElementProfileImage
+ (id)supportedAttributes;
+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context;
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

+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context
{
  var0 = node.var0;
  attributesCopy = attributes;
  boxCopy = box;
  [attributesCopy floatForAttribute:60 node:var0];
  [boxCopy setCornerRadius:?];
  v10 = [attributesCopy colorForAttribute:126 node:var0];

  [boxCopy setMaskColor:v10];
}

@end