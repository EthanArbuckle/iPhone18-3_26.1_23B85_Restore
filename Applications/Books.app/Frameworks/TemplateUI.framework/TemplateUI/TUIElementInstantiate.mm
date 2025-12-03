@interface TUIElementInstantiate
+ (id)containerAttributes;
+ (void)configureContainingBuilder:(id)builder withNode:(id)node attributes:(id)attributes context:(id)context;
@end

@implementation TUIElementInstantiate

+ (id)containerAttributes
{
  if (qword_2E6060 != -1)
  {
    sub_1999E8();
  }

  v3 = qword_2E6058;

  return v3;
}

+ (void)configureContainingBuilder:(id)builder withNode:(id)node attributes:(id)attributes context:(id)context
{
  builderCopy = builder;
  attributesCopy = attributes;
  contextCopy = context;
  v11 = [attributesCopy nameReferenceForAttribute:137 node:node.var0];
  v12 = objc_autoreleasePoolPush();
  [contextCopy instantiateElementReference:v11 withChildrenOfNode:node.var0];
  objc_autoreleasePoolPop(v12);
}

@end