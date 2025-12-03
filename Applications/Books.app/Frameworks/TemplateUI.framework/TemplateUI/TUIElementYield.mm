@interface TUIElementYield
+ (void)configureContainingBuilder:(id)builder withNode:(id)node attributes:(id)attributes context:(id)context;
@end

@implementation TUIElementYield

+ (void)configureContainingBuilder:(id)builder withNode:(id)node attributes:(id)attributes context:(id)context
{
  builderCopy = builder;
  attributesCopy = attributes;
  contextCopy = context;
  v11 = [attributesCopy elementReferenceForAttribute:149 node:node.var0];
  v12 = objc_autoreleasePoolPush();
  [contextCopy instantiateNamedElementReference:v11];
  objc_autoreleasePoolPop(v12);
}

@end