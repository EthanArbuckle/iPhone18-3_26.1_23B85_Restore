@interface TUIElementGrid
+ (id)supportedAttributes;
+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context;
@end

@implementation TUIElementGrid

+ (id)supportedAttributes
{
  if (qword_2E65A8 != -1)
  {
    sub_19BC54();
  }

  v3 = qword_2E65A0;

  return v3;
}

+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context
{
  var0 = node.var0;
  attributesCopy = attributes;
  boxCopy = box;
  [attributesCopy insetsForAttribute:112 node:var0];
  [boxCopy setInsets:?];
  [boxCopy setColumns:{fmax(objc_msgSend(attributesCopy, "integerForAttribute:withDefault:node:", 52, 1, var0), 1.0)}];
  [attributesCopy floatForAttribute:195 node:var0];
  v10 = v9;

  [boxCopy setSpacing:v10];
}

@end