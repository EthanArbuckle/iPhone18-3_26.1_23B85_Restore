@interface _CloseButton.Coordinator
- (_TtCV12FinanceKitUIP33_749EBBE7CDDBA07A8878912459ED339212_CloseButton11Coordinator)init;
- (void)doAction:(id)action;
@end

@implementation _CloseButton.Coordinator

- (void)doAction:(id)action
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_unknownObjectRetain();
  selfCopy = self;
  sub_23875F2E0();
  swift_unknownObjectRelease();
  v6 = *(&selfCopy->super.isa + OBJC_IVAR____TtCV12FinanceKitUIP33_749EBBE7CDDBA07A8878912459ED339212_CloseButton11Coordinator_configuration);
  v5 = *&selfCopy->configuration[OBJC_IVAR____TtCV12FinanceKitUIP33_749EBBE7CDDBA07A8878912459ED339212_CloseButton11Coordinator_configuration];

  v6(v7);

  __swift_destroy_boxed_opaque_existential_1(v8);
}

- (_TtCV12FinanceKitUIP33_749EBBE7CDDBA07A8878912459ED339212_CloseButton11Coordinator)init
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