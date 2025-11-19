@interface SignInOptionChildSetupController
- (_TtC14AppleIDSetupUI32SignInOptionChildSetupController)init;
- (void)childSetupPresenter:(id)a3 didCompleteWithResult:(id)a4;
- (void)childSetupPresenter:(id)a3 didFail:(id)a4;
- (void)setupLocationServicesWithNextTaskInfo:(AISFlowTaskInfoProtocol *)a3 completion:(id)a4;
- (void)setupPasscodeForAccount:(ACAccount *)a3 nextTaskInfo:(AISFlowTaskInfoProtocol *)a4 completion:(id)a5;
- (void)setupPerformAIDASignInWith:(NSDictionary *)a3 completion:(id)a4;
@end

@implementation SignInOptionChildSetupController

- (_TtC14AppleIDSetupUI32SignInOptionChildSetupController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)setupPerformAIDASignInWith:(NSDictionary *)a3 completion:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v19 - v10;
  v12 = _Block_copy(a4);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = v12;
  v13[4] = self;
  v14 = sub_240A2C24C();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_240A386D0;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_240A386D8;
  v16[5] = v15;
  v17 = a3;
  v18 = self;
  sub_240A0B0A4(0, 0, v11, &unk_240A386E0, v16);
}

- (void)setupPasscodeForAccount:(ACAccount *)a3 nextTaskInfo:(AISFlowTaskInfoProtocol *)a4 completion:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v21 - v12;
  v14 = _Block_copy(a5);
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = v14;
  v15[5] = self;
  v16 = sub_240A2C24C();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_240A386B0;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_240A386B8;
  v18[5] = v17;
  v19 = a3;
  swift_unknownObjectRetain();
  v20 = self;
  sub_240A0B0A4(0, 0, v13, &unk_240A386C0, v18);
}

- (void)setupLocationServicesWithNextTaskInfo:(AISFlowTaskInfoProtocol *)a3 completion:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v18 - v10;
  v12 = _Block_copy(a4);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = v12;
  v13[4] = self;
  v14 = sub_240A2C24C();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_240A38668;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_240A30840;
  v16[5] = v15;
  swift_unknownObjectRetain();
  v17 = self;
  sub_240A0B0A4(0, 0, v11, &unk_240A33600, v16);
}

- (void)childSetupPresenter:(id)a3 didCompleteWithResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_240A0B708();
}

- (void)childSetupPresenter:(id)a3 didFail:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  sub_240A0BADC(v8);
}

@end