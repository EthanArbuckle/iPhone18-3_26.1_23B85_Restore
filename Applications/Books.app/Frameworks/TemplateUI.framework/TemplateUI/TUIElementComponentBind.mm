@interface TUIElementComponentBind
+ (id)attributesToIgnoreWhenResolving;
+ (void)configureContainingBuilder:(id)builder withNode:(id)node attributes:(id)attributes context:(id)context;
@end

@implementation TUIElementComponentBind

+ (id)attributesToIgnoreWhenResolving
{
  if (qword_2E63A8 != -1)
  {
    sub_19A9A4();
  }

  v3 = qword_2E63A0;

  return v3;
}

+ (void)configureContainingBuilder:(id)builder withNode:(id)node attributes:(id)attributes context:(id)context
{
  var0 = node.var0;
  contextCopy = context;
  attributesCopy = attributes;
  v10 = [attributesCopy bindingNameForAttribute:137 node:var0];
  v11 = [attributesCopy objectForAttribute:217 node:var0];

  [contextCopy defineComponentBindingWithName:v10 value:v11];
}

@end