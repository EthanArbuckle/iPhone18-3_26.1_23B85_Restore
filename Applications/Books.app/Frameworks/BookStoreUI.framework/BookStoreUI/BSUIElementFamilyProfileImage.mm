@interface BSUIElementFamilyProfileImage
+ (id)supportedAttributes;
+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context;
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

+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context
{
  var0 = node.var0;
  attributesCopy = attributes;
  boxCopy = box;
  [attributesCopy floatForAttribute:60 node:var0];
  [boxCopy setCornerRadius:?];
  v10 = [attributesCopy stringForAttribute:215 node:var0];

  [boxCopy setUrlString:v10];
}

@end