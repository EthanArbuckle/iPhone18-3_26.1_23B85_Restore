@interface SignInOptionsCreateAccountController
- (_TtC14AppleIDSetupUI36SignInOptionsCreateAccountController)init;
- (void)performAIDASignInWith:(NSDictionary *)a3 completion:(id)a4;
- (void)setupLocationServicesWithCompletion:(id)a3;
- (void)setupPasscodeAndBiometricWithCompletion:(id)a3;
- (void)shieldSetupDidFinishWithResult:(id)a3 error:(id)a4;
- (void)shieldSetupDidFinishWithResult:(id)a3 viewControllersToRemove:(id)a4 error:(id)a5;
- (void)shieldSetupSelectedAccount:(int64_t)a3 completion:(id)a4;
@end

@implementation SignInOptionsCreateAccountController

- (_TtC14AppleIDSetupUI36SignInOptionsCreateAccountController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)shieldSetupSelectedAccount:(int64_t)a3 completion:(id)a4
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
  v15[4] = &unk_240A308B8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_240A308C0;
  v16[5] = v15;
  v17 = self;
  sub_240A0B0A4(0, 0, v11, &unk_240A308C8, v16);
}

- (void)setupPasscodeAndBiometricWithCompletion:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v16 - v8;
  v10 = _Block_copy(a3);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = self;
  v12 = sub_240A2C24C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_240A30898;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_240A308A0;
  v14[5] = v13;
  v15 = self;
  sub_240A0B0A4(0, 0, v9, &unk_240A308A8, v14);
}

- (void)setupLocationServicesWithCompletion:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v16 - v8;
  v10 = _Block_copy(a3);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = self;
  v12 = sub_240A2C24C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_240A30878;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_240A30880;
  v14[5] = v13;
  v15 = self;
  sub_240A0B0A4(0, 0, v9, &unk_240A30888, v14);
}

- (void)performAIDASignInWith:(NSDictionary *)a3 completion:(id)a4
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
  v15[4] = &unk_240A30838;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_240A30840;
  v16[5] = v15;
  v17 = a3;
  v18 = self;
  sub_240A0B0A4(0, 0, v11, &unk_240A33600, v16);
}

- (void)shieldSetupDidFinishWithResult:(id)a3 error:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v17 - v10;
  v12 = sub_240A2C24C();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a4;
  v13[5] = self;
  v13[6] = a3;
  v14 = a3;
  v15 = self;
  v16 = a4;
  sub_2409230D4(0, 0, v11, &unk_240A30828, v13);
}

- (void)shieldSetupDidFinishWithResult:(id)a3 viewControllersToRemove:(id)a4 error:(id)a5
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v18 - v11;
  v13 = sub_240A2C24C();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a5;
  v14[5] = self;
  v14[6] = a3;
  v15 = a3;
  v16 = self;
  v17 = a5;
  sub_2409230D4(0, 0, v12, &unk_240A30810, v14);
}

@end