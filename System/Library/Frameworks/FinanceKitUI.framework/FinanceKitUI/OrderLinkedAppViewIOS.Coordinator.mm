@interface OrderLinkedAppViewIOS.Coordinator
- (_TtCV12FinanceKitUIP33_D9156154FF55601103FCE36B8FFE03E821OrderLinkedAppViewIOS11Coordinator)init;
- (void)appViewContentSizeChanged:(id)a3;
- (void)linkedApplicationDidChangeState:(id)a3;
@end

@implementation OrderLinkedAppViewIOS.Coordinator

- (void)linkedApplicationDidChangeState:(id)a3
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a3;
  v6 = self;
  sub_2385D645C(a3);
}

- (void)appViewContentSizeChanged:(id)a3
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a3;
  v6 = self;
  sub_2385D6C10(v5);
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