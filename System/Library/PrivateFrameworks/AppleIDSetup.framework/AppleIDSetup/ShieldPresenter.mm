@interface ShieldPresenter
- (_TtC12AppleIDSetup15ShieldPresenter)init;
- (void)performAIDASignInWith:(NSDictionary *)a3 completionHandler:(id)a4;
- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4;
- (void)remoteAlertHandleDidActivate:(id)a3;
- (void)remoteAlertHandleDidDeactivate:(id)a3;
- (void)setupPasscodeAndBiometricWithCompletionHandler:(id)a3;
- (void)shieldSetupDidFinishWith:(id)a3 error:(id)a4;
- (void)shieldSetupSelectedAccount:(int64_t)a3 completionHandler:(id)a4;
@end

@implementation ShieldPresenter

- (_TtC12AppleIDSetup15ShieldPresenter)init
{
  *(&self->super.isa + OBJC_IVAR____TtC12AppleIDSetup15ShieldPresenter_remoteHandler) = 0;
  *&self->remoteHandler[OBJC_IVAR____TtC12AppleIDSetup15ShieldPresenter_delegate] = 0;
  swift_unknownObjectWeakInit();
  v4.receiver = self;
  v4.super_class = type metadata accessor for ShieldPresenter();
  return [(ShieldPresenter *)&v4 init];
}

- (void)shieldSetupSelectedAccount:(int64_t)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
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
  v14[4] = &unk_240767F48;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_240767F50;
  v15[5] = v14;
  v16 = self;
  sub_2406FC468(0, 0, v10, &unk_240767F58, v15);
}

- (void)setupPasscodeAndBiometricWithCompletionHandler:(id)a3
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
  v12[4] = &unk_240767F28;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_240767F30;
  v13[5] = v12;
  v14 = self;
  sub_2406FC468(0, 0, v8, &unk_240767F38, v13);
}

- (void)performAIDASignInWith:(NSDictionary *)a3 completionHandler:(id)a4
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
  v14[4] = &unk_240767F08;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_240767F10;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_2406FC468(0, 0, v10, &unk_24076FBC0, v15);
}

- (void)shieldSetupDidFinishWith:(id)a3 error:(id)a4
{
  v5 = a3;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B8A30, &unk_240767EF0);
    v5 = sub_240759F74();
  }

  v7 = a4;
  v8 = self;
  sub_2405FAE88(v5, a4);
}

- (void)remoteAlertHandleDidActivate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2405FDD88(v4);
}

- (void)remoteAlertHandleDidDeactivate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2405FB234(v4);
}

- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  sub_2405FB4D8(v6, a4);
}

@end