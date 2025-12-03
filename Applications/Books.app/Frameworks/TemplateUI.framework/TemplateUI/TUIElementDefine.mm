@interface TUIElementDefine
+ (void)configureContainingBuilder:(id)builder withNode:(id)node attributes:(id)attributes context:(id)context;
@end

@implementation TUIElementDefine

+ (void)configureContainingBuilder:(id)builder withNode:(id)node attributes:(id)attributes context:(id)context
{
  var0 = node.var0;
  contextCopy = context;
  attributesCopy = attributes;
  v9 = [attributesCopy elementDefinitionWithNameAttribute:137 node:var0];
  LODWORD(var0) = [attributesCopy closureForNode:var0];

  [contextCopy defineElement:v9 closure:var0];
}

@end