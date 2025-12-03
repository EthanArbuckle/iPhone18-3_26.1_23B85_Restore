@interface TUIElementComponentDynamicState
+ (id)attributesToIgnoreWhenResolving;
+ (void)configureContainingBuilder:(id)builder withNode:(id)node attributes:(id)attributes context:(id)context;
@end

@implementation TUIElementComponentDynamicState

+ (id)attributesToIgnoreWhenResolving
{
  if (qword_2E63B8 != -1)
  {
    sub_19A9B8();
  }

  v3 = qword_2E63B0;

  return v3;
}

+ (void)configureContainingBuilder:(id)builder withNode:(id)node attributes:(id)attributes context:(id)context
{
  var0 = node.var0;
  contextCopy = context;
  attributesCopy = attributes;
  v10 = [attributesCopy bindingNameForAttribute:137 node:var0];
  v14 = [attributesCopy stringForAttribute:116 node:var0];
  v11 = [attributesCopy objectForAttribute:113 node:var0];
  v12 = [attributesCopy objectForAttribute:150 node:var0];

  v13 = [contextCopy dynamicStateForKind:v14 instance:v11 parameters:v12];
  [contextCopy defineComponentBindingWithName:v10 value:v13];
}

@end