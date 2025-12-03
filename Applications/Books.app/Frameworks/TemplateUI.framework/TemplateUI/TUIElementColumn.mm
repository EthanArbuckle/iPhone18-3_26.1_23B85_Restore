@interface TUIElementColumn
+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context;
@end

@implementation TUIElementColumn

+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context
{
  var0 = node.var0;
  attributesCopy = attributes;
  boxCopy = box;
  v9 = [attributesCopy objectForAttribute:55 node:var0];
  [boxCopy setColumnSpan:v9];

  [attributesCopy floatForAttribute:57 withDefault:var0 node:NAN];
  v11 = v10;

  [boxCopy setContainerFraction:v11];
}

@end