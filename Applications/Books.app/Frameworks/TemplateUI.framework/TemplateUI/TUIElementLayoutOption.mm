@interface TUIElementLayoutOption
+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context;
@end

@implementation TUIElementLayoutOption

+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context
{
  var0 = node.var0;
  attributesCopy = attributes;
  boxCopy = box;
  [attributesCopy floatForAttribute:135 withDefault:var0 node:NAN];
  [boxCopy setMinScale:?];
  [attributesCopy floatForAttribute:131 withDefault:var0 node:NAN];
  v10 = v9;

  [boxCopy setMaxScale:v10];
}

@end