@interface GMSpecifierController
- (BOOL)featureOptInStatus;
- (_TtP24AssistantSettingsSupport29GMSpecifierControllerDelegate_)delegate;
- (void)clearCFUWithCompletionHandler:(id)handler;
- (void)enrollWithCompletionHandler:(id)handler;
- (void)fetchStatusWithCompletionHandler:(id)handler;
- (void)fetchStatusWithForceDownloadIfNeeded:(BOOL)needed completionHandler:(id)handler;
@end

@implementation GMSpecifierController

- (_TtP24AssistantSettingsSupport29GMSpecifierControllerDelegate_)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)enrollWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542718, &qword_241412930);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_24140ECDC();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2414137B0;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2414137B8;
  v13[5] = v12;
  selfCopy = self;
  sub_241405C7C(0, 0, v8, &unk_2414137C0, v13);
}

- (void)fetchStatusWithForceDownloadIfNeeded:(BOOL)needed completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542718, &qword_241412930);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  *(v12 + 16) = needed;
  *(v12 + 24) = v11;
  *(v12 + 32) = self;
  v13 = sub_24140ECDC();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_241413790;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_241413798;
  v15[5] = v14;
  selfCopy = self;
  sub_241405C7C(0, 0, v10, &unk_2414137A0, v15);
}

- (void)fetchStatusWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542718, &qword_241412930);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_24140ECDC();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_241413770;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_241413778;
  v13[5] = v12;
  selfCopy = self;
  sub_241405C7C(0, 0, v8, &unk_241413780, v13);
}

- (BOOL)featureOptInStatus
{
  v3 = OBJC_IVAR___GMSpecifierController_optInStatusProvider;
  swift_beginAccess();
  sub_24140869C(self + v3, v7);
  v4 = v8;
  v5 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  LOBYTE(v4) = (*(v5 + 8))(v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v4 & 1;
}

- (void)clearCFUWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542718, &qword_241412930);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_24140ECDC();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_241413728;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_241412F88;
  v13[5] = v12;
  selfCopy = self;
  sub_241405C7C(0, 0, v8, &unk_241412F90, v13);
}

@end