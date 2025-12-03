@interface TUIElementHFade
+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context;
@end

@implementation TUIElementHFade

+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context
{
  var0 = node.var0;
  attributesCopy = attributes;
  boxCopy = box;
  [attributesCopy floatForAttribute:147 node:var0];
  [boxCopy setPadding:?];
  [attributesCopy floatForAttribute:90 node:var0];
  v10 = v9;

  [boxCopy setGradientWidth:v10];
}

@end