@interface AKModernAppleIDAuthenticationContext
- (AKModernAppleIDAuthenticationContext)init;
- (AKModernAppleIDAuthenticationContext)initWithAuthenticatedServerRequestContext:(id)a3;
- (AKModernAppleIDAuthenticationContext)initWithCoder:(id)a3;
- (AKModernAppleIDAuthenticationContext)initWithContext:(id)a3;
- (void)dismissBasicLoginUIWithCompletion:(id)a3;
- (void)dismissKeepUsingUIWithCompletion:(id)a3;
- (void)dismissNativeRecoveryUIWithCompletion:(id)a3;
- (void)dismissSecondFactorUIWithCompletion:(id)a3;
- (void)dismissServerProvidedUIWithCompletion:(id)a3;
- (void)presentBasicLoginUIWithCompletion:(id)a3;
- (void)presentBiometricOrPasscodeValidationForAppleID:(NSString *)a3 completion:(id)a4;
- (void)presentFidoAuthForContext:(AKAppleIDAuthenticationContext *)a3 fidoContext:(AKFidoContext *)a4 completion:(id)a5;
- (void)presentKeepUsingUIForAppleID:(NSString *)a3 completion:(id)a4;
- (void)presentLoginAlertWithError:(NSError *)a3 title:(NSString *)a4 message:(NSString *)a5 completion:(id)a6;
- (void)presentNativeRecoveryUIWithContext:(AKAccountRecoveryContext *)a3 completion:(id)a4;
- (void)presentSecondFactorAlertWithError:(NSError *)a3 title:(NSString *)a4 message:(NSString *)a5 completion:(id)a6;
- (void)presentSecondFactorUIWithCompletion:(id)a3;
- (void)presentServerProvidedUIWithConfiguration:(AKServerRequestConfiguration *)a3 completion:(id)a4;
@end

@implementation AKModernAppleIDAuthenticationContext

- (AKModernAppleIDAuthenticationContext)initWithCoder:(id)a3
{
  v3 = (&self->super.super.isa + OBJC_IVAR___AKModernAppleIDAuthenticationContext_signInModelModifier);
  *v3 = 0;
  v3[1] = 0;
  result = sub_24075A9C4();
  __break(1u);
  return result;
}

- (AKModernAppleIDAuthenticationContext)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (AKModernAppleIDAuthenticationContext)initWithAuthenticatedServerRequestContext:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (AKModernAppleIDAuthenticationContext)initWithContext:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)presentBasicLoginUIWithCompletion:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_24075A3D4();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_240774788;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_240774790;
  v13[5] = v12;
  v14 = self;
  sub_2406FC468(0, 0, v8, &unk_240774798, v13);
}

- (void)dismissBasicLoginUIWithCompletion:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_24075A3D4();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_240774768;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_240774770;
  v13[5] = v12;
  v14 = self;
  sub_2406FC468(0, 0, v8, &unk_240774778, v13);
}

- (void)presentLoginAlertWithError:(NSError *)a3 title:(NSString *)a4 message:(NSString *)a5 completion:(id)a6
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v24 - v13;
  v15 = _Block_copy(a6);
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  v16[5] = v15;
  v16[6] = self;
  v17 = sub_24075A3D4();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_240774748;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_240774750;
  v19[5] = v18;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = self;
  sub_2406FC468(0, 0, v14, &unk_240774758, v19);
}

- (void)presentSecondFactorUIWithCompletion:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_24075A3D4();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_240774728;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_240774730;
  v13[5] = v12;
  v14 = self;
  sub_2406FC468(0, 0, v8, &unk_240774738, v13);
}

- (void)dismissSecondFactorUIWithCompletion:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_24075A3D4();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_240774708;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_240774710;
  v13[5] = v12;
  v14 = self;
  sub_2406FC468(0, 0, v8, &unk_240774718, v13);
}

- (void)presentSecondFactorAlertWithError:(NSError *)a3 title:(NSString *)a4 message:(NSString *)a5 completion:(id)a6
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v24 - v13;
  v15 = _Block_copy(a6);
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  v16[5] = v15;
  v16[6] = self;
  v17 = sub_24075A3D4();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_2407746E8;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_2407746F0;
  v19[5] = v18;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = self;
  sub_2406FC468(0, 0, v14, &unk_2407746F8, v19);
}

- (void)presentBiometricOrPasscodeValidationForAppleID:(NSString *)a3 completion:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_24075A3D4();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2407746C8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2407746D0;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_2406FC468(0, 0, v10, &unk_2407746D8, v15);
}

- (void)presentServerProvidedUIWithConfiguration:(AKServerRequestConfiguration *)a3 completion:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_24075A3D4();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2407746A8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2407746B0;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_2406FC468(0, 0, v10, &unk_2407746B8, v15);
}

- (void)dismissServerProvidedUIWithCompletion:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_24075A3D4();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_240774688;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_240774690;
  v13[5] = v12;
  v14 = self;
  sub_2406FC468(0, 0, v8, &unk_240774698, v13);
}

- (void)presentNativeRecoveryUIWithContext:(AKAccountRecoveryContext *)a3 completion:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_24075A3D4();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_240774668;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_240774670;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_2406FC468(0, 0, v10, &unk_240774678, v15);
}

- (void)dismissNativeRecoveryUIWithCompletion:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_24075A3D4();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_240774648;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_240774650;
  v13[5] = v12;
  v14 = self;
  sub_2406FC468(0, 0, v8, &unk_240774658, v13);
}

- (void)presentFidoAuthForContext:(AKAppleIDAuthenticationContext *)a3 fidoContext:(AKFidoContext *)a4 completion:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_24075A3D4();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_240774628;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_240774630;
  v17[5] = v16;
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_2406FC468(0, 0, v12, &unk_240774638, v17);
}

- (void)presentKeepUsingUIForAppleID:(NSString *)a3 completion:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_24075A3D4();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_240774608;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_240774610;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_2406FC468(0, 0, v10, &unk_240774618, v15);
}

- (void)dismissKeepUsingUIWithCompletion:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_24075A3D4();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2407745F8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_240767F10;
  v13[5] = v12;
  v14 = self;
  sub_2406FC468(0, 0, v8, &unk_24076FBC0, v13);
}

@end