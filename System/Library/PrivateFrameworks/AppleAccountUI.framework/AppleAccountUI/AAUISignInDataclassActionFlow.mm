@interface AAUISignInDataclassActionFlow
- (AAUISignInDataclassActionFlow)initWithNavController:(id)a3 account:(id)a4 dataclassActionsStore:(id)a5;
- (void)beginFlowWithInvoker:(id)a3;
@end

@implementation AAUISignInDataclassActionFlow

- (AAUISignInDataclassActionFlow)initWithNavController:(id)a3 account:(id)a4 dataclassActionsStore:(id)a5
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](a4);
  MEMORY[0x1E69E5928](a5);
  return SignInDataclassActionFlow.init(navController:account:dataclassActionsStore:)(a3, a4, a5);
}

- (void)beginFlowWithInvoker:(id)a3
{
  swift_unknownObjectRetain();
  MEMORY[0x1E69E5928](self);
  sub_1C55331A4(a3);
  MEMORY[0x1E69E5920](self);
  swift_unknownObjectRelease();
}

@end