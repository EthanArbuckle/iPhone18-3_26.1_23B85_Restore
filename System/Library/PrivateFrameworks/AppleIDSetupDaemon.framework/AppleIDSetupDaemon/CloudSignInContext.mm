@interface CloudSignInContext
- (NSSet)requiredTerms;
- (_TtC18AppleIDSetupDaemon18CloudSignInContext)init;
- (void)setCdpContext:(id)a3;
- (void)setRequiredTerms:(id)a3;
- (void)signInFlowController:(AASignInFlowController *)a3 enableFindMyWithAction:(unint64_t)a4 completion:(id)a5;
- (void)signInFlowController:(AASignInFlowController *)a3 presentGenericTermsUIForAccount:(ACAccount *)a4 completion:(id)a5;
- (void)signInFlowController:(AASignInFlowController *)a3 presentProgressViewForAccount:(ACAccount *)a4 completion:(id)a5;
@end

@implementation CloudSignInContext

- (void)setCdpContext:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC18AppleIDSetupDaemon18CloudSignInContext_cdpContext);
  *(self + OBJC_IVAR____TtC18AppleIDSetupDaemon18CloudSignInContext_cdpContext) = a3;
  v3 = a3;
}

- (NSSet)requiredTerms
{
  if (*(self + OBJC_IVAR____TtC18AppleIDSetupDaemon18CloudSignInContext_requiredTerms))
  {
    type metadata accessor for AATermsEntry(0);
    sub_24080D61C(&qword_27E5069F8, 255, type metadata accessor for AATermsEntry);

    v2 = sub_2408D4ED0();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setRequiredTerms:(id)a3
{
  if (a3)
  {
    type metadata accessor for AATermsEntry(0);
    sub_24080D61C(&qword_27E5069F8, 255, type metadata accessor for AATermsEntry);
    v4 = sub_2408D4EE0();
  }

  else
  {
    v4 = 0;
  }

  v5 = *(self + OBJC_IVAR____TtC18AppleIDSetupDaemon18CloudSignInContext_requiredTerms);
  *(self + OBJC_IVAR____TtC18AppleIDSetupDaemon18CloudSignInContext_requiredTerms) = v4;
}

- (void)signInFlowController:(AASignInFlowController *)a3 presentGenericTermsUIForAccount:(ACAccount *)a4 completion:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506BD0, &qword_2408D7AB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_2408D4E60();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_2408D7570;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_2408D7578;
  v17[5] = v16;
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_24087FFF8(0, 0, v12, &unk_2408D7580, v17);
}

- (void)signInFlowController:(AASignInFlowController *)a3 enableFindMyWithAction:(unint64_t)a4 completion:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506BD0, &qword_2408D7AB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_2408D4E60();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_2408D7550;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_2408D7558;
  v17[5] = v16;
  v18 = a3;
  v19 = self;
  sub_24087FFF8(0, 0, v12, &unk_2408D7560, v17);
}

- (void)signInFlowController:(AASignInFlowController *)a3 presentProgressViewForAccount:(ACAccount *)a4 completion:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506BD0, &qword_2408D7AB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_2408D4E60();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_2408D7528;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_2408D69E0;
  v17[5] = v16;
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_24087FFF8(0, 0, v12, &unk_2408D69E8, v17);
}

- (_TtC18AppleIDSetupDaemon18CloudSignInContext)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end