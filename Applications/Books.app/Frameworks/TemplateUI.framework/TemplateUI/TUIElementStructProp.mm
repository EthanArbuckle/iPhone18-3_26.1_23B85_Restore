@interface TUIElementStructProp
+ (id)attributesToEvaluate;
+ (void)configureContainingBuilder:(id)builder withNode:(id)node attributes:(id)attributes context:(id)context;
@end

@implementation TUIElementStructProp

+ (id)attributesToEvaluate
{
  if (qword_2E62B0 != -1)
  {
    sub_199E20();
  }

  v3 = qword_2E62A8;

  return v3;
}

+ (void)configureContainingBuilder:(id)builder withNode:(id)node attributes:(id)attributes context:(id)context
{
  builderCopy = builder;
  attributesCopy = attributes;
  [builderCopy setValue:objc_msgSend(attributesCopy forKey:{"unresolvedValueForAttribute:node:", 217, node.var0), objc_msgSend(attributesCopy, "propertyNameForAttribute:node:", 137, node.var0)}];
}

@end