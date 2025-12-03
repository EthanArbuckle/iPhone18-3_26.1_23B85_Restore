@interface TUIElementLinkEntity
+ (void)addObject:(id)object toContainingBuilder:(id)builder context:(id)context;
+ (void)configureObject:(id)object withNode:(id)node attributes:(id)attributes context:(id)context;
@end

@implementation TUIElementLinkEntity

+ (void)configureObject:(id)object withNode:(id)node attributes:(id)attributes context:(id)context
{
  var0 = node.var0;
  attributesCopy = attributes;
  objectCopy = object;
  v10 = [attributesCopy stringForAttribute:214 node:var0];
  [objectCopy setType:v10];

  v11 = [attributesCopy stringForAttribute:104 node:var0];
  [objectCopy setIdentifier:v11];

  v12 = [attributesCopy stringForAttribute:206 node:var0];

  [objectCopy setTitle:v12];
}

+ (void)addObject:(id)object toContainingBuilder:(id)builder context:(id)context
{
  builderCopy = builder;
  v7 = [object finalizeLinkEntityWithContext:context];
  if (v7)
  {
    [builderCopy addLinkEntity:v7];
  }
}

@end