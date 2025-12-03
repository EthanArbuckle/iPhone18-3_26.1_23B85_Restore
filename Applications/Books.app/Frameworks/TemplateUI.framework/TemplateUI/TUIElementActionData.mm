@interface TUIElementActionData
+ (void)addObject:(id)object toContainingBuilder:(id)builder context:(id)context;
+ (void)configureObject:(id)object withNode:(id)node attributes:(id)attributes context:(id)context;
@end

@implementation TUIElementActionData

+ (void)configureObject:(id)object withNode:(id)node attributes:(id)attributes context:(id)context
{
  var0 = node.var0;
  attributesCopy = attributes;
  objectCopy = object;
  v10 = [attributesCopy stringForAttribute:137 node:var0];
  [objectCopy setKey:v10];

  v11 = [attributesCopy objectForAttribute:217 node:var0];

  [objectCopy setValue:v11];
}

+ (void)addObject:(id)object toContainingBuilder:(id)builder context:(id)context
{
  objectCopy = object;
  builderCopy = builder;
  v7 = [objectCopy key];

  if (v7)
  {
    value = [objectCopy value];
    v9 = [objectCopy key];
    [builderCopy setActionData:value forKey:v9];
  }
}

@end