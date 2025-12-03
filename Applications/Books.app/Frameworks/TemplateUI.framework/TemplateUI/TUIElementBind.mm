@interface TUIElementBind
+ (id)attributesToIgnoreWhenResolving;
+ (id)supportedAttributes;
+ (void)configureObject:(id)object withNode:(id)node attributes:(id)attributes context:(id)context;
+ (void)instantiateChildrenOfNode:(id)node object:(id)object containingBuilder:(id)builder context:(id)context block:(id)block;
@end

@implementation TUIElementBind

+ (id)supportedAttributes
{
  if (qword_2E6900 != -1)
  {
    sub_19C228();
  }

  v3 = qword_2E68F8;

  return v3;
}

+ (void)configureObject:(id)object withNode:(id)node attributes:(id)attributes context:(id)context
{
  var0 = node.var0;
  attributesCopy = attributes;
  objectCopy = object;
  [objectCopy setSelect:{objc_msgSend(attributesCopy, "enumeratorWithAttribute:node:", 185, var0)}];
  v10 = [attributesCopy unsignedIntegerForAttribute:85 withDefault:0x7FFFFFFFFFFFFFFFLL node:var0];
  v11 = [attributesCopy unsignedIntegerForAttribute:83 withDefault:0x7FFFFFFFFFFFFFFFLL node:var0];
  v12 = [attributesCopy unsignedIntegerForAttribute:82 withDefault:0x7FFFFFFFFFFFFFFFLL node:var0];
  v13 = [attributesCopy unsignedIntegerForAttribute:84 withDefault:0x7FFFFFFFFFFFFFFFLL node:var0];
  LODWORD(var0) = [attributesCopy unconditionalValueForAttribute:70 node:var0];

  v14 = [TUIDynamicInstantiateOptions optionsWithFetchWindow:v10 fetchInitial:v11 fetchDelta:v12 fetchPadding:v13 uniqueID:var0];
  [objectCopy setOptions:v14];
}

+ (id)attributesToIgnoreWhenResolving
{
  if (qword_2E6910 != -1)
  {
    sub_19C23C();
  }

  v3 = qword_2E6908;

  return v3;
}

+ (void)instantiateChildrenOfNode:(id)node object:(id)object containingBuilder:(id)builder context:(id)context block:(id)block
{
  builderCopy = builder;
  contextCopy = context;
  objectCopy = object;
  LODWORD(object) = [objectCopy select];
  options = [objectCopy options];

  v13 = [contextCopy instantiateEnumerator:object withChildrenOfNode:node.var0 options:options];

  if (v13)
  {
    [builderCopy addModel:v13];
  }
}

@end