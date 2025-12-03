@interface TUIElementTemplate
+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context;
+ (void)instantiateChildrenOfNode:(id)node object:(id)object builder:(id)builder context:(id)context block:(id)block;
@end

@implementation TUIElementTemplate

+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context
{
  boxCopy = box;
  entry = [context entry];
  [boxCopy setEntry:entry];
}

+ (void)instantiateChildrenOfNode:(id)node object:(id)object builder:(id)builder context:(id)context block:(id)block
{
  contextCopy = context;
  builderCopy = builder;
  objectCopy = object;
  entry = [objectCopy entry];
  v12 = [contextCopy updateWithEntry:entry withBuilder:builderCopy environmentContainer:objectCopy];

  [objectCopy setDirectEnvironmentUseMask:v12];
}

@end