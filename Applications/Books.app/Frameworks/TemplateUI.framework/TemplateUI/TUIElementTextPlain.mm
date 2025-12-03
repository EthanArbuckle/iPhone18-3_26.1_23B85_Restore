@interface TUIElementTextPlain
+ (void)addObject:(id)object toContainingBuilder:(id)builder context:(id)context;
+ (void)configureObject:(id)object withNode:(id)node attributes:(id)attributes context:(id)context;
@end

@implementation TUIElementTextPlain

+ (void)configureObject:(id)object withNode:(id)node attributes:(id)attributes context:(id)context
{
  var0 = node.var0;
  objectCopy = object;
  v9 = [attributes stringForAttribute:178 node:var0];
  [objectCopy setRole:v9];
}

+ (void)addObject:(id)object toContainingBuilder:(id)builder context:(id)context
{
  builderCopy = builder;
  objectCopy = object;
  text = [objectCopy text];
  role = [objectCopy role];

  [builderCopy addText:text forRole:role];
}

@end