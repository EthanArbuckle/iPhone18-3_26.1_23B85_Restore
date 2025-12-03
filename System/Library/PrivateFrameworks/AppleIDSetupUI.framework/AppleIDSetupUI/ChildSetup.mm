@interface ChildSetup
- (_TtC14AppleIDSetupUIP33_C3572E3C1D8DC9EF23BF6901B87D7EFD10ChildSetup)init;
- (void)childSetupPresenter:(id)presenter didCompleteWithResult:(id)result;
- (void)childSetupPresenter:(id)presenter didFail:(id)fail;
- (void)setupLocationServicesWithNextTaskInfo:(AISFlowTaskInfoProtocol *)info completion:(id)completion;
- (void)setupPasscodeForAccount:(ACAccount *)account nextTaskInfo:(AISFlowTaskInfoProtocol *)info completion:(id)completion;
- (void)setupPerformAIDASignInWith:(NSDictionary *)with completion:(id)completion;
@end

@implementation ChildSetup

- (_TtC14AppleIDSetupUIP33_C3572E3C1D8DC9EF23BF6901B87D7EFD10ChildSetup)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)setupPerformAIDASignInWith:(NSDictionary *)with completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v19 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = with;
  v13[3] = v12;
  v13[4] = self;
  v14 = sub_240A2C24C();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_240A38378;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_240A38380;
  v16[5] = v15;
  withCopy = with;
  selfCopy = self;
  sub_240A0B0A4(0, 0, v11, &unk_240A38388, v16);
}

- (void)setupLocationServicesWithNextTaskInfo:(AISFlowTaskInfoProtocol *)info completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v18 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = info;
  v13[3] = v12;
  v13[4] = self;
  v14 = sub_240A2C24C();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_240A38350;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_240A38358;
  v16[5] = v15;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_240A0B0A4(0, 0, v11, &unk_240A38360, v16);
}

- (void)setupPasscodeForAccount:(ACAccount *)account nextTaskInfo:(AISFlowTaskInfoProtocol *)info completion:(id)completion
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v21 - v12;
  v14 = _Block_copy(completion);
  v15 = swift_allocObject();
  v15[2] = account;
  v15[3] = info;
  v15[4] = v14;
  v15[5] = self;
  v16 = sub_240A2C24C();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_240A38338;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_240A30840;
  v18[5] = v17;
  accountCopy = account;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_240A0B0A4(0, 0, v13, &unk_240A33600, v18);
}

- (void)childSetupPresenter:(id)presenter didCompleteWithResult:(id)result
{
  presenterCopy = presenter;
  resultCopy = result;
  selfCopy = self;
  sub_240A07B9C(resultCopy);
}

- (void)childSetupPresenter:(id)presenter didFail:(id)fail
{
  presenterCopy = presenter;
  failCopy = fail;
  selfCopy = self;
  sub_240A08044();
}

@end