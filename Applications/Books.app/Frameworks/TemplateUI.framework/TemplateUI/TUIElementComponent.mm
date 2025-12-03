@interface TUIElementComponent
+ (id)attributesToIgnoreWhenResolving;
+ (id)containerAttributes;
+ (void)configureObject:(id)object withNode:(id)node attributes:(id)attributes context:(id)context;
+ (void)instantiateNode:(id)node withObject:(id)object context:(id)context;
@end

@implementation TUIElementComponent

+ (id)containerAttributes
{
  if (qword_2E6388 != -1)
  {
    sub_19A97C();
  }

  v3 = qword_2E6380;

  return v3;
}

+ (id)attributesToIgnoreWhenResolving
{
  if (qword_2E6398 != -1)
  {
    sub_19A990();
  }

  v3 = qword_2E6390;

  return v3;
}

+ (void)configureObject:(id)object withNode:(id)node attributes:(id)attributes context:(id)context
{
  var0 = node.var0;
  objectCopy = object;
  [objectCopy setNameReference:{objc_msgSend(attributes, "nameReferenceForAttribute:node:", 137, var0)}];
}

+ (void)instantiateNode:(id)node withObject:(id)object context:(id)context
{
  contextCopy = context;
  [contextCopy instantiateComponentWithReference:objc_msgSend(object withChildrenOfNode:{"nameReference"), node.var0}];
}

@end