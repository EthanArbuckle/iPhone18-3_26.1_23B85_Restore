@interface OrderLinkedAppViewIOS.Coordinator
- (_TtCV12FinanceKitUIP33_D9156154FF55601103FCE36B8FFE03E821OrderLinkedAppViewIOS11Coordinator)init;
- (void)appViewContentSizeChanged:(id)changed;
- (void)linkedApplicationDidChangeState:(id)state;
@end

@implementation OrderLinkedAppViewIOS.Coordinator

- (void)linkedApplicationDidChangeState:(id)state
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  stateCopy = state;
  selfCopy = self;
  sub_2385D645C(state);
}

- (void)appViewContentSizeChanged:(id)changed
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  changedCopy = changed;
  selfCopy = self;
  sub_2385D6C10(changedCopy);
}

- (_TtCV12FinanceKitUIP33_D9156154FF55601103FCE36B8FFE03E821OrderLinkedAppViewIOS11Coordinator)init
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