@interface AISSilentSignOutFlowControllerDelegate
- (_TtC18AppleIDSetupDaemon38AISSilentSignOutFlowControllerDelegate)init;
- (void)signOutFlowController:(AASignOutFlowController *)controller disableFindMyDeviceForAccount:(ACAccount *)account completion:(id)completion;
- (void)signOutFlowController:(AASignOutFlowController *)controller performWalrusValidationForAccount:(ACAccount *)account completion:(id)completion;
- (void)signOutFlowController:(AASignOutFlowController *)controller showAlertWithTitle:(NSString *)title message:(NSString *)message completion:(id)completion;
- (void)signOutFlowController:(AASignOutFlowController *)controller signOutAccount:(ACAccount *)account completion:(id)completion;
@end

@implementation AISSilentSignOutFlowControllerDelegate

- (void)signOutFlowController:(AASignOutFlowController *)controller showAlertWithTitle:(NSString *)title message:(NSString *)message completion:(id)completion
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506BD0, &qword_2408D7AB0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v24 - v13;
  v15 = _Block_copy(completion);
  v16 = swift_allocObject();
  v16[2] = controller;
  v16[3] = title;
  v16[4] = message;
  v16[5] = v15;
  v16[6] = self;
  v17 = sub_2408D4E60();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_2408D6A58;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_2408D6A60;
  v19[5] = v18;
  controllerCopy = controller;
  titleCopy = title;
  messageCopy = message;
  selfCopy = self;
  sub_24087FFF8(0, 0, v14, &unk_2408D6A68, v19);
}

- (void)signOutFlowController:(AASignOutFlowController *)controller disableFindMyDeviceForAccount:(ACAccount *)account completion:(id)completion
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506BD0, &qword_2408D7AB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(completion);
  v14 = swift_allocObject();
  v14[2] = controller;
  v14[3] = account;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_2408D4E60();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_2408D6A30;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_2408D6A38;
  v17[5] = v16;
  controllerCopy = controller;
  accountCopy = account;
  selfCopy = self;
  sub_24087FFF8(0, 0, v12, &unk_2408D6A40, v17);
}

- (void)signOutFlowController:(AASignOutFlowController *)controller performWalrusValidationForAccount:(ACAccount *)account completion:(id)completion
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506BD0, &qword_2408D7AB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(completion);
  v14 = swift_allocObject();
  v14[2] = controller;
  v14[3] = account;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_2408D4E60();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_2408D6A08;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_2408D6A10;
  v17[5] = v16;
  controllerCopy = controller;
  accountCopy = account;
  selfCopy = self;
  sub_24087FFF8(0, 0, v12, &unk_2408D6A18, v17);
}

- (void)signOutFlowController:(AASignOutFlowController *)controller signOutAccount:(ACAccount *)account completion:(id)completion
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506BD0, &qword_2408D7AB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(completion);
  v14 = swift_allocObject();
  v14[2] = controller;
  v14[3] = account;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_2408D4E60();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_2408D69D8;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_2408D69E0;
  v17[5] = v16;
  controllerCopy = controller;
  accountCopy = account;
  selfCopy = self;
  sub_24087FFF8(0, 0, v12, &unk_2408D69E8, v17);
}

- (_TtC18AppleIDSetupDaemon38AISSilentSignOutFlowControllerDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end