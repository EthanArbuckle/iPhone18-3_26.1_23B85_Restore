@interface TUIElementViewState
+ (void)configureContainingBuilder:(id)builder withNode:(id)node attributes:(id)attributes context:(id)context;
@end

@implementation TUIElementViewState

+ (void)configureContainingBuilder:(id)builder withNode:(id)node attributes:(id)attributes context:(id)context
{
  contextCopy = context;
  v8 = [attributes bindingNameForAttribute:36 node:node.var0];
  v9 = v8;
  if (TUINameIsValid(v8))
  {
    v10 = [contextCopy viewStateForNode:node.var0 binding:v9];
    [contextCopy defineBindingWithName:v9 value:v10];
  }
}

@end