@interface TUIElementAnimationKeyFrame
+ (void)configureObject:(id)object withBuilder:(id)builder context:(id)context;
+ (void)configureObject:(id)object withNode:(id)node attributes:(id)attributes context:(id)context;
@end

@implementation TUIElementAnimationKeyFrame

+ (void)configureObject:(id)object withBuilder:(id)builder context:(id)context
{
  objectCopy = object;
  finalizeAnimationValues = [builder finalizeAnimationValues];
  [objectCopy setValues:finalizeAnimationValues];
}

+ (void)configureObject:(id)object withNode:(id)node attributes:(id)attributes context:(id)context
{
  objectCopy = object;
  attributesCopy = attributes;
  [attributesCopy floatForAttribute:200 withDefault:node.var0 node:0.0];
  [objectCopy setStartTime:?];
  [attributesCopy floatForAttribute:69 withDefault:node.var0 node:0.0];
  [objectCopy setDuration:?];
}

@end