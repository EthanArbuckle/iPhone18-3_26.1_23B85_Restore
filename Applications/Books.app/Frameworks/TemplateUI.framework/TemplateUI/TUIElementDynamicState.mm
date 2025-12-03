@interface TUIElementDynamicState
+ (id)attributesToIgnoreWhenResolving;
+ (id)builderProtocols;
+ (id)supportedAttributes;
+ (void)configureObject:(id)object withNode:(id)node attributes:(id)attributes context:(id)context;
+ (void)instantiateChildrenOfNode:(id)node object:(id)object containingBuilder:(id)builder context:(id)context block:(id)block;
@end

@implementation TUIElementDynamicState

+ (id)supportedAttributes
{
  if (qword_2E60B0 != -1)
  {
    sub_199A4C();
  }

  v3 = qword_2E60A8;

  return v3;
}

+ (id)builderProtocols
{
  v4 = &OBJC_PROTOCOL___TUIBoxBuilding;
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

+ (id)attributesToIgnoreWhenResolving
{
  if (qword_2E60C0 != -1)
  {
    sub_199A60();
  }

  v3 = qword_2E60B8;

  return v3;
}

+ (void)configureObject:(id)object withNode:(id)node attributes:(id)attributes context:(id)context
{
  var0 = node.var0;
  attributesCopy = attributes;
  objectCopy = object;
  [objectCopy setBinding:{objc_msgSend(attributesCopy, "bindingNameForAttribute:node:", 36, var0)}];
  v10 = [attributesCopy stringForAttribute:116 node:var0];
  [objectCopy setKind:v10];

  v11 = [attributesCopy objectForAttribute:113 node:var0];
  [objectCopy setInstance:v11];

  v12 = [attributesCopy objectForAttribute:150 node:var0];

  [objectCopy setParameters:v12];
}

+ (void)instantiateChildrenOfNode:(id)node object:(id)object containingBuilder:(id)builder context:(id)context block:(id)block
{
  builderCopy = builder;
  contextCopy = context;
  objectCopy = object;
  kind = [objectCopy kind];
  instance = [objectCopy instance];
  parameters = [objectCopy parameters];
  v15 = [contextCopy dynamicStateForKind:kind instance:instance parameters:parameters];

  LODWORD(kind) = [objectCopy binding];
  v16 = [contextCopy instantiateBinding:kind withDynamicProvider:v15 childrenOfNode:node.var0];

  if (v16)
  {
    [builderCopy addModel:v16];
  }
}

@end