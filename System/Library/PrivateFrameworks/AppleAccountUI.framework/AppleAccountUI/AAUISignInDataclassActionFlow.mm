@interface AAUISignInDataclassActionFlow
- (AAUISignInDataclassActionFlow)initWithNavController:(id)controller account:(id)account dataclassActionsStore:(id)store;
- (void)beginFlowWithInvoker:(id)invoker;
@end

@implementation AAUISignInDataclassActionFlow

- (AAUISignInDataclassActionFlow)initWithNavController:(id)controller account:(id)account dataclassActionsStore:(id)store
{
  MEMORY[0x1E69E5928](controller);
  MEMORY[0x1E69E5928](account);
  MEMORY[0x1E69E5928](store);
  return SignInDataclassActionFlow.init(navController:account:dataclassActionsStore:)(controller, account, store);
}

- (void)beginFlowWithInvoker:(id)invoker
{
  swift_unknownObjectRetain();
  MEMORY[0x1E69E5928](self);
  sub_1C55331A4(invoker);
  MEMORY[0x1E69E5920](self);
  swift_unknownObjectRelease();
}

@end