@interface SendRequestFlowStore
- (_TtC7AskToUI20SendRequestFlowStore)init;
- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact;
- (void)messageComposeViewController:(id)controller didFinishWithResult:(int64_t)result;
- (void)sendBeginMessageWithMessageComposeRequest:(id)request reply:(id)reply;
@end

@implementation SendRequestFlowStore

- (void)messageComposeViewController:(id)controller didFinishWithResult:(int64_t)result
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533D40, &qword_2411ACDE0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v15 - v8;
  v10 = sub_2411ABDD8();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_2411ABDA8();
  selfCopy = self;
  v12 = sub_2411ABD98();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = result;
  v13[5] = selfCopy;
  sub_241192B80(0, 0, v9, &unk_2411ACDF0, v13);
}

- (_TtC7AskToUI20SendRequestFlowStore)init
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

- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533D40, &qword_2411ACDE0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v20 - v9;
  sub_2411ABDA8();
  sub_2411ABD98();
  v11 = MEMORY[0x277D85700];
  sub_2411ABD48();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = sub_2411ABDD8();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  controllerCopy = controller;
  contactCopy = contact;
  selfCopy = self;
  v16 = controllerCopy;
  v17 = contactCopy;
  v18 = sub_2411ABD98();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = v11;
  v19[4] = selfCopy;
  v19[5] = v16;
  v19[6] = contact;
  sub_241192B80(0, 0, v10, &unk_2411AD2F8, v19);
}

- (void)sendBeginMessageWithMessageComposeRequest:(id)request reply:(id)reply
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533D40, &qword_2411ACDE0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v20 - v9;
  v11 = _Block_copy(reply);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = sub_2411ABDD8();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  sub_2411ABDA8();
  requestCopy = request;
  selfCopy = self;
  v16 = requestCopy;

  v17 = sub_2411ABD98();
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  v18[2] = v17;
  v18[3] = v19;
  v18[4] = selfCopy;
  v18[5] = sub_241191524;
  v18[6] = v12;
  v18[7] = v16;
  sub_241192B80(0, 0, v10, &unk_2411AD1B0, v18);
}

@end