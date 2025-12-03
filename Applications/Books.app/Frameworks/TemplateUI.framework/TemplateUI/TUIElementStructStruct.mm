@interface TUIElementStructStruct
+ (id)attributesToIgnoreWhenResolving;
+ (id)builderWithNode:(id)node object:(id)object attributes:(id)attributes context:(id)context;
+ (void)addObject:(id)object toContainingBuilder:(id)builder context:(id)context;
@end

@implementation TUIElementStructStruct

+ (id)attributesToIgnoreWhenResolving
{
  if (qword_2E62A0 != -1)
  {
    sub_199E0C();
  }

  v3 = qword_2E6298;

  return v3;
}

+ (id)builderWithNode:(id)node object:(id)object attributes:(id)attributes context:(id)context
{
  attributesCopy = attributes;
  contextCopy = context;
  var0 = node.var0;
  LOWORD(node.var0) = [attributesCopy propertyNameForAttribute:137 node:node.var0];
  v11 = [attributesCopy closureForNode:var0];
  v12 = [attributesCopy structForAttribute:32 node:var0];
  v13 = [[_TUIElementStructStructBuilder alloc] initWithName:LOWORD(node.var0) closure:v11 basedOn:v12 context:contextCopy];

  return v13;
}

+ (void)addObject:(id)object toContainingBuilder:(id)builder context:(id)context
{
  objectCopy = object;
  builderCopy = builder;
  finalizeStruct = [objectCopy finalizeStruct];
  [builderCopy setStructValue:finalizeStruct forKey:{objc_msgSend(objectCopy, "name")}];
}

@end