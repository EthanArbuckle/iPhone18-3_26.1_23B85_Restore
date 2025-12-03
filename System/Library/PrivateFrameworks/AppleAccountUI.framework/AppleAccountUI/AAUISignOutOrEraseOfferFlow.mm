@interface AAUISignOutOrEraseOfferFlow
- (AAUISignOutOrEraseOfferFlow)initWithNavController:(id)controller presentingController:(id)presentingController account:(id)account dataclassActionsStore:(id)store;
- (void)beginFlowWithInvoker:(id)invoker;
@end

@implementation AAUISignOutOrEraseOfferFlow

- (AAUISignOutOrEraseOfferFlow)initWithNavController:(id)controller presentingController:(id)presentingController account:(id)account dataclassActionsStore:(id)store
{
  MEMORY[0x1E69E5928](controller);
  MEMORY[0x1E69E5928](presentingController);
  MEMORY[0x1E69E5928](account);
  MEMORY[0x1E69E5928](store);
  return SignOutOrEraseOfferFlow.init(navController:presentingController:account:dataclassActionsStore:)(controller, presentingController, account, store);
}

- (void)beginFlowWithInvoker:(id)invoker
{
  swift_unknownObjectRetain();
  MEMORY[0x1E69E5928](self);
  sub_1C5579AE8(invoker);
  MEMORY[0x1E69E5920](self);
  swift_unknownObjectRelease();
}

@end