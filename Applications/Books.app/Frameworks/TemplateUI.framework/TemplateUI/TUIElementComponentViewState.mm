@interface TUIElementComponentViewState
+ (void)configureContainingBuilder:(id)builder withNode:(id)node attributes:(id)attributes context:(id)context;
@end

@implementation TUIElementComponentViewState

+ (void)configureContainingBuilder:(id)builder withNode:(id)node attributes:(id)attributes context:(id)context
{
  contextCopy = context;
  v8 = [attributes bindingNameForAttribute:137 node:node.var0];
  v9 = v8;
  if (TUINameIsValid(v8))
  {
    v10 = [contextCopy componentViewStateWithName:v9];
    [contextCopy defineComponentBindingWithName:v9 value:v10];
  }
}

@end