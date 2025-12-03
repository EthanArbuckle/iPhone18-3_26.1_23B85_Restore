@interface TUIElementStruct
+ (id)attributesToIgnoreWhenResolving;
+ (id)builderWithNode:(id)node object:(id)object attributes:(id)attributes context:(id)context;
+ (void)configureObject:(id)object withBuilder:(id)builder context:(id)context;
@end

@implementation TUIElementStruct

+ (id)attributesToIgnoreWhenResolving
{
  if (qword_2E6290 != -1)
  {
    sub_199DF8();
  }

  v3 = qword_2E6288;

  return v3;
}

+ (id)builderWithNode:(id)node object:(id)object attributes:(id)attributes context:(id)context
{
  attributesCopy = attributes;
  contextCopy = context;
  v10 = [attributesCopy constantNameForAttribute:137 node:node.var0];
  v11 = [attributesCopy closureForNode:node.var0];
  v12 = [attributesCopy structForAttribute:32 node:node.var0];
  v13 = [[_TUIElementStructBuilder alloc] initWithName:v10 closure:v11 basedOn:v12 context:contextCopy];

  return v13;
}

+ (void)configureObject:(id)object withBuilder:(id)builder context:(id)context
{
  builderCopy = builder;
  contextCopy = context;
  finalizeStruct = [builderCopy finalizeStruct];
  [contextCopy defineStruct:finalizeStruct withName:{objc_msgSend(builderCopy, "name")}];
}

@end