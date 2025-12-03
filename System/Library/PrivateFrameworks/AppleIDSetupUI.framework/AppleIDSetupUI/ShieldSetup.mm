@interface ShieldSetup
- (_TtC14AppleIDSetupUI11ShieldSetup)init;
- (void)proximitySetupCompletedWithResult:(id)result error:(id)error;
- (void)proximitySetupSelectedAccount:(int64_t)account completion:(id)completion;
- (void)setupPasscodeAndBiometricWithCompletion:(id)completion;
- (void)setupPerformAIDASignInWith:(NSDictionary *)with completion:(id)completion;
@end

@implementation ShieldSetup

- (_TtC14AppleIDSetupUI11ShieldSetup)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)proximitySetupSelectedAccount:(int64_t)account completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v18 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = account;
  v13[3] = v12;
  v13[4] = self;
  v14 = sub_240A2C24C();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_240A383F8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_240A38400;
  v16[5] = v15;
  selfCopy = self;
  sub_240A0B0A4(0, 0, v11, &unk_240A38408, v16);
}

- (void)setupPasscodeAndBiometricWithCompletion:(id)completion
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v16 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = self;
  v12 = sub_240A2C24C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_240A383D0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_240A383D8;
  v14[5] = v13;
  selfCopy = self;
  sub_240A0B0A4(0, 0, v9, &unk_240A383E0, v14);
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
  v15[4] = &unk_240A383A8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_240A383B0;
  v16[5] = v15;
  withCopy = with;
  selfCopy = self;
  sub_240A0B0A4(0, 0, v11, &unk_240A383B8, v16);
}

- (void)proximitySetupCompletedWithResult:(id)result error:(id)error
{
  resultCopy = result;
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B500, &qword_240A30860);
    resultCopy = sub_240A2BEBC();
  }

  errorCopy = error;
  selfCopy = self;
  sub_240A0523C(resultCopy, error);
}

@end