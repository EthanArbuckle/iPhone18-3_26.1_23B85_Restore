@interface TUIElementAXActions
+ (void)addObject:(id)object toContainingBuilder:(id)builder context:(id)context;
@end

@implementation TUIElementAXActions

+ (void)addObject:(id)object toContainingBuilder:(id)builder context:(id)context
{
  builderCopy = builder;
  finalizeAXActions = [object finalizeAXActions];
  [builderCopy setAXActions:finalizeAXActions];
}

@end