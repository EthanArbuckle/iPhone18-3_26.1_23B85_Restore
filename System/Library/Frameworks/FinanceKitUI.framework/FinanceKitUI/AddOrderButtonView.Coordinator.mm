@interface AddOrderButtonView.Coordinator
- (_TtCV12FinanceKitUI18AddOrderButtonView11Coordinator)init;
- (void)callback;
@end

@implementation AddOrderButtonView.Coordinator

- (void)callback
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(&self->super.isa + OBJC_IVAR____TtCV12FinanceKitUI18AddOrderButtonView11Coordinator_action);
  v3 = *&self->action[OBJC_IVAR____TtCV12FinanceKitUI18AddOrderButtonView11Coordinator_action];
  selfCopy = self;

  v4(v5);
}

- (_TtCV12FinanceKitUI18AddOrderButtonView11Coordinator)init
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end