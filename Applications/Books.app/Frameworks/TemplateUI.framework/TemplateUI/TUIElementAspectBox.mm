@interface TUIElementAspectBox
+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context;
+ (void)configureChildBox:(id)box withChildNode:(id)node attributes:(id)attributes builder:(id)builder context:(id)context;
@end

@implementation TUIElementAspectBox

+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context
{
  var0 = node.var0;
  boxCopy = box;
  [attributes floatForAttribute:13 withDefault:var0 node:1.0];
  [boxCopy setAspectRatio:?];
}

+ (void)configureChildBox:(id)box withChildNode:(id)node attributes:(id)attributes builder:(id)builder context:(id)context
{
  var0 = node.var0;
  attributesCopy = attributes;
  boxCopy = box;
  v11 = [attributesCopy stringForAttribute:96 node:var0];
  [boxCopy setHalign:{+[TUIBox halignFromString:](TUIBox, "halignFromString:", v11)}];

  v12 = [attributesCopy stringForAttribute:218 node:var0];

  [boxCopy setValign:{+[TUIBox valignFromString:](TUIBox, "valignFromString:", v12)}];
}

@end