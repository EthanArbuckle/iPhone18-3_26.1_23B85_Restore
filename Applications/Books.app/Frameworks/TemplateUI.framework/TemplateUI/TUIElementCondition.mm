@interface TUIElementCondition
+ (void)configureContainingBuilder:(id)builder withNode:(id)node attributes:(id)attributes context:(id)context;
@end

@implementation TUIElementCondition

+ (void)configureContainingBuilder:(id)builder withNode:(id)node attributes:(id)attributes context:(id)context
{
  var0 = node.var0;
  contextCopy = context;
  attributesCopy = attributes;
  v9 = [attributesCopy letDefinitionWithNameAttribute:137 valueAttribute:45 node:var0];
  LODWORD(var0) = [attributesCopy closureForNode:var0];

  [contextCopy defineLet:v9 closure:var0];
}

@end