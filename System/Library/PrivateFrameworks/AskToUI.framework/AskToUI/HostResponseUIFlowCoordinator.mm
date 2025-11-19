@interface HostResponseUIFlowCoordinator
- (_TtC7AskToUI29HostResponseUIFlowCoordinator)init;
- (void)didSelectAnswerChoice:(id)a3;
- (void)dismiss;
- (void)hostViewControllerWillDeactivate:(id)a3 error:(id)a4;
@end

@implementation HostResponseUIFlowCoordinator

- (_TtC7AskToUI29HostResponseUIFlowCoordinator)init
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
  sub_2411A579C(a4);
}

- (void)didSelectAnswerChoice:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533D40, &qword_2411ACDE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v17 - v7;
  v9 = sub_2411ABDD8();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_2411ABDA8();
  v10 = a3;
  v11 = self;
  v12 = v10;
  v13 = v11;
  v14 = sub_2411ABD98();
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = v12;
  v15[5] = v13;
  sub_241192B80(0, 0, v8, &unk_2411ADF28, v15);
}

- (void)dismiss
{
  v2 = self;
  HostResponseUIFlowCoordinator.dismiss()();
}

@end