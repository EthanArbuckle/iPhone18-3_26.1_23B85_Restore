@interface TUIElementAnimationGroup
+ (id)supportedAttributes;
+ (void)addObject:(id)object toContainingBuilder:(id)builder context:(id)context;
+ (void)configureObject:(id)object withNode:(id)node attributes:(id)attributes context:(id)context;
@end

@implementation TUIElementAnimationGroup

+ (id)supportedAttributes
{
  if (qword_2E64F0 != -1)
  {
    sub_19B6C0();
  }

  v3 = qword_2E64E8;

  return v3;
}

+ (void)configureObject:(id)object withNode:(id)node attributes:(id)attributes context:(id)context
{
  objectCopy = object;
  v8 = [attributes stringForAttribute:138 node:node.var0];
  [objectCopy setGroupName:v8];

  groupName = [objectCopy groupName];
  v10 = [groupName length];

  if (!v10)
  {
    [objectCopy setGroupName:@"default"];
  }
}

+ (void)addObject:(id)object toContainingBuilder:(id)builder context:(id)context
{
  builderCopy = builder;
  objectCopy = object;
  finalizeAnimationGroup = [objectCopy finalizeAnimationGroup];
  groupName = [objectCopy groupName];

  [builderCopy addAnimationGroup:finalizeAnimationGroup withName:groupName];
}

@end