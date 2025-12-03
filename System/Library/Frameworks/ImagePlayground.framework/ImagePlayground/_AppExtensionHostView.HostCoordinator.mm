@interface _AppExtensionHostView.HostCoordinator
- (_TtCV15ImagePlayground21_AppExtensionHostView15HostCoordinator)init;
- (void)hostViewControllerDidActivate:(id)activate;
@end

@implementation _AppExtensionHostView.HostCoordinator

- (void)hostViewControllerDidActivate:(id)activate
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7044B0, &qword_1D2ACA040);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v16 - v7;
  v9 = sub_1D2AC6DD4();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_1D2AC6DA4();
  activateCopy = activate;
  selfCopy = self;
  v12 = activateCopy;
  v13 = sub_1D2AC6D94();
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E85E0];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = selfCopy;
  v14[5] = v12;
  sub_1D2A2F088(0, 0, v8, &unk_1D2ACB758, v14);
}

- (_TtCV15ImagePlayground21_AppExtensionHostView15HostCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end