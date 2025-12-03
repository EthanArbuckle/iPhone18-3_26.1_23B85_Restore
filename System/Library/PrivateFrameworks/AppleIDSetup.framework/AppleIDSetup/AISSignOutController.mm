@interface AISSignOutController
- (AISSignOutController)init;
- (void)signOutAllAccountsWithContext:(AISSignOutContext *)context completion:(id)completion;
@end

@implementation AISSignOutController

- (AISSignOutController)init
{
  *(&self->super.isa + OBJC_IVAR___AISSignOutController_listenerEndpoint) = 0;
  *(&self->super.isa + OBJC_IVAR___AISSignOutController____lazy_storage___daemonConnection) = 1;
  v3.receiver = self;
  v3.super_class = type metadata accessor for AISSignOutController();
  return [(AISSignOutController *)&v3 init];
}

- (void)signOutAllAccountsWithContext:(AISSignOutContext *)context completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = context;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_24075A3D4();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_24077D1E0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_240767F10;
  v15[5] = v14;
  contextCopy = context;
  selfCopy = self;
  sub_2406FC468(0, 0, v10, &unk_24076FBC0, v15);
}

@end