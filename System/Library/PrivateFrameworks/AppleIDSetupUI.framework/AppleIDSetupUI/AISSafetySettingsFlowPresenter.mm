@interface AISSafetySettingsFlowPresenter
- (AISSafetySettingsFlowPresenter)init;
- (AISSafetySettingsFlowPresenter)initWithSafetySettingsContext:(id)context;
- (AISSafetySettingsFlowPresenterDelegate)delegate;
- (void)presentSafetySettingsWithContext:(id)context navigationController:(id)controller;
- (void)shouldPresentSafetySettingsWithContext:(AISSafetySettingsContext *)context completion:(id)completion;
@end

@implementation AISSafetySettingsFlowPresenter

- (AISSafetySettingsFlowPresenterDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (AISSafetySettingsFlowPresenter)initWithSafetySettingsContext:(id)context
{
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR___AISSafetySettingsFlowPresenter_context) = context;
  *(self + OBJC_IVAR___AISSafetySettingsFlowPresenter_configuration) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for SafetySettingsFlowPresenter();
  contextCopy = context;
  return [(AISSafetySettingsFlowPresenter *)&v7 init];
}

- (void)presentSafetySettingsWithContext:(id)context navigationController:(id)controller
{
  contextCopy = context;
  controllerCopy = controller;
  selfCopy = self;
  sub_2409FD030(contextCopy, controllerCopy);
}

- (void)shouldPresentSafetySettingsWithContext:(AISSafetySettingsContext *)context completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v19 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = context;
  v13[3] = v12;
  v13[4] = self;
  v14 = sub_240A2C24C();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_240A38230;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_240A30840;
  v16[5] = v15;
  contextCopy = context;
  selfCopy = self;
  sub_240A0B0A4(0, 0, v11, &unk_240A33600, v16);
}

- (AISSafetySettingsFlowPresenter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end