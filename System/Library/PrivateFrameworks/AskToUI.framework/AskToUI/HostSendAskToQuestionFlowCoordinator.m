@interface HostSendAskToQuestionFlowCoordinator
- (_TtC7AskToUI36HostSendAskToQuestionFlowCoordinator)init;
- (void)dismissWithPropagatingError:(id)a3 reply:(id)a4;
- (void)hostViewControllerDidActivate:(id)a3;
- (void)hostViewControllerWillDeactivate:(id)a3 error:(id)a4;
@end

@implementation HostSendAskToQuestionFlowCoordinator

- (_TtC7AskToUI36HostSendAskToQuestionFlowCoordinator)init
{
  sub_2411ABDA8();
  sub_2411ABD98();
  sub_2411ABD48();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)hostViewControllerDidActivate:(id)a3
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533D40, &qword_2411ACDE0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  sub_2411ABDA8();
  sub_2411ABD98();
  v8 = MEMORY[0x277D85700];
  sub_2411ABD48();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = self;
  sub_241193CF4();
  v10 = sub_2411ABDD8();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = v9;
  v12 = sub_2411ABD98();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = v8;
  v13[4] = v11;
  sub_241192B80(0, 0, v7, &unk_2411AD740, v13);
}

- (void)hostViewControllerWillDeactivate:(id)a3 error:(id)a4
{
  sub_2411ABDA8();
  sub_2411ABD98();
  sub_2411ABD48();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = a3;
  v8 = self;
  v9 = a4;
  sub_24119757C(a4);
}

- (void)dismissWithPropagatingError:(id)a3 reply:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = self;
  v9 = a3;
  sub_241196984(a3, sub_2411981E8, v7);
}

@end