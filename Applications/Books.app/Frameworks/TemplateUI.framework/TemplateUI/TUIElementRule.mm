@interface TUIElementRule
+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context;
@end

@implementation TUIElementRule

+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context
{
  var0 = node.var0;
  attributesCopy = attributes;
  boxCopy = box;
  v10 = [attributesCopy colorForAttribute:51 node:var0];
  [boxCopy setColor:v10];

  v11 = [attributesCopy stringForAttribute:16 node:var0];

  [boxCopy setAxis:{+[TUIBox axisFromString:](TUIBox, "axisFromString:", v11)}];
}

@end