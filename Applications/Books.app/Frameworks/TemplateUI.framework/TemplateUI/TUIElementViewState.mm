@interface TUIElementViewState
+ (void)configureContainingBuilder:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
@end

@implementation TUIElementViewState

+ (void)configureContainingBuilder:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6
{
  v11 = a6;
  v8 = [a5 bindingNameForAttribute:36 node:a4.var0];
  v9 = v8;
  if (TUINameIsValid(v8))
  {
    v10 = [v11 viewStateForNode:a4.var0 binding:v9];
    [v11 defineBindingWithName:v9 value:v10];
  }
}

@end