@interface TUIElementButtonCustomContent
+ (void)addObject:(id)object toContainingBuilder:(id)builder context:(id)context;
+ (void)configureObject:(id)object withBuilder:(id)builder context:(id)context;
@end

@implementation TUIElementButtonCustomContent

+ (void)configureObject:(id)object withBuilder:(id)builder context:(id)context
{
  objectCopy = object;
  contextCopy = context;
  v8 = [builder finalizeModelsWithParent:0 box:0 context:contextCopy];
  if ([v8 count] == &dword_0 + 1)
  {
    firstObject = [v8 firstObject];
    [objectCopy setModel:firstObject];
  }

  else
  {
    [contextCopy reportError:1021];
  }
}

+ (void)addObject:(id)object toContainingBuilder:(id)builder context:(id)context
{
  objectCopy = object;
  builderCopy = builder;
  model = [objectCopy model];

  if (model)
  {
    model2 = [objectCopy model];
    [builderCopy addContentModel:model2];
  }
}

@end