@interface TUIElementVBox
+ (id)containerAttributes;
+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context;
+ (void)configureChildBox:(id)box withChildNode:(id)node attributes:(id)attributes builder:(id)builder context:(id)context;
+ (void)configureObject:(id)object withBuilder:(id)builder context:(id)context;
@end

@implementation TUIElementVBox

+ (id)containerAttributes
{
  if (qword_2E6100 != -1)
  {
    sub_199B98();
  }

  v3 = qword_2E60F8;

  return v3;
}

+ (void)configureChildBox:(id)box withChildNode:(id)node attributes:(id)attributes builder:(id)builder context:(id)context
{
  boxCopy = box;
  attributesCopy = attributes;
  builderCopy = builder;
  var0 = node.var0;
  v13 = [attributesCopy stringForAttribute:221 node:node.var0];
  if ([v13 isEqualToString:@"baseline"])
  {
    [builderCopy setPivotChild:boxCopy];
  }

  v14 = [attributesCopy stringForAttribute:219 node:var0];
  [boxCopy setVcompressed:{+[TUIBox compressedFromString:](TUIBox, "compressedFromString:", v14)}];

  dynamicArrayWindowingBox = [boxCopy dynamicArrayWindowingBox];
  if (dynamicArrayWindowingBox)
  {
    [attributesCopy floatForAttribute:79 node:var0];
    [dynamicArrayWindowingBox setEstimatedWidth:?];
    [attributesCopy floatForAttribute:77 node:var0];
    [dynamicArrayWindowingBox setEstimatedHeight:?];
  }
}

+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context
{
  var0 = node.var0;
  boxCopy = box;
  [boxCopy setGrouped:{objc_msgSend(attributes, "BOOLForAttribute:node:", 93, var0)}];
}

+ (void)configureObject:(id)object withBuilder:(id)builder context:(id)context
{
  builderCopy = builder;
  objectCopy = object;
  v9 = [builderCopy finalizeModelsWithParent:objectCopy box:objectCopy context:context];
  pivotChild = [builderCopy pivotChild];

  [objectCopy setPivotChild:pivotChild];
}

@end