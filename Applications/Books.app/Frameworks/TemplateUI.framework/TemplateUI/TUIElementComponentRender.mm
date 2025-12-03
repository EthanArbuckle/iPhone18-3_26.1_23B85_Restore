@interface TUIElementComponentRender
+ (id)attributesToIgnoreWhenResolving;
+ (id)containerAttributes;
+ (void)configureObject:(id)object withNode:(id)node attributes:(id)attributes context:(id)context;
+ (void)instantiateNode:(id)node withObject:(id)object context:(id)context;
@end

@implementation TUIElementComponentRender

+ (id)containerAttributes
{
  if (qword_2E63C8 != -1)
  {
    sub_19A9CC();
  }

  v3 = qword_2E63C0;

  return v3;
}

+ (id)attributesToIgnoreWhenResolving
{
  if (qword_2E63D8 != -1)
  {
    sub_19A9E0();
  }

  v3 = qword_2E63D0;

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
  objectCopy = object;
  contextCopy = context;
  nameReference = [objectCopy nameReference];
  v9 = objc_autoreleasePoolPush();
  [contextCopy instantiateRender:nameReference withChildrenOfNode:node.var0];
  objc_autoreleasePoolPop(v9);
}

@end