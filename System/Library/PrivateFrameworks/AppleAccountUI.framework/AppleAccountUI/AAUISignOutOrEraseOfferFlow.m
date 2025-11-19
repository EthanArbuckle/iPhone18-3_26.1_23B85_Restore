@interface AAUISignOutOrEraseOfferFlow
- (AAUISignOutOrEraseOfferFlow)initWithNavController:(id)a3 presentingController:(id)a4 account:(id)a5 dataclassActionsStore:(id)a6;
- (void)beginFlowWithInvoker:(id)a3;
@end

@implementation AAUISignOutOrEraseOfferFlow

- (AAUISignOutOrEraseOfferFlow)initWithNavController:(id)a3 presentingController:(id)a4 account:(id)a5 dataclassActionsStore:(id)a6
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](a4);
  MEMORY[0x1E69E5928](a5);
  MEMORY[0x1E69E5928](a6);
  return SignOutOrEraseOfferFlow.init(navController:presentingController:account:dataclassActionsStore:)(a3, a4, a5, a6);
}

- (void)beginFlowWithInvoker:(id)a3
{
  swift_unknownObjectRetain();
  MEMORY[0x1E69E5928](self);
  sub_1C5579AE8(a3);
  MEMORY[0x1E69E5920](self);
  swift_unknownObjectRelease();
}

@end