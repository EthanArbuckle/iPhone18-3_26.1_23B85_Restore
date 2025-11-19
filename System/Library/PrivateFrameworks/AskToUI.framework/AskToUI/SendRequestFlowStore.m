@interface SendRequestFlowStore
- (_TtC7AskToUI20SendRequestFlowStore)init;
- (void)contactViewController:(id)a3 didCompleteWithContact:(id)a4;
- (void)messageComposeViewController:(id)a3 didFinishWithResult:(int64_t)a4;
- (void)sendBeginMessageWithMessageComposeRequest:(id)a3 reply:(id)a4;
@end

@implementation SendRequestFlowStore

- (void)messageComposeViewController:(id)a3 didFinishWithResult:(int64_t)a4
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533D40, &qword_2411ACDE0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v15 - v8;
  v10 = sub_2411ABDD8();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_2411ABDA8();
  v11 = self;
  v12 = sub_2411ABD98();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = a4;
  v13[5] = v11;
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

- (void)contactViewController:(id)a3 didCompleteWithContact:(id)a4
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
  v13 = a3;
  v14 = a4;
  v15 = self;
  v16 = v13;
  v17 = v14;
  v18 = sub_2411ABD98();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = v11;
  v19[4] = v15;
  v19[5] = v16;
  v19[6] = a4;
  sub_241192B80(0, 0, v10, &unk_2411AD2F8, v19);
}

- (void)sendBeginMessageWithMessageComposeRequest:(id)a3 reply:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533D40, &qword_2411ACDE0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v20 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = sub_2411ABDD8();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  sub_2411ABDA8();
  v14 = a3;
  v15 = self;
  v16 = v14;

  v17 = sub_2411ABD98();
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  v18[2] = v17;
  v18[3] = v19;
  v18[4] = v15;
  v18[5] = sub_241191524;
  v18[6] = v12;
  v18[7] = v16;
  sub_241192B80(0, 0, v10, &unk_2411AD1B0, v18);
}

@end